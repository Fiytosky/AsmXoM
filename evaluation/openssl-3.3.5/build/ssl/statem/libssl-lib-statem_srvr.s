	.file	"statem_srvr.c"
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
	jns	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L22:
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
	.type	PACKET_equal, @function
PACKET_equal:
.LFB505:
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
	cmpq	%rax, -24(%rbp)
	je	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	PACKET_equal, .-PACKET_equal
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
	jnb	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
.L29:
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
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L32:
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
	ja	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
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
.L35:
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
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L38:
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
	ja	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
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
.L41:
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
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	PACKET_get_net_3, .-PACKET_get_net_3
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
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L47:
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
	jne	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L50:
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
	jnb	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L53:
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
	jne	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L56:
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
	jnb	.L58
	movl	$0, %eax
	jmp	.L59
.L58:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L59:
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
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	PACKET_copy_bytes, .-PACKET_copy_bytes
	.type	PACKET_copy_all, @function
PACKET_copy_all:
.LFB528:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	%rax, -24(%rbp)
	jnb	.L64
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L65
.L64:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	PACKET_copy_all, .-PACKET_copy_all
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
	jne	.L67
	movl	$1, %eax
	jmp	.L68
.L67:
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
	jne	.L69
	movl	$0, %eax
	jmp	.L68
.L69:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L68:
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
	jnb	.L73
	movl	$0, %eax
	jmp	.L74
.L73:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L74:
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
	je	.L76
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L77
.L76:
	movl	$0, %eax
	jmp	.L79
.L77:
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
.L79:
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
.LFE535:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
	.type	PACKET_get_length_prefixed_3, @function
PACKET_get_length_prefixed_3:
.LFB537:
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
	je	.L86
	movq	-8(%rbp), %rdx
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
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	PACKET_get_length_prefixed_3, .-PACKET_get_length_prefixed_3
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB578:
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
.LFE578:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L95
	movl	$1, %eax
	jmp	.L96
.L95:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L97
	movl	$-1, %eax
	jmp	.L96
.L97:
	movl	$0, %eax
.L96:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	ossl_time_compare, .-ossl_time_compare
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
.LC1:
	.string	"kxBlob"
.LC2:
	.string	"opaqueBlob"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	GOST_KX_MESSAGE_seq_tt, @object
	.size	GOST_KX_MESSAGE_seq_tt, 80
GOST_KX_MESSAGE_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	ASN1_ANY_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC2
	.quad	ASN1_ANY_it
	.text
	.globl	GOST_KX_MESSAGE_it
	.type	GOST_KX_MESSAGE_it, @function
