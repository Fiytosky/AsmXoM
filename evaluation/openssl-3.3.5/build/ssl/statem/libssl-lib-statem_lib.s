	.file	"statem_lib.c"
	.text
	.type	ossl_check_X509_NAME_type, @function
ossl_check_X509_NAME_type:
.LFB361:
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
.LFE361:
	.size	ossl_check_X509_NAME_type, .-ossl_check_X509_NAME_type
	.type	ossl_check_const_X509_NAME_sk_type, @function
ossl_check_const_X509_NAME_sk_type:
.LFB362:
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
.LFE362:
	.size	ossl_check_const_X509_NAME_sk_type, .-ossl_check_const_X509_NAME_sk_type
	.type	ossl_check_X509_NAME_sk_type, @function
ossl_check_X509_NAME_sk_type:
.LFB363:
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
.LFE363:
	.size	ossl_check_X509_NAME_sk_type, .-ossl_check_X509_NAME_sk_type
	.type	ossl_check_X509_NAME_compfunc_type, @function
ossl_check_X509_NAME_compfunc_type:
.LFB364:
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
.LFE364:
	.size	ossl_check_X509_NAME_compfunc_type, .-ossl_check_X509_NAME_compfunc_type
	.type	ossl_check_X509_NAME_freefunc_type, @function
ossl_check_X509_NAME_freefunc_type:
.LFB366:
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
.LFE366:
	.size	ossl_check_X509_NAME_freefunc_type, .-ossl_check_X509_NAME_freefunc_type
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
	je	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
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
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	PACKET_equal, .-PACKET_equal
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
	ja	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
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
.L25:
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
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L28:
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
	ja	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
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
.L31:
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
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L34:
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
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L37:
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
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L40:
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
	jnb	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L43:
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
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
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
	je	.L48
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L49
.L48:
	movl	$0, %eax
	jmp	.L51
.L49:
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
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PACKET_get_length_prefixed_1, .-PACKET_get_length_prefixed_1
	.type	PACKET_as_length_prefixed_1, @function
PACKET_as_length_prefixed_1:
.LFB534:
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
	je	.L53
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L53
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L54
.L53:
	movl	$0, %eax
	jmp	.L56
.L54:
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
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	PACKET_as_length_prefixed_1, .-PACKET_as_length_prefixed_1
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
	je	.L58
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L59
.L58:
	movl	$0, %eax
	jmp	.L61
.L59:
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
.L61:
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
	je	.L63
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L63
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L64
.L63:
	movl	$0, %eax
	jmp	.L66
.L64:
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
.L66:
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
	.type	ssl_has_cert_type, @function
