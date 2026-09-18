	.file	"extensions_srvr.c"
	.text
	.type	ossl_check_X509_EXTENSION_sk_type, @function
ossl_check_X509_EXTENSION_sk_type:
.LFB391:
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
.LFE391:
	.size	ossl_check_X509_EXTENSION_sk_type, .-ossl_check_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_freefunc_type, @function
ossl_check_X509_EXTENSION_freefunc_type:
.LFB394:
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
.LFE394:
	.size	ossl_check_X509_EXTENSION_freefunc_type, .-ossl_check_X509_EXTENSION_freefunc_type
	.type	ossl_check_OCSP_RESPID_type, @function
ossl_check_OCSP_RESPID_type:
.LFB569:
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
.LFE569:
	.size	ossl_check_OCSP_RESPID_type, .-ossl_check_OCSP_RESPID_type
	.type	ossl_check_OCSP_RESPID_sk_type, @function
ossl_check_OCSP_RESPID_sk_type:
.LFB571:
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
.LFE571:
	.size	ossl_check_OCSP_RESPID_sk_type, .-ossl_check_OCSP_RESPID_sk_type
	.type	ossl_check_OCSP_RESPID_freefunc_type, @function
ossl_check_OCSP_RESPID_freefunc_type:
.LFB574:
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
.LFE574:
	.size	ossl_check_OCSP_RESPID_freefunc_type, .-ossl_check_OCSP_RESPID_freefunc_type
	.type	ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type, @function
ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type:
.LFB613:
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
.LFE613:
	.size	ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type, .-ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type
	.type	packet_forward, @function
packet_forward:
.LFB631:
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
.LFE631:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB632:
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
.LFE632:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_end, @function
PACKET_end:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	PACKET_end, .-PACKET_end
	.type	PACKET_data, @function
PACKET_data:
.LFB634:
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
.LFE634:
	.size	PACKET_data, .-PACKET_data
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB635:
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
.LFE635:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_equal, @function
PACKET_equal:
.LFB637:
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
	je	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
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
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	PACKET_equal, .-PACKET_equal
	.type	PACKET_peek_sub_packet, @function
PACKET_peek_sub_packet:
.LFB638:
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
.LFE638:
	.size	PACKET_peek_sub_packet, .-PACKET_peek_sub_packet
	.type	PACKET_get_sub_packet, @function
PACKET_get_sub_packet:
.LFB639:
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
.LFE639:
	.size	PACKET_get_sub_packet, .-PACKET_get_sub_packet
	.type	PACKET_peek_net_2, @function
PACKET_peek_net_2:
.LFB640:
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
.LFE640:
	.size	PACKET_peek_net_2, .-PACKET_peek_net_2
	.type	PACKET_get_net_2, @function
PACKET_get_net_2:
.LFB641:
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
.LFE641:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_peek_net_4, @function
PACKET_peek_net_4:
.LFB646:
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
	ja	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
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
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	PACKET_peek_net_4, .-PACKET_peek_net_4
	.type	PACKET_peek_net_8, @function
PACKET_peek_net_8:
.LFB647:
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
	cmpq	$7, %rax
	ja	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$56, %rax
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
	salq	$48, %rax
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
	salq	$40, %rax
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
	salq	$32, %rax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$5, %rax
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
	addq	$6, %rax
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
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	PACKET_peek_net_8, .-PACKET_peek_net_8
	.type	PACKET_get_net_4, @function
PACKET_get_net_4:
.LFB648:
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
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	PACKET_get_net_4, .-PACKET_get_net_4
	.type	PACKET_get_net_8, @function
PACKET_get_net_8:
.LFB650:
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
	call	PACKET_peek_net_8
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	PACKET_get_net_8, .-PACKET_get_net_8
	.type	PACKET_peek_1, @function
PACKET_peek_1:
.LFB651:
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
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	PACKET_peek_1, .-PACKET_peek_1
	.type	PACKET_get_1, @function
PACKET_get_1:
.LFB652:
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
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	PACKET_get_1, .-PACKET_get_1
	.type	PACKET_peek_bytes, @function
PACKET_peek_bytes:
.LFB656:
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
	jnb	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	PACKET_peek_bytes, .-PACKET_peek_bytes
	.type	PACKET_get_bytes, @function
PACKET_get_bytes:
.LFB657:
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
	jne	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.section	.rodata
.LC0:
	.string	"../include/internal/packet.h"
	.text
	.type	PACKET_memdup, @function
PACKET_memdup:
.LFB661:
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
	jne	.L63
	movl	$1, %eax
	jmp	.L64
.L63:
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
	jne	.L65
	movl	$0, %eax
	jmp	.L64
.L65:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	PACKET_memdup, .-PACKET_memdup
	.type	PACKET_strndup, @function
PACKET_strndup:
.LFB662:
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
.LFE662:
	.size	PACKET_strndup, .-PACKET_strndup
	.type	PACKET_contains_zero_byte, @function
PACKET_contains_zero_byte:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	PACKET_contains_zero_byte, .-PACKET_contains_zero_byte
	.type	PACKET_forward, @function
PACKET_forward:
.LFB664:
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
	jnb	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	PACKET_forward, .-PACKET_forward
	.type	PACKET_get_length_prefixed_1, @function
PACKET_get_length_prefixed_1:
.LFB665:
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
	je	.L74
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L75
.L74:
	movl	$0, %eax
	jmp	.L77
.L75:
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
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	PACKET_get_length_prefixed_1, .-PACKET_get_length_prefixed_1
	.type	PACKET_as_length_prefixed_1, @function
PACKET_as_length_prefixed_1:
.LFB666:
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
	je	.L79
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L79
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L80
.L79:
	movl	$0, %eax
	jmp	.L82
.L80:
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
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	PACKET_as_length_prefixed_1, .-PACKET_as_length_prefixed_1
	.type	PACKET_get_length_prefixed_2, @function
PACKET_get_length_prefixed_2:
.LFB667:
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
	je	.L84
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L85
.L84:
	movl	$0, %eax
	jmp	.L87
.L85:
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
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
	.type	PACKET_as_length_prefixed_2, @function
PACKET_as_length_prefixed_2:
.LFB668:
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
	je	.L89
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L89
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L90
.L89:
	movl	$0, %eax
	jmp	.L92
.L90:
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
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	PACKET_as_length_prefixed_2, .-PACKET_as_length_prefixed_2
	.type	safe_add_time, @function
safe_add_time:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	jnc	.L94
	movl	$1, %ecx
.L94:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L96
	movq	-8(%rbp), %rax
	jmp	.L98
.L96:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L98:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	safe_add_time, .-safe_add_time
	.type	safe_sub_time, @function
safe_sub_time:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L100
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L100:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	safe_sub_time, .-safe_sub_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB709:
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
.LFE709:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$-1, %rdi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB717:
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
	jnb	.L109
	movl	$1, %eax
	jmp	.L110
.L109:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L111
	movl	$-1, %eax
	jmp	.L110
.L111:
	movl	$0, %eax
.L110:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_add, @function
ossl_time_add:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L113
	call	ossl_time_infinite
	jmp	.L115
.L113:
	movq	-8(%rbp), %rax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	ossl_time_add, .-ossl_time_add
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB721:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_sub_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L117
	call	ossl_time_zero
	jmp	.L119
.L117:
	movq	-8(%rbp), %rax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	ossl_time_subtract, .-ossl_time_subtract
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB732:
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
.LFE732:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB733:
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
.LFE733:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB748:
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
.LFE748:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB749:
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
.LFE749:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB825:
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
.LFE825:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB826:
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
.LFE826:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	tls1_get_peer_groups, @function
tls1_get_peer_groups:
.LFB857:
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
.LFE857:
	.size	tls1_get_peer_groups, .-tls1_get_peer_groups
	.section	.rodata
	.align 8
.LC1:
	.string	"../ssl/statem/extensions_srvr.c"
	.text
	.globl	tls_parse_ctos_renegotiate
	.type	tls_parse_ctos_renegotiate, @function
tls_parse_ctos_renegotiate:
.LFB861:
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
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L134
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L135
.L134:
	call	ERR_new@PLT
	leaq	__func__.40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$52, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$336, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L139
.L135:
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	1008(%rax), %rax
	cmpq	%rax, %rdx
	je	.L137
	call	ERR_new@PLT
	leaq	__func__.40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$337, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L139
