	.file	"extensions_clnt.c"
	.text
	.type	ossl_check_const_OCSP_RESPID_sk_type, @function
ossl_check_const_OCSP_RESPID_sk_type:
.LFB570:
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
.LFE570:
	.size	ossl_check_const_OCSP_RESPID_sk_type, .-ossl_check_const_OCSP_RESPID_sk_type
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
	.type	ossl_check_const_SSL_CIPHER_sk_type, @function
ossl_check_const_SSL_CIPHER_sk_type:
.LFB619:
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
.LFE619:
	.size	ossl_check_const_SSL_CIPHER_sk_type, .-ossl_check_const_SSL_CIPHER_sk_type
	.type	ossl_check_SSL_CIPHER_sk_type, @function
ossl_check_SSL_CIPHER_sk_type:
.LFB620:
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
.LFE620:
	.size	ossl_check_SSL_CIPHER_sk_type, .-ossl_check_SSL_CIPHER_sk_type
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
	je	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
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
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	PACKET_equal, .-PACKET_equal
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
	ja	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
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
.L22:
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
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_get_net_2_len, @function
PACKET_get_net_2_len:
.LFB642:
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
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L27
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L27:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	PACKET_get_net_2_len, .-PACKET_get_net_2_len
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
	ja	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
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
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	PACKET_peek_net_4, .-PACKET_peek_net_4
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
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	PACKET_get_net_4, .-PACKET_get_net_4
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
.LFE652:
	.size	PACKET_get_1, .-PACKET_get_1
	.type	PACKET_get_1_len, @function
PACKET_get_1_len:
.LFB653:
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
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L42
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L42:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	PACKET_get_1_len, .-PACKET_get_1_len
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
	jnb	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L46:
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
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.type	PACKET_peek_copy_bytes, @function
PACKET_peek_copy_bytes:
.LFB658:
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
	jnb	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	PACKET_peek_copy_bytes, .-PACKET_peek_copy_bytes
	.type	PACKET_copy_bytes, @function
PACKET_copy_bytes:
.LFB659:
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
	jne	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	PACKET_copy_bytes, .-PACKET_copy_bytes
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
	jne	.L57
	movl	$1, %eax
	jmp	.L58
.L57:
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
	jne	.L59
	movl	$0, %eax
	jmp	.L58
.L59:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	PACKET_memdup, .-PACKET_memdup
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
	je	.L61
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L62
.L61:
	movl	$0, %eax
	jmp	.L64
.L62:
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
.L64:
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
	je	.L66
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L66
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L67
.L66:
	movl	$0, %eax
	jmp	.L69
.L67:
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
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	PACKET_as_length_prefixed_1, .-PACKET_as_length_prefixed_1
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
	je	.L71
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L71
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L72
.L71:
	movl	$0, %eax
	jmp	.L74
.L72:
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
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	PACKET_as_length_prefixed_2, .-PACKET_as_length_prefixed_2
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
	jnb	.L76
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L76:
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
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB710:
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
.LFE710:
	.size	ossl_time2ticks, .-ossl_time2ticks
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
	je	.L85
	call	ossl_time_zero
	jmp	.L87
.L85:
	movq	-8(%rbp), %rax
.L87:
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
	.section	.rodata
	.align 8
.LC1:
	.string	"../ssl/statem/extensions_clnt.c"
	.text
	.globl	tls_construct_ctos_renegotiate
	.type	tls_construct_ctos_renegotiate, @function
tls_construct_ctos_renegotiate:
.LFB861:
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
	movl	2824(%rax), %eax
	testl	%eax, %eax
	jne	.L101
	movl	$2, %eax
	jmp	.L102