ssl_has_cert_type:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L80
	movq	-24(%rbp), %rax
	movq	5384(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	5392(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L81
.L80:
	movq	-24(%rbp), %rax
	movq	5368(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	5376(%rax), %rax
	movq	%rax, -16(%rbp)
.L81:
	cmpq	$0, -8(%rbp)
	jne	.L82
	movl	$0, %eax
	jmp	.L83
.L82:
	movzbl	-28(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	ssl_has_cert_type, .-ssl_has_cert_type
	.type	ssl_has_cert, @function
ssl_has_cert:
.LFB724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L85
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	cmpl	%eax, -12(%rbp)
	jl	.L86
.L85:
	movl	$0, %eax
	jmp	.L87
.L86:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ssl_has_cert_type
	testl	%eax, %eax
	je	.L88
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L87
.L88:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movl	$1, %eax
	jmp	.L87
.L89:
	movl	$0, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	ssl_has_cert, .-ssl_has_cert
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
	je	.L96
	movq	-16(%rbp), %rax
	lock addl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_tsan_unlock
.L96:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	ssl_tsan_counter, .-ssl_tsan_counter
	.globl	hrrrandom
	.section	.rodata
	.align 32
	.type	hrrrandom, @object
	.size	hrrrandom, 32
hrrrandom:
	.base64	"zyGtdOWaYRG+HYwCHmW4kcKiERZ6u4xeB54J4sioM5w="
	.text
	.globl	ossl_statem_set_mutator
	.type	ossl_statem_set_mutator, @function
ossl_statem_set_mutator:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L98
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L99
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L100
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L101
.L100:
	movq	$0, -8(%rbp)
	jmp	.L101
.L99:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L101
.L98:
	movq	$0, -8(%rbp)
.L101:
	cmpq	$0, -8(%rbp)
	jne	.L102
	movl	$0, %eax
	jmp	.L103
.L102:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 224(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 216(%rax)
	movl	$1, %eax
.L103:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ossl_statem_set_mutator, .-ossl_statem_set_mutator
	.globl	ssl3_do_write
	.type	ssl3_do_write, @function
ssl3_do_write:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, %eax
	movb	%al, -60(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-56(%rbp), %rax
	movzbl	232(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L105
	cmpb	$22, -60(%rbp)
	jne	.L105
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	cmpq	$3, %rax
	jbe	.L105
	movq	-56(%rbp), %rax
	movq	208(%rax), %r9
	movq	-56(%rbp), %rax
	movq	224(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	264(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L106
	movl	$-1, %eax
	jmp	.L116
.L106:
	movq	-48(%rbp), %rax
	cmpq	$3, %rax
	jbe	.L108
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	jne	.L109
.L108:
	movl	$-1, %eax
	jmp	.L116
.L109:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-56(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-56(%rbp), %rax
	movzbl	232(%rax), %edx
	orl	$1, %edx
	movb	%dl, 232(%rax)
.L105:
	movq	-56(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	272(%rax), %rax
	leaq	(%rcx,%rax), %rdi
	movzbl	-60(%rbp), %esi
	leaq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl3_write_bytes@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L111
	movl	$-1, %eax
	jmp	.L116
.L111:
	cmpb	$22, -60(%rbp)
	jne	.L112
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L113
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L113
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L113
	movq	-56(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$37, %eax
	je	.L112
	movq	-56(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$47, %eax
	je	.L112
	movq	-56(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$46, %eax
	je	.L112
.L113:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	272(%rax), %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_finish_mac@PLT
	testl	%eax, %eax
	jne	.L112
	movl	$-1, %eax
	jmp	.L116
.L112:
	movq	-56(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L114
	movq	-56(%rbp), %rax
	movzbl	232(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 232(%rax)
	movq	-56(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-56(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-56(%rbp), %rax
	movq	1160(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	272(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	leaq	(%rdx,%rax), %r8
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rcx
	movzbl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	72(%rax), %eax
	movq	-16(%rbp), %rdi
	subq	$8, %rsp
	pushq	%rsi
	movq	%rdi, %r9
	movl	%eax, %esi
	movl	$1, %edi
	call	*%r10
	addq	$16, %rsp
.L115:
	movl	$1, %eax
	jmp	.L116
.L114:
	movq	-56(%rbp), %rax
	movq	272(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 272(%rax)
	movq	-56(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 264(%rax)
	movl	$0, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ssl3_do_write, .-ssl3_do_write
	.globl	tls_close_construct_packet
	.type	tls_close_construct_packet, @function
tls_close_construct_packet:
.LFB731:
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
	cmpl	$257, -36(%rbp)
	je	.L118
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L119
.L118:
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	je	.L119
	movq	-8(%rbp), %rax
	cmpq	$2147483647, %rax
	jbe	.L120
.L119:
	movl	$0, %eax
	jmp	.L122
.L120:
	movq	-8(%rbp), %rax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 272(%rax)
	movl	$1, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	tls_close_construct_packet, .-tls_close_construct_packet
	.section	.rodata
.LC0:
	.string	"../ssl/statem/statem_lib.c"
	.align 8
.LC1:
	.string	"The max supported SSL/TLS version needs the MD5-SHA1 digest but it is not available in the loaded providers. Use (D)TLSv1.2 or above, or load different providers"
	.align 8
.LC2:
	.string	"No ciphers enabled for max supported SSL/TLS version"
	.text
	.globl	tls_setup_handshake
	.type	tls_setup_handshake, @function
tls_setup_handshake:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_init_finished_mac@PLT
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L151
.L124:
	movq	-72(%rbp), %rax
	addq	$2424, %rax
	movl	$29, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-64(%rbp), %rdx
	leaq	-60(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_get_min_max_version@PLT
	testl	%eax, %eax
	je	.L126
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$191, %edx
	movl	$70, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L151
.L126:
	movq	-40(%rbp), %rax
	movq	1424(%rax), %rax
	testq	%rax, %rax
	jne	.L127
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L128
	movl	$65279, -12(%rbp)
	jmp	.L129
.L128:
	movl	$770, -12(%rbp)
.L129:
	movl	-64(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jg	.L130
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC1(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$297, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L151
.L130:
	movl	$1, -4(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L131
	movl	$65277, -8(%rbp)
	jmp	.L132
.L131:
	movl	$771, -8(%rbp)
.L132:
	movl	-60(%rbp), %ecx
	movl	-8(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jns	.L133
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -4(%rbp)
.L133:
	cmpl	$0, -4(%rbp)
	jne	.L127
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$184, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L151
.L127:
	movl	$0, -4(%rbp)
	movq	-72(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L134
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_ciphers@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L135
.L142:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L136
	movq	-56(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -20(%rbp)
	jmp	.L137
.L136:
	movq	-56(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -20(%rbp)
.L137:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L138
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -24(%rbp)
	jmp	.L139
.L138:
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -24(%rbp)
.L139:
	movl	-64(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	js	.L140
	movl	-64(%rbp), %ecx
	movl	-24(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jg	.L140
	movl	$1, -4(%rbp)
	jmp	.L141
.L140:
	addl	$1, -16(%rbp)
.L135:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -16(%rbp)
	jl	.L142
.L141:
	cmpl	$0, -4(%rbp)
	jne	.L143
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC2(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$181, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L151
.L143:
	movq	-72(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L144
	movq	-72(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L145
.L144:
	movq	-72(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	132(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
	jmp	.L147
.L145:
	movq	-40(%rbp), %rax
	leaq	136(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
	movq	-72(%rbp), %rax
	movl	$0, 808(%rax)
	jmp	.L147
.L134:
	movq	-72(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L148
	movq	-72(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L149
.L148:
	movq	-72(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	120(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
	jmp	.L150
.L149:
	movq	-72(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	124(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
.L150:
	movq	-72(%rbp), %rax
	addq	$328, %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-72(%rbp), %rax
	movl	$0, 1168(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 720(%rax)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L147
	movq	-72(%rbp), %rax
	movl	$1, 200(%rax)
.L147:
	movl	$1, %eax
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	tls_setup_handshake, .-tls_setup_handshake
	.type	get_cert_verify_tbs_data, @function
get_cert_verify_tbs_data:
.LFB733:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L153
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L153
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L153
	movq	-48(%rbp), %rax
	movl	$64, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$43, %eax
	je	.L154
	movq	-40(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$44, %eax
	jne	.L155
.L154:
	movq	-48(%rbp), %rax
	addq	$64, %rax
	leaq	servercontext.23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	jmp	.L156
.L155:
	movq	-48(%rbp), %rax
	addq	$64, %rax
	leaq	clientcontext.22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L156:
	movq	-40(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$43, %eax
	je	.L157
	movq	-40(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$33, %eax
	jne	.L158
.L157:
	movq	-40(%rbp), %rax
	movq	2128(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	2064(%rdx), %rsi
	movq	-48(%rbp), %rdx
	leaq	98(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	2128(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L159
.L158:
	movq	-48(%rbp), %rax
	leaq	98(%rax), %rsi
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	ssl_handshake_hash@PLT
	testl	%eax, %eax
	jne	.L159
	movl	$0, %eax
	jmp	.L160
.L159:
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	98(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L161
.L153:
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jg	.L162
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$301, %esi
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
	jmp	.L160
.L162:
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L161:
	movl	$1, %eax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	get_cert_verify_tbs_data, .-get_cert_verify_tbs_data
	.globl	tls_construct_cert_verify
	.type	tls_construct_cert_verify, @function
tls_construct_cert_verify:
.LFB734:
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
	movq	$0, -40(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -32(%rbp)
	movq	-280(%rbp), %rax
	movq	864(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L164
	movq	-280(%rbp), %rax
	movq	872(%rax), %rax
	testq	%rax, %rax
	jne	.L165
.L164:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$324, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L166
.L165:
	movq	-280(%rbp), %rax
	movq	872(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L167
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_lookup_md@PLT
	testl	%eax, %eax
	jne	.L168
.L167:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$330, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L166
.L168:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L169
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L166
.L169:
	leaq	-88(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	get_cert_verify_tbs_data
	testl	%eax, %eax
	je	.L190
	movq	-280(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L171
	movq	-48(%rbp), %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %ecx
	movq	-288(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L171
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$347, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L166
.L171:
	movq	-56(%rbp), %rax
	movq	1096(%rax), %r12
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L172
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	jmp	.L173
.L172:
	movl	$0, %edx
.L173:
	movq	-40(%rbp), %rcx
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L174
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$355, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L166
.L174:
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$912, %eax
	jne	.L175
	movq	-80(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jle	.L176
	movq	-80(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_pss_saltlen@PLT
	testl	%eax, %eax
	jg	.L175
.L176:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$363, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L166
.L175:
	movq	-280(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jne	.L177
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignUpdate@PLT
	testl	%eax, %eax
	jle	.L178
	movq	-280(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %rdx
	movq	-280(%rbp), %rax
	movq	2184(%rax), %rax
	movq	8(%rax), %rax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$29, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_ctrl@PLT
	testl	%eax, %eax
	jle	.L178
	leaq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jg	.L179
.L178:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$378, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L166
.L179:
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$381, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L180
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestSignFinal@PLT
	testl	%eax, %eax
	jg	.L181
.L180:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$384, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L166
.L177:
	movq	-88(%rbp), %rsi
	movq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	jg	.L182
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$393, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L166
.L182:
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$396, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L183
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	jg	.L181
.L183:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$399, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L166
.L181:
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -60(%rbp)
	cmpl	$811, -60(%rbp)
	je	.L184
	cmpl	$979, -60(%rbp)
	je	.L184
	cmpl	$980, -60(%rbp)
	jne	.L185
.L184:
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BUF_reverse@PLT
.L185:
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-288(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L186
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$416, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-280(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L166
.L186:
	movq	-280(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	je	.L191
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$426, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$1, %eax
	jmp	.L189
.L190:
	nop
	jmp	.L166
.L191:
	nop
.L166:
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$430, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	$0, %eax
.L189:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	tls_construct_cert_verify, .-tls_construct_cert_verify
	.globl	tls_process_cert_verify
	.type	tls_process_cert_verify, @function
tls_process_cert_verify:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -280(%rbp)
	movq	-296(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L193
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$454, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L193:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	tls_get_peer_pkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L195
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$460, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L195:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_cert_lookup_by_pkey@PLT
	testq	%rax, %rax
	jne	.L196
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$465, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$220, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L196:
	movq	-296(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L197
	leaq	-284(%rbp), %rdx
	movq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L198
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$474, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$240, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L198:
	movl	-284(%rbp), %eax
	movzwl	%ax, %ecx
	movq	-40(%rbp), %rdx
	movq	-296(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls12_check_peer_sigalg@PLT
	testl	%eax, %eax
	jg	.L201
	jmp	.L194
.L197:
	movq	-40(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls1_set_peer_legacy_sigalg@PLT
	testl	%eax, %eax
	jne	.L201
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$482, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$333, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L201:
	movq	-296(%rbp), %rax
	movq	912(%rax), %rcx
	leaq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_lookup_md@PLT
	testl	%eax, %eax
	jne	.L202
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$488, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L202:
	movq	-296(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L203
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$64, %rax
	jne	.L204
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$811, %eax
	je	.L205
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$979, %eax
	je	.L205
.L204:
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$128, %rax
	jne	.L203
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$980, %eax
	jne	.L203
.L205:
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, -76(%rbp)
	jmp	.L206
.L203:
	leaq	-76(%rbp), %rdx
	movq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L206
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L206:
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	leaq	-72(%rbp), %rcx
	movq	-304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L207
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$517, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L207:
	movq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L208
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$521, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L208:
	leaq	-96(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	get_cert_verify_tbs_data
	testl	%eax, %eax
	je	.L224
	movq	-56(%rbp), %rax
	movq	1096(%rax), %r12
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L210
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	jmp	.L211
.L210:
	movl	$0, %edx
.L211:
	movq	-40(%rbp), %rcx
	leaq	-280(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L212
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$537, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L212:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, -60(%rbp)
	cmpl	$811, -60(%rbp)
	je	.L213
	cmpl	$979, -60(%rbp)
	je	.L213
	cmpl	$980, -60(%rbp)
	jne	.L214
.L213:
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC0(%rip), %rax
	movl	$546, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L225
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BUF_reverse@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
.L214:
	movq	-296(%rbp), %rax
	movq	912(%rax), %rax
	testq	%rax, %rax
	je	.L216
	movq	-296(%rbp), %rax
	movq	912(%rax), %rax
	movl	20(%rax), %eax
	cmpl	$912, %eax
	jne	.L216
	movq	-280(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	testl	%eax, %eax
	jle	.L217
	movq	-280(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_pss_saltlen@PLT
	testl	%eax, %eax
	jg	.L216
.L217:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$558, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L216:
	movq	-296(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jne	.L218
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyUpdate@PLT
	testl	%eax, %eax
	jle	.L219
	movq	-296(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	2184(%rax), %rax
	movq	8(%rax), %rax
	movl	%eax, %esi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$29, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L220
.L219:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$567, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L220:
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestVerifyFinal@PLT
	testl	%eax, %eax
	jg	.L221
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$571, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$123, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L218:
	movq	-96(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_DigestVerify@PLT
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jg	.L221
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$582, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$123, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L194
.L221:
	movq	-296(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L222
	movq	-296(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L222
	movq	-296(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L222
	movq	-296(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L222
	movq	-296(%rbp), %rax
	movl	720(%rax), %eax
	cmpl	$1, %eax
	jne	.L222
	movl	$2, -28(%rbp)
	jmp	.L194
.L222:
	movl	$3, -28(%rbp)
	jmp	.L194
.L224:
	nop
	jmp	.L194
.L225:
	nop
.L194:
	movq	-296(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-296(%rbp), %rax
	movq	$0, 360(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$604, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	tls_process_cert_verify, .-tls_process_cert_verify
	.section	.rodata
.LC3:
	.string	"CLIENT_RANDOM"
	.text
	.globl	tls_construct_finished
	.type	tls_construct_finished, @function
tls_construct_finished:
.LFB736:
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
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L227
	movq	-40(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	je	.L227
	movq	-40(%rbp), %rax
	movl	$1, 192(%rax)
.L227:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L228
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L228
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L228
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L228
	movq	-40(%rbp), %rax
	movl	240(%rax), %eax
	testl	%eax, %eax
	jne	.L229
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1048576, %eax
	testq	%rax, %rax
	je	.L228
.L229:
	movq	-40(%rbp), %rax
	movl	720(%rax), %eax
	testl	%eax, %eax
	jne	.L228
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$146, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L228
	movl	$0, %eax
	jmp	.L230
.L228:
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L231
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L232
.L231:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.L232:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	24(%rax), %r8
	movq	-40(%rbp), %rax
	leaq	416(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L233
	movl	$0, %eax
	jmp	.L230
.L233:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 544(%rax)
	movq	-40(%rbp), %rax
	leaq	416(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L234
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$656, %esi
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
	jmp	.L230
.L234:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L235
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L235
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L236
.L235:
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	leaq	80(%rax), %rdi
	leaq	.LC3(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ssl_log_secret@PLT
	testl	%eax, %eax
	jne	.L236
	movl	$0, %eax
	jmp	.L230
.L236:
	cmpq	$64, -32(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L237
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$675, %esi
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
	jmp	.L230
.L237:
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L238
	movq	-40(%rbp), %rax
	leaq	416(%rax), %rsi
	movq	-40(%rbp), %rax
	leaq	944(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 1008(%rax)
	jmp	.L239
.L238:
	movq	-40(%rbp), %rax
	leaq	416(%rax), %rsi
	movq	-40(%rbp), %rax
	leaq	1016(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 1080(%rax)
.L239:
	movl	$1, %eax
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	tls_construct_finished, .-tls_construct_finished
	.globl	tls_construct_key_update
	.type	tls_construct_key_update, @function
tls_construct_key_update:
.LFB737:
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
	movl	2828(%rax), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L241
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$694, %esi
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
	jmp	.L242
.L241:
	movq	-8(%rbp), %rax
	movl	$-1, 2828(%rax)
	movl	$1, %eax
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	tls_construct_key_update, .-tls_construct_key_update
	.globl	tls_process_key_update
	.type	tls_process_key_update, @function
tls_process_key_update:
.LFB738:
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
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_processed_read_pending@PLT
	testl	%eax, %eax
	je	.L244
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$711, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$182, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L251
.L244:
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L246
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L247
.L246:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$717, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$122, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L251
.L247:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L248
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	je	.L248
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$727, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$122, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L251
.L248:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jne	.L249
	movq	-24(%rbp), %rax
	movl	$0, 2828(%rax)
.L249:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls13_update_key@PLT
	testl	%eax, %eax
	jne	.L250
	movl	$0, %eax
	jmp	.L251
.L250:
	movl	$1, %eax
.L251:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	tls_process_key_update, .-tls_process_key_update
	.globl	ssl3_take_mac
	.type	ssl3_take_mac, @function
ssl3_take_mac:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L253
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L254
.L253:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.L254:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	24(%rax), %r8
	movq	-40(%rbp), %rax
	leaq	552(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movq	-40(%rbp), %rdx
	movq	%rax, 680(%rdx)
	movq	-40(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L255
	movl	$0, %eax
	jmp	.L256
.L255:
	movl	$1, %eax
.L256:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	ssl3_take_mac, .-ssl3_take_mac
	.globl	tls_process_change_cipher_spec
	.type	tls_process_change_cipher_spec, @function
tls_process_change_cipher_spec:
.LFB740:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L258
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$256, %eax
	jne	.L259
	cmpq	$2, -8(%rbp)
	jne	.L260
.L259:
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$256, %eax
	je	.L261
	cmpq	$0, -8(%rbp)
	je	.L261
.L260:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$103, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L262
.L258:
	cmpq	$0, -8(%rbp)
	je	.L261
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$798, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$103, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L262
.L261:
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	jne	.L263
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$133, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L262
.L263:
	movq	-24(%rbp), %rax
	movl	$1, 376(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_do_change_cipher_spec@PLT
	testl	%eax, %eax
	jne	.L264
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
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
	jmp	.L262
.L264:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L265
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$256, %eax
	jne	.L265
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movzwl	272(%rax), %edx
	addl	$1, %edx
	movw	%dx, 272(%rax)
.L265:
	movl	$3, %eax
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	tls_process_change_cipher_spec, .-tls_process_change_cipher_spec
	.globl	tls_process_finished
	.type	tls_process_finished, @function
tls_process_finished:
.LFB741:
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
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L267
	movq	-72(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L268
.L267:
	movl	$1, %eax
	jmp	.L269
.L268:
	movl	$0, %eax
.L269:
	movl	%eax, -28(%rbp)
	movq	-72(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L270
	movq	-72(%rbp), %rax
	movq	3032(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L271
	movq	-72(%rbp), %rax
	movq	3032(%rax), %rax
	movq	104(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	3048(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
.L271:
	movq	-72(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	je	.L272
	movq	-72(%rbp), %rax
	movl	$1, 192(%rax)
.L272:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L270
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L270
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L270
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	tls13_save_handshake_digest_for_pha@PLT
	testl	%eax, %eax
	jne	.L270
	movl	$0, %eax
	jmp	.L273
.L270:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L274
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L274
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L274
	movq	-72(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_processed_read_pending@PLT
	testl	%eax, %eax
	je	.L274
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$865, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$182, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L273
.L274:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L275
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L275
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L276
.L275:
	movq	-72(%rbp), %rax
	movl	376(%rax), %eax
	testl	%eax, %eax
	jne	.L276
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$871, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$154, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L273
.L276:
	movq	-72(%rbp), %rax
	movl	$0, 376(%rax)
	movq	-72(%rbp), %rax
	movq	680(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	%rax, -40(%rbp)
	je	.L277
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$879, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$111, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L273
.L277:
	movq	-72(%rbp), %rax
	leaq	552(%rax), %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_memcmp@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L278
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$893, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$149, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L273
.L278:
	cmpq	$64, -40(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L279
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$901, %esi
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
	jmp	.L273
.L279:
	movq	-72(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L280
	movq	-72(%rbp), %rax
	leaq	552(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	944(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 1008(%rax)
	jmp	.L281
.L280:
	movq	-72(%rbp), %rax
	leaq	552(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	1016(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 1080(%rax)
.L281:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L282
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L282
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L282
	movq	-72(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L283
	movq	-72(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	je	.L282
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	$289, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L282
	movl	$0, %eax
	jmp	.L273
.L283:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	8(%rax), %r9
	movq	-72(%rbp), %rax
	leaq	1348(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	1412(%rax), %rsi
	leaq	-56(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L284
	movl	$0, %eax
	jmp	.L273
.L284:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	$273, %esi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L286
	movl	$0, %eax
	jmp	.L273
.L286:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	tls_process_initial_server_flight@PLT
	testl	%eax, %eax
	jne	.L282
	movl	$0, %eax
	jmp	.L273
.L282:
	cmpl	$0, -28(%rbp)
	je	.L288
	movq	-72(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L288
	movq	-72(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L288
	movq	-72(%rbp), %rax
	movq	3032(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L288
	movq	-72(%rbp), %rax
	movq	3032(%rax), %rax
	movq	112(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	3048(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
.L288:
	movl	$1, %eax
.L273:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	tls_process_finished, .-tls_process_finished
	.globl	tls_construct_change_cipher_spec
	.type	tls_construct_change_cipher_spec, @function
tls_construct_change_cipher_spec:
.LFB742:
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
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L290
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$958, %esi
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
	jmp	.L291
.L290:
	movl	$1, %eax
.L291:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	tls_construct_change_cipher_spec, .-tls_construct_change_cipher_spec
	.type	ssl_add_cert_to_wpacket, @function
ssl_add_cert_to_wpacket:
.LFB743:
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
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	$4096, -4(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L293
	orl	$32768, -4(%rbp)
.L293:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L294
	cmpl	$0, -48(%rbp)
	jne	.L295
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$979, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$524295, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L295:
	movl	$0, %eax
	jmp	.L303
.L294:
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_allocate_bytes__@PLT
	testl	%eax, %eax
	je	.L297
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509@PLT
	cmpl	%eax, -8(%rbp)
	je	.L298
.L297:
	cmpl	$0, -48(%rbp)
	jne	.L299
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$985, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L299:
	movl	$0, %eax
	jmp	.L303
.L298:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L300
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L300
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L301
.L300:
	cmpl	$0, -48(%rbp)
	je	.L302
.L301:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdi
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls_construct_extensions@PLT
	testl	%eax, %eax
	jne	.L302
	movl	$0, %eax
	jmp	.L303
.L302:
	movl	$1, %eax
.L303:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	ssl_add_cert_to_wpacket, .-ssl_add_cert_to_wpacket
	.type	ssl_add_cert_chain, @function
ssl_add_cert_chain:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L305
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L306
.L305:
	movl	$1, %eax
	jmp	.L307
.L306:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L308
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L309
.L308:
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -16(%rbp)
.L309:
	movq	-72(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L310
	cmpq	$0, -16(%rbp)
	je	.L311
.L310:
	movq	$0, -24(%rbp)
	jmp	.L312
.L311:
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L313
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L312
.L313:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.L312:
	cmpq	$0, -24(%rbp)
	je	.L314
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_new_ex@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L315
	cmpl	$0, -92(%rbp)
	jne	.L316
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1034, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$524299, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L316:
	movl	$0, %eax
	jmp	.L307
.L315:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L317
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	cmpl	$0, -92(%rbp)
	jne	.L318
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1040, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$524299, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L318:
	movl	$0, %eax
	jmp	.L307
.L317:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	call	ERR_clear_error@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_chain@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ssl_security_cert_chain@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L319
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	cmpl	$0, -92(%rbp)
	jne	.L320
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1063, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L320:
	movl	$0, %eax
	jmp	.L307
.L319:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -60(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L321
.L323:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movl	-92(%rbp), %edi
	movl	-4(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ssl_add_cert_to_wpacket
	testl	%eax, %eax
	jne	.L322
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movl	$0, %eax
	jmp	.L307
.L322:
	addl	$1, -4(%rbp)
.L321:
	movl	-4(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L323
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	jmp	.L324
.L314:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_security_cert_chain@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L325
	cmpl	$0, -92(%rbp)
	jne	.L326
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1081, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L326:
	movl	$0, %eax
	jmp	.L307
.L325:
	movl	-92(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_add_cert_to_wpacket
	testl	%eax, %eax
	jne	.L327
	movl	$0, %eax
	jmp	.L307
.L327:
	movl	$0, -4(%rbp)
	jmp	.L328
.L330:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-92(%rbp), %edi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ssl_add_cert_to_wpacket
	testl	%eax, %eax
	jne	.L329
	movl	$0, %eax
	jmp	.L307
.L329:
	addl	$1, -4(%rbp)
.L328:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L330
.L324:
	movl	$1, %eax
.L307:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	ssl_add_cert_chain, .-ssl_add_cert_chain
	.globl	tls_get_peer_pkey
	.type	tls_get_peer_pkey, @function
tls_get_peer_pkey:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	je	.L332
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	696(%rax), %rax
	jmp	.L333
.L332:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	je	.L334
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	704(%rax), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	jmp	.L333
.L334:
	movl	$0, %eax
.L333:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	tls_get_peer_pkey, .-tls_get_peer_pkey
	.globl	tls_process_rpk
	.type	tls_process_rpk, @function
tls_process_rpk:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L336
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L336
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L336
	leaq	-80(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L337
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1197, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$282, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L337:
	movq	-120(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L339
	movq	-120(%rbp), %rax
	movq	2840(%rax), %rax
	testq	%rax, %rax
	jne	.L340
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L336
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1203, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$282, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L340:
	movq	-120(%rbp), %rax
	movq	2848(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	2840(%rax), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	jne	.L336
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1208, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$282, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L339:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L336
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1214, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$282, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L336:
	leaq	-88(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	testl	%eax, %eax
	je	.L341
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L342
.L341:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1222, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L342:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L343
	movl	$1, %eax
	jmp	.L358
.L343:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L345
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L345
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L345
	leaq	-96(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	testl	%eax, %eax
	jne	.L346
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1243, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L346:
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L348
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$349, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L345:
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
.L348:
	movq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L349
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1256, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L349:
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	1096(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	-104(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PUBKEY_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L350
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L351
.L350:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1262, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L351:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	je	.L352
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$239, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L352:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L353
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L353
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L353
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rdx
	subq	%rdx, %rcx
	leaq	-3(%rcx), %rdx
	cmpq	%rdx, %rax
	je	.L354
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1274, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L354:
	leaq	-64(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	je	.L355
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L356
.L355:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1279, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L338
.L356:
	leaq	-40(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$65536, %edx
	movq	%rax, %rdi
	call	tls_collect_extensions@PLT
	testl	%eax, %eax
	je	.L359
	movq	-40(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$65536, %esi
	movq	%rax, %rdi
	call	tls_parse_all_extensions@PLT
	testl	%eax, %eax
	je	.L360
.L353:
	movl	$1, -12(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L361
	movq	-136(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -8(%rbp)
	jmp	.L338
.L359:
	nop
	jmp	.L338
.L360:
	nop
	jmp	.L338
.L361:
	nop
.L338:
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1301, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L358:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	tls_process_rpk, .-tls_process_rpk
	.globl	tls_output_rpk
	.type	tls_output_rpk, @function
tls_output_rpk:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L363
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L363
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_X509_PUBKEY@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L364
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1319, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L365
.L364:
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_PUBKEY@PLT
	movl	%eax, -4(%rbp)
	jmp	.L366
.L363:
	cmpq	$0, -72(%rbp)
	je	.L367
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L367
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -4(%rbp)
	jmp	.L366
.L367:
	movq	-56(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L368
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1329, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L365
.L368:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L369
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1334, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L365
.L369:
	movl	$1, %eax
	jmp	.L376
.L366:
	cmpl	$0, -4(%rbp)
	jg	.L371
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1341, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L365
.L371:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L372
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L372
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L372
	movq	-64(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L372
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1351, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L365
.L372:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L373
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L365
.L373:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L374
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L374
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L374
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$65536, %edx
	movq	%rax, %rdi
	call	tls_construct_extensions@PLT
	testl	%eax, %eax
	je	.L377
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L374
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1373, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L365
.L374:
	movq	$1, -16(%rbp)
	jmp	.L365
.L377:
	nop
.L365:
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1380, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
.L376:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	tls_output_rpk, .-tls_output_rpk
	.globl	ssl3_output_cert_chain
	.type	ssl3_output_cert_chain, @function
ssl3_output_cert_chain:
.LFB748:
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
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L379
	cmpl	$0, -28(%rbp)
	jne	.L380
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1389, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L380:
	movl	$0, %eax
	jmp	.L381
.L379:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_add_cert_chain
	testl	%eax, %eax
	jne	.L382
	movl	$0, %eax
	jmp	.L381
.L382:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L383
	cmpl	$0, -28(%rbp)
	jne	.L384
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1398, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L384:
	movl	$0, %eax
	jmp	.L381
.L383:
	movl	$1, %eax
.L381:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	ssl3_output_cert_chain, .-ssl3_output_cert_chain
	.globl	tls_finish_handshake
	.type	tls_finish_handshake, @function
tls_finish_handshake:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	192(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L386
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L387
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 248(%rax)
.L387:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_free_wbio_buffer@PLT
	testl	%eax, %eax
	jne	.L388
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1439, %esi
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
	jmp	.L389
.L388:
	movq	-40(%rbp), %rax
	movq	$0, 264(%rax)
.L386:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L390
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L390
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L390
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L390
	movq	-40(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	jne	.L390
	movq	-40(%rbp), %rax
	movl	$1, 2832(%rax)
.L390:
	cmpl	$0, -12(%rbp)
	je	.L391
	movq	-40(%rbp), %rax
	movl	$0, 2824(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 192(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 2536(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_cleanup_key_block@PLT
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L392
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L393
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L393
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L394
.L393:
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ssl_update_cache@PLT
.L394:
	movq	-32(%rbp), %rax
	leaq	140(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
	movq	-40(%rbp), %rax
	movq	ossl_statem_accept@GOTPCREL(%rip), %rdx
	movq	%rdx, 112(%rax)
	jmp	.L395
.L392:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L396
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L396
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L396
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	movl	80(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L398
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_remove_session@PLT
	jmp	.L398
.L396:
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl_update_cache@PLT
.L398:
	movq	-40(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L399
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	156(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
.L399:
	movq	-40(%rbp), %rax
	movq	ossl_statem_connect@GOTPCREL(%rip), %rdx
	movq	%rdx, 112(%rax)
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	128(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
.L395:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L391
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movw	$0, 272(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movw	$0, 268(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movw	$0, 270(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_clear_received_buffer@PLT
.L391:
	movq	-40(%rbp), %rax
	movq	2280(%rax), %rax
	testq	%rax, %rax
	je	.L400
	movq	-40(%rbp), %rax
	movq	2280(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L401
.L400:
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L401
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -8(%rbp)
.L401:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	cmpq	$0, -8(%rbp)
	je	.L402
	cmpl	$0, -12(%rbp)
	jne	.L403
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L403
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L403
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L403
	movq	-40(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L403
	movq	-40(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L402
.L403:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	*%rcx
.L402:
	cmpl	$0, -52(%rbp)
	jne	.L404
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	movl	$2, %eax
	jmp	.L389
.L404:
	movl	$1, %eax
.L389:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	tls_finish_handshake, .-tls_finish_handshake
	.globl	tls_get_message_header
	.type	tls_get_message_header, @function
tls_get_message_header:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L406
.L414:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	128(%rax), %r10
	movq	-72(%rbp), %rax
	movq	264(%rax), %rax
	movl	$4, %edx
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	-72(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-45(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	leaq	-56(%rbp), %rsi
	pushq	%rsi
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$22, %esi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L407
	movq	-72(%rbp), %rax
	movl	$3, 104(%rax)
	movl	$0, %eax
	jmp	.L420
.L407:
	movzbl	-45(%rbp), %eax
	cmpb	$20, %al
	jne	.L409
	movq	-72(%rbp), %rax
	movq	264(%rax), %rax
	testq	%rax, %rax
	jne	.L410
	movq	-56(%rbp), %rax
	cmpq	$1, %rax
	jne	.L410
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	je	.L411
.L410:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1559, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$103, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L420
.L411:
	movq	-72(%rbp), %rax
	movl	172(%rax), %eax
	testl	%eax, %eax
	jne	.L412
	movq	-72(%rbp), %rax
	movq	288(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L412
	movl	$0, %eax
	jmp	.L420
.L412:
	movq	-80(%rbp), %rax
	movl	$257, (%rax)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 696(%rax)
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 688(%rax)
	movl	$1, %eax
	jmp	.L420
.L409:
	movzbl	-45(%rbp), %eax
	cmpb	$22, %al
	je	.L413
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1580, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$133, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L420
.L413:
	movq	-72(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 264(%rax)
.L406:
	movq	-72(%rbp), %rax
	movq	264(%rax), %rax
	cmpq	$3, %rax
	jbe	.L414
	movl	$0, -4(%rbp)
	movq	-72(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L415
	movq	-72(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$1, %eax
	je	.L415
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L415
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L415
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L415
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L415
	movq	-72(%rbp), %rax
	movq	$0, 264(%rax)
	movl	$1, -4(%rbp)
	movq	-72(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L415
	movq	-72(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-72(%rbp), %rax
	movq	1160(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	72(%rax), %eax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	subq	$8, %rsp
	pushq	%rcx
	movq	%rsi, %r9
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$22, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	*%r10
	addq	$16, %rsp
.L415:
	cmpl	$0, -4(%rbp)
	jne	.L406
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 696(%rax)
	movq	-72(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_is_sslv2_record@PLT
	testl	%eax, %eax
	je	.L417
	movq	-72(%rbp), %rax
	movq	3224(%rax), %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 688(%rax)
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-72(%rbp), %rax
	movq	$4, 264(%rax)
	jmp	.L418
.L417:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	movq	%rax, -40(%rbp)
	addq	$3, -32(%rbp)
	cmpq	$2147483643, -40(%rbp)
	jbe	.L419
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1629, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$152, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L420
.L419:
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 688(%rax)
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 264(%rax)
.L418:
	movl	$1, %eax
.L420:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	tls_get_message_header, .-tls_get_message_header
	.globl	tls_get_message_body
	.type	tls_get_message_body, @function
tls_get_message_body:
.LFB751:
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
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	696(%rax), %eax
	cmpl	$257, %eax
	jne	.L422
	movq	-56(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L434
.L422:
	movq	-56(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	688(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.L424
.L426:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	128(%rax), %r10
	movq	-56(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	leaq	-48(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L425
	movq	-56(%rbp), %rax
	movl	$3, 104(%rax)
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L434
.L425:
	movq	-56(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-48(%rbp), %rax
	subq	%rax, -8(%rbp)
.L424:
	cmpq	$0, -8(%rbp)
	jne	.L426
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jne	.L427
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_take_mac@PLT
	testl	%eax, %eax
	jne	.L427
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L434
.L427:
	movq	-56(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_is_sslv2_record@PLT
	testl	%eax, %eax
	je	.L428
	movq	-56(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_finish_mac@PLT
	testl	%eax, %eax
	jne	.L429
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L434
.L429:
	movq	-56(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L430
	movq	-56(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-56(%rbp), %rax
	movq	1160(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	264(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rdx
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$2, %esi
	movl	$0, %edi
	call	*%r10
	addq	$16, %rsp
	jmp	.L430
.L428:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L431
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L431
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L431
	movq	-56(%rbp), %rax
	movl	696(%rax), %eax
	cmpl	$4, %eax
	je	.L432
	movq	-56(%rbp), %rax
	movl	696(%rax), %eax
	cmpl	$24, %eax
	je	.L432
.L431:
	movq	-56(%rbp), %rax
	movl	696(%rax), %eax
	cmpl	$2, %eax
	jne	.L433
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	cmpq	$37, %rax
	jbe	.L433
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	addq	$6, %rax
	movq	hrrrandom@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L432
.L433:
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_finish_mac@PLT
	testl	%eax, %eax
	jne	.L432
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L434
.L432:
	movq	-56(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L430
	movq	-56(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-56(%rbp), %rax
	movq	1160(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	leaq	4(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	72(%rax), %eax
	movq	-24(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%rsi, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$22, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	*%r10
	addq	$16, %rsp
.L430:
	movq	-56(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L434:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	tls_get_message_body, .-tls_get_message_body
	.section	.rodata
	.align 32
	.type	x509table, @object
	.size	x509table, 328
x509table:
	.long	50
	.long	40
	.long	67
	.long	42
	.long	94
	.long	42
	.long	68
	.long	42
	.long	22
	.long	48
	.long	10
	.long	45
	.long	9
	.long	42
	.long	28
	.long	42
	.long	23
	.long	44
	.long	7
	.long	51
	.long	27
	.long	42
	.long	12
	.long	45
	.long	11
	.long	42
	.long	8
	.long	51
	.long	65
	.long	42
	.long	18
	.long	48
	.long	66
	.long	42
	.long	63
	.long	42
	.long	14
	.long	42
	.long	13
	.long	42
	.long	15
	.long	42
	.long	16
	.long	42
	.long	62
	.long	42
	.long	79
	.long	48
	.long	69
	.long	80
	.long	26
	.long	43
	.long	64
	.long	42
	.long	17
	.long	80
	.long	25
	.long	48
	.long	19
	.long	48
	.long	70
	.long	80
	.long	6
	.long	42
	.long	4
	.long	42
	.long	5
	.long	42
	.long	3
	.long	48
	.long	33
	.long	48
	.long	2
	.long	48
	.long	20
	.long	48
	.long	21
	.long	48
	.long	1
	.long	80
	.long	0
	.long	46
	.text
	.globl	ssl_x509err2alert
	.type	ssl_x509err2alert, @function
ssl_x509err2alert:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	leaq	x509table(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L436
.L439:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	je	.L441
	addq	$8, -8(%rbp)
.L436:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L439
	jmp	.L438
.L441:
	nop
.L438:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	ssl_x509err2alert, .-ssl_x509err2alert
	.globl	ssl_allow_compression
	.type	ssl_allow_compression, @function
ssl_allow_compression:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$131072, %eax
	testq	%rax, %rax
	je	.L443
	movl	$0, %eax
	jmp	.L444
.L443:
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$15, %esi
	movq	%rax, %rdi
	call	ssl_security@PLT
.L444:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	ssl_allow_compression, .-ssl_allow_compression
	.globl	ssl_version_cmp
	.type	ssl_version_cmp, @function
ssl_version_cmp:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L446
	movl	$0, %eax
	jmp	.L447
.L446:
	cmpl	$0, -4(%rbp)
	jne	.L448
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.L449
	movl	$-1, %eax
	jmp	.L447
.L449:
	movl	$1, %eax
	jmp	.L447
.L448:
	cmpl	$256, -28(%rbp)
	je	.L451
	movl	-28(%rbp), %edx
	jmp	.L452
.L451:
	movl	$65280, %edx
.L452:
	cmpl	$256, -32(%rbp)
	je	.L453
	movl	-32(%rbp), %eax
	jmp	.L454
.L453:
	movl	$65280, %eax
.L454:
	cmpl	%eax, %edx
	jle	.L455
	movl	$-1, %eax
	jmp	.L447
.L455:
	movl	$1, %eax
.L447:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	ssl_version_cmp, .-ssl_version_cmp
	.section	.data.rel.ro,"aw"
	.align 32
	.type	tls_version_table, @object
	.size	tls_version_table, 144
tls_version_table:
	.long	772
	.zero	4
	.quad	tlsv1_3_client_method
	.quad	tlsv1_3_server_method
	.long	771
	.zero	4
	.quad	tlsv1_2_client_method
	.quad	tlsv1_2_server_method
	.long	770
	.zero	4
	.quad	tlsv1_1_client_method
	.quad	tlsv1_1_server_method
	.long	769
	.zero	4
	.quad	tlsv1_client_method
	.quad	tlsv1_server_method
	.long	768
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.align 32
	.type	dtls_version_table, @object
	.size	dtls_version_table, 96
dtls_version_table:
	.long	65277
	.zero	4
	.quad	dtlsv1_2_client_method
	.quad	dtlsv1_2_server_method
	.long	65279
	.zero	4
	.quad	dtlsv1_client_method
	.quad	dtlsv1_server_method
	.long	256
	.zero	4
	.quad	dtls_bad_ver_client_method
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.text
	.type	ssl_method_error, @function
ssl_method_error:
.LFB755:
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
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	2372(%rax), %eax
	testl	%eax, %eax
	je	.L458
	movq	-24(%rbp), %rax
	movl	2372(%rax), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	js	.L459
.L458:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	ssl_security@PLT
	testl	%eax, %eax
	jne	.L460
.L459:
	movl	$396, %eax
	jmp	.L461
.L460:
	movq	-24(%rbp), %rax
	movl	2376(%rax), %eax
	testl	%eax, %eax
	je	.L462
	movq	-24(%rbp), %rax
	movl	2376(%rax), %edx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jle	.L462
	movl	$166, %eax
	jmp	.L461
.L462:
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L463
	movl	$258, %eax
	jmp	.L461
.L463:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L464
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	je	.L464
	movl	$158, %eax
	jmp	.L461
.L464:
	movl	$0, %eax
.L461:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	ssl_method_error, .-ssl_method_error
	.type	is_tls13_capable, @function
is_tls13_capable:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L466
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L467
.L466:
	movl	$0, %eax
	jmp	.L468
.L467:
	movq	-16(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	jne	.L469
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L470
.L469:
	movl	$1, %eax
	jmp	.L468
.L470:
	movq	-40(%rbp), %rax
	movq	2304(%rax), %rax
	testq	%rax, %rax
	je	.L471
	movl	$1, %eax
	jmp	.L468
.L471:
	movq	-40(%rbp), %rax
	movq	2312(%rax), %rax
	testq	%rax, %rax
	jne	.L472
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L473
.L472:
	movl	$1, %eax
	jmp	.L468
.L473:
	movq	$0, -8(%rbp)
	jmp	.L474
.L480:
	cmpq	$2, -8(%rbp)
	je	.L482
	cmpq	$2, -8(%rbp)
	jb	.L483
	movq	-8(%rbp), %rax
	subq	$4, %rax
	cmpq	$2, %rax
	jbe	.L482
.L483:
	nop
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_has_cert
	testl	%eax, %eax
	je	.L484
	cmpq	$3, -8(%rbp)
	je	.L479
	movl	$1, %eax
	jmp	.L468
.L479:
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	32(%rax), %rax
	addq	$120, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ssl_get_EC_curve_nid@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls_check_sigalg_curve@PLT
	testl	%eax, %eax
	je	.L477
	movl	$1, %eax
	jmp	.L468
.L482:
	nop
	jmp	.L477
.L484:
	nop
.L477:
	addq	$1, -8(%rbp)
.L474:
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L480
	movl	$0, %eax
.L468:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	is_tls13_capable, .-is_tls13_capable
	.globl	ssl_version_supported
	.type	ssl_version_supported, @function
ssl_version_supported:
.LFB757:
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
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L486
	cmpl	$131071, %eax
	je	.L487
	movq	-40(%rbp), %rax
	movl	72(%rax), %edx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L488
.L486:
	leaq	tls_version_table(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L489
.L487:
	leaq	dtls_version_table(%rip), %rax
	movq	%rax, -16(%rbp)
	nop
.L489:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L490
.L497:
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L491
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L492
.L491:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L492:
	cmpq	$0, -24(%rbp)
	je	.L493
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jne	.L493
	movq	-24(%rbp), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_method_error
	testl	%eax, %eax
	jne	.L493
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L494
	cmpl	$772, -44(%rbp)
	jne	.L494
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	is_tls13_capable
	testl	%eax, %eax
	je	.L493
.L494:
	cmpq	$0, -56(%rbp)
	je	.L495
	movq	-24(%rbp), %rax
	call	*%rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
.L495:
	movl	$1, %eax
	jmp	.L488
.L493:
	addq	$24, -8(%rbp)
.L490:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L496
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jle	.L497
.L496:
	movl	$0, %eax
.L488:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	ssl_version_supported, .-ssl_version_supported
	.globl	ssl_check_version_downgrade
	.type	ssl_check_version_downgrade, @function
ssl_check_version_downgrade:
.LFB758:
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
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	72(%rax), %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L499
	movl	$1, %eax
	jmp	.L500
.L499:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %ebx
	call	TLS_method@PLT
	movl	(%rax), %eax
	cmpl	%eax, %ebx
	jne	.L501
	leaq	tls_version_table(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L502
.L501:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %ebx
	call	DTLS_method@PLT
	movl	(%rax), %eax
	cmpl	%eax, %ebx
	jne	.L503
	leaq	dtls_version_table(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L502
.L503:
	movl	$0, %eax
	jmp	.L500
.L502:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L504
.L506:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L505
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_method_error
	testl	%eax, %eax
	jne	.L505
	movq	-56(%rbp), %rax
	movl	72(%rax), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	jmp	.L500
.L505:
	addq	$24, -24(%rbp)
.L504:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L506
	movl	$0, %eax
.L500:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	ssl_check_version_downgrade, .-ssl_check_version_downgrade
	.globl	ssl_set_version_bound
	.type	ssl_set_version_bound, @function
ssl_set_version_bound:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L508
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L509
.L508:
	cmpl	$767, -24(%rbp)
	jle	.L510
	cmpl	$772, -24(%rbp)
	jg	.L510
	movl	$1, %eax
	jmp	.L511
.L510:
	movl	$0, %eax
.L511:
	movl	%eax, -4(%rbp)
	cmpl	$256, -24(%rbp)
	je	.L512
	cmpl	$256, -24(%rbp)
	je	.L513
	cmpl	$65276, -24(%rbp)
	jle	.L514
.L513:
	cmpl	$256, -24(%rbp)
	je	.L514
	cmpl	$65279, -24(%rbp)
	jg	.L514
.L512:
	movl	$1, %eax
	jmp	.L515
.L514:
	movl	$0, %eax
.L515:
	movl	%eax, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L516
	cmpl	$0, -8(%rbp)
	jne	.L516
	movl	$0, %eax
	jmp	.L509
.L516:
	cmpl	$65536, -20(%rbp)
	je	.L517
	cmpl	$131071, -20(%rbp)
	je	.L518
	jmp	.L519
.L517:
	cmpl	$0, -4(%rbp)
	je	.L522
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L522
.L518:
	cmpl	$0, -8(%rbp)
	je	.L523
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L523
.L522:
	nop
	jmp	.L519
.L523:
	nop
.L519:
	movl	$1, %eax
.L509:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	ssl_set_version_bound, .-ssl_set_version_bound
	.type	check_for_downgrade, @function
check_for_downgrade:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$771, -12(%rbp)
	jne	.L525
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$772, %esi
	movq	%rax, %rdi
	call	ssl_version_supported@PLT
	testl	%eax, %eax
	je	.L525
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L526
.L525:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L527
	cmpl	$770, -12(%rbp)
	jg	.L527
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$771, %esi
	movq	%rax, %rdi
	call	ssl_version_supported@PLT
	testl	%eax, %eax
	je	.L527
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L526
.L527:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	nop
.L526:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	check_for_downgrade, .-check_for_downgrade
	.globl	ssl_choose_server_version
	.type	ssl_choose_server_version, @function
ssl_choose_server_version:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-112(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	$0, -28(%rbp)
	movq	-104(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 2396(%rax)
	cmpl	$65536, -44(%rbp)
	je	.L529
	cmpl	$131071, -44(%rbp)
	je	.L530
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L531
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L531
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L529
.L531:
	movq	-104(%rbp), %rax
	movl	72(%rax), %edx
	movl	-4(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jns	.L532
	movl	$266, %eax
	jmp	.L533
.L532:
	movq	-120(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L533
.L529:
	leaq	tls_version_table(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L534
.L530:
	leaq	dtls_version_table(%rip), %rax
	movq	%rax, -24(%rbp)
	nop
.L534:
	movq	-112(%rbp), %rax
	movq	648(%rax), %rax
	addq	$760, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L535
	movq	-104(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	je	.L535
	movl	$258, %eax
	jmp	.L533
.L535:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L536
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L536
	movl	$0, -68(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, 20(%rax)
	movq	-56(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_1
	testl	%eax, %eax
	jne	.L537
	movl	$159, %eax
	jmp	.L533
.L537:
	cmpl	$768, -4(%rbp)
	jg	.L540
	movl	$292, %eax
	jmp	.L533
.L542:
	movl	-32(%rbp), %edx
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jg	.L541
	jmp	.L540
.L541:
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_supported@PLT
	testl	%eax, %eax
	je	.L540
	movl	-68(%rbp), %eax
	movl	%eax, -32(%rbp)
.L540:
	leaq	-68(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L542
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L543
	movl	$159, %eax
	jmp	.L533
.L543:
	cmpl	$0, -32(%rbp)
	je	.L544
	movq	-104(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	je	.L545
	cmpl	$772, -32(%rbp)
	je	.L546
	movl	$258, %eax
	jmp	.L533
.L546:
	movl	$0, %eax
	jmp	.L533
.L545:
	movl	-32(%rbp), %ecx
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_for_downgrade
	movl	-32(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 72(%rax)
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	-32(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_set_record_protocol_version@PLT
	testl	%eax, %eax
	jne	.L547
	movl	$786691, %eax
	jmp	.L533
.L547:
	movl	$0, %eax
	jmp	.L533
.L544:
	movl	$258, %eax
	jmp	.L533
.L536:
	movl	-4(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	$772, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	js	.L548
	movl	$771, -4(%rbp)
.L548:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L549
.L555:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L558
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	js	.L558
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	call	*%rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_method_error
	testl	%eax, %eax
	jne	.L553
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check_for_downgrade
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 72(%rax)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-104(%rbp), %rax
	movl	72(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_set_record_protocol_version@PLT
	testl	%eax, %eax
	jne	.L554
	movl	$786691, %eax
	jmp	.L533
.L554:
	movl	$0, %eax
	jmp	.L533
.L553:
	movl	$1, -28(%rbp)
	jmp	.L552
.L558:
	nop
.L552:
	addq	$24, -16(%rbp)
.L549:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L555
	cmpl	$0, -28(%rbp)
	je	.L556
	movl	$258, %eax
	jmp	.L533
.L556:
	movl	$396, %eax
.L533:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	ssl_choose_server_version, .-ssl_choose_server_version
	.globl	ssl_choose_client_version
	.type	ssl_choose_client_version, @function
ssl_choose_client_version:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 72(%rax)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$768, %edx
	movl	$19, %esi
	movq	%rax, %rdi
	call	tls_parse_extension@PLT
	testl	%eax, %eax
	jne	.L560
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
	movl	$0, %eax
	jmp	.L580
.L560:
	movq	-56(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	je	.L562
	movq	-56(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$772, %eax
	je	.L562
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2319, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$266, %edx
	movl	$70, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L580
.L562:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L563
	cmpl	$131071, %eax
	je	.L564
	movq	-56(%rbp), %rax
	movl	72(%rax), %edx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L565
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$266, %edx
	movl	$70, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L580
.L565:
	movq	-56(%rbp), %rax
	movl	72(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_set_record_protocol_version@PLT
	testl	%eax, %eax
	jne	.L566
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2338, %esi
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
	jmp	.L580
.L566:
	movl	$1, %eax
	jmp	.L580
.L563:
	leaq	tls_version_table(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L567
.L564:
	leaq	dtls_version_table(%rip), %rax
	movq	%rax, -16(%rbp)
	nop
.L567:
	leaq	-44(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-36(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_min_max_version@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L568
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$70, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L580
.L568:
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	js	.L569
	movl	-40(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ssl_version_cmp@PLT
	testl	%eax, %eax
	jle	.L570
.L569:
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2359, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$258, %edx
	movl	$70, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L580
.L570:
	movq	-56(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L571
	movl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
.L571:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L572
	movq	-56(%rbp), %rax
	movl	72(%rax), %edx
	movl	-44(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L572
	movq	-56(%rbp), %rax
	addq	$296, %rax
	addq	$24, %rax
	movq	tls11downgrade@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L573
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2375, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$373, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L580
.L573:
	movl	-44(%rbp), %eax
	cmpl	$772, %eax
	jne	.L572
	movq	-56(%rbp), %rax
	addq	$296, %rax
	addq	$24, %rax
	movq	tls12downgrade@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L572
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2386, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$373, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L580
.L572:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L574
.L579:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L581
	movq	-56(%rbp), %rax
	movl	72(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L581
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	call	*%rax
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-56(%rbp), %rax
	movl	72(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_set_record_protocol_version@PLT
	testl	%eax, %eax
	jne	.L578
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2398, %esi
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
	jmp	.L580
.L578:
	movl	$1, %eax
	jmp	.L580
.L581:
	nop
	addq	$24, -8(%rbp)
.L574:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L579
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2405, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$258, %edx
	movl	$70, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
.L580:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	ssl_choose_client_version, .-ssl_choose_client_version
	.globl	ssl_get_min_max_version
	.type	ssl_get_min_max_version, @function
ssl_get_min_max_version:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L583
	cmpl	$131071, %eax
	je	.L584
	movq	-56(%rbp), %rax
	movl	72(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -80(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L585
	movl	$786691, %eax
	jmp	.L586
.L585:
	movl	$0, %eax
	jmp	.L586
.L583:
	leaq	tls_version_table(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L587
.L584:
	leaq	dtls_version_table(%rip), %rax
	movq	%rax, -24(%rbp)
	nop
.L587:
	movl	$0, -4(%rbp)
	movq	-64(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, -12(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L588
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
.L588:
	movl	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L589
.L596:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L590
	movl	$1, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L591
.L590:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	call	*%rax
	movq	%rax, -48(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.L592
	cmpl	$0, -8(%rbp)
	jne	.L592
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
.L592:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_method_error
	testl	%eax, %eax
	je	.L593
	movl	$1, -12(%rbp)
	jmp	.L591
.L593:
	cmpl	$0, -12(%rbp)
	jne	.L594
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L591
.L594:
	cmpq	$0, -80(%rbp)
	je	.L595
	cmpl	$0, -8(%rbp)
	je	.L595
	movq	-80(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
.L595:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-64(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$0, -12(%rbp)
.L591:
	addq	$24, -32(%rbp)
.L589:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L596
	movq	-72(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	cmpl	$0, -4(%rbp)
	jne	.L597
	movl	$191, %eax
	jmp	.L586
.L597:
	movl	$0, %eax
.L586:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	ssl_get_min_max_version, .-ssl_get_min_max_version
	.globl	ssl_set_client_hello_version
	.type	ssl_set_client_hello_version, @function
ssl_set_client_hello_version:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L599
	movq	-24(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L599
	movl	$0, %eax
	jmp	.L604
.L599:
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_get_min_max_version@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L601
	movl	-4(%rbp), %eax
	jmp	.L604
.L601:
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L602
	movl	-12(%rbp), %eax
	cmpl	$256, %eax
	jne	.L603
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_set_record_protocol_version@PLT
	testl	%eax, %eax
	jne	.L603
	movl	$0, %eax
	jmp	.L604
.L602:
	movl	-12(%rbp), %eax
	cmpl	$771, %eax
	jle	.L603
	movl	$771, -12(%rbp)
.L603:
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 2396(%rax)
	movl	$0, %eax
.L604:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	ssl_set_client_hello_version, .-ssl_set_client_hello_version
	.globl	check_in_list
	.type	check_in_list, @function
check_in_list:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -32(%rbp)
	movw	%ax, -28(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L606
	cmpq	$0, -48(%rbp)
	jne	.L607
.L606:
	movl	$0, %eax
	jmp	.L608
.L607:
	movq	$0, -8(%rbp)
	jmp	.L609
.L612:
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -10(%rbp)
	movzwl	-28(%rbp), %eax
	cmpw	-10(%rbp), %ax
	jne	.L610
	cmpl	$0, -32(%rbp)
	je	.L611
	movzwl	-10(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$131078, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls_group_allowed@PLT
	testl	%eax, %eax
	je	.L610
.L611:
	movl	$1, %eax
	jmp	.L608
.L610:
	addq	$1, -8(%rbp)
.L609:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L612
	movl	$0, %eax
.L608:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	check_in_list, .-check_in_list
	.globl	create_synthetic_message_hash
	.type	create_synthetic_message_hash, @function
create_synthetic_message_hash:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	leaq	-68(%rbp), %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpq	$0, -96(%rbp)
	jne	.L614
	leaq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	je	.L615
	leaq	-104(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	ssl_handshake_hash@PLT
	testl	%eax, %eax
	jne	.L614
.L615:
	movl	$0, %eax
	jmp	.L622
.L614:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_init_finished_mac@PLT
	testl	%eax, %eax
	jne	.L617
	movl	$0, %eax
	jmp	.L622
.L617:
	movb	$-2, -68(%rbp)
	movq	-104(%rbp), %rax
	movb	%al, -65(%rbp)
	leaq	-68(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_finish_mac@PLT
	testl	%eax, %eax
	je	.L618
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_finish_mac@PLT
	testl	%eax, %eax
	jne	.L619
.L618:
	movl	$0, %eax
	jmp	.L622
.L619:
	cmpq	$0, -112(%rbp)
	je	.L620
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_finish_mac@PLT
	testl	%eax, %eax
	je	.L621
	movq	-88(%rbp), %rax
	movq	688(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl3_finish_mac@PLT
	testl	%eax, %eax
	jne	.L620
.L621:
	movl	$0, %eax
	jmp	.L622
.L620:
	movl	$1, %eax
.L622:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	create_synthetic_message_hash, .-create_synthetic_message_hash
	.type	ca_dn_cmp, @function
ca_dn_cmp:
.LFB767:
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
	call	X509_NAME_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	ca_dn_cmp, .-ca_dn_cmp
	.globl	parse_ca_names
	.type	parse_ca_names, @function
parse_ca_names:
.LFB768:
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
	movq	%rsi, -96(%rbp)
	leaq	ca_dn_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L626
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2669, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L627
.L626:
	leaq	-64(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L629
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2674, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L627
.L636:
	leaq	-76(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L630
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	leaq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L631
.L630:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2684, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L627
.L631:
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	leaq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_NAME@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L633
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2690, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$524301, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L627
.L633:
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L634
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2694, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$131, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L627
.L634:
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
	jne	.L635
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2699, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L627
.L635:
	movq	$0, -24(%rbp)
.L629:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L636
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 744(%rax)
	movl	$1, %eax
	jmp	.L638
.L627:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movl	$0, %eax
.L638:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	parse_ca_names, .-parse_ca_names
	.globl	get_ca_names
	.type	get_ca_names, @function
get_ca_names:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L640
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_client_CA_list@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L640
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L640
	movq	$0, -8(%rbp)
.L640:
	cmpq	$0, -8(%rbp)
	jne	.L641
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_CA_list@PLT
	movq	%rax, -8(%rbp)
.L641:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	get_ca_names, .-get_ca_names
	.globl	construct_ca_names
	.type	construct_ca_names, @function
construct_ca_names:
.LFB770:
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
	movq	-56(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L644
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2738, %esi
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
	jmp	.L645
.L644:
	cmpq	$0, -48(%rbp)
	je	.L646
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	jne	.L646
	movl	$0, -4(%rbp)
	jmp	.L647
.L650:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L648
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L648
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_allocate_bytes__@PLT
	testl	%eax, %eax
	je	.L648
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	cmpl	%eax, -20(%rbp)
	je	.L649
.L648:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2755, %esi
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
	jmp	.L645
.L649:
	addl	$1, -4(%rbp)
.L647:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L650
.L646:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L651
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2762, %esi
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
	jmp	.L645
.L651:
	movl	$1, %eax
.L645:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	construct_ca_names, .-construct_ca_names
	.globl	construct_key_exchange_tbs
	.type	construct_key_exchange_tbs, @function
construct_key_exchange_tbs:
.LFB771:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$2774, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L653
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2777, %esi
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
	jmp	.L654
.L653:
	movq	-24(%rbp), %rax
	leaq	328(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L654:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	construct_key_exchange_tbs, .-construct_key_exchange_tbs
	.globl	tls13_save_handshake_digest_for_pha
	.type	tls13_save_handshake_digest_for_pha, @function
tls13_save_handshake_digest_for_pha:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	2864(%rax), %rax
	testq	%rax, %rax
	jne	.L656
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	jne	.L657
	movl	$0, %eax
	jmp	.L658
.L657:
	call	EVP_MD_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 2864(%rdx)
	movq	-8(%rbp), %rax
	movq	2864(%rax), %rax
	testq	%rax, %rax
	jne	.L659
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2802, %esi
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
	jmp	.L658
.L659:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	2864(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	jne	.L656
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2807, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-8(%rbp), %rax
	movq	2864(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2864(%rax)
	movl	$0, %eax
	jmp	.L658
.L656:
	movl	$1, %eax
.L658:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	tls13_save_handshake_digest_for_pha, .-tls13_save_handshake_digest_for_pha
	.globl	tls13_restore_handshake_digest_for_pha
	.type	tls13_restore_handshake_digest_for_pha, @function
tls13_restore_handshake_digest_for_pha:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	2864(%rax), %rax
	testq	%rax, %rax
	jne	.L661
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2823, %esi
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
	jmp	.L662
.L661:
	movq	-8(%rbp), %rax
	movq	2864(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	jne	.L663
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2828, %esi
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
	jmp	.L662
.L663:
	movl	$1, %eax
.L662:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	tls13_restore_handshake_digest_for_pha, .-tls13_restore_handshake_digest_for_pha
	.section	.rodata
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 20
__func__.24:
	.string	"tls_setup_handshake"
	.align 32
	.type	servercontext.23, @object
	.size	servercontext.23, 34
servercontext.23:
	.string	"TLS 1.3, server CertificateVerify"
	.align 32
	.type	clientcontext.22, @object
	.size	clientcontext.22, 34
clientcontext.22:
	.string	"TLS 1.3, client CertificateVerify"
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 25
__func__.21:
	.string	"get_cert_verify_tbs_data"
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 26
__func__.20:
	.string	"tls_construct_cert_verify"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 24
__func__.19:
	.string	"tls_process_cert_verify"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 23
__func__.18:
	.string	"tls_construct_finished"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 25
__func__.17:
	.string	"tls_construct_key_update"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 23
__func__.16:
	.string	"tls_process_key_update"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 31
__func__.15:
	.string	"tls_process_change_cipher_spec"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 21
__func__.14:
	.string	"tls_process_finished"
	.align 32
	.type	__func__.13, @object
	.size	__func__.13, 33
__func__.13:
	.string	"tls_construct_change_cipher_spec"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 24
__func__.12:
	.string	"ssl_add_cert_to_wpacket"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 19
__func__.11:
	.string	"ssl_add_cert_chain"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 16
__func__.10:
	.string	"tls_process_rpk"
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 15
__func__.9:
	.string	"tls_output_rpk"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 23
__func__.8:
	.string	"ssl3_output_cert_chain"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 21
__func__.7:
	.string	"tls_finish_handshake"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 23
__func__.6:
	.string	"tls_get_message_header"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 26
__func__.5:
	.string	"ssl_choose_client_version"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 15
__func__.4:
	.string	"parse_ca_names"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"construct_ca_names"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 27
__func__.2:
	.string	"construct_key_exchange_tbs"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 36
__func__.1:
	.string	"tls13_save_handshake_digest_for_pha"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 39
__func__.0:
	.string	"tls13_restore_handshake_digest_for_pha"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
