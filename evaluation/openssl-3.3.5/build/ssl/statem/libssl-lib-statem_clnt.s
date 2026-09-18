	.file	"statem_clnt.c"
	.text
	.type	ossl_check_X509_type, @function
ossl_check_X509_type:
.LFB367:
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
.LFE367:
	.size	ossl_check_X509_type, .-ossl_check_X509_type
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
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB369:
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
.LFE369:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.type	ossl_check_X509_freefunc_type, @function
ossl_check_X509_freefunc_type:
.LFB372:
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
.LFE372:
	.size	ossl_check_X509_freefunc_type, .-ossl_check_X509_freefunc_type
	.type	ossl_check_SSL_CIPHER_type, @function
ossl_check_SSL_CIPHER_type:
.LFB486:
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
.LFE486:
	.size	ossl_check_SSL_CIPHER_type, .-ossl_check_SSL_CIPHER_type
	.type	ossl_check_const_SSL_CIPHER_sk_type, @function
ossl_check_const_SSL_CIPHER_sk_type:
.LFB487:
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
.LFE487:
	.size	ossl_check_const_SSL_CIPHER_sk_type, .-ossl_check_const_SSL_CIPHER_sk_type
	.type	ossl_check_SSL_CIPHER_sk_type, @function
ossl_check_SSL_CIPHER_sk_type:
.LFB488:
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
.LFE488:
	.size	ossl_check_SSL_CIPHER_sk_type, .-ossl_check_SSL_CIPHER_sk_type
	.type	ossl_check_const_SSL_COMP_sk_type, @function
ossl_check_const_SSL_COMP_sk_type:
.LFB493:
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
.LFE493:
	.size	ossl_check_const_SSL_COMP_sk_type, .-ossl_check_const_SSL_COMP_sk_type
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
	jns	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L24:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_null_init, @function
PACKET_null_init:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	PACKET_null_init, .-PACKET_null_init
	.type	PACKET_peek_sub_packet, @function
PACKET_peek_sub_packet:
.LFB506:
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
	jnb	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	PACKET_peek_sub_packet, .-PACKET_peek_sub_packet
	.type	PACKET_get_sub_packet, @function
PACKET_get_sub_packet:
.LFB507:
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
	call	PACKET_peek_sub_packet
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	PACKET_get_sub_packet, .-PACKET_get_sub_packet
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
	ja	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
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
.L34:
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
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_peek_net_3, @function
PACKET_peek_net_3:
.LFB511:
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
	ja	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
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
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	PACKET_peek_net_3, .-PACKET_peek_net_3
	.type	PACKET_get_net_3, @function
PACKET_get_net_3:
.LFB512:
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
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	PACKET_get_net_3, .-PACKET_get_net_3
	.type	PACKET_get_net_3_len, @function
PACKET_get_net_3_len:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L45
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L45:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	PACKET_get_net_3_len, .-PACKET_get_net_3_len
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
	ja	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
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
.L49:
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
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PACKET_get_net_4, .-PACKET_get_net_4
	.type	PACKET_peek_1, @function
PACKET_peek_1:
.LFB519:
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
	testq	%rax, %rax
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	PACKET_peek_1, .-PACKET_peek_1
	.type	PACKET_get_1, @function
PACKET_get_1:
.LFB520:
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
	call	PACKET_peek_1
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PACKET_get_1, .-PACKET_get_1
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
	jnb	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L61:
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
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.type	PACKET_peek_copy_bytes, @function
PACKET_peek_copy_bytes:
.LFB526:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-24(%rbp), %rax
	jnb	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	PACKET_peek_copy_bytes, .-PACKET_peek_copy_bytes
	.type	PACKET_copy_bytes, @function
PACKET_copy_bytes:
.LFB527:
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
	call	PACKET_peek_copy_bytes
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	PACKET_copy_bytes, .-PACKET_copy_bytes
	.section	.rodata
.LC0:
	.string	"../include/internal/packet.h"
	.text
	.type	PACKET_memdup, @function
PACKET_memdup:
.LFB529:
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
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$454, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L72
	movl	$1, %eax
	jmp	.L73
.L72:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rsi
	movl	$463, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L74
	movl	$0, %eax
	jmp	.L73
.L74:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	PACKET_memdup, .-PACKET_memdup
	.type	PACKET_strndup, @function
PACKET_strndup:
.LFB530:
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
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$483, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$486, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	PACKET_strndup, .-PACKET_strndup
	.type	PACKET_forward, @function
PACKET_forward:
.LFB532:
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
	jnb	.L78
	movl	$0, %eax
	jmp	.L79
.L78:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	PACKET_forward, .-PACKET_forward
	.type	PACKET_get_length_prefixed_1, @function
PACKET_get_length_prefixed_1:
.LFB533:
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
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L81
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L82
.L81:
	movl	$0, %eax
	jmp	.L84
.L82:
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
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PACKET_get_length_prefixed_1, .-PACKET_get_length_prefixed_1
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
	je	.L86
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L87
.L86:
	movl	$0, %eax
	jmp	.L89
.L87:
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
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
	.type	PACKET_as_length_prefixed_2, @function
PACKET_as_length_prefixed_2:
.LFB536:
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
	je	.L91
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L91
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L92
.L91:
	movl	$0, %eax
	jmp	.L94
.L92:
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
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	PACKET_as_length_prefixed_2, .-PACKET_as_length_prefixed_2
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
	je	.L112
	movq	-16(%rbp), %rax
	lock addl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_tsan_unlock
.L112:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	ssl_tsan_counter, .-ssl_tsan_counter
	.type	received_server_cert, @function
received_server_cert:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	jne	.L114
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	je	.L115
.L114:
	movl	$1, %eax
	jmp	.L117
.L115:
	movl	$0, %eax
.L117:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	received_server_cert, .-received_server_cert
	.type	cert_req_allowed, @function
cert_req_allowed:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jle	.L119
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L120
.L119:
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$80, %eax
	testl	%eax, %eax
	je	.L121
.L120:
	movl	$0, %eax
	jmp	.L122
.L121:
	movl	$1, %eax
.L122:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	cert_req_allowed, .-cert_req_allowed
	.type	key_exchange_expected, @function
key_exchange_expected:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$422, %eax
	testq	%rax, %rax
	je	.L124
	movl	$1, %eax
	jmp	.L125
.L124:
	movl	$0, %eax
.L125:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	key_exchange_expected, .-key_exchange_expected
	.type	ossl_statem_client13_read_transition, @function
ossl_statem_client13_read_transition:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$43, %eax
	je	.L127
	cmpl	$43, %eax
	ja	.L149
	cmpl	$42, %eax
	je	.L129
	cmpl	$42, %eax
	ja	.L149
	cmpl	$13, %eax
	je	.L130
	cmpl	$13, %eax
	ja	.L149
	cmpl	$8, %eax
	je	.L131
	cmpl	$8, %eax
	ja	.L149
	cmpl	$5, %eax
	ja	.L149
	cmpl	$4, %eax
	jnb	.L132
	cmpl	$1, %eax
	je	.L133
	cmpl	$3, %eax
	je	.L134
	jmp	.L149
.L130:
	cmpl	$2, -28(%rbp)
	jne	.L150
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	movl	$1, %eax
	jmp	.L137
.L134:
	cmpl	$8, -28(%rbp)
	jne	.L151
	movq	-8(%rbp), %rax
	movl	$42, 20(%rax)
	movl	$1, %eax
	jmp	.L137