GOST_KX_MESSAGE_it:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.40(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	GOST_KX_MESSAGE_it, .-GOST_KX_MESSAGE_it
	.globl	d2i_GOST_KX_MESSAGE
	.type	d2i_GOST_KX_MESSAGE, @function
d2i_GOST_KX_MESSAGE:
.LFB779:
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
	call	GOST_KX_MESSAGE_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	d2i_GOST_KX_MESSAGE, .-d2i_GOST_KX_MESSAGE
	.globl	i2d_GOST_KX_MESSAGE
	.type	i2d_GOST_KX_MESSAGE, @function
i2d_GOST_KX_MESSAGE:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	GOST_KX_MESSAGE_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	i2d_GOST_KX_MESSAGE, .-i2d_GOST_KX_MESSAGE
	.globl	GOST_KX_MESSAGE_new
	.type	GOST_KX_MESSAGE_new, @function
GOST_KX_MESSAGE_new:
.LFB781:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	GOST_KX_MESSAGE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	GOST_KX_MESSAGE_new, .-GOST_KX_MESSAGE_new
	.globl	GOST_KX_MESSAGE_free
	.type	GOST_KX_MESSAGE_free, @function
GOST_KX_MESSAGE_free:
.LFB782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	GOST_KX_MESSAGE_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	GOST_KX_MESSAGE_free, .-GOST_KX_MESSAGE_free
	.type	received_client_cert, @function
received_client_cert:
.LFB783:
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
	jne	.L120
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	je	.L121
.L120:
	movl	$1, %eax
	jmp	.L123
.L121:
	movl	$0, %eax
.L123:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	received_client_cert, .-received_client_cert
	.type	ossl_statem_server13_read_transition, @function
ossl_statem_server13_read_transition:
.LFB784:
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
	cmpl	$53, %eax
	je	.L125
	cmpl	$53, %eax
	ja	.L144
	cmpl	$50, %eax
	je	.L127
	cmpl	$50, %eax
	ja	.L144
	cmpl	$40, %eax
	je	.L125
	cmpl	$40, %eax
	ja	.L144
	cmpl	$33, %eax
	je	.L128
	cmpl	$33, %eax
	ja	.L144
	cmpl	$1, %eax
	je	.L129
	testl	%eax, %eax
	je	.L144
	subl	$30, %eax
	cmpl	$1, %eax
	jbe	.L130
	jmp	.L144
.L127:
	movq	-24(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L132
	cmpl	$1, -28(%rbp)
	jne	.L145
	movq	-8(%rbp), %rax
	movl	$22, 20(%rax)
	movl	$1, %eax
	jmp	.L134
.L132:
	movq	-24(%rbp), %rax
	movl	2688(%rax), %eax
	cmpl	$2, %eax
	jne	.L125
	cmpl	$5, -28(%rbp)
	jne	.L146
	movq	-8(%rbp), %rax
	movl	$53, 20(%rax)
	movl	$1, %eax
	jmp	.L134
.L125:
	movq	-24(%rbp), %rax
	movl	808(%rax), %eax
	testl	%eax, %eax
	je	.L136
	cmpl	$11, -28(%rbp)
	jne	.L147
	movq	-8(%rbp), %rax
	movl	$30, 20(%rax)
	movl	$1, %eax
	jmp	.L134
.L136:
	cmpl	$20, -28(%rbp)
	jne	.L147
	movq	-8(%rbp), %rax
	movl	$36, 20(%rax)
	movl	$1, %eax
	jmp	.L134
.L130:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	received_client_cert
	testl	%eax, %eax
	jne	.L138
	cmpl	$20, -28(%rbp)
	jne	.L148
	movq	-8(%rbp), %rax
	movl	$36, 20(%rax)
	movl	$1, %eax
	jmp	.L134
.L138:
	cmpl	$15, -28(%rbp)
	jne	.L148
	movq	-8(%rbp), %rax
	movl	$33, 20(%rax)
	movl	$1, %eax
	jmp	.L134
.L128:
	cmpl	$20, -28(%rbp)
	jne	.L149
	movq	-8(%rbp), %rax
	movl	$36, 20(%rax)
	movl	$1, %eax
	jmp	.L134
.L129:
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$11, %eax
	je	.L150
	movq	-24(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	jne	.L142
	cmpl	$11, -28(%rbp)
	jne	.L142
	movq	-8(%rbp), %rax
	movl	$30, 20(%rax)
	movl	$1, %eax
	jmp	.L134
.L142:
	cmpl	$24, -28(%rbp)
	jne	.L151
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	andl	$8192, %eax
	testq	%rax, %rax
	jne	.L151
	movq	-8(%rbp), %rax
	movl	$48, 20(%rax)
	movl	$1, %eax
	jmp	.L134
.L144:
	nop
	jmp	.L131
.L145:
	nop
	jmp	.L131
.L146:
	nop
	jmp	.L131
.L147:
	nop
	jmp	.L131
.L148:
	nop
	jmp	.L131
.L149:
	nop
	jmp	.L131
.L150:
	nop
	jmp	.L131
.L151:
	nop
.L131:
	movl	$0, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	ossl_statem_server13_read_transition, .-ossl_statem_server13_read_transition
	.section	.rodata
.LC3:
	.string	"../ssl/statem/statem_srvr.c"
	.text
	.globl	ossl_statem_server_read_transition
	.type	ossl_statem_server_read_transition, @function
ossl_statem_server_read_transition:
.LFB785:
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
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L153
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L153
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L153
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_statem_server13_read_transition
	testl	%eax, %eax
	je	.L182
	movl	$1, %eax
	jmp	.L156
.L153:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$40, %eax
	je	.L157
	cmpl	$40, %eax
	ja	.L183
	cmpl	$35, %eax
	je	.L159
	cmpl	$35, %eax
	ja	.L183
	cmpl	$34, %eax
	je	.L160
	cmpl	$34, %eax
	ja	.L183
	cmpl	$33, %eax
	je	.L161
	cmpl	$33, %eax
	ja	.L183
	cmpl	$32, %eax
	je	.L162
	cmpl	$32, %eax
	ja	.L183
	cmpl	$30, %eax
	je	.L163
	cmpl	$30, %eax
	ja	.L183
	cmpl	$29, %eax
	je	.L164
	cmpl	$29, %eax
	ja	.L183
	cmpl	$1, %eax
	jbe	.L165
	cmpl	$23, %eax
	jne	.L183
.L165:
	cmpl	$1, -28(%rbp)
	jne	.L184
	movq	-8(%rbp), %rax
	movl	$22, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L164:
	cmpl	$16, -28(%rbp)
	jne	.L167
	movq	-24(%rbp), %rax
	movl	808(%rax), %eax
	testl	%eax, %eax
	je	.L168
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jne	.L185
	movq	-24(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L170
	movq	-24(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L170
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$199, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L156
.L170:
	movq	-8(%rbp), %rax
	movl	$32, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L168:
	movq	-8(%rbp), %rax
	movl	$32, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L167:
	movq	-24(%rbp), %rax
	movl	808(%rax), %eax
	testl	%eax, %eax
	je	.L185
	cmpl	$11, -28(%rbp)
	jne	.L185
	movq	-8(%rbp), %rax
	movl	$30, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L163:
	cmpl	$16, -28(%rbp)
	jne	.L186
	movq	-8(%rbp), %rax
	movl	$32, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L162:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	received_client_cert
	testl	%eax, %eax
	je	.L172
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L173
.L172:
	cmpl	$257, -28(%rbp)
	jne	.L175
	movq	-8(%rbp), %rax
	movl	$35, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L173:
	cmpl	$15, -28(%rbp)
	jne	.L187
	movq	-8(%rbp), %rax
	movl	$33, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L175:
	jmp	.L187
.L161:
	cmpl	$257, -28(%rbp)
	jne	.L188
	movq	-8(%rbp), %rax
	movl	$35, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L159:
	movq	-24(%rbp), %rax
	movl	1092(%rax), %eax
	testl	%eax, %eax
	je	.L177
	cmpl	$67, -28(%rbp)
	jne	.L189
	movq	-8(%rbp), %rax
	movl	$34, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L177:
	cmpl	$20, -28(%rbp)
	jne	.L189
	movq	-8(%rbp), %rax
	movl	$36, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L160:
	cmpl	$20, -28(%rbp)
	jne	.L190
	movq	-8(%rbp), %rax
	movl	$36, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L157:
	cmpl	$257, -28(%rbp)
	jne	.L191
	movq	-8(%rbp), %rax
	movl	$35, 20(%rax)
	movl	$1, %eax
	jmp	.L156
.L182:
	nop
	jmp	.L155
.L183:
	nop
	jmp	.L155
.L184:
	nop
	jmp	.L155
.L185:
	nop
	jmp	.L155
.L186:
	nop
	jmp	.L155
.L187:
	nop
	jmp	.L155
.L188:
	nop
	jmp	.L155
.L189:
	nop
	jmp	.L155
.L190:
	nop
	jmp	.L155
.L191:
	nop
.L155:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L181
	cmpl	$257, -28(%rbp)
	jne	.L181
	movq	-24(%rbp), %rax
	movq	$0, 264(%rax)
	movq	-24(%rbp), %rax
	movl	$3, 104(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-16(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movl	$0, %eax
	jmp	.L156
.L181:
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$335, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$244, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	ossl_statem_server_read_transition, .-ossl_statem_server_read_transition
	.type	send_server_key_exchange, @function
send_server_key_exchange:
.LFB786:
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
	andl	$6, %eax
	testq	%rax, %rax
	jne	.L193
	movq	-8(%rbp), %rax
	andl	$72, %eax
	testq	%rax, %rax
	je	.L194
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L193
.L194:
	movq	-8(%rbp), %rax
	andl	$384, %eax
	testq	%rax, %rax
	jne	.L193
	movq	-8(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L195
.L193:
	movl	$1, %eax
	jmp	.L196
.L195:
	movl	$0, %eax
.L196:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	send_server_key_exchange, .-send_server_key_exchange
	.type	get_compressed_certificate_alg, @function
get_compressed_certificate_alg:
.LFB787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	get_compressed_certificate_alg, .-get_compressed_certificate_alg
	.globl	send_certificate_request
	.type	send_certificate_request, @function
send_certificate_request:
.LFB788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L200
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L201
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L201
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L201
	movq	-8(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L201
	movq	-8(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$3, %eax
	jne	.L200
.L201:
	movq	-8(%rbp), %rax
	movl	2856(%rax), %eax
	testl	%eax, %eax
	jle	.L202
	movq	-8(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L200
.L202:
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L203
	movq	-8(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L200
.L203:
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L200
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L200
	movl	$1, %eax
	jmp	.L204
.L200:
	movl	$0, %eax
.L204:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	send_certificate_request, .-send_certificate_request
	.type	do_compressed_cert, @function
do_compressed_cert:
.LFB789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	2746(%rax), %eax
	testb	%al, %al
	jne	.L206
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_compressed_certificate_alg
	testl	%eax, %eax
	je	.L206
	movl	$1, %eax
	jmp	.L208
.L206:
	movl	$0, %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	do_compressed_cert, .-do_compressed_cert
	.type	ossl_statem_server13_write_transition, @function
ossl_statem_server13_write_transition:
.LFB790:
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
	cmpl	$50, %eax
	je	.L210
	cmpl	$50, %eax
	ja	.L211
	cmpl	$48, %eax
	je	.L212
	cmpl	$48, %eax
	ja	.L211
	cmpl	$46, %eax
	je	.L212
	cmpl	$46, %eax
	ja	.L211
	cmpl	$44, %eax
	je	.L213
	cmpl	$44, %eax
	ja	.L211
	cmpl	$41, %eax
	je	.L214
	cmpl	$41, %eax
	ja	.L211
	cmpl	$40, %eax
	je	.L215
	cmpl	$40, %eax
	ja	.L211
	cmpl	$39, %eax
	je	.L216
	cmpl	$39, %eax
	ja	.L211
	cmpl	$37, %eax
	je	.L217
	cmpl	$37, %eax
	ja	.L211
	cmpl	$36, %eax
	je	.L218
	cmpl	$36, %eax
	ja	.L211
	cmpl	$28, %eax
	je	.L219
	cmpl	$28, %eax
	ja	.L211
	cmpl	$26, %eax
	ja	.L211
	cmpl	$25, %eax
	jnb	.L220
	cmpl	$24, %eax
	je	.L221
	cmpl	$24, %eax
	ja	.L211
	cmpl	$1, %eax
	je	.L222
	cmpl	$22, %eax
	je	.L223
.L211:
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$476, %esi
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
	jmp	.L224
.L222:
	movq	-40(%rbp), %rax
	movl	2828(%rax), %eax
	cmpl	$-1, %eax
	je	.L225
	movq	-24(%rbp), %rax
	movl	$46, 20(%rax)
	movl	$1, %eax
	jmp	.L224
.L225:
	movq	-40(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$3, %eax
	jne	.L226
	movq	-24(%rbp), %rax
	movl	$28, 20(%rax)
	movl	$1, %eax
	jmp	.L224
.L226:
	movq	-40(%rbp), %rax
	movl	2540(%rax), %eax
	testl	%eax, %eax
	jle	.L227
	movq	-24(%rbp), %rax
	movl	$37, 20(%rax)
	movl	$1, %eax
	jmp	.L224
.L227:
	movl	$2, %eax
	jmp	.L224
.L223:
	movq	-24(%rbp), %rax
	movl	$24, 20(%rax)
	movl	$1, %eax
	jmp	.L224
.L221:
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	je	.L228
	movq	-40(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$2, %eax
	je	.L228
	movq	-24(%rbp), %rax
	movl	$39, 20(%rax)
	jmp	.L229
.L228:
	movq	-40(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L230
	movq	-24(%rbp), %rax
	movl	$50, 20(%rax)
	jmp	.L229
.L230:
	movq	-24(%rbp), %rax
	movl	$41, 20(%rax)
.L229:
	movl	$1, %eax
	jmp	.L224
.L216:
	movq	-40(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L231
	movq	-24(%rbp), %rax
	movl	$50, 20(%rax)
	jmp	.L232
.L231:
	movq	-24(%rbp), %rax
	movl	$41, 20(%rax)
.L232:
	movl	$1, %eax
	jmp	.L224
.L214:
	movq	-40(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L233
	movq	-24(%rbp), %rax
	movl	$40, 20(%rax)
	jmp	.L234
.L233:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	send_certificate_request@PLT
	testl	%eax, %eax
	je	.L235
	movq	-24(%rbp), %rax
	movl	$28, 20(%rax)
	jmp	.L234
.L235:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	do_compressed_cert
	testl	%eax, %eax
	je	.L236
	movq	-24(%rbp), %rax
	movl	$26, 20(%rax)
	jmp	.L234
.L236:
	movq	-24(%rbp), %rax
	movl	$25, 20(%rax)
.L234:
	movl	$1, %eax
	jmp	.L224
.L219:
	movq	-40(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$3, %eax
	jne	.L237
	movq	-40(%rbp), %rax
	movl	$4, 2832(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	jmp	.L238
.L237:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	do_compressed_cert
	testl	%eax, %eax
	je	.L239
	movq	-24(%rbp), %rax
	movl	$26, 20(%rax)
	jmp	.L238
.L239:
	movq	-24(%rbp), %rax
	movl	$25, 20(%rax)
.L238:
	movl	$1, %eax
	jmp	.L224
.L220:
	movq	-24(%rbp), %rax
	movl	$44, 20(%rax)
	movl	$1, %eax
	jmp	.L224
.L213:
	movq	-24(%rbp), %rax
	movl	$40, 20(%rax)
	movl	$1, %eax
	jmp	.L224
.L215:
	movq	-24(%rbp), %rax
	movl	$50, 20(%rax)
	movq	-40(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 136(%rbx)
	movl	$1, %eax
	jmp	.L224
.L210:
	movl	$2, %eax
	jmp	.L224
.L218:
	movq	-40(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 144(%rbx)
	movq	-40(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	jne	.L240
	movq	-40(%rbp), %rax
	movl	$2, 2832(%rax)
	jmp	.L241
.L240:
	movq	-40(%rbp), %rax
	movl	2536(%rax), %eax
	testl	%eax, %eax
	jne	.L241
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, %eax
	jmp	.L224
.L241:
	movq	-40(%rbp), %rax
	movq	5296(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	5304(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L242
	movq	-24(%rbp), %rax
	movl	$37, 20(%rax)
	jmp	.L243
.L242:
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
.L243:
	movl	$1, %eax
	jmp	.L224
.L212:
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, %eax
	jmp	.L224
.L217:
	movq	-40(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L244
	movq	-40(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L244
	movq	-40(%rbp), %rax
	movl	2540(%rax), %eax
	testl	%eax, %eax
	jle	.L244
	movl	$1, %eax
	jmp	.L224
.L244:
	movq	-40(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L245
	movq	-40(%rbp), %rax
	movq	5296(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	5304(%rdx), %rdx
	cmpq	%rax, %rdx
	jb	.L246
.L245:
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
.L246:
	movl	$1, %eax
.L224:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	ossl_statem_server13_write_transition, .-ossl_statem_server13_write_transition
	.globl	ossl_statem_server_write_transition
	.type	ossl_statem_server_write_transition, @function
ossl_statem_server_write_transition:
.LFB791:
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
	jne	.L248
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L248
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L248
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_server13_write_transition
	jmp	.L249
.L248:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$40, %eax
	je	.L250
	cmpl	$40, %eax
	ja	.L251
	cmpl	$39, %eax
	je	.L252
	cmpl	$39, %eax
	ja	.L251
	cmpl	$38, %eax
	je	.L253
	cmpl	$38, %eax
	ja	.L251
	cmpl	$37, %eax
	je	.L254
	cmpl	$37, %eax
	ja	.L251
	cmpl	$36, %eax
	je	.L255
	cmpl	$36, %eax
	ja	.L251
	cmpl	$29, %eax
	je	.L256
	cmpl	$29, %eax
	ja	.L251
	cmpl	$28, %eax
	je	.L257
	cmpl	$28, %eax
	ja	.L251
	cmpl	$27, %eax
	je	.L258
	cmpl	$27, %eax
	ja	.L251
	cmpl	$25, %eax
	je	.L259
	cmpl	$25, %eax
	ja	.L251
	cmpl	$24, %eax
	je	.L260
	cmpl	$24, %eax
	ja	.L251
	cmpl	$23, %eax
	je	.L261
	cmpl	$23, %eax
	ja	.L251
	cmpl	$22, %eax
	je	.L262
	cmpl	$22, %eax
	ja	.L251
	cmpl	$21, %eax
	je	.L263
	cmpl	$21, %eax
	ja	.L251
	testl	%eax, %eax
	je	.L264
	cmpl	$1, %eax
	je	.L265
.L251:
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$618, %esi
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
	jmp	.L249
.L265:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$21, %eax
	jne	.L266
	movq	-24(%rbp), %rax
	movl	$21, 20(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movl	$1, %eax
	jmp	.L249
.L266:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tls_setup_handshake@PLT
	testl	%eax, %eax
	jne	.L264
	movl	$0, %eax
	jmp	.L249
.L264:
	movl	$2, %eax
	jmp	.L249
.L263:
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, %eax
	jmp	.L249
.L262:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L267
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movl	264(%rax), %eax
	testl	%eax, %eax
	jne	.L267
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	andl	$8192, %eax
	testq	%rax, %rax
	je	.L267
	movq	-24(%rbp), %rax
	movl	$23, 20(%rax)
	jmp	.L268
.L267:
	movq	-40(%rbp), %rax
	movl	2824(%rax), %eax
	testl	%eax, %eax
	jne	.L269
	movq	-40(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L269
	movq	-40(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L269
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, %eax
	jmp	.L249
.L269:
	movq	-24(%rbp), %rax
	movl	$24, 20(%rax)
.L268:
	movl	$1, %eax
	jmp	.L249
.L261:
	movl	$2, %eax
	jmp	.L249
.L260:
	movq	-40(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L270
	movq	-40(%rbp), %rax
	movl	2536(%rax), %eax
	testl	%eax, %eax
	je	.L271
	movq	-24(%rbp), %rax
	movl	$37, 20(%rax)
	jmp	.L272
.L271:
	movq	-24(%rbp), %rax
	movl	$39, 20(%rax)
	jmp	.L272
.L270:
	movq	-40(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$84, %eax
	testl	%eax, %eax
	jne	.L273
	movq	-24(%rbp), %rax
	movl	$25, 20(%rax)
	jmp	.L272
.L273:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	send_server_key_exchange
	testl	%eax, %eax
	je	.L274
	movq	-24(%rbp), %rax
	movl	$27, 20(%rax)
	jmp	.L272
.L274:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	send_certificate_request@PLT
	testl	%eax, %eax
	je	.L275
	movq	-24(%rbp), %rax
	movl	$28, 20(%rax)
	jmp	.L272
.L275:
	movq	-24(%rbp), %rax
	movl	$29, 20(%rax)
.L272:
	movl	$1, %eax
	jmp	.L249
.L259:
	movq	-40(%rbp), %rax
	movl	2500(%rax), %eax
	testl	%eax, %eax
	je	.L253
	movq	-24(%rbp), %rax
	movl	$38, 20(%rax)
	movl	$1, %eax
	jmp	.L249
.L253:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	send_server_key_exchange
	testl	%eax, %eax
	je	.L258
	movq	-24(%rbp), %rax
	movl	$27, 20(%rax)
	movl	$1, %eax
	jmp	.L249
.L258:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	send_certificate_request@PLT
	testl	%eax, %eax
	je	.L257
	movq	-24(%rbp), %rax
	movl	$28, 20(%rax)
	movl	$1, %eax
	jmp	.L249
.L257:
	movq	-24(%rbp), %rax
	movl	$29, 20(%rax)
	movl	$1, %eax
	jmp	.L249
.L256:
	movq	-40(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 136(%rbx)
	movl	$2, %eax
	jmp	.L249
.L255:
	movq	-40(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 144(%rbx)
	movq	-40(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L276
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, %eax
	jmp	.L249
.L276:
	movq	-40(%rbp), %rax
	movl	2536(%rax), %eax
	testl	%eax, %eax
	je	.L277
	movq	-24(%rbp), %rax
	movl	$37, 20(%rax)
	jmp	.L278
.L277:
	movq	-24(%rbp), %rax
	movl	$39, 20(%rax)
.L278:
	movl	$1, %eax
	jmp	.L249
.L254:
	movq	-24(%rbp), %rax
	movl	$39, 20(%rax)
	movl	$1, %eax
	jmp	.L249
.L252:
	movq	-24(%rbp), %rax
	movl	$40, 20(%rax)
	movl	$1, %eax
	jmp	.L249
.L250:
	movq	-40(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L279
	movl	$2, %eax
	jmp	.L249
.L279:
	movq	-24(%rbp), %rax
	movl	$1, 20(%rax)
	movl	$1, %eax
.L249:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	ossl_statem_server_write_transition, .-ossl_statem_server_write_transition
	.globl	ossl_statem_server_pre_work
	.type	ossl_statem_server_pre_work, @function
ossl_statem_server_pre_work:
.LFB792:
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
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$50, %eax
	je	.L281
	cmpl	$50, %eax
	ja	.L302
	cmpl	$39, %eax
	je	.L283
	cmpl	$39, %eax
	ja	.L302
	cmpl	$37, %eax
	je	.L284
	cmpl	$37, %eax
	ja	.L302
	cmpl	$29, %eax
	je	.L285
	cmpl	$29, %eax
	ja	.L302
	cmpl	$24, %eax
	je	.L286
	cmpl	$24, %eax
	ja	.L302
	cmpl	$23, %eax
	je	.L287
	cmpl	$23, %eax
	ja	.L302
	cmpl	$1, %eax
	je	.L288
	cmpl	$21, %eax
	jne	.L302
	movq	-24(%rbp), %rax
	movl	$0, 132(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L303
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_clear_sent_buffer@PLT
	jmp	.L303
.L287:
	movq	-24(%rbp), %rax
	movl	$0, 132(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L304
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_clear_sent_buffer@PLT
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.L304
.L286:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L305
	movq	-8(%rbp), %rax
	movl	$1, 48(%rax)
	jmp	.L305
.L285:
	movl	$2, %eax
	jmp	.L294
.L284:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L295
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L295
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L295
	movq	-24(%rbp), %rax
	movq	5304(%rax), %rax
	testq	%rax, %rax
	jne	.L295
	movq	-24(%rbp), %rax
	movl	2540(%rax), %eax
	testl	%eax, %eax
	jne	.L295
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	tls_finish_handshake@PLT
	jmp	.L294
.L295:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L306
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.L306
.L283:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L297
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L297
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L307
.L297:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	jne	.L298
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	704(%rdx), %rdx
	movq	%rdx, 760(%rax)
	jmp	.L299
.L298:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	cmpq	%rax, %rdx
	je	.L299
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$815, %esi
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
	jmp	.L294
.L299:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L300
	movl	$0, %eax
	jmp	.L294
.L300:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L301
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.L301:
	movl	$2, %eax
	jmp	.L294
.L281:
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$9, %eax
	je	.L288
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	jne	.L288
	movl	$2, %eax
	jmp	.L294
.L288:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	tls_finish_handshake@PLT
	jmp	.L294
.L302:
	nop
	jmp	.L290
.L303:
	nop
	jmp	.L290
.L304:
	nop
	jmp	.L290
.L305:
	nop
	jmp	.L290
.L306:
	nop
	jmp	.L290
.L307:
	nop
.L290:
	movl	$2, %eax
.L294:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	ossl_statem_server_pre_work, .-ossl_statem_server_pre_work
	.type	conn_is_closed, @function
conn_is_closed:
.LFB793:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$32, %eax
	je	.L309
	cmpl	$104, %eax
	je	.L310
	jmp	.L313
.L309:
	movl	$1, %eax
	jmp	.L312
.L310:
	movl	$1, %eax
	jmp	.L312
.L313:
	movl	$0, %eax
.L312:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	conn_is_closed, .-conn_is_closed
	.globl	ossl_statem_server_post_work
	.type	ossl_statem_server_post_work, @function
ossl_statem_server_post_work:
.LFB794:
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
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 264(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$46, %eax
	je	.L315
	cmpl	$46, %eax
	ja	.L356
	cmpl	$41, %eax
	je	.L317
	cmpl	$41, %eax
	ja	.L356
	cmpl	$40, %eax
	je	.L318
	cmpl	$40, %eax
	ja	.L356
	cmpl	$39, %eax
	je	.L319
	cmpl	$39, %eax
	ja	.L356
	cmpl	$37, %eax
	je	.L320
	cmpl	$37, %eax
	ja	.L356
	cmpl	$29, %eax
	je	.L321
	cmpl	$29, %eax
	ja	.L356
	cmpl	$28, %eax
	je	.L322
	cmpl	$28, %eax
	ja	.L356
	cmpl	$24, %eax
	je	.L323
	cmpl	$24, %eax
	ja	.L356
	cmpl	$21, %eax
	je	.L324
	cmpl	$23, %eax
	je	.L325
	jmp	.L356
.L324:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	cmpl	$1, %eax
	je	.L327
	movl	$3, %eax
	jmp	.L328
.L327:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_init_finished_mac@PLT
	testl	%eax, %eax
	jne	.L357
	movl	$0, %eax
	jmp	.L328
.L325:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	cmpl	$1, %eax
	je	.L330
	movl	$3, %eax
	jmp	.L328
.L330:
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$256, %eax
	je	.L331
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_init_finished_mac@PLT
	testl	%eax, %eax
	jne	.L331
	movl	$0, %eax
	jmp	.L328
.L331:
	movq	-40(%rbp), %rax
	movl	$1, 2392(%rax)
	jmp	.L326
.L323:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L332
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L332
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L332
	movq	-40(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L332
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	jne	.L358
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	cmpl	$1, %eax
	je	.L358
	movl	$3, %eax
	jmp	.L328
.L332:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L326
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L326
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L326
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	je	.L319
	movq	-40(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$2, %eax
	jne	.L326
.L319:
	movq	-40(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L334
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	testl	%eax, %eax
	jne	.L359
	movl	$3, %eax
	jmp	.L328
.L334:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L336
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L336
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L336
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L337
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$162, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L338
.L337:
	movl	$0, %eax
	jmp	.L328
.L338:
	movq	-40(%rbp), %rax
	movl	2688(%rax), %eax
	cmpl	$2, %eax
	je	.L339
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L339
	movl	$0, %eax
	jmp	.L328
.L339:
	movq	-40(%rbp), %rax
	movq	3032(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L360
	movq	-40(%rbp), %rax
	movq	3032(%rax), %rax
	movq	104(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	3048(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L360
.L336:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L361
	movl	$0, %eax
	jmp	.L328
.L321:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	cmpl	$1, %eax
	je	.L362
	movl	$3, %eax
	jmp	.L328
.L318:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	cmpl	$1, %eax
	je	.L343
	movl	$3, %eax
	jmp	.L328
.L343:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L363
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L363
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L363
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	8(%rax), %r9
	movq	-40(%rbp), %rax
	leaq	1348(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	1412(%rax), %rsi
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L345
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$290, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L363
.L345:
	movl	$0, %eax
	jmp	.L328
.L322:
	movq	-40(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$3, %eax
	jne	.L347
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	cmpl	$1, %eax
	je	.L364
	movl	$3, %eax
	jmp	.L328
.L347:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L349
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L349
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L349
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	movabsq	$4294967296, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L364
.L349:
	movq	-40(%rbp), %rax
	movl	$0, 2724(%rax)
	jmp	.L364
.L317:
	movq	-40(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L365
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	send_certificate_request@PLT
	testl	%eax, %eax
	jne	.L365
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L351
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L351
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L351
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	movabsq	$4294967296, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L365
.L351:
	movq	-40(%rbp), %rax
	movl	$0, 2724(%rax)
	jmp	.L365
.L315:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	cmpl	$1, %eax
	je	.L352
	movl	$3, %eax
	jmp	.L328
.L352:
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tls13_update_key@PLT
	testl	%eax, %eax
	jne	.L366
	movl	$0, %eax
	jmp	.L328
.L320:
	call	__errno_location@PLT
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L367
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L367
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L367
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	cmpl	$1, %eax
	je	.L367
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	cmpl	$5, %eax
	jne	.L355
	call	conn_is_closed
	testl	%eax, %eax
	je	.L355
	movq	-40(%rbp), %rax
	movl	$1, 104(%rax)
	jmp	.L326
.L355:
	movl	$3, %eax
	jmp	.L328
.L356:
	nop
	jmp	.L326
.L357:
	nop
	jmp	.L326
.L358:
	nop
	jmp	.L326
.L359:
	nop
	jmp	.L326
.L360:
	nop
	jmp	.L326
.L361:
	nop
	jmp	.L326
.L362:
	nop
	jmp	.L326
.L363:
	nop
	jmp	.L326
.L364:
	nop
	jmp	.L326
.L365:
	nop
	jmp	.L326
.L366:
	nop
	jmp	.L326
.L367:
	nop
.L326:
	movl	$2, %eax
.L328:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE794:
	.size	ossl_statem_server_post_work, .-ossl_statem_server_post_work
	.globl	ossl_statem_server_construct_message
	.type	ossl_statem_server_construct_message, @function
ossl_statem_server_construct_message:
.LFB795:
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
	cmpl	$50, %eax
	je	.L369
	cmpl	$50, %eax
	ja	.L370
	cmpl	$46, %eax
	je	.L371
	cmpl	$46, %eax
	ja	.L370
	cmpl	$44, %eax
	je	.L372
	cmpl	$44, %eax
	ja	.L370
	cmpl	$41, %eax
	je	.L373
	cmpl	$41, %eax
	ja	.L370
	cmpl	$40, %eax
	je	.L374
	cmpl	$40, %eax
	ja	.L370
	cmpl	$39, %eax
	je	.L375
	cmpl	$39, %eax
	ja	.L370
	cmpl	$38, %eax
	je	.L376
	cmpl	$38, %eax
	ja	.L370
	cmpl	$37, %eax
	je	.L377
	cmpl	$37, %eax
	ja	.L370
	cmpl	$29, %eax
	je	.L378
	cmpl	$29, %eax
	ja	.L370
	cmpl	$28, %eax
	je	.L379
	cmpl	$28, %eax
	ja	.L370
	cmpl	$27, %eax
	je	.L380
	cmpl	$27, %eax
	ja	.L370
	cmpl	$25, %eax
	je	.L381
	cmpl	$25, %eax
	ja	.L370
	cmpl	$24, %eax
	je	.L382
	cmpl	$24, %eax
	ja	.L370
	cmpl	$21, %eax
	je	.L383
	cmpl	$23, %eax
	je	.L384
.L370:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1098, %esi
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
	jmp	.L385
.L375:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L386
	movq	-32(%rbp), %rax
	movq	dtls_construct_change_cipher_spec@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L387
.L386:
	movq	-32(%rbp), %rax
	movq	tls_construct_change_cipher_spec@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
.L387:
	movq	-40(%rbp), %rax
	movl	$257, (%rax)
	jmp	.L388
.L384:
	movq	-32(%rbp), %rax
	movq	dtls_construct_hello_verify_request@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L388
.L383:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L388
.L382:
	movq	-32(%rbp), %rax
	movq	tls_construct_server_hello@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L388
.L381:
	movq	-32(%rbp), %rax
	movq	tls_construct_server_certificate@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$11, (%rax)
	jmp	.L388
.L372:
	movq	-32(%rbp), %rax
	movq	tls_construct_cert_verify@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$15, (%rax)
	jmp	.L388
.L380:
	movq	-32(%rbp), %rax
	movq	tls_construct_server_key_exchange@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$12, (%rax)
	jmp	.L388
.L379:
	movq	-32(%rbp), %rax
	movq	tls_construct_certificate_request@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$13, (%rax)
	jmp	.L388
.L378:
	movq	-32(%rbp), %rax
	movq	tls_construct_server_done@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$14, (%rax)
	jmp	.L388
.L377:
	movq	-32(%rbp), %rax
	movq	tls_construct_new_session_ticket@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L388
.L376:
	movq	-32(%rbp), %rax
	movq	tls_construct_cert_status@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$22, (%rax)
	jmp	.L388
.L374:
	movq	-32(%rbp), %rax
	movq	tls_construct_finished@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$20, (%rax)
	jmp	.L388
.L369:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L388
.L373:
	movq	-32(%rbp), %rax
	leaq	tls_construct_encrypted_extensions(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$8, (%rax)
	jmp	.L388
.L371:
	movq	-32(%rbp), %rax
	movq	tls_construct_key_update@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$24, (%rax)
	nop
.L388:
	movl	$1, %eax
.L385:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE795:
	.size	ossl_statem_server_construct_message, .-ossl_statem_server_construct_message
	.globl	ossl_statem_server_max_message_size
	.type	ossl_statem_server_max_message_size, @function
ossl_statem_server_max_message_size:
.LFB796:
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
	cmpl	$53, %eax
	je	.L390
	cmpl	$53, %eax
	ja	.L391
	cmpl	$48, %eax
	je	.L392
	cmpl	$48, %eax
	ja	.L391
	cmpl	$36, %eax
	je	.L393
	cmpl	$36, %eax
	ja	.L391
	cmpl	$35, %eax
	je	.L394
	cmpl	$35, %eax
	ja	.L391
	cmpl	$34, %eax
	je	.L395
	cmpl	$34, %eax
	ja	.L391
	cmpl	$33, %eax
	je	.L396
	cmpl	$33, %eax
	ja	.L391
	cmpl	$32, %eax
	je	.L397
	cmpl	$32, %eax
	ja	.L391
	cmpl	$22, %eax
	je	.L398
	cmpl	$22, %eax
	jb	.L391
	subl	$30, %eax
	cmpl	$1, %eax
	jbe	.L399
.L391:
	movl	$0, %eax
	jmp	.L400
.L398:
	movl	$131396, %eax
	jmp	.L400
.L390:
	movl	$0, %eax
	jmp	.L400
.L399:
	movq	-24(%rbp), %rax
	movq	2384(%rax), %rax
	jmp	.L400
.L397:
	movl	$2048, %eax
	jmp	.L400
.L396:
	movl	$65539, %eax
	jmp	.L400
.L395:
	movl	$514, %eax
	jmp	.L400
.L394:
	movl	$1, %eax
	jmp	.L400
.L393:
	movl	$64, %eax
	jmp	.L400
.L392:
	movl	$1, %eax
.L400:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE796:
	.size	ossl_statem_server_max_message_size, .-ossl_statem_server_max_message_size
	.globl	ossl_statem_server_process_message
	.type	ossl_statem_server_process_message, @function
ossl_statem_server_process_message:
.LFB797:
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
	cmpl	$53, %eax
	je	.L402
	cmpl	$53, %eax
	ja	.L403
	cmpl	$48, %eax
	je	.L404
	cmpl	$48, %eax
	ja	.L403
	cmpl	$36, %eax
	je	.L405
	cmpl	$36, %eax
	ja	.L403
	cmpl	$35, %eax
	je	.L406
	cmpl	$35, %eax
	ja	.L403
	cmpl	$34, %eax
	je	.L407
	cmpl	$34, %eax
	ja	.L403
	cmpl	$33, %eax
	je	.L408
	cmpl	$33, %eax
	ja	.L403
	cmpl	$32, %eax
	je	.L409
	cmpl	$32, %eax
	ja	.L403
	cmpl	$22, %eax
	je	.L410
	cmpl	$30, %eax
	je	.L411
.L403:
	call	ERR_new@PLT
	leaq	__func__.34(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1268, %esi
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
	jmp	.L412
.L410:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_client_hello@PLT
	jmp	.L412
.L402:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_end_of_early_data@PLT
	jmp	.L412
.L411:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_client_certificate@PLT
	jmp	.L412
.L409:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_client_key_exchange@PLT
	jmp	.L412
.L408:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_cert_verify@PLT
	jmp	.L412
.L407:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_next_proto@PLT
	jmp	.L412
.L406:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_change_cipher_spec@PLT
	jmp	.L412
.L405:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_finished@PLT
	jmp	.L412
.L404:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_key_update@PLT
.L412:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE797:
	.size	ossl_statem_server_process_message, .-ossl_statem_server_process_message
	.globl	ossl_statem_server_post_process_message
	.type	ossl_statem_server_post_process_message, @function
ossl_statem_server_post_process_message:
.LFB798:
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
	cmpl	$22, %eax
	je	.L414
	cmpl	$32, %eax
	je	.L415
	call	ERR_new@PLT
	leaq	__func__.33(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1320, %esi
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
	jmp	.L416
.L414:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls_post_process_client_hello@PLT
	jmp	.L416
.L415:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls_post_process_client_key_exchange@PLT
.L416:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE798:
	.size	ossl_statem_server_post_process_message, .-ossl_statem_server_post_process_message
	.type	ssl_check_srp_ext_ClientHello, @function
ssl_check_srp_ext_ClientHello:
.LFB799:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$112, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L418
	movq	-24(%rbp), %rax
	movq	2880(%rax), %rax
	testq	%rax, %rax
	je	.L418
	movq	-24(%rbp), %rax
	movq	2904(%rax), %rax
	testq	%rax, %rax
	jne	.L419
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1345, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$223, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L424
.L419:
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_srp_server_param_with_username_intern@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L421
	movl	$0, %eax
	jmp	.L424
.L421:
	cmpl	$2, -4(%rbp)
	jne	.L418
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-8(%rbp), %eax
	cmpl	$115, %eax
	jne	.L422
	movl	$223, %edx
	jmp	.L423
.L422:
	movl	$226, %edx
.L423:
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L424
.L418:
	movl	$1, %eax
.L424:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE799:
	.size	ssl_check_srp_ext_ClientHello, .-ssl_check_srp_ext_ClientHello
	.globl	dtls_raw_hello_verify_request
	.type	dtls_raw_hello_verify_request, @function
dtls_raw_hello_verify_request:
.LFB800:
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
	movl	$2, %edx
	movl	$65279, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L426
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L427
.L426:
	movl	$0, %eax
	jmp	.L428
.L427:
	movl	$1, %eax
.L428:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE800:
	.size	dtls_raw_hello_verify_request, .-dtls_raw_hello_verify_request
	.globl	dtls_construct_hello_verify_request
	.type	dtls_construct_hello_verify_request, @function
dtls_construct_hello_verify_request:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L430
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	-12(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L430
	movl	-12(%rbp), %eax
	cmpl	$255, %eax
	jbe	.L431
.L430:
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1386, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$400, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L434
.L431:
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movl	%edx, %edx
	movq	%rdx, 256(%rax)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movq	256(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dtls_raw_hello_verify_request@PLT
	testl	%eax, %eax
	jne	.L433
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1393, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L434
.L433:
	movl	$1, %eax
.L434:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE801:
	.size	dtls_construct_hello_verify_request, .-dtls_construct_hello_verify_request
	.type	ssl_check_for_safari, @function
ssl_check_for_safari:
.LFB802:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	632(%rax), %rdx
	movq	624(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	leaq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L444
	leaq	-12(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L444
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L444
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L445
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_client_version@PLT
	sarl	$8, %eax
	cmpl	$3, %eax
	jne	.L440
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_client_version@PLT
	cmpl	$770, %eax
	jg	.L441
.L440:
	movq	kSafariCommonExtensionsLength.30(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L442
.L441:
	movq	$34, -8(%rbp)
.L442:
	movq	-8(%rbp), %rdx
	leaq	kSafariExtensionsBlock.29(%rip), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, 1132(%rax)
	jmp	.L435
.L444:
	nop
	jmp	.L435
.L445:
	nop
.L435:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE802:
	.size	ssl_check_for_safari, .-ssl_check_for_safari
	.globl	tls_process_client_hello
	.type	tls_process_client_hello, @function
tls_process_client_hello:
.LFB803:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	$0, -8(%rbp)
	movq	-120(%rbp), %rax
	movl	2824(%rax), %eax
	testl	%eax, %eax
	jne	.L447
	movq	-120(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L447
	movq	-120(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L447
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L448
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L448
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L449
.L448:
	movl	$1, %eax
	jmp	.L450
.L449:
	movl	$0, %eax
.L450:
	cltq
	testq	%rax, %rax
	jne	.L451
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1478, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L451:
	movq	-120(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1073741824, %eax
	testq	%rax, %rax
	jne	.L453
	movq	-120(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L453
	movq	-120(%rbp), %rax
	movl	1088(%rax), %eax
	testl	%eax, %eax
	jne	.L454
	movq	-120(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$262144, %eax
	testq	%rax, %rax
	jne	.L454
.L453:
	movq	-120(%rbp), %rax
	movl	$100, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl3_send_alert@PLT
	movl	$1, %eax
	jmp	.L487
.L454:
	movq	-120(%rbp), %rax
	movl	$1, 2824(%rax)
	movq	-120(%rbp), %rax
	movl	$1, 124(%rax)
.L447:
	leaq	.LC3(%rip), %rax
	movl	$1492, %edx
	movq	%rax, %rsi
	movl	$656, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L456
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1494, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L456:
	movq	-120(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_is_sslv2_record@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_null_init
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L457
	movq	-120(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L458
	movq	-120(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L459
.L458:
	movq	-120(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	je	.L460
.L459:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1509, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$244, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L460:
	leaq	-84(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L462
	movl	-84(%rbp), %eax
	cmpl	$1, %eax
	je	.L457
.L462:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1535, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L457:
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L464
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1541, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$160, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L464:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L465
	leaq	-88(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L466
	leaq	-92(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L466
	leaq	-96(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L467
.L466:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1558, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$213, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L467:
	movl	-92(%rbp), %eax
	cmpl	$32, %eax
	jbe	.L469
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1563, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L469:
	movl	-88(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	leaq	344(%rax), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_sub_packet
	testl	%eax, %eax
	je	.L470
	movl	-92(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	je	.L470
	movl	-96(%rbp), %eax
	movl	%eax, %edx
	leaq	-112(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_sub_packet
	testl	%eax, %eax
	je	.L470
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L471
.L470:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1573, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$213, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L471:
	movl	-92(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	-96(%rbp), %eax
	movl	$32, %edx
	cmpl	%edx, %eax
	cmova	%edx, %eax
	movl	%eax, -96(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-96(%rbp), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movl	-96(%rbp), %eax
	movl	%eax, %ecx
	movl	$32, %eax
	subq	%rcx, %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-112(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	je	.L472
	leaq	null_compression.27(%rip), %rcx
	leaq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L473
.L472:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1591, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L473:
	movq	-8(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	PACKET_null_init
	jmp	.L474
.L465:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-128(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	je	.L475
	leaq	-32(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L475
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	PACKET_copy_all
	testl	%eax, %eax
	jne	.L476
.L475:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1603, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L476:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L477
	leaq	-80(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L478
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1609, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L478:
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	88(%rax), %rsi
	leaq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$255, %edx
	movq	%rax, %rdi
	call	PACKET_copy_all
	testl	%eax, %eax
	jne	.L479
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1615, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L479:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	andl	$8192, %eax
	testq	%rax, %rax
	je	.L477
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L477
	leaq	.LC3(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1625, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L487
.L477:
	movq	-8(%rbp), %rax
	leaq	344(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L480
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1632, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L480:
	leaq	-48(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L481
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1637, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L481:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L482
	movq	-8(%rbp), %rax
	addq	$624, %rax
	movq	%rax, %rdi
	call	PACKET_null_init
	jmp	.L474
.L482:
	movq	-8(%rbp), %rax
	leaq	624(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L483
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L474
.L483:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1647, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L474:
	movq	-8(%rbp), %rax
	leaq	360(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	368(%rax), %rsi
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$255, %edx
	movq	%rax, %rdi
	call	PACKET_copy_all
	testl	%eax, %eax
	jne	.L484
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1656, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L452
.L484:
	movq	-8(%rbp), %rax
	movq	632(%rax), %rdx
	movq	624(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-8(%rbp), %rax
	leaq	640(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	648(%rax), %rdx
	leaq	-64(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$128, %edx
	movq	%rax, %rdi
	call	tls_collect_extensions@PLT
	testl	%eax, %eax
	je	.L488
	movq	-120(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 2752(%rax)
	movl	$2, %eax
	jmp	.L487
.L488:
	nop
.L452:
	cmpq	$0, -8(%rbp)
	je	.L486
	movq	-8(%rbp), %rax
	movq	648(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$1674, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L486:
	leaq	.LC3(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1675, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L487:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE803:
	.size	tls_process_client_hello, .-tls_process_client_hello
	.section	.rodata
.LC4:
	.string	"client [%2d of %2d]:%s\n"
	.text
	.type	tls_early_post_process_client_hello, @function
tls_early_post_process_client_hello:
.LFB804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)
	movl	$80, -160(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movq	-216(%rbp), %rax
	movq	2752(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -180(%rbp)
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-216(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	528(%rax), %rax
	testq	%rax, %rax
	je	.L490
	movq	-80(%rbp), %rax
	movq	528(%rax), %r8
	movq	-80(%rbp), %rax
	movq	536(%rax), %rdx
	leaq	-160(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	cmpl	$-1, %eax
	je	.L491
	cmpl	$1, %eax
	jne	.L492
	jmp	.L490
.L491:
	movq	-216(%rbp), %rax
	movl	$7, 104(%rax)
	movl	$-1, %eax
	jmp	.L577
.L492:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1711, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-160(%rbp), %esi
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$234, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L490:
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-216(%rbp), %rax
	addq	$328, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L495
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$2, %eax
	je	.L496
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	andl	$65280, %eax
	cmpl	$768, %eax
	je	.L497
.L496:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1729, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$252, %edx
	movl	$70, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L497:
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 2396(%rax)
.L495:
	leaq	-180(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_choose_server_version@PLT
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L498
	movq	-216(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L499
	movq	-216(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L500
.L499:
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-216(%rbp), %rax
	movl	%edx, 2396(%rax)
	movq	-216(%rbp), %rax
	movl	2396(%rax), %edx
	movq	-216(%rbp), %rax
	movl	%edx, 72(%rax)
.L500:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1744, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-100(%rbp), %edx
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$70, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L498:
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L501
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L501
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L501
	movq	-216(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_processed_read_pending@PLT
	testl	%eax, %eax
	je	.L501
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1751, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$182, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L501:
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L502
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	andl	$8192, %eax
	testq	%rax, %rax
	je	.L502
	movq	-80(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L503
	movq	-80(%rbp), %rax
	movq	216(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	leaq	88(%rax), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L504
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1761, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$308, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L503:
	movq	-216(%rbp), %rax
	movq	1144(%rax), %rax
	movq	256(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L505
	movq	-216(%rbp), %rax
	movq	1144(%rax), %rax
	movq	256(%rax), %rax
	movq	-216(%rbp), %rdx
	movq	1144(%rdx), %rdx
	movq	%rdx, %rsi
	movq	-72(%rbp), %rdx
	leaq	88(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L504
.L505:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1770, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$308, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L504:
	movq	-216(%rbp), %rax
	movq	1144(%rax), %rax
	movl	$1, 264(%rax)
.L502:
	movq	-216(%rbp), %rax
	movl	$0, 1168(%rax)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	leaq	344(%rax), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cache_cipherlist@PLT
	testl	%eax, %eax
	je	.L578
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	movq	-72(%rbp), %rax
	leaq	344(%rax), %rsi
	leaq	-176(%rbp), %rcx
	leaq	-168(%rbp), %rdx
	movq	-216(%rbp), %rax
	movl	$1, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_bytes_to_cipher_list@PLT
	testl	%eax, %eax
	je	.L578
	movq	-216(%rbp), %rax
	movl	$0, 1088(%rax)
	movq	-176(%rbp), %rax
	testq	%rax, %rax
	je	.L508
	movl	$0, -24(%rbp)
	jmp	.L509
.L513:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_id@PLT
	cmpl	$50331903, %eax
	jne	.L510
	movq	-216(%rbp), %rax
	movl	2824(%rax), %eax
	testl	%eax, %eax
	je	.L511
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1795, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$345, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L511:
	movq	-216(%rbp), %rax
	movl	$1, 1088(%rax)
	jmp	.L512
.L510:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_id@PLT
	cmpl	$50353664, %eax
	jne	.L512
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_check_version_downgrade@PLT
	testl	%eax, %eax
	jne	.L512
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1809, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$373, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L512:
	addl	$1, -24(%rbp)
.L509:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L513
.L508:
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L514
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L514
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L514
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_ciphers@PLT
	movq	%rax, %rdx
	movq	-168(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_choose_cipher@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L515
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1822, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$193, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L515:
	movq	-216(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L516
	movq	-216(%rbp), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	je	.L517
	movq	-216(%rbp), %rax
	movq	704(%rax), %rax
	movl	24(%rax), %edx
	movq	-120(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	je	.L516
.L517:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1832, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$186, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L516:
	movq	-216(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, 704(%rax)
.L514:
	movq	-72(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-216(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$128, %edx
	movl	$13, %esi
	movq	%rax, %rdi
	call	tls_parse_extension@PLT
	testl	%eax, %eax
	je	.L579
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L519
	movq	-216(%rbp), %rax
	movl	124(%rax), %eax
	testl	%eax, %eax
	je	.L520
	movq	-216(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$65536, %eax
	testq	%rax, %rax
	je	.L520
.L519:
	movq	-216(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl_get_new_session@PLT
	testl	%eax, %eax
	jne	.L522
	jmp	.L494
.L520:
	movq	-72(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_get_prev_session@PLT
	movl	%eax, -24(%rbp)
	cmpl	$1, -24(%rbp)
	jne	.L523
	movq	-216(%rbp), %rax
	movl	$1, 1168(%rax)
	jmp	.L522
.L523:
	cmpl	$-1, -24(%rbp)
	je	.L580
	movq	-216(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl_get_new_session@PLT
	testl	%eax, %eax
	je	.L581
.L522:
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L525
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L525
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L525
	movq	-216(%rbp), %rax
	movq	2752(%rax), %rax
	movq	40(%rax), %rax
	movq	-216(%rbp), %rdx
	movq	2752(%rdx), %rdx
	leaq	48(%rdx), %rsi
	movq	-216(%rbp), %rdx
	leaq	2224(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-216(%rbp), %rax
	movq	2752(%rax), %rax
	movq	40(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, 2256(%rax)
.L525:
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L526
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L526
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L527
.L526:
	movq	-216(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L527
	movl	$0, -20(%rbp)
	movq	-216(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	movl	24(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -128(%rbp)
	movq	$0, -136(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L528
.L532:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L529
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rbx
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %ecx
	movl	-24(%rbp), %edx
	leaq	.LC4(%rip), %rsi
	movq	-136(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L529:
	movq	-112(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -128(%rbp)
	jne	.L530
	movl	$1, -20(%rbp)
	jmp	.L531
.L530:
	addl	$1, -24(%rbp)
.L528:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L532
.L531:
	cmpl	$0, -20(%rbp)
	jne	.L527
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1919, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$215, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L527:
	movq	$0, -32(%rbp)
	jmp	.L533
.L536:
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addq	$368, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L582
	addq	$1, -32(%rbp)
.L533:
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L536
	jmp	.L535
.L582:
	nop
.L535:
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L537
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1934, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$187, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L537:
	movq	-216(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$64, %eax
	testq	%rax, %rax
	je	.L538
	movq	-72(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_check_for_safari
.L538:
	movq	-72(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-216(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$128, %esi
	movq	%rax, %rdi
	call	tls_parse_all_extensions@PLT
	testl	%eax, %eax
	je	.L583
	movq	-216(%rbp), %rax
	addq	$296, %rax
	movq	%rax, -144(%rbp)
	movl	-180(%rbp), %ecx
	movq	-144(%rbp), %rdx
	movq	-216(%rbp), %rax
	movl	%ecx, %r8d
	movl	$32, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl_fill_hello_random@PLT
	testl	%eax, %eax
	jg	.L540
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1958, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L540:
	movq	-216(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L541
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	tls1_set_server_sigalgs@PLT
	testl	%eax, %eax
	je	.L584
.L541:
	movq	-216(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L542
	movq	-216(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jle	.L542
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L543
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L543
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L542
.L543:
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L542
	movq	-216(%rbp), %rax
	movq	2632(%rax), %rax
	testq	%rax, %rax
	je	.L542
	movq	$0, -192(%rbp)
	movl	$512, -196(%rbp)
	movq	-216(%rbp), %rax
	movq	2632(%rax), %r10
	movq	-216(%rbp), %rax
	movq	2640(%rax), %r8
	movq	-168(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %rsi
	leaq	-192(%rbp), %rdi
	leaq	-196(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L542
	movl	-196(%rbp), %eax
	testl	%eax, %eax
	jle	.L542
	movl	-196(%rbp), %edx
	movq	-216(%rbp), %rax
	movq	2184(%rax), %rax
	movslq	%edx, %rdx
	movq	%rdx, 8(%rax)
	movq	-216(%rbp), %rax
	movl	$1, 1168(%rax)
	movq	-168(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, 1248(%rax)
	movq	-216(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 720(%rax)
	movq	$0, -168(%rbp)
	movq	-192(%rbp), %rax
	testq	%rax, %rax
	jne	.L545
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_ciphers@PLT
	movq	%rax, %rdx
	movq	-216(%rbp), %rax
	movq	1248(%rax), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_choose_cipher@PLT
	movq	%rax, -192(%rbp)
.L545:
	movq	-192(%rbp), %rax
	testq	%rax, %rax
	jne	.L546
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1998, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$193, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L546:
	movq	-216(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-192(%rbp), %rdx
	movq	%rdx, 760(%rax)
	movq	-216(%rbp), %rax
	movq	1256(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-216(%rbp), %rax
	movq	1248(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_dup@PLT
	movq	-216(%rbp), %rdx
	movq	%rax, 1256(%rdx)
	movq	-216(%rbp), %rax
	movq	1264(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-216(%rbp), %rax
	movq	1248(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_dup@PLT
	movq	-216(%rbp), %rdx
	movq	%rax, 1264(%rdx)
.L542:
	movq	-216(%rbp), %rax
	movq	$0, 800(%rax)
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L547
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L547
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L547
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	cmpq	$1, %rax
	je	.L549
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2023, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$341, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L547:
	movq	-216(%rbp), %rax
	movq	2184(%rax), %rax
	movl	752(%rax), %eax
	testl	%eax, %eax
	je	.L550
	movq	-216(%rbp), %rax
	movq	2184(%rax), %rax
	movl	752(%rax), %eax
	movl	%eax, -156(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_allow_compression@PLT
	testl	%eax, %eax
	jne	.L551
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2036, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$340, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L551:
	movl	$0, -44(%rbp)
	jmp	.L552
.L555:
	movq	-80(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_COMP_sk_type
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -156(%rbp)
	jne	.L553
	movq	-216(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 800(%rax)
	jmp	.L554
.L553:
	addl	$1, -44(%rbp)
.L552:
	movq	-80(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_COMP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -44(%rbp)
	jl	.L555
.L554:
	movq	-216(%rbp), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	jne	.L556
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2049, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$341, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L556:
	movl	$0, -48(%rbp)
	jmp	.L557
.L560:
	movq	-72(%rbp), %rdx
	movl	-48(%rbp), %eax
	movzbl	368(%rdx,%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -156(%rbp)
	je	.L585
	addl	$1, -48(%rbp)
.L557:
	movl	-48(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L560
	jmp	.L559
.L585:
	nop
.L559:
	movl	-48(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L549
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2059, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$342, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L550:
	movq	-216(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L561
	movq	$0, -40(%rbp)
	jmp	.L549
.L561:
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_allow_compression@PLT
	testl	%eax, %eax
	je	.L549
	movq	-80(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L549
	movl	$0, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_COMP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -148(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L562
.L569:
	movq	-80(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_COMP_sk_type
	movq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -152(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L563
.L566:
	movq	-72(%rbp), %rdx
	movl	-60(%rbp), %eax
	movzbl	368(%rdx,%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -152(%rbp)
	jne	.L564
	movl	$1, -56(%rbp)
	jmp	.L565
.L564:
	addl	$1, -60(%rbp)
.L563:
	movl	-60(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L566
.L565:
	cmpl	$0, -56(%rbp)
	jne	.L586
	addl	$1, -52(%rbp)
.L562:
	movl	-52(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L569
	jmp	.L568
.L586:
	nop
.L568:
	cmpl	$0, -56(%rbp)
	je	.L570
	movq	-216(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 800(%rax)
	jmp	.L549
.L570:
	movq	$0, -40(%rbp)
.L549:
	movq	-216(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L571
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L572
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L572
	movq	-216(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L572
.L571:
	movq	-216(%rbp), %rax
	movq	1248(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-168(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, 1248(%rax)
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	jne	.L573
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-216(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L494
.L573:
	movq	$0, -168(%rbp)
.L572:
	movq	-216(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L574
	cmpq	$0, -40(%rbp)
	je	.L575
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	jmp	.L576
.L575:
	movl	$0, %edx
.L576:
	movq	-216(%rbp), %rax
	movq	2184(%rax), %rax
	movl	%edx, 752(%rax)
.L574:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-72(%rbp), %rax
	movq	648(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2123, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-216(%rbp), %rax
	movq	2752(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-216(%rbp), %rax
	movq	$0, 2752(%rax)
	movl	$1, %eax
	jmp	.L577
.L578:
	nop
	jmp	.L494
.L579:
	nop
	jmp	.L494
.L580:
	nop
	jmp	.L494
.L581:
	nop
	jmp	.L494
.L583:
	nop
	jmp	.L494
.L584:
	nop
.L494:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-72(%rbp), %rax
	movq	648(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2130, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-216(%rbp), %rax
	movq	2752(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2131, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-216(%rbp), %rax
	movq	$0, 2752(%rax)
	movl	$0, %eax
.L577:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE804:
	.size	tls_early_post_process_client_hello, .-tls_early_post_process_client_hello
	.type	tls_handle_status_request, @function
tls_handle_status_request:
.LFB805:
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
	movl	$0, 2500(%rax)
	movq	-24(%rbp), %rax
	movl	2480(%rax), %eax
	cmpl	$-1, %eax
	je	.L588
	cmpq	$0, -8(%rbp)
	je	.L588
	movq	-8(%rbp), %rax
	movq	600(%rax), %rax
	testq	%rax, %rax
	je	.L588
	movq	-24(%rbp), %rax
	movq	872(%rax), %rax
	testq	%rax, %rax
	je	.L588
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	872(%rdx), %rdx
	movq	%rdx, (%rax)
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
	je	.L589
	cmpl	$3, -12(%rbp)
	jne	.L590
	movq	-24(%rbp), %rax
	movl	$0, 2500(%rax)
	jmp	.L588
.L589:
	movq	-24(%rbp), %rax
	movq	2520(%rax), %rax
	testq	%rax, %rax
	je	.L593
	movq	-24(%rbp), %rax
	movl	$1, 2500(%rax)
	jmp	.L593
.L590:
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2179, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$226, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L592
.L593:
	nop
.L588:
	movl	$1, %eax
.L592:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE805:
	.size	tls_handle_status_request, .-tls_handle_status_request
	.globl	tls_handle_alpn
	.type	tls_handle_alpn, @function
tls_handle_alpn:
.LFB806:
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
	movq	$0, -40(%rbp)
	movb	$0, -41(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	672(%rax), %rax
	testq	%rax, %rax
	je	.L595
	movq	-56(%rbp), %rax
	movq	1112(%rax), %rax
	testq	%rax, %rax
	je	.L595
	movq	-24(%rbp), %rax
	movq	672(%rax), %r10
	movq	-24(%rbp), %rax
	movq	680(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	1120(%rax), %rax
	movl	%eax, %r8d
	movq	-56(%rbp), %rax
	movq	1112(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	leaq	-41(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L596
	movq	-56(%rbp), %rax
	movq	1096(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2206, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movzbl	-41(%rbp), %eax
	movzbl	%al, %esi
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movl	$2207, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 1096(%rdx)
	movq	-56(%rbp), %rax
	movq	1096(%rax), %rax
	testq	%rax, %rax
	jne	.L597
	movq	-56(%rbp), %rax
	movq	$0, 1104(%rax)
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2210, %esi
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
	jmp	.L604
.L597:
	movzbl	-41(%rbp), %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movq	%rdx, 1104(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 1092(%rax)
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	je	.L599
	movzbl	-41(%rbp), %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	848(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L599
	movzbl	-41(%rbp), %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L600
.L599:
	movq	-56(%rbp), %rax
	movl	$0, 2692(%rax)
	movq	-56(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L600
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L601
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2234, %esi
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
	jmp	.L604
.L601:
	movzbl	-41(%rbp), %eax
	movzbl	%al, %esi
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	2184(%rdx), %rbx
	leaq	.LC3(%rip), %rdx
	movl	$2238, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, 840(%rbx)
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	jne	.L602
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2241, %esi
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
	jmp	.L604
.L602:
	movzbl	-41(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	%dl, %edx
	movq	%rdx, 848(%rax)
.L600:
	movl	$1, %eax
	jmp	.L604
.L596:
	cmpl	$3, -28(%rbp)
	je	.L595
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2251, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$235, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L604
.L595:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	je	.L603
	movq	-56(%rbp), %rax
	movl	$0, 2692(%rax)
.L603:
	movl	$1, %eax
.L604:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE806:
	.size	tls_handle_alpn, .-tls_handle_alpn
	.globl	tls_post_process_client_hello
	.type	tls_post_process_client_hello, @function
tls_post_process_client_hello:
.LFB807:
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
	movl	%esi, -76(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpl	$3, -76(%rbp)
	jne	.L606
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	tls_early_post_process_client_hello
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L629
	cmpl	$0, -36(%rbp)
	jns	.L609
	movl	$3, %eax
	jmp	.L610
.L609:
	movl	$4, -76(%rbp)
.L606:
	cmpl	$4, -76(%rbp)
	jne	.L611
	movq	-72(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L612
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L613
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L613
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L613
.L612:
	movq	-72(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L614
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L614
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	movq	96(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	movq	104(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.L615
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2293, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$377, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L608
.L615:
	cmpl	$0, -40(%rbp)
	jns	.L616
	movq	-72(%rbp), %rax
	movl	$4, 104(%rax)
	movl	$4, %eax
	jmp	.L610
.L616:
	movq	-72(%rbp), %rax
	movl	$1, 104(%rax)
.L614:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L617
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L617
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L618
.L617:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_ciphers@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	1248(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_choose_cipher@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L619
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2310, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$193, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L608
.L619:
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 704(%rax)
.L618:
	movq	-72(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L631
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tls_choose_sigalg@PLT
	testl	%eax, %eax
	je	.L630
	movq	-72(%rbp), %rax
	movq	3000(%rax), %rax
	testq	%rax, %rax
	je	.L622
	movq	-72(%rbp), %rax
	movq	3000(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	andl	$6, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rbx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, 688(%rbx)
.L622:
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movl	688(%rax), %eax
	testl	%eax, %eax
	je	.L631
	movq	-72(%rbp), %rax
	movl	$0, 2536(%rax)
	jmp	.L631
.L613:
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 704(%rax)
	jmp	.L623
.L631:
	nop
.L623:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	tls_handle_status_request
	testl	%eax, %eax
	je	.L632
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L625
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L625
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L626
.L625:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	tls_handle_alpn@PLT
	testl	%eax, %eax
	je	.L633
.L626:
	movl	$5, -76(%rbp)
.L611:
	cmpl	$5, -76(%rbp)
	jne	.L627
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_check_srp_ext_ClientHello
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L628
	movq	-72(%rbp), %rax
	movl	$4, 104(%rax)
	movl	$5, %eax
	jmp	.L610
.L628:
	cmpl	$0, -52(%rbp)
	js	.L634
.L627:
	movl	$1, %eax
	jmp	.L610
.L629:
	nop
	jmp	.L608
.L630:
	nop
	jmp	.L608
.L632:
	nop
	jmp	.L608
.L633:
	nop
	jmp	.L608
.L634:
	nop
.L608:
	movl	$0, %eax
.L610:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE807:
	.size	tls_post_process_client_hello, .-tls_post_process_client_hello
	.globl	tls_construct_server_hello
	.type	tls_construct_server_hello, @function
tls_construct_server_hello:
.LFB808:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L636
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L636
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L637
.L636:
	movq	-56(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L638
.L637:
	movl	$1, %eax
	jmp	.L639
.L638:
	movl	$0, %eax
.L639:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L640
	movq	-56(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L641
.L640:
	movl	$771, -20(%rbp)
.L641:
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L642
	movq	-56(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	je	.L643
	movq	-56(%rbp), %rax
	leaq	296(%rax), %rcx
	jmp	.L644
.L643:
	movq	hrrrandom@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
.L644:
	movq	-64(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L645
.L642:
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2410, %esi
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
	jmp	.L663
.L645:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L647
	movq	-56(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L647
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 592(%rax)
.L647:
	cmpl	$0, -36(%rbp)
	je	.L648
	movq	-56(%rbp), %rax
	movq	2256(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	addq	$2224, %rax
	movq	%rax, -32(%rbp)
	jmp	.L649
.L648:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	592(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	addq	$600, %rax
	movq	%rax, -32(%rbp)
.L649:
	cmpq	$32, -16(%rbp)
	jbe	.L650
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2445, %esi
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
	jmp	.L663
.L650:
	cmpl	$0, -36(%rbp)
	jne	.L651
	movq	-56(%rbp), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	jne	.L652
.L651:
	movl	$0, -4(%rbp)
	jmp	.L653
.L652:
	movq	-56(%rbp), %rax
	movq	800(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L653:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L654
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	176(%rax), %r8
	movq	-56(%rbp), %rax
	movq	704(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L654
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L655
.L654:
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2463, %esi
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
	jmp	.L663
.L655:
	movq	-56(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	je	.L656
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L657
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L657
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L657
	movl	$512, %eax
	jmp	.L659
.L657:
	movl	$256, %eax
	jmp	.L659
.L656:
	movl	$2048, %eax
.L659:
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	%eax, %edx
	call	tls_construct_extensions@PLT
	testl	%eax, %eax
	jne	.L660
	movl	$0, %eax
	jmp	.L663
.L660:
	movq	-56(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L661
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 2184(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 1168(%rax)
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	create_synthetic_message_hash@PLT
	testl	%eax, %eax
	jne	.L662
	movl	$0, %eax
	jmp	.L663
.L661:
	movq	-56(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L662
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	jne	.L662
	movl	$0, %eax
	jmp	.L663
.L662:
	movl	$1, %eax
.L663:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE808:
	.size	tls_construct_server_hello, .-tls_construct_server_hello
	.globl	tls_construct_server_done
	.type	tls_construct_server_done, @function
tls_construct_server_done:
.LFB809:
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
	movl	808(%rax), %eax
	testl	%eax, %eax
	jne	.L665
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	jne	.L665
	movl	$0, %eax
	jmp	.L666
.L665:
	movl	$1, %eax
.L666:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE809:
	.size	tls_construct_server_done, .-tls_construct_server_done
	.section	.rodata
.LC5:
	.string	"p"
.LC6:
	.string	"g"
.LC7:
	.string	"pub"
	.text
	.globl	tls_construct_server_key_exchange
	.type	tls_construct_server_key_exchange, @function
tls_construct_server_key_exchange:
.LFB810:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$272, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-280(%rbp), %rax
	movq	864(%rax), %rax
	movq	%rax, -48(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -96(%rbp)
	movq	$0, -200(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	leaq	-216(%rbp), %rdx
	movq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	jne	.L668
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2531, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L668:
	cmpq	$0, -96(%rbp)
	jne	.L670
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2536, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L670:
	movq	-280(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -112(%rbp)
	movq	$0, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-112(%rbp), %rax
	andl	$72, %eax
	testq	%rax, %rax
	jne	.L671
	movq	-112(%rbp), %rax
	andl	$258, %eax
	testq	%rax, %rax
	je	.L672
	movq	-280(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	$0, -72(%rbp)
	movq	-280(%rbp), %rax
	movq	2056(%rax), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L673
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_auto_dh@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L674
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2555, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L674:
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L675
.L673:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
.L675:
	cmpq	$0, -72(%rbp)
	jne	.L676
	movq	-280(%rbp), %rax
	movq	2056(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L676
	movq	-280(%rbp), %rax
	movq	2056(%rax), %rax
	movq	16(%rax), %rcx
	movq	-280(%rbp), %rax
	movq	64(%rax), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, %rdi
	call	ssl_dh_to_pkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L677
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2567, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L677:
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
.L676:
	cmpq	$0, -72(%rbp)
	jne	.L678
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2574, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$171, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L678:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movq	-280(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$262151, %esi
	movq	%rax, %rdi
	call	ssl_security@PLT
	testl	%eax, %eax
	jne	.L679
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2579, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$394, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L679:
	movq	-280(%rbp), %rax
	movq	712(%rax), %rax
	testq	%rax, %rax
	je	.L680
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2583, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L680:
	movq	-72(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_generate_pkey@PLT
	movq	-280(%rbp), %rdx
	movq	%rax, 712(%rdx)
	movq	-280(%rbp), %rax
	movq	712(%rax), %rax
	testq	%rax, %rax
	jne	.L681
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2589, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L681:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -24(%rbp)
	movl	$1, -56(%rbp)
	movq	-280(%rbp), %rax
	movq	712(%rax), %rax
	leaq	-192(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	je	.L682
	movq	-280(%rbp), %rax
	movq	712(%rax), %rax
	leaq	-192(%rbp), %rdx
	addq	$8, %rdx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	je	.L682
	movq	-280(%rbp), %rax
	movq	712(%rax), %rax
	leaq	-192(%rbp), %rdx
	addq	$16, %rdx
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_bn_param@PLT
	testl	%eax, %eax
	jne	.L671
.L682:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2604, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L672:
	movq	-112(%rbp), %rax
	andl	$132, %eax
	testq	%rax, %rax
	je	.L683
	movq	-280(%rbp), %rax
	movq	712(%rax), %rax
	testq	%rax, %rax
	je	.L684
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2610, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L684:
	movq	-280(%rbp), %rax
	movl	$-2, %esi
	movq	%rax, %rdi
	call	tls1_shared_group@PLT
	movzwl	%ax, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L685
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2617, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$315, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L685:
	movq	-280(%rbp), %rax
	movq	2184(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 776(%rax)
	movl	-36(%rbp), %eax
	movzwl	%ax, %edx
	movq	-280(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_generate_pkey_group@PLT
	movq	-280(%rbp), %rdx
	movq	%rax, 712(%rdx)
	movq	-280(%rbp), %rax
	movq	712(%rax), %rax
	testq	%rax, %rax
	je	.L728
	movq	-280(%rbp), %rax
	movq	712(%rax), %rax
	leaq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get1_encoded_public_key@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L687
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2634, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$524304, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L687:
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	jmp	.L671
.L683:
	movq	-112(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L688
	movq	-280(%rbp), %rax
	movq	2912(%rax), %rax
	testq	%rax, %rax
	je	.L689
	movq	-280(%rbp), %rax
	movq	2920(%rax), %rax
	testq	%rax, %rax
	je	.L689
	movq	-280(%rbp), %rax
	movq	2928(%rax), %rax
	testq	%rax, %rax
	je	.L689
	movq	-280(%rbp), %rax
	movq	2936(%rax), %rax
	testq	%rax, %rax
	jne	.L690
.L689:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2652, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$358, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L690:
	movq	-280(%rbp), %rax
	movq	2912(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-280(%rbp), %rax
	movq	2920(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-280(%rbp), %rax
	movq	2928(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-280(%rbp), %rax
	movq	2936(%rax), %rax
	movq	%rax, -168(%rbp)
	jmp	.L671
.L688:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2662, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$250, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L671:
	movq	-280(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$68, %eax
	testl	%eax, %eax
	jne	.L691
	movq	-280(%rbp), %rax
	movq	704(%rax), %rax
	movl	28(%rax), %eax
	andl	$456, %eax
	testl	%eax, %eax
	je	.L692
.L691:
	movq	$0, -48(%rbp)
	jmp	.L693
.L692:
	cmpq	$0, -48(%rbp)
	jne	.L693
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2670, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L693:
	movq	-112(%rbp), %rax
	andl	$456, %eax
	testq	%rax, %rax
	je	.L694
	movq	-280(%rbp), %rax
	movq	2056(%rax), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L695
	movq	-280(%rbp), %rax
	movq	2056(%rax), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -80(%rbp)
	jmp	.L696
.L695:
	movq	$0, -80(%rbp)
.L696:
	cmpq	$256, -80(%rbp)
	ja	.L697
	movq	-280(%rbp), %rax
	movq	2056(%rax), %rax
	movq	168(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-288(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L694
.L697:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2686, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L694:
	movl	$0, -52(%rbp)
	jmp	.L698
.L708:
	cmpl	$2, -52(%rbp)
	jne	.L699
	movq	-112(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L699
	movq	-288(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	movl	%eax, -84(%rbp)
	jmp	.L700
.L699:
	movq	-288(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	movl	%eax, -84(%rbp)
.L700:
	cmpl	$0, -84(%rbp)
	jne	.L701
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2704, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L701:
	cmpl	$2, -52(%rbp)
	jne	.L703
	movq	-112(%rbp), %rax
	andl	$258, %eax
	testq	%rax, %rax
	je	.L703
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ebx
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	negl	%eax
	addl	%ebx, %eax
	cltq
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L703
	leaq	-224(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L704
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2718, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L704:
	movq	-224(%rbp), %rax
	movq	-128(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L703:
	movl	-52(%rbp), %eax
	cltq
	movq	-192(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rcx
	leaq	-224(%rbp), %rdx
	movq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L705
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L706
.L705:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2727, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L706:
	movq	-224(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	movq	-192(%rbp,%rax,8), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	addl	$1, -52(%rbp)
.L698:
	cmpl	$3, -52(%rbp)
	jg	.L707
	movl	-52(%rbp), %eax
	cltq
	movq	-192(%rbp,%rax,8), %rax
	testq	%rax, %rax
	jne	.L708
.L707:
	movq	-112(%rbp), %rax
	andl	$132, %eax
	testq	%rax, %rax
	je	.L709
	movq	-288(%rbp), %rax
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L710
	movq	-288(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L710
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-288(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L710
	movq	-152(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-288(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L711
.L710:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2745, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L711:
	movq	-152(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2748, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -152(%rbp)
.L709:
	cmpq	$0, -48(%rbp)
	je	.L712
	movq	-280(%rbp), %rax
	movq	872(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	$0, -264(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L713
	leaq	-232(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_lookup_md@PLT
	testl	%eax, %eax
	jne	.L714
.L713:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2761, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L714:
	leaq	-208(%rbp), %rdx
	movq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	jne	.L716
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2766, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L716:
	movq	-280(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L717
	movq	-48(%rbp), %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %ecx
	movq	-288(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L717
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2771, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L717:
	movq	-104(%rbp), %rax
	movq	1096(%rax), %r12
	movq	-104(%rbp), %rax
	movq	(%rax), %rbx
	movq	-232(%rbp), %rax
	testq	%rax, %rax
	je	.L718
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	jmp	.L719
.L718:
	movl	$0, %edx
.L719:
	movq	-136(%rbp), %rcx
	leaq	-200(%rbp), %rsi
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L720
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2779, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L720:
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$912, %eax
	jne	.L721
	movq	-200(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jle	.L722
	movq	-200(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_pss_saltlen@PLT
	testl	%eax, %eax
	jg	.L721
.L722:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2785, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L721:
	movq	-208(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rcx
	movq	-216(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	leaq	-256(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	construct_key_exchange_tbs@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L729
	movq	-256(%rbp), %rcx
	movq	-144(%rbp), %rsi
	leaq	-264(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	jle	.L724
	movq	-264(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movq	-288(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_reserve_bytes__@PLT
	testl	%eax, %eax
	je	.L724
	movq	-256(%rbp), %rcx
	movq	-240(%rbp), %rsi
	movq	-144(%rbp), %rdi
	leaq	-264(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	jle	.L724
	movq	-264(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	movq	-288(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_allocate_bytes__@PLT
	testl	%eax, %eax
	je	.L724
	movq	-240(%rbp), %rdx
	movq	-248(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L725
.L724:
	movq	-256(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2802, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2803, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L669
.L725:
	movq	-256(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2806, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L712:
	movl	$1, -60(%rbp)
	jmp	.L669
.L728:
	nop
	jmp	.L669
.L729:
	nop
.L669:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-152(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2812, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	cmpl	$0, -56(%rbp)
	je	.L726
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L726:
	movl	-60(%rbp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE810:
	.size	tls_construct_server_key_exchange, .-tls_construct_server_key_exchange
	.globl	tls_construct_certificate_request
	.type	tls_construct_certificate_request, @function
tls_construct_certificate_request:
.LFB811:
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
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L731
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L731
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L731
	movq	-24(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$3, %eax
	jne	.L732
	movq	-24(%rbp), %rax
	movq	2840(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2829, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$32, 2848(%rax)
	movq	-24(%rbp), %rax
	movq	2848(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2831, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2840(%rax)
	movq	-24(%rbp), %rax
	movq	2840(%rax), %rax
	testq	%rax, %rax
	jne	.L733
	movq	-24(%rbp), %rax
	movq	$0, 2848(%rax)
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2833, %esi
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
	jmp	.L734
.L733:
	movq	-24(%rbp), %rax
	movq	2848(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	2840(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L735
	movq	-24(%rbp), %rax
	movq	2848(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	2840(%rax), %rsi
	movq	-32(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L736
.L735:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2840, %esi
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
	jmp	.L734
.L736:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tls13_restore_handshake_digest_for_pha@PLT
	testl	%eax, %eax
	jne	.L737
	movl	$0, %eax
	jmp	.L734
.L732:
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L737
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2850, %esi
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
	jmp	.L734
.L737:
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$16384, %edx
	movq	%rax, %rdi
	call	tls_construct_extensions@PLT
	testl	%eax, %eax
	jne	.L745
	movl	$0, %eax
	jmp	.L734
.L731:
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L740
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl3_get_req_cert_type@PLT
	testl	%eax, %eax
	je	.L740
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L741
.L740:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2867, %esi
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
	jmp	.L734
.L741:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L742
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tls12_get_psigalgs@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L743
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_set_flags@PLT
	testl	%eax, %eax
	je	.L743
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tls12_copy_sigalgs@PLT
	testl	%eax, %eax
	je	.L743
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L742
.L743:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2879, %esi
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
	jmp	.L734
.L742:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_ca_names@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	construct_ca_names@PLT
	testl	%eax, %eax
	jne	.L746
	movl	$0, %eax
	jmp	.L734
.L745:
	nop
	jmp	.L739
.L746:
	nop
.L739:
	movq	-24(%rbp), %rax
	movl	2856(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 2856(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 808(%rax)
	movl	$1, %eax
.L734:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE811:
	.size	tls_construct_certificate_request, .-tls_construct_certificate_request
	.type	tls_process_cke_psk_preamble, @function
tls_process_cke_psk_preamble:
.LFB812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movq	%rdi, -552(%rbp)
	movq	%rsi, -560(%rbp)
	leaq	-544(%rbp), %rdx
	movq	-560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L748
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2903, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-552(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L756
.L748:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$256, %rax
	jbe	.L750
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2907, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-552(%rbp), %rax
	movl	$0, %ecx
	movl	$146, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L756
.L750:
	movq	-552(%rbp), %rax
	movq	2304(%rax), %rax
	testq	%rax, %rax
	jne	.L751
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2911, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-552(%rbp), %rax
	movl	$0, %ecx
	movl	$225, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L756
.L751:
	movq	-552(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	680(%rax), %rdx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_strndup
	testl	%eax, %eax
	jne	.L752
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2916, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-552(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L756
.L752:
	movq	-552(%rbp), %rax
	movq	2304(%rax), %r8
	movq	-552(%rbp), %rax
	movq	2184(%rax), %rax
	movq	680(%rax), %rsi
	movq	-552(%rbp), %rax
	movq	64(%rax), %rax
	leaq	-528(%rbp), %rdx
	movl	$512, %ecx
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	cmpq	$512, -8(%rbp)
	jbe	.L753
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2925, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-552(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L756
.L753:
	cmpq	$0, -8(%rbp)
	jne	.L754
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2931, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-552(%rbp), %rax
	movl	$0, %ecx
	movl	$223, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L756
.L754:
	movq	-552(%rbp), %rax
	movq	848(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2935, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rsi
	leaq	-528(%rbp), %rax
	movl	$2936, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-552(%rbp), %rdx
	movq	%rax, 848(%rdx)
	movq	-8(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-552(%rbp), %rax
	movq	848(%rax), %rax
	testq	%rax, %rax
	jne	.L755
	movq	-552(%rbp), %rax
	movq	$0, 856(%rax)
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2941, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-552(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L756
.L755:
	movq	-552(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 856(%rax)
	movl	$1, %eax
.L756:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE812:
	.size	tls_process_cke_psk_preamble, .-tls_process_cke_psk_preamble
	.section	.rodata
.LC8:
	.string	"tls-client-version"
.LC9:
	.string	"tls-negotiated-version"
	.text
	.type	tls_process_cke_rsa, @function
tls_process_cke_rsa:
.LFB813:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -56(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-232(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L758
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2968, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$168, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L774
.L758:
	movq	-232(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	je	.L760
	movq	-232(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$256, %eax
	jne	.L761
.L760:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	jmp	.L762
.L761:
	leaq	-96(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L763
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L762
.L763:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2978, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L774
.L762:
	movq	$48, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$2984, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L764
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2986, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L774
.L764:
	movq	-64(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L765
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$2992, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L766
.L765:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	testl	%eax, %eax
	jle	.L767
	movq	-56(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jg	.L768
.L767:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3009, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$147, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L766
.L768:
	movq	-232(%rbp), %rax
	leaq	2396(%rax), %rdx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-288(%rbp), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-232(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$8388608, %eax
	testq	%rax, %rax
	je	.L769
	movq	-232(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-288(%rbp), %rax
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rbx)
.L769:
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-224(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	je	.L770
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	testl	%eax, %eax
	jg	.L771
.L770:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3025, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$147, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L766
.L771:
	movq	-72(%rbp), %rax
	cmpq	$48, %rax
	je	.L772
	movq	-48(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3035, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$147, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L766
.L772:
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_generate_master_secret@PLT
	testl	%eax, %eax
	je	.L775
	movl	$1, -20(%rbp)
	jmp	.L766
.L775:
	nop
.L766:
	leaq	.LC3(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$3047, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
.L774:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE813:
	.size	tls_process_cke_rsa, .-tls_process_cke_rsa
	.type	tls_process_cke_dhe, @function
tls_process_cke_dhe:
.LFB814:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	leaq	-28(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L777
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	-28(%rbp), %edx
	movl	%edx, %edx
	cmpq	%rdx, %rax
	je	.L778
.L777:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3061, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$148, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L779
.L778:
	movq	-56(%rbp), %rax
	movq	712(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L780
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3066, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$171, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L779
.L780:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L781
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3071, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$171, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L779
.L781:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	leaq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L782
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3076, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L779
.L782:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L783
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	jne	.L784
.L783:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3081, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$296, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L779
.L784:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_encoded_public_key@PLT
	testl	%eax, %eax
	jne	.L785
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3086, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$108, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L779
.L785:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_derive@PLT
	testl	%eax, %eax
	je	.L788
	movl	$1, -12(%rbp)
	movq	-56(%rbp), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 712(%rax)
	jmp	.L779
.L788:
	nop
.L779:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE814:
	.size	tls_process_cke_dhe, .-tls_process_cke_dhe
	.type	tls_process_cke_ecdhe, @function
tls_process_cke_ecdhe:
.LFB815:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	712(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L790
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3111, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$311, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L791
.L790:
	leaq	-28(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L792
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	leaq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L792
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L793
.L792:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L791
.L793:
	cmpq	$0, -24(%rbp)
	jne	.L795
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3129, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$311, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L791
.L795:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L796
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	jg	.L797
.L796:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$296, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L791
.L797:
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_encoded_public_key@PLT
	testl	%eax, %eax
	jg	.L798
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3140, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$108, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L791
.L798:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_derive@PLT
	testl	%eax, %eax
	je	.L802
	movl	$1, -12(%rbp)
	movq	-56(%rbp), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 712(%rax)
	jmp	.L791
.L802:
	nop
.L791:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE815:
	.size	tls_process_cke_ecdhe, .-tls_process_cke_ecdhe
	.type	tls_process_cke_srp, @function
tls_process_cke_srp:
.LFB816:
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
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L804
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L805
.L804:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3167, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$347, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L812
.L805:
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 2944(%rdx)
	movq	-40(%rbp), %rax
	movq	2944(%rax), %rax
	testq	%rax, %rax
	jne	.L807
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$524291, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L812
.L807:
	movq	-40(%rbp), %rax
	movq	2912(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	2944(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L808
	movq	-40(%rbp), %rax
	movq	2944(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L809
.L808:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$371, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L812
.L809:
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	864(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$3178, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	2904(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	2184(%rdx), %rbx
	leaq	.LC3(%rip), %rcx
	movl	$3179, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, 864(%rbx)
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	864(%rax), %rax
	testq	%rax, %rax
	jne	.L810
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3181, %esi
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
	jmp	.L812
.L810:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	srp_generate_server_master_secret@PLT
	testl	%eax, %eax
	jne	.L811
	movl	$0, %eax
	jmp	.L812
.L811:
	movl	$1, %eax
.L812:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE816:
	.size	tls_process_cke_srp, .-tls_process_cke_srp
	.type	tls_process_cke_gost, @function
tls_process_cke_gost:
.LFB817:
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
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$32, -136(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	je	.L814
	movq	-152(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	addq	$240, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L815
	movq	-152(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	addq	$200, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L815:
	cmpq	$0, -24(%rbp)
	jne	.L816
	movq	-152(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	addq	$160, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L816
.L814:
	movq	-64(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L816
	movq	-152(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	addq	$160, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L816:
	movq	-56(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L817
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3231, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L829
.L817:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	testl	%eax, %eax
	jg	.L819
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3235, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L820
.L819:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	tls_get_peer_pkey@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L821
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive_set_peer@PLT
	testl	%eax, %eax
	jg	.L821
	call	ERR_clear_error@PLT
.L821:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -144(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_GOST_KX_MESSAGE@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L822
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L822
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_get@PLT
	cmpl	$16, %eax
	je	.L823
.L822:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3257, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$147, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L820
.L823:
	movq	-144(%rbp), %rbx
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L824
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3262, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$147, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L820
.L824:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L825
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3267, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$147, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L820
.L825:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	leaq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	testl	%eax, %eax
	jg	.L826
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3276, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$147, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L820
.L826:
	movq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_generate_master_secret@PLT
	testl	%eax, %eax
	je	.L830
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	$2, %r8d
	movl	$2, %ecx
	movl	$-1, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L828
	movq	-152(%rbp), %rax
	movl	$1, 196(%rax)
.L828:
	movl	$1, -36(%rbp)
	jmp	.L820
.L830:
	nop
.L820:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	GOST_KX_MESSAGE_free@PLT
	movl	-36(%rbp), %eax
.L829:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE817:
	.size	tls_process_cke_gost, .-tls_process_cke_gost
	.type	tls_process_cke_gost18, @function
tls_process_cke_gost18:
.LFB818:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$32, -136(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_gost18_cke_cipher_nid@PLT
	movl	%eax, -44(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L832
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3315, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L845
.L832:
	leaq	-96(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gost_ukm@PLT
	testl	%eax, %eax
	jg	.L834
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3320, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L835
.L834:
	movq	-152(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	addq	$240, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L836
	movq	-152(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	addq	$240, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L837
.L836:
	movq	-152(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	addq	$200, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L837:
	cmpq	$0, -16(%rbp)
	jne	.L838
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3329, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$236, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L835
.L838:
	movq	-56(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L839
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3335, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L835
.L839:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	testl	%eax, %eax
	jg	.L840
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L835
.L840:
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	movl	$32, %r8d
	movl	$8, %ecx
	movl	$1024, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L841
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3346, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$274, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L835
.L841:
	movl	-44(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	%edx, %r8d
	movl	$12, %ecx
	movl	$1024, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L842
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3352, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$274, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L835
.L842:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -40(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	leaq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	testl	%eax, %eax
	jg	.L843
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3359, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$147, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L835
.L843:
	movq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_generate_master_secret@PLT
	testl	%eax, %eax
	je	.L846
	movl	$1, -20(%rbp)
	jmp	.L835
.L846:
	nop
.L835:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	-20(%rbp), %eax
.L845:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE818:
	.size	tls_process_cke_gost18, .-tls_process_cke_gost18
	.globl	tls_process_client_key_exchange
	.type	tls_process_client_key_exchange, @function
tls_process_client_key_exchange:
.LFB819:
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
	je	.L848
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_cke_psk_preamble
	testl	%eax, %eax
	je	.L860
.L848:
	movq	-8(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L850
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L851
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3395, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L849
.L851:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_generate_master_secret@PLT
	testl	%eax, %eax
	jne	.L852
	jmp	.L849
.L850:
	movq	-8(%rbp), %rax
	andl	$65, %eax
	testq	%rax, %rax
	je	.L853
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_cke_rsa
	testl	%eax, %eax
	jne	.L852
	jmp	.L849
.L853:
	movq	-8(%rbp), %rax
	andl	$258, %eax
	testq	%rax, %rax
	je	.L854
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_cke_dhe
	testl	%eax, %eax
	jne	.L852
	jmp	.L849
.L854:
	movq	-8(%rbp), %rax
	andl	$132, %eax
	testq	%rax, %rax
	je	.L855
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_cke_ecdhe
	testl	%eax, %eax
	jne	.L852
	jmp	.L849
.L855:
	movq	-8(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L856
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_cke_srp
	testl	%eax, %eax
	jne	.L852
	jmp	.L849
.L856:
	movq	-8(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L857
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_cke_gost
	testl	%eax, %eax
	jne	.L852
	jmp	.L849
.L857:
	movq	-8(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L858
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_cke_gost18
	testl	%eax, %eax
	jne	.L852
	jmp	.L849
.L858:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3434, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$249, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L849
.L852:
	movl	$2, %eax
	jmp	.L859
.L860:
	nop
.L849:
	movq	-24(%rbp), %rax
	movq	856(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	848(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movl	$3441, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 848(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 856(%rax)
	movl	$0, %eax
.L859:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE819:
	.size	tls_process_client_key_exchange, .-tls_process_client_key_exchange
	.globl	tls_post_process_client_key_exchange
	.type	tls_post_process_client_key_exchange, @function
tls_post_process_client_key_exchange:
.LFB820:
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
	movl	196(%rax), %eax
	testl	%eax, %eax
	jne	.L862
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	received_client_cert
	testl	%eax, %eax
	jne	.L863
.L862:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	jne	.L864
	movl	$0, %eax
	jmp	.L865
.L864:
	movl	$2, %eax
	jmp	.L865
.L863:
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L866
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3496, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L865
.L866:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	jne	.L867
	movl	$0, %eax
	jmp	.L865
.L867:
	movl	$2, %eax
.L865:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE820:
	.size	tls_post_process_client_key_exchange, .-tls_post_process_client_key_exchange
	.globl	tls_process_client_rpk
	.type	tls_process_client_rpk, @function
tls_process_client_rpk:
.LFB821:
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
	movq	%rsi, -64(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_process_rpk@PLT
	testl	%eax, %eax
	je	.L879
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L871
	movq	-56(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L872
	movq	-56(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L872
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3526, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$199, %edx
	movl	$116, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L870
.L871:
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_verify_rpk@PLT
	testl	%eax, %eax
	jg	.L872
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3532, %esi
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
	jmp	.L870
.L872:
	movq	-56(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	jne	.L873
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_session_dup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L874
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3548, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786688, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L870
.L874:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2184(%rax)
.L873:
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
	movq	696(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 696(%rax)
	movq	$0, -40(%rbp)
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
	jne	.L875
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L875
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L875
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	je	.L880
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
	je	.L881
	movq	-56(%rbp), %rax
	movq	$0, 5304(%rax)
.L875:
	movl	$3, -20(%rbp)
	jmp	.L870
.L879:
	nop
	jmp	.L870
.L880:
	nop
	jmp	.L870
.L881:
	nop
.L870:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE821:
	.size	tls_process_client_rpk, .-tls_process_client_rpk
	.globl	tls_process_client_certificate
	.type	tls_process_client_certificate, @function
tls_process_client_certificate:
.LFB822:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-184(%rbp), %rax
	movq	3032(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L883
	movq	-184(%rbp), %rax
	movq	3032(%rax), %rax
	movq	104(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	3048(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
.L883:
	movq	-184(%rbp), %rax
	movzbl	2744(%rax), %eax
	cmpb	$2, %al
	jne	.L884
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_client_rpk@PLT
	jmp	.L917
.L884:
	movq	-184(%rbp), %rax
	movzbl	2744(%rax), %eax
	testb	%al, %al
	je	.L886
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3622, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$247, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L886:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L888
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3628, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L888:
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L889
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L889
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L889
	leaq	-144(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L890
	movq	-184(%rbp), %rax
	movq	2840(%rax), %rax
	testq	%rax, %rax
	jne	.L891
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L890
.L891:
	movq	-184(%rbp), %rax
	movq	2840(%rax), %rax
	testq	%rax, %rax
	je	.L889
	movq	-184(%rbp), %rax
	movq	2848(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	2840(%rax), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	jne	.L889
.L890:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3638, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$282, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L889:
	leaq	-128(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_3
	testl	%eax, %eax
	je	.L892
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L893
.L892:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3644, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L893:
	movq	$0, -40(%rbp)
	jmp	.L894
.L906:
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	testl	%eax, %eax
	je	.L895
	movq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L896
.L895:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3651, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$135, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L896:
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_new_ex@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L897
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3658, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$524299, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L897:
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	leaq	-104(%rbp), %rcx
	leaq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509@PLT
	testq	%rax, %rax
	jne	.L898
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3662, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$524301, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L898:
	movq	-96(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L899
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3667, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$135, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L899:
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L900
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L900
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L900
	movq	$0, -152(%rbp)
	leaq	-176(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L901
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3676, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L901:
	cmpq	$0, -40(%rbp)
	sete	%al
	movzbl	%al, %ecx
	leaq	-152(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	movq	-184(%rbp), %rax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$4096, %edx
	movq	%rax, %rdi
	call	tls_collect_extensions@PLT
	testl	%eax, %eax
	je	.L903
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %edi
	movq	-88(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-184(%rbp), %rax
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	$4096, %esi
	movq	%rax, %rdi
	call	tls_parse_all_extensions@PLT
	testl	%eax, %eax
	jne	.L904
.L903:
	movq	-152(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$3685, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L887
.L904:
	movq	-152(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movl	$3688, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L900:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L905
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3692, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L905:
	movq	$0, -88(%rbp)
	addq	$1, -40(%rbp)
.L894:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L906
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L907
	movq	-184(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jne	.L908
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3701, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$176, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L908:
	movq	-184(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L909
	movq	-184(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L909
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3708, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$199, %edx
	movl	$116, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L909:
	movq	-184(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L910
	movq	-184(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	jne	.L910
	jmp	.L887
.L907:
	movq	-32(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_verify_cert_chain@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jg	.L911
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3721, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movq	2336(%rax), %rax
	movl	%eax, %edi
	call	ssl_x509err2alert@PLT
	movl	%eax, %esi
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$134, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L911:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L910
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3727, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$247, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L910:
	movq	-184(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	jne	.L912
	movq	-184(%rbp), %rax
	movq	2184(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_session_dup@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L913
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3743, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$524308, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L887
.L913:
	movq	-184(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-184(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 2184(%rax)
.L912:
	movq	-184(%rbp), %rax
	movq	2184(%rax), %rax
	movq	704(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	2184(%rax), %rbx
	movq	%rdx, %rdi
	call	OPENSSL_sk_shift@PLT
	movq	%rax, 704(%rbx)
	movq	-184(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-184(%rbp), %rdx
	movq	2336(%rdx), %rdx
	movq	%rdx, 720(%rax)
	movq	-184(%rbp), %rax
	movq	2184(%rax), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-184(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 712(%rax)
	movq	$0, -32(%rbp)
	movq	-184(%rbp), %rax
	movq	2184(%rax), %rax
	movq	696(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-184(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 696(%rax)
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L914
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L914
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L914
	movq	-184(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	je	.L918
.L914:
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L915
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L915
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L915
	movq	-184(%rbp), %rax
	leaq	2128(%rax), %rdx
	movq	-184(%rbp), %rax
	leaq	2064(%rax), %rsi
	movq	-184(%rbp), %rax
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	ssl_handshake_hash@PLT
	testl	%eax, %eax
	je	.L919
	movq	-184(%rbp), %rax
	movq	$0, 5304(%rax)
.L915:
	movl	$3, -20(%rbp)
	jmp	.L887
.L918:
	nop
	jmp	.L887
.L919:
	nop
.L887:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	-20(%rbp), %eax
.L917:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE822:
	.size	tls_process_client_certificate, .-tls_process_client_certificate
	.globl	tls_construct_server_certificate
	.type	tls_construct_server_certificate, @function
tls_construct_server_certificate:
.LFB823:
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
	movq	872(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L921
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3817, %esi
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
	jmp	.L922
.L921:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L923
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L923
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L923
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L923
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3826, %esi
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
	jmp	.L922
.L923:
	movq	-24(%rbp), %rax
	movzbl	2746(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L924
	cmpl	$2, %eax
	jne	.L925
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_output_rpk@PLT
	testq	%rax, %rax
	jne	.L929
	movl	$0, %eax
	jmp	.L922
.L924:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl3_output_cert_chain@PLT
	testq	%rax, %rax
	jne	.L930
	movl	$0, %eax
	jmp	.L922
.L925:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3843, %esi
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
	jmp	.L922
.L929:
	nop
	jmp	.L927
.L930:
	nop
.L927:
	movl	$1, %eax
.L922:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE823:
	.size	tls_construct_server_certificate, .-tls_construct_server_certificate
	.type	create_ticket_prequel, @function
create_ticket_prequel:
.LFB824:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	728(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L932
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L932
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L932
	movabsq	$604800000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	728(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jle	.L934
	movl	$604800, -4(%rbp)
	jmp	.L934
.L932:
	movq	-24(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L934
	movl	$0, -4(%rbp)
.L934:
	movl	-4(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L935
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3898, %esi
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
	jmp	.L936
.L935:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L937
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L937
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L937
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L938
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$1, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L937
.L938:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3905, %esi
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
	jmp	.L936
.L937:
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L939
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3912, %esi
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
	jmp	.L936
.L939:
	movl	$1, %eax
.L936:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE824:
	.size	create_ticket_prequel, .-create_ticket_prequel
	.section	.rodata
.LC10:
	.string	"AES-256-CBC"
.LC11:
	.string	"SHA256"
	.text
	.type	construct_stateless_ticket, @function
construct_stateless_ticket:
.LFB825:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movl	%edx, -244(%rbp)
	movq	%rcx, -256(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-232(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -48(%rbp)
	movq	-232(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-232(%rbp), %rax
	movq	2184(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_SSL_SESSION@PLT
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L941
	cmpl	$65280, -84(%rbp)
	jle	.L942
.L941:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3948, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L942:
	movl	-84(%rbp), %eax
	cltq
	leaq	.LC3(%rip), %rcx
	movl	$3951, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L944
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3953, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L944:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L945
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3959, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L945:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L946
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3964, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$524308, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L946:
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-232(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_SSL_SESSION@PLT
	testl	%eax, %eax
	jne	.L947
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3970, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L947:
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	1096(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-160(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_SSL_SESSION_ex@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L948
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3981, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L948:
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_SSL_SESSION@PLT
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L949
	movl	-100(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jle	.L950
.L949:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3988, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	jmp	.L943
.L950:
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_SSL_SESSION@PLT
	testl	%eax, %eax
	jne	.L951
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3994, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	jmp	.L943
.L951:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-64(%rbp), %rax
	movq	592(%rax), %rax
	testq	%rax, %rax
	jne	.L952
	movq	-64(%rbp), %rax
	movq	584(%rax), %rax
	testq	%rax, %rax
	je	.L953
.L952:
	movl	$0, -52(%rbp)
	movq	-64(%rbp), %rax
	movq	592(%rax), %rax
	testq	%rax, %rax
	je	.L954
	movq	-64(%rbp), %rax
	movq	592(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_get0_EVP_MAC_CTX@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%rbx
	movl	%eax, -52(%rbp)
	jmp	.L955
.L954:
	movq	-64(%rbp), %rax
	movq	584(%rax), %rax
	testq	%rax, %rax
	je	.L955
	movq	-64(%rbp), %rax
	movq	584(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_get0_HMAC_CTX@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%rbx
	movl	%eax, -52(%rbp)
.L955:
	cmpl	$0, -52(%rbp)
	jne	.L956
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L957
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L957
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L957
	movl	$2, -48(%rbp)
	jmp	.L943
.L957:
	movq	-240(%rbp), %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L958
	movq	-240(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L959
.L958:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4036, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L959:
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$4039, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_free@PLT
	movl	$1, %eax
	jmp	.L971
.L956:
	cmpl	$0, -52(%rbp)
	jns	.L961
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4045, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$234, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L961:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L972
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4050, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L953:
	movq	-80(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L964
	movq	-232(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	ossl_statem_send_fatal@PLT
	jmp	.L943
.L964:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L965
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	-192(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L965
	movq	-64(%rbp), %rax
	movq	576(%rax), %rax
	leaq	32(%rax), %rdx
	leaq	-192(%rbp), %rcx
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	je	.L965
	movq	-64(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	ssl_hmac_init@PLT
	testl	%eax, %eax
	jne	.L966
.L965:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4072, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L966:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-64(%rbp), %rax
	addq	$560, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	jmp	.L963
.L972:
	nop
.L963:
	movq	-256(%rbp), %rcx
	movl	-244(%rbp), %edx
	movq	-240(%rbp), %rsi
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	create_ticket_prequel
	testl	%eax, %eax
	je	.L973
	leaq	-216(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L968
	leaq	-208(%rbp), %rcx
	movq	-240(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L968
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-192(%rbp), %rcx
	movq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L968
	movl	-100(%rbp), %eax
	addl	$32, %eax
	movslq	%eax, %rcx
	leaq	-128(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	je	.L968
	movq	-128(%rbp), %rsi
	movl	-100(%rbp), %edi
	movq	-24(%rbp), %rcx
	leaq	-164(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	je	.L968
	movl	-164(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-136(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L968
	movq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L968
	movq	-128(%rbp), %rdx
	movl	-164(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-168(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal@PLT
	testl	%eax, %eax
	je	.L968
	movl	-168(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-136(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L968
	movq	-128(%rbp), %rdx
	movl	-164(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L968
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %eax
	addl	%eax, %edx
	movl	-100(%rbp), %eax
	addl	$32, %eax
	cmpl	%eax, %edx
	jg	.L968
	leaq	-224(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L968
	movq	-224(%rbp), %rdx
	movq	-216(%rbp), %rax
	subq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rcx
	movq	-216(%rbp), %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_hmac_update@PLT
	testl	%eax, %eax
	je	.L968
	leaq	-144(%rbp), %rdx
	movq	-240(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	je	.L968
	movq	-144(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$64, %ecx
	movq	%rax, %rdi
	call	ssl_hmac_final@PLT
	testl	%eax, %eax
	je	.L968
	movq	-176(%rbp), %rax
	cmpq	$64, %rax
	ja	.L968
	movq	-176(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L968
	movq	-144(%rbp), %rdx
	movq	-152(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L969
.L968:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L969:
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L970
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4115, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L943
.L970:
	movl	$1, -48(%rbp)
	jmp	.L943
.L973:
	nop
.L943:
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$4121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_hmac_free@PLT
	movl	-48(%rbp), %eax
.L971:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE825:
	.size	construct_stateless_ticket, .-construct_stateless_ticket
	.type	construct_stateful_ticket, @function
construct_stateful_ticket:
.LFB826:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	create_ticket_prequel
	testl	%eax, %eax
	jne	.L975
	movl	$0, %eax
	jmp	.L976
.L975:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	592(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	600(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L977
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L978
.L977:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L976
.L978:
	movl	$1, %eax
.L976:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE826:
	.size	construct_stateful_ticket, .-construct_stateful_ticket
	.type	tls_update_ticket_counts, @function
tls_update_ticket_counts:
.LFB827:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	5304(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 5304(%rax)
	movq	-8(%rbp), %rax
	movq	5312(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 5312(%rax)
	movq	-8(%rbp), %rax
	movl	2540(%rax), %eax
	testl	%eax, %eax
	jle	.L981
	movq	-8(%rbp), %rax
	movl	2540(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 2540(%rax)
.L981:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE827:
	.size	tls_update_ticket_counts, .-tls_update_ticket_counts
	.globl	tls_construct_new_session_ticket
	.type	tls_construct_new_session_ticket, @function
tls_construct_new_session_ticket:
.LFB828:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L983
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L983
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L983
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L984
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L985
.L984:
	movl	-60(%rbp), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	5304(%rax), %rax
	testq	%rax, %rax
	jne	.L986
	movq	-104(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L987
.L986:
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_session_dup@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L1005
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 2184(%rax)
.L987:
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_generate_session_id@PLT
	testl	%eax, %eax
	je	.L1006
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rsi
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L990
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L985
.L990:
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	movl	-96(%rbp), %edx
	movl	%edx, 832(%rax)
	movq	-104(%rbp), %rax
	movq	5312(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$8, -32(%rbp)
	jmp	.L991
.L992:
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rdx
	movb	%dl, -92(%rbp,%rax)
	shrq	$8, -40(%rbp)
	subq	$1, -32(%rbp)
.L991:
	cmpq	$0, -32(%rbp)
	jne	.L992
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %rdi
	movq	-104(%rbp), %rax
	leaq	1476(%rax), %rdx
	leaq	-92(%rbp), %r8
	leaq	nonce_label.3(%rip), %rcx
	movq	-56(%rbp), %rsi
	movq	-104(%rbp), %rax
	pushq	$1
	pushq	-72(%rbp)
	pushq	%rdi
	pushq	$8
	movq	%r8, %r9
	movl	$10, %r8d
	movq	%rax, %rdi
	call	tls13_hkdf_expand@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L1007
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 736(%rbx)
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	ssl_session_calculate_timeout@PLT
	movq	-104(%rbp), %rax
	movq	1096(%rax), %rax
	testq	%rax, %rax
	je	.L994
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$4235, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-104(%rbp), %rax
	movq	1104(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	1096(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	2184(%rdx), %rbx
	leaq	.LC3(%rip), %rdx
	movl	$4237, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, 840(%rbx)
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	jne	.L995
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 848(%rax)
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L985
.L995:
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	1104(%rdx), %rdx
	movq	%rdx, 848(%rax)
.L994:
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-104(%rbp), %rdx
	movl	5280(%rdx), %edx
	movl	%edx, 836(%rax)
.L983:
	movq	-48(%rbp), %rax
	movq	1024(%rax), %rax
	testq	%rax, %rax
	je	.L996
	movq	-48(%rbp), %rax
	movq	1024(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	1040(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L996
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4251, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L985
.L996:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L997
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L997
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L997
	movq	-104(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$16384, %eax
	testq	%rax, %rax
	jne	.L998
	movq	-104(%rbp), %rax
	movl	5280(%rax), %eax
	testl	%eax, %eax
	je	.L997
	movq	-104(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$16777216, %eax
	testq	%rax, %rax
	jne	.L997
.L998:
	movl	-96(%rbp), %edx
	leaq	-92(%rbp), %rcx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	construct_stateful_ticket
	testl	%eax, %eax
	jne	.L1000
	jmp	.L985
.L997:
	movl	-96(%rbp), %edx
	leaq	-92(%rbp), %rcx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	construct_stateless_ticket
	movl	%eax, -84(%rbp)
	cmpl	$1, -84(%rbp)
	je	.L1000
	cmpl	$2, -84(%rbp)
	jne	.L1008
	movl	$2, -20(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	tls_update_ticket_counts
	jmp	.L1008
.L1000:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1002
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L1002
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L1002
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8192, %edx
	movq	%rax, %rdi
	call	tls_construct_extensions@PLT
	testl	%eax, %eax
	je	.L1009
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	tls_update_ticket_counts
	movq	-104(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ssl_update_cache@PLT
.L1002:
	movl	$1, -20(%rbp)
	jmp	.L985
.L1005:
	nop
	jmp	.L985
.L1006:
	nop
	jmp	.L985
.L1007:
	nop
	jmp	.L985
.L1008:
	nop
	jmp	.L985
.L1009:
	nop
.L985:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE828:
	.size	tls_construct_new_session_ticket, .-tls_construct_new_session_ticket
	.globl	tls_construct_cert_status_body
	.type	tls_construct_cert_status_body, @function
tls_construct_cert_status_body:
.LFB829:
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
	movl	2480(%rax), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L1011
	movq	-8(%rbp), %rax
	movq	2528(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	2520(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L1012
.L1011:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4309, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L1013
.L1012:
	movl	$1, %eax
.L1013:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE829:
	.size	tls_construct_cert_status_body, .-tls_construct_cert_status_body
	.globl	tls_construct_cert_status
	.type	tls_construct_cert_status, @function
tls_construct_cert_status:
.LFB830:
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
	call	tls_construct_cert_status_body@PLT
	testl	%eax, %eax
	jne	.L1015
	movl	$0, %eax
	jmp	.L1016
.L1015:
	movl	$1, %eax
.L1016:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE830:
	.size	tls_construct_cert_status, .-tls_construct_cert_status
	.globl	tls_process_next_proto
	.type	tls_process_next_proto, @function
tls_process_next_proto:
.LFB831:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L1018
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L1018
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L1019
.L1018:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4346, %esi
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
	jmp	.L1022
.L1019:
	movq	-56(%rbp), %rax
	leaq	2664(%rax), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_memdup
	testl	%eax, %eax
	jne	.L1021
	movq	-56(%rbp), %rax
	movq	$0, 2672(%rax)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4352, %esi
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
	jmp	.L1022
.L1021:
	movq	-40(%rbp), %rax
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movq	%rdx, 2672(%rax)
	movl	$3, %eax
.L1022:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE831:
	.size	tls_process_next_proto, .-tls_process_next_proto
	.type	tls_construct_encrypted_extensions, @function
tls_construct_encrypted_extensions:
.LFB832:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1024, %edx
	movq	%rax, %rdi
	call	tls_construct_extensions@PLT
	testl	%eax, %eax
	jne	.L1024
	movl	$0, %eax
	jmp	.L1025
.L1024:
	movl	$1, %eax
.L1025:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE832:
	.size	tls_construct_encrypted_extensions, .-tls_construct_encrypted_extensions
	.globl	tls_process_end_of_early_data
	.type	tls_process_end_of_early_data, @function
tls_process_end_of_early_data:
.LFB833:
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
	je	.L1027
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4377, %esi
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
	jmp	.L1028
.L1027:
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$11, %eax
	je	.L1029
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$10, %eax
	je	.L1029
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4383, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L1028
.L1029:
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_processed_read_pending@PLT
	testl	%eax, %eax
	je	.L1030
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4392, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$182, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L1028
.L1030:
	movq	-8(%rbp), %rax
	movl	$12, 240(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L1031
	movl	$0, %eax
	jmp	.L1028
.L1031:
	movl	$3, %eax
.L1028:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE833:
	.size	tls_process_end_of_early_data, .-tls_process_end_of_early_data
	.section	.rodata
.LC12:
	.string	"GOST_KX_MESSAGE"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.40, @object
	.size	local_it.40, 56
local_it.40:
	.byte	1
	.zero	7
	.quad	16
	.quad	GOST_KX_MESSAGE_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC12
	.section	.rodata
	.align 32
	.type	__func__.39, @object
	.size	__func__.39, 35
__func__.39:
	.string	"ossl_statem_server_read_transition"
	.align 32
	.type	__func__.38, @object
	.size	__func__.38, 38
__func__.38:
	.string	"ossl_statem_server13_write_transition"
	.align 32
	.type	__func__.37, @object
	.size	__func__.37, 36
__func__.37:
	.string	"ossl_statem_server_write_transition"
	.align 16
	.type	__func__.36, @object
	.size	__func__.36, 28
__func__.36:
	.string	"ossl_statem_server_pre_work"
	.align 32
	.type	__func__.35, @object
	.size	__func__.35, 37
__func__.35:
	.string	"ossl_statem_server_construct_message"
	.align 32
	.type	__func__.34, @object
	.size	__func__.34, 35
__func__.34:
	.string	"ossl_statem_server_process_message"
	.align 32
	.type	__func__.33, @object
	.size	__func__.33, 40
__func__.33:
	.string	"ossl_statem_server_post_process_message"
	.align 16
	.type	__func__.32, @object
	.size	__func__.32, 30
__func__.32:
	.string	"ssl_check_srp_ext_ClientHello"
	.align 32
	.type	__func__.31, @object
	.size	__func__.31, 36
__func__.31:
	.string	"dtls_construct_hello_verify_request"
	.align 8
	.type	kSafariCommonExtensionsLength.30, @object
	.size	kSafariCommonExtensionsLength.30, 8
kSafariCommonExtensionsLength.30:
	.quad	18
	.align 32
	.type	kSafariExtensionsBlock.29, @object
	.size	kSafariExtensionsBlock.29, 34
kSafariExtensionsBlock.29:
	.base64	"AAoACAAGABcAGAAZAAsAAgEAAA0ADAAKBQEEAQIBBAMCAw=="
	.align 16
	.type	__func__.28, @object
	.size	__func__.28, 25
__func__.28:
	.string	"tls_process_client_hello"
	.type	null_compression.27, @object
	.size	null_compression.27, 1
null_compression.27:
	.zero	1
	.align 32
	.type	__func__.26, @object
	.size	__func__.26, 36
__func__.26:
	.string	"tls_early_post_process_client_hello"
	.align 16
	.type	__func__.25, @object
	.size	__func__.25, 26
__func__.25:
	.string	"tls_handle_status_request"
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 16
__func__.24:
	.string	"tls_handle_alpn"
	.align 16
	.type	__func__.23, @object
	.size	__func__.23, 30
__func__.23:
	.string	"tls_post_process_client_hello"
	.align 16
	.type	__func__.22, @object
	.size	__func__.22, 27
__func__.22:
	.string	"tls_construct_server_hello"
	.align 32
	.type	__func__.21, @object
	.size	__func__.21, 34
__func__.21:
	.string	"tls_construct_server_key_exchange"
	.align 32
	.type	__func__.20, @object
	.size	__func__.20, 34
__func__.20:
	.string	"tls_construct_certificate_request"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 29
__func__.19:
	.string	"tls_process_cke_psk_preamble"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 20
__func__.18:
	.string	"tls_process_cke_rsa"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 20
__func__.17:
	.string	"tls_process_cke_dhe"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 22
__func__.16:
	.string	"tls_process_cke_ecdhe"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 20
__func__.15:
	.string	"tls_process_cke_srp"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 21
__func__.14:
	.string	"tls_process_cke_gost"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 23
__func__.13:
	.string	"tls_process_cke_gost18"
	.align 32
	.type	__func__.12, @object
	.size	__func__.12, 32
__func__.12:
	.string	"tls_process_client_key_exchange"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 37
__func__.11:
	.string	"tls_post_process_client_key_exchange"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 23
__func__.10:
	.string	"tls_process_client_rpk"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 31
__func__.9:
	.string	"tls_process_client_certificate"
	.align 32
	.type	__func__.8, @object
	.size	__func__.8, 33
__func__.8:
	.string	"tls_construct_server_certificate"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 22
__func__.7:
	.string	"create_ticket_prequel"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 27
__func__.6:
	.string	"construct_stateless_ticket"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 26
__func__.5:
	.string	"construct_stateful_ticket"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 33
__func__.4:
	.string	"tls_construct_new_session_ticket"
	.align 8
	.type	nonce_label.3, @object
	.size	nonce_label.3, 11
nonce_label.3:
	.string	"resumption"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 31
__func__.2:
	.string	"tls_construct_cert_status_body"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"tls_process_next_proto"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 30
__func__.0:
	.string	"tls_process_end_of_early_data"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