.L137:
	movq	-24(%rbp), %rax
	movq	1008(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	944(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L138
	call	ERR_new@PLT
	leaq	__func__.40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$337, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L139
.L138:
	movq	-24(%rbp), %rax
	movl	$1, 1088(%rax)
	movl	$1, %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	tls_parse_ctos_renegotiate, .-tls_parse_ctos_renegotiate
	.globl	tls_parse_ctos_server_name
	.type	tls_parse_ctos_server_name, @function
tls_parse_ctos_server_name:
.LFB862:
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
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	je	.L141
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L142
.L141:
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L154
.L142:
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L144
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jne	.L144
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	jne	.L145
.L144:
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L154
.L145:
	movq	-56(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L146
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L147
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L147
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L147
.L146:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$255, %rax
	jbe	.L148
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$112, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L154
.L148:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_contains_zero_byte
	testl	%eax, %eax
	je	.L149
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$146, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$112, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L154
.L149:
	movq	-56(%rbp), %rax
	movq	2472(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$154, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 2472(%rax)
	movq	-56(%rbp), %rax
	leaq	2472(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_strndup
	testl	%eax, %eax
	jne	.L150
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$157, %esi
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
	jmp	.L154
.L150:
	movq	-56(%rbp), %rax
	movl	$1, 2760(%rax)
	jmp	.L151
.L147:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	je	.L152
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	800(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	800(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	je	.L152
	movl	$1, %edx
	jmp	.L153
.L152:
	movl	$0, %edx
.L153:
	movq	-56(%rbp), %rax
	movl	%edx, 2760(%rax)
.L151:
	movl	$1, %eax
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE862:
	.size	tls_parse_ctos_server_name, .-tls_parse_ctos_server_name
	.globl	tls_parse_ctos_maxfragmentlen
	.type	tls_parse_ctos_maxfragmentlen, @function
tls_parse_ctos_maxfragmentlen:
.LFB863:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$1, %rax
	jne	.L156
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L157
.L156:
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L162
.L157:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L159
	movl	-4(%rbp), %eax
	cmpl	$4, %eax
	jbe	.L160
.L159:
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$232, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L162
.L160:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	cmpb	$-1, %al
	jne	.L161
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movb	%dl, 856(%rax)
.L161:
	movl	$1, %eax
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE863:
	.size	tls_parse_ctos_maxfragmentlen, .-tls_parse_ctos_maxfragmentlen
	.globl	tls_parse_ctos_srp
	.type	tls_parse_ctos_srp, @function
tls_parse_ctos_srp:
.LFB864:
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
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_1
	testl	%eax, %eax
	je	.L164
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_contains_zero_byte
	testl	%eax, %eax
	je	.L165
.L164:
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$226, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L168
.L165:
	movq	-24(%rbp), %rax
	leaq	2904(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_strndup
	testl	%eax, %eax
	jne	.L167
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$231, %esi
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
	jmp	.L168
.L167:
	movl	$1, %eax
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE864:
	.size	tls_parse_ctos_srp, .-tls_parse_ctos_srp
	.globl	tls_parse_ctos_ec_pt_formats
	.type	tls_parse_ctos_ec_pt_formats, @function
tls_parse_ctos_ec_pt_formats:
.LFB865:
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
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_1
	testl	%eax, %eax
	je	.L170
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L171
.L170:
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L174
.L171:
	movq	-24(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L173
	movq	-24(%rbp), %rax
	leaq	2560(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	2568(%rax), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_memdup
	testl	%eax, %eax
	jne	.L173
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$255, %esi
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
	jmp	.L174
.L173:
	movl	$1, %eax
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE865:
	.size	tls_parse_ctos_ec_pt_formats, .-tls_parse_ctos_ec_pt_formats
	.globl	tls_parse_ctos_session_ticket
	.type	tls_parse_ctos_session_ticket, @function
tls_parse_ctos_session_ticket:
.LFB866:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	2616(%rax), %rax
	testq	%rax, %rax
	je	.L176
	movq	-40(%rbp), %rax
	movq	2616(%rax), %r12
	movq	-40(%rbp), %rax
	movq	2624(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %r13d
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rbx, %rcx
	movl	%r13d, %edx
	movq	%rax, %rdi
	call	*%r12
	testl	%eax, %eax
	jne	.L176
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$271, %esi
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
	jmp	.L177
.L176:
	movl	$1, %eax
.L177:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE866:
	.size	tls_parse_ctos_session_ticket, .-tls_parse_ctos_session_ticket
	.globl	tls_parse_ctos_sig_algs_cert
	.type	tls_parse_ctos_sig_algs_cert, @function
tls_parse_ctos_sig_algs_cert:
.LFB867:
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
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	je	.L179
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L180
.L179:
	call	ERR_new@PLT
	leaq	__func__.34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$287, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L184
.L180:
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L182
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L183
	movq	-24(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L183
.L182:
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_save_sigalgs@PLT
	testl	%eax, %eax
	jne	.L183
	call	ERR_new@PLT
	leaq	__func__.34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L184
.L183:
	movl	$1, %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE867:
	.size	tls_parse_ctos_sig_algs_cert, .-tls_parse_ctos_sig_algs_cert
	.globl	tls_parse_ctos_sig_algs
	.type	tls_parse_ctos_sig_algs, @function
tls_parse_ctos_sig_algs:
.LFB868:
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
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	je	.L186
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L187
.L186:
	call	ERR_new@PLT
	leaq	__func__.33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$312, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L191
.L187:
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L189
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L190
	movq	-24(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L190
.L189:
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_save_sigalgs@PLT
	testl	%eax, %eax
	jne	.L190
	call	ERR_new@PLT
	leaq	__func__.33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L191
.L190:
	movl	$1, %eax
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE868:
	.size	tls_parse_ctos_sig_algs, .-tls_parse_ctos_sig_algs
	.globl	tls_parse_ctos_status_request
	.type	tls_parse_ctos_status_request, @function
tls_parse_ctos_status_request:
.LFB869:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	-104(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L193
	movl	$1, %eax
	jmp	.L213
.L193:
	cmpq	$0, -128(%rbp)
	je	.L195
	movl	$1, %eax
	jmp	.L213
.L195:
	movq	-104(%rbp), %rax
	leaq	2480(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L196
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$346, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L213
.L196:
	movq	-104(%rbp), %rax
	movl	2480(%rax), %eax
	cmpl	$1, %eax
	je	.L197
	movq	-104(%rbp), %rax
	movl	$-1, 2480(%rax)
	movl	$1, %eax
	jmp	.L213
.L197:
	leaq	-48(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L198
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$359, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L213
.L198:
	movq	OCSP_RESPID_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OCSP_RESPID_freefunc_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	2504(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OCSP_RESPID_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L199
	call	OPENSSL_sk_new_null@PLT
	movq	-104(%rbp), %rdx
	movq	%rax, 2504(%rdx)
	movq	-104(%rbp), %rax
	movq	2504(%rax), %rax
	testq	%rax, %rax
	jne	.L201
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$371, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L213
.L199:
	movq	-104(%rbp), %rax
	movq	$0, 2504(%rax)
	jmp	.L201
.L208:
	leaq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L202
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L203
.L202:
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$385, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L213
.L203:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -88(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movslq	%eax, %rdx
	leaq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_OCSP_RESPID@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L205
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$393, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L213
.L205:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_end
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L206
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_RESPID_free@PLT
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$399, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L213
.L206:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OCSP_RESPID_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	2504(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OCSP_RESPID_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L201
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_RESPID_free@PLT
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$406, %esi
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
	jmp	.L213
.L201:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L208
	leaq	-64(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	jne	.L209
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$414, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L213
.L209:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L210
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -96(%rbp)
	movq	X509_EXTENSION_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_freefunc_type
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	2512(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movslq	%eax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_EXTENSIONS@PLT
	movq	-104(%rbp), %rdx
	movq	%rax, 2512(%rdx)
	movq	-104(%rbp), %rax
	movq	2512(%rax), %rax
	testq	%rax, %rax
	je	.L211
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_end
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L210
.L211:
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$426, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L213
.L210:
	movl	$1, %eax
.L213:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE869:
	.size	tls_parse_ctos_status_request, .-tls_parse_ctos_status_request
	.globl	tls_parse_ctos_npn
	.type	tls_parse_ctos_npn, @function
tls_parse_ctos_npn:
.LFB870:
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
	movq	-8(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L215
	movq	-8(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L216
.L215:
	movq	-8(%rbp), %rax
	movl	$1, 1092(%rax)
.L216:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE870:
	.size	tls_parse_ctos_npn, .-tls_parse_ctos_npn
	.globl	tls_parse_ctos_alpn
	.type	tls_parse_ctos_alpn, @function
tls_parse_ctos_alpn:
.LFB871:
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
	movq	-56(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L219
	movq	-56(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L219
	movl	$1, %eax
	jmp	.L227
.L219:
	leaq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	je	.L221
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$1, %rax
	ja	.L222
.L221:
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$464, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L227
.L222:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
.L225:
	leaq	-48(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L223
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L224
.L223:
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$473, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L227
.L224:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L225
	movq	-56(%rbp), %rax
	movq	1112(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$478, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 1112(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 1120(%rax)
	movq	-56(%rbp), %rax
	leaq	1120(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	1112(%rax), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_memdup
	testl	%eax, %eax
	jne	.L226
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$483, %esi
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
	jmp	.L227
.L226:
	movl	$1, %eax
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE871:
	.size	tls_parse_ctos_alpn, .-tls_parse_ctos_alpn
	.globl	tls_parse_ctos_use_srtp
	.type	tls_parse_ctos_use_srtp, @function
tls_parse_ctos_use_srtp:
.LFB872:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_srtp_profiles@PLT
	testq	%rax, %rax
	jne	.L229
	movl	$1, %eax
	jmp	.L242
.L229:
	leaq	-36(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L231
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L231
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	leaq	-64(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_sub_packet
	testl	%eax, %eax
	jne	.L232
.L231:
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$507, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$353, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L242
.L232:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_srtp_profiles@PLT
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	$0, 2816(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -8(%rbp)
	jmp	.L233
.L238:
	leaq	-44(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L234
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$519, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$353, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L242
.L234:
	movl	$0, -4(%rbp)
	jmp	.L235
.L237:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %edx
	movl	%edx, %edx
	cmpq	%rdx, %rax
	jne	.L236
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2816(%rax)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L233
.L236:
	addl	$1, -4(%rbp)
.L235:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L237
.L233:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L238
	leaq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L239
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$544, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$353, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L242
.L239:
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L240
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L241
.L240:
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$551, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$352, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L242
.L241:
	movl	$1, %eax
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE872:
	.size	tls_parse_ctos_use_srtp, .-tls_parse_ctos_use_srtp
	.globl	tls_parse_ctos_etm
	.type	tls_parse_ctos_etm, @function
tls_parse_ctos_etm:
.LFB873:
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
	movq	-8(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$524288, %eax
	testq	%rax, %rax
	jne	.L244
	movq	-8(%rbp), %rax
	movl	$1, 2684(%rax)
.L244:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE873:
	.size	tls_parse_ctos_etm, .-tls_parse_ctos_etm
	.globl	tls_parse_ctos_psk_kex_modes
	.type	tls_parse_ctos_psk_kex_modes, @function
tls_parse_ctos_psk_kex_modes:
.LFB874:
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
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_1
	testl	%eax, %eax
	je	.L247
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L250
.L247:
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$582, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L254
.L252:
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	jne	.L251
	movq	-40(%rbp), %rax
	movl	2680(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 2680(%rax)
	jmp	.L250
.L251:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L250
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1024, %eax
	testq	%rax, %rax
	je	.L250
	movq	-40(%rbp), %rax
	movl	2680(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 2680(%rax)
.L250:
	leaq	-20(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L252
	movq	-40(%rbp), %rax
	movl	2680(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L253
	movq	-40(%rbp), %rax
	movq	2360(%rax), %rax
	movabsq	$34359738368, %rdx
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L253
	movq	-40(%rbp), %rax
	movl	$1, 2680(%rax)
.L253:
	movl	$1, %eax
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE874:
	.size	tls_parse_ctos_psk_kex_modes, .-tls_parse_ctos_psk_kex_modes
	.globl	tls_parse_ctos_key_share
	.type	tls_parse_ctos_key_share, @function
tls_parse_ctos_key_share:
.LFB875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	$0, -20(%rbp)
	movq	-104(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L256
	movq	-104(%rbp), %rax
	movl	2680(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L256
	movl	$1, %eax
	jmp	.L274
.L256:
	movq	-104(%rbp), %rax
	movq	1136(%rax), %rax
	testq	%rax, %rax
	je	.L258
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$632, %esi
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
	jmp	.L274
.L258:
	leaq	-48(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	jne	.L259
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$637, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L274
.L259:
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_supported_groups@PLT
	leaq	-88(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_peer_groups
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L260
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$651, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$209, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L274
.L260:
	movq	-104(%rbp), %rax
	movzwl	1134(%rax), %eax
	testw	%ax, %ax
	je	.L262
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L262
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$662, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$108, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L274
.L273:
	leaq	-24(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L263
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L263
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L264
.L263:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$670, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L274
.L264:
	cmpl	$0, -20(%rbp)
	je	.L265
	jmp	.L262
.L265:
	movq	-104(%rbp), %rax
	movzwl	1134(%rax), %eax
	testw	%ax, %ax
	je	.L266
	movq	-104(%rbp), %rax
	movzwl	1134(%rax), %eax
	movzwl	%ax, %edx
	movl	-24(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L267
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L266
.L267:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$688, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$108, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L274
.L266:
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	-24(%rbp), %eax
	movzwl	%ax, %esi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	check_in_list@PLT
	testl	%eax, %eax
	jne	.L268
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$694, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$108, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L274
.L268:
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movl	-24(%rbp), %eax
	movzwl	%ax, %esi
	movq	-104(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	check_in_list@PLT
	testl	%eax, %eax
	je	.L262
	movl	-24(%rbp), %eax
	movzwl	%ax, %ecx
	movq	-104(%rbp), %rax
	movl	$131076, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls_group_allowed@PLT
	testl	%eax, %eax
	je	.L262
	movl	-24(%rbp), %eax
	movzwl	%ax, %esi
	movq	-104(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$772, %ecx
	movl	$772, %edx
	movq	%rax, %rdi
	call	tls_valid_group@PLT
	testl	%eax, %eax
	jne	.L270
	jmp	.L262
.L270:
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movw	%dx, 1134(%rax)
	movq	-104(%rbp), %rax
	movq	2184(%rax), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 776(%rax)
	movl	-24(%rbp), %eax
	movzwl	%ax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_generate_param_group@PLT
	movq	-104(%rbp), %rdx
	movq	%rax, 1136(%rdx)
	movq	-104(%rbp), %rax
	movq	1136(%rax), %rax
	testq	%rax, %rax
	jne	.L271
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$716, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$314, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L274
.L271:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movq	1136(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls13_set_encoded_pub_key@PLT
	testl	%eax, %eax
	jg	.L272
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$724, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$306, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L274
.L272:
	movl	$1, -20(%rbp)
.L262:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L273
	movl	$1, %eax
.L274:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE875:
	.size	tls_parse_ctos_key_share, .-tls_parse_ctos_key_share
	.section	.rodata
.LC2:
	.string	"HMAC"
.LC3:
	.string	"SHA2-256"
	.text
	.globl	tls_parse_ctos_cookie
	.type	tls_parse_ctos_cookie, @function
tls_parse_ctos_cookie:
.LFB876:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4640, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -4616(%rbp)
	movq	%rsi, -4624(%rbp)
	movl	%edx, -4628(%rbp)
	movq	%rcx, -4640(%rbp)
	movq	%r8, -4648(%rbp)
	movq	-4616(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-4616(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	je	.L276
	movq	-4616(%rbp), %rax
	movq	288(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	jne	.L277
.L276:
	movl	$1, %eax
	jmp	.L310
.L277:
	leaq	-128(%rbp), %rdx
	movq	-4624(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	jne	.L279
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L279:
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -40(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -48(%rbp)
	cmpq	$31, -48(%rbp)
	jbe	.L280
	movq	-48(%rbp), %rax
	leaq	-32(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L281
.L280:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$767, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L281:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -56(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -64(%rbp)
	movq	-4616(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	736(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rsi
	movl	$32, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_private_key_ex@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L282
	cmpq	$0, -72(%rbp)
	jne	.L283
.L282:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$781, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L283:
	movq	$32, -4584(%rbp)
	movq	-32(%rbp), %rax
	movq	1096(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rdi
	leaq	.LC3(%rip), %rsi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jle	.L284
	movq	-48(%rbp), %rax
	leaq	-32(%rax), %rdi
	movq	-40(%rbp), %rcx
	leaq	-4584(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	jle	.L284
	movq	-4584(%rbp), %rax
	cmpq	$32, %rax
	je	.L285
.L284:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L285:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rcx
	leaq	-272(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L286
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$308, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L286:
	leaq	-92(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L287
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$806, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L287:
	movl	-92(%rbp), %eax
	cmpl	$1, %eax
	je	.L288
	movl	$1, %eax
	jmp	.L310
.L288:
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L289
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$820, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L289:
	movl	-96(%rbp), %eax
	cmpl	$772, %eax
	je	.L290
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$824, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$116, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L290:
	leaq	-104(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L291
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$830, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L291:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -80(%rbp)
	leaq	-128(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L292
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$836, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L292:
	movq	-4616(%rbp), %rax
	movzwl	1134(%rax), %eax
	movzwl	%ax, %edx
	movl	-104(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L293
	movq	-4616(%rbp), %rax
	movq	704(%rax), %rbx
	movq	-80(%rbp), %rcx
	movq	-4616(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_get_cipher_by_char@PLT
	cmpq	%rax, %rbx
	je	.L294
.L293:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$846, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$186, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L294:
	leaq	-100(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L295
	leaq	-4608(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_8
	testl	%eax, %eax
	je	.L295
	leaq	-160(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L295
	leaq	-176(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L295
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$32, %rax
	je	.L296
.L295:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$855, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L296:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -88(%rbp)
	movq	-4608(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	jb	.L297
	movq	-4608(%rbp), %rax
	movq	-88(%rbp), %rdx
	subq	%rax, %rdx
	cmpq	$600, %rdx
	jbe	.L298
.L297:
	movl	$1, %eax
	jmp	.L310
.L298:
	movq	-32(%rbp), %rax
	movq	232(%rax), %rbx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %r12
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	movq	-4616(%rbp), %rax
	movq	64(%rax), %rax
	movq	%r12, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	testl	%eax, %eax
	jne	.L299
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$870, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$308, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L299:
	leaq	-4576(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	$0, %ecx
	movl	$4300, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	jne	.L300
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$880, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L300:
	leaq	-240(%rbp), %rax
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L301
	leaq	-240(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L301
	leaq	-240(%rbp), %rax
	movl	$2, %edx
	movl	$771, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L301
	movq	hrrrandom@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	-240(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L301
	movq	-4616(%rbp), %rax
	movq	2256(%rax), %rdx
	movq	-4616(%rbp), %rax
	leaq	2224(%rax), %rsi
	leaq	-240(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L301
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	176(%rax), %r8
	movq	-4616(%rbp), %rax
	movq	704(%rax), %rax
	leaq	-4600(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L301
	leaq	-240(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L301
	leaq	-240(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L302
.L301:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$894, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L302:
	leaq	-240(%rbp), %rax
	movl	$2, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L303
	leaq	-240(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L303
	movq	-4616(%rbp), %rax
	movl	72(%rax), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L303
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L304
.L303:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$902, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L304:
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	je	.L305
	leaq	-240(%rbp), %rax
	movl	$2, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L306
	leaq	-240(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L306
	movq	-4616(%rbp), %rax
	movzwl	1134(%rax), %eax
	movzwl	%ax, %ecx
	leaq	-240(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L306
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L305
.L306:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$911, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L305:
	leaq	-240(%rbp), %rax
	movl	$2, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L307
	leaq	-240(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L307
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	leaq	-240(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L307
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L307
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L307
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L307
	leaq	-4592(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L307
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	jne	.L308
.L307:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$924, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4616(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L310
.L308:
	movq	-4592(%rbp), %r12
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rsi
	leaq	-4576(%rbp), %rdx
	movq	-4616(%rbp), %rax
	movq	%r12, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	create_synthetic_message_hash@PLT
	testl	%eax, %eax
	jne	.L309
	movl	$0, %eax
	jmp	.L310
.L309:
	movq	-4616(%rbp), %rax
	movl	$1, 2136(%rax)
	movq	-4616(%rbp), %rax
	movl	$1, 2712(%rax)
	movl	$1, %eax
.L310:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE876:
	.size	tls_parse_ctos_cookie, .-tls_parse_ctos_cookie
	.globl	tls_parse_ctos_supported_groups
	.type	tls_parse_ctos_supported_groups, @function
tls_parse_ctos_supported_groups:
.LFB877:
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
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	je	.L312
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L312
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	andl	$1, %eax
	testq	%rax, %rax
	je	.L313
.L312:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$955, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L317
.L313:
	movq	-24(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L315
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L316
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L316
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L316
.L315:
	movq	-24(%rbp), %rax
	movq	2600(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$960, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 2600(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 2592(%rax)
	movq	-24(%rbp), %rax
	leaq	2592(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	2600(%rax), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_save_u16@PLT
	testl	%eax, %eax
	jne	.L316
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$966, %esi
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
	jmp	.L317
.L316:
	movl	$1, %eax
.L317:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE877:
	.size	tls_parse_ctos_supported_groups, .-tls_parse_ctos_supported_groups
	.globl	tls_parse_ctos_ems
	.type	tls_parse_ctos_ems, @function
tls_parse_ctos_ems:
.LFB878:
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L319
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$979, %esi
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
	jmp	.L320
.L319:
	movq	-8(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L321
	movl	$1, %eax
	jmp	.L320
.L321:
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	orb	$2, %ah
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 288(%rax)
	movl	$1, %eax
.L320:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE878:
	.size	tls_parse_ctos_ems, .-tls_parse_ctos_ems
	.globl	tls_parse_ctos_early_data
	.type	tls_parse_ctos_early_data, @function
tls_parse_ctos_early_data:
.LFB879:
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L323
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$996, %esi
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
	jmp	.L324
.L323:
	movq	-8(%rbp), %rax
	movl	2136(%rax), %eax
	testl	%eax, %eax
	je	.L325
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1001, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L324
.L325:
	movl	$1, %eax
.L324:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE879:
	.size	tls_parse_ctos_early_data, .-tls_parse_ctos_early_data
	.type	tls_get_stateful_ticket, @function
tls_get_stateful_ticket:
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
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, 2536(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L327
	cmpq	$32, %rax
	je	.L334
	jmp	.L333
.L327:
	movl	$3, %eax
	jmp	.L330
.L333:
	movl	$4, %eax
	jmp	.L330
.L334:
	nop
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_sess_in_cache@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L332
	movl	$4, %eax
	jmp	.L330
.L332:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$5, %eax
.L330:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE880:
	.size	tls_get_stateful_ticket, .-tls_get_stateful_ticket
	.globl	tls_parse_ctos_psk
	.type	tls_parse_ctos_psk, @function
tls_parse_ctos_psk:
.LFB881:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$784, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -760(%rbp)
	movq	%rsi, -768(%rbp)
	movl	%edx, -772(%rbp)
	movq	%rcx, -784(%rbp)
	movq	%r8, -792(%rbp)
	movq	$0, -168(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	-760(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-760(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-760(%rbp), %rax
	movl	2680(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L336
	movl	$1, %eax
	jmp	.L382
.L336:
	leaq	-128(%rbp), %rdx
	movq	-768(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L338
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1056, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L382
.L338:
	movq	-760(%rbp), %rax
	movl	$0, 2536(%rax)
	movl	$0, -20(%rbp)
	jmp	.L339
.L374:
	leaq	-192(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	je	.L340
	leaq	-200(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	jne	.L341
.L340:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1068, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L382
.L341:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -72(%rbp)
	movq	-760(%rbp), %rax
	movq	2312(%rax), %rax
	testq	%rax, %rax
	je	.L343
	movq	-760(%rbp), %rax
	movq	2312(%rax), %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rsi
	leaq	-168(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	*%rbx
	testl	%eax, %eax
	jne	.L343
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1076, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L382
.L343:
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	jne	.L344
	movq	-760(%rbp), %rax
	movq	2304(%rax), %rax
	testq	%rax, %rax
	je	.L344
	cmpq	$256, -72(%rbp)
	ja	.L344
	movq	$0, -208(%rbp)
	leaq	-208(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_strndup
	testl	%eax, %eax
	jne	.L345
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1089, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L346
.L345:
	movq	-760(%rbp), %rax
	movq	2304(%rax), %r8
	movq	-208(%rbp), %rsi
	leaq	-752(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$512, %ecx
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -76(%rbp)
	movq	-208(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1094, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$512, -76(%rbp)
	jbe	.L347
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1096, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L346
.L347:
	cmpl	$0, -76(%rbp)
	je	.L344
	movw	$275, -210(%rbp)
	movq	-760(%rbp), %rax
	leaq	-210(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CIPHER_find@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L349
	movl	-76(%rbp), %edx
	leaq	-752(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1110, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L382
.L349:
	call	SSL_SESSION_new@PLT
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	je	.L350
	movl	-76(%rbp), %edx
	movq	-168(%rbp), %rax
	leaq	-752(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_set1_master_key@PLT
	testl	%eax, %eax
	je	.L350
	movq	-168(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_set_cipher@PLT
	testl	%eax, %eax
	je	.L350
	movq	-168(%rbp), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	call	SSL_SESSION_set_protocol_version@PLT
	testl	%eax, %eax
	jne	.L351
.L350:
	movl	-76(%rbp), %edx
	leaq	-752(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1122, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L373
.L351:
	movl	-76(%rbp), %edx
	leaq	-752(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L344
.L346:
	jmp	.L382
.L344:
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	je	.L353
	movq	-168(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_session_dup@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L354
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L373
.L354:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-760(%rbp), %rax
	movq	2144(%rax), %rax
	movq	-760(%rbp), %rdx
	leaq	2152(%rdx), %rsi
	movq	-168(%rbp), %rdx
	leaq	640(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-168(%rbp), %rax
	movq	-760(%rbp), %rdx
	movq	2144(%rdx), %rdx
	movq	%rdx, 632(%rax)
	movl	$1, -28(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L355
	movq	-760(%rbp), %rax
	movl	$1, 2692(%rax)
.L355:
	movq	-760(%rbp), %rax
	movl	$1, 2536(%rax)
	jmp	.L356
.L353:
	movq	-760(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$16384, %eax
	testq	%rax, %rax
	jne	.L357
	movq	-760(%rbp), %rax
	movl	5280(%rax), %eax
	testl	%eax, %eax
	je	.L358
	movq	-760(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$16777216, %eax
	testq	%rax, %rax
	jne	.L358
.L357:
	leaq	-168(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	movq	-760(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_get_stateful_ticket
	movl	%eax, -44(%rbp)
	jmp	.L359
.L358:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rsi
	leaq	-168(%rbp), %rdx
	movq	-760(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	tls_decrypt_ticket@PLT
	movl	%eax, -44(%rbp)
.L359:
	cmpl	$3, -44(%rbp)
	jne	.L360
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1170, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L361
.L360:
	cmpl	$0, -44(%rbp)
	je	.L362
	cmpl	$1, -44(%rbp)
	jne	.L363
.L362:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L361
.L363:
	cmpl	$2, -44(%rbp)
	je	.L383
	cmpl	$4, -44(%rbp)
	je	.L383
	movq	-760(%rbp), %rax
	movl	5280(%rax), %eax
	testl	%eax, %eax
	je	.L367
	movq	-760(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$16777216, %eax
	testq	%rax, %rax
	jne	.L367
	movq	-168(%rbp), %rdx
	movq	-760(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_remove_session@PLT
	testl	%eax, %eax
	jne	.L367
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	$0, -168(%rbp)
	jmp	.L369
.L367:
	movq	-168(%rbp), %rax
	movl	832(%rax), %eax
	movl	%eax, %eax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rbx
	movq	-200(%rbp), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, -232(%rbp)
	movq	-168(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, %rdx
	movq	736(%rbx), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_subtract
	movq	%rax, -224(%rbp)
	movl	$1000000000, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, -240(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L356
	movq	-168(%rbp), %rax
	movq	-224(%rbp), %rdx
	movq	728(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L356
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jg	.L356
	movabsq	$10000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	js	.L356
	movq	-760(%rbp), %rax
	movl	$1, 2692(%rax)
	jmp	.L356
.L361:
	jmp	.L382
.L356:
	movq	-168(%rbp), %rax
	movq	760(%rax), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_md@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L370
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1221, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L373
.L370:
	movq	-760(%rbp), %rax
	movq	704(%rax), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	jne	.L384
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	$0, -168(%rbp)
	movq	-760(%rbp), %rax
	movl	$0, 2692(%rax)
	movq	-760(%rbp), %rax
	movl	$0, 2536(%rax)
	jmp	.L369
.L383:
	nop
.L369:
	addl	$1, -20(%rbp)
.L339:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L374
	jmp	.L372
.L384:
	nop
.L372:
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	jne	.L375
	movl	$1, %eax
	jmp	.L382
.L375:
	movq	-768(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rdx
	movq	-760(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	movq	%rax, -112(%rbp)
	leaq	-144(%rbp), %rdx
	movq	-768(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L376
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L373
.L376:
	movl	$0, -24(%rbp)
	jmp	.L377
.L379:
	leaq	-160(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L378
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1250, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L373
.L378:
	addl	$1, -24(%rbp)
.L377:
	movl	-24(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jnb	.L379
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	%rax, -112(%rbp)
	je	.L380
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1256, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-760(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L373
.L380:
	movl	-28(%rbp), %r12d
	movq	-168(%rbp), %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rdi
	movq	-760(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-760(%rbp), %rax
	subq	$8, %rsp
	pushq	%r12
	pushq	$0
	pushq	%rbx
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls_psk_do_binder@PLT
	addq	$32, %rsp
	cmpl	$1, %eax
	jne	.L385
	movl	-20(%rbp), %edx
	movq	-760(%rbp), %rax
	movl	%edx, 2720(%rax)
	movq	-760(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-168(%rbp), %rdx
	movq	-760(%rbp), %rax
	movq	%rdx, 2184(%rax)
	movl	$1, %eax
	jmp	.L382
.L385:
	nop
.L373:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movl	$0, %eax
.L382:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE881:
	.size	tls_parse_ctos_psk, .-tls_parse_ctos_psk
	.globl	tls_parse_ctos_post_handshake_auth
	.type	tls_parse_ctos_post_handshake_auth, @function
tls_parse_ctos_post_handshake_auth:
.LFB882:
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L387
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1282, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$278, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L388
.L387:
	movq	-8(%rbp), %rax
	movl	$2, 2832(%rax)
	movl	$1, %eax
.L388:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE882:
	.size	tls_parse_ctos_post_handshake_auth, .-tls_parse_ctos_post_handshake_auth
	.globl	tls_construct_stoc_renegotiate
	.type	tls_construct_stoc_renegotiate, @function
tls_construct_stoc_renegotiate:
.LFB883:
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
	movq	-8(%rbp), %rax
	movl	1088(%rax), %eax
	testl	%eax, %eax
	jne	.L390
	movl	$2, %eax
	jmp	.L391
.L390:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$65281, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L392
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L392
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L392
	movq	-8(%rbp), %rax
	movq	1008(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	944(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L392
	movq	-8(%rbp), %rax
	movq	1080(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	1016(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L392
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L392
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L393
.L392:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1312, %esi
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
	jmp	.L391
.L393:
	movl	$1, %eax
.L391:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE883:
	.size	tls_construct_stoc_renegotiate, .-tls_construct_stoc_renegotiate
	.globl	tls_construct_stoc_server_name
	.type	tls_construct_stoc_server_name, @function
tls_construct_stoc_server_name:
.LFB884:
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
	movq	-8(%rbp), %rax
	movl	2760(%rax), %eax
	cmpl	$1, %eax
	je	.L395
	movl	$2, %eax
	jmp	.L396
.L395:
	movq	-8(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L397
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L398
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L398
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L397
.L398:
	movl	$2, %eax
	jmp	.L396
.L397:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L399
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L400
.L399:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1335, %esi
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
	jmp	.L396
.L400:
	movl	$1, %eax
.L396:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE884:
	.size	tls_construct_stoc_server_name, .-tls_construct_stoc_server_name
	.globl	tls_construct_stoc_maxfragmentlen
	.type	tls_construct_stoc_maxfragmentlen, @function
tls_construct_stoc_maxfragmentlen:
.LFB885:
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
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	testb	%al, %al
	je	.L402
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	cmpb	$4, %al
	jbe	.L403
.L402:
	movl	$2, %eax
	jmp	.L404
.L403:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L405
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L405
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	movzbl	%al, %ecx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L405
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L406
.L405:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1358, %esi
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
	jmp	.L404
.L406:
	movl	$1, %eax
.L404:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE885:
	.size	tls_construct_stoc_maxfragmentlen, .-tls_construct_stoc_maxfragmentlen
	.globl	tls_construct_stoc_ec_pt_formats
	.type	tls_construct_stoc_ec_pt_formats, @function
tls_construct_stoc_ec_pt_formats:
.LFB886:
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
	movq	-8(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L408
	movq	-16(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L409
.L408:
	movq	-56(%rbp), %rax
	movq	2568(%rax), %rax
	testq	%rax, %rax
	je	.L409
	movl	$1, %eax
	jmp	.L410
.L409:
	movl	$0, %eax
.L410:
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L411
	movl	$2, %eax
	jmp	.L415
.L411:
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_formatlist@PLT
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L413
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L413
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L413
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L414
.L413:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1384, %esi
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
	jmp	.L415
.L414:
	movl	$1, %eax
.L415:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE886:
	.size	tls_construct_stoc_ec_pt_formats, .-tls_construct_stoc_ec_pt_formats
	.globl	tls_construct_stoc_supported_groups
	.type	tls_construct_stoc_supported_groups, @function
tls_construct_stoc_supported_groups:
.LFB887:
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
	movq	$1, -16(%rbp)
	movq	-56(%rbp), %rax
	movzwl	1134(%rax), %eax
	testw	%ax, %ax
	jne	.L417
	movl	$2, %eax
	jmp	.L429
.L417:
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_supported_groups@PLT
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L419
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1406, %esi
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
	jmp	.L429
.L419:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	movl	%eax, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L420
.L426:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -22(%rbp)
	movzwl	-22(%rbp), %esi
	movl	-20(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	tls_valid_group@PLT
	testl	%eax, %eax
	je	.L421
	movzwl	-22(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$131076, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls_group_allowed@PLT
	testl	%eax, %eax
	je	.L421
	cmpq	$0, -16(%rbp)
	je	.L422
	movq	-56(%rbp), %rax
	movzwl	1134(%rax), %eax
	cmpw	%ax, -22(%rbp)
	jne	.L423
	movl	$2, %eax
	jmp	.L429
.L423:
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L424
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L424
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L425
.L424:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1430, %esi
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
	jmp	.L429
.L425:
	movq	$0, -16(%rbp)
.L422:
	movzwl	-22(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L421
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1437, %esi
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
	jmp	.L429
.L421:
	addq	$1, -8(%rbp)
.L420:
	movq	-40(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L426
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L427
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L428
.L427:
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1444, %esi
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
	jmp	.L429
.L428:
	movl	$1, %eax
.L429:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE887:
	.size	tls_construct_stoc_supported_groups, .-tls_construct_stoc_supported_groups
	.globl	tls_construct_stoc_session_ticket
	.type	tls_construct_stoc_session_ticket, @function
tls_construct_stoc_session_ticket:
.LFB888:
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
	movq	-8(%rbp), %rax
	movl	2536(%rax), %eax
	testl	%eax, %eax
	je	.L431
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_use_ticket@PLT
	testl	%eax, %eax
	jne	.L432
.L431:
	movq	-8(%rbp), %rax
	movl	$0, 2536(%rax)
	movl	$2, %eax
	jmp	.L433
.L432:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$35, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L434
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L435
.L434:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1462, %esi
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
	jmp	.L433
.L435:
	movl	$1, %eax
.L433:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE888:
	.size	tls_construct_stoc_session_ticket, .-tls_construct_stoc_session_ticket
	.globl	tls_construct_stoc_status_request
	.type	tls_construct_stoc_status_request, @function
tls_construct_stoc_status_request:
.LFB889:
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
	cmpl	$16384, -20(%rbp)
	jne	.L437
	movl	$2, %eax
	jmp	.L438
.L437:
	movq	-8(%rbp), %rax
	movl	2500(%rax), %eax
	testl	%eax, %eax
	jne	.L439
	movl	$2, %eax
	jmp	.L438
.L439:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L440
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L440
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L440
	cmpq	$0, -40(%rbp)
	je	.L440
	movl	$2, %eax
	jmp	.L438
.L440:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L441
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L442
.L441:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1486, %esi
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
	jmp	.L438
.L442:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L443
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L443
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L443
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_construct_cert_status_body@PLT
	testl	%eax, %eax
	jne	.L443
	movl	$0, %eax
	jmp	.L438
.L443:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L444
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1500, %esi
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
	jmp	.L438
.L444:
	movl	$1, %eax
.L438:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE889:
	.size	tls_construct_stoc_status_request, .-tls_construct_stoc_status_request
	.globl	tls_construct_stoc_next_proto_neg
	.type	tls_construct_stoc_next_proto_neg, @function
tls_construct_stoc_next_proto_neg:
.LFB890:
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
	movq	-56(%rbp), %rax
	movl	1092(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 1092(%rax)
	cmpl	$0, -4(%rbp)
	je	.L446
	movq	-16(%rbp), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	jne	.L447
.L446:
	movl	$2, %eax
	jmp	.L452
.L447:
	movq	-16(%rbp), %rax
	movq	704(%rax), %r8
	movq	-16(%rbp), %rax
	movq	712(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	leaq	-36(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L449
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movl	$13172, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L450
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L451
.L450:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1528, %esi
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
	jmp	.L452
.L451:
	movq	-56(%rbp), %rax
	movl	$1, 1092(%rax)
	movl	$1, %eax
	jmp	.L452
.L449:
	movl	$2, %eax
.L452:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE890:
	.size	tls_construct_stoc_next_proto_neg, .-tls_construct_stoc_next_proto_neg
	.globl	tls_construct_stoc_alpn
	.type	tls_construct_stoc_alpn, @function
tls_construct_stoc_alpn:
.LFB891:
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
	movq	-8(%rbp), %rax
	movq	1096(%rax), %rax
	testq	%rax, %rax
	jne	.L454
	movl	$2, %eax
	jmp	.L455
.L454:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L456
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L456
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L456
	movq	-8(%rbp), %rax
	movq	1104(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	1096(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L456
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L456
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L457
.L456:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1553, %esi
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
	jmp	.L455
.L457:
	movl	$1, %eax
.L455:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE891:
	.size	tls_construct_stoc_alpn, .-tls_construct_stoc_alpn
	.globl	tls_construct_stoc_use_srtp
	.type	tls_construct_stoc_use_srtp, @function
tls_construct_stoc_use_srtp:
.LFB892:
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
	movq	-8(%rbp), %rax
	movq	2816(%rax), %rax
	testq	%rax, %rax
	jne	.L459
	movl	$2, %eax
	jmp	.L460
.L459:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$14, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L461
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L461
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L461
	movq	-8(%rbp), %rax
	movq	2816(%rax), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L461
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L461
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L462
.L461:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1574, %esi
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
	jmp	.L460
.L462:
	movl	$1, %eax
.L460:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE892:
	.size	tls_construct_stoc_use_srtp, .-tls_construct_stoc_use_srtp
	.globl	tls_construct_stoc_etm
	.type	tls_construct_stoc_etm, @function
tls_construct_stoc_etm:
.LFB893:
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
	movq	-8(%rbp), %rax
	movl	2684(%rax), %eax
	testl	%eax, %eax
	jne	.L464
	movl	$2, %eax
	jmp	.L465
.L464:
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	40(%rax), %eax
	cmpl	$64, %eax
	je	.L466
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	cmpl	$4, %eax
	je	.L466
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	cmpl	$1024, %eax
	je	.L466
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	cmpl	$262144, %eax
	je	.L466
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	cmpl	$4194304, %eax
	je	.L466
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	cmpl	$8388608, %eax
	jne	.L467
.L466:
	movq	-8(%rbp), %rax
	movl	$0, 2684(%rax)
	movl	$2, %eax
	jmp	.L465
.L467:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L468
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L469
.L468:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1605, %esi
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
	jmp	.L465
.L469:
	movl	$1, %eax
.L465:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE893:
	.size	tls_construct_stoc_etm, .-tls_construct_stoc_etm
	.globl	tls_construct_stoc_ems
	.type	tls_construct_stoc_ems, @function
tls_construct_stoc_ems:
.LFB894:
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
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	jne	.L471
	movl	$2, %eax
	jmp	.L472
.L471:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$23, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L473
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L474
.L473:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1621, %esi
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
	jmp	.L472
.L474:
	movl	$1, %eax
.L472:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE894:
	.size	tls_construct_stoc_ems, .-tls_construct_stoc_ems
	.globl	tls_construct_stoc_supported_versions
	.type	tls_construct_stoc_supported_versions, @function
tls_construct_stoc_supported_versions:
.LFB895:
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
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L476
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L476
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L476
	movl	$1, %eax
	jmp	.L477
.L476:
	movl	$0, %eax
.L477:
	cltq
	testq	%rax, %rax
	jne	.L478
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1633, %esi
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
	jmp	.L479
.L478:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L480
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L480
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L480
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L481
.L480:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1641, %esi
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
	jmp	.L479
.L481:
	movl	$1, %eax
.L479:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE895:
	.size	tls_construct_stoc_supported_versions, .-tls_construct_stoc_supported_versions
	.globl	tls_construct_stoc_key_share
	.type	tls_construct_stoc_key_share, @function
tls_construct_stoc_key_share:
.LFB896:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	1136(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L483
	cmpq	$0, -16(%rbp)
	je	.L484
	movl	$2, %eax
	jmp	.L507
.L484:
	movq	-80(%rbp), %rax
	movl	$2, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L486
	movq	-80(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L486
	movq	-72(%rbp), %rax
	movzwl	1134(%rax), %eax
	movzwl	%ax, %ecx
	movq	-80(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L486
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L487
.L486:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1667, %esi
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
	jmp	.L507
.L487:
	movl	$1, %eax
	jmp	.L507
.L483:
	cmpq	$0, -16(%rbp)
	jne	.L488
	movq	-72(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L489
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls13_generate_handshake_secret@PLT
	testl	%eax, %eax
	jne	.L490
.L489:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1677, %esi
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
	jmp	.L507
.L490:
	movl	$2, %eax
	jmp	.L507
.L488:
	movq	-72(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L491
	movq	-72(%rbp), %rax
	movl	2680(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L491
	movl	$2, %eax
	jmp	.L507
.L491:
	movq	-80(%rbp), %rax
	movl	$2, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L492
	movq	-80(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L492
	movq	-72(%rbp), %rax
	movzwl	1134(%rax), %eax
	movzwl	%ax, %ecx
	movq	-80(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L493
.L492:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1696, %esi
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
	jmp	.L507
.L493:
	movq	-72(%rbp), %rax
	movzwl	1134(%rax), %eax
	movzwl	%ax, %edx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_group_id_lookup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L494
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1702, %esi
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
	jmp	.L507
.L494:
	movq	-32(%rbp), %rax
	movzbl	48(%rax), %eax
	testb	%al, %al
	jne	.L495
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_generate_pkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L496
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1710, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$524308, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L507
.L496:
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get1_encoded_public_key@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L497
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1717, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$524304, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L507
.L497:
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L498
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L499
.L498:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1724, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1726, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L507
.L499:
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1729, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 712(%rax)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_derive@PLT
	testl	%eax, %eax
	jne	.L500
	movl	$0, %eax
	jmp	.L507
.L495:
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ssl_encapsulate@PLT
	testl	%eax, %eax
	jne	.L501
	movl	$0, %eax
	jmp	.L507
.L501:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.L503
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1756, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1757, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L507
.L503:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L504
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L505
.L504:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1763, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1764, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L507
.L505:
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1767, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	840(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	832(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_gensecret@PLT
	testl	%eax, %eax
	jne	.L500
	movl	$0, %eax
	jmp	.L507
.L500:
	movq	-72(%rbp), %rax
	movb	$1, 1133(%rax)
	movl	$1, %eax
.L507:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE896:
	.size	tls_construct_stoc_key_share, .-tls_construct_stoc_key_share
	.globl	tls_construct_stoc_cookie
	.type	tls_construct_stoc_cookie, @function
tls_construct_stoc_cookie:
.LFB897:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	%edx, -180(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movl	$0, -4(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-168(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-168(%rbp), %rax
	movq	288(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	jne	.L509
	movl	$2, %eax
	jmp	.L530
.L509:
	movq	-16(%rbp), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	jne	.L511
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1803, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$287, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L530
.L511:
	movq	-176(%rbp), %rax
	movl	$2, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L512
	movq	-176(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L512
	movq	-176(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L512
	leaq	-112(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L512
	leaq	-88(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	$4214, %esi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	je	.L512
	movq	-176(%rbp), %rax
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L512
	movq	-176(%rbp), %rax
	movl	$2, %edx
	movl	$772, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L512
	movq	-168(%rbp), %rax
	movzwl	1134(%rax), %eax
	movzwl	%ax, %ecx
	movq	-176(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L512
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	176(%rax), %r8
	movq	-168(%rbp), %rax
	movq	704(%rax), %rax
	leaq	-120(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L512
	movq	-168(%rbp), %rax
	movq	1136(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %ecx
	movq	-176(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L512
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rcx
	movq	-176(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L512
	movq	-176(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L512
	leaq	-56(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	jne	.L513
.L512:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1822, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L530
.L513:
	movq	-168(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl3_digest_cached_records@PLT
	testl	%eax, %eax
	je	.L514
	movq	-56(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	ssl_handshake_hash@PLT
	testl	%eax, %eax
	jne	.L515
.L514:
	movl	$0, %eax
	jmp	.L530
.L515:
	movq	-136(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L516
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L516
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L516
	movq	-176(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L516
	leaq	-72(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	jne	.L517
.L516:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1842, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L530
.L517:
	movq	-16(%rbp), %rax
	movq	224(%rax), %r8
	movq	-72(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L518
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1849, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$400, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L530
.L518:
	movq	-152(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L519
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L519
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L519
	leaq	-128(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L519
	leaq	-96(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	jne	.L520
.L519:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1858, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L530
.L520:
	movq	$32, -144(%rbp)
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$4182, %rax
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L521
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1865, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L530
.L521:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-168(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	736(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rsi
	movl	$32, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_new_raw_private_key_ex@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L522
	cmpq	$0, -48(%rbp)
	jne	.L523
.L522:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1876, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L524
.L523:
	movq	-16(%rbp), %rax
	movq	1096(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rdi
	leaq	.LC3(%rip), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jle	.L525
	movq	-128(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_DigestSign@PLT
	testl	%eax, %eax
	jg	.L526
.L525:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1884, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L524
.L526:
	movq	-128(%rbp), %rdx
	movq	-144(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$4214, %rax
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L527
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1889, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L524
.L527:
	movq	-144(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L528
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L528
	movq	-96(%rbp), %rax
	movq	-128(%rbp), %rdx
	negq	%rdx
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L528
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L528
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L529
.L528:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1898, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-168(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L524
.L529:
	movl	$1, -4(%rbp)
.L524:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
.L530:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE897:
	.size	tls_construct_stoc_cookie, .-tls_construct_stoc_cookie
	.globl	tls_construct_stoc_cryptopro_bug
	.type	tls_construct_stoc_cryptopro_bug, @function
tls_construct_stoc_cryptopro_bug:
.LFB898:
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
	movabsq	$590004743229729021, %rax
	movabsq	$649083510437053958, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$145106028542167088, %rax
	movabsq	$-8851255494666349054, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$386007555, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	704(%rax), %rax
	movl	24(%rax), %eax
	movzwl	%ax, %eax
	cmpl	$128, %eax
	je	.L532
	movq	-56(%rbp), %rax
	movq	704(%rax), %rax
	movl	24(%rax), %eax
	movzwl	%ax, %eax
	cmpl	$129, %eax
	jne	.L533
.L532:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	andl	$2147483648, %eax
	testq	%rax, %rax
	jne	.L534
.L533:
	movl	$2, %eax
	jmp	.L537
.L534:
	leaq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$36, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L536
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1933, %esi
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
	jmp	.L537
.L536:
	movl	$1, %eax
.L537:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE898:
	.size	tls_construct_stoc_cryptopro_bug, .-tls_construct_stoc_cryptopro_bug
	.globl	tls_construct_stoc_early_data
	.type	tls_construct_stoc_early_data, @function
tls_construct_stoc_early_data:
.LFB899:
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
	cmpl	$8192, -20(%rbp)
	jne	.L539
	movq	-8(%rbp), %rax
	movl	5280(%rax), %eax
	testl	%eax, %eax
	jne	.L540
	movl	$2, %eax
	jmp	.L541
.L540:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$42, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L542
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L542
	movq	-8(%rbp), %rax
	movl	5280(%rax), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L542
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L543
.L542:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1952, %esi
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
	jmp	.L541
.L543:
	movl	$1, %eax
	jmp	.L541
.L539:
	movq	-8(%rbp), %rax
	movl	2688(%rax), %eax
	cmpl	$2, %eax
	je	.L544
	movl	$2, %eax
	jmp	.L541
.L544:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$42, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L545
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L545
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L546
.L545:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1965, %esi
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
	jmp	.L541
.L546:
	movl	$1, %eax
.L541:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE899:
	.size	tls_construct_stoc_early_data, .-tls_construct_stoc_early_data
	.globl	tls_construct_stoc_psk
	.type	tls_construct_stoc_psk, @function
tls_construct_stoc_psk:
.LFB900:
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
	movq	-8(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L548
	movl	$2, %eax
	jmp	.L549
.L548:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$41, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L550
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L550
	movq	-8(%rbp), %rax
	movl	2720(%rax), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L550
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L551
.L550:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1983, %esi
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
	jmp	.L549
.L551:
	movl	$1, %eax
.L549:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE900:
	.size	tls_construct_stoc_psk, .-tls_construct_stoc_psk
	.globl	tls_construct_stoc_client_cert_type
	.type	tls_construct_stoc_client_cert_type, @function
tls_construct_stoc_client_cert_type:
.LFB901:
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
	movq	-8(%rbp), %rax
	movzbl	2745(%rax), %eax
	cmpb	$2, %al
	jne	.L553
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	send_certificate_request@PLT
	testl	%eax, %eax
	jne	.L554
	movq	-8(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$2, %eax
	jne	.L553
.L554:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1998, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L555
.L553:
	movq	-8(%rbp), %rax
	movzbl	2744(%rax), %eax
	testb	%al, %al
	jne	.L556
	movq	-8(%rbp), %rax
	movb	$0, 2745(%rax)
	movl	$2, %eax
	jmp	.L555
.L556:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	send_certificate_request@PLT
	testl	%eax, %eax
	jne	.L557
	movq	-8(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$2, %eax
	jne	.L558
.L557:
	movq	-8(%rbp), %rax
	movzbl	2745(%rax), %eax
	cmpb	$1, %al
	jne	.L558
	movq	-8(%rbp), %rax
	movq	5368(%rax), %rax
	testq	%rax, %rax
	jne	.L559
.L558:
	movq	-8(%rbp), %rax
	movb	$0, 2745(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 2744(%rax)
	movl	$2, %eax
	jmp	.L555
.L559:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$19, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L560
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L560
	movq	-8(%rbp), %rax
	movzbl	2744(%rax), %eax
	movzbl	%al, %ecx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L560
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L561
.L560:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2024, %esi
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
	jmp	.L555
.L561:
	movl	$1, %eax
.L555:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE901:
	.size	tls_construct_stoc_client_cert_type, .-tls_construct_stoc_client_cert_type
	.type	reconcile_cert_type, @function
reconcile_cert_type:
.LFB902:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L563
.L566:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	je	.L564
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-56(%rbp), %rax
	movb	%dl, (%rax)
	movl	$1, %eax
	jmp	.L565
.L564:
	addq	$1, -8(%rbp)
.L563:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L566
	movl	$2, %eax
.L565:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE902:
	.size	reconcile_cert_type, .-reconcile_cert_type
	.globl	tls_parse_ctos_client_cert_type
	.type	tls_parse_ctos_client_cert_type, @function
tls_parse_ctos_client_cert_type:
.LFB903:
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
	movq	-56(%rbp), %rax
	movq	5368(%rax), %rax
	testq	%rax, %rax
	jne	.L568
	movq	-56(%rbp), %rax
	movb	$0, 2745(%rax)
	movq	-56(%rbp), %rax
	movb	$0, 2744(%rax)
	movl	$1, %eax
	jmp	.L573
.L568:
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_1
	testl	%eax, %eax
	jne	.L570
	movq	-56(%rbp), %rax
	movb	$2, 2745(%rax)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2063, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L573
.L570:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L571
	movq	-56(%rbp), %rax
	movb	$2, 2745(%rax)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2068, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L573
.L571:
	movq	-8(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L572
	movq	-56(%rbp), %rax
	movb	$2, 2745(%rax)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2073, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L573
.L572:
	movq	-56(%rbp), %rax
	leaq	2744(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	5376(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	5368(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	reconcile_cert_type
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, 2745(%rax)
	movl	$1, %eax
.L573:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE903:
	.size	tls_parse_ctos_client_cert_type, .-tls_parse_ctos_client_cert_type
	.globl	tls_construct_stoc_server_cert_type
	.type	tls_construct_stoc_server_cert_type, @function
tls_construct_stoc_server_cert_type:
.LFB904:
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
	movq	-8(%rbp), %rax
	movzbl	2746(%rax), %eax
	testb	%al, %al
	jne	.L575
	movq	-8(%rbp), %rax
	movb	$0, 2747(%rax)
	movl	$2, %eax
	jmp	.L576
.L575:
	movq	-8(%rbp), %rax
	movzbl	2747(%rax), %eax
	cmpb	$1, %al
	jne	.L577
	movq	-8(%rbp), %rax
	movq	5384(%rax), %rax
	testq	%rax, %rax
	jne	.L578
.L577:
	movq	-8(%rbp), %rax
	movb	$0, 2747(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 2746(%rax)
	movl	$2, %eax
	jmp	.L576
.L578:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L579
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L579
	movq	-8(%rbp), %rax
	movzbl	2746(%rax), %eax
	movzbl	%al, %ecx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L579
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L580
.L579:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2105, %esi
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
	jmp	.L576
.L580:
	movl	$1, %eax
.L576:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE904:
	.size	tls_construct_stoc_server_cert_type, .-tls_construct_stoc_server_cert_type
	.globl	tls_parse_ctos_server_cert_type
	.type	tls_parse_ctos_server_cert_type, @function
tls_parse_ctos_server_cert_type:
.LFB905:
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
	movq	-56(%rbp), %rax
	movq	5384(%rax), %rax
	testq	%rax, %rax
	jne	.L582
	movq	-56(%rbp), %rax
	movb	$0, 2747(%rax)
	movq	-56(%rbp), %rax
	movb	$0, 2746(%rax)
	movl	$1, %eax
	jmp	.L588
.L582:
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_1
	testl	%eax, %eax
	jne	.L584
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L588
.L584:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L585
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L588
.L585:
	movq	-8(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L586
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2136, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L588
.L586:
	movq	-56(%rbp), %rax
	leaq	2746(%rax), %rdi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	5392(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	5384(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	reconcile_cert_type
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movb	%dl, 2747(%rax)
	movq	-56(%rbp), %rax
	movzbl	2747(%rax), %eax
	cmpb	$1, %al
	jne	.L587
	movl	$1, %eax
	jmp	.L588
.L587:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
.L588:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE905:
	.size	tls_parse_ctos_server_cert_type, .-tls_parse_ctos_server_cert_type
	.section	.rodata
	.align 16
	.type	__func__.40, @object
	.size	__func__.40, 27
__func__.40:
	.string	"tls_parse_ctos_renegotiate"
	.align 16
	.type	__func__.39, @object
	.size	__func__.39, 27
__func__.39:
	.string	"tls_parse_ctos_server_name"
	.align 16
	.type	__func__.38, @object
	.size	__func__.38, 30
__func__.38:
	.string	"tls_parse_ctos_maxfragmentlen"
	.align 16
	.type	__func__.37, @object
	.size	__func__.37, 19
__func__.37:
	.string	"tls_parse_ctos_srp"
	.align 16
	.type	__func__.36, @object
	.size	__func__.36, 29
__func__.36:
	.string	"tls_parse_ctos_ec_pt_formats"
	.align 16
	.type	__func__.35, @object
	.size	__func__.35, 30
__func__.35:
	.string	"tls_parse_ctos_session_ticket"
	.align 16
	.type	__func__.34, @object
	.size	__func__.34, 29
__func__.34:
	.string	"tls_parse_ctos_sig_algs_cert"
	.align 16
	.type	__func__.33, @object
	.size	__func__.33, 24
__func__.33:
	.string	"tls_parse_ctos_sig_algs"
	.align 16
	.type	__func__.32, @object
	.size	__func__.32, 30
__func__.32:
	.string	"tls_parse_ctos_status_request"
	.align 16
	.type	__func__.31, @object
	.size	__func__.31, 20
__func__.31:
	.string	"tls_parse_ctos_alpn"
	.align 16
	.type	__func__.30, @object
	.size	__func__.30, 24
__func__.30:
	.string	"tls_parse_ctos_use_srtp"
	.align 16
	.type	__func__.29, @object
	.size	__func__.29, 29
__func__.29:
	.string	"tls_parse_ctos_psk_kex_modes"
	.align 16
	.type	__func__.28, @object
	.size	__func__.28, 25
__func__.28:
	.string	"tls_parse_ctos_key_share"
	.align 16
	.type	__func__.27, @object
	.size	__func__.27, 22
__func__.27:
	.string	"tls_parse_ctos_cookie"
	.align 32
	.type	__func__.26, @object
	.size	__func__.26, 32
__func__.26:
	.string	"tls_parse_ctos_supported_groups"
	.align 16
	.type	__func__.25, @object
	.size	__func__.25, 19
__func__.25:
	.string	"tls_parse_ctos_ems"
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 26
__func__.24:
	.string	"tls_parse_ctos_early_data"
	.align 16
	.type	__func__.23, @object
	.size	__func__.23, 19
__func__.23:
	.string	"tls_parse_ctos_psk"
	.align 32
	.type	__func__.22, @object
	.size	__func__.22, 35
__func__.22:
	.string	"tls_parse_ctos_post_handshake_auth"
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 31
__func__.21:
	.string	"tls_construct_stoc_renegotiate"
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 31
__func__.20:
	.string	"tls_construct_stoc_server_name"
	.align 32
	.type	__func__.19, @object
	.size	__func__.19, 34
__func__.19:
	.string	"tls_construct_stoc_maxfragmentlen"
	.align 32
	.type	__func__.18, @object
	.size	__func__.18, 33
__func__.18:
	.string	"tls_construct_stoc_ec_pt_formats"
	.align 32
	.type	__func__.17, @object
	.size	__func__.17, 36
__func__.17:
	.string	"tls_construct_stoc_supported_groups"
	.align 32
	.type	__func__.16, @object
	.size	__func__.16, 34
__func__.16:
	.string	"tls_construct_stoc_session_ticket"
	.align 32
	.type	__func__.15, @object
	.size	__func__.15, 34
__func__.15:
	.string	"tls_construct_stoc_status_request"
	.align 32
	.type	__func__.14, @object
	.size	__func__.14, 34
__func__.14:
	.string	"tls_construct_stoc_next_proto_neg"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 24
__func__.13:
	.string	"tls_construct_stoc_alpn"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 28
__func__.12:
	.string	"tls_construct_stoc_use_srtp"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 23
__func__.11:
	.string	"tls_construct_stoc_etm"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 23
__func__.10:
	.string	"tls_construct_stoc_ems"
	.align 32
	.type	__func__.9, @object
	.size	__func__.9, 38
__func__.9:
	.string	"tls_construct_stoc_supported_versions"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 29
__func__.8:
	.string	"tls_construct_stoc_key_share"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 26
__func__.7:
	.string	"tls_construct_stoc_cookie"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 33
__func__.6:
	.string	"tls_construct_stoc_cryptopro_bug"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 30
__func__.5:
	.string	"tls_construct_stoc_early_data"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 23
__func__.4:
	.string	"tls_construct_stoc_psk"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 36
__func__.3:
	.string	"tls_construct_stoc_client_cert_type"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 32
__func__.2:
	.string	"tls_parse_ctos_client_cert_type"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 36
__func__.1:
	.string	"tls_construct_stoc_server_cert_type"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 32
__func__.0:
	.string	"tls_parse_ctos_server_cert_type"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