.L129:
	movq	-24(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L139
	cmpl	$20, -28(%rbp)
	jne	.L152
	movq	-8(%rbp), %rax
	movl	$12, 20(%rax)
	movl	$1, %eax
	jmp	.L137
.L139:
	cmpl	$13, -28(%rbp)
	jne	.L141
	movq	-8(%rbp), %rax
	movl	$8, 20(%rax)
	movl	$1, %eax
	jmp	.L137
.L141:
	cmpl	$11, -28(%rbp)
	jne	.L152
	movq	-8(%rbp), %rax
	movl	$4, 20(%rax)
	movl	$1, %eax
	jmp	.L137
.L131:
	cmpl	$11, -28(%rbp)
	jne	.L153
	movq	-8(%rbp), %rax
	movl	$4, 20(%rax)
	movl	$1, %eax
	jmp	.L137
.L132:
	cmpl	$15, -28(%rbp)
	jne	.L154
	movq	-8(%rbp), %rax
	movl	$43, 20(%rax)
	movl	$1, %eax
	jmp	.L137
.L127:
	cmpl	$20, -28(%rbp)
	jne	.L155
	movq	-8(%rbp), %rax
	movl	$12, 20(%rax)
	movl	$1, %eax
	jmp	.L137
.L133:
	cmpl	$4, -28(%rbp)
	jne	.L145
	movq	-8(%rbp), %rax
	movl	$10, 20(%rax)
	movl	$1, %eax
	jmp	.L137
.L145:
	cmpl	$24, -28(%rbp)
	jne	.L146
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	andl	$8192, %eax
	testq	%rax, %rax
	jne	.L146
	movq	-8(%rbp), %rax
	movl	$49, 20(%rax)
	movl	$1, %eax
	jmp	.L137
.L146:
	cmpl	$13, -28(%rbp)
	jne	.L156
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L156
	movq	-24(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$1, %eax
	jne	.L156
	movq	-24(%rbp), %rax
	movl	$4, 2832(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tls13_restore_handshake_digest_for_pha@PLT
	testl	%eax, %eax
	jne	.L148
	movl	$0, %eax
	jmp	.L137
.L148:
	movq	-8(%rbp), %rax
	movl	$8, 20(%rax)
	movl	$1, %eax
	jmp	.L137
.L149:
	nop
	jmp	.L135
.L150:
	nop
	jmp	.L135
.L151:
	nop
	jmp	.L135
.L152:
	nop
	jmp	.L135
.L153:
	nop
	jmp	.L135
.L154:
	nop
	jmp	.L135
.L155:
	nop
	jmp	.L135
.L156:
	nop
.L135:
	movl	$0, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	ossl_statem_client13_read_transition, .-ossl_statem_client13_read_transition
	.section	.rodata
.LC1:
	.string	"../ssl/statem/statem_clnt.c"
	.text
	.globl	ossl_statem_client_read_transition
	.type	ossl_statem_client_read_transition, @function
ossl_statem_client_read_transition:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L158
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L158
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L158
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_statem_client13_read_transition
	testl	%eax, %eax
	je	.L197
	movl	$1, %eax
	jmp	.L161
.L158:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$50, %eax
	je	.L162
	cmpl	$50, %eax
	ja	.L198
	cmpl	$20, %eax
	je	.L164
	cmpl	$20, %eax
	ja	.L198
	cmpl	$13, %eax
	je	.L165
	cmpl	$13, %eax
	ja	.L198
	cmpl	$11, %eax
	je	.L166
	cmpl	$11, %eax
	ja	.L198
	cmpl	$10, %eax
	je	.L167
	cmpl	$10, %eax
	ja	.L198
	cmpl	$8, %eax
	je	.L168
	cmpl	$8, %eax
	ja	.L198
	cmpl	$7, %eax
	je	.L169
	cmpl	$7, %eax
	ja	.L198
	cmpl	$6, %eax
	je	.L170
	cmpl	$6, %eax
	ja	.L198
	cmpl	$5, %eax
	ja	.L198
	cmpl	$4, %eax
	jnb	.L171
	cmpl	$1, %eax
	je	.L172
	cmpl	$3, %eax
	je	.L173
	jmp	.L198
.L165:
	cmpl	$2, -44(%rbp)
	jne	.L174
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L174:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L199
	cmpl	$3, -44(%rbp)
	jne	.L199
	movq	-8(%rbp), %rax
	movl	$2, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L162:
	cmpl	$2, -44(%rbp)
	jne	.L200
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L173:
	movq	-40(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L177
	movq	-40(%rbp), %rax
	movl	2536(%rax), %eax
	testl	%eax, %eax
	je	.L178
	cmpl	$4, -44(%rbp)
	jne	.L201
	movq	-8(%rbp), %rax
	movl	$10, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L178:
	cmpl	$257, -44(%rbp)
	jne	.L201
	movq	-8(%rbp), %rax
	movl	$11, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L177:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L180
	cmpl	$3, -44(%rbp)
	jne	.L180
	movq	-8(%rbp), %rax
	movl	$2, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L180:
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jle	.L181
	movq	-40(%rbp), %rax
	movq	2632(%rax), %rax
	testq	%rax, %rax
	je	.L181
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	808(%rax), %rax
	testq	%rax, %rax
	je	.L181
	cmpl	$257, -44(%rbp)
	jne	.L181
	movq	-40(%rbp), %rax
	movl	$1, 1168(%rax)
	movq	-8(%rbp), %rax
	movl	$11, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L181:
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$84, %eax
	testl	%eax, %eax
	jne	.L182
	cmpl	$11, -44(%rbp)
	jne	.L201
	movq	-8(%rbp), %rax
	movl	$4, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L182:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	key_exchange_expected
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L183
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	andl	$456, %eax
	testl	%eax, %eax
	je	.L184
	cmpl	$12, -44(%rbp)
	jne	.L184
.L183:
	cmpl	$12, -44(%rbp)
	jne	.L179
	movq	-8(%rbp), %rax
	movl	$7, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L184:
	cmpl	$13, -44(%rbp)
	jne	.L186
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	cert_req_allowed
	testl	%eax, %eax
	je	.L186
	movq	-8(%rbp), %rax
	movl	$8, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L186:
	cmpl	$14, -44(%rbp)
	jne	.L201
	movq	-8(%rbp), %rax
	movl	$9, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L179:
	jmp	.L201
.L171:
	movq	-40(%rbp), %rax
	movl	2500(%rax), %eax
	testl	%eax, %eax
	je	.L170
	cmpl	$22, -44(%rbp)
	jne	.L170
	movq	-8(%rbp), %rax
	movl	$6, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L170:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	key_exchange_expected
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L187
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	andl	$456, %eax
	testl	%eax, %eax
	je	.L169
	cmpl	$12, -44(%rbp)
	jne	.L169
.L187:
	cmpl	$12, -44(%rbp)
	jne	.L202
	movq	-8(%rbp), %rax
	movl	$7, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L169:
	cmpl	$13, -44(%rbp)
	jne	.L168
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	cert_req_allowed
	testl	%eax, %eax
	je	.L203
	movq	-8(%rbp), %rax
	movl	$8, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L168:
	cmpl	$14, -44(%rbp)
	jne	.L204
	movq	-8(%rbp), %rax
	movl	$9, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L164:
	movq	-40(%rbp), %rax
	movl	2536(%rax), %eax
	testl	%eax, %eax
	je	.L191
	cmpl	$4, -44(%rbp)
	jne	.L205
	movq	-8(%rbp), %rax
	movl	$10, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L191:
	cmpl	$257, -44(%rbp)
	jne	.L205
	movq	-8(%rbp), %rax
	movl	$11, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L167:
	cmpl	$257, -44(%rbp)
	jne	.L206
	movq	-8(%rbp), %rax
	movl	$11, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L166:
	cmpl	$20, -44(%rbp)
	jne	.L207
	movq	-8(%rbp), %rax
	movl	$12, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L172:
	cmpl	$0, -44(%rbp)
	jne	.L208
	movq	-8(%rbp), %rax
	movl	$45, 20(%rax)
	movl	$1, %eax
	jmp	.L161
.L197:
	nop
	jmp	.L160
.L198:
	nop
	jmp	.L160
.L199:
	nop
	jmp	.L160
.L200:
	nop
	jmp	.L160
.L201:
	nop
	jmp	.L160
.L202:
	nop
	jmp	.L160
.L203:
	nop
	jmp	.L160
.L204:
	nop
	jmp	.L160
.L205:
	nop
	jmp	.L160
.L206:
	nop
	jmp	.L160
.L207:
	nop
	jmp	.L160
.L208:
	nop
.L160:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L196
	cmpl	$257, -44(%rbp)
	jne	.L196
	movq	-40(%rbp), %rax
	movq	$0, 264(%rax)
	movq	-40(%rbp), %rax
	movl	$3, 104(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$0, %eax
	jmp	.L161
.L196:
	call	ERR_new@PLT
	leaq	__func__.44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$423, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$244, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	ossl_statem_client_read_transition, .-ossl_statem_client_read_transition
	.type	do_compressed_cert, @function
do_compressed_cert:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	2744(%rax), %eax
	testb	%al, %al
	jne	.L210
	movq	-8(%rbp), %rax
	movl	2724(%rax), %eax
	testl	%eax, %eax
	je	.L210
	movl	$1, %eax
	jmp	.L212
.L210:
	movl	$0, %eax
.L212:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	do_compressed_cert, .-do_compressed_cert
	.type	ossl_statem_client13_write_transition, @function
ossl_statem_client13_write_transition:
.LFB741:
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
	movq	-40(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$52, %eax
	je	.L214
	cmpl	$52, %eax
	ja	.L215
	cmpl	$51, %eax
	je	.L216
	cmpl	$51, %eax
	ja	.L215
	cmpl	$49, %eax
	je	.L217
	cmpl	$49, %eax
	ja	.L215
	cmpl	$47, %eax
	je	.L217
	cmpl	$47, %eax
	ja	.L215
	cmpl	$20, %eax
	je	.L217
	cmpl	$20, %eax
	ja	.L215
	cmpl	$18, %eax
	je	.L214
	cmpl	$18, %eax
	ja	.L215
	cmpl	$17, %eax
	je	.L218
	cmpl	$17, %eax
	ja	.L215
	cmpl	$15, %eax
	ja	.L215
	cmpl	$14, %eax
	jnb	.L219
	cmpl	$12, %eax
	je	.L220
	cmpl	$12, %eax
	ja	.L215
	cmpl	$10, %eax
	je	.L217
	cmpl	$10, %eax
	ja	.L215
	cmpl	$1, %eax
	je	.L221
	cmpl	$8, %eax
	je	.L222
.L215:
	call	ERR_new@PLT
	leaq	__func__.43(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$451, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L223
.L222:
	movq	-40(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	jne	.L224
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	do_compressed_cert
	testl	%eax, %eax
	je	.L225
	movq	-24(%rbp), %rax
	movl	$15, 20(%rax)
	jmp	.L226
.L225:
	movq	-24(%rbp), %rax
	movl	$14, 20(%rax)
.L226:
	movl	$1, %eax
	jmp	.L223
.L224:
	movq	-40(%rbp), %rax
	movl	132(%rax), %eax
	cltq
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L227
	call	ERR_new@PLT
	leaq	__func__.43(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$468, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L223
.L227:
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, %eax
	jmp	.L223
.L220:
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$3, %eax
	je	.L228
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$7, %eax
	jne	.L229
.L228:
	movq	-24(%rbp), %rax
	movl	$51, 20(%rax)
	jmp	.L230
.L229:
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	je	.L231
	movq	-40(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	jne	.L231
	movq	-24(%rbp), %rax
	movl	$18, 20(%rax)
	jmp	.L230
.L231:
	movq	-40(%rbp), %rax
	movl	720(%rax), %eax
	testl	%eax, %eax
	jne	.L232
	movq	-24(%rbp), %rax
	movl	$20, 20(%rax)
	jmp	.L230
.L232:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	do_compressed_cert
	testl	%eax, %eax
	je	.L233
	movq	-24(%rbp), %rax
	movl	$15, 20(%rax)
	jmp	.L230
.L233:
	movq	-24(%rbp), %rax
	movl	$14, 20(%rax)
.L230:
	movq	-40(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 144(%rbx)
	movl	$1, %eax
	jmp	.L223
.L216:
	movq	-40(%rbp), %rax
	movl	2688(%rax), %eax
	cmpl	$2, %eax
	jne	.L214
	movq	-24(%rbp), %rax
	movl	$52, 20(%rax)
	movl	$1, %eax
	jmp	.L223
.L214:
	movq	-40(%rbp), %rax
	movl	720(%rax), %eax
	testl	%eax, %eax
	jne	.L234
	movq	-24(%rbp), %rax
	movl	$20, 20(%rax)
	jmp	.L235
.L234:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	do_compressed_cert
	testl	%eax, %eax
	je	.L236
	movq	-24(%rbp), %rax
	movl	$15, 20(%rax)
	jmp	.L235
.L236:
	movq	-24(%rbp), %rax
	movl	$14, 20(%rax)
.L235:
	movl	$1, %eax
	jmp	.L223
.L219:
	movq	-40(%rbp), %rax
	movl	720(%rax), %eax
	cmpl	$1, %eax
	jne	.L237
	movl	$17, %edx
	jmp	.L238
.L237:
	movl	$20, %edx
.L238:
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$1, %eax
	jmp	.L223
.L218:
	movq	-24(%rbp), %rax
	movl	$20, 20(%rax)
	movl	$1, %eax
	jmp	.L223
.L217:
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, %eax
	jmp	.L223
.L221:
	movq	-40(%rbp), %rax
	movl	2828(%rax), %eax
	cmpl	$-1, %eax
	je	.L239
	movq	-24(%rbp), %rax
	movl	$47, 20(%rax)
	movl	$1, %eax
	jmp	.L223
.L239:
	movl	$2, %eax
.L223:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	ossl_statem_client13_write_transition, .-ossl_statem_client13_write_transition
	.globl	ossl_statem_client_write_transition
	.type	ossl_statem_client_write_transition, @function
ossl_statem_client_write_transition:
.LFB742:
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
	movq	-40(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L241
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L241
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L241
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_client13_write_transition
	jmp	.L242
.L241:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$50, %eax
	je	.L243
	cmpl	$50, %eax
	ja	.L244
	cmpl	$45, %eax
	je	.L245
	cmpl	$45, %eax
	ja	.L244
	cmpl	$20, %eax
	je	.L246
	cmpl	$20, %eax
	ja	.L244
	cmpl	$19, %eax
	je	.L247
	cmpl	$19, %eax
	ja	.L244
	cmpl	$18, %eax
	je	.L248
	cmpl	$18, %eax
	ja	.L244
	cmpl	$17, %eax
	je	.L249
	cmpl	$17, %eax
	ja	.L244
	cmpl	$16, %eax
	je	.L250
	cmpl	$16, %eax
	ja	.L244
	cmpl	$14, %eax
	je	.L251
	cmpl	$14, %eax
	ja	.L244
	cmpl	$13, %eax
	je	.L252
	cmpl	$13, %eax
	ja	.L244
	cmpl	$12, %eax
	je	.L253
	cmpl	$12, %eax
	ja	.L244
	cmpl	$9, %eax
	je	.L254
	cmpl	$9, %eax
	ja	.L244
	cmpl	$3, %eax
	je	.L255
	cmpl	$3, %eax
	ja	.L244
	cmpl	$2, %eax
	je	.L256
	cmpl	$2, %eax
	ja	.L244
	testl	%eax, %eax
	je	.L257
	cmpl	$1, %eax
	je	.L258
.L244:
	call	ERR_new@PLT
	leaq	__func__.42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$556, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L242
.L258:
	movq	-40(%rbp), %rax
	movl	2824(%rax), %eax
	testl	%eax, %eax
	jne	.L257
	movl	$2, %eax
	jmp	.L242
.L257:
	movq	-24(%rbp), %rax
	movl	$13, 20(%rax)
	movl	$1, %eax
	jmp	.L242
.L252:
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	jne	.L259
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	je	.L260
	movq	-24(%rbp), %rax
	movl	$18, 20(%rax)
	jmp	.L261
.L260:
	movq	-24(%rbp), %rax
	movl	$50, 20(%rax)
.L261:
	movl	$1, %eax
	jmp	.L242
.L259:
	movq	-40(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 136(%rbx)
	movl	$2, %eax
	jmp	.L242
.L255:
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	je	.L262
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$7, %eax
	je	.L262
	movq	-24(%rbp), %rax
	movl	$18, 20(%rax)
	jmp	.L263
.L262:
	movq	-24(%rbp), %rax
	movl	$13, 20(%rax)
.L263:
	movl	$1, %eax
	jmp	.L242
.L243:
	movq	-40(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 136(%rbx)
	movl	$2, %eax
	jmp	.L242
.L256:
	movq	-24(%rbp), %rax
	movl	$13, 20(%rax)
	movl	$1, %eax
	jmp	.L242
.L254:
	movq	-40(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 144(%rbx)
	movq	-40(%rbp), %rax
	movl	720(%rax), %eax
	testl	%eax, %eax
	je	.L264
	movq	-24(%rbp), %rax
	movl	$14, 20(%rax)
	jmp	.L265
.L264:
	movq	-24(%rbp), %rax
	movl	$16, 20(%rax)
.L265:
	movl	$1, %eax
	jmp	.L242
.L251:
	movq	-24(%rbp), %rax
	movl	$16, 20(%rax)
	movl	$1, %eax
	jmp	.L242
.L250:
	movq	-40(%rbp), %rax
	movl	720(%rax), %eax
	cmpl	$1, %eax
	jne	.L266
	movq	-24(%rbp), %rax
	movl	$17, 20(%rax)
	jmp	.L267
.L266:
	movq	-24(%rbp), %rax
	movl	$18, 20(%rax)
.L267:
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L268
	movq	-24(%rbp), %rax
	movl	$18, 20(%rax)
.L268:
	movl	$1, %eax
	jmp	.L242
.L249:
	movq	-24(%rbp), %rax
	movl	$18, 20(%rax)
	movl	$1, %eax
	jmp	.L242
.L248:
	movq	-40(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L269
	movq	-24(%rbp), %rax
	movl	$13, 20(%rax)
	jmp	.L270
.L269:
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	jne	.L271
	movq	-24(%rbp), %rax
	movl	$50, 20(%rax)
	jmp	.L270
.L271:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L272
	movq	-40(%rbp), %rax
	movl	1092(%rax), %eax
	testl	%eax, %eax
	je	.L272
	movq	-24(%rbp), %rax
	movl	$19, 20(%rax)
	jmp	.L270
.L272:
	movq	-24(%rbp), %rax
	movl	$20, 20(%rax)
.L270:
	movl	$1, %eax
	jmp	.L242
.L247:
	movq	-24(%rbp), %rax
	movl	$20, 20(%rax)
	movl	$1, %eax
	jmp	.L242
.L246:
	movq	-40(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L273
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, %eax
	jmp	.L242
.L273:
	movl	$2, %eax
	jmp	.L242
.L253:
	movq	-40(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L274
	movq	-24(%rbp), %rax
	movl	$18, 20(%rax)
	movl	$1, %eax
	jmp	.L242
.L274:
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, %eax
	jmp	.L242
.L245:
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl3_renegotiate_check@PLT
	testl	%eax, %eax
	je	.L275
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tls_setup_handshake@PLT
	testl	%eax, %eax
	jne	.L276
	movl	$0, %eax
	jmp	.L242
.L276:
	movq	-24(%rbp), %rax
	movl	$13, 20(%rax)
	movl	$1, %eax
	jmp	.L242
.L275:
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, %eax
.L242:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	ossl_statem_client_write_transition, .-ossl_statem_client_write_transition
	.globl	ossl_statem_client_pre_work
	.type	ossl_statem_client_pre_work, @function
ossl_statem_client_pre_work:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$51, %eax
	je	.L278
	cmpl	$51, %eax
	ja	.L290
	cmpl	$50, %eax
	je	.L280
	cmpl	$50, %eax
	ja	.L290
	cmpl	$18, %eax
	je	.L281
	cmpl	$18, %eax
	ja	.L290
	cmpl	$1, %eax
	je	.L282
	cmpl	$13, %eax
	jne	.L290
	movq	-24(%rbp), %rax
	movl	$0, 132(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L285
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_init_finished_mac@PLT
	testl	%eax, %eax
	jne	.L291
	movl	$0, %eax
	jmp	.L287
.L285:
	movq	-24(%rbp), %rax
	movl	2688(%rax), %eax
	cmpl	$1, %eax
	jne	.L291
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movl	$65536, %esi
	movq	%rax, %rdi
	call	ssl_set_new_record_layer@PLT
	addq	$96, %rsp
	testl	%eax, %eax
	jne	.L291
	movl	$0, %eax
	jmp	.L287
.L281:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L292
	movq	-24(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L292
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.L292
.L278:
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$7, %eax
	je	.L289
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	testl	%eax, %eax
	jne	.L280
.L289:
	movl	$2, %eax
	jmp	.L287
.L280:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	tls_finish_handshake@PLT
	jmp	.L287
.L282:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	tls_finish_handshake@PLT
	jmp	.L287
.L290:
	nop
	jmp	.L284
.L291:
	nop
	jmp	.L284
.L292:
	nop
.L284:
	movl	$2, %eax
.L287:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	ossl_statem_client_pre_work, .-ossl_statem_client_pre_work
	.globl	ossl_statem_client_post_work
	.type	ossl_statem_client_post_work, @function
ossl_statem_client_post_work:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 264(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$47, %eax
	je	.L294
	cmpl	$47, %eax
	ja	.L319
	cmpl	$20, %eax
	je	.L296
	cmpl	$20, %eax
	ja	.L319
	cmpl	$18, %eax
	je	.L297
	cmpl	$18, %eax
	ja	.L319
	cmpl	$13, %eax
	je	.L298
	cmpl	$16, %eax
	je	.L299
	jmp	.L319
.L298:
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	jne	.L301
	movq	-24(%rbp), %rax
	movl	5280(%rax), %eax
	testl	%eax, %eax
	je	.L301
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	jne	.L320
	movq	-24(%rbp), %rax
	movl	$82, %esi
	movq	%rax, %rdi
	call	tls13_change_cipher_state@PLT
	testl	%eax, %eax
	jne	.L320
	movl	$0, %eax
	jmp	.L303
.L301:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	testl	%eax, %eax
	jne	.L304
	movl	$3, %eax
	jmp	.L303
.L320:
	nop
.L304:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L321
	movq	-24(%rbp), %rax
	movl	$1, 2392(%rax)
	jmp	.L321
.L299:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tls_client_key_exchange_post_work@PLT
	testl	%eax, %eax
	jne	.L322
	movl	$0, %eax
	jmp	.L303
.L297:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L307
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L307
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L300
.L307:
	movq	-24(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	je	.L300
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	jne	.L308
	movq	-24(%rbp), %rax
	movl	5280(%rax), %eax
	testl	%eax, %eax
	je	.L308
	movq	-24(%rbp), %rax
	movl	$82, %esi
	movq	%rax, %rdi
	call	tls13_change_cipher_state@PLT
	testl	%eax, %eax
	jne	.L323
	movl	$0, %eax
	jmp	.L303
.L308:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	704(%rdx), %rdx
	movq	%rdx, 760(%rax)
	movq	-24(%rbp), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	jne	.L310
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movl	$0, 752(%rax)
	jmp	.L311
.L310:
	movq	-24(%rbp), %rax
	movq	800(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movl	%edx, 752(%rax)
.L311:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L312
	movl	$0, %eax
	jmp	.L303
.L312:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$18, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L324
	movl	$0, %eax
	jmp	.L303
.L296:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	cmpl	$1, %eax
	je	.L314
	movl	$4, %eax
	jmp	.L303
.L314:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L325
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L325
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L325
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tls13_save_handshake_digest_for_pha@PLT
	testl	%eax, %eax
	jne	.L316
	movl	$0, %eax
	jmp	.L303
.L316:
	movq	-24(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	je	.L325
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$274, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L325
	movl	$0, %eax
	jmp	.L303
.L294:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	cmpl	$1, %eax
	je	.L317
	movl	$3, %eax
	jmp	.L303
.L317:
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tls13_update_key@PLT
	testl	%eax, %eax
	jne	.L326
	movl	$0, %eax
	jmp	.L303
.L319:
	nop
	jmp	.L300
.L321:
	nop
	jmp	.L300
.L322:
	nop
	jmp	.L300
.L323:
	nop
	jmp	.L300
.L324:
	nop
	jmp	.L300
.L325:
	nop
	jmp	.L300
.L326:
	nop
.L300:
	movl	$2, %eax
.L303:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	ossl_statem_client_post_work, .-ossl_statem_client_post_work
	.globl	ossl_statem_client_construct_message
	.type	ossl_statem_client_construct_message, @function
ossl_statem_client_construct_message:
.LFB745:
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
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$52, %eax
	je	.L328
	cmpl	$52, %eax
	ja	.L329
	cmpl	$51, %eax
	je	.L330
	cmpl	$51, %eax
	ja	.L329
	cmpl	$47, %eax
	je	.L331
	cmpl	$47, %eax
	ja	.L329
	cmpl	$20, %eax
	je	.L332
	cmpl	$20, %eax
	ja	.L329
	cmpl	$19, %eax
	je	.L333
	cmpl	$19, %eax
	ja	.L329
	cmpl	$18, %eax
	je	.L334
	cmpl	$18, %eax
	ja	.L329
	cmpl	$17, %eax
	je	.L335
	cmpl	$17, %eax
	ja	.L329
	cmpl	$16, %eax
	je	.L336
	cmpl	$16, %eax
	ja	.L329
	cmpl	$13, %eax
	je	.L337
	cmpl	$14, %eax
	je	.L338
.L329:
	call	ERR_new@PLT
	leaq	__func__.41(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$944, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$236, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L339
.L334:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L340
	movq	-32(%rbp), %rax
	movq	dtls_construct_change_cipher_spec@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L341
.L340:
	movq	-32(%rbp), %rax
	movq	tls_construct_change_cipher_spec@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
.L341:
	movq	-40(%rbp), %rax
	movl	$257, (%rax)
	jmp	.L342
.L337:
	movq	-32(%rbp), %rax
	movq	tls_construct_client_hello@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L342
.L328:
	movq	-32(%rbp), %rax
	movq	tls_construct_end_of_early_data@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L342
.L330:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L342
.L338:
	movq	-32(%rbp), %rax
	movq	tls_construct_client_certificate@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$11, (%rax)
	jmp	.L342
.L336:
	movq	-32(%rbp), %rax
	movq	tls_construct_client_key_exchange@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$16, (%rax)
	jmp	.L342
.L335:
	movq	-32(%rbp), %rax
	movq	tls_construct_cert_verify@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$15, (%rax)
	jmp	.L342
.L333:
	movq	-32(%rbp), %rax
	movq	tls_construct_next_proto@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$67, (%rax)
	jmp	.L342
.L332:
	movq	-32(%rbp), %rax
	movq	tls_construct_finished@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$20, (%rax)
	jmp	.L342
.L331:
	movq	-32(%rbp), %rax
	movq	tls_construct_key_update@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$24, (%rax)
	nop
.L342:
	movl	$1, %eax
.L339:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	ossl_statem_client_construct_message, .-ossl_statem_client_construct_message
	.globl	ossl_statem_client_max_message_size
	.type	ossl_statem_client_max_message_size, @function
ossl_statem_client_max_message_size:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$49, %eax
	je	.L344
	cmpl	$49, %eax
	ja	.L345
	cmpl	$43, %eax
	je	.L346
	cmpl	$43, %eax
	ja	.L345
	cmpl	$42, %eax
	je	.L347
	cmpl	$42, %eax
	ja	.L345
	cmpl	$12, %eax
	je	.L348
	cmpl	$12, %eax
	ja	.L345
	cmpl	$11, %eax
	je	.L349
	cmpl	$11, %eax
	ja	.L345
	cmpl	$10, %eax
	je	.L350
	cmpl	$10, %eax
	ja	.L345
	cmpl	$9, %eax
	je	.L351
	cmpl	$9, %eax
	ja	.L345
	cmpl	$8, %eax
	je	.L352
	cmpl	$8, %eax
	ja	.L345
	cmpl	$7, %eax
	je	.L353
	cmpl	$7, %eax
	ja	.L345
	cmpl	$6, %eax
	je	.L354
	cmpl	$6, %eax
	ja	.L345
	cmpl	$5, %eax
	ja	.L345
	cmpl	$4, %eax
	jnb	.L355
	cmpl	$2, %eax
	je	.L356
	cmpl	$3, %eax
	je	.L357
.L345:
	movl	$0, %eax
	jmp	.L358
.L357:
	movl	$65607, %eax
	jmp	.L358
.L356:
	movl	$258, %eax
	jmp	.L358
.L355:
	movq	-24(%rbp), %rax
	movq	2384(%rax), %rax
	jmp	.L358
.L346:
	movl	$65539, %eax
	jmp	.L358
.L354:
	movl	$16384, %eax
	jmp	.L358
.L353:
	movl	$102400, %eax
	jmp	.L358
.L352:
	movq	-24(%rbp), %rax
	movq	2384(%rax), %rax
	jmp	.L358
.L351:
	movl	$0, %eax
	jmp	.L358
.L349:
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$256, %eax
	jne	.L359
	movl	$3, %eax
	jmp	.L358
.L359:
	movl	$1, %eax
	jmp	.L358
.L350:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L360
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L360
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L360
	movl	$131338, %eax
	jmp	.L358
.L360:
	movl	$65541, %eax
	jmp	.L358
.L348:
	movl	$64, %eax
	jmp	.L358
.L347:
	movl	$20000, %eax
	jmp	.L358
.L344:
	movl	$1, %eax
.L358:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	ossl_statem_client_max_message_size, .-ossl_statem_client_max_message_size
	.globl	ossl_statem_client_process_message
	.type	ossl_statem_client_process_message, @function
ossl_statem_client_process_message:
.LFB747:
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
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$49, %eax
	je	.L363
	cmpl	$49, %eax
	ja	.L364
	cmpl	$45, %eax
	je	.L365
	cmpl	$45, %eax
	ja	.L364
	cmpl	$43, %eax
	je	.L366
	cmpl	$43, %eax
	ja	.L364
	cmpl	$42, %eax
	je	.L367
	cmpl	$42, %eax
	ja	.L364
	cmpl	$12, %eax
	je	.L368
	cmpl	$12, %eax
	ja	.L364
	cmpl	$11, %eax
	je	.L369
	cmpl	$11, %eax
	ja	.L364
	cmpl	$10, %eax
	je	.L370
	cmpl	$10, %eax
	ja	.L364
	cmpl	$9, %eax
	je	.L371
	cmpl	$9, %eax
	ja	.L364
	cmpl	$8, %eax
	je	.L372
	cmpl	$8, %eax
	ja	.L364
	cmpl	$7, %eax
	je	.L373
	cmpl	$7, %eax
	ja	.L364
	cmpl	$6, %eax
	je	.L374
	cmpl	$6, %eax
	ja	.L364
	cmpl	$4, %eax
	je	.L375
	cmpl	$4, %eax
	ja	.L364
	cmpl	$2, %eax
	je	.L376
	cmpl	$3, %eax
	je	.L377
.L364:
	call	ERR_new@PLT
	leaq	__func__.40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1086, %esi
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
	jmp	.L378
.L377:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_server_hello@PLT
	jmp	.L378
.L376:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls_process_hello_verify@PLT
	jmp	.L378
.L375:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_server_certificate@PLT
	jmp	.L378
.L366:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_cert_verify@PLT
	jmp	.L378
.L374:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_cert_status@PLT
	jmp	.L378
.L373:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_key_exchange@PLT
	jmp	.L378
.L372:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_certificate_request@PLT
	jmp	.L378
.L371:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_server_done@PLT
	jmp	.L378
.L369:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_change_cipher_spec@PLT
	jmp	.L378
.L370:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_new_session_ticket@PLT
	jmp	.L378
.L368:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_finished@PLT
	jmp	.L378
.L365:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_hello_req@PLT
	jmp	.L378
.L367:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_encrypted_extensions
	jmp	.L378
.L363:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_key_update@PLT
.L378:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	ossl_statem_client_process_message, .-ossl_statem_client_process_message
	.globl	ossl_statem_client_post_process_message
	.type	ossl_statem_client_post_process_message, @function
ossl_statem_client_post_process_message:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$43, %eax
	je	.L380
	cmpl	$43, %eax
	ja	.L381
	cmpl	$5, %eax
	ja	.L382
	cmpl	$4, %eax
	jnb	.L383
	jmp	.L381
.L382:
	cmpl	$8, %eax
	je	.L380
.L381:
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1150, %esi
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
	jmp	.L384
.L383:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls_post_process_server_certificate@PLT
	jmp	.L384
.L380:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls_prepare_client_certificate@PLT
.L384:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	ossl_statem_client_post_process_message, .-ossl_statem_client_post_process_message
	.globl	tls_construct_client_hello
	.type	tls_construct_client_hello, @function
tls_construct_client_hello:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_set_client_hello_version@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L386
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-52(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L387
.L386:
	cmpq	$0, -40(%rbp)
	je	.L388
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_supported@PLT
	testl	%eax, %eax
	je	.L388
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_is_resumable@PLT
	testl	%eax, %eax
	jne	.L389
.L388:
	movq	-88(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	jne	.L389
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_get_new_session@PLT
	testl	%eax, %eax
	jne	.L389
	movl	$0, %eax
	jmp	.L387
.L389:
	movq	-88(%rbp), %rax
	addq	$328, %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L390
	movl	$1, -12(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L391
.L394:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L392
	movl	$0, -12(%rbp)
	jmp	.L395
.L392:
	addq	$1, -32(%rbp)
.L391:
	cmpq	$31, -32(%rbp)
	jbe	.L394
	jmp	.L395
.L390:
	movq	-88(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
.L395:
	cmpl	$0, -12(%rbp)
	je	.L396
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %r8d
	movl	$32, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_fill_hello_random@PLT
	testl	%eax, %eax
	jg	.L396
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1214, %esi
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
	jmp	.L387
.L396:
	movq	-88(%rbp), %rax
	movl	2396(%rax), %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L397
	movq	-88(%rbp), %rax
	leaq	328(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L398
.L397:
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1253, %esi
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
	jmp	.L387
.L398:
	movq	-88(%rbp), %rax
	movq	2184(%rax), %rax
	addq	$600, %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movl	124(%rax), %eax
	testl	%eax, %eax
	jne	.L399
	movq	-88(%rbp), %rax
	movq	2184(%rax), %rax
	movl	(%rax), %eax
	cmpl	$772, %eax
	jne	.L400
.L399:
	movq	-88(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$772, %eax
	jne	.L401
	movq	-88(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	je	.L401
	movq	$32, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 2256(%rax)
	movq	-88(%rbp), %rax
	addq	$2224, %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	jne	.L422
	movq	-88(%rbp), %rax
	leaq	2224(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L422
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1268, %esi
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
	jmp	.L387
.L401:
	movq	$0, -8(%rbp)
	jmp	.L404
.L422:
	nop
	jmp	.L404
.L400:
	movq	-88(%rbp), %rax
	movq	2184(%rax), %rax
	movq	592(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$772, %eax
	jne	.L404
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 2256(%rax)
	movq	-88(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	600(%rax), %rsi
	movq	-88(%rbp), %rax
	leaq	2224(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L404:
	movq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L405
	cmpq	$0, -8(%rbp)
	je	.L406
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L405
.L406:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L407
.L405:
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1286, %esi
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
	jmp	.L387
.L407:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L408
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movq	256(%rax), %rax
	cmpq	$255, %rax
	ja	.L409
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movq	256(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	1144(%rax), %rax
	movq	%rax, %rsi
	movq	-96(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L408
.L409:
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1295, %esi
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
	jmp	.L387
.L408:
	movq	-96(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L410
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1302, %esi
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
	jmp	.L387
.L410:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_ciphers@PLT
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cipher_list_to_bytes
	testl	%eax, %eax
	jne	.L411
	movl	$0, %eax
	jmp	.L387
.L411:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L412
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1312, %esi
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
	jmp	.L387
.L412:
	movq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L413
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1318, %esi
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
	jmp	.L387
.L413:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_allow_compression@PLT
	testl	%eax, %eax
	je	.L414
	movq	-48(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L414
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L415
	movq	-88(%rbp), %rax
	movl	940(%rax), %eax
	cmpl	$771, %eax
	jg	.L414
.L415:
	movq	-48(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_COMP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -68(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L416
.L418:
	movq	-48(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_COMP_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L417
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1330, %esi
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
	jmp	.L387
.L417:
	addl	$1, -12(%rbp)
.L416:
	movl	-12(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L418
.L414:
	movq	-96(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L419
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L420
.L419:
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1338, %esi
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
	jmp	.L387
.L420:
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$128, %edx
	movq	%rax, %rdi
	call	tls_construct_extensions@PLT
	testl	%eax, %eax
	jne	.L421
	movl	$0, %eax
	jmp	.L387
.L421:
	movl	$1, %eax
.L387:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	tls_construct_client_hello, .-tls_construct_client_hello
	.globl	dtls_process_hello_verify
	.type	dtls_process_hello_verify, @function
dtls_process_hello_verify:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L424
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L425
.L424:
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1358, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L429
.L425:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -8(%rbp)
	cmpq	$255, -8(%rbp)
	jbe	.L427
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1364, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$404, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L429
.L427:
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L428
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1369, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L429
.L428:
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 256(%rax)
	movl	$1, %eax
.L429:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	dtls_process_hello_verify, .-dtls_process_hello_verify
	.type	set_client_ciphersuite, @function
set_client_ciphersuite:
.LFB751:
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
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_get_cipher_by_char@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L431
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1388, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$248, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L432
.L431:
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$1, %ecx
	movl	$65539, %edx
	movq	%rax, %rdi
	call	ssl_cipher_disabled@PLT
	testl	%eax, %eax
	je	.L433
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1396, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$261, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L432
.L433:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_ciphers_by_id@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L434
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1404, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$261, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L432
.L434:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L435
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L435
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L435
	movq	-72(%rbp), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	je	.L435
	movq	-72(%rbp), %rax
	movq	704(%rax), %rax
	movl	24(%rax), %edx
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	je	.L435
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1411, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$261, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L432
.L435:
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	je	.L436
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	movl	24(%rax), %edx
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movl	%edx, %edx
	movq	%rdx, 768(%rax)
.L436:
	movq	-72(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L437
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	768(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, %rdx
	je	.L437
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L438
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L438
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L438
	movq	-32(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_md@PLT
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L439
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1427, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L432
.L439:
	cmpq	$0, -56(%rbp)
	je	.L440
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_md@PLT
	cmpq	%rax, -56(%rbp)
	je	.L442
.L440:
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1436, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$218, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L432
.L438:
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1445, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$197, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L432
.L442:
	nop
.L437:
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 704(%rax)
	movl	$1, %eax
.L432:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	set_client_ciphersuite, .-set_client_ciphersuite
	.globl	tls_process_server_hello
	.type	tls_process_server_hello, @function
tls_process_server_hello:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -120(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L444
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1472, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L444:
	movq	-152(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$772, %eax
	jne	.L446
	movl	-112(%rbp), %eax
	cmpl	$771, %eax
	jne	.L446
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$31, %rax
	jbe	.L446
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	hrrrandom@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L446
	movq	-152(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	je	.L447
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1482, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$244, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L447:
	movq	-152(%rbp), %rax
	movl	$1, 2136(%rax)
	movq	-152(%rbp), %rax
	movl	72(%rax), %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_set_record_protocol_version@PLT
	testl	%eax, %eax
	jne	.L448
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1488, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L448:
	movl	$1, -20(%rbp)
	movq	-160(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L450
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1493, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L446:
	movq	-152(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	-160(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L450
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1498, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L450:
	leaq	-80(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L451
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1505, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L451:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -56(%rbp)
	cmpq	$32, -56(%rbp)
	ja	.L452
	cmpq	$32, -56(%rbp)
	jbe	.L453
.L452:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1511, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$300, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L453:
	leaq	-104(%rbp), %rcx
	movq	-160(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L454
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1516, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L454:
	leaq	-108(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L455
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1521, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L455:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L456
	cmpl	$0, -20(%rbp)
	jne	.L456
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_null_init
	jmp	.L457
.L456:
	leaq	-96(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	je	.L458
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L457
.L458:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1530, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L457:
	cmpl	$0, -20(%rbp)
	jne	.L459
	leaq	-120(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$768, %edx
	movq	%rax, %rdi
	call	tls_collect_extensions@PLT
	testl	%eax, %eax
	je	.L497
	movq	-120(%rbp), %rdx
	movl	-112(%rbp), %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_choose_client_version@PLT
	testl	%eax, %eax
	je	.L498
.L459:
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L461
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L461
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L462
.L461:
	cmpl	$0, -20(%rbp)
	je	.L463
.L462:
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	je	.L464
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1551, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$341, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L464:
	movq	-152(%rbp), %rax
	movq	2256(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L465
	movq	-152(%rbp), %rax
	leaq	2224(%rax), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L463
.L465:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1559, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$999, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L463:
	cmpl	$0, -20(%rbp)
	je	.L466
	movq	-104(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_client_ciphersuite
	testl	%eax, %eax
	je	.L499
	leaq	-96(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_as_hello_retry_request
	jmp	.L496
.L466:
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L469
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L469
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L469
	movl	$512, -24(%rbp)
	jmp	.L470
.L469:
	movl	$256, -24(%rbp)
.L470:
	movq	-120(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movq	-152(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls_validate_all_contexts@PLT
	testl	%eax, %eax
	jne	.L471
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1580, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L471:
	movq	-152(%rbp), %rax
	movl	$0, 1168(%rax)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L472
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L472
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L472
	movq	-152(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_processed_read_pending@PLT
	testl	%eax, %eax
	je	.L473
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1592, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$182, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L473:
	movq	-120(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$512, %edx
	movl	$28, %esi
	movq	%rax, %rdi
	call	tls_parse_extension@PLT
	testl	%eax, %eax
	jne	.L475
	jmp	.L445
.L472:
	movq	-152(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jle	.L476
	movq	-152(%rbp), %rax
	movq	2632(%rax), %rax
	testq	%rax, %rax
	je	.L476
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	808(%rax), %rax
	testq	%rax, %rax
	je	.L476
	movq	$0, -128(%rbp)
	movl	$512, -132(%rbp)
	movq	-152(%rbp), %rax
	movq	2632(%rax), %r10
	movq	-152(%rbp), %rax
	movq	2640(%rax), %rdi
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %rsi
	leaq	-128(%rbp), %rcx
	leaq	-132(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L477
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	jle	.L477
	movl	-132(%rbp), %edx
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movslq	%edx, %rdx
	movq	%rdx, 8(%rax)
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	jne	.L478
	movq	-104(%rbp), %rcx
	movq	-152(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_get_cipher_by_char@PLT
	jmp	.L479
.L478:
	movq	-128(%rbp), %rax
.L479:
	movq	-152(%rbp), %rdx
	movq	2184(%rdx), %rdx
	movq	%rax, 760(%rdx)
	jmp	.L476
.L477:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1636, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L476:
	cmpq	$0, -56(%rbp)
	je	.L475
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	592(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L475
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	600(%rax), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L475
	movq	-152(%rbp), %rax
	movl	$1, 1168(%rax)
.L475:
	movq	-152(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L480
	movq	-152(%rbp), %rax
	movq	2144(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	632(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L481
	movq	-152(%rbp), %rax
	movq	2144(%rax), %rax
	movq	-152(%rbp), %rdx
	leaq	2152(%rdx), %rsi
	movq	-152(%rbp), %rdx
	movq	2184(%rdx), %rdx
	leaq	640(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L482
.L481:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1652, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$272, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L480:
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	592(%rax), %rax
	testq	%rax, %rax
	je	.L483
	movq	-152(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	144(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
	movq	-152(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_get_new_session@PLT
	testl	%eax, %eax
	je	.L500
.L483:
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-152(%rbp), %rdx
	movl	72(%rdx), %edx
	movl	%edx, (%rax)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L484
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L484
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L482
.L484:
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 592(%rax)
	cmpq	$0, -56(%rbp)
	je	.L482
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rsi
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	600(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L482:
	movq	-152(%rbp), %rax
	movl	72(%rax), %edx
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L485
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1690, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$210, %edx
	movl	$70, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L485:
	movq	-152(%rbp), %rax
	movl	72(%rax), %edx
	movq	-152(%rbp), %rax
	movl	%edx, 936(%rax)
	movq	-152(%rbp), %rax
	movl	72(%rax), %edx
	movq	-152(%rbp), %rax
	movl	%edx, 940(%rax)
	movq	-104(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_client_ciphersuite
	testl	%eax, %eax
	je	.L501
	movq	-152(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L487
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movl	752(%rax), %edx
	movl	-108(%rbp), %eax
	cmpl	%eax, %edx
	je	.L487
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1722, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$344, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L487:
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	jne	.L488
	movq	$0, -32(%rbp)
	jmp	.L489
.L488:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_allow_compression@PLT
	testl	%eax, %eax
	jne	.L490
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1729, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$343, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L490:
	movl	-108(%rbp), %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	280(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl3_comp_find@PLT
	movq	%rax, -32(%rbp)
.L489:
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	je	.L491
	cmpq	$0, -32(%rbp)
	jne	.L491
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1737, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$257, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L445
.L491:
	movq	-152(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 800(%rax)
	movq	-120(%rbp), %rdx
	movl	-24(%rbp), %esi
	movq	-152(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	tls_parse_all_extensions@PLT
	testl	%eax, %eax
	je	.L502
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L493
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L493
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L493
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L503
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-152(%rbp), %rax
	movl	$145, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L503
	movq	-152(%rbp), %rax
	movl	240(%rax), %eax
	testl	%eax, %eax
	jne	.L493
	movq	-152(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	jne	.L493
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-152(%rbp), %rax
	movl	$146, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L504
.L493:
	movq	-120(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1811, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$3, %eax
	jmp	.L496
.L497:
	nop
	jmp	.L445
.L498:
	nop
	jmp	.L445
.L499:
	nop
	jmp	.L445
.L500:
	nop
	jmp	.L445
.L501:
	nop
	jmp	.L445
.L502:
	nop
	jmp	.L445
.L503:
	nop
	jmp	.L445
.L504:
	nop
.L445:
	movq	-120(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1814, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L496:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	tls_process_server_hello, .-tls_process_server_hello
	.type	tls_process_as_hello_retry_request, @function
tls_process_as_hello_retry_request:
.LFB753:
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
	movl	240(%rax), %eax
	cmpl	$7, %eax
	jne	.L506
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movl	$65536, %esi
	movq	%rax, %rdi
	call	ssl_set_new_record_layer@PLT
	addq	$96, %rsp
	testl	%eax, %eax
	je	.L515
.L506:
	movq	-24(%rbp), %rax
	movq	3040(%rax), %rax
	movq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	3056(%rax), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	call	*%rdx
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$2048, %edx
	movq	%rax, %rdi
	call	tls_collect_extensions@PLT
	testl	%eax, %eax
	je	.L516
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$2048, %esi
	movq	%rax, %rdi
	call	tls_parse_all_extensions@PLT
	testl	%eax, %eax
	je	.L516
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1848, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	2704(%rax), %rax
	testq	%rax, %rax
	jne	.L510
	movq	-24(%rbp), %rax
	movq	712(%rax), %rax
	testq	%rax, %rax
	je	.L510
	call	ERR_new@PLT
	leaq	__func__.34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1856, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$214, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L507
.L510:
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	create_synthetic_message_hash@PLT
	testl	%eax, %eax
	je	.L517
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_finish_mac@PLT
	testl	%eax, %eax
	je	.L518
	movl	$1, %eax
	jmp	.L514
.L515:
	nop
	jmp	.L507
.L516:
	nop
	jmp	.L507
.L517:
	nop
	jmp	.L507
.L518:
	nop
.L507:
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1883, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L514:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	tls_process_as_hello_retry_request, .-tls_process_as_hello_retry_request
	.globl	tls_process_server_rpk
	.type	tls_process_server_rpk, @function
tls_process_server_rpk:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_process_rpk@PLT
	testl	%eax, %eax
	jne	.L520
	movl	$0, %eax
	jmp	.L523
.L520:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L522
	call	ERR_new@PLT
	leaq	__func__.33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1897, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$348, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L523
.L522:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	696(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 696(%rax)
	movl	$2, %eax
.L523:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	tls_process_server_rpk, .-tls_process_server_rpk
	.type	tls_post_process_server_rpk, @function
tls_post_process_server_rpk:
.LFB755:
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
	movl	%esi, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	jne	.L525
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1915, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$350, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L534
.L525:
	movq	-56(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$8, %eax
	jne	.L527
	movq	-56(%rbp), %rax
	movl	$1, 104(%rax)
.L527:
	call	ERR_set_mark@PLT
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	696(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_verify_rpk@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L528
	movq	-56(%rbp), %rax
	movl	2264(%rax), %eax
	testl	%eax, %eax
	je	.L528
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1927, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movq	2336(%rax), %rax
	movl	%eax, %edi
	call	ssl_x509err2alert@PLT
	movl	%eax, %esi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$134, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L534
.L528:
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -20(%rbp)
	jle	.L529
	movq	-56(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$8, %eax
	jne	.L529
	movl	$3, %eax
	jmp	.L534
.L529:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	696(%rax), %rax
	leaq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_pkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L530
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1938, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$247, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L534
.L530:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L531
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L531
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L532
.L531:
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movq	-56(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L532
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1949, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$351, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L534
.L532:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	704(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 704(%rax)
	movq	X509_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_freefunc_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 712(%rax)
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	2336(%rdx), %rdx
	movq	%rdx, 720(%rax)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L533
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L533
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L533
	movq	-56(%rbp), %rax
	leaq	2128(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	2064(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	ssl_handshake_hash@PLT
	testl	%eax, %eax
	jne	.L533
	movl	$0, %eax
	jmp	.L534
.L533:
	movl	$2, %eax
.L534:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	tls_post_process_server_rpk, .-tls_post_process_server_rpk
	.globl	tls_process_server_certificate
	.type	tls_process_server_certificate, @function
tls_process_server_certificate:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -76(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movzbl	2746(%rax), %eax
	cmpb	$2, %al
	jne	.L536
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_server_rpk@PLT
	jmp	.L557
.L536:
	movq	-120(%rbp), %rax
	movzbl	2746(%rax), %eax
	testb	%al, %al
	je	.L538
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1987, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$247, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L539
.L538:
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rbx
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, 712(%rbx)
	movq	712(%rbx), %rax
	testq	%rax, %rax
	jne	.L540
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1993, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L539
.L540:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L541
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L541
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L541
	leaq	-76(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L542
.L541:
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	jne	.L542
	leaq	-48(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	testl	%eax, %eax
	je	.L542
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L542
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L543
.L542:
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2002, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L539
.L543:
	movq	$0, -24(%rbp)
	jmp	.L544
.L556:
	leaq	-56(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	testl	%eax, %eax
	je	.L545
	movq	-56(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L546
.L545:
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2008, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$135, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L539
.L546:
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L547
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2015, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$524301, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L539
.L547:
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509@PLT
	testq	%rax, %rax
	jne	.L548
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2020, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$524301, %edx
	movl	$42, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L539
.L548:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L549
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2025, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$135, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L539
.L549:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L550
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L550
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L550
	movq	$0, -88(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L551
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2034, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L539
.L551:
	cmpq	$0, -24(%rbp)
	sete	%al
	movzbl	%al, %ecx
	leaq	-88(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$4096, %edx
	movq	%rax, %rdi
	call	tls_collect_extensions@PLT
	testl	%eax, %eax
	je	.L553
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %edi
	movq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	$4096, %esi
	movq	%rax, %rdi
	call	tls_parse_all_extensions@PLT
	testl	%eax, %eax
	jne	.L554
.L553:
	movq	-88(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2043, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L539
.L554:
	movq	-88(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2047, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L550:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L555
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2051, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L539
.L555:
	movq	$0, -64(%rbp)
	addq	$1, -24(%rbp)
.L544:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L556
	movl	$2, %eax
	jmp	.L557
.L539:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 712(%rax)
	movl	$0, %eax
.L557:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	tls_process_server_certificate, .-tls_process_server_certificate
	.globl	tls_post_process_server_certificate
	.type	tls_post_process_server_certificate, @function
tls_post_process_server_certificate:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movzbl	2746(%rax), %eax
	cmpb	$2, %al
	jne	.L559
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls_post_process_server_rpk
	jmp	.L570
.L559:
	movq	-56(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$8, %eax
	jne	.L561
	movq	-56(%rbp), %rax
	movl	$1, 104(%rax)
.L561:
	call	ERR_set_mark@PLT
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	712(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_verify_cert_chain@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L562
	movq	-56(%rbp), %rax
	movl	2264(%rax), %eax
	testl	%eax, %eax
	je	.L562
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movq	2336(%rax), %rax
	movl	%eax, %edi
	call	ssl_x509err2alert@PLT
	movl	%eax, %esi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$134, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L570
.L562:
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -12(%rbp)
	jle	.L563
	movq	-56(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$8, %eax
	jne	.L563
	movl	$3, %eax
	jmp	.L570
.L563:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L564
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	je	.L565
.L564:
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2120, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$239, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L570
.L565:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_pkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L566
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$247, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L570
.L566:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L567
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L567
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L568
.L567:
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movq	-56(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L568
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$383, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L570
.L568:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	704(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 704(%rax)
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	2336(%rdx), %rdx
	movq	%rdx, 720(%rax)
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	696(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 696(%rax)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L569
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L569
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L569
	movq	-56(%rbp), %rax
	leaq	2128(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	2064(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	ssl_handshake_hash@PLT
	testl	%eax, %eax
	jne	.L569
	movl	$0, %eax
	jmp	.L570
.L569:
	movl	$2, %eax
.L570:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	tls_post_process_server_certificate, .-tls_post_process_server_certificate
	.type	tls_process_ske_psk_preamble, @function
tls_process_ske_psk_preamble:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L572
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2184, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L577
.L572:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$256, %rax
	jbe	.L574
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$146, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L577
.L574:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L575
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	672(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2200, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 672(%rax)
	jmp	.L576
.L575:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	672(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_strndup
	testl	%eax, %eax
	jne	.L576
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2204, %esi
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
	jmp	.L577
.L576:
	movl	$1, %eax
.L577:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	tls_process_ske_psk_preamble, .-tls_process_ske_psk_preamble
	.type	tls_process_ske_srp, @function
tls_process_ske_srp:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L579
	leaq	-48(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L579
	leaq	-64(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L579
	leaq	-80(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L580
.L579:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2224, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L586
.L580:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %ebx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movl	$0, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 2912(%rdx)
	movq	-88(%rbp), %rax
	movq	2912(%rax), %rax
	testq	%rax, %rax
	je	.L582
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %ebx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movl	$0, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 2920(%rdx)
	movq	-88(%rbp), %rax
	movq	2920(%rax), %rax
	testq	%rax, %rax
	je	.L582
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %ebx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movl	$0, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 2928(%rdx)
	movq	-88(%rbp), %rax
	movq	2928(%rax), %rax
	testq	%rax, %rax
	je	.L582
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %ebx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movl	$0, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 2936(%rdx)
	movq	-88(%rbp), %rax
	movq	2936(%rax), %rax
	testq	%rax, %rax
	jne	.L583
.L582:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$524291, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L586
.L583:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	srp_verify_server_param@PLT
	testl	%eax, %eax
	jne	.L584
	movl	$0, %eax
	jmp	.L586
.L584:
	movq	-88(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L585
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	tls_get_peer_pkey@PLT
	movq	-104(%rbp), %rdx
	movq	%rax, (%rdx)
.L585:
	movl	$1, %eax
.L586:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	tls_process_ske_srp, .-tls_process_ske_srp
	.section	.rodata
.LC2:
	.string	"p"
.LC3:
	.string	"g"
.LC4:
	.string	"pub"
.LC5:
	.string	"DH"
	.text
	.type	tls_process_ske_dhe, @function
tls_process_ske_dhe:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -44(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L588
	leaq	-112(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L588
	leaq	-128(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L589
.L588:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2274, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L603
.L589:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %ebx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movl	$0, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -56(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %ebx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movl	$0, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -64(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %ebx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movl	$0, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L591
	cmpq	$0, -64(%rbp)
	je	.L591
	cmpq	$0, -72(%rbp)
	jne	.L592
.L591:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2284, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$524291, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L593
.L592:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L594
	movq	-56(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L594
	movq	-64(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L594
	movq	-72(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	je	.L594
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L595
.L594:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2295, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L593
.L595:
	movq	-80(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L596
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2301, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L593
.L596:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	jle	.L597
	movq	-32(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	jg	.L598
.L597:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2306, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$102, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L593
.L598:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-80(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-136(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L599
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_param_check_quick@PLT
	cmpl	$1, %eax
	jne	.L599
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_public_check@PLT
	cmpl	$1, %eax
	je	.L600
.L599:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2321, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$102, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L593
.L600:
	movq	-136(%rbp), %rbx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movq	%rbx, %r8
	movl	$0, %ecx
	movl	$262151, %esi
	movq	%rax, %rdi
	call	ssl_security@PLT
	testl	%eax, %eax
	jne	.L601
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2328, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$394, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L593
.L601:
	movq	-136(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 1136(%rax)
	movq	$0, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L602
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	tls_get_peer_pkey@PLT
	movq	-168(%rbp), %rdx
	movq	%rax, (%rdx)
.L602:
	movl	$1, -44(%rbp)
.L593:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-44(%rbp), %eax
.L603:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	tls_process_ske_dhe, .-tls_process_ske_dhe
	.type	tls_process_ske_ecdhe, @function
tls_process_ske_ecdhe:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L605
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L606
.L605:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2368, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$160, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L615
.L606:
	movl	-36(%rbp), %eax
	cmpl	$3, %eax
	jne	.L608
	movl	-40(%rbp), %eax
	movzwl	%ax, %ecx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls1_check_group_id@PLT
	testl	%eax, %eax
	jne	.L609
.L608:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2377, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$378, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L615
.L609:
	movl	-40(%rbp), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_generate_param_group@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 1136(%rdx)
	movq	-56(%rbp), %rax
	movq	1136(%rax), %rax
	testq	%rax, %rax
	jne	.L610
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2382, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$314, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L615
.L610:
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L611
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2388, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L615
.L611:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	1136(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_encoded_public_key@PLT
	testl	%eax, %eax
	jg	.L612
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2395, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$306, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L615
.L612:
	movq	-56(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L613
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tls_get_peer_pkey@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L614
.L613:
	movq	-56(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L614
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tls_get_peer_pkey@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
.L614:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 776(%rax)
	movl	$1, %eax
.L615:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	tls_process_ske_ecdhe, .-tls_process_ske_ecdhe
	.globl	tls_process_key_exchange
	.type	tls_process_key_exchange, @function
tls_process_key_exchange:
.LFB762:
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
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -88(%rbp)
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-184(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -56(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-184(%rbp), %rax
	movq	1136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-184(%rbp), %rax
	movq	$0, 1136(%rax)
	movq	-56(%rbp), %rax
	andl	$456, %eax
	testq	%rax, %rax
	je	.L617
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_ske_psk_preamble
	testl	%eax, %eax
	je	.L647
.L617:
	movq	-56(%rbp), %rax
	andl	$72, %eax
	testq	%rax, %rax
	jne	.L619
	movq	-56(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L620
	leaq	-80(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_process_ske_srp
	testl	%eax, %eax
	jne	.L619
	jmp	.L618
.L620:
	movq	-56(%rbp), %rax
	andl	$258, %eax
	testq	%rax, %rax
	je	.L621
	leaq	-80(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_process_ske_dhe
	testl	%eax, %eax
	jne	.L619
	jmp	.L618
.L621:
	movq	-56(%rbp), %rax
	andl	$132, %eax
	testq	%rax, %rax
	je	.L622
	leaq	-80(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_process_ske_ecdhe
	testl	%eax, %eax
	jne	.L619
	jmp	.L618
.L622:
	cmpq	$0, -56(%rbp)
	je	.L619
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2456, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$244, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L618
.L619:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L623
	movq	$0, -152(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	subq	%rax, %rbx
	movq	%rbx, %rdx
	leaq	-144(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_sub_packet
	testl	%eax, %eax
	jne	.L624
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L618
.L624:
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L626
	leaq	-164(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L627
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2483, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$160, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L628
.L627:
	movq	-80(%rbp), %rdx
	movl	-164(%rbp), %eax
	movzwl	%ax, %ecx
	movq	-184(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls12_check_peer_sigalg@PLT
	testl	%eax, %eax
	jg	.L630
	nop
.L628:
	jmp	.L618
.L626:
	movq	-80(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls1_set_peer_legacy_sigalg@PLT
	testl	%eax, %eax
	jne	.L630
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2491, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$333, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L618
.L630:
	movq	-184(%rbp), %rax
	movq	912(%rax), %rcx
	leaq	-152(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_lookup_md@PLT
	testl	%eax, %eax
	jne	.L631
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2497, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$297, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L618
.L631:
	leaq	-128(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L632
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L633
.L632:
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2507, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L618
.L633:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L634
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2513, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L618
.L634:
	movq	-80(%rbp), %r13
	movq	-48(%rbp), %rax
	movq	1096(%rax), %r12
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	je	.L635
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	jmp	.L636
.L635:
	movl	$0, %edx
.L636:
	leaq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%r13, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L637
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2521, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L618
.L637:
	movq	-184(%rbp), %rax
	movq	912(%rax), %rax
	testq	%rax, %rax
	je	.L638
	movq	-184(%rbp), %rax
	movq	912(%rax), %rax
	movl	20(%rax), %eax
	cmpl	$912, %eax
	jne	.L638
	movq	-88(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jle	.L639
	movq	-88(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_pss_saltlen@PLT
	testl	%eax, %eax
	jg	.L638
.L639:
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2528, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L618
.L638:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rdx
	leaq	-160(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	construct_key_exchange_tbs@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L648
	movq	-160(%rbp), %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %r12
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rsi
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rbx, %rcx
	movq	%r12, %rdx
	movq	%rax, %rdi
	call	EVP_DigestVerify@PLT
	movl	%eax, -68(%rbp)
	movq	-160(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2541, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -68(%rbp)
	jg	.L641
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2543, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$123, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L618
.L641:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	$0, -40(%rbp)
	jmp	.L642
.L623:
	movq	-184(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$68, %eax
	testl	%eax, %eax
	jne	.L643
	movq	-56(%rbp), %rax
	andl	$456, %eax
	testq	%rax, %rax
	jne	.L643
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_check_cert_and_algorithm@PLT
	testl	%eax, %eax
	je	.L649
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2554, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$390, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L649
.L643:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L642
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2561, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$153, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L618
.L642:
	movl	$3, %eax
	jmp	.L646
.L647:
	nop
	jmp	.L618
.L648:
	nop
	jmp	.L618
.L649:
	nop
.L618:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
.L646:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	tls_process_key_exchange, .-tls_process_key_exchange
	.globl	tls_process_certificate_request
	.type	tls_process_certificate_request, @function
tls_process_certificate_request:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	920(%rax), %rax
	testq	%rax, %rax
	je	.L651
	movq	-88(%rbp), %rax
	movq	280(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	movq	920(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L652
.L651:
	movq	-88(%rbp), %rax
	movq	280(%rax), %rax
	salq	$2, %rax
	leaq	.LC1(%rip), %rcx
	movl	$2579, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 920(%rax)
.L652:
	movq	-88(%rbp), %rax
	movq	920(%rax), %rax
	testq	%rax, %rax
	jne	.L653
	movl	$0, %eax
	jmp	.L654
.L653:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L655
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L655
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L655
	movq	$0, -40(%rbp)
	movq	-88(%rbp), %rax
	movl	132(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L656
	movl	$1, %eax
	jmp	.L654
.L656:
	movq	-88(%rbp), %rax
	movq	728(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2599, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	movq	$0, 728(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 736(%rax)
	movq	-88(%rbp), %rax
	movq	2840(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2602, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	movq	$0, 2840(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 2848(%rax)
	leaq	-16(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L658
	movq	-88(%rbp), %rax
	leaq	2848(%rax), %rdx
	movq	-88(%rbp), %rax
	leaq	2840(%rax), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_memdup
	testl	%eax, %eax
	jne	.L659
.L658:
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2608, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L654
.L659:
	leaq	-32(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L660
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2613, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L654
.L660:
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$16384, %edx
	movq	%rax, %rdi
	call	tls_collect_extensions@PLT
	testl	%eax, %eax
	je	.L661
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$16384, %esi
	movq	%rax, %rdi
	call	tls_parse_all_extensions@PLT
	testl	%eax, %eax
	jne	.L662
.L661:
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2622, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L654
.L662:
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2625, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	tls1_process_sigalgs@PLT
	testl	%eax, %eax
	jne	.L676
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2627, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L654
.L655:
	leaq	-64(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L665
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2635, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L654
.L665:
	movq	-88(%rbp), %rax
	leaq	736(%rax), %rdx
	movq	-88(%rbp), %rax
	leaq	728(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_memdup
	testl	%eax, %eax
	jne	.L667
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2640, %esi
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
	jmp	.L654
.L667:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L668
	leaq	-80(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L669
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2648, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L670
.L669:
	leaq	-80(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_save_sigalgs@PLT
	testl	%eax, %eax
	jne	.L671
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2657, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$360, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L670
.L671:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	tls1_process_sigalgs@PLT
	testl	%eax, %eax
	jne	.L668
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2662, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$524308, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
.L670:
	jmp	.L654
.L668:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_ca_names@PLT
	testl	%eax, %eax
	jne	.L664
	movl	$0, %eax
	jmp	.L654
.L676:
	nop
.L664:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L674
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2675, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L654
.L674:
	movq	-88(%rbp), %rax
	movl	$1, 720(%rax)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L675
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L675
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L675
	movq	-88(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	je	.L675
	movl	$3, %eax
	jmp	.L654
.L675:
	movl	$2, %eax
.L654:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	tls_process_certificate_request, .-tls_process_certificate_request
	.section	.rodata
.LC6:
	.string	"SHA2-256"
	.text
	.globl	tls_process_new_session_ticket
	.type	tls_process_new_session_ticket, @function
tls_process_new_session_ticket:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_null_init
	leaq	-80(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	je	.L678
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L679
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L679
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L679
	leaq	-88(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	je	.L678
	leaq	-128(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L678
.L679:
	leaq	-68(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L678
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L680
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L680
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L680
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	je	.L681
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	-68(%rbp), %edx
	movl	%edx, %edx
	cmpq	%rdx, %rax
	jnb	.L682
.L681:
	movl	$1, %eax
	jmp	.L683
.L682:
	movl	$0, %eax
.L683:
	andl	$1, %eax
	testb	%al, %al
	jne	.L678
	jmp	.L684
.L680:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	-68(%rbp), %edx
	movl	%edx, %edx
	cmpq	%rdx, %rax
	je	.L684
.L678:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2718, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L685
.L684:
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	jne	.L686
	movl	$3, %eax
	jmp	.L707
.L686:
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L688
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L688
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L689
.L688:
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	592(%rax), %rax
	testq	%rax, %rax
	je	.L690
.L689:
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_session_dup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L691
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2746, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$524308, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L685
.L691:
	movq	-152(%rbp), %rax
	movq	2800(%rax), %rax
	movl	80(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L692
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L693
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L693
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L692
.L693:
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_remove_session@PLT
.L692:
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-152(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 2184(%rax)
.L690:
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 736(%rbx)
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	ssl_session_calculate_timeout@PLT
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	808(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2767, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 808(%rax)
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 816(%rax)
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rbx
	leaq	.LC1(%rip), %rax
	movl	$2771, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, 808(%rbx)
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	808(%rax), %rax
	testq	%rax, %rax
	jne	.L694
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2773, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L685
.L694:
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	808(%rax), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L695
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2777, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L685
.L695:
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 824(%rax)
	movq	-88(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movl	%edx, 832(%rax)
	movl	-68(%rbp), %edx
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movl	%edx, %edx
	movq	%rdx, 816(%rax)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L696
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L696
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L696
	leaq	-144(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	je	.L697
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L698
.L697:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2790, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L685
.L698:
	leaq	-104(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$8192, %edx
	movq	%rax, %rdi
	call	tls_collect_extensions@PLT
	testl	%eax, %eax
	je	.L708
	movq	-104(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8192, %esi
	movq	%rax, %rdi
	call	tls_parse_all_extensions@PLT
	testl	%eax, %eax
	je	.L708
.L696:
	movq	-32(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L702
	movq	-152(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	ossl_statem_send_fatal@PLT
	jmp	.L685
.L702:
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	600(%rax), %rsi
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	808(%rax), %rax
	movq	-24(%rbp), %rcx
	leaq	-92(%rbp), %rdx
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	jne	.L703
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2829, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L685
.L703:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	$0, -24(%rbp)
	movl	-92(%rbp), %edx
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movl	%edx, %edx
	movq	%rdx, 592(%rax)
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movl	$0, 688(%rax)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L704
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L704
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L704
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L705
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2846, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L685
.L705:
	movl	-52(%rbp), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %r12
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rdi
	movq	-152(%rbp), %rax
	leaq	1476(%rax), %rdx
	leaq	nonce_label.22(%rip), %rcx
	movq	-48(%rbp), %rsi
	movq	-152(%rbp), %rax
	pushq	$1
	pushq	-64(%rbp)
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r9
	movl	$10, %r8d
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L709
	movq	-152(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-104(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2863, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-152(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl_update_cache@PLT
	movl	$1, %eax
	jmp	.L707
.L704:
	movl	$3, %eax
	jmp	.L707
.L708:
	nop
	jmp	.L685
.L709:
	nop
.L685:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-104(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2871, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L707:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	tls_process_new_session_ticket, .-tls_process_new_session_ticket
	.globl	tls_process_cert_status_body
	.type	tls_process_cert_status_body, @function
tls_process_cert_status_body:
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
	leaq	-12(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L711
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	je	.L712
.L711:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2886, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$329, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L718
.L712:
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3_len
	testl	%eax, %eax
	je	.L714
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L715
.L714:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2891, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L718
.L715:
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$2894, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2520(%rax)
	movq	-24(%rbp), %rax
	movq	2520(%rax), %rax
	testq	%rax, %rax
	jne	.L716
	movq	-24(%rbp), %rax
	movq	$0, 2528(%rax)
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2897, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L718
.L716:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2528(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	2520(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L717
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2902, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L718
.L717:
	movl	$1, %eax
.L718:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	tls_process_cert_status_body, .-tls_process_cert_status_body
	.globl	tls_process_cert_status
	.type	tls_process_cert_status, @function
tls_process_cert_status:
.LFB766:
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
	call	tls_process_cert_status_body@PLT
	testl	%eax, %eax
	jne	.L720
	movl	$0, %eax
	jmp	.L721
.L720:
	movl	$3, %eax
.L721:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	tls_process_cert_status, .-tls_process_cert_status
	.globl	tls_process_initial_server_flight
	.type	tls_process_initial_server_flight, @function
tls_process_initial_server_flight:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_check_cert_and_algorithm@PLT
	testl	%eax, %eax
	jne	.L723
	movl	$0, %eax
	jmp	.L724
.L723:
	movq	-24(%rbp), %rax
	movl	2480(%rax), %eax
	cmpl	$-1, %eax
	je	.L725
	movq	-8(%rbp), %rax
	movq	600(%rax), %rax
	testq	%rax, %rax
	je	.L725
	movq	-8(%rbp), %rax
	movq	600(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L726
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2950, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$328, %edx
	movl	$113, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L724
.L726:
	cmpl	$0, -12(%rbp)
	jns	.L725
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2955, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$305, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L724
.L725:
	movq	-24(%rbp), %rax
	movq	2768(%rax), %rax
	testq	%rax, %rax
	je	.L727
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_validate_ct@PLT
	testl	%eax, %eax
	jne	.L727
	movq	-24(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L727
	movl	$0, %eax
	jmp	.L724
.L727:
	movl	$1, %eax
.L724:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	tls_process_initial_server_flight, .-tls_process_initial_server_flight
	.globl	tls_process_server_done
	.type	tls_process_server_done, @function
tls_process_server_done:
.LFB768:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L729
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2977, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L730
.L729:
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L731
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_srp_calc_a_param_intern@PLT
	testl	%eax, %eax
	jg	.L731
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2983, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$361, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L730
.L731:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_process_initial_server_flight@PLT
	testl	%eax, %eax
	jne	.L732
	movl	$0, %eax
	jmp	.L730
.L732:
	movl	$1, %eax
.L730:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	tls_process_server_done, .-tls_process_server_done
	.type	tls_construct_cke_psk_preamble, @function
tls_construct_cke_psk_preamble:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$832, %rsp
	movq	%rdi, -824(%rbp)
	movq	%rsi, -832(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-824(%rbp), %rax
	movq	2296(%rax), %rax
	testq	%rax, %rax
	jne	.L734
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3014, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-824(%rbp), %rax
	movl	$0, %ecx
	movl	$224, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L735
.L734:
	leaq	-304(%rbp), %rax
	movl	$257, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-824(%rbp), %rax
	movq	2296(%rax), %r10
	movq	-824(%rbp), %rax
	movq	2184(%rax), %rax
	movq	672(%rax), %rsi
	movq	-824(%rbp), %rax
	movq	64(%rax), %rax
	leaq	-816(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movl	$512, %r9d
	movq	%rcx, %r8
	movl	$256, %ecx
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, %eax
	movq	%rax, -40(%rbp)
	cmpq	$512, -40(%rbp)
	jbe	.L736
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3026, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-824(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	$512, -40(%rbp)
	jmp	.L735
.L736:
	cmpq	$0, -40(%rbp)
	jne	.L737
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3030, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-824(%rbp), %rax
	movl	$0, %ecx
	movl	$223, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L735
.L737:
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	cmpq	$256, -16(%rbp)
	jbe	.L738
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3036, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-824(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L735
.L738:
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rsi
	leaq	-816(%rbp), %rax
	movl	$3040, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC1(%rip), %rcx
	leaq	-304(%rbp), %rax
	movl	$3041, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L739
	cmpq	$0, -32(%rbp)
	jne	.L740
.L739:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3043, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-824(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L735
.L740:
	movq	-824(%rbp), %rax
	movq	848(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$3047, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-824(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 848(%rax)
	movq	-824(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 856(%rax)
	movq	$0, -24(%rbp)
	movq	-824(%rbp), %rax
	movq	2184(%rax), %rax
	movq	680(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$3051, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-824(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 680(%rax)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-832(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L741
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3056, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-824(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L735
.L741:
	movl	$1, -4(%rbp)
.L735:
	movq	-40(%rbp), %rdx
	leaq	-816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-304(%rbp), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$3065, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC1(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$3066, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	tls_construct_cke_psk_preamble, .-tls_construct_cke_psk_preamble
	.section	.rodata
.LC7:
	.string	"RSA"
	.text
	.type	tls_construct_cke_rsa, @function
tls_construct_cke_rsa:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	received_server_cert
	testl	%eax, %eax
	jne	.L744
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3089, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L758
.L744:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	tls_get_peer_pkey@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L746
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3094, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L758
.L746:
	leaq	.LC7(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	jne	.L747
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3099, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L758
.L747:
	movq	$48, -32(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$3104, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L748
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L758
.L748:
	movq	-72(%rbp), %rax
	movl	2396(%rax), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movl	2396(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L749
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3113, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$524324, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L750
.L749:
	movq	-72(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jle	.L751
	movq	-80(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L751
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3119, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L750
.L751:
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L752
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	testl	%eax, %eax
	jle	.L752
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	jg	.L753
.L752:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L750
.L753:
	movq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L754
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	jg	.L755
.L754:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$119, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L750
.L755:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jle	.L756
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L756
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L750
.L756:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_log_rsa_client_key_exchange@PLT
	testl	%eax, %eax
	je	.L759
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 832(%rax)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 840(%rax)
	movl	$1, %eax
	jmp	.L758
.L759:
	nop
.L750:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$3154, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$0, %eax
.L758:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	tls_construct_cke_rsa, .-tls_construct_cke_rsa
	.type	tls_construct_cke_dhe, @function
tls_construct_cke_dhe:
.LFB771:
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
	movq	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -12(%rbp)
	movq	-72(%rbp), %rax
	movq	1136(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L761
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L762
.L761:
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_generate_pkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L763
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3177, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L762
.L763:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_derive@PLT
	testl	%eax, %eax
	je	.L771
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get1_encoded_public_key@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L765
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L770
.L765:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_size@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	subq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L767
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_allocate_bytes__@PLT
	testl	%eax, %eax
	jne	.L768
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3205, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L762
.L768:
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L767:
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L769
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3212, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L762
.L769:
	movl	$1, -12(%rbp)
	jmp	.L762
.L771:
	nop
.L762:
	movq	-64(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$3218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L770:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	tls_construct_cke_dhe, .-tls_construct_cke_dhe
	.type	tls_construct_cke_ecdhe, @function
tls_construct_cke_ecdhe:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	1136(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L773
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3232, %esi
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
	jmp	.L780
.L773:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_generate_pkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L775
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3238, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$524308, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L776
.L775:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_derive@PLT
	testl	%eax, %eax
	je	.L781
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get1_encoded_public_key@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L778
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3251, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$524304, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L776
.L778:
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L779
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3256, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L776
.L779:
	movl	$1, -4(%rbp)
	jmp	.L776
.L781:
	nop
.L776:
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$3262, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L780:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	tls_construct_cke_ecdhe, .-tls_construct_cke_ecdhe
	.type	tls_construct_cke_gost, @function
tls_construct_cke_gost:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$809, -12(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-376(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-376(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L783
	movl	$982, -12(%rbp)
.L783:
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	tls_get_peer_pkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L784
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3289, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-376(%rbp), %rax
	movl	$0, %ecx
	movl	$330, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L798
.L784:
	movq	-56(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L786
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3298, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-376(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L798
.L786:
	movq	$32, -48(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$3309, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L787
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3311, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-376(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L788
.L787:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	testl	%eax, %eax
	jle	.L789
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L790
.L789:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3319, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-376(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L788
.L790:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L791
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit@PLT
	testl	%eax, %eax
	jle	.L791
	movq	-376(%rbp), %rax
	leaq	328(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L791
	movq	-376(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L791
	leaq	-68(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jg	.L792
.L791:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3334, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-376(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L788
.L792:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	$0, -8(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %r9
	movl	$8, %r8d
	movl	$8, %ecx
	movl	$512, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L793
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3341, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-376(%rbp), %rax
	movl	$0, %ecx
	movl	$274, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L788
.L793:
	movq	$255, -64(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	leaq	-368(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	jg	.L794
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3350, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-376(%rbp), %rax
	movl	$0, %ecx
	movl	$274, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L788
.L794:
	movq	-384(%rbp), %rax
	movl	$1, %edx
	movl	$48, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L795
	movq	-64(%rbp), %rax
	cmpq	$127, %rax
	jbe	.L796
	movq	-384(%rbp), %rax
	movl	$1, %edx
	movl	$129, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L795
.L796:
	movq	-64(%rbp), %rdx
	leaq	-368(%rbp), %rsi
	movq	-384(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L797
.L795:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-376(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L788
.L797:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-376(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 832(%rax)
	movq	-376(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 840(%rax)
	movl	$1, %eax
	jmp	.L798
.L788:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$3368, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
.L798:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	tls_construct_cke_gost, .-tls_construct_cke_gost
	.globl	ossl_gost18_cke_cipher_nid
	.type	ossl_gost18_cke_cipher_nid, @function
ossl_gost18_cke_cipher_nid:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	andl	$4194304, %eax
	testl	%eax, %eax
	je	.L800
	movl	$1188, %eax
	jmp	.L801
.L800:
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	andl	$8388608, %eax
	testl	%eax, %eax
	je	.L802
	movl	$1013, %eax
	jmp	.L801
.L802:
	movl	$0, %eax
.L801:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	ossl_gost18_cke_cipher_nid, .-ossl_gost18_cke_cipher_nid
	.globl	ossl_gost_ukm
	.type	ossl_gost_ukm, @function
ossl_gost_ukm:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$982, %esi
	movq	%rax, %rdi
	call	ssl_evp_md_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L804
	movl	$0, %eax
	jmp	.L808
.L804:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L806
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit@PLT
	testl	%eax, %eax
	jle	.L806
	movq	-40(%rbp), %rax
	leaq	328(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L806
	movq	-40(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L806
	leaq	-28(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jg	.L807
.L806:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_evp_md_free@PLT
	movl	$0, %eax
	jmp	.L808
.L807:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_evp_md_free@PLT
	movl	$1, %eax
.L808:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	ossl_gost_ukm, .-ossl_gost_ukm
	.type	tls_construct_cke_gost18, @function
tls_construct_cke_gost18:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_gost18_cke_cipher_nid@PLT
	movl	%eax, -28(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L810
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3430, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L824
.L810:
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gost_ukm@PLT
	testl	%eax, %eax
	jg	.L812
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3435, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L813
.L812:
	movq	$32, -24(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$3441, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L814
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3443, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L813
.L814:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L815
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3448, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L813
.L815:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	tls_get_peer_pkey@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L816
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3454, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$330, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L813
.L816:
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L817
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3463, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L813
.L817:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	testl	%eax, %eax
	jg	.L818
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3468, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L813
.L818:
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	movl	$32, %r8d
	movl	$8, %ecx
	movl	$512, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L819
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$274, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L813
.L819:
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	%edx, %r8d
	movl	$12, %ecx
	movl	$512, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L820
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3481, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$274, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L813
.L820:
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	jg	.L821
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3486, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L813
.L821:
	movq	-96(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L822
	movq	-88(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	testl	%eax, %eax
	jg	.L823
.L822:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3492, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L813
.L823:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 832(%rax)
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 840(%rax)
	movl	$1, %eax
	jmp	.L824
.L813:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$3504, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	$0, %eax
.L824:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	tls_construct_cke_gost18, .-tls_construct_cke_gost18
	.type	tls_construct_cke_srp, @function
tls_construct_cke_srp:
.LFB777:
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
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	2944(%rax), %rax
	testq	%rax, %rax
	je	.L826
	movq	-40(%rbp), %rax
	movq	2944(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rsi
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_allocate_bytes__@PLT
	testl	%eax, %eax
	jne	.L827
.L826:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3520, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L830
.L827:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	2944(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	864(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$3525, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	2904(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	2184(%rdx), %rbx
	leaq	.LC1(%rip), %rcx
	movl	$3526, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, 864(%rbx)
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	864(%rax), %rax
	testq	%rax, %rax
	jne	.L829
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3528, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L830
.L829:
	movl	$1, %eax
.L830:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	tls_construct_cke_srp, .-tls_construct_cke_srp
	.globl	tls_construct_client_key_exchange
	.type	tls_construct_client_key_exchange, @function
tls_construct_client_key_exchange:
.LFB778:
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
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$456, %eax
	testq	%rax, %rax
	je	.L832
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_construct_cke_psk_preamble
	testl	%eax, %eax
	je	.L842
.L832:
	movq	-8(%rbp), %rax
	andl	$65, %eax
	testq	%rax, %rax
	je	.L834
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_construct_cke_rsa
	testl	%eax, %eax
	jne	.L835
	jmp	.L833
.L834:
	movq	-8(%rbp), %rax
	andl	$258, %eax
	testq	%rax, %rax
	je	.L836
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_construct_cke_dhe
	testl	%eax, %eax
	jne	.L835
	jmp	.L833
.L836:
	movq	-8(%rbp), %rax
	andl	$132, %eax
	testq	%rax, %rax
	je	.L837
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_construct_cke_ecdhe
	testl	%eax, %eax
	jne	.L835
	jmp	.L833
.L837:
	movq	-8(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L838
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_construct_cke_gost
	testl	%eax, %eax
	jne	.L835
	jmp	.L833
.L838:
	movq	-8(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L839
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_construct_cke_gost18
	testl	%eax, %eax
	jne	.L835
	jmp	.L833
.L839:
	movq	-8(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L840
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_construct_cke_srp
	testl	%eax, %eax
	jne	.L835
	jmp	.L833
.L840:
	movq	-8(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L835
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3573, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L833
.L835:
	movl	$1, %eax
	jmp	.L841
.L842:
	nop
.L833:
	movq	-24(%rbp), %rax
	movq	840(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	832(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	$3579, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 832(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 840(%rax)
	movq	-24(%rbp), %rax
	movq	856(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	848(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	$3583, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 848(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 856(%rax)
	movl	$0, %eax
.L841:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	tls_construct_client_key_exchange, .-tls_construct_client_key_exchange
	.globl	tls_client_key_exchange_post_work
	.type	tls_client_key_exchange_post_work, @function
tls_client_key_exchange_post_work:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	840(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L844
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	srp_generate_client_master_secret@PLT
	testl	%eax, %eax
	je	.L850
	movl	$1, %eax
	jmp	.L847
.L844:
	cmpq	$0, -8(%rbp)
	jne	.L848
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L848
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3610, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$524550, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L846
.L848:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_generate_master_secret@PLT
	testl	%eax, %eax
	jne	.L849
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L846
.L849:
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, %eax
	jmp	.L847
.L850:
	nop
.L846:
	leaq	.LC1(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$3656, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 832(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 840(%rax)
	movl	$0, %eax
.L847:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	tls_client_key_exchange_post_work, .-tls_client_key_exchange_post_work
	.type	ssl3_check_client_certificate, @function
ssl3_check_client_certificate:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls_choose_sigalg@PLT
	testl	%eax, %eax
	je	.L852
	movq	-8(%rbp), %rax
	movq	864(%rax), %rax
	testq	%rax, %rax
	jne	.L853
.L852:
	movl	$0, %eax
	jmp	.L854
.L853:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196609, %eax
	testl	%eax, %eax
	je	.L855
	movq	-8(%rbp), %rax
	movl	$-2, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_check_chain@PLT
	testl	%eax, %eax
	jne	.L855
	movl	$0, %eax
	jmp	.L854
.L855:
	movl	$1, %eax
.L854:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	ssl3_check_client_certificate, .-ssl3_check_client_certificate
	.globl	tls_prepare_client_certificate
	.type	tls_prepare_client_certificate, @function
tls_prepare_client_certificate:
.LFB781:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$3, -44(%rbp)
	jne	.L857
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L858
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	96(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L859
	movq	-40(%rbp), %rax
	movl	$4, 104(%rax)
	movl	$3, %eax
	jmp	.L876
.L859:
	cmpl	$0, -4(%rbp)
	jne	.L861
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3698, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$234, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L876
.L861:
	movq	-40(%rbp), %rax
	movl	$1, 104(%rax)
.L858:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_check_client_certificate
	testl	%eax, %eax
	je	.L862
	movq	-40(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	jne	.L863
	movl	$1, %eax
	jmp	.L876
.L863:
	movl	$2, %eax
	jmp	.L876
.L862:
	movl	$4, -44(%rbp)
.L857:
	cmpl	$4, -44(%rbp)
	jne	.L864
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_do_client_cert_cb@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L865
	movq	-40(%rbp), %rax
	movl	$4, 104(%rax)
	movl	$4, %eax
	jmp	.L876
.L865:
	movq	-40(%rbp), %rax
	movl	$1, 104(%rax)
	cmpl	$1, -4(%rbp)
	jne	.L866
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L866
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L866
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate@PLT
	testl	%eax, %eax
	je	.L867
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey@PLT
	testl	%eax, %eax
	jne	.L877
.L867:
	movl	$0, -4(%rbp)
	jmp	.L877
.L866:
	cmpl	$1, -4(%rbp)
	jne	.L869
	movl	$0, -4(%rbp)
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3732, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L869
.L877:
	nop
.L869:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpl	$0, -4(%rbp)
	je	.L870
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_check_client_certificate
	testl	%eax, %eax
	jne	.L870
	movl	$0, -4(%rbp)
.L870:
	cmpl	$0, -4(%rbp)
	jne	.L871
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jne	.L872
	movq	-40(%rbp), %rax
	movl	$0, 720(%rax)
	movq	-40(%rbp), %rax
	movl	$41, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl3_send_alert@PLT
	movl	$2, %eax
	jmp	.L876
.L872:
	movq	-40(%rbp), %rax
	movl	$2, 720(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 2724(%rax)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	jne	.L871
	movl	$0, %eax
	jmp	.L876
.L871:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L873
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L873
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L873
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	movabsq	$4294967296, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L874
.L873:
	movq	-40(%rbp), %rax
	movl	$0, 2724(%rax)
.L874:
	movq	-40(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	jne	.L875
	movl	$1, %eax
	jmp	.L876
.L875:
	movl	$2, %eax
	jmp	.L876
.L864:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3764, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
.L876:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	tls_prepare_client_certificate, .-tls_prepare_client_certificate
	.globl	tls_construct_client_certificate
	.type	tls_construct_client_certificate, @function
tls_construct_client_certificate:
.LFB782:
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
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L879
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L879
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L879
	movq	-24(%rbp), %rax
	movq	2840(%rax), %rax
	testq	%rax, %rax
	jne	.L880
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L879
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3778, %esi
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
	jmp	.L881
.L880:
	movq	-24(%rbp), %rax
	movq	2848(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	2840(%rax), %rsi
	movq	-32(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L879
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3782, %esi
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
	jmp	.L881
.L879:
	movq	-24(%rbp), %rax
	movl	720(%rax), %eax
	cmpl	$2, %eax
	je	.L882
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L882:
	movq	-24(%rbp), %rax
	movzbl	2744(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L883
	cmpl	$2, %eax
	jne	.L884
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_output_rpk@PLT
	testq	%rax, %rax
	jne	.L891
	movl	$0, %eax
	jmp	.L881
.L883:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl3_output_cert_chain@PLT
	testq	%rax, %rax
	jne	.L892
	movl	$0, %eax
	jmp	.L881
.L884:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3802, %esi
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
	jmp	.L881
.L891:
	nop
	jmp	.L886
.L892:
	nop
.L886:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L888
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L888
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L888
	movq	-24(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L889
	movq	-24(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L888
.L889:
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	testl	%eax, %eax
	jne	.L890
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	je	.L888
.L890:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$146, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L888
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3821, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$109, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L881
.L888:
	movl	$1, %eax
.L881:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	tls_construct_client_certificate, .-tls_construct_client_certificate
	.globl	ssl3_check_cert_and_algorithm
	.type	ssl3_check_cert_and_algorithm, @function
ssl3_check_cert_and_algorithm:
.LFB783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andl	$171, %eax
	testq	%rax, %rax
	jne	.L894
	movl	$1, %eax
	jmp	.L903
.L894:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tls_get_peer_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_pkey@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L896
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	andq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L897
.L896:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3949, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$221, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L903
.L897:
	movq	-8(%rbp), %rax
	andl	$65, %eax
	testq	%rax, %rax
	je	.L898
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L898
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3954, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$169, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L903
.L898:
	movq	-8(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L899
	movq	-56(%rbp), %rax
	movq	1136(%rax), %rax
	testq	%rax, %rax
	jne	.L899
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3960, %esi
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
	jmp	.L903
.L899:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	je	.L900
	movl	$1, %eax
	jmp	.L903
.L900:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L901
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	704(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_check_srvr_ecc_cert_and_alg@PLT
	testl	%eax, %eax
	je	.L902
	movl	$1, %eax
	jmp	.L903
.L902:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3971, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$304, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L903
.L901:
	movl	$1, %eax
.L903:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	ssl3_check_cert_and_algorithm, .-ssl3_check_cert_and_algorithm
	.globl	tls_construct_next_proto
	.type	tls_construct_next_proto, @function
tls_construct_next_proto:
.LFB784:
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
	movq	-40(%rbp), %rax
	movq	2672(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	andl	$31, %eax
	movq	%rax, %rdx
	movl	$32, %eax
	subq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	2664(%rax), %rsi
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L905
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_allocate_bytes__@PLT
	testl	%eax, %eax
	jne	.L906
.L905:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3989, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L908
.L906:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, %eax
.L908:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	tls_construct_next_proto, .-tls_construct_next_proto
	.globl	tls_process_hello_req
	.type	tls_process_hello_req, @function
tls_process_hello_req:
.LFB785:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L910
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4005, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L911
.L910:
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1073741824, %eax
	testq	%rax, %rax
	je	.L912
	movq	-24(%rbp), %rax
	movl	$100, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl3_send_alert@PLT
	movl	$1, %eax
	jmp	.L911
.L912:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L913
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_renegotiate@PLT
	jmp	.L914
.L913:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_renegotiate_abbreviated@PLT
.L914:
	movl	$1, %eax
.L911:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	tls_process_hello_req, .-tls_process_hello_req
	.type	tls_process_encrypted_extensions, @function
tls_process_encrypted_extensions:
.LFB786:
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
	leaq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	je	.L916
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L917
.L916:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4037, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L918
.L917:
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1024, %edx
	movq	%rax, %rdi
	call	tls_collect_extensions@PLT
	testl	%eax, %eax
	je	.L923
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	tls_parse_all_extensions@PLT
	testl	%eax, %eax
	je	.L923
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4050, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$3, %eax
	jmp	.L922
.L923:
	nop
.L918:
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4054, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L922:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	tls_process_encrypted_extensions, .-tls_process_encrypted_extensions
	.globl	ssl_do_client_cert_cb
	.type	ssl_do_client_cert_cb, @function
ssl_do_client_cert_cb:
.LFB787:
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
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	520(%rax), %rax
	testq	%rax, %rax
	je	.L925
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_engine_load_ssl_client_cert@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L925
	movl	-4(%rbp), %eax
	jmp	.L926
.L925:
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	je	.L927
	movq	-16(%rbp), %rax
	movq	200(%rax), %r8
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
.L927:
	movl	-4(%rbp), %eax
.L926:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	ssl_do_client_cert_cb, .-ssl_do_client_cert_cb
	.section	.rodata
	.align 8
.LC8:
	.string	"No ciphers enabled for max supported SSL/TLS version"
	.text
	.type	ssl_cipher_list_to_bytes, @function
ssl_cipher_list_to_bytes:
.LFB788:
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
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movl	2824(%rax), %eax
	testl	%eax, %eax
	jne	.L929
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L930
	movq	-88(%rbp), %rax
	movl	2372(%rax), %eax
	cmpl	$771, %eax
	jg	.L929
.L930:
	movl	$1, %eax
	jmp	.L931
.L929:
	movl	$0, %eax
.L931:
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_set_client_disabled@PLT
	testl	%eax, %eax
	jne	.L932
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4087, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$191, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L954
.L932:
	cmpq	$0, -96(%rbp)
	jne	.L934
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4092, %esi
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
	jmp	.L954
.L934:
	movq	$65534, -24(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L935
	subq	$2, -24(%rbp)
.L935:
	movq	-88(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L936
	subq	$2, -24(%rbp)
.L936:
	movl	$0, -4(%rbp)
	jmp	.L937
.L947:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$65537, %edx
	movq	%rax, %rdi
	call	ssl_cipher_disabled@PLT
	testl	%eax, %eax
	jne	.L955
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	176(%rax), %r8
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L940
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4126, %esi
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
	jmp	.L954
.L940:
	cmpq	$0, -32(%rbp)
	jne	.L941
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L942
	movq	-72(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -36(%rbp)
	jmp	.L943
.L942:
	movq	-72(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -36(%rbp)
.L943:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L944
	movq	-72(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -40(%rbp)
	jmp	.L945
.L944:
	movq	-72(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -40(%rbp)
.L945:
	movq	-88(%rbp), %rax
	movl	940(%rax), %edx
	movl	-40(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	js	.L941
	movq	-88(%rbp), %rax
	movl	940(%rax), %edx
	movl	-36(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jg	.L941
	movq	$1, -32(%rbp)
.L941:
	movq	-80(%rbp), %rax
	addq	%rax, -16(%rbp)
	jmp	.L939
.L955:
	nop
.L939:
	addl	$1, -4(%rbp)
.L937:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jge	.L946
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L947
.L946:
	cmpq	$0, -16(%rbp)
	je	.L948
	cmpq	$0, -32(%rbp)
	jne	.L949
.L948:
	cmpq	$0, -32(%rbp)
	jne	.L950
	leaq	.LC8(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	.L951
.L950:
	movq	$0, -48(%rbp)
.L951:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4149, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$181, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L954
.L949:
	cmpq	$0, -16(%rbp)
	je	.L952
	cmpl	$0, -52(%rbp)
	je	.L953
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	176(%rax), %rcx
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	leaq	scsv.2(%rip), %rdi
	movq	%rax, %rsi
	call	*%rcx
	testl	%eax, %eax
	jne	.L953
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4160, %esi
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
	jmp	.L954
.L953:
	movq	-88(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L952
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	176(%rax), %rcx
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	leaq	scsv.1(%rip), %rdi
	movq	%rax, %rsi
	call	*%rcx
	testl	%eax, %eax
	jne	.L952
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4169, %esi
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
	jmp	.L954
.L952:
	movl	$1, %eax
.L954:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	ssl_cipher_list_to_bytes, .-ssl_cipher_list_to_bytes
	.globl	tls_construct_end_of_early_data
	.type	tls_construct_end_of_early_data, @function
tls_construct_end_of_early_data:
.LFB789:
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
	movl	240(%rax), %eax
	cmpl	$3, %eax
	je	.L957
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$7, %eax
	je	.L957
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4182, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$786689, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L958
.L957:
	movq	-8(%rbp), %rax
	movl	$7, 240(%rax)
	movl	$1, %eax
.L958:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	tls_construct_end_of_early_data, .-tls_construct_end_of_early_data
	.section	.rodata
	.align 32
	.type	__func__.44, @object
	.size	__func__.44, 35
__func__.44:
	.string	"ossl_statem_client_read_transition"
	.align 32
	.type	__func__.43, @object
	.size	__func__.43, 38
__func__.43:
	.string	"ossl_statem_client13_write_transition"
	.align 32
	.type	__func__.42, @object
	.size	__func__.42, 36
__func__.42:
	.string	"ossl_statem_client_write_transition"
	.align 32
	.type	__func__.41, @object
	.size	__func__.41, 37
__func__.41:
	.string	"ossl_statem_client_construct_message"
	.align 32
	.type	__func__.40, @object
	.size	__func__.40, 35
__func__.40:
	.string	"ossl_statem_client_process_message"
	.align 32
	.type	__func__.39, @object
	.size	__func__.39, 40
__func__.39:
	.string	"ossl_statem_client_post_process_message"
	.align 16
	.type	__func__.38, @object
	.size	__func__.38, 27
__func__.38:
	.string	"tls_construct_client_hello"
	.align 16
	.type	__func__.37, @object
	.size	__func__.37, 26
__func__.37:
	.string	"dtls_process_hello_verify"
	.align 16
	.type	__func__.36, @object
	.size	__func__.36, 23
__func__.36:
	.string	"set_client_ciphersuite"
	.align 16
	.type	__func__.35, @object
	.size	__func__.35, 25
__func__.35:
	.string	"tls_process_server_hello"
	.align 32
	.type	__func__.34, @object
	.size	__func__.34, 35
__func__.34:
	.string	"tls_process_as_hello_retry_request"
	.align 16
	.type	__func__.33, @object
	.size	__func__.33, 23
__func__.33:
	.string	"tls_process_server_rpk"
	.align 16
	.type	__func__.32, @object
	.size	__func__.32, 28
__func__.32:
	.string	"tls_post_process_server_rpk"
	.align 16
	.type	__func__.31, @object
	.size	__func__.31, 31
__func__.31:
	.string	"tls_process_server_certificate"
	.align 32
	.type	__func__.30, @object
	.size	__func__.30, 36
__func__.30:
	.string	"tls_post_process_server_certificate"
	.align 16
	.type	__func__.29, @object
	.size	__func__.29, 29
__func__.29:
	.string	"tls_process_ske_psk_preamble"
	.align 16
	.type	__func__.28, @object
	.size	__func__.28, 20
__func__.28:
	.string	"tls_process_ske_srp"
	.align 16
	.type	__func__.27, @object
	.size	__func__.27, 20
__func__.27:
	.string	"tls_process_ske_dhe"
	.align 16
	.type	__func__.26, @object
	.size	__func__.26, 22
__func__.26:
	.string	"tls_process_ske_ecdhe"
	.align 16
	.type	__func__.25, @object
	.size	__func__.25, 25
__func__.25:
	.string	"tls_process_key_exchange"
	.align 32
	.type	__func__.24, @object
	.size	__func__.24, 32
__func__.24:
	.string	"tls_process_certificate_request"
	.align 16
	.type	__func__.23, @object
	.size	__func__.23, 31
__func__.23:
	.string	"tls_process_new_session_ticket"
	.align 8
	.type	nonce_label.22, @object
	.size	nonce_label.22, 11
nonce_label.22:
	.string	"resumption"
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 29
__func__.21:
	.string	"tls_process_cert_status_body"
	.align 32
	.type	__func__.20, @object
	.size	__func__.20, 34
__func__.20:
	.string	"tls_process_initial_server_flight"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 24
__func__.19:
	.string	"tls_process_server_done"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 31
__func__.18:
	.string	"tls_construct_cke_psk_preamble"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 22
__func__.17:
	.string	"tls_construct_cke_rsa"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 22
__func__.16:
	.string	"tls_construct_cke_dhe"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 24
__func__.15:
	.string	"tls_construct_cke_ecdhe"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 23
__func__.14:
	.string	"tls_construct_cke_gost"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 25
__func__.13:
	.string	"tls_construct_cke_gost18"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 22
__func__.12:
	.string	"tls_construct_cke_srp"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 34
__func__.11:
	.string	"tls_construct_client_key_exchange"
	.align 32
	.type	__func__.10, @object
	.size	__func__.10, 34
__func__.10:
	.string	"tls_client_key_exchange_post_work"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 31
__func__.9:
	.string	"tls_prepare_client_certificate"
	.align 32
	.type	__func__.8, @object
	.size	__func__.8, 33
__func__.8:
	.string	"tls_construct_client_certificate"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 30
__func__.7:
	.string	"ssl3_check_cert_and_algorithm"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 25
__func__.6:
	.string	"tls_construct_next_proto"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 22
__func__.5:
	.string	"tls_process_hello_req"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 33
__func__.4:
	.string	"tls_process_encrypted_extensions"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 25
__func__.3:
	.string	"ssl_cipher_list_to_bytes"
	.align 32
	.type	scsv.2, @object
	.size	scsv.2, 80
scsv.2:
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	50331903
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.zero	16
	.align 32
	.type	scsv.1, @object
	.size	scsv.1, 80
scsv.1:
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	50353664
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.zero	16
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 32
__func__.0:
	.string	"tls_construct_end_of_early_data"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