.L101:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$65281, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L103
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L103
	movq	-8(%rbp), %rax
	movq	1008(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	944(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L103
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L104
.L103:
	call	ERR_new@PLT
	leaq	__func__.43(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$28, %esi
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
	jmp	.L102
.L104:
	movl	$1, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE861:
	.size	tls_construct_ctos_renegotiate, .-tls_construct_ctos_renegotiate
	.globl	tls_construct_ctos_server_name
	.type	tls_construct_ctos_server_name, @function
tls_construct_ctos_server_name:
.LFB862:
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
	movq	2472(%rax), %rax
	testq	%rax, %rax
	jne	.L106
	movl	$2, %eax
	jmp	.L107
.L106:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L108
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L108
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L108
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L108
	movq	-8(%rbp), %rax
	movq	2472(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	2472(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L108
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L108
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L109
.L108:
	call	ERR_new@PLT
	leaq	__func__.42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$53, %esi
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
	jmp	.L107
.L109:
	movl	$1, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE862:
	.size	tls_construct_ctos_server_name, .-tls_construct_ctos_server_name
	.globl	tls_construct_ctos_maxfragmentlen
	.type	tls_construct_ctos_maxfragmentlen, @function
tls_construct_ctos_maxfragmentlen:
.LFB863:
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
	movzbl	2716(%rax), %eax
	testb	%al, %al
	jne	.L111
	movl	$2, %eax
	jmp	.L112
.L111:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L113
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L113
	movq	-8(%rbp), %rax
	movzbl	2716(%rax), %eax
	movzbl	%al, %ecx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L113
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L114
.L113:
	call	ERR_new@PLT
	leaq	__func__.41(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$78, %esi
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
	jmp	.L112
.L114:
	movl	$1, %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE863:
	.size	tls_construct_ctos_maxfragmentlen, .-tls_construct_ctos_maxfragmentlen
	.globl	tls_construct_ctos_srp
	.type	tls_construct_ctos_srp, @function
tls_construct_ctos_srp:
.LFB864:
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
	movq	2904(%rax), %rax
	testq	%rax, %rax
	jne	.L116
	movl	$2, %eax
	jmp	.L117
.L116:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$12, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L118
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L118
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L118
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_set_flags@PLT
	testl	%eax, %eax
	je	.L118
	movq	-8(%rbp), %rax
	movq	2904(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	2904(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L118
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L118
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L119
.L118:
	call	ERR_new@PLT
	leaq	__func__.40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$104, %esi
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
	jmp	.L117
.L119:
	movl	$1, %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE864:
	.size	tls_construct_ctos_srp, .-tls_construct_ctos_srp
	.type	use_ecc, @function
use_ecc:
.LFB865:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	%edx, -112(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L132
.L121:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get1_supported_ciphers@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L123
.L127:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	andl	$132, %eax
	testq	%rax, %rax
	jne	.L124
	movq	-64(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L124
	movq	-48(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	$771, %eax
	jle	.L125
.L124:
	movl	$1, -8(%rbp)
	jmp	.L126
.L125:
	addl	$1, -4(%rbp)
.L123:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L127
.L126:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	cmpl	$0, -8(%rbp)
	jne	.L128
	movl	$0, %eax
	jmp	.L132
.L128:
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_supported_groups@PLT
	movq	$0, -16(%rbp)
	jmp	.L129
.L131:
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -66(%rbp)
	movzwl	-66(%rbp), %esi
	movl	-112(%rbp), %ecx
	movl	-108(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	$0, %r9d
	movl	$1, %r8d
	movq	%rax, %rdi
	call	tls_valid_group@PLT
	testl	%eax, %eax
	je	.L130
	movzwl	-66(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	$131076, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls_group_allowed@PLT
	testl	%eax, %eax
	je	.L130
	movl	$1, %eax
	jmp	.L132
.L130:
	addq	$1, -16(%rbp)
.L129:
	movq	-88(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L131
	movl	$0, %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE865:
	.size	use_ecc, .-use_ecc
	.globl	tls_construct_ctos_ec_pt_formats
	.type	tls_construct_ctos_ec_pt_formats, @function
tls_construct_ctos_ec_pt_formats:
.LFB866:
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
	leaq	-32(%rbp), %rdx
	leaq	-28(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_get_min_max_version@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L134
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L139
.L134:
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	use_ecc
	testl	%eax, %eax
	jne	.L136
	movl	$2, %eax
	jmp	.L139
.L136:
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_formatlist@PLT
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L137
	movq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L137
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L137
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L138
.L137:
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$180, %esi
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
	jmp	.L139
.L138:
	movl	$1, %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE866:
	.size	tls_construct_ctos_ec_pt_formats, .-tls_construct_ctos_ec_pt_formats
	.section	.rodata
	.align 8
.LC2:
	.string	"No groups enabled for max supported SSL/TLS version"
	.text
	.globl	tls_construct_ctos_supported_groups
	.type	tls_construct_ctos_supported_groups, @function
tls_construct_ctos_supported_groups:
.LFB867:
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
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-52(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_get_min_max_version@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L141
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$197, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-28(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L157
.L141:
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	use_ecc
	testl	%eax, %eax
	jne	.L143
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L144
	movl	-56(%rbp), %eax
	cmpl	$771, %eax
	jg	.L143
.L144:
	movl	$2, %eax
	jmp	.L157
.L143:
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_supported_groups@PLT
	movq	-80(%rbp), %rax
	movl	$2, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L145
	movq	-80(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L145
	movq	-80(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L145
	movq	-80(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_set_flags@PLT
	testl	%eax, %eax
	jne	.L146
.L145:
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$219, %esi
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
	jmp	.L157
.L146:
	movq	$0, -8(%rbp)
	jmp	.L147
.L151:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -30(%rbp)
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	movzwl	-30(%rbp), %esi
	leaq	-60(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	tls_valid_group@PLT
	testl	%eax, %eax
	je	.L148
	movzwl	-30(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	$131076, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls_group_allowed@PLT
	testl	%eax, %eax
	je	.L148
	movzwl	-30(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L149
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$230, %esi
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
	jmp	.L157
.L149:
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	je	.L150
	movl	-56(%rbp), %eax
	cmpl	$772, %eax
	jne	.L150
	addq	$1, -16(%rbp)
.L150:
	addq	$1, -24(%rbp)
.L148:
	addq	$1, -8(%rbp)
.L147:
	movq	-48(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L151
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L152
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L153
.L152:
	cmpq	$0, -24(%rbp)
	jne	.L154
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC2(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$295, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L155
.L154:
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$243, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L155:
	movl	$0, %eax
	jmp	.L157
.L153:
	cmpq	$0, -16(%rbp)
	jne	.L156
	movl	-56(%rbp), %eax
	cmpl	$772, %eax
	jne	.L156
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC2(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$295, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L157
.L156:
	movl	$1, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE867:
	.size	tls_construct_ctos_supported_groups, .-tls_construct_ctos_supported_groups
	.globl	tls_construct_ctos_session_ticket
	.type	tls_construct_ctos_session_ticket, @function
tls_construct_ctos_session_ticket:
.LFB868:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tls_use_ticket@PLT
	testl	%eax, %eax
	jne	.L159
	movl	$2, %eax
	jmp	.L160
.L159:
	movq	-40(%rbp), %rax
	movl	124(%rax), %eax
	testl	%eax, %eax
	jne	.L161
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	808(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movl	(%rax), %eax
	cmpl	$772, %eax
	je	.L161
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	816(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L162
.L161:
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-40(%rbp), %rax
	movq	2608(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-40(%rbp), %rax
	movq	2608(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-40(%rbp), %rax
	movq	2608(%rax), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rbx
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$272, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, 808(%rbx)
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	808(%rax), %rax
	testq	%rax, %rax
	jne	.L164
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$274, %esi
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
.L164:
	movq	-40(%rbp), %rax
	movq	2608(%rax), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	808(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 816(%rax)
	jmp	.L162
.L163:
	movq	$0, -24(%rbp)
.L162:
	cmpq	$0, -24(%rbp)
	jne	.L165
	movq	-40(%rbp), %rax
	movq	2608(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movq	-40(%rbp), %rax
	movq	2608(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L165
	movl	$2, %eax
	jmp	.L160
.L165:
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movl	$35, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L166
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	808(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L167
.L166:
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$290, %esi
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
.L167:
	movl	$1, %eax
.L160:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE868:
	.size	tls_construct_ctos_session_ticket, .-tls_construct_ctos_session_ticket
	.globl	tls_construct_ctos_sig_algs
	.type	tls_construct_ctos_sig_algs, @function
tls_construct_ctos_sig_algs:
.LFB869:
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
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L169
	movq	-24(%rbp), %rax
	movl	2396(%rax), %eax
	cmpl	$770, %eax
	jg	.L170
.L169:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L171
	movq	-24(%rbp), %rax
	movl	2396(%rax), %eax
	cmpl	$256, %eax
	je	.L171
	movq	-24(%rbp), %rax
	movl	2396(%rax), %eax
	cmpl	$65277, %eax
	jle	.L170
.L171:
	movl	$2, %eax
	jmp	.L175
.L170:
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tls12_get_psigalgs@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movl	$13, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L173
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L173
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L173
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tls12_copy_sigalgs@PLT
	testl	%eax, %eax
	je	.L173
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L173
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L174
.L173:
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$316, %esi
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
	jmp	.L175
.L174:
	movl	$1, %eax
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE869:
	.size	tls_construct_ctos_sig_algs, .-tls_construct_ctos_sig_algs
	.globl	tls_construct_ctos_status_request
	.type	tls_construct_ctos_status_request, @function
tls_construct_ctos_status_request:
.LFB870:
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
	cmpq	$0, -80(%rbp)
	je	.L177
	movl	$2, %eax
	jmp	.L178
.L177:
	movq	-56(%rbp), %rax
	movl	2480(%rax), %eax
	cmpl	$1, %eax
	je	.L179
	movl	$2, %eax
	jmp	.L178
.L179:
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L180
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L180
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L180
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L181
.L180:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$343, %esi
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
	jmp	.L178
.L181:
	movl	$0, -4(%rbp)
	jmp	.L182
.L185:
	movq	-56(%rbp), %rax
	movq	2504(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_RESPID_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_OCSP_RESPID@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L183
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_allocate_bytes__@PLT
	testl	%eax, %eax
	je	.L183
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_OCSP_RESPID@PLT
	cmpl	%eax, -20(%rbp)
	je	.L184
.L183:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$355, %esi
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
	jmp	.L178
.L184:
	addl	$1, -4(%rbp)
.L182:
	movq	-56(%rbp), %rax
	movq	2504(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_RESPID_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L185
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L186
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L187
.L186:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$361, %esi
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
	jmp	.L178
.L187:
	movq	-56(%rbp), %rax
	movq	2512(%rax), %rax
	testq	%rax, %rax
	je	.L188
	movq	-56(%rbp), %rax
	movq	2512(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509_EXTENSIONS@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L189
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$369, %esi
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
	jmp	.L178
.L189:
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L191
	movq	-56(%rbp), %rax
	movq	2512(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_EXTENSIONS@PLT
	cmpl	%eax, -8(%rbp)
	je	.L188
.L191:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$375, %esi
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
	jmp	.L178
.L188:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L193
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L194
.L193:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$380, %esi
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
	jmp	.L178
.L194:
	movl	$1, %eax
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE870:
	.size	tls_construct_ctos_status_request, .-tls_construct_ctos_status_request
	.globl	tls_construct_ctos_npn
	.type	tls_construct_ctos_npn, @function
tls_construct_ctos_npn:
.LFB871:
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
	movq	8(%rax), %rax
	movq	720(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-8(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L197
	movq	-8(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L197
.L196:
	movl	$2, %eax
	jmp	.L198
.L197:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$13172, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L199
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L200
.L199:
	call	ERR_new@PLT
	leaq	__func__.34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$403, %esi
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
	jmp	.L198
.L200:
	movl	$1, %eax
.L198:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE871:
	.size	tls_construct_ctos_npn, .-tls_construct_ctos_npn
	.globl	tls_construct_ctos_alpn
	.type	tls_construct_ctos_alpn, @function
tls_construct_ctos_alpn:
.LFB872:
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
	movl	$0, 1128(%rax)
	movq	-8(%rbp), %rax
	movq	2648(%rax), %rax
	testq	%rax, %rax
	je	.L202
	movq	-8(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L203
	movq	-8(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L203
.L202:
	movl	$2, %eax
	jmp	.L204
.L203:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L205
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L205
	movq	-8(%rbp), %rax
	movq	2656(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	2648(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L205
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L206
.L205:
	call	ERR_new@PLT
	leaq	__func__.33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$426, %esi
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
	jmp	.L204
.L206:
	movq	-8(%rbp), %rax
	movl	$1, 1128(%rax)
	movl	$1, %eax
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE872:
	.size	tls_construct_ctos_alpn, .-tls_construct_ctos_alpn
	.globl	tls_construct_ctos_use_srtp
	.type	tls_construct_ctos_use_srtp, @function
tls_construct_ctos_use_srtp:
.LFB873:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_srtp_profiles@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L208
	movl	$2, %eax
	jmp	.L209
.L208:
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movl	$14, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L210
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L210
	movq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L211
.L210:
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$452, %esi
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
	jmp	.L209
.L211:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L212
.L215:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L213
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L214
.L213:
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$462, %esi
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
	jmp	.L209
.L214:
	addl	$1, -4(%rbp)
.L212:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L215
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L216
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L216
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L217
.L216:
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$470, %esi
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
	jmp	.L209
.L217:
	movl	$1, %eax
.L209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE873:
	.size	tls_construct_ctos_use_srtp, .-tls_construct_ctos_use_srtp
	.globl	tls_construct_ctos_etm
	.type	tls_construct_ctos_etm, @function
tls_construct_ctos_etm:
.LFB874:
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
	movq	2360(%rax), %rax
	andl	$524288, %eax
	testq	%rax, %rax
	je	.L219
	movl	$2, %eax
	jmp	.L220
.L219:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L221
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L222
.L221:
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$487, %esi
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
	jmp	.L220
.L222:
	movl	$1, %eax
.L220:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE874:
	.size	tls_construct_ctos_etm, .-tls_construct_ctos_etm
	.globl	tls_construct_ctos_sct
	.type	tls_construct_ctos_sct, @function
tls_construct_ctos_sct:
.LFB875:
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
	movq	2768(%rax), %rax
	testq	%rax, %rax
	jne	.L224
	movl	$2, %eax
	jmp	.L225
.L224:
	cmpq	$0, -32(%rbp)
	je	.L226
	movl	$2, %eax
	jmp	.L225
.L226:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$18, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L227
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L228
.L227:
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$508, %esi
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
	jmp	.L225
.L228:
	movl	$1, %eax
.L225:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE875:
	.size	tls_construct_ctos_sct, .-tls_construct_ctos_sct
	.globl	tls_construct_ctos_ems
	.type	tls_construct_ctos_ems, @function
tls_construct_ctos_ems:
.LFB876:
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
	movq	2360(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L230
	movl	$2, %eax
	jmp	.L231
.L230:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$23, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L232
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L233
.L232:
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$525, %esi
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
	jmp	.L231
.L233:
	movl	$1, %eax
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE876:
	.size	tls_construct_ctos_ems, .-tls_construct_ctos_ems
	.globl	tls_construct_ctos_supported_versions
	.type	tls_construct_ctos_supported_versions, @function
tls_construct_ctos_supported_versions:
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
	leaq	-12(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_get_min_max_version@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L235
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$540, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L245
.L235:
	movl	-16(%rbp), %eax
	cmpl	$771, %eax
	jg	.L237
	movl	$2, %eax
	jmp	.L245
.L237:
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L238
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L238
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L239
.L238:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$554, %esi
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
	jmp	.L245
.L239:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L240
.L242:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L241
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$560, %esi
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
	jmp	.L245
.L241:
	subl	$1, -4(%rbp)
.L240:
	movl	-12(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L242
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L243
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L244
.L243:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$565, %esi
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
	jmp	.L245
.L244:
	movl	$1, %eax
.L245:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE877:
	.size	tls_construct_ctos_supported_versions, .-tls_construct_ctos_supported_versions
	.globl	tls_construct_ctos_psk_kex_modes
	.type	tls_construct_ctos_psk_kex_modes, @function
tls_construct_ctos_psk_kex_modes:
.LFB878:
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
	movq	2360(%rax), %rax
	andl	$1024, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movl	$45, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L247
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L247
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L247
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L247
	cmpl	$0, -4(%rbp)
	je	.L248
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L247
.L248:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L247
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L249
.L247:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$589, %esi
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
	jmp	.L250
.L249:
	movq	-24(%rbp), %rax
	movl	$2, 2680(%rax)
	cmpl	$0, -4(%rbp)
	je	.L251
	movq	-24(%rbp), %rax
	movl	2680(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 2680(%rax)
.L251:
	movl	$1, %eax
.L250:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE878:
	.size	tls_construct_ctos_psk_kex_modes, .-tls_construct_ctos_psk_kex_modes
	.type	add_key_share, @function
add_key_share:
.LFB879:
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
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	712(%rax), %rax
	testq	%rax, %rax
	je	.L253
	movq	-40(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L254
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$610, %esi
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
	jmp	.L262
.L254:
	movq	-40(%rbp), %rax
	movq	712(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L256
.L253:
	movl	-52(%rbp), %eax
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_generate_pkey_group@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L256
	movl	$0, %eax
	jmp	.L262
.L256:
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get1_encoded_public_key@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L257
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$629, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$524304, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L258
.L257:
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L259
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	jne	.L260
.L259:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$636, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L258
.L260:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 712(%rax)
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movw	%dx, 1134(%rax)
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$647, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L262
.L258:
	movq	-40(%rbp), %rax
	movq	712(%rax), %rax
	testq	%rax, %rax
	jne	.L261
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L261:
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$653, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE879:
	.size	add_key_share, .-add_key_share
	.globl	tls_construct_ctos_key_share
	.type	tls_construct_ctos_key_share, @function
tls_construct_ctos_key_share:
.LFB880:
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
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movw	$0, -10(%rbp)
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movl	$51, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L264
	movq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L264
	movq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L265
.L264:
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$673, %esi
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
	jmp	.L278
.L265:
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_supported_groups@PLT
	movq	-40(%rbp), %rax
	movzwl	1134(%rax), %eax
	testw	%ax, %ax
	je	.L267
	movq	-40(%rbp), %rax
	movzwl	1134(%rax), %eax
	movw	%ax, -10(%rbp)
	jmp	.L268
.L267:
	movq	$0, -8(%rbp)
	jmp	.L269
.L273:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %ecx
	movq	-40(%rbp), %rax
	movl	$131076, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls_group_allowed@PLT
	testl	%eax, %eax
	je	.L279
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %esi
	movq	-40(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$772, %ecx
	movl	$772, %edx
	movq	%rax, %rdi
	call	tls_valid_group@PLT
	testl	%eax, %eax
	je	.L280
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -10(%rbp)
	jmp	.L268
.L279:
	nop
	jmp	.L271
.L280:
	nop
.L271:
	addq	$1, -8(%rbp)
.L269:
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L273
.L268:
	cmpw	$0, -10(%rbp)
	jne	.L274
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$700, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$101, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L278
.L274:
	movzwl	-10(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_key_share
	testl	%eax, %eax
	jne	.L275
	movl	$0, %eax
	jmp	.L278
.L275:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L276
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L277
.L276:
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$710, %esi
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
	jmp	.L278
.L277:
	movl	$1, %eax
.L278:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE880:
	.size	tls_construct_ctos_key_share, .-tls_construct_ctos_key_share
	.globl	tls_construct_ctos_cookie
	.type	tls_construct_ctos_cookie, @function
tls_construct_ctos_cookie:
.LFB881:
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
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	2704(%rax), %rax
	testq	%rax, %rax
	jne	.L282
	movl	$2, %eax
	jmp	.L283
.L282:
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L284
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L284
	movq	-24(%rbp), %rax
	movq	2704(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	2696(%rax), %rsi
	movq	-32(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L284
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L285
.L284:
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$735, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L286
.L285:
	movl	$1, -4(%rbp)
.L286:
	movq	-24(%rbp), %rax
	movq	2696(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$741, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 2696(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 2704(%rax)
	movl	-4(%rbp), %eax
.L283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE881:
	.size	tls_construct_ctos_cookie, .-tls_construct_ctos_cookie
	.globl	tls_construct_ctos_early_data
	.type	tls_construct_ctos_early_data, @function
tls_construct_ctos_early_data:
.LFB882:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$944, %rsp
	movq	%rdi, -904(%rbp)
	movq	%rsi, -912(%rbp)
	movl	%edx, -916(%rbp)
	movq	%rcx, -928(%rbp)
	movq	%r8, -936(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-904(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-904(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L288
	movq	-904(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, -16(%rbp)
.L288:
	movq	-904(%rbp), %rax
	movq	2320(%rax), %rax
	testq	%rax, %rax
	je	.L289
	movq	-904(%rbp), %rax
	movq	2320(%rax), %r9
	leaq	-344(%rbp), %rdi
	leaq	-336(%rbp), %rcx
	leaq	-328(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L290
	movq	-344(%rbp), %rax
	testq	%rax, %rax
	je	.L289
	movq	-344(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$772, %eax
	je	.L289
.L290:
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$770, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-904(%rbp), %rax
	movl	$0, %ecx
	movl	$219, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L319
.L289:
	movq	-344(%rbp), %rax
	testq	%rax, %rax
	jne	.L292
	movq	-904(%rbp), %rax
	movq	2296(%rax), %rax
	testq	%rax, %rax
	je	.L292
	movq	$0, -40(%rbp)
	leaq	-320(%rbp), %rax
	movl	$257, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-904(%rbp), %rax
	movq	2296(%rax), %r10
	leaq	-896(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$512, %r9d
	movq	%rcx, %r8
	movl	$256, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, %eax
	movq	%rax, -40(%rbp)
	cmpq	$512, -40(%rbp)
	jbe	.L293
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$785, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-904(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L319
.L293:
	cmpq	$0, -40(%rbp)
	je	.L292
	movw	$275, -346(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	cmpq	$256, %rax
	jbe	.L296
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$793, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-904(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L297
.L296:
	leaq	-320(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	-904(%rbp), %rax
	leaq	-346(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CIPHER_find@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L298
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$805, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-904(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L297
.L298:
	call	SSL_SESSION_new@PLT
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	testq	%rax, %rax
	je	.L299
	movq	-344(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	-896(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_set1_master_key@PLT
	testl	%eax, %eax
	je	.L299
	movq	-344(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_set_cipher@PLT
	testl	%eax, %eax
	je	.L299
	movq	-344(%rbp), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	call	SSL_SESSION_set_protocol_version@PLT
	testl	%eax, %eax
	jne	.L300
.L299:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$814, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-904(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-40(%rbp), %rdx
	leaq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L297
.L300:
	movq	-40(%rbp), %rdx
	leaq	-896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L292
.L297:
	jmp	.L319
.L292:
	movq	-904(%rbp), %rax
	movq	2192(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-344(%rbp), %rdx
	movq	-904(%rbp), %rax
	movq	%rdx, 2192(%rax)
	movq	-344(%rbp), %rax
	testq	%rax, %rax
	je	.L301
	movq	-904(%rbp), %rax
	movq	2200(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$826, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-336(%rbp), %rsi
	movq	-328(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	$827, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-904(%rbp), %rdx
	movq	%rax, 2200(%rdx)
	movq	-904(%rbp), %rax
	movq	2200(%rax), %rax
	testq	%rax, %rax
	jne	.L302
	movq	-904(%rbp), %rax
	movq	$0, 2208(%rax)
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$830, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-904(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L319
.L302:
	movq	-336(%rbp), %rdx
	movq	-904(%rbp), %rax
	movq	%rdx, 2208(%rax)
.L301:
	movq	-904(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$2, %eax
	jne	.L303
	movq	-904(%rbp), %rax
	movq	2184(%rax), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	jne	.L304
	movq	-344(%rbp), %rax
	testq	%rax, %rax
	je	.L303
	movq	-344(%rbp), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	jne	.L304
.L303:
	movq	-904(%rbp), %rax
	movl	$0, 5280(%rax)
	movl	$2, %eax
	jmp	.L319
.L304:
	movq	-904(%rbp), %rax
	movq	2184(%rax), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	je	.L305
	movq	-904(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L306
.L305:
	movq	-344(%rbp), %rax
	movq	%rax, -8(%rbp)
.L306:
	movq	-8(%rbp), %rax
	movl	836(%rax), %edx
	movq	-904(%rbp), %rax
	movl	%edx, 5280(%rax)
	movq	-8(%rbp), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	je	.L307
	movq	-904(%rbp), %rax
	movq	2472(%rax), %rax
	testq	%rax, %rax
	je	.L308
	movq	-904(%rbp), %rax
	movq	2472(%rax), %rax
	testq	%rax, %rax
	je	.L307
	movq	-8(%rbp), %rax
	movq	800(%rax), %rdx
	movq	-904(%rbp), %rax
	movq	2472(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L307
.L308:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$849, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-904(%rbp), %rax
	movl	$0, %ecx
	movl	$231, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L319
.L307:
	movq	-904(%rbp), %rax
	movq	2648(%rax), %rax
	testq	%rax, %rax
	jne	.L309
	movq	-8(%rbp), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	je	.L309
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$856, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-904(%rbp), %rax
	movl	$0, %ecx
	movl	$222, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L319
.L309:
	movq	-8(%rbp), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	je	.L310
	movl	$0, -20(%rbp)
	movq	-904(%rbp), %rax
	movq	2656(%rax), %rdx
	movq	-904(%rbp), %rax
	movq	2648(%rax), %rcx
	leaq	-368(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L313
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$869, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-904(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L319
.L315:
	movq	-8(%rbp), %rax
	movq	848(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	840(%rax), %rcx
	leaq	-384(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	je	.L313
	movl	$1, -20(%rbp)
	jmp	.L314
.L313:
	leaq	-384(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L315
.L314:
	cmpl	$0, -20(%rbp)
	jne	.L310
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$880, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-904(%rbp), %rax
	movl	$0, %ecx
	movl	$222, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L319
.L310:
	movq	-912(%rbp), %rax
	movl	$2, %edx
	movl	$42, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L317
	movq	-912(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L317
	movq	-912(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L318
.L317:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$889, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-904(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L319
.L318:
	movq	-904(%rbp), %rax
	movl	$1, 2688(%rax)
	movq	-904(%rbp), %rax
	movl	$1, 2692(%rax)
	movl	$1, %eax
.L319:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE882:
	.size	tls_construct_ctos_early_data, .-tls_construct_ctos_early_data
	.globl	tls_construct_ctos_padding
	.type	tls_construct_ctos_padding, @function
tls_construct_ctos_padding:
.LFB883:
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
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L321
	movl	$2, %eax
	jmp	.L330
.L321:
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	jne	.L323
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$937, %esi
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
	jmp	.L330
.L323:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movl	(%rax), %eax
	cmpl	$772, %eax
	jne	.L324
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	816(%rax), %rax
	testq	%rax, %rax
	je	.L324
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	je	.L324
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_md@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L324
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	816(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	addq	%rbx, %rax
	leaq	15(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L324:
	movq	-40(%rbp), %rax
	cmpq	$255, %rax
	jbe	.L325
	movq	-40(%rbp), %rax
	cmpq	$511, %rax
	ja	.L325
	movq	-40(%rbp), %rax
	movl	$512, %edx
	subq	%rax, %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$4, %rax
	jbe	.L326
	movq	-40(%rbp), %rax
	subq	$4, %rax
	movq	%rax, -40(%rbp)
	jmp	.L327
.L326:
	movq	$1, -40(%rbp)
.L327:
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movl	$21, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L328
	movq	-40(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_allocate_bytes__@PLT
	testl	%eax, %eax
	jne	.L329
.L328:
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$978, %esi
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
	jmp	.L330
.L329:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L325:
	movl	$1, %eax
.L330:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE883:
	.size	tls_construct_ctos_padding, .-tls_construct_ctos_padding
	.globl	tls_construct_ctos_psk
	.type	tls_construct_ctos_psk, @function
tls_construct_ctos_psk:
.LFB884:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-136(%rbp), %rax
	movl	$0, 2720(%rax)
	movq	-136(%rbp), %rax
	movq	2184(%rax), %rax
	movl	(%rax), %eax
	cmpl	$772, %eax
	jne	.L332
	movq	-136(%rbp), %rax
	movq	2184(%rax), %rax
	movq	816(%rax), %rax
	testq	%rax, %rax
	jne	.L333
	movq	-136(%rbp), %rax
	movq	2192(%rax), %rax
	testq	%rax, %rax
	jne	.L333
.L332:
	movl	$2, %eax
	jmp	.L360
.L333:
	movq	-136(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L335
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_handshake_md@PLT
	movq	%rax, -48(%rbp)
.L335:
	movq	-136(%rbp), %rax
	movq	2184(%rax), %rax
	movq	816(%rax), %rax
	testq	%rax, %rax
	je	.L361
	movq	-136(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	jne	.L337
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1025, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L360
.L337:
	movq	-136(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_md@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L362
	movq	-136(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L339
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L363
.L339:
	movq	-136(%rbp), %rax
	movq	2184(%rax), %rbx
	call	ossl_time_now@PLT
	movq	%rax, %rdx
	movq	736(%rbx), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_subtract
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L340
	subl	$1, -20(%rbp)
.L340:
	movq	-136(%rbp), %rax
	movq	2184(%rax), %rax
	movq	824(%rax), %rdx
	movl	-20(%rbp), %eax
	cmpq	%rax, %rdx
	jb	.L364
	movl	-20(%rbp), %eax
	imull	$1000, %eax, %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L342
	movl	-24(%rbp), %eax
	movl	%eax, %eax
	imulq	$274877907, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	cmpl	%eax, -20(%rbp)
	jne	.L365
.L342:
	movq	-136(%rbp), %rax
	movq	2184(%rax), %rax
	movl	832(%rax), %eax
	addl	%eax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	movq	%rax, -32(%rbp)
	movq	-136(%rbp), %rax
	movl	2720(%rax), %eax
	leal	1(%rax), %edx
	movq	-136(%rbp), %rax
	movl	%edx, 2720(%rax)
	movl	$1, -68(%rbp)
	jmp	.L336
.L361:
	nop
	jmp	.L336
.L362:
	nop
	jmp	.L336
.L363:
	nop
	jmp	.L336
.L364:
	nop
	jmp	.L336
.L365:
	nop
.L336:
	cmpl	$0, -68(%rbp)
	jne	.L343
	movq	-136(%rbp), %rax
	movq	2192(%rax), %rax
	testq	%rax, %rax
	jne	.L343
	movl	$2, %eax
	jmp	.L360
.L343:
	movq	-136(%rbp), %rax
	movq	2192(%rax), %rax
	testq	%rax, %rax
	je	.L344
	movq	-136(%rbp), %rax
	movq	2192(%rax), %rax
	movq	760(%rax), %rax
	movl	64(%rax), %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_md@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L345
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$219, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L360
.L345:
	movq	-136(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L346
	movq	-64(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L346
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1116, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$219, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L360
.L346:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	movq	%rax, -40(%rbp)
.L344:
	movq	-144(%rbp), %rax
	movl	$2, %edx
	movl	$41, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L347
	movq	-144(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L347
	movq	-144(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	jne	.L348
.L347:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L360
.L348:
	cmpl	$0, -68(%rbp)
	je	.L349
	movq	-136(%rbp), %rax
	movq	2184(%rax), %rax
	movq	816(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	2184(%rax), %rax
	movq	808(%rax), %rsi
	movq	-144(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L350
	movl	-24(%rbp), %ecx
	movq	-144(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L349
.L350:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L360
.L349:
	movq	-136(%rbp), %rax
	movq	2192(%rax), %rax
	testq	%rax, %rax
	je	.L351
	movq	-136(%rbp), %rax
	movq	2208(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	2200(%rax), %rsi
	movq	-144(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L352
	movq	-144(%rbp), %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L353
.L352:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1144, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L360
.L353:
	movq	-136(%rbp), %rax
	movl	2720(%rax), %eax
	leal	1(%rax), %edx
	movq	-136(%rbp), %rax
	movl	%edx, 2720(%rax)
.L351:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L354
	leaq	-96(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L354
	movq	-144(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L354
	cmpl	$0, -68(%rbp)
	je	.L355
	leaq	-112(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-144(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_allocate_bytes__@PLT
	testl	%eax, %eax
	je	.L354
.L355:
	movq	-136(%rbp), %rax
	movq	2192(%rax), %rax
	testq	%rax, %rax
	je	.L356
	leaq	-120(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-144(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_allocate_bytes__@PLT
	testl	%eax, %eax
	je	.L354
.L356:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L354
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L354
	leaq	-104(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L354
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_fill_lengths@PLT
	testl	%eax, %eax
	jne	.L357
.L354:
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L360
.L357:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	-104(%rbp), %rdx
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L358
	movq	-136(%rbp), %rax
	movq	2184(%rax), %rdi
	movq	-112(%rbp), %r8
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$1
	pushq	%rdi
	movq	%r8, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	tls_psk_do_binder@PLT
	addq	$32, %rsp
	cmpl	$1, %eax
	je	.L358
	movl	$0, %eax
	jmp	.L360
.L358:
	movq	-136(%rbp), %rax
	movq	2192(%rax), %rax
	testq	%rax, %rax
	je	.L359
	movq	-136(%rbp), %rax
	movq	2192(%rax), %rdi
	movq	-120(%rbp), %r8
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	pushq	$1
	pushq	%rdi
	movq	%r8, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	tls_psk_do_binder@PLT
	addq	$32, %rsp
	cmpl	$1, %eax
	je	.L359
	movl	$0, %eax
	jmp	.L360
.L359:
	movl	$1, %eax
.L360:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE884:
	.size	tls_construct_ctos_psk, .-tls_construct_ctos_psk
	.globl	tls_construct_ctos_post_handshake_auth
	.type	tls_construct_ctos_post_handshake_auth, @function
tls_construct_ctos_post_handshake_auth:
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
	movl	2836(%rax), %eax
	testl	%eax, %eax
	jne	.L367
	movl	$2, %eax
	jmp	.L368
.L367:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$49, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L369
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L369
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L370
.L369:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1204, %esi
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
	jmp	.L368
.L370:
	movq	-8(%rbp), %rax
	movl	$1, 2832(%rax)
	movl	$1, %eax
.L368:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE885:
	.size	tls_construct_ctos_post_handshake_auth, .-tls_construct_ctos_post_handshake_auth
	.globl	tls_parse_stoc_renegotiate
	.type	tls_parse_stoc_renegotiate, @function
tls_parse_stoc_renegotiate:
.LFB886:
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
	movq	-40(%rbp), %rax
	movq	1008(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	1080(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L372
	movq	-40(%rbp), %rax
	movq	1008(%rax), %rax
	testq	%rax, %rax
	je	.L373
.L372:
	movl	$1, %eax
	jmp	.L374
.L373:
	movl	$0, %eax
.L374:
	cltq
	testq	%rax, %rax
	je	.L375
	cmpq	$0, -8(%rbp)
	je	.L376
	movq	-40(%rbp), %rax
	movq	1080(%rax), %rax
	testq	%rax, %rax
	je	.L377
.L376:
	movl	$1, %eax
	jmp	.L378
.L377:
	movl	$0, %eax
.L378:
	cltq
	testq	%rax, %rax
	jne	.L379
.L375:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1234, %esi
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
	jmp	.L388
.L379:
	leaq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1_len
	testl	%eax, %eax
	jne	.L381
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$336, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L388
.L381:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L382
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1246, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$336, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L388
.L382:
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	je	.L383
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1252, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$337, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L388
.L383:
	movq	-40(%rbp), %rax
	movq	1008(%rax), %rdx
	leaq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L384
	movq	-40(%rbp), %rax
	movq	1008(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	944(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L385
.L384:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1259, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$337, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L388
.L385:
	movq	-40(%rbp), %rax
	movq	1080(%rax), %rdx
	leaq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L386
	movq	-40(%rbp), %rax
	movq	1080(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	1016(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L387
.L386:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$337, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L388
.L387:
	movq	-40(%rbp), %rax
	movl	$1, 1088(%rax)
	movl	$1, %eax
.L388:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE886:
	.size	tls_parse_stoc_renegotiate, .-tls_parse_stoc_renegotiate
	.globl	tls_parse_stoc_maxfragmentlen
	.type	tls_parse_stoc_maxfragmentlen, @function
tls_parse_stoc_maxfragmentlen:
.LFB887:
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
	jne	.L390
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L391
.L390:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1282, %esi
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
	jmp	.L396
.L391:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L393
	movl	-4(%rbp), %eax
	cmpl	$4, %eax
	jbe	.L394
.L393:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1288, %esi
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
	jmp	.L396
.L394:
	movq	-24(%rbp), %rax
	movzbl	2716(%rax), %eax
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	je	.L395
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1300, %esi
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
	jmp	.L396
.L395:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movb	%dl, 856(%rax)
	movl	$1, %eax
.L396:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE887:
	.size	tls_parse_stoc_maxfragmentlen, .-tls_parse_stoc_maxfragmentlen
	.globl	tls_parse_stoc_server_name
	.type	tls_parse_stoc_server_name, @function
tls_parse_stoc_server_name:
.LFB888:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	2472(%rax), %rax
	testq	%rax, %rax
	jne	.L398
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1319, %esi
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
	jmp	.L399
.L398:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L400
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1324, %esi
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
	jmp	.L399
.L400:
	movq	-24(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L401
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	je	.L402
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1330, %esi
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
	jmp	.L399
.L402:
	movq	-24(%rbp), %rax
	movq	2472(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	2184(%rdx), %rbx
	leaq	.LC1(%rip), %rcx
	movl	$1333, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, 800(%rbx)
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	jne	.L401
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1335, %esi
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
	jmp	.L399
.L401:
	movl	$1, %eax
.L399:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE888:
	.size	tls_parse_stoc_server_name, .-tls_parse_stoc_server_name
	.globl	tls_parse_stoc_ec_pt_formats
	.type	tls_parse_stoc_ec_pt_formats, @function
tls_parse_stoc_ec_pt_formats:
.LFB889:
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
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_1
	testl	%eax, %eax
	jne	.L404
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1351, %esi
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
	jmp	.L409
.L404:
	movq	-40(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L406
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L407
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L409
.L407:
	movq	-40(%rbp), %rax
	movq	$0, 2560(%rax)
	movq	-40(%rbp), %rax
	movq	2568(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1362, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1363, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 2568(%rax)
	movq	-40(%rbp), %rax
	movq	2568(%rax), %rax
	testq	%rax, %rax
	jne	.L408
	movq	-40(%rbp), %rax
	movq	$0, 2560(%rax)
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1366, %esi
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
	jmp	.L409
.L408:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 2560(%rax)
	movq	-40(%rbp), %rax
	movq	2568(%rax), %rcx
	movq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L406
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1375, %esi
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
	jmp	.L409
.L406:
	movl	$1, %eax
.L409:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE889:
	.size	tls_parse_stoc_ec_pt_formats, .-tls_parse_stoc_ec_pt_formats
	.globl	tls_parse_stoc_session_ticket
	.type	tls_parse_stoc_session_ticket, @function
tls_parse_stoc_session_ticket:
.LFB890:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	2616(%rax), %rax
	testq	%rax, %rax
	je	.L411
	movq	-56(%rbp), %rax
	movq	2616(%rax), %r12
	movq	-56(%rbp), %rax
	movq	2624(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %r13d
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	%rbx, %rcx
	movl	%r13d, %edx
	movq	%rax, %rdi
	call	*%r12
	testl	%eax, %eax
	jne	.L411
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1393, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L412
.L411:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tls_use_ticket@PLT
	testl	%eax, %eax
	jne	.L413
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1398, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$110, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L412
.L413:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L414
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1402, %esi
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
	jmp	.L412
.L414:
	movq	-56(%rbp), %rax
	movl	$1, 2536(%rax)
	movl	$1, %eax
.L412:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE890:
	.size	tls_parse_stoc_session_ticket, .-tls_parse_stoc_session_ticket
	.globl	tls_parse_stoc_status_request
	.type	tls_parse_stoc_status_request, @function
tls_parse_stoc_status_request:
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
	cmpl	$16384, -20(%rbp)
	jne	.L416
	movl	$1, %eax
	jmp	.L417
.L416:
	movq	-8(%rbp), %rax
	movl	2480(%rax), %eax
	cmpl	$1, %eax
	je	.L418
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1426, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$110, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L417
.L418:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L419
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L419
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L420
.L419:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L420
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1430, %esi
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
	jmp	.L417
.L420:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L421
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L421
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L421
	cmpq	$0, -40(%rbp)
	je	.L422
	movl	$1, %eax
	jmp	.L417
.L422:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_process_cert_status_body@PLT
	jmp	.L417
.L421:
	movq	-8(%rbp), %rax
	movl	$1, 2500(%rax)
	movl	$1, %eax
.L417:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE891:
	.size	tls_parse_stoc_status_request, .-tls_parse_stoc_status_request
	.globl	tls_parse_stoc_sct
	.type	tls_parse_stoc_sct, @function
tls_parse_stoc_sct:
.LFB892:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	cmpl	$16384, -52(%rbp)
	jne	.L424
	movl	$1, %eax
	jmp	.L425
.L424:
	movq	-40(%rbp), %rax
	movq	2768(%rax), %rax
	testq	%rax, %rax
	je	.L426
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	2488(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1471, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 2488(%rax)
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movw	%dx, 2496(%rax)
	cmpq	$0, -32(%rbp)
	je	.L427
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1476, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 2488(%rax)
	movq	-40(%rbp), %rax
	movq	2488(%rax), %rax
	testq	%rax, %rax
	jne	.L428
	movq	-40(%rbp), %rax
	movw	$0, 2496(%rax)
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1479, %esi
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
	jmp	.L425
.L428:
	movq	-40(%rbp), %rax
	movq	2488(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L427
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1483, %esi
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
	jmp	.L425
.L426:
	movl	-52(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L429
	movl	$0, -20(%rbp)
	jmp	.L430
.L429:
	movl	$2, -20(%rbp)
.L430:
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	leaq	128(%rax), %rdi
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	$18, %edx
	movl	%eax, %esi
	call	custom_ext_find@PLT
	testq	%rax, %rax
	jne	.L431
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1498, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$110, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L425
.L431:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rcx, %r9
	movq	%rbx, %r8
	movq	%rdx, %rcx
	movl	$18, %edx
	movq	%rax, %rdi
	call	custom_ext_parse@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L427
	movl	$0, %eax
	jmp	.L425
.L427:
	movl	$1, %eax
.L425:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE892:
	.size	tls_parse_stoc_sct, .-tls_parse_stoc_sct
	.type	ssl_next_proto_validate, @function
ssl_next_proto_validate:
.LFB893:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	.L433
.L436:
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L434
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L433
.L434:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1529, %esi
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
	jmp	.L437
.L433:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L436
	movl	$1, %eax
.L437:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE893:
	.size	ssl_next_proto_validate, .-ssl_next_proto_validate
	.globl	tls_parse_stoc_npn
	.type	tls_parse_stoc_npn, @function
tls_parse_stoc_npn:
.LFB894:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L439
	movq	-88(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L439
	movl	$1, %eax
	jmp	.L446
.L439:
	movq	-40(%rbp), %rax
	movq	720(%rax), %rax
	testq	%rax, %rax
	jne	.L441
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1551, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$110, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L446
.L441:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_next_proto_validate
	testl	%eax, %eax
	jne	.L442
	movl	$0, %eax
	jmp	.L446
.L442:
	movq	-40(%rbp), %rax
	movq	720(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	728(%rax), %r12
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %r13d
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	leaq	-49(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	%r12, %r9
	movl	%r13d, %r8d
	movq	%rax, %rdi
	call	*%rbx
	testl	%eax, %eax
	jne	.L443
	movzbl	-49(%rbp), %eax
	testb	%al, %al
	jne	.L444
.L443:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1566, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L446
.L444:
	movq	-88(%rbp), %rax
	movq	2664(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1574, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movzbl	-49(%rbp), %eax
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rcx
	movl	$1575, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 2664(%rax)
	movq	-88(%rbp), %rax
	movq	2664(%rax), %rax
	testq	%rax, %rax
	jne	.L445
	movq	-88(%rbp), %rax
	movq	$0, 2672(%rax)
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1578, %esi
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
	jmp	.L446
.L445:
	movzbl	-49(%rbp), %eax
	movzbl	%al, %edx
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	2664(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movzbl	-49(%rbp), %eax
	movzbl	%al, %edx
	movq	-88(%rbp), %rax
	movq	%rdx, 2672(%rax)
	movq	-88(%rbp), %rax
	movl	$1, 1092(%rax)
	movl	$1, %eax
.L446:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE894:
	.size	tls_parse_stoc_npn, .-tls_parse_stoc_npn
	.globl	tls_parse_stoc_alpn
	.type	tls_parse_stoc_alpn, @function
tls_parse_stoc_alpn:
.LFB895:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	$0, -20(%rbp)
	movq	-72(%rbp), %rax
	movl	1128(%rax), %eax
	testl	%eax, %eax
	jne	.L448
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1599, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$110, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L465
.L448:
	leaq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2_len
	testl	%eax, %eax
	je	.L450
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L450
	leaq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1_len
	testl	%eax, %eax
	je	.L450
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L451
.L450:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1611, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L465
.L451:
	movq	-72(%rbp), %rax
	movq	2656(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	2648(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L453
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1617, %esi
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
	jmp	.L465
.L456:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L454
	jmp	.L453
.L454:
	movq	-32(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %r12
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L453
	movl	$1, -20(%rbp)
	jmp	.L455
.L453:
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L456
.L455:
	cmpl	$0, -20(%rbp)
	jne	.L457
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1632, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L465
.L457:
	movq	-72(%rbp), %rax
	movq	1096(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1636, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1637, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 1096(%rax)
	movq	-72(%rbp), %rax
	movq	1096(%rax), %rax
	testq	%rax, %rax
	jne	.L458
	movq	-72(%rbp), %rax
	movq	$0, 1104(%rax)
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1640, %esi
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
	jmp	.L465
.L458:
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	1096(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L459
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1644, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L465
.L459:
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 1104(%rax)
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	je	.L460
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	848(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L460
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	1096(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L461
.L460:
	movq	-72(%rbp), %rax
	movl	$0, 2692(%rax)
.L461:
	movq	-72(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L462
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L463
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1662, %esi
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
	jmp	.L465
.L463:
	movq	-72(%rbp), %rax
	movq	1104(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	1096(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	2184(%rdx), %rbx
	leaq	.LC1(%rip), %rdx
	movl	$1666, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, 840(%rbx)
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	jne	.L464
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	$0, 848(%rax)
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1669, %esi
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
	jmp	.L465
.L464:
	movq	-72(%rbp), %rax
	movq	2184(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	1104(%rdx), %rdx
	movq	%rdx, 848(%rax)
.L462:
	movl	$1, %eax
.L465:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE895:
	.size	tls_parse_stoc_alpn, .-tls_parse_stoc_alpn
	.globl	tls_parse_stoc_use_srtp
	.type	tls_parse_stoc_use_srtp, @function
tls_parse_stoc_use_srtp:
.LFB896:
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
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L467
	movl	-32(%rbp), %eax
	cmpl	$2, %eax
	jne	.L467
	leaq	-28(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L467
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L467
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L468
.L467:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1691, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$353, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L475
.L468:
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	je	.L470
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1698, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$352, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L475
.L470:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_srtp_profiles@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L471
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1705, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$359, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L475
.L471:
	movl	$0, -4(%rbp)
	jmp	.L472
.L474:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %edx
	cmpq	%rdx, %rax
	jne	.L473
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 2816(%rax)
	movl	$1, %eax
	jmp	.L475
.L473:
	addl	$1, -4(%rbp)
.L472:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L474
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1722, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$353, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
.L475:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE896:
	.size	tls_parse_stoc_use_srtp, .-tls_parse_stoc_use_srtp
	.globl	tls_parse_stoc_etm
	.type	tls_parse_stoc_etm, @function
tls_parse_stoc_etm:
.LFB897:
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
	jne	.L477
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	40(%rax), %eax
	cmpl	$64, %eax
	je	.L477
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	cmpl	$4, %eax
	je	.L477
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	cmpl	$1024, %eax
	je	.L477
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	cmpl	$262144, %eax
	je	.L477
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	cmpl	$4194304, %eax
	je	.L477
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	movl	36(%rax), %eax
	cmpl	$8388608, %eax
	je	.L477
	movq	-8(%rbp), %rax
	movl	$1, 2684(%rax)
.L477:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE897:
	.size	tls_parse_stoc_etm, .-tls_parse_stoc_etm
	.globl	tls_parse_stoc_ems
	.type	tls_parse_stoc_ems, @function
tls_parse_stoc_ems:
.LFB898:
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
	andl	$1, %eax
	testq	%rax, %rax
	je	.L480
	movl	$1, %eax
	jmp	.L481
.L480:
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	orb	$2, %ah
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 288(%rax)
	movq	-8(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L482
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movl	888(%rax), %edx
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	orl	$1, %edx
	movl	%edx, 888(%rax)
.L482:
	movl	$1, %eax
.L481:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE898:
	.size	tls_parse_stoc_ems, .-tls_parse_stoc_ems
	.globl	tls_parse_stoc_supported_versions
	.type	tls_parse_stoc_supported_versions, @function
tls_parse_stoc_supported_versions:
.LFB899:
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
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L484
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L485
.L484:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1764, %esi
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
	jmp	.L490
.L485:
	movl	-4(%rbp), %eax
	cmpl	$772, %eax
	je	.L487
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1773, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$116, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L490
.L487:
	cmpl	$2048, -36(%rbp)
	jne	.L488
	movl	$1, %eax
	jmp	.L490
.L488:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 72(%rax)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_set_record_protocol_version@PLT
	testl	%eax, %eax
	jne	.L489
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1785, %esi
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
	jmp	.L490
.L489:
	movl	$1, %eax
.L490:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE899:
	.size	tls_parse_stoc_supported_versions, .-tls_parse_stoc_supported_versions
	.globl	tls_parse_stoc_key_share
	.type	tls_parse_stoc_key_share, @function
tls_parse_stoc_key_share:
.LFB900:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-120(%rbp), %rax
	movq	712(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L492
	movq	-120(%rbp), %rax
	movq	1136(%rax), %rax
	testq	%rax, %rax
	je	.L493
.L492:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1804, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L519
.L493:
	leaq	-76(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L495
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1809, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L519
.L495:
	movl	-132(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L496
	movq	$0, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L497
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1818, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L519
.L497:
	movq	-120(%rbp), %rax
	movzwl	1134(%rax), %eax
	movzwl	%ax, %edx
	movl	-76(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L499
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1827, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$108, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L519
.L499:
	leaq	-112(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls1_get_supported_groups@PLT
	movq	$0, -24(%rbp)
	jmp	.L500
.L503:
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movl	-76(%rbp), %eax
	cmpl	%eax, %edx
	je	.L520
	addq	$1, -24(%rbp)
.L500:
	movq	-112(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L503
	jmp	.L502
.L520:
	nop
.L502:
	movq	-112(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L504
	movl	-76(%rbp), %eax
	movzwl	%ax, %ecx
	movq	-120(%rbp), %rax
	movl	$131076, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	tls_group_allowed@PLT
	testl	%eax, %eax
	je	.L504
	movl	-76(%rbp), %eax
	movzwl	%ax, %esi
	movq	-120(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$772, %ecx
	movl	$772, %edx
	movq	%rax, %rdi
	call	tls_valid_group@PLT
	testl	%eax, %eax
	jne	.L505
.L504:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1841, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$108, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L519
.L505:
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movw	%dx, 1134(%rax)
	movq	-120(%rbp), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-120(%rbp), %rax
	movq	$0, 712(%rax)
	movl	$1, %eax
	jmp	.L519
.L496:
	movq	-120(%rbp), %rax
	movzwl	1134(%rax), %eax
	movzwl	%ax, %edx
	movl	-76(%rbp), %eax
	cmpl	%eax, %edx
	je	.L506
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1856, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$108, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L519
.L506:
	movq	-120(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L507
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	movl	-76(%rbp), %edx
	movl	%edx, 776(%rax)
	jmp	.L508
.L507:
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	movl	776(%rax), %edx
	movl	-76(%rbp), %eax
	cmpl	%eax, %edx
	je	.L508
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ssl_session_dup@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L509
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1874, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$524308, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L519
.L509:
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 2184(%rax)
	movq	-120(%rbp), %rax
	movq	2184(%rax), %rax
	movl	-76(%rbp), %edx
	movl	%edx, 776(%rax)
.L508:
	movl	-76(%rbp), %eax
	movzwl	%ax, %edx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tls1_group_id_lookup@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L510
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1884, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$108, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L519
.L510:
	leaq	-96(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	je	.L511
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L512
.L511:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1890, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$159, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L519
.L512:
	movq	-48(%rbp), %rax
	movzbl	48(%rax), %eax
	testb	%al, %al
	jne	.L513
	call	EVP_PKEY_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L514
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	jg	.L515
.L514:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1898, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$296, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L519
.L515:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls13_set_encoded_pub_key@PLT
	testl	%eax, %eax
	jg	.L516
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1905, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$306, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L519
.L516:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_derive@PLT
	testl	%eax, %eax
	jne	.L517
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L519
.L517:
	movq	-120(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 1136(%rax)
	jmp	.L518
.L513:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -64(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	ssl_decapsulate@PLT
	testl	%eax, %eax
	jne	.L518
	movl	$0, %eax
	jmp	.L519
.L518:
	movq	-120(%rbp), %rax
	movb	$1, 1133(%rax)
	movl	$1, %eax
.L519:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE900:
	.size	tls_parse_stoc_key_share, .-tls_parse_stoc_key_share
	.globl	tls_parse_stoc_cookie
	.type	tls_parse_stoc_cookie, @function
tls_parse_stoc_cookie:
.LFB901:
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
	je	.L522
	movq	-24(%rbp), %rax
	leaq	2704(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	2696(%rax), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_memdup
	testl	%eax, %eax
	jne	.L523
.L522:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1940, %esi
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
	jmp	.L525
.L523:
	movl	$1, %eax
.L525:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE901:
	.size	tls_parse_stoc_cookie, .-tls_parse_stoc_cookie
	.globl	tls_parse_stoc_early_data
	.type	tls_parse_stoc_early_data, @function
tls_parse_stoc_early_data:
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
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	cmpl	$8192, -36(%rbp)
	jne	.L527
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	je	.L528
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L529
.L528:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1956, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$174, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L532
.L529:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movl	%edx, 836(%rax)
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	andl	$8192, %eax
	testq	%rax, %rax
	je	.L531
	movq	-8(%rbp), %rdx
	movl	$4294967295, %eax
	cmpq	%rax, %rdx
	je	.L531
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movl	$1, 836(%rax)
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1974, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$174, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L532
.L531:
	movl	$1, %eax
	jmp	.L532
.L527:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L533
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1982, %esi
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
	jmp	.L532
.L533:
	movq	-24(%rbp), %rax
	movl	2692(%rax), %eax
	testl	%eax, %eax
	je	.L534
	movq	-24(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	jne	.L535
.L534:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1993, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L532
.L535:
	movq	-24(%rbp), %rax
	movl	$2, 2688(%rax)
	movl	$1, %eax
.L532:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE902:
	.size	tls_parse_stoc_early_data, .-tls_parse_stoc_early_data
	.globl	tls_parse_stoc_psk
	.type	tls_parse_stoc_psk, @function
tls_parse_stoc_psk:
.LFB903:
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
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L537
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L538
.L537:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2010, %esi
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
	jmp	.L548
.L538:
	movq	-24(%rbp), %rax
	movl	2720(%rax), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cmpl	%edx, %eax
	jb	.L540
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2015, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$114, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L548
.L540:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jne	.L541
	movq	-24(%rbp), %rax
	movq	2192(%rax), %rax
	testq	%rax, %rax
	je	.L542
	movq	-24(%rbp), %rax
	movl	2720(%rax), %eax
	cmpl	$2, %eax
	jne	.L541
.L542:
	movq	-24(%rbp), %rax
	movl	$1, 1168(%rax)
	movq	-24(%rbp), %rax
	movq	2192(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 2192(%rax)
	movl	$1, %eax
	jmp	.L548
.L541:
	movq	-24(%rbp), %rax
	movq	2192(%rax), %rax
	testq	%rax, %rax
	jne	.L543
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2033, %esi
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
	jmp	.L548
.L543:
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$3, %eax
	je	.L544
	movq	-24(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$7, %eax
	jne	.L545
.L544:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	jne	.L545
	movq	-24(%rbp), %rax
	movq	2192(%rax), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	jne	.L546
.L545:
	movq	-24(%rbp), %rax
	movq	2192(%rax), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	$1284, %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L546:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-24(%rbp), %rax
	movq	2192(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2184(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 2192(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 1168(%rax)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L547
	movq	-24(%rbp), %rax
	movl	$0, 2692(%rax)
.L547:
	movl	$1, %eax
.L548:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE903:
	.size	tls_parse_stoc_psk, .-tls_parse_stoc_psk
	.globl	tls_construct_ctos_client_cert_type
	.type	tls_construct_ctos_client_cert_type, @function
tls_construct_ctos_client_cert_type:
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
	movb	$0, 2745(%rax)
	movq	-8(%rbp), %rax
	movq	5368(%rax), %rax
	testq	%rax, %rax
	jne	.L550
	movl	$2, %eax
	jmp	.L551
.L550:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$19, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L552
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L552
	movq	-8(%rbp), %rax
	movq	5376(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	5368(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L552
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L553
.L552:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2072, %esi
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
	jmp	.L551
.L553:
	movq	-8(%rbp), %rax
	movb	$1, 2745(%rax)
	movl	$1, %eax
.L551:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE904:
	.size	tls_construct_ctos_client_cert_type, .-tls_construct_ctos_client_cert_type
	.globl	tls_parse_stoc_client_cert_type
	.type	tls_parse_stoc_client_cert_type, @function
tls_parse_stoc_client_cert_type:
.LFB905:
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
	je	.L555
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2086, %esi
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
	jmp	.L561
.L555:
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L557
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2090, %esi
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
	jmp	.L561
.L557:
	movq	-24(%rbp), %rax
	movzbl	2745(%rax), %eax
	cmpb	$1, %al
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L558
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2095, %esi
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
	jmp	.L561
.L558:
	movq	-24(%rbp), %rax
	movq	5368(%rax), %rax
	testq	%rax, %rax
	jne	.L559
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2100, %esi
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
	jmp	.L561
.L559:
	movq	-24(%rbp), %rax
	movq	5376(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	5368(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	jne	.L560
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2105, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$384, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L561
.L560:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 2744(%rax)
	movl	$1, %eax
.L561:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE905:
	.size	tls_parse_stoc_client_cert_type, .-tls_parse_stoc_client_cert_type
	.globl	tls_construct_ctos_server_cert_type
	.type	tls_construct_ctos_server_cert_type, @function
tls_construct_ctos_server_cert_type:
.LFB906:
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
	movb	$0, 2747(%rax)
	movq	-8(%rbp), %rax
	movq	5384(%rax), %rax
	testq	%rax, %rax
	jne	.L563
	movl	$2, %eax
	jmp	.L564
.L563:
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L565
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L565
	movq	-8(%rbp), %rax
	movq	5392(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	5384(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	WPACKET_sub_memcpy__@PLT
	testl	%eax, %eax
	je	.L565
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L566
.L565:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2124, %esi
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
	jmp	.L564
.L566:
	movq	-8(%rbp), %rax
	movb	$1, 2747(%rax)
	movl	$1, %eax
.L564:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE906:
	.size	tls_construct_ctos_server_cert_type, .-tls_construct_ctos_server_cert_type
	.globl	tls_parse_stoc_server_cert_type
	.type	tls_parse_stoc_server_cert_type, @function
tls_parse_stoc_server_cert_type:
.LFB907:
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
	je	.L568
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2138, %esi
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
	jmp	.L574
.L568:
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L570
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2142, %esi
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
	jmp	.L574
.L570:
	movq	-24(%rbp), %rax
	movzbl	2747(%rax), %eax
	cmpb	$1, %al
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L571
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2147, %esi
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
	jmp	.L574
.L571:
	movq	-24(%rbp), %rax
	movq	5384(%rax), %rax
	testq	%rax, %rax
	jne	.L572
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2152, %esi
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
	jmp	.L574
.L572:
	movq	-24(%rbp), %rax
	movq	5392(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	5384(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	jne	.L573
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$384, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L574
.L573:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 2746(%rax)
	movl	$1, %eax
.L574:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE907:
	.size	tls_parse_stoc_server_cert_type, .-tls_parse_stoc_server_cert_type
	.section	.rodata
	.align 16
	.type	__func__.43, @object
	.size	__func__.43, 31
__func__.43:
	.string	"tls_construct_ctos_renegotiate"
	.align 16
	.type	__func__.42, @object
	.size	__func__.42, 31
__func__.42:
	.string	"tls_construct_ctos_server_name"
	.align 32
	.type	__func__.41, @object
	.size	__func__.41, 34
__func__.41:
	.string	"tls_construct_ctos_maxfragmentlen"
	.align 16
	.type	__func__.40, @object
	.size	__func__.40, 23
__func__.40:
	.string	"tls_construct_ctos_srp"
	.align 32
	.type	__func__.39, @object
	.size	__func__.39, 33
__func__.39:
	.string	"tls_construct_ctos_ec_pt_formats"
	.align 32
	.type	__func__.38, @object
	.size	__func__.38, 36
__func__.38:
	.string	"tls_construct_ctos_supported_groups"
	.align 32
	.type	__func__.37, @object
	.size	__func__.37, 34
__func__.37:
	.string	"tls_construct_ctos_session_ticket"
	.align 16
	.type	__func__.36, @object
	.size	__func__.36, 28
__func__.36:
	.string	"tls_construct_ctos_sig_algs"
	.align 32
	.type	__func__.35, @object
	.size	__func__.35, 34
__func__.35:
	.string	"tls_construct_ctos_status_request"
	.align 16
	.type	__func__.34, @object
	.size	__func__.34, 23
__func__.34:
	.string	"tls_construct_ctos_npn"
	.align 16
	.type	__func__.33, @object
	.size	__func__.33, 24
__func__.33:
	.string	"tls_construct_ctos_alpn"
	.align 16
	.type	__func__.32, @object
	.size	__func__.32, 28
__func__.32:
	.string	"tls_construct_ctos_use_srtp"
	.align 16
	.type	__func__.31, @object
	.size	__func__.31, 23
__func__.31:
	.string	"tls_construct_ctos_etm"
	.align 16
	.type	__func__.30, @object
	.size	__func__.30, 23
__func__.30:
	.string	"tls_construct_ctos_sct"
	.align 16
	.type	__func__.29, @object
	.size	__func__.29, 23
__func__.29:
	.string	"tls_construct_ctos_ems"
	.align 32
	.type	__func__.28, @object
	.size	__func__.28, 38
__func__.28:
	.string	"tls_construct_ctos_supported_versions"
	.align 32
	.type	__func__.27, @object
	.size	__func__.27, 33
__func__.27:
	.string	"tls_construct_ctos_psk_kex_modes"
	.align 8
	.type	__func__.26, @object
	.size	__func__.26, 14
__func__.26:
	.string	"add_key_share"
	.align 16
	.type	__func__.25, @object
	.size	__func__.25, 29
__func__.25:
	.string	"tls_construct_ctos_key_share"
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 26
__func__.24:
	.string	"tls_construct_ctos_cookie"
	.align 16
	.type	__func__.23, @object
	.size	__func__.23, 30
__func__.23:
	.string	"tls_construct_ctos_early_data"
	.align 16
	.type	__func__.22, @object
	.size	__func__.22, 27
__func__.22:
	.string	"tls_construct_ctos_padding"
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 23
__func__.21:
	.string	"tls_construct_ctos_psk"
	.align 32
	.type	__func__.20, @object
	.size	__func__.20, 39
__func__.20:
	.string	"tls_construct_ctos_post_handshake_auth"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 27
__func__.19:
	.string	"tls_parse_stoc_renegotiate"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 30
__func__.18:
	.string	"tls_parse_stoc_maxfragmentlen"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 27
__func__.17:
	.string	"tls_parse_stoc_server_name"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 29
__func__.16:
	.string	"tls_parse_stoc_ec_pt_formats"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 30
__func__.15:
	.string	"tls_parse_stoc_session_ticket"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 30
__func__.14:
	.string	"tls_parse_stoc_status_request"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 19
__func__.13:
	.string	"tls_parse_stoc_sct"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 24
__func__.12:
	.string	"ssl_next_proto_validate"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 19
__func__.11:
	.string	"tls_parse_stoc_npn"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 20
__func__.10:
	.string	"tls_parse_stoc_alpn"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 24
__func__.9:
	.string	"tls_parse_stoc_use_srtp"
	.align 32
	.type	__func__.8, @object
	.size	__func__.8, 34
__func__.8:
	.string	"tls_parse_stoc_supported_versions"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 25
__func__.7:
	.string	"tls_parse_stoc_key_share"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 22
__func__.6:
	.string	"tls_parse_stoc_cookie"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 26
__func__.5:
	.string	"tls_parse_stoc_early_data"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 19
__func__.4:
	.string	"tls_parse_stoc_psk"
	.align 32
	.type	__func__.3, @object
	.size	__func__.3, 36
__func__.3:
	.string	"tls_construct_ctos_client_cert_type"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 32
__func__.2:
	.string	"tls_parse_stoc_client_cert_type"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 36
__func__.1:
	.string	"tls_construct_ctos_server_cert_type"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 32
__func__.0:
	.string	"tls_parse_stoc_server_cert_type"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
