	.file	"ssl_lib.c"
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
	.type	ossl_check_X509_EXTENSION_sk_type, @function
ossl_check_X509_EXTENSION_sk_type:
.LFB393:
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
.LFE393:
	.size	ossl_check_X509_EXTENSION_sk_type, .-ossl_check_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_freefunc_type, @function
ossl_check_X509_EXTENSION_freefunc_type:
.LFB396:
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
.LFE396:
	.size	ossl_check_X509_EXTENSION_freefunc_type, .-ossl_check_X509_EXTENSION_freefunc_type
	.type	ossl_check_SCT_type, @function
ossl_check_SCT_type:
.LFB468:
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
.LFE468:
	.size	ossl_check_SCT_type, .-ossl_check_SCT_type
	.type	ossl_check_const_SCT_sk_type, @function
ossl_check_const_SCT_sk_type:
.LFB469:
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
.LFE469:
	.size	ossl_check_const_SCT_sk_type, .-ossl_check_const_SCT_sk_type
	.type	ossl_check_SCT_sk_type, @function
ossl_check_SCT_sk_type:
.LFB470:
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
.LFE470:
	.size	ossl_check_SCT_sk_type, .-ossl_check_SCT_sk_type
	.type	ossl_check_SRTP_PROTECTION_PROFILE_sk_type, @function
ossl_check_SRTP_PROTECTION_PROFILE_sk_type:
.LFB482:
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
.LFE482:
	.size	ossl_check_SRTP_PROTECTION_PROFILE_sk_type, .-ossl_check_SRTP_PROTECTION_PROFILE_sk_type
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
	jns	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	PACKET_buf_init, .-PACKET_buf_init
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
	je	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
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
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	PACKET_equal, .-PACKET_equal
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
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L49:
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
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L52:
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
	jnb	.L54
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L55:
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
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L58:
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
	jnb	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L61:
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
	jne	.L66
	movl	$1, %eax
	jmp	.L67
.L66:
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
	jne	.L68
	movl	$0, %eax
	jmp	.L67
.L68:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	PACKET_memdup, .-PACKET_memdup
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
	jnb	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L71:
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
	je	.L73
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L74
.L73:
	movl	$0, %eax
	jmp	.L76
.L74:
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
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PACKET_get_length_prefixed_1, .-PACKET_get_length_prefixed_1
	.type	sk_danetls_record_num, @function
sk_danetls_record_num:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	sk_danetls_record_num, .-sk_danetls_record_num
	.type	sk_danetls_record_value, @function
sk_danetls_record_value:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	sk_danetls_record_value, .-sk_danetls_record_value
	.type	sk_danetls_record_new_null, @function
sk_danetls_record_new_null:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	sk_danetls_record_new_null, .-sk_danetls_record_new_null
	.type	sk_danetls_record_new_reserve, @function
sk_danetls_record_new_reserve:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	sk_danetls_record_new_reserve, .-sk_danetls_record_new_reserve
	.type	sk_danetls_record_pop_free, @function
sk_danetls_record_pop_free:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	sk_danetls_record_pop_free, .-sk_danetls_record_pop_free
	.type	sk_danetls_record_insert, @function
sk_danetls_record_insert:
.LFB553:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	sk_danetls_record_insert, .-sk_danetls_record_insert
	.type	CRYPTO_UP_REF, @function
CRYPTO_UP_REF:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	CRYPTO_UP_REF, .-CRYPTO_UP_REF
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	negl	%edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L91
.L91:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	xchgl	(%rax), %edx
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB567:
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
.LFE567:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.type	safe_sub_time, @function
safe_sub_time:
.LFB569:
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
	jnb	.L97
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L97:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	safe_sub_time, .-safe_sub_time
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
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB579:
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
.LFE579:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB589:
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
	je	.L106
	call	ossl_time_zero
	jmp	.L108
.L106:
	movq	-8(%rbp), %rax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ossl_time_subtract, .-ossl_time_subtract
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
	.type	lh_SSL_SESSION_free, @function
lh_SSL_SESSION_free:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	lh_SSL_SESSION_free, .-lh_SSL_SESSION_free
	.type	lh_SSL_SESSION_retrieve, @function
lh_SSL_SESSION_retrieve:
.LFB606:
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
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	lh_SSL_SESSION_retrieve, .-lh_SSL_SESSION_retrieve
	.type	lh_SSL_SESSION_num_items, @function
lh_SSL_SESSION_num_items:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_num_items@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	lh_SSL_SESSION_num_items, .-lh_SSL_SESSION_num_items
	.type	lh_SSL_SESSION_doall_thunk, @function
lh_SSL_SESSION_doall_thunk:
.LFB611:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	lh_SSL_SESSION_doall_thunk, .-lh_SSL_SESSION_doall_thunk
	.type	lh_SSL_SESSION_doall_arg_thunk, @function
lh_SSL_SESSION_doall_arg_thunk:
.LFB612:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	lh_SSL_SESSION_doall_arg_thunk, .-lh_SSL_SESSION_doall_arg_thunk
	.type	lh_SSL_SESSION_new, @function
lh_SSL_SESSION_new:
.LFB614:
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
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_SSL_SESSION_doall_arg_thunk(%rip), %rsi
	leaq	lh_SSL_SESSION_doall_thunk(%rip), %rcx
	leaq	lh_SSL_SESSION_cfn_thunk(%rip), %rdx
	leaq	lh_SSL_SESSION_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	lh_SSL_SESSION_new, .-lh_SSL_SESSION_new
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
	je	.L131
	movq	-24(%rbp), %rax
	movq	5384(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	5392(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L132
.L131:
	movq	-24(%rbp), %rax
	movq	5368(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	5376(%rax), %rax
	movq	%rax, -16(%rbp)
.L132:
	cmpq	$0, -8(%rbp)
	jne	.L133
	movl	$0, %eax
	jmp	.L134
.L133:
	movzbl	-28(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memchr@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L134:
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
	js	.L136
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	cmpl	%eax, -12(%rbp)
	jl	.L137
.L136:
	movl	$0, %eax
	jmp	.L138
.L137:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ssl_has_cert_type
	testl	%eax, %eax
	je	.L139
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
	jmp	.L138
.L139:
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
	je	.L140
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
	je	.L140
	movl	$1, %eax
	jmp	.L138
.L140:
	movl	$0, %eax
.L138:
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
	.type	ossl_check_OCSP_RESPID_sk_type, @function
ossl_check_OCSP_RESPID_sk_type:
.LFB851:
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
.LFE851:
	.size	ossl_check_OCSP_RESPID_sk_type, .-ossl_check_OCSP_RESPID_sk_type
	.type	ossl_check_OCSP_RESPID_freefunc_type, @function
ossl_check_OCSP_RESPID_freefunc_type:
.LFB854:
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
.LFE854:
	.size	ossl_check_OCSP_RESPID_freefunc_type, .-ossl_check_OCSP_RESPID_freefunc_type
	.type	ssl_undefined_function_3, @function
ssl_undefined_function_3:
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
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_undefined_function@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE867:
	.size	ssl_undefined_function_3, .-ssl_undefined_function_3
	.type	ssl_undefined_function_4, @function
ssl_undefined_function_4:
.LFB868:
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
	movq	%rax, %rdi
	call	ssl_undefined_function@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE868:
	.size	ssl_undefined_function_4, .-ssl_undefined_function_4
	.type	ssl_undefined_function_5, @function
ssl_undefined_function_5:
.LFB869:
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
	call	ssl_undefined_function@PLT
	cltq
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE869:
	.size	ssl_undefined_function_5, .-ssl_undefined_function_5
	.type	ssl_undefined_function_6, @function
ssl_undefined_function_6:
.LFB870:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, %edi
	call	ssl_undefined_function@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE870:
	.size	ssl_undefined_function_6, .-ssl_undefined_function_6
	.type	ssl_undefined_function_7, @function
ssl_undefined_function_7:
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_undefined_function@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE871:
	.size	ssl_undefined_function_7, .-ssl_undefined_function_7
	.type	ssl_undefined_function_8, @function
ssl_undefined_function_8:
.LFB872:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_undefined_function@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE872:
	.size	ssl_undefined_function_8, .-ssl_undefined_function_8
	.globl	ssl3_undef_enc_method
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ssl3_undef_enc_method, @object
	.size	ssl3_undef_enc_method, 112
ssl3_undef_enc_method:
	.quad	ssl_undefined_function_8
	.quad	ssl_undefined_function_3
	.quad	ssl_undefined_function_4
	.quad	ssl_undefined_function_5
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ssl_undefined_function_6
	.quad	ssl_undefined_function_7
	.zero	32
	.section	.rodata
	.align 16
	.type	dane_mds, @object
	.size	dane_mds, 24
dane_mds:
	.byte	0
	.byte	0
	.zero	2
	.long	0
	.byte	1
	.byte	1
	.zero	2
	.long	672
	.byte	2
	.byte	2
	.zero	2
	.long	674
.LC1:
	.string	"../ssl/ssl_lib.c"
	.text
	.type	dane_ctx_enable, @function
dane_ctx_enable:
.LFB873:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movb	$2, -9(%rbp)
	movzbl	-9(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L162
	movl	$1, %eax
	jmp	.L163
.L162:
	movl	-16(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	.LC1(%rip), %rcx
	movl	$117, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movl	-16(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$118, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L164
	cmpq	$0, -24(%rbp)
	jne	.L165
.L164:
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$122, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L163
.L165:
	movq	$0, -8(%rbp)
	jmp	.L166
.L170:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	4+dane_mds(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L171
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	4+dane_mds(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L171
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	dane_mds(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	dane_mds(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	leaq	1+dane_mds(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdx)
	jmp	.L169
.L171:
	nop
.L169:
	addq	$1, -8(%rbp)
.L166:
	cmpq	$2, -8(%rbp)
	jbe	.L170
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movzbl	-9(%rbp), %edx
	movb	%dl, 16(%rax)
	movl	$1, %eax
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE873:
	.size	dane_ctx_enable, .-dane_ctx_enable
	.type	dane_ctx_final, @function
dane_ctx_final:
.LFB874:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$146, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$149, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE874:
	.size	dane_ctx_final, .-dane_ctx_final
	.type	tlsa_free, @function
tlsa_free:
.LFB875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L176
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$158, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$160, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L173
.L176:
	nop
.L173:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE875:
	.size	tlsa_free, .-tlsa_free
	.type	dane_final, @function
dane_final:
.LFB876:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	tlsa_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_danetls_record_pop_free
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 44(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 48(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE876:
	.size	dane_final, .-dane_final
	.type	ssl_dane_dup, @function
ssl_dane_dup:
.LFB877:
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
	addq	$1184, %rax
	testq	%rax, %rax
	je	.L179
	movq	-32(%rbp), %rax
	movq	1192(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jg	.L180
.L179:
	movl	$1, %eax
	jmp	.L181
.L180:
	movq	-32(%rbp), %rax
	movq	1192(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$1184, %rax
	movq	%rax, %rdi
	call	dane_final
	movq	-32(%rbp), %rax
	movq	1240(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 1240(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	928(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 1184(%rax)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	sk_danetls_record_new_reserve
	movq	-24(%rbp), %rdx
	movq	%rax, 1192(%rdx)
	movq	-24(%rbp), %rax
	movq	1192(%rax), %rax
	testq	%rax, %rax
	jne	.L182
	call	ERR_new@PLT
	leaq	__func__.54(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$196, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L181
.L182:
	movl	$0, -4(%rbp)
	jmp	.L183
.L185:
	movq	-32(%rbp), %rax
	movq	1192(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_danetls_record_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %r8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SSL_dane_tlsa_add@PLT
	testl	%eax, %eax
	jg	.L184
	movl	$0, %eax
	jmp	.L181
.L184:
	addl	$1, -4(%rbp)
.L183:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L185
	movl	$1, %eax
.L181:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE877:
	.size	ssl_dane_dup, .-ssl_dane_dup
	.type	dane_mtype_set, @function
dane_mtype_set:
.LFB878:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%ecx, %eax
	movb	%dl, -52(%rbp)
	movb	%al, -56(%rbp)
	cmpb	$0, -52(%rbp)
	jne	.L187
	cmpq	$0, -48(%rbp)
	je	.L187
	call	ERR_new@PLT
	leaq	__func__.53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L188
.L187:
	movq	-40(%rbp), %rax
	movzbl	16(%rax), %eax
	cmpb	-52(%rbp), %al
	jnb	.L189
	movzbl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	$225, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L190
	movl	$-1, %eax
	jmp	.L188
.L190:
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	$230, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L191
	movl	$-1, %eax
	jmp	.L188
.L191:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movzbl	16(%rax), %eax
	movzbl	%al, %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L192
.L193:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	addl	$1, -4(%rbp)
.L192:
	movzbl	-52(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L193
	movq	-40(%rbp), %rax
	movzbl	-52(%rbp), %edx
	movb	%dl, 16(%rax)
.L189:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	-52(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	cmpq	$0, -48(%rbp)
	je	.L194
	movzbl	-56(%rbp), %eax
	jmp	.L195
.L194:
	movl	$0, %eax
.L195:
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rcx
	movzbl	-52(%rbp), %edx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	movl	$1, %eax
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE878:
	.size	dane_mtype_set, .-dane_mtype_set
	.type	tlsa_md_get, @function
tlsa_md_get:
.LFB879:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	16(%rax), %eax
	cmpb	-12(%rbp), %al
	jnb	.L197
	movl	$0, %eax
	jmp	.L198
.L197:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	-12(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
.L198:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE879:
	.size	tlsa_md_get, .-tlsa_md_get
	.type	dane_tlsa_add, @function
dane_tlsa_add:
.LFB880:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	%ecx, %eax
	movq	%r8, -112(%rbp)
	movq	%r9, -120(%rbp)
	movl	%esi, %ecx
	movb	%cl, -92(%rbp)
	movb	%dl, -96(%rbp)
	movb	%al, -100(%rbp)
	movq	$0, -24(%rbp)
	movq	-120(%rbp), %rax
	movl	%eax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L200
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$270, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$175, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L201
.L200:
	cmpl	$0, -32(%rbp)
	js	.L202
	movl	-32(%rbp), %eax
	cltq
	cmpq	%rax, -120(%rbp)
	je	.L203
.L202:
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$189, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L203:
	cmpb	$3, -92(%rbp)
	jbe	.L204
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$280, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$184, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L204:
	cmpb	$1, -96(%rbp)
	jbe	.L205
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$285, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$202, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L205:
	cmpb	$0, -100(%rbp)
	je	.L206
	movzbl	-100(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	tlsa_md_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L206
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$200, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L206:
	cmpq	$0, -24(%rbp)
	je	.L207
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	cmpq	%rax, -120(%rbp)
	je	.L207
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$192, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L207:
	cmpq	$0, -112(%rbp)
	jne	.L208
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$302, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$203, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L208:
	leaq	.LC1(%rip), %rax
	movl	$306, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L209
	movl	$-1, %eax
	jmp	.L201
.L209:
	movq	-40(%rbp), %rax
	movzbl	-92(%rbp), %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movzbl	-96(%rbp), %edx
	movb	%dl, 1(%rax)
	movq	-40(%rbp), %rax
	movzbl	-100(%rbp), %edx
	movb	%dl, 2(%rax)
	leaq	.LC1(%rip), %rcx
	movq	-120(%rbp), %rax
	movl	$312, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L210
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tlsa_free
	movl	$-1, %eax
	jmp	.L201
.L210:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpb	$0, -100(%rbp)
	jne	.L211
	movq	-112(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movzbl	-96(%rbp), %eax
	testl	%eax, %eax
	je	.L212
	cmpl	$1, %eax
	je	.L213
	jmp	.L211
.L212:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509@PLT
	testq	%rax, %rax
	je	.L215
	movq	-64(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L215
	movq	-64(%rbp), %rax
	subq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L216
.L215:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tlsa_free
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$332, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L216:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	testq	%rax, %rax
	jne	.L218
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tlsa_free
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$338, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L218:
	movzbl	-92(%rbp), %eax
	movl	$5, %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L219
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L211
.L219:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L220
	call	OPENSSL_sk_new_null@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L221
.L220:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_type
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L237
.L221:
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$369, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tlsa_free
	movl	$-1, %eax
	jmp	.L201
.L213:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_PUBKEY@PLT
	testq	%rax, %rax
	je	.L223
	movq	-64(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jb	.L223
	movq	-64(%rbp), %rax
	subq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L224
.L223:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tlsa_free
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$381, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$201, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L201
.L224:
	cmpb	$2, -92(%rbp)
	jne	.L225
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L211
.L225:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	jmp	.L211
.L237:
	nop
.L211:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	movl	%eax, -44(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L227
.L235:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_danetls_record_value
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, -92(%rbp)
	jb	.L238
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-92(%rbp), %al
	jb	.L239
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %eax
	cmpb	%al, -96(%rbp)
	jb	.L240
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %eax
	cmpb	-96(%rbp), %al
	jb	.L241
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rcx
	movzbl	-100(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%dl, %al
	jnb	.L242
	jmp	.L229
.L238:
	nop
	jmp	.L229
.L240:
	nop
.L229:
	addl	$1, -28(%rbp)
.L227:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L235
	jmp	.L231
.L239:
	nop
	jmp	.L231
.L241:
	nop
	jmp	.L231
.L242:
	nop
.L231:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_danetls_record_insert
	testl	%eax, %eax
	jne	.L236
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tlsa_free
	call	ERR_new@PLT
	leaq	__func__.52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$431, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L201
.L236:
	movq	-88(%rbp), %rax
	movl	40(%rax), %edx
	movzbl	-92(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	orl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 40(%rax)
	movl	$1, %eax
.L201:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE880:
	.size	dane_tlsa_add, .-dane_tlsa_add
	.type	ssl_check_allowed_versions, @function
ssl_check_allowed_versions:
.LFB881:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$256, -20(%rbp)
	je	.L244
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	cmpl	$254, %eax
	jne	.L245
.L244:
	movl	$1, -4(%rbp)
.L245:
	cmpl	$256, -24(%rbp)
	je	.L246
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	cmpl	$254, %eax
	jne	.L247
.L246:
	movl	$1, -8(%rbp)
.L247:
	cmpl	$0, -4(%rbp)
	je	.L248
	cmpl	$0, -8(%rbp)
	jne	.L248
	cmpl	$0, -24(%rbp)
	jne	.L249
.L248:
	cmpl	$0, -8(%rbp)
	je	.L250
	cmpl	$0, -4(%rbp)
	jne	.L250
	cmpl	$0, -20(%rbp)
	je	.L250
.L249:
	movl	$0, %eax
	jmp	.L251
.L250:
	cmpl	$0, -4(%rbp)
	jne	.L252
	cmpl	$0, -8(%rbp)
	je	.L253
.L252:
	cmpl	$0, -20(%rbp)
	jne	.L254
	movl	$65279, -20(%rbp)
.L254:
	cmpl	$0, -24(%rbp)
	jne	.L260
	movl	$65277, -24(%rbp)
	jmp	.L260
.L253:
	cmpl	$0, -20(%rbp)
	jne	.L257
	movl	$768, -20(%rbp)
.L257:
	cmpl	$0, -24(%rbp)
	jne	.L258
	movl	$772, -24(%rbp)
.L258:
	cmpl	$768, -20(%rbp)
	jne	.L259
	movl	$769, -20(%rbp)
.L259:
	cmpl	$768, -20(%rbp)
	jg	.L256
	cmpl	$767, -24(%rbp)
	jle	.L256
	movl	$0, %eax
	jmp	.L251
.L260:
	nop
.L256:
	movl	$1, %eax
.L251:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE881:
	.size	ssl_check_allowed_versions, .-ssl_check_allowed_versions
	.globl	SSL_clear
	.type	SSL_clear, @function
SSL_clear:
.LFB882:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L262
	call	ERR_new@PLT
	leaq	__func__.51(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$564, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L263
.L262:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L263:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE882:
	.size	SSL_clear, .-SSL_clear
	.globl	ossl_ssl_connection_reset
	.type	ossl_ssl_connection_reset, @function
ossl_ssl_connection_reset:
.LFB883:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L265
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L266
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L267
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L268
.L267:
	movq	$0, -8(%rbp)
	jmp	.L268
.L266:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L268
.L265:
	movq	$0, -8(%rbp)
.L268:
	cmpq	$0, -8(%rbp)
	jne	.L269
	movl	$0, %eax
	jmp	.L270
.L269:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_clear_bad_session@PLT
	testl	%eax, %eax
	je	.L271
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2184(%rax)
.L271:
	movq	-8(%rbp), %rax
	movq	2192(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2192(%rax)
	movq	-8(%rbp), %rax
	movq	2200(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$584, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2200(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 2208(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 2136(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5304(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 2288(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 1168(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 132(%rax)
	movq	-8(%rbp), %rax
	movl	2824(%rax), %eax
	testl	%eax, %eax
	je	.L272
	call	ERR_new@PLT
	leaq	__func__.50(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$595, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L270
.L272:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_clear@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 72(%rax)
	movq	-8(%rbp), %rax
	movl	72(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 2396(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 104(%rax)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 248(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 2392(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 2828(%rax)
	movq	-8(%rbp), %rax
	addq	$2724, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	$0, 2740(%rax)
	movq	-8(%rbp), %rax
	movq	2864(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2864(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 1228(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 1232(%rax)
	movq	-8(%rbp), %rax
	movq	1216(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 1216(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 1208(%rax)
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_move_peername@PLT
	movq	-8(%rbp), %rax
	movq	5352(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$628, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 5352(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 5360(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L273
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L274
	movl	$0, %eax
	jmp	.L270
.L273:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L274
	movl	$0, %eax
	jmp	.L270
.L274:
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_reset@PLT
	testl	%eax, %eax
	jne	.L275
	movl	$0, %eax
	jmp	.L270
.L275:
	movl	$1, %eax
.L270:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE883:
	.size	ossl_ssl_connection_reset, .-ossl_ssl_connection_reset
	.globl	SSL_CTX_set_ssl_version
	.type	SSL_CTX_set_ssl_version, @function
SSL_CTX_set_ssl_version:
.LFB884:
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_method@PLT
	cmpq	%rax, %rbx
	je	.L277
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, %rbx
	jne	.L278
.L277:
	call	ERR_new@PLT
	leaq	__func__.49(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$659, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$266, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L279
.L278:
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	call	OSSL_default_ciphersuites@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	jne	.L280
	call	ERR_new@PLT
	leaq	__func__.49(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$666, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$230, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L279
.L280:
	movq	-40(%rbp), %rax
	movq	344(%rax), %rbx
	call	OSSL_default_cipher_list@PLT
	movq	%rax, %rdi
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rbx, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_create_cipher_list@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L281
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L282
.L281:
	call	ERR_new@PLT
	leaq	__func__.49(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$675, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$230, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L279
.L282:
	movl	$1, %eax
.L279:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE884:
	.size	SSL_CTX_set_ssl_version, .-SSL_CTX_set_ssl_version
	.globl	SSL_new
	.type	SSL_new, @function
SSL_new:
.LFB885:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L284
	call	ERR_new@PLT
	leaq	__func__.48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$685, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$195, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L285
.L284:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L286
	call	ERR_new@PLT
	leaq	__func__.48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$689, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$228, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L285
.L286:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L285:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE885:
	.size	SSL_new, .-SSL_new
	.globl	ossl_ssl_init
	.type	ossl_ssl_init, @function
ossl_ssl_init:
.LFB886:
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
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L288
	movl	$0, %eax
	jmp	.L289
.L288:
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L290
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movl	$0, %eax
	jmp	.L289
.L290:
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	jne	.L291
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$0, %eax
	jmp	.L289
.L291:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_up_ref@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L289:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE886:
	.size	ossl_ssl_init, .-ossl_ssl_init
	.globl	ossl_ssl_connection_new_int
	.type	ossl_ssl_connection_new_int, @function
ossl_ssl_connection_new_int:
.LFB887:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$729, %edx
	movq	%rax, %rsi
	movl	$5400, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L293
	movl	$0, %eax
	jmp	.L294
.L293:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L295
	movq	-24(%rbp), %rax
	jmp	.L296
.L295:
	movq	-48(%rbp), %rax
.L296:
	movq	-32(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_ssl_init@PLT
	testl	%eax, %eax
	jne	.L297
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$737, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L298
.L297:
	movq	-32(%rbp), %rax
	leaq	3008(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	RECORD_LAYER_init@PLT
	movq	-40(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2360(%rax)
	movq	-40(%rbp), %rax
	movq	952(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 1240(%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L299
	movq	-40(%rbp), %rax
	movl	324(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 2372(%rax)
	movq	-40(%rbp), %rax
	movl	328(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 2376(%rax)
.L299:
	movq	-40(%rbp), %rax
	movl	320(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 2368(%rax)
	movq	-40(%rbp), %rax
	movq	336(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2384(%rax)
	movq	-40(%rbp), %rax
	movl	992(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 5280(%rax)
	movq	-40(%rbp), %rax
	movl	996(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 5284(%rax)
	movq	-40(%rbp), %rax
	movq	1048(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 5296(%rax)
	movq	-40(%rbp), %rax
	movl	1072(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 2836(%rax)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_dup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 1272(%rdx)
	movq	-32(%rbp), %rax
	movq	1272(%rax), %rax
	testq	%rax, %rax
	je	.L326
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	ssl_cert_dup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 2056(%rdx)
	movq	-32(%rbp), %rax
	movq	2056(%rax), %rax
	testq	%rax, %rax
	je	.L327
	movq	-40(%rbp), %rax
	movl	360(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 3080(%rax)
	movq	-40(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 1152(%rax)
	movq	-40(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 1160(%rax)
	movq	-40(%rbp), %rax
	movl	384(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 2264(%rax)
	movq	-40(%rbp), %rax
	movq	968(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 3000(%rax)
	movq	-40(%rbp), %rax
	movq	1000(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 3152(%rax)
	movq	-40(%rbp), %rax
	movq	1008(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 3160(%rax)
	movq	-40(%rbp), %rax
	movq	1016(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 3168(%rax)
	movq	-40(%rbp), %rax
	movq	392(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2144(%rax)
	movq	-32(%rbp), %rax
	movq	2144(%rax), %rax
	cmpq	$32, %rax
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L328
	movq	-40(%rbp), %rax
	leaq	400(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	$2152, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	432(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2272(%rax)
	movq	-40(%rbp), %rax
	movq	440(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2216(%rax)
	call	X509_VERIFY_PARAM_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 1176(%rdx)
	movq	-32(%rbp), %rax
	movq	1176(%rax), %rax
	testq	%rax, %rax
	je	.L329
	movq	-40(%rbp), %rax
	movq	448(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_inherit@PLT
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_method@PLT
	cmpq	%rax, %rbx
	je	.L307
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, %rbx
	je	.L307
	movq	-40(%rbp), %rax
	movl	456(%rax), %eax
	jmp	.L308
.L307:
	movl	$0, %eax
.L308:
	movq	-32(%rbp), %rdx
	movl	%eax, 128(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_method@PLT
	cmpq	%rax, %rbx
	je	.L309
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, %rbx
	je	.L309
	movq	-40(%rbp), %rax
	movzbl	620(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 2716(%rax)
.L309:
	movq	-40(%rbp), %rax
	movq	496(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2408(%rax)
	movq	-40(%rbp), %rax
	movq	488(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2400(%rax)
	movq	-40(%rbp), %rax
	movq	504(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2416(%rax)
	movq	-40(%rbp), %rax
	movq	512(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 3072(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 2456(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 2464(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 2536(%rax)
	movq	-40(%rbp), %rax
	movl	616(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 2480(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 2500(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 2504(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 2512(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 2520(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 2528(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_up_ref@PLT
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 2800(%rax)
	movq	-40(%rbp), %rax
	movq	632(%rax), %rax
	testq	%rax, %rax
	je	.L310
	movq	-40(%rbp), %rax
	movq	624(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	632(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	$821, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 2552(%rdx)
	movq	-32(%rbp), %rax
	movq	2552(%rax), %rax
	testq	%rax, %rax
	jne	.L311
	movq	-32(%rbp), %rax
	movq	$0, 2544(%rax)
	jmp	.L304
.L311:
	movq	-40(%rbp), %rax
	movq	624(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2544(%rax)
.L310:
	movq	-40(%rbp), %rax
	movq	648(%rax), %rax
	testq	%rax, %rax
	je	.L312
	movq	-40(%rbp), %rax
	movq	640(%rax), %rax
	leaq	(%rax,%rax), %rsi
	movq	-40(%rbp), %rax
	movq	648(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	$832, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 2584(%rdx)
	movq	-32(%rbp), %rax
	movq	2584(%rax), %rax
	testq	%rax, %rax
	jne	.L313
	movq	-32(%rbp), %rax
	movq	$0, 2576(%rax)
	jmp	.L304
.L313:
	movq	-40(%rbp), %rax
	movq	640(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2576(%rax)
.L312:
	movq	-32(%rbp), %rax
	movq	$0, 2664(%rax)
	movq	-40(%rbp), %rax
	movq	688(%rax), %rax
	testq	%rax, %rax
	je	.L314
	movq	-40(%rbp), %rax
	movq	696(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$847, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2648(%rax)
	movq	-32(%rbp), %rax
	movq	2648(%rax), %rax
	testq	%rax, %rax
	jne	.L315
	movq	-32(%rbp), %rax
	movq	$0, 2656(%rax)
	jmp	.L304
.L315:
	movq	-40(%rbp), %rax
	movq	696(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	688(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	2648(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	696(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2656(%rax)
.L314:
	movq	-32(%rbp), %rax
	movq	$0, 2328(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 2336(%rax)
	movq	-40(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 5240(%rax)
	movq	-40(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 5248(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, 2828(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_method@PLT
	cmpq	%rax, %rbx
	je	.L316
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, %rbx
	je	.L316
	movq	-40(%rbp), %rax
	movq	1056(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 5320(%rax)
	movq	-40(%rbp), %rax
	movq	1064(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 5328(%rax)
.L316:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L330
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	ssl_undefined_function@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	setne	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 120(%rax)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L331
	movq	-40(%rbp), %rax
	movq	768(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2296(%rax)
	movq	-40(%rbp), %rax
	movq	776(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2304(%rax)
	movq	-40(%rbp), %rax
	movq	784(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2312(%rax)
	movq	-40(%rbp), %rax
	movq	792(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 2320(%rax)
	movq	-40(%rbp), %rax
	movq	1080(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 5336(%rax)
	movq	-40(%rbp), %rax
	movq	1088(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 5344(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 5256(%rax)
	movq	-40(%rbp), %rax
	movq	1664(%rax), %rax
	testq	%rax, %rax
	je	.L319
	movq	-40(%rbp), %rax
	movq	1672(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	1664(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	$893, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 5368(%rdx)
	movq	-32(%rbp), %rax
	movq	5368(%rax), %rax
	testq	%rax, %rax
	je	.L332
	movq	-40(%rbp), %rax
	movq	1672(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 5376(%rax)
.L319:
	movq	-40(%rbp), %rax
	movq	1680(%rax), %rax
	testq	%rax, %rax
	je	.L321
	movq	-40(%rbp), %rax
	movq	1688(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	1680(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movl	$900, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 5384(%rdx)
	movq	-32(%rbp), %rax
	movq	5384(%rax), %rax
	testq	%rax, %rax
	je	.L333
	movq	-40(%rbp), %rax
	movq	1688(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 5392(%rax)
.L321:
	movq	-40(%rbp), %rax
	movq	480(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	472(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_ct_validation_callback@PLT
	testl	%eax, %eax
	je	.L334
	movq	-40(%rbp), %rax
	movq	1632(%rax), %rax
	leaq	9(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 280(%rax)
	movq	-24(%rbp), %rax
	jmp	.L294
.L326:
	nop
.L301:
	call	ERR_new@PLT
	leaq	__func__.47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$916, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L304
.L329:
	nop
.L306:
	call	ERR_new@PLT
	leaq	__func__.47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$919, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L304
.L327:
	nop
	jmp	.L298
.L330:
	nop
	jmp	.L298
.L331:
	nop
	jmp	.L298
.L332:
	nop
	jmp	.L298
.L333:
	nop
	jmp	.L298
.L334:
	nop
.L298:
	call	ERR_new@PLT
	leaq	__func__.47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$922, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524308, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L304
.L328:
	nop
.L304:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movl	$0, %eax
.L294:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE887:
	.size	ossl_ssl_connection_new_int, .-ossl_ssl_connection_new_int
	.globl	ossl_ssl_connection_new
	.type	ossl_ssl_connection_new, @function
ossl_ssl_connection_new:
.LFB888:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_ssl_connection_new_int@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE888:
	.size	ossl_ssl_connection_new, .-ossl_ssl_connection_new
	.globl	SSL_is_dtls
	.type	SSL_is_dtls, @function
SSL_is_dtls:
.LFB889:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L338
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L339
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L340
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L341
.L340:
	movq	$0, -8(%rbp)
	jmp	.L341
.L339:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L341
.L338:
	movq	$0, -8(%rbp)
.L341:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L342
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L343
.L342:
	movl	$0, %eax
	jmp	.L344
.L343:
	cmpq	$0, -8(%rbp)
	jne	.L345
	movl	$0, %eax
	jmp	.L344
.L345:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	shrl	$3, %eax
	andl	$1, %eax
.L344:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE889:
	.size	SSL_is_dtls, .-SSL_is_dtls
	.globl	SSL_is_tls
	.type	SSL_is_tls, @function
SSL_is_tls:
.LFB890:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L347
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L348
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L349
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L350
.L349:
	movq	$0, -8(%rbp)
	jmp	.L350
.L348:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L350
.L347:
	movq	$0, -8(%rbp)
.L350:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L351
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L352
.L351:
	movl	$0, %eax
	jmp	.L353
.L352:
	cmpq	$0, -8(%rbp)
	jne	.L354
	movl	$0, %eax
	jmp	.L353
.L354:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	shrl	$3, %eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
.L353:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE890:
	.size	SSL_is_tls, .-SSL_is_tls
	.globl	SSL_is_quic
	.type	SSL_is_quic, @function
SSL_is_quic:
.LFB891:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L356
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L357
.L356:
	movl	$1, %eax
	jmp	.L358
.L357:
	movl	$0, %eax
.L358:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE891:
	.size	SSL_is_quic, .-SSL_is_quic
	.globl	SSL_up_ref
	.type	SSL_up_ref, @function
SSL_up_ref:
.LFB892:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L360
	movl	$0, %eax
	jmp	.L362
.L360:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L362:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE892:
	.size	SSL_up_ref, .-SSL_up_ref
	.globl	SSL_CTX_set_session_id_context
	.type	SSL_CTX_set_session_id_context, @function
SSL_CTX_set_session_id_context:
.LFB893:
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
	cmpl	$32, -20(%rbp)
	jbe	.L364
	call	ERR_new@PLT
	leaq	__func__.46(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$988, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$273, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L365
.L364:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rdx, 392(%rax)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	400(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L365:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE893:
	.size	SSL_CTX_set_session_id_context, .-SSL_CTX_set_session_id_context
	.globl	SSL_set_session_id_context
	.type	SSL_set_session_id_context, @function
SSL_set_session_id_context:
.LFB894:
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
	cmpq	$0, -24(%rbp)
	je	.L367
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L368
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L369
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L370
.L369:
	movq	$0, -8(%rbp)
	jmp	.L370
.L368:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L370
.L367:
	movq	$0, -8(%rbp)
.L370:
	cmpq	$0, -8(%rbp)
	jne	.L371
	movl	$0, %eax
	jmp	.L372
.L371:
	cmpl	$32, -36(%rbp)
	jbe	.L373
	call	ERR_new@PLT
	leaq	__func__.45(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1006, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$273, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L372
.L373:
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rdx, 2144(%rax)
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	2152(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L372:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE894:
	.size	SSL_set_session_id_context, .-SSL_set_session_id_context
	.globl	SSL_CTX_set_generate_session_id
	.type	SSL_CTX_set_generate_session_id, @function
SSL_CTX_set_generate_session_id:
.LFB895:
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
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L375
	movl	$0, %eax
	jmp	.L376
.L375:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 440(%rax)
	movq	-8(%rbp), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
.L376:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE895:
	.size	SSL_CTX_set_generate_session_id, .-SSL_CTX_set_generate_session_id
	.globl	SSL_set_generate_session_id
	.type	SSL_set_generate_session_id, @function
SSL_set_generate_session_id:
.LFB896:
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
	je	.L378
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L379
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L380
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L381
.L380:
	movq	$0, -8(%rbp)
	jmp	.L381
.L379:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L381
.L378:
	movq	$0, -8(%rbp)
.L381:
	cmpq	$0, -8(%rbp)
	je	.L382
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L383
.L382:
	movl	$0, %eax
	jmp	.L384
.L383:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2216(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
.L384:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE896:
	.size	SSL_set_generate_session_id, .-SSL_set_generate_session_id
	.globl	SSL_has_matching_session_id
	.type	SSL_has_matching_session_id, @function
SSL_has_matching_session_id:
.LFB897:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$976, %rsp
	movq	%rdi, -952(%rbp)
	movq	%rsi, -960(%rbp)
	movl	%edx, -964(%rbp)
	cmpq	$0, -952(%rbp)
	je	.L386
	movq	-952(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L387
	movq	-952(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L388
	movq	-952(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L389
.L388:
	movq	$0, -8(%rbp)
	jmp	.L389
.L387:
	movq	-952(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L389
.L386:
	movq	$0, -8(%rbp)
.L389:
	cmpq	$0, -8(%rbp)
	je	.L390
	cmpl	$32, -964(%rbp)
	jbe	.L391
.L390:
	movl	$0, %eax
	jmp	.L394
.L391:
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -944(%rbp)
	movl	-964(%rbp), %eax
	movq	%rax, -352(%rbp)
	movl	-964(%rbp), %edx
	movq	-960(%rbp), %rax
	leaq	-944(%rbp), %rcx
	addq	$600, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	2800(%rax), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L393
	movl	$0, %eax
	jmp	.L394
.L393:
	movq	-8(%rbp), %rax
	movq	2800(%rax), %rax
	movq	48(%rax), %rax
	leaq	-944(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SSL_SESSION_retrieve
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	2800(%rax), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
.L394:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE897:
	.size	SSL_has_matching_session_id, .-SSL_has_matching_session_id
	.globl	SSL_CTX_set_purpose
	.type	SSL_CTX_set_purpose, @function
SSL_CTX_set_purpose:
.LFB898:
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
	movq	448(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_purpose@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE898:
	.size	SSL_CTX_set_purpose, .-SSL_CTX_set_purpose
	.globl	SSL_set_purpose
	.type	SSL_set_purpose, @function
SSL_set_purpose:
.LFB899:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L398
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L399
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L400
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L401
.L400:
	movq	$0, -8(%rbp)
	jmp	.L401
.L399:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L401
.L398:
	movq	$0, -8(%rbp)
.L401:
	cmpq	$0, -8(%rbp)
	jne	.L402
	movl	$0, %eax
	jmp	.L403
.L402:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_purpose@PLT
.L403:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE899:
	.size	SSL_set_purpose, .-SSL_set_purpose
	.globl	SSL_CTX_set_trust
	.type	SSL_CTX_set_trust, @function
SSL_CTX_set_trust:
.LFB900:
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
	movq	448(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_trust@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE900:
	.size	SSL_CTX_set_trust, .-SSL_CTX_set_trust
	.globl	SSL_set_trust
	.type	SSL_set_trust, @function
SSL_set_trust:
.LFB901:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L407
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L408
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L409
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L410
.L409:
	movq	$0, -8(%rbp)
	jmp	.L410
.L408:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L410
.L407:
	movq	$0, -8(%rbp)
.L410:
	cmpq	$0, -8(%rbp)
	jne	.L411
	movl	$0, %eax
	jmp	.L412
.L411:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_trust@PLT
.L412:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE901:
	.size	SSL_set_trust, .-SSL_set_trust
	.globl	SSL_set1_host
	.type	SSL_set1_host, @function
SSL_set1_host:
.LFB902:
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
	je	.L414
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L415
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L416
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L417
.L416:
	movq	$0, -8(%rbp)
	jmp	.L417
.L415:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L417
.L414:
	movq	$0, -8(%rbp)
.L417:
	cmpq	$0, -8(%rbp)
	jne	.L418
	movl	$0, %eax
	jmp	.L419
.L418:
	cmpq	$0, -32(%rbp)
	je	.L420
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1_ip_asc@PLT
	cmpl	$1, %eax
	jne	.L420
	movl	$1, %eax
	jmp	.L419
.L420:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1_host@PLT
.L419:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE902:
	.size	SSL_set1_host, .-SSL_set1_host
	.globl	SSL_add1_host
	.type	SSL_add1_host, @function
SSL_add1_host:
.LFB903:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L422
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L423
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L424
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L425
.L424:
	movq	$0, -8(%rbp)
	jmp	.L425
.L423:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L425
.L422:
	movq	$0, -8(%rbp)
.L425:
	cmpq	$0, -8(%rbp)
	jne	.L426
	movl	$0, %eax
	jmp	.L427
.L426:
	cmpq	$0, -48(%rbp)
	je	.L428
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	a2i_IPADDRESS@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L428
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get1_ip_asc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L429
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1130, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L427
.L429:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1_ip_asc@PLT
	jmp	.L427
.L428:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_add1_host@PLT
.L427:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE903:
	.size	SSL_add1_host, .-SSL_add1_host
	.globl	SSL_set_hostflags
	.type	SSL_set_hostflags, @function
SSL_set_hostflags:
.LFB904:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L431
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L432
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L433
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L434
.L433:
	movq	$0, -8(%rbp)
	jmp	.L434
.L432:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L434
.L431:
	movq	$0, -8(%rbp)
.L434:
	cmpq	$0, -8(%rbp)
	je	.L437
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_hostflags@PLT
	jmp	.L430
.L437:
	nop
.L430:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE904:
	.size	SSL_set_hostflags, .-SSL_set_hostflags
	.globl	SSL_get0_peername
	.type	SSL_get0_peername, @function
SSL_get0_peername:
.LFB905:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L439
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L440
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L441
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L442
.L441:
	movq	$0, -8(%rbp)
	jmp	.L442
.L440:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L442
.L439:
	movq	$0, -8(%rbp)
.L442:
	cmpq	$0, -8(%rbp)
	jne	.L443
	movl	$0, %eax
	jmp	.L444
.L443:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get0_peername@PLT
.L444:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE905:
	.size	SSL_get0_peername, .-SSL_get0_peername
	.globl	SSL_CTX_dane_enable
	.type	SSL_CTX_dane_enable, @function
SSL_CTX_dane_enable:
.LFB906:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$928, %rax
	movq	%rax, %rdi
	call	dane_ctx_enable
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE906:
	.size	SSL_CTX_dane_enable, .-SSL_CTX_dane_enable
	.globl	SSL_CTX_dane_set_flags
	.type	SSL_CTX_dane_set_flags, @function
SSL_CTX_dane_set_flags:
.LFB907:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	952(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	952(%rax), %rax
	orq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 952(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE907:
	.size	SSL_CTX_dane_set_flags, .-SSL_CTX_dane_set_flags
	.globl	SSL_CTX_dane_clear_flags
	.type	SSL_CTX_dane_clear_flags, @function
SSL_CTX_dane_clear_flags:
.LFB908:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	952(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	952(%rax), %rdx
	movq	-32(%rbp), %rax
	notq	%rax
	andq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 952(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE908:
	.size	SSL_CTX_dane_clear_flags, .-SSL_CTX_dane_clear_flags
	.globl	SSL_dane_enable
	.type	SSL_dane_enable, @function
SSL_dane_enable:
.LFB909:
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
	je	.L452
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L453
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L454
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L455
.L454:
	movq	$0, -8(%rbp)
	jmp	.L455
.L453:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L455
.L452:
	movq	$0, -8(%rbp)
.L455:
	cmpq	$0, -8(%rbp)
	jne	.L456
	movl	$0, %eax
	jmp	.L457
.L456:
	movq	-8(%rbp), %rax
	addq	$1184, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	944(%rax), %eax
	testb	%al, %al
	jne	.L458
	call	ERR_new@PLT
	leaq	__func__.44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1193, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L457
.L458:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L459
	call	ERR_new@PLT
	leaq	__func__.44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1197, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L457
.L459:
	movq	-8(%rbp), %rax
	movq	2472(%rax), %rax
	testq	%rax, %rax
	jne	.L460
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$55, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	jne	.L460
	call	ERR_new@PLT
	leaq	__func__.44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1208, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$204, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L457
.L460:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1_host@PLT
	testl	%eax, %eax
	jne	.L461
	call	ERR_new@PLT
	leaq	__func__.44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$204, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L457
.L461:
	movq	-16(%rbp), %rax
	movl	$-1, 44(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 48(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	928(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	call	sk_danetls_record_new_null
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L462
	call	ERR_new@PLT
	leaq	__func__.44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L457
.L462:
	movl	$1, %eax
.L457:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE909:
	.size	SSL_dane_enable, .-SSL_dane_enable
	.globl	SSL_dane_set_flags
	.type	SSL_dane_set_flags, @function
SSL_dane_set_flags:
.LFB910:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L464
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L465
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L466
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L467
.L466:
	movq	$0, -8(%rbp)
	jmp	.L467
.L465:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L467
.L464:
	movq	$0, -8(%rbp)
.L467:
	cmpq	$0, -8(%rbp)
	jne	.L468
	movl	$0, %eax
	jmp	.L469
.L468:
	movq	-8(%rbp), %rax
	movq	1240(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	1240(%rax), %rax
	orq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 1240(%rax)
	movq	-16(%rbp), %rax
.L469:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE910:
	.size	SSL_dane_set_flags, .-SSL_dane_set_flags
	.globl	SSL_dane_clear_flags
	.type	SSL_dane_clear_flags, @function
SSL_dane_clear_flags:
.LFB911:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L471
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L472
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L473
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L474
.L473:
	movq	$0, -8(%rbp)
	jmp	.L474
.L472:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L474
.L471:
	movq	$0, -8(%rbp)
.L474:
	cmpq	$0, -8(%rbp)
	jne	.L475
	movl	$0, %eax
	jmp	.L476
.L475:
	movq	-8(%rbp), %rax
	movq	1240(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	1240(%rax), %rdx
	movq	-32(%rbp), %rax
	notq	%rax
	andq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 1240(%rax)
	movq	-16(%rbp), %rax
.L476:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE911:
	.size	SSL_dane_clear_flags, .-SSL_dane_clear_flags
	.globl	SSL_get0_dane_authority
	.type	SSL_get0_dane_authority, @function
SSL_get0_dane_authority:
.LFB912:
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
	cmpq	$0, -24(%rbp)
	je	.L478
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L479
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L480
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L481
.L480:
	movq	$0, -8(%rbp)
	jmp	.L481
.L479:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L481
.L478:
	movq	$0, -8(%rbp)
.L481:
	cmpq	$0, -8(%rbp)
	jne	.L482
	movl	$-1, %eax
	jmp	.L483
.L482:
	movq	-8(%rbp), %rax
	addq	$1184, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L484
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jle	.L484
	movq	-8(%rbp), %rax
	movq	2336(%rax), %rax
	testq	%rax, %rax
	je	.L485
.L484:
	movl	$-1, %eax
	jmp	.L483
.L485:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L486
	cmpq	$0, -32(%rbp)
	je	.L487
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L487:
	cmpq	$0, -40(%rbp)
	je	.L486
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L488
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	jmp	.L489
.L488:
	movl	$0, %eax
.L489:
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
.L486:
	movq	-16(%rbp), %rax
	movl	44(%rax), %eax
.L483:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE912:
	.size	SSL_get0_dane_authority, .-SSL_get0_dane_authority
	.globl	SSL_get0_dane_tlsa
	.type	SSL_get0_dane_tlsa, @function
SSL_get0_dane_tlsa:
.LFB913:
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
	movq	%r9, -64(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L491
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L492
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L493
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L494
.L493:
	movq	$0, -8(%rbp)
	jmp	.L494
.L492:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L494
.L491:
	movq	$0, -8(%rbp)
.L494:
	cmpq	$0, -8(%rbp)
	jne	.L495
	movl	$-1, %eax
	jmp	.L496
.L495:
	movq	-8(%rbp), %rax
	addq	$1184, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L497
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jle	.L497
	movq	-8(%rbp), %rax
	movq	2336(%rax), %rax
	testq	%rax, %rax
	je	.L498
.L497:
	movl	$-1, %eax
	jmp	.L496
.L498:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L499
	cmpq	$0, -32(%rbp)
	je	.L500
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
.L500:
	cmpq	$0, -40(%rbp)
	je	.L501
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	1(%rax), %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
.L501:
	cmpq	$0, -48(%rbp)
	je	.L502
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	2(%rax), %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
.L502:
	cmpq	$0, -56(%rbp)
	je	.L503
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L503:
	cmpq	$0, -64(%rbp)
	je	.L499
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L499:
	movq	-16(%rbp), %rax
	movl	44(%rax), %eax
.L496:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE913:
	.size	SSL_get0_dane_tlsa, .-SSL_get0_dane_tlsa
	.globl	SSL_get0_dane
	.type	SSL_get0_dane, @function
SSL_get0_dane:
.LFB914:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L505
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L506
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L507
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L508
.L507:
	movq	$0, -8(%rbp)
	jmp	.L508
.L506:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L508
.L505:
	movq	$0, -8(%rbp)
.L508:
	cmpq	$0, -8(%rbp)
	jne	.L509
	movl	$0, %eax
	jmp	.L510
.L509:
	movq	-8(%rbp), %rax
	addq	$1184, %rax
.L510:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE914:
	.size	SSL_get0_dane, .-SSL_get0_dane
	.globl	SSL_dane_tlsa_add
	.type	SSL_dane_tlsa_add, @function
SSL_dane_tlsa_add:
.LFB915:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%ecx, %eax
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	%esi, %ecx
	movb	%cl, -28(%rbp)
	movb	%dl, -32(%rbp)
	movb	%al, -36(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L512
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L513
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L514
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L515
.L514:
	movq	$0, -8(%rbp)
	jmp	.L515
.L513:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L515
.L512:
	movq	$0, -8(%rbp)
.L515:
	cmpq	$0, -8(%rbp)
	jne	.L516
	movl	$0, %eax
	jmp	.L517
.L516:
	movzbl	-36(%rbp), %ecx
	movzbl	-32(%rbp), %edx
	movzbl	-28(%rbp), %eax
	movq	-8(%rbp), %rsi
	leaq	1184(%rsi), %rdi
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rsi
	movq	%r8, %r9
	movq	%rsi, %r8
	movl	%eax, %esi
	call	dane_tlsa_add
.L517:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE915:
	.size	SSL_dane_tlsa_add, .-SSL_dane_tlsa_add
	.globl	SSL_CTX_dane_mtype_set
	.type	SSL_CTX_dane_mtype_set, @function
SSL_CTX_dane_mtype_set:
.LFB916:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%ecx, %eax
	movb	%dl, -20(%rbp)
	movb	%al, -24(%rbp)
	movzbl	-24(%rbp), %ecx
	movzbl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	928(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	dane_mtype_set
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE916:
	.size	SSL_CTX_dane_mtype_set, .-SSL_CTX_dane_mtype_set
	.globl	SSL_CTX_set1_param
	.type	SSL_CTX_set1_param, @function
SSL_CTX_set1_param:
.LFB917:
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
	movq	448(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE917:
	.size	SSL_CTX_set1_param, .-SSL_CTX_set1_param
	.globl	SSL_set1_param
	.type	SSL_set1_param, @function
SSL_set1_param:
.LFB918:
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
	je	.L523
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L524
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L525
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L526
.L525:
	movq	$0, -8(%rbp)
	jmp	.L526
.L524:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L526
.L523:
	movq	$0, -8(%rbp)
.L526:
	cmpq	$0, -8(%rbp)
	jne	.L527
	movl	$0, %eax
	jmp	.L528
.L527:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1@PLT
.L528:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE918:
	.size	SSL_set1_param, .-SSL_set1_param
	.globl	SSL_CTX_get0_param
	.type	SSL_CTX_get0_param, @function
SSL_CTX_get0_param:
.LFB919:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	448(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE919:
	.size	SSL_CTX_get0_param, .-SSL_CTX_get0_param
	.globl	SSL_get0_param
	.type	SSL_get0_param, @function
SSL_get0_param:
.LFB920:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L532
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L533
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L534
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L535
.L534:
	movq	$0, -8(%rbp)
	jmp	.L535
.L533:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L535
.L532:
	movq	$0, -8(%rbp)
.L535:
	cmpq	$0, -8(%rbp)
	jne	.L536
	movl	$0, %eax
	jmp	.L537
.L536:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
.L537:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE920:
	.size	SSL_get0_param, .-SSL_get0_param
	.globl	SSL_certs_clear
	.type	SSL_certs_clear, @function
SSL_certs_clear:
.LFB921:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L539
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L540
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L541
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L542
.L541:
	movq	$0, -8(%rbp)
	jmp	.L542
.L540:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L542
.L539:
	movq	$0, -8(%rbp)
.L542:
	cmpq	$0, -8(%rbp)
	je	.L545
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, %rdi
	call	ssl_cert_clear_certs@PLT
	jmp	.L538
.L545:
	nop
.L538:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE921:
	.size	SSL_certs_clear, .-SSL_certs_clear
	.globl	SSL_free
	.type	SSL_free, @function
SSL_free:
.LFB922:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L552
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L553
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L550
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L550:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1396, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L546
.L552:
	nop
	jmp	.L546
.L553:
	nop
.L546:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE922:
	.size	SSL_free, .-SSL_free
	.globl	ossl_ssl_connection_free
	.type	ossl_ssl_connection_free, @function
ossl_ssl_connection_free:
.LFB923:
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
	cmpq	$0, -40(%rbp)
	je	.L555
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L556
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L557
.L556:
	movq	$0, -24(%rbp)
	jmp	.L557
.L555:
	movq	$0, -24(%rbp)
.L557:
	cmpq	$0, -24(%rbp)
	je	.L563
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
	movq	-24(%rbp), %rax
	addq	$1184, %rax
	movq	%rax, %rdi
	call	dane_final
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_free_wbio_buffer@PLT
	movq	-24(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_clear@PLT
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	-24(%rbp), %rax
	movq	1256(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	1264(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	1272(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	1248(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L560
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_clear_bad_session@PLT
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
.L560:
	movq	-24(%rbp), %rax
	movq	2192(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-24(%rbp), %rax
	movq	2200(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1430, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, %rdi
	call	ssl_cert_free@PLT
	movq	-24(%rbp), %rax
	movq	5352(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1433, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2472(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1436, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	2552(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1438, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2568(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1439, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2584(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1440, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2600(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1441, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	X509_EXTENSION_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	2512(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	OCSP_RESPID_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OCSP_RESPID_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	2504(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OCSP_RESPID_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	2784(%rax), %rax
	movq	%rax, %rdi
	call	SCT_LIST_free@PLT
	movq	-24(%rbp), %rax
	movq	2488(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1448, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2520(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1450, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2648(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1451, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2696(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1452, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	testq	%rax, %rax
	je	.L561
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	movq	648(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1454, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L561:
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1455, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2840(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1456, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2864(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	2344(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	2352(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	5368(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1462, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	5384(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1463, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2328(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L562
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L562:
	movq	-24(%rbp), %rax
	movq	5264(%rax), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	2664(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1473, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	2808(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-24(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-24(%rbp), %rax
	movq	920(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1490, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L554
.L563:
	nop
.L554:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE923:
	.size	ossl_ssl_connection_free, .-ossl_ssl_connection_free
	.globl	SSL_set0_rbio
	.type	SSL_set0_rbio, @function
SSL_set0_rbio:
.LFB924:
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
	je	.L565
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L566
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L567
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L568
.L567:
	movq	$0, -8(%rbp)
	jmp	.L568
.L566:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L568
.L565:
	movq	$0, -8(%rbp)
.L568:
	cmpq	$0, -24(%rbp)
	je	.L569
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L570
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L569
.L570:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_set0_net_rbio@PLT
	jmp	.L564
.L569:
	cmpq	$0, -8(%rbp)
	je	.L573
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	movq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L564
.L573:
	nop
.L564:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE924:
	.size	SSL_set0_rbio, .-SSL_set0_rbio
	.globl	SSL_set0_wbio
	.type	SSL_set0_wbio, @function
SSL_set0_wbio:
.LFB925:
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
	je	.L575
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L576
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L577
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L578
.L577:
	movq	$0, -8(%rbp)
	jmp	.L578
.L576:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L578
.L575:
	movq	$0, -8(%rbp)
.L578:
	cmpq	$0, -24(%rbp)
	je	.L579
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L580
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L579
.L580:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_set0_net_wbio@PLT
	jmp	.L574
.L579:
	cmpq	$0, -8(%rbp)
	je	.L585
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L583
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
.L583:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L584
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
.L584:
	movq	-8(%rbp), %rax
	movq	3040(%rax), %rax
	movq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L574
.L585:
	nop
.L574:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE925:
	.size	SSL_set0_wbio, .-SSL_set0_wbio
	.globl	SSL_set_bio
	.type	SSL_set_bio, @function
SSL_set_bio:
.LFB926:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	cmpq	%rax, -32(%rbp)
	jne	.L587
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	cmpq	%rax, -40(%rbp)
	je	.L592
.L587:
	cmpq	$0, -32(%rbp)
	je	.L589
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L589
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
.L589:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	cmpq	%rax, -32(%rbp)
	jne	.L590
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_wbio@PLT
	jmp	.L586
.L590:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	cmpq	%rax, -40(%rbp)
	jne	.L591
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	cmpq	%rax, %rbx
	je	.L591
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_rbio@PLT
	jmp	.L586
.L591:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_rbio@PLT
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_wbio@PLT
	jmp	.L586
.L592:
	nop
.L586:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE926:
	.size	SSL_set_bio, .-SSL_set_bio
	.globl	SSL_get_rbio
	.type	SSL_get_rbio, @function
SSL_get_rbio:
.LFB927:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L594
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L595
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L596
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L597
.L596:
	movq	$0, -8(%rbp)
	jmp	.L597
.L595:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L597
.L594:
	movq	$0, -8(%rbp)
.L597:
	cmpq	$0, -24(%rbp)
	je	.L598
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L599
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L598
.L599:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_get_net_rbio@PLT
	jmp	.L600
.L598:
	cmpq	$0, -8(%rbp)
	jne	.L601
	movl	$0, %eax
	jmp	.L600
.L601:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
.L600:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE927:
	.size	SSL_get_rbio, .-SSL_get_rbio
	.globl	SSL_get_wbio
	.type	SSL_get_wbio, @function
SSL_get_wbio:
.LFB928:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L603
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L604
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L605
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L606
.L605:
	movq	$0, -8(%rbp)
	jmp	.L606
.L604:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L606
.L603:
	movq	$0, -8(%rbp)
.L606:
	cmpq	$0, -24(%rbp)
	je	.L607
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L608
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L607
.L608:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_get_net_wbio@PLT
	jmp	.L609
.L607:
	cmpq	$0, -8(%rbp)
	jne	.L610
	movl	$0, %eax
	jmp	.L609
.L610:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L611
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	jmp	.L609
.L611:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
.L609:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE928:
	.size	SSL_get_wbio, .-SSL_get_wbio
	.globl	SSL_get_fd
	.type	SSL_get_fd, @function
SSL_get_fd:
.LFB929:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rfd@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE929:
	.size	SSL_get_fd, .-SSL_get_fd
	.globl	SSL_get_rfd
	.type	SSL_get_rfd, @function
SSL_get_rfd:
.LFB930:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$-1, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L615
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$105, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L615:
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE930:
	.size	SSL_get_rfd, .-SSL_get_rfd
	.globl	SSL_get_wfd
	.type	SSL_get_wfd, @function
SSL_get_wfd:
.LFB931:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$-1, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L618
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$105, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L618:
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE931:
	.size	SSL_get_wfd, .-SSL_get_wfd
	.type	fd_method, @function
fd_method:
.LFB932:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L621
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L622
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L621
.L622:
	call	BIO_s_datagram@PLT
	jmp	.L623
.L621:
	call	BIO_s_socket@PLT
.L623:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE932:
	.size	fd_method, .-fd_method
	.globl	SSL_set_fd
	.type	SSL_set_fd, @function
SSL_set_fd:
.LFB933:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L625
	call	ERR_new@PLT
	leaq	__func__.43(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1665, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$356, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L626
.L625:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fd_method
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L627
	call	ERR_new@PLT
	leaq	__func__.43(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1672, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L626
.L627:
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$104, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movl	$1, -4(%rbp)
.L626:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE933:
	.size	SSL_set_fd, .-SSL_set_fd
	.globl	SSL_set_wfd
	.type	SSL_set_wfd, @function
SSL_set_wfd:
.LFB934:
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
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L630
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L631
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L630
.L631:
	movl	$1301, -4(%rbp)
	jmp	.L632
.L630:
	movl	$1285, -4(%rbp)
.L632:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L633
	call	ERR_new@PLT
	leaq	__func__.42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1697, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$356, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L634
.L633:
	cmpq	$0, -16(%rbp)
	je	.L635
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_method_type@PLT
	cmpl	%eax, -4(%rbp)
	jne	.L635
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$105, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cmpl	%eax, -44(%rbp)
	je	.L636
.L635:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fd_method
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L637
	call	ERR_new@PLT
	leaq	__func__.42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1706, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L634
.L637:
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$104, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_wbio@PLT
	jmp	.L638
.L636:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_wbio@PLT
.L638:
	movl	$1, %eax
.L634:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE934:
	.size	SSL_set_wfd, .-SSL_set_wfd
	.globl	SSL_set_rfd
	.type	SSL_set_rfd, @function
SSL_set_rfd:
.LFB935:
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
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L640
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L641
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L640
.L641:
	movl	$1301, -4(%rbp)
	jmp	.L642
.L640:
	movl	$1285, -4(%rbp)
.L642:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L643
	call	ERR_new@PLT
	leaq	__func__.41(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1733, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$356, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L644
.L643:
	cmpq	$0, -16(%rbp)
	je	.L645
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_method_type@PLT
	cmpl	%eax, -4(%rbp)
	jne	.L645
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$105, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cmpl	%eax, -44(%rbp)
	je	.L646
.L645:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fd_method
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L647
	call	ERR_new@PLT
	leaq	__func__.41(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1742, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L644
.L647:
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$104, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_rbio@PLT
	jmp	.L648
.L646:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_rbio@PLT
.L648:
	movl	$1, %eax
.L644:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE935:
	.size	SSL_set_rfd, .-SSL_set_rfd
	.globl	SSL_get_finished
	.type	SSL_get_finished, @function
SSL_get_finished:
.LFB936:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L650
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L651
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L652
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L653
.L652:
	movq	$0, -8(%rbp)
	jmp	.L653
.L651:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L653
.L650:
	movq	$0, -8(%rbp)
.L653:
	cmpq	$0, -8(%rbp)
	jne	.L654
	movl	$0, %eax
	jmp	.L655
.L654:
	movq	-8(%rbp), %rax
	movq	544(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L656
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L656:
	movq	-8(%rbp), %rax
	leaq	416(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
.L655:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE936:
	.size	SSL_get_finished, .-SSL_get_finished
	.globl	SSL_get_peer_finished
	.type	SSL_get_peer_finished, @function
SSL_get_peer_finished:
.LFB937:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L658
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L659
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L660
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L661
.L660:
	movq	$0, -8(%rbp)
	jmp	.L661
.L659:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L661
.L658:
	movq	$0, -8(%rbp)
.L661:
	cmpq	$0, -8(%rbp)
	jne	.L662
	movl	$0, %eax
	jmp	.L663
.L662:
	movq	-8(%rbp), %rax
	movq	680(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L664
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L664:
	movq	-8(%rbp), %rax
	leaq	552(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
.L663:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE937:
	.size	SSL_get_peer_finished, .-SSL_get_peer_finished
	.globl	SSL_get_verify_mode
	.type	SSL_get_verify_mode, @function
SSL_get_verify_mode:
.LFB938:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L666
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L667
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L668
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L669
.L668:
	movq	$0, -8(%rbp)
	jmp	.L669
.L667:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L669
.L666:
	movq	$0, -8(%rbp)
.L669:
	cmpq	$0, -8(%rbp)
	jne	.L670
	movl	$0, %eax
	jmp	.L671
.L670:
	movq	-8(%rbp), %rax
	movl	2264(%rax), %eax
.L671:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE938:
	.size	SSL_get_verify_mode, .-SSL_get_verify_mode
	.globl	SSL_get_verify_depth
	.type	SSL_get_verify_depth, @function
SSL_get_verify_depth:
.LFB939:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L673
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L674
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L675
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L676
.L675:
	movq	$0, -8(%rbp)
	jmp	.L676
.L674:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L676
.L673:
	movq	$0, -8(%rbp)
.L676:
	cmpq	$0, -8(%rbp)
	jne	.L677
	movl	$0, %eax
	jmp	.L678
.L677:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get_depth@PLT
.L678:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE939:
	.size	SSL_get_verify_depth, .-SSL_get_verify_depth
	.globl	SSL_get_verify_callback
	.type	SSL_get_verify_callback, @function
SSL_get_verify_callback:
.LFB940:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L680
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L681
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L682
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L683
.L682:
	movq	$0, -8(%rbp)
	jmp	.L683
.L681:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L683
.L680:
	movq	$0, -8(%rbp)
.L683:
	cmpq	$0, -8(%rbp)
	jne	.L684
	movl	$0, %eax
	jmp	.L685
.L684:
	movq	-8(%rbp), %rax
	movq	2272(%rax), %rax
.L685:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE940:
	.size	SSL_get_verify_callback, .-SSL_get_verify_callback
	.globl	SSL_CTX_get_verify_mode
	.type	SSL_CTX_get_verify_mode, @function
SSL_CTX_get_verify_mode:
.LFB941:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	384(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE941:
	.size	SSL_CTX_get_verify_mode, .-SSL_CTX_get_verify_mode
	.globl	SSL_CTX_get_verify_depth
	.type	SSL_CTX_get_verify_depth, @function
SSL_CTX_get_verify_depth:
.LFB942:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get_depth@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE942:
	.size	SSL_CTX_get_verify_depth, .-SSL_CTX_get_verify_depth
	.globl	SSL_CTX_get_verify_callback
	.type	SSL_CTX_get_verify_callback, @function
SSL_CTX_get_verify_callback:
.LFB943:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	432(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE943:
	.size	SSL_CTX_get_verify_callback, .-SSL_CTX_get_verify_callback
	.globl	SSL_set_verify
	.type	SSL_set_verify, @function
SSL_set_verify:
.LFB944:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L693
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L694
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L695
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L696
.L695:
	movq	$0, -8(%rbp)
	jmp	.L696
.L694:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L696
.L693:
	movq	$0, -8(%rbp)
.L696:
	cmpq	$0, -8(%rbp)
	je	.L699
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 2264(%rax)
	cmpq	$0, -40(%rbp)
	je	.L692
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 2272(%rax)
	jmp	.L692
.L699:
	nop
.L692:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE944:
	.size	SSL_set_verify, .-SSL_set_verify
	.globl	SSL_set_verify_depth
	.type	SSL_set_verify_depth, @function
SSL_set_verify_depth:
.LFB945:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L701
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L702
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L703
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L704
.L703:
	movq	$0, -8(%rbp)
	jmp	.L704
.L702:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L704
.L701:
	movq	$0, -8(%rbp)
.L704:
	cmpq	$0, -8(%rbp)
	je	.L707
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_depth@PLT
	jmp	.L700
.L707:
	nop
.L700:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE945:
	.size	SSL_set_verify_depth, .-SSL_set_verify_depth
	.section	.rodata
.LC2:
	.string	"read_ahead"
	.text
	.globl	SSL_set_read_ahead
	.type	SSL_set_read_ahead, @function
SSL_set_read_ahead:
.LFB946:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movl	%esi, -124(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L709
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L710
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L711
.L710:
	movq	$0, -24(%rbp)
	jmp	.L711
.L709:
	movq	$0, -24(%rbp)
.L711:
	leaq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L714
	movq	-24(%rbp), %rax
	movl	-124(%rbp), %edx
	movl	%edx, 3080(%rax)
	movq	-24(%rbp), %rax
	leaq	3080(%rax), %rdx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-176(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	144(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L708
.L714:
	nop
.L708:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE946:
	.size	SSL_set_read_ahead, .-SSL_set_read_ahead
	.globl	SSL_get_read_ahead
	.type	SSL_get_read_ahead, @function
SSL_get_read_ahead:
.LFB947:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L716
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L717
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L718
.L717:
	movq	$0, -8(%rbp)
	jmp	.L718
.L716:
	movq	$0, -8(%rbp)
.L718:
	cmpq	$0, -8(%rbp)
	jne	.L719
	movl	$0, %eax
	jmp	.L720
.L719:
	movq	-8(%rbp), %rax
	movl	3080(%rax), %eax
.L720:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE947:
	.size	SSL_get_read_ahead, .-SSL_get_read_ahead
	.globl	SSL_pending
	.type	SSL_pending, @function
SSL_pending:
.LFB948:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	184(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$2147483646, -8(%rbp)
	ja	.L722
	movq	-8(%rbp), %rax
	jmp	.L724
.L722:
	movl	$2147483647, %eax
.L724:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE948:
	.size	SSL_pending, .-SSL_pending
	.globl	SSL_has_pending
	.type	SSL_has_pending, @function
SSL_has_pending:
.LFB949:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L726
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L727
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L726
.L727:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_has_pending@PLT
	jmp	.L728
.L726:
	cmpq	$0, -40(%rbp)
	je	.L729
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L730
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L731
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L732
.L731:
	movq	$0, -8(%rbp)
	jmp	.L732
.L730:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L732
.L729:
	movq	$0, -8(%rbp)
.L732:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L733
	movq	-8(%rbp), %rax
	movq	3144(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_iterator@PLT
	movq	%rax, -32(%rbp)
	jmp	.L734
.L735:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L734
	movl	$1, %eax
	jmp	.L728
.L734:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	pqueue_next@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L735
.L733:
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_processed_read_pending@PLT
	testl	%eax, %eax
	je	.L736
	movl	$1, %eax
	jmp	.L728
.L736:
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_read_pending@PLT
.L728:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE949:
	.size	SSL_has_pending, .-SSL_has_pending
	.globl	SSL_get1_peer_certificate
	.type	SSL_get1_peer_certificate, @function
SSL_get1_peer_certificate:
.LFB950:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_certificate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L738
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
.L738:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE950:
	.size	SSL_get1_peer_certificate, .-SSL_get1_peer_certificate
	.globl	SSL_get0_peer_certificate
	.type	SSL_get0_peer_certificate, @function
SSL_get0_peer_certificate:
.LFB951:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L741
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L742
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L743
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L744
.L743:
	movq	$0, -8(%rbp)
	jmp	.L744
.L742:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L744
.L741:
	movq	$0, -8(%rbp)
.L744:
	cmpq	$0, -8(%rbp)
	jne	.L745
	movl	$0, %eax
	jmp	.L746
.L745:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	jne	.L747
	movl	$0, %eax
	jmp	.L746
.L747:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	704(%rax), %rax
.L746:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE951:
	.size	SSL_get0_peer_certificate, .-SSL_get0_peer_certificate
	.globl	SSL_get_peer_cert_chain
	.type	SSL_get_peer_cert_chain, @function
SSL_get_peer_cert_chain:
.LFB952:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L749
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L750
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L751
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L752
.L751:
	movq	$0, -16(%rbp)
	jmp	.L752
.L750:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L752
.L749:
	movq	$0, -16(%rbp)
.L752:
	cmpq	$0, -16(%rbp)
	jne	.L753
	movl	$0, %eax
	jmp	.L754
.L753:
	movq	-16(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	jne	.L755
	movq	$0, -8(%rbp)
	jmp	.L756
.L755:
	movq	-16(%rbp), %rax
	movq	2184(%rax), %rax
	movq	712(%rax), %rax
	movq	%rax, -8(%rbp)
.L756:
	movq	-8(%rbp), %rax
.L754:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE952:
	.size	SSL_get_peer_cert_chain, .-SSL_get_peer_cert_chain
	.globl	SSL_copy_session_id
	.type	SSL_copy_session_id, @function
SSL_copy_session_id:
.LFB953:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L758
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L759
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L760
.L759:
	movq	$0, -8(%rbp)
	jmp	.L760
.L758:
	movq	$0, -8(%rbp)
.L760:
	cmpq	$0, -48(%rbp)
	je	.L761
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L762
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L763
.L762:
	movq	$0, -16(%rbp)
	jmp	.L763
.L761:
	movq	$0, -16(%rbp)
.L763:
	cmpq	$0, -8(%rbp)
	je	.L764
	cmpq	$0, -16(%rbp)
	jne	.L765
.L764:
	movl	$0, %eax
	jmp	.L770
.L765:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_session@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session@PLT
	testl	%eax, %eax
	jne	.L767
	movl	$0, %eax
	jmp	.L770
.L767:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	je	.L768
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L768
	movl	$0, %eax
	jmp	.L770
.L768:
	movq	-16(%rbp), %rax
	movq	2056(%rax), %rax
	leaq	176(%rax), %rdx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, %rdi
	call	ssl_cert_free@PLT
	movq	-16(%rbp), %rax
	movq	2056(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 2056(%rax)
	movq	-16(%rbp), %rax
	movq	2144(%rax), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	leaq	2152(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session_id_context@PLT
	testl	%eax, %eax
	jne	.L769
	movl	$0, %eax
	jmp	.L770
.L769:
	movl	$1, %eax
.L770:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE953:
	.size	SSL_copy_session_id, .-SSL_copy_session_id
	.globl	SSL_CTX_check_private_key
	.type	SSL_CTX_check_private_key, @function
SSL_CTX_check_private_key:
.LFB954:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L772
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L773
.L772:
	call	ERR_new@PLT
	leaq	__func__.40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2024, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$177, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L774
.L773:
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L775
	call	ERR_new@PLT
	leaq	__func__.40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2028, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$190, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L774
.L775:
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
.L774:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE954:
	.size	SSL_CTX_check_private_key, .-SSL_CTX_check_private_key
	.globl	SSL_check_private_key
	.type	SSL_check_private_key, @function
SSL_check_private_key:
.LFB955:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L777
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L778
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L779
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L780
.L779:
	movq	$0, -8(%rbp)
	jmp	.L780
.L778:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L780
.L777:
	movq	$0, -8(%rbp)
.L780:
	cmpq	$0, -8(%rbp)
	jne	.L781
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2041, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L782
.L781:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L783
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2045, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$177, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L782
.L783:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L784
	call	ERR_new@PLT
	leaq	__func__.39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2049, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$190, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L782
.L784:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_private_key@PLT
.L782:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE955:
	.size	SSL_check_private_key, .-SSL_check_private_key
	.globl	SSL_waiting_for_async
	.type	SSL_waiting_for_async, @function
SSL_waiting_for_async:
.LFB956:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L786
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L787
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L788
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L789
.L788:
	movq	$0, -8(%rbp)
	jmp	.L789
.L787:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L789
.L786:
	movq	$0, -8(%rbp)
.L789:
	cmpq	$0, -8(%rbp)
	jne	.L790
	movl	$0, %eax
	jmp	.L791
.L790:
	movq	-8(%rbp), %rax
	movq	5256(%rax), %rax
	testq	%rax, %rax
	je	.L792
	movl	$1, %eax
	jmp	.L791
.L792:
	movl	$0, %eax
.L791:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE956:
	.size	SSL_waiting_for_async, .-SSL_waiting_for_async
	.globl	SSL_get_all_async_fds
	.type	SSL_get_all_async_fds, @function
SSL_get_all_async_fds:
.LFB957:
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
	cmpq	$0, -24(%rbp)
	je	.L794
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L795
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L796
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L797
.L796:
	movq	$0, -8(%rbp)
	jmp	.L797
.L795:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L797
.L794:
	movq	$0, -8(%rbp)
.L797:
	cmpq	$0, -8(%rbp)
	jne	.L798
	movl	$0, %eax
	jmp	.L799
.L798:
	movq	-8(%rbp), %rax
	movq	5264(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L800
	movl	$0, %eax
	jmp	.L799
.L800:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_all_fds@PLT
.L799:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE957:
	.size	SSL_get_all_async_fds, .-SSL_get_all_async_fds
	.globl	SSL_get_changed_async_fds
	.type	SSL_get_changed_async_fds, @function
SSL_get_changed_async_fds:
.LFB958:
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
	cmpq	$0, -24(%rbp)
	je	.L802
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L803
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L804
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L805
.L804:
	movq	$0, -8(%rbp)
	jmp	.L805
.L803:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L805
.L802:
	movq	$0, -8(%rbp)
.L805:
	cmpq	$0, -8(%rbp)
	jne	.L806
	movl	$0, %eax
	jmp	.L807
.L806:
	movq	-8(%rbp), %rax
	movq	5264(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L808
	movl	$0, %eax
	jmp	.L807
.L808:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_changed_fds@PLT
.L807:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE958:
	.size	SSL_get_changed_async_fds, .-SSL_get_changed_async_fds
	.globl	SSL_CTX_set_async_callback
	.type	SSL_CTX_set_async_callback, @function
SSL_CTX_set_async_callback:
.LFB959:
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
	movq	%rdx, 1080(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE959:
	.size	SSL_CTX_set_async_callback, .-SSL_CTX_set_async_callback
	.globl	SSL_CTX_set_async_callback_arg
	.type	SSL_CTX_set_async_callback_arg, @function
SSL_CTX_set_async_callback_arg:
.LFB960:
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
	movq	%rdx, 1088(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE960:
	.size	SSL_CTX_set_async_callback_arg, .-SSL_CTX_set_async_callback_arg
	.globl	SSL_set_async_callback
	.type	SSL_set_async_callback, @function
SSL_set_async_callback:
.LFB961:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L814
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L815
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L816
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L817
.L816:
	movq	$0, -8(%rbp)
	jmp	.L817
.L815:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L817
.L814:
	movq	$0, -8(%rbp)
.L817:
	cmpq	$0, -8(%rbp)
	jne	.L818
	movl	$0, %eax
	jmp	.L819
.L818:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 5336(%rax)
	movl	$1, %eax
.L819:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE961:
	.size	SSL_set_async_callback, .-SSL_set_async_callback
	.globl	SSL_set_async_callback_arg
	.type	SSL_set_async_callback_arg, @function
SSL_set_async_callback_arg:
.LFB962:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L821
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L822
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L823
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L824
.L823:
	movq	$0, -8(%rbp)
	jmp	.L824
.L822:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L824
.L821:
	movq	$0, -8(%rbp)
.L824:
	cmpq	$0, -8(%rbp)
	jne	.L825
	movl	$0, %eax
	jmp	.L826
.L825:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 5344(%rax)
	movl	$1, %eax
.L826:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE962:
	.size	SSL_set_async_callback_arg, .-SSL_set_async_callback_arg
	.globl	SSL_get_async_status
	.type	SSL_get_async_status, @function
SSL_get_async_status:
.LFB963:
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
	je	.L828
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L829
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L830
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L831
.L830:
	movq	$0, -8(%rbp)
	jmp	.L831
.L829:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L831
.L828:
	movq	$0, -8(%rbp)
.L831:
	cmpq	$0, -8(%rbp)
	jne	.L832
	movl	$0, %eax
	jmp	.L833
.L832:
	movq	-8(%rbp), %rax
	movq	5264(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L834
	movl	$0, %eax
	jmp	.L833
.L834:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_status@PLT
	movq	-32(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	$1, %eax
.L833:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE963:
	.size	SSL_get_async_status, .-SSL_get_async_status
	.globl	SSL_accept
	.type	SSL_accept, @function
SSL_accept:
.LFB964:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L836
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L837
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L838
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L839
.L838:
	movq	$0, -8(%rbp)
	jmp	.L839
.L837:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L839
.L836:
	movq	$0, -8(%rbp)
.L839:
	cmpq	$0, -24(%rbp)
	je	.L840
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L841
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L840
.L841:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L842
.L840:
	cmpq	$0, -8(%rbp)
	jne	.L843
	movl	$0, %eax
	jmp	.L842
.L843:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L844
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_accept_state@PLT
.L844:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
.L842:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE964:
	.size	SSL_accept, .-SSL_accept
	.globl	SSL_connect
	.type	SSL_connect, @function
SSL_connect:
.LFB965:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L846
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L847
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L848
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L849
.L848:
	movq	$0, -8(%rbp)
	jmp	.L849
.L847:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L849
.L846:
	movq	$0, -8(%rbp)
.L849:
	cmpq	$0, -24(%rbp)
	je	.L850
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L851
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L850
.L851:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L852
.L850:
	cmpq	$0, -8(%rbp)
	jne	.L853
	movl	$0, %eax
	jmp	.L852
.L853:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L854
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
.L854:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
.L852:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE965:
	.size	SSL_connect, .-SSL_connect
	.globl	SSL_get_default_timeout
	.type	SSL_get_default_timeout, @function
SSL_get_default_timeout:
.LFB966:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	208(%rax), %rax
	call	*%rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE966:
	.size	SSL_get_default_timeout, .-SSL_get_default_timeout
	.type	ssl_async_wait_ctx_cb, @function
ssl_async_wait_ctx_cb:
.LFB967:
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
	cmpq	$0, -16(%rbp)
	je	.L858
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L859
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L860
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L861
.L860:
	movq	$0, -8(%rbp)
	jmp	.L861
.L859:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L861
.L858:
	movq	$0, -8(%rbp)
.L861:
	cmpq	$0, -8(%rbp)
	jne	.L862
	movl	$0, %eax
	jmp	.L863
.L862:
	movq	-8(%rbp), %rax
	movq	5336(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	5344(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L863:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE967:
	.size	ssl_async_wait_ctx_cb, .-ssl_async_wait_ctx_cb
	.type	ssl_start_async_job, @function
ssl_start_async_job:
.LFB968:
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
	cmpq	$0, -24(%rbp)
	je	.L865
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L866
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L867
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L868
.L867:
	movq	$0, -8(%rbp)
	jmp	.L868
.L866:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L868
.L865:
	movq	$0, -8(%rbp)
.L868:
	cmpq	$0, -8(%rbp)
	jne	.L869
	movl	$0, %eax
	jmp	.L878
.L869:
	movq	-8(%rbp), %rax
	movq	5264(%rax), %rax
	testq	%rax, %rax
	jne	.L871
	call	ASYNC_WAIT_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 5264(%rdx)
	movq	-8(%rbp), %rax
	movq	5264(%rax), %rax
	testq	%rax, %rax
	jne	.L872
	movl	$-1, %eax
	jmp	.L878
.L872:
	movq	-8(%rbp), %rax
	movq	5336(%rax), %rax
	testq	%rax, %rax
	je	.L871
	movq	-8(%rbp), %rax
	movq	5264(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	ssl_async_wait_ctx_cb(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_set_callback@PLT
	testl	%eax, %eax
	jne	.L871
	movl	$-1, %eax
	jmp	.L878
.L871:
	movq	-8(%rbp), %rax
	movl	$1, 104(%rax)
	movq	-8(%rbp), %rax
	movq	5264(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	5256(%rdx), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	movl	$40, %r9d
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	ASYNC_start_job@PLT
	cmpl	$3, %eax
	je	.L873
	cmpl	$3, %eax
	jg	.L874
	cmpl	$2, %eax
	je	.L875
	cmpl	$2, %eax
	jg	.L874
	testl	%eax, %eax
	je	.L876
	cmpl	$1, %eax
	je	.L877
	jmp	.L874
.L876:
	movq	-8(%rbp), %rax
	movl	$1, 104(%rax)
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$405, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L878
.L875:
	movq	-8(%rbp), %rax
	movl	$5, 104(%rax)
	movl	$-1, %eax
	jmp	.L878
.L877:
	movq	-8(%rbp), %rax
	movl	$6, 104(%rax)
	movl	$-1, %eax
	jmp	.L878
.L873:
	movq	-8(%rbp), %rax
	movq	$0, 5256(%rax)
	movl	-12(%rbp), %eax
	jmp	.L878
.L874:
	movq	-8(%rbp), %rax
	movl	$1, 104(%rax)
	call	ERR_new@PLT
	leaq	__func__.38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2238, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
.L878:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE968:
	.size	ssl_start_async_job, .-ssl_start_async_job
	.type	ssl_io_intern, @function
ssl_io_intern:
.LFB969:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L880
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L881
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L882
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L883
.L882:
	movq	$0, -8(%rbp)
	jmp	.L883
.L881:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L883
.L880:
	movq	$0, -8(%rbp)
.L883:
	cmpq	$0, -8(%rbp)
	jne	.L884
	movl	$-1, %eax
	jmp	.L885
.L884:
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	je	.L886
	cmpl	$2, %eax
	ja	.L887
	testl	%eax, %eax
	je	.L888
	cmpl	$1, %eax
	je	.L889
	jmp	.L887
.L888:
	movq	-16(%rbp), %rax
	movq	32(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	5272(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L885
.L889:
	movq	-16(%rbp), %rax
	movq	32(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	5272(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L885
.L886:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L885
.L887:
	movl	$-1, %eax
.L885:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE969:
	.size	ssl_io_intern, .-ssl_io_intern
	.globl	ssl_read_internal
	.type	ssl_read_internal, @function
ssl_read_internal:
.LFB970:
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
	movq	%rcx, -96(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L891
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L892
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L893
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L894
.L893:
	movq	$0, -8(%rbp)
	jmp	.L894
.L892:
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L894
.L891:
	movq	$0, -8(%rbp)
.L894:
	cmpq	$0, -72(%rbp)
	je	.L895
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L896
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L895
.L896:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	80(%rax), %r8
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L897
.L895:
	cmpq	$0, -8(%rbp)
	jne	.L898
	movl	$-1, %eax
	jmp	.L897
.L898:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L899
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2283, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$276, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L897
.L899:
	movq	-8(%rbp), %rax
	movl	132(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L900
	movq	-8(%rbp), %rax
	movl	$1, 104(%rax)
	movl	$0, %eax
	jmp	.L897
.L900:
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$1, %eax
	je	.L901
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$8, %eax
	jne	.L902
.L901:
	call	ERR_new@PLT
	leaq	__func__.37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2294, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L897
.L902:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_statem_check_finish_init@PLT
	movq	-8(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L903
	call	ASYNC_get_current_job@PLT
	testq	%rax, %rax
	jne	.L903
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	ssl_io_intern(%rip), %rdx
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_start_async_job
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	5272(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	jmp	.L897
.L903:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	80(%rax), %r8
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L897:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE970:
	.size	ssl_read_internal, .-ssl_read_internal
	.globl	SSL_read
	.type	SSL_read, @function
SSL_read:
.LFB971:
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
	cmpl	$0, -36(%rbp)
	jns	.L905
	call	ERR_new@PLT
	leaq	__func__.36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$271, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L908
.L905:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-16(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_read_internal@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L907
	movq	-16(%rbp), %rax
	movl	%eax, -4(%rbp)
.L907:
	movl	-4(%rbp), %eax
.L908:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE971:
	.size	SSL_read, .-SSL_read
	.globl	SSL_read_ex
	.type	SSL_read_ex, @function
SSL_read_ex:
.LFB972:
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
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_read_internal@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L910
	movl	$0, -4(%rbp)
.L910:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE972:
	.size	SSL_read_ex, .-SSL_read_ex
	.globl	SSL_read_early_data
	.type	SSL_read_early_data, @function
SSL_read_early_data:
.LFB973:
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
	cmpq	$0, -24(%rbp)
	je	.L913
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L914
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L915
.L914:
	movq	$0, -8(%rbp)
	jmp	.L915
.L913:
	movq	$0, -8(%rbp)
.L915:
	cmpq	$0, -8(%rbp)
	je	.L916
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L917
.L916:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2359, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L918
.L917:
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$10, %eax
	je	.L919
	cmpl	$10, %eax
	ja	.L920
	testl	%eax, %eax
	je	.L921
	cmpl	$8, %eax
	je	.L922
	jmp	.L920
.L921:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_before@PLT
	testl	%eax, %eax
	jne	.L922
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2366, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L918
.L922:
	movq	-8(%rbp), %rax
	movl	$9, 240(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_accept@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L919
	movq	-8(%rbp), %rax
	movl	$8, 240(%rax)
	movl	$0, %eax
	jmp	.L918
.L919:
	movq	-8(%rbp), %rax
	movl	2688(%rax), %eax
	cmpl	$2, %eax
	jne	.L923
	movq	-8(%rbp), %rax
	movl	$11, 240(%rax)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L924
	cmpl	$0, -12(%rbp)
	jg	.L925
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$12, %eax
	je	.L925
.L924:
	movq	-8(%rbp), %rax
	movl	$10, 240(%rax)
	cmpl	$0, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	jmp	.L918
.L923:
	movq	-8(%rbp), %rax
	movl	$12, 240(%rax)
.L925:
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$2, %eax
	jmp	.L918
.L920:
	call	ERR_new@PLT
	leaq	__func__.35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2403, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L918:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE973:
	.size	SSL_read_early_data, .-SSL_read_early_data
	.globl	SSL_get_early_data_status
	.type	SSL_get_early_data_status, @function
SSL_get_early_data_status:
.LFB974:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L927
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L928
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L929
.L928:
	movq	$0, -8(%rbp)
	jmp	.L929
.L927:
	movq	$0, -8(%rbp)
.L929:
	cmpq	$0, -8(%rbp)
	jne	.L930
	movl	$0, %eax
	jmp	.L931
.L930:
	movq	-8(%rbp), %rax
	movl	2688(%rax), %eax
.L931:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE974:
	.size	SSL_get_early_data_status, .-SSL_get_early_data_status
	.type	ssl_peek_internal, @function
ssl_peek_internal:
.LFB975:
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
	movq	%rcx, -96(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L933
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L934
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L935
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L936
.L935:
	movq	$0, -8(%rbp)
	jmp	.L936
.L934:
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L936
.L933:
	movq	$0, -8(%rbp)
.L936:
	cmpq	$0, -72(%rbp)
	je	.L937
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L938
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L937
.L938:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	88(%rax), %r8
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L939
.L937:
	cmpq	$0, -8(%rbp)
	jne	.L940
	movl	$0, %eax
	jmp	.L939
.L940:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L941
	call	ERR_new@PLT
	leaq	__func__.34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2432, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$276, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L939
.L941:
	movq	-8(%rbp), %rax
	movl	132(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L942
	movl	$0, %eax
	jmp	.L939
.L942:
	movq	-8(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L943
	call	ASYNC_get_current_job@PLT
	testq	%rax, %rax
	jne	.L943
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	ssl_io_intern(%rip), %rdx
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_start_async_job
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	5272(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	jmp	.L939
.L943:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	88(%rax), %r8
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L939:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE975:
	.size	ssl_peek_internal, .-ssl_peek_internal
	.globl	SSL_peek
	.type	SSL_peek, @function
SSL_peek:
.LFB976:
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
	cmpl	$0, -36(%rbp)
	jns	.L945
	call	ERR_new@PLT
	leaq	__func__.33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2463, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$271, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L948
.L945:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-16(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_peek_internal
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L947
	movq	-16(%rbp), %rax
	movl	%eax, -4(%rbp)
.L947:
	movl	-4(%rbp), %eax
.L948:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE976:
	.size	SSL_peek, .-SSL_peek
	.globl	SSL_peek_ex
	.type	SSL_peek_ex, @function
SSL_peek_ex:
.LFB977:
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
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_peek_internal
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L950
	movl	$0, -4(%rbp)
.L950:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE977:
	.size	SSL_peek_ex, .-SSL_peek_ex
	.globl	ssl_write_internal
	.type	ssl_write_internal, @function
ssl_write_internal:
.LFB978:
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
	cmpq	$0, -72(%rbp)
	je	.L953
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L954
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L955
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L956
.L955:
	movq	$0, -8(%rbp)
	jmp	.L956
.L954:
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L956
.L953:
	movq	$0, -8(%rbp)
.L956:
	cmpq	$0, -72(%rbp)
	je	.L957
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L958
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L957
.L958:
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_write_flags@PLT
	jmp	.L959
.L957:
	cmpq	$0, -8(%rbp)
	jne	.L960
	movl	$0, %eax
	jmp	.L959
.L960:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L961
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2503, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$276, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L959
.L961:
	movq	-8(%rbp), %rax
	movl	132(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L962
	movq	-8(%rbp), %rax
	movl	$1, 104(%rax)
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2509, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$207, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L959
.L962:
	cmpq	$0, -96(%rbp)
	je	.L963
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2514, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$412, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L959
.L963:
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$1, %eax
	je	.L964
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$8, %eax
	je	.L964
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$10, %eax
	jne	.L965
.L964:
	call	ERR_new@PLT
	leaq	__func__.32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2521, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L959
.L965:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_check_finish_init@PLT
	movq	-8(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L966
	call	ASYNC_get_current_job@PLT
	testq	%rax, %rax
	jne	.L966
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	ssl_io_intern(%rip), %rdx
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_start_async_job
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	5272(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	jmp	.L959
.L966:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	96(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L959:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE978:
	.size	ssl_write_internal, .-ssl_write_internal
	.globl	SSL_sendfile
	.type	SSL_sendfile, @function
SSL_sendfile:
.LFB979:
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
	movq	%rcx, -48(%rbp)
	movl	%r8d, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L968
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L969
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L970
.L969:
	movq	$0, -8(%rbp)
	jmp	.L970
.L968:
	movq	$0, -8(%rbp)
.L970:
	cmpq	$0, -8(%rbp)
	jne	.L971
	movl	$0, %eax
	jmp	.L972
.L971:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L973
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2554, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$276, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$-1, %rax
	jmp	.L972
.L973:
	movq	-8(%rbp), %rax
	movl	132(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L974
	movq	-8(%rbp), %rax
	movl	$1, 104(%rax)
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2560, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$207, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$-1, %rax
	jmp	.L972
.L974:
	call	ERR_new@PLT
	leaq	__func__.31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2565, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$276, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$-1, %rax
.L972:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE979:
	.size	SSL_sendfile, .-SSL_sendfile
	.globl	SSL_write
	.type	SSL_write, @function
SSL_write:
.LFB980:
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
	cmpl	$0, -36(%rbp)
	jns	.L976
	call	ERR_new@PLT
	leaq	__func__.30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2619, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$271, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L979
.L976:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-16(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ssl_write_internal@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L978
	movq	-16(%rbp), %rax
	movl	%eax, -4(%rbp)
.L978:
	movl	-4(%rbp), %eax
.L979:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE980:
	.size	SSL_write, .-SSL_write
	.globl	SSL_write_ex
	.type	SSL_write_ex, @function
SSL_write_ex:
.LFB981:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	SSL_write_ex2@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE981:
	.size	SSL_write_ex, .-SSL_write_ex
	.globl	SSL_write_ex2
	.type	SSL_write_ex2, @function
SSL_write_ex2:
.LFB982:
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
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_write_internal@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L983
	movl	$0, -4(%rbp)
.L983:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE982:
	.size	SSL_write_ex2, .-SSL_write_ex2
	.globl	SSL_write_early_data
	.type	SSL_write_early_data, @function
SSL_write_early_data:
.LFB983:
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
	cmpq	$0, -40(%rbp)
	je	.L986
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L987
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L988
.L987:
	movq	$0, -8(%rbp)
	jmp	.L988
.L986:
	movq	$0, -8(%rbp)
.L988:
	cmpq	$0, -8(%rbp)
	jne	.L989
	movl	$0, %eax
	jmp	.L1002
.L989:
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$12, %eax
	je	.L991
	cmpl	$12, %eax
	ja	.L992
	cmpl	$10, %eax
	je	.L991
	cmpl	$10, %eax
	ja	.L992
	cmpl	$5, %eax
	je	.L993
	cmpl	$5, %eax
	ja	.L992
	cmpl	$3, %eax
	je	.L994
	cmpl	$3, %eax
	ja	.L992
	testl	%eax, %eax
	je	.L995
	cmpl	$1, %eax
	je	.L996
	jmp	.L992
.L995:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L997
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_before@PLT
	testl	%eax, %eax
	je	.L997
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L998
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movl	836(%rax), %eax
	testl	%eax, %eax
	jne	.L996
.L998:
	movq	-8(%rbp), %rax
	movq	2320(%rax), %rax
	testq	%rax, %rax
	jne	.L996
.L997:
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2667, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1002
.L996:
	movq	-8(%rbp), %rax
	movl	$2, 240(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jg	.L994
	movq	-8(%rbp), %rax
	movl	$1, 240(%rax)
	movl	$0, %eax
	jmp	.L1002
.L994:
	movq	-8(%rbp), %rax
	movl	$4, 240(%rax)
	movq	-8(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 2368(%rax)
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	2368(%rax), %eax
	orl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 2368(%rax)
	cmpl	$0, -16(%rbp)
	jne	.L999
	movq	-8(%rbp), %rax
	movl	$3, 240(%rax)
	movl	-16(%rbp), %eax
	jmp	.L1002
.L999:
	movq	-8(%rbp), %rax
	movl	$5, 240(%rax)
.L993:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	statem_flush@PLT
	cmpl	$1, %eax
	je	.L1000
	movl	$0, %eax
	jmp	.L1002
.L1000:
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$3, 240(%rax)
	movl	$1, %eax
	jmp	.L1002
.L991:
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$6, 240(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L1001
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L1001:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 240(%rax)
	movl	-16(%rbp), %eax
	jmp	.L1002
.L992:
	call	ERR_new@PLT
	leaq	__func__.29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2721, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L1002:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE983:
	.size	SSL_write_early_data, .-SSL_write_early_data
	.globl	SSL_shutdown
	.type	SSL_shutdown, @function
SSL_shutdown:
.LFB984:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L1004
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1005
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1006
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1007
.L1006:
	movq	$0, -8(%rbp)
	jmp	.L1007
.L1005:
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1007
.L1004:
	movq	$0, -8(%rbp)
.L1007:
	cmpq	$0, -56(%rbp)
	je	.L1008
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1009
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1008
.L1009:
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_conn_shutdown@PLT
	jmp	.L1010
.L1008:
	cmpq	$0, -8(%rbp)
	jne	.L1011
	movl	$-1, %eax
	jmp	.L1010
.L1011:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L1012
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2745, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$276, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L1010
.L1012:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	jne	.L1013
	movq	-8(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1014
	call	ASYNC_get_current_job@PLT
	testq	%rax, %rax
	jne	.L1014
	leaq	-48(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$2, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	ssl_io_intern(%rip), %rdx
	leaq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_start_async_job
	jmp	.L1010
.L1014:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	104(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L1010
.L1013:
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2763, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$407, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
.L1010:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE984:
	.size	SSL_shutdown, .-SSL_shutdown
	.globl	SSL_key_update
	.type	SSL_key_update, @function
SSL_key_update:
.LFB985:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1016
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1017
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1018
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1019
.L1018:
	movq	$0, -8(%rbp)
	jmp	.L1019
.L1017:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1019
.L1016:
	movq	$0, -8(%rbp)
.L1019:
	cmpq	$0, -24(%rbp)
	je	.L1020
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1021
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1020
.L1021:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_key_update@PLT
	jmp	.L1022
.L1020:
	cmpq	$0, -8(%rbp)
	jne	.L1023
	movl	$0, %eax
	jmp	.L1022
.L1023:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1024
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L1024
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L1025
.L1024:
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2781, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$266, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1022
.L1025:
	cmpl	$0, -28(%rbp)
	je	.L1026
	cmpl	$1, -28(%rbp)
	je	.L1026
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2787, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1022
.L1026:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_init_finished@PLT
	testl	%eax, %eax
	jne	.L1027
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2792, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1022
.L1027:
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_write_pending@PLT
	testl	%eax, %eax
	je	.L1028
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2797, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1022
.L1028:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 2828(%rax)
	movl	$1, %eax
.L1022:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE985:
	.size	SSL_key_update, .-SSL_key_update
	.globl	SSL_get_key_update_type
	.type	SSL_get_key_update_type, @function
SSL_get_key_update_type:
.LFB986:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1030
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1031
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1032
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1033
.L1032:
	movq	$0, -8(%rbp)
	jmp	.L1033
.L1031:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1033
.L1030:
	movq	$0, -8(%rbp)
.L1033:
	cmpq	$0, -24(%rbp)
	je	.L1034
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1035
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1034
.L1035:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get_key_update_type@PLT
	jmp	.L1036
.L1034:
	cmpq	$0, -8(%rbp)
	jne	.L1037
	movl	$0, %eax
	jmp	.L1036
.L1037:
	movq	-8(%rbp), %rax
	movl	2828(%rax), %eax
.L1036:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE986:
	.size	SSL_get_key_update_type, .-SSL_get_key_update_type
	.type	can_renegotiate, @function
can_renegotiate:
.LFB987:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1039
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L1039
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L1039
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2828, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$266, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1040
.L1039:
	movq	-8(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$1073741824, %eax
	testq	%rax, %rax
	je	.L1041
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2833, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$339, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1040
.L1041:
	movl	$1, %eax
.L1040:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE987:
	.size	can_renegotiate, .-can_renegotiate
	.globl	SSL_renegotiate
	.type	SSL_renegotiate, @function
SSL_renegotiate:
.LFB988:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1043
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1044
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1045
.L1044:
	movq	$0, -8(%rbp)
	jmp	.L1045
.L1043:
	movq	$0, -8(%rbp)
.L1045:
	cmpq	$0, -8(%rbp)
	jne	.L1046
	movl	$0, %eax
	jmp	.L1047
.L1046:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	can_renegotiate
	testl	%eax, %eax
	jne	.L1048
	movl	$0, %eax
	jmp	.L1047
.L1048:
	movq	-8(%rbp), %rax
	movl	$1, 2824(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 124(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1047:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE988:
	.size	SSL_renegotiate, .-SSL_renegotiate
	.globl	SSL_renegotiate_abbreviated
	.type	SSL_renegotiate_abbreviated, @function
SSL_renegotiate_abbreviated:
.LFB989:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1050
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1051
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1052
.L1051:
	movq	$0, -8(%rbp)
	jmp	.L1052
.L1050:
	movq	$0, -8(%rbp)
.L1052:
	cmpq	$0, -8(%rbp)
	jne	.L1053
	movl	$0, %eax
	jmp	.L1054
.L1053:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	can_renegotiate
	testl	%eax, %eax
	jne	.L1055
	movl	$0, %eax
	jmp	.L1054
.L1055:
	movq	-8(%rbp), %rax
	movl	$1, 2824(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1054:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE989:
	.size	SSL_renegotiate_abbreviated, .-SSL_renegotiate_abbreviated
	.globl	SSL_renegotiate_pending
	.type	SSL_renegotiate_pending, @function
SSL_renegotiate_pending:
.LFB990:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1057
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1058
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1059
.L1058:
	movq	$0, -8(%rbp)
	jmp	.L1059
.L1057:
	movq	$0, -8(%rbp)
.L1059:
	cmpq	$0, -8(%rbp)
	jne	.L1060
	movl	$0, %eax
	jmp	.L1061
.L1060:
	movq	-8(%rbp), %rax
	movl	2824(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.L1061:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE990:
	.size	SSL_renegotiate_pending, .-SSL_renegotiate_pending
	.globl	SSL_new_session_ticket
	.type	SSL_new_session_ticket, @function
SSL_new_session_ticket:
.LFB991:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1063
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1064
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1065
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1066
.L1065:
	movq	$0, -8(%rbp)
	jmp	.L1066
.L1064:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1066
.L1063:
	movq	$0, -8(%rbp)
.L1066:
	cmpq	$0, -8(%rbp)
	jne	.L1067
	movl	$0, %eax
	jmp	.L1068
.L1067:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L1069
	movq	-8(%rbp), %rax
	movl	2540(%rax), %eax
	testl	%eax, %eax
	je	.L1070
.L1069:
	movq	-8(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L1070
	movq	-8(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L1070
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L1070
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1070
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L1070
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L1071
.L1070:
	movl	$0, %eax
	jmp	.L1068
.L1071:
	movq	-8(%rbp), %rax
	movl	2540(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 2540(%rax)
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_write_pending@PLT
	testl	%eax, %eax
	jne	.L1072
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	jne	.L1072
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
.L1072:
	movl	$1, %eax
.L1068:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE991:
	.size	SSL_new_session_ticket, .-SSL_new_session_ticket
	.globl	SSL_ctrl
	.type	SSL_ctrl, @function
SSL_ctrl:
.LFB992:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_ctrl_internal@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE992:
	.size	SSL_ctrl, .-SSL_ctrl
	.section	.rodata
.LC3:
	.string	"mode"
	.text
	.globl	ossl_ctrl_internal
	.type	ossl_ctrl_internal, @function
ossl_ctrl_internal:
.LFB993:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movl	%r8d, -144(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L1076
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1077
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1078
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1079
.L1078:
	movq	$0, -24(%rbp)
	jmp	.L1079
.L1077:
	movq	-136(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1079
.L1076:
	movq	$0, -24(%rbp)
.L1079:
	cmpl	$0, -144(%rbp)
	jne	.L1080
	cmpq	$0, -136(%rbp)
	je	.L1080
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1081
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1080
.L1081:
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movq	152(%rax), %r8
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	-140(%rbp), %esi
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L1082
.L1080:
	cmpq	$0, -24(%rbp)
	jne	.L1083
	movl	$0, %eax
	jmp	.L1082
.L1083:
	cmpl	$136, -140(%rbp)
	je	.L1084
	cmpl	$136, -140(%rbp)
	jg	.L1085
	cmpl	$131, -140(%rbp)
	je	.L1086
	cmpl	$131, -140(%rbp)
	jg	.L1085
	cmpl	$130, -140(%rbp)
	je	.L1087
	cmpl	$130, -140(%rbp)
	jg	.L1085
	cmpl	$126, -140(%rbp)
	je	.L1088
	cmpl	$126, -140(%rbp)
	jg	.L1085
	cmpl	$125, -140(%rbp)
	je	.L1089
	cmpl	$125, -140(%rbp)
	jg	.L1085
	cmpl	$124, -140(%rbp)
	je	.L1090
	cmpl	$124, -140(%rbp)
	jg	.L1085
	cmpl	$123, -140(%rbp)
	je	.L1091
	cmpl	$123, -140(%rbp)
	jg	.L1085
	cmpl	$122, -140(%rbp)
	je	.L1092
	cmpl	$122, -140(%rbp)
	jg	.L1085
	cmpl	$110, -140(%rbp)
	je	.L1093
	cmpl	$110, -140(%rbp)
	jg	.L1085
	cmpl	$100, -140(%rbp)
	je	.L1094
	cmpl	$100, -140(%rbp)
	jg	.L1085
	cmpl	$99, -140(%rbp)
	je	.L1095
	cmpl	$99, -140(%rbp)
	jg	.L1085
	cmpl	$78, -140(%rbp)
	je	.L1096
	cmpl	$78, -140(%rbp)
	jg	.L1085
	cmpl	$76, -140(%rbp)
	je	.L1097
	cmpl	$76, -140(%rbp)
	jg	.L1085
	cmpl	$52, -140(%rbp)
	je	.L1098
	cmpl	$52, -140(%rbp)
	jg	.L1085
	cmpl	$51, -140(%rbp)
	je	.L1099
	cmpl	$51, -140(%rbp)
	jg	.L1085
	cmpl	$50, -140(%rbp)
	je	.L1100
	cmpl	$50, -140(%rbp)
	jg	.L1085
	cmpl	$41, -140(%rbp)
	je	.L1101
	cmpl	$41, -140(%rbp)
	jg	.L1085
	cmpl	$33, -140(%rbp)
	je	.L1102
	cmpl	$40, -140(%rbp)
	jne	.L1085
	movq	-24(%rbp), %rax
	movl	3080(%rax), %eax
	cltq
	jmp	.L1082
.L1101:
	movq	-24(%rbp), %rax
	movl	3080(%rax), %eax
	cltq
	movq	%rax, -32(%rbp)
	movq	-152(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 3080(%rax)
	movq	-32(%rbp), %rax
	jmp	.L1082
.L1102:
	leaq	-128(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	2368(%rax), %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 2368(%rax)
	movq	-24(%rbp), %rax
	leaq	2368(%rax), %rdx
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-208(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint32@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-176(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	144(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-24(%rbp), %rax
	movl	2368(%rax), %eax
	movl	%eax, %eax
	jmp	.L1082
.L1096:
	movq	-24(%rbp), %rax
	movl	2368(%rax), %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 2368(%rax)
	movq	-24(%rbp), %rax
	movl	2368(%rax), %eax
	movl	%eax, %eax
	jmp	.L1082
.L1100:
	movq	-24(%rbp), %rax
	movq	2384(%rax), %rax
	jmp	.L1082
.L1099:
	cmpq	$0, -152(%rbp)
	jns	.L1103
	movl	$0, %eax
	jmp	.L1082
.L1103:
	movq	-24(%rbp), %rax
	movq	2384(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-152(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2384(%rax)
	movq	-32(%rbp), %rax
	jmp	.L1082
.L1098:
	cmpq	$511, -152(%rbp)
	jle	.L1104
	cmpq	$16384, -152(%rbp)
	jle	.L1105
.L1104:
	movl	$0, %eax
	jmp	.L1082
.L1105:
	movq	-152(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2408(%rax)
	movq	-24(%rbp), %rax
	movq	2408(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	2400(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L1106
	movq	-24(%rbp), %rax
	movq	2408(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2400(%rax)
.L1106:
	movq	-24(%rbp), %rax
	movq	3040(%rax), %rax
	movq	160(%rax), %rcx
	movq	-152(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	$1, %eax
	jmp	.L1082
.L1089:
	movq	-24(%rbp), %rax
	movq	2408(%rax), %rdx
	movq	-152(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L1107
	cmpq	$0, -152(%rbp)
	jne	.L1108
.L1107:
	movl	$0, %eax
	jmp	.L1082
.L1108:
	movq	-152(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2400(%rax)
	movl	$1, %eax
	jmp	.L1082
.L1088:
	cmpq	$0, -152(%rbp)
	jle	.L1109
	cmpq	$32, -152(%rbp)
	jle	.L1110
.L1109:
	movl	$0, %eax
	jmp	.L1082
.L1110:
	movq	-152(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2416(%rax)
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L1111
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	120(%rax), %rcx
	movq	-152(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L1111:
	movl	$1, %eax
	jmp	.L1082
.L1097:
	movq	-24(%rbp), %rax
	movl	1088(%rax), %eax
	cltq
	jmp	.L1082
.L1084:
	movq	-24(%rbp), %rax
	movl	$8, 104(%rax)
	movl	$1, %eax
	jmp	.L1082
.L1095:
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movl	%edx, 28(%rax)
	movl	28(%rax), %eax
	movl	%eax, %eax
	jmp	.L1082
.L1094:
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	notl	%eax
	andl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movl	%edx, 28(%rax)
	movl	28(%rax), %eax
	movl	%eax, %eax
	jmp	.L1082
.L1093:
	cmpq	$0, -160(%rbp)
	je	.L1112
	movq	-24(%rbp), %rax
	movq	816(%rax), %rax
	testq	%rax, %rax
	jne	.L1113
	movl	$0, %eax
	jmp	.L1082
.L1113:
	movq	-24(%rbp), %rax
	movq	816(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	824(%rax), %rax
	cltq
	jmp	.L1082
.L1112:
	movl	$2, %eax
	jmp	.L1082
.L1092:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L1114
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	jne	.L1114
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_get_in_handshake@PLT
	testl	%eax, %eax
	je	.L1115
.L1114:
	movq	$-1, %rax
	jmp	.L1082
.L1115:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movl	888(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1116
	movl	$1, %eax
	jmp	.L1082
.L1116:
	movl	$0, %eax
	jmp	.L1082
.L1091:
	movq	-24(%rbp), %rax
	movl	2376(%rax), %eax
	movq	-152(%rbp), %rdx
	movl	%eax, %esi
	movl	%edx, %edi
	call	ssl_check_allowed_versions
	testl	%eax, %eax
	je	.L1117
	movq	-24(%rbp), %rax
	leaq	2372(%rax), %rdx
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ssl_set_version_bound@PLT
	testl	%eax, %eax
	je	.L1117
	movl	$1, %eax
	jmp	.L1118
.L1117:
	movl	$0, %eax
.L1118:
	cltq
	jmp	.L1082
.L1087:
	movq	-24(%rbp), %rax
	movl	2372(%rax), %eax
	cltq
	jmp	.L1082
.L1090:
	movq	-152(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	2372(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ssl_check_allowed_versions
	testl	%eax, %eax
	je	.L1119
	movq	-24(%rbp), %rax
	leaq	2376(%rax), %rdx
	movq	-152(%rbp), %rax
	movl	%eax, %ecx
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ssl_set_version_bound@PLT
	testl	%eax, %eax
	je	.L1119
	movl	$1, %eax
	jmp	.L1120
.L1119:
	movl	$0, %eax
.L1120:
	cltq
	jmp	.L1082
.L1086:
	movq	-24(%rbp), %rax
	movl	2376(%rax), %eax
	cltq
	jmp	.L1082
.L1085:
	cmpq	$0, -136(%rbp)
	je	.L1121
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1122
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1121
.L1122:
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	-140(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	jmp	.L1082
.L1121:
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movq	152(%rax), %r8
	movq	-160(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	-140(%rbp), %esi
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L1082:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE993:
	.size	ossl_ctrl_internal, .-ossl_ctrl_internal
	.globl	SSL_callback_ctrl
	.type	SSL_callback_ctrl, @function
SSL_callback_ctrl:
.LFB994:
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
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	232(%rax), %r8
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE994:
	.size	SSL_callback_ctrl, .-SSL_callback_ctrl
	.globl	SSL_CTX_sessions
	.type	SSL_CTX_sessions, @function
SSL_CTX_sessions:
.LFB995:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE995:
	.size	SSL_CTX_sessions, .-SSL_CTX_sessions
	.type	ssl_tsan_load, @function
ssl_tsan_load:
.LFB996:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_tsan_lock
	testl	%eax, %eax
	je	.L1128
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_tsan_unlock
.L1128:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE996:
	.size	ssl_tsan_load, .-ssl_tsan_load
	.globl	SSL_CTX_ctrl
	.type	SSL_CTX_ctrl, @function
SSL_CTX_ctrl:
.LFB997:
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
	movq	%rcx, -48(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L1131
	cmpl	$102, -28(%rbp)
	je	.L1132
	cmpl	$102, -28(%rbp)
	jg	.L1133
	cmpl	$92, -28(%rbp)
	je	.L1134
	cmpl	$98, -28(%rbp)
	je	.L1132
	jmp	.L1133
.L1134:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_set_groups_list@PLT
	cltq
	jmp	.L1135
.L1132:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	tls1_set_sigalgs_list@PLT
	cltq
	jmp	.L1135
.L1133:
	movl	$0, %eax
	jmp	.L1135
.L1131:
	cmpl	$131, -28(%rbp)
	je	.L1136
	cmpl	$131, -28(%rbp)
	jg	.L1137
	cmpl	$130, -28(%rbp)
	je	.L1138
	cmpl	$130, -28(%rbp)
	jg	.L1137
	cmpl	$126, -28(%rbp)
	je	.L1139
	cmpl	$126, -28(%rbp)
	jg	.L1137
	cmpl	$125, -28(%rbp)
	je	.L1140
	cmpl	$125, -28(%rbp)
	jg	.L1137
	cmpl	$124, -28(%rbp)
	je	.L1141
	cmpl	$124, -28(%rbp)
	jg	.L1137
	cmpl	$123, -28(%rbp)
	je	.L1142
	cmpl	$123, -28(%rbp)
	jg	.L1137
	cmpl	$100, -28(%rbp)
	je	.L1143
	cmpl	$100, -28(%rbp)
	jg	.L1137
	cmpl	$99, -28(%rbp)
	je	.L1144
	cmpl	$99, -28(%rbp)
	jg	.L1137
	cmpl	$78, -28(%rbp)
	je	.L1145
	cmpl	$78, -28(%rbp)
	jg	.L1137
	cmpl	$52, -28(%rbp)
	je	.L1146
	cmpl	$52, -28(%rbp)
	jg	.L1137
	cmpl	$51, -28(%rbp)
	je	.L1147
	cmpl	$51, -28(%rbp)
	jg	.L1137
	cmpl	$50, -28(%rbp)
	je	.L1148
	cmpl	$50, -28(%rbp)
	jg	.L1137
	cmpl	$45, -28(%rbp)
	je	.L1149
	cmpl	$45, -28(%rbp)
	jg	.L1137
	cmpl	$44, -28(%rbp)
	je	.L1150
	cmpl	$44, -28(%rbp)
	jg	.L1137
	cmpl	$43, -28(%rbp)
	je	.L1151
	cmpl	$43, -28(%rbp)
	jg	.L1137
	cmpl	$42, -28(%rbp)
	je	.L1152
	cmpl	$42, -28(%rbp)
	jg	.L1137
	cmpl	$41, -28(%rbp)
	je	.L1153
	cmpl	$41, -28(%rbp)
	jg	.L1137
	cmpl	$40, -28(%rbp)
	je	.L1154
	cmpl	$40, -28(%rbp)
	jg	.L1137
	cmpl	$33, -28(%rbp)
	je	.L1155
	cmpl	$33, -28(%rbp)
	jg	.L1137
	cmpl	$31, -28(%rbp)
	je	.L1156
	cmpl	$31, -28(%rbp)
	jg	.L1137
	cmpl	$30, -28(%rbp)
	je	.L1157
	cmpl	$30, -28(%rbp)
	jg	.L1137
	cmpl	$29, -28(%rbp)
	je	.L1158
	cmpl	$29, -28(%rbp)
	jg	.L1137
	cmpl	$28, -28(%rbp)
	je	.L1159
	cmpl	$28, -28(%rbp)
	jg	.L1137
	cmpl	$27, -28(%rbp)
	je	.L1160
	cmpl	$27, -28(%rbp)
	jg	.L1137
	cmpl	$26, -28(%rbp)
	je	.L1161
	cmpl	$26, -28(%rbp)
	jg	.L1137
	cmpl	$25, -28(%rbp)
	je	.L1162
	cmpl	$25, -28(%rbp)
	jg	.L1137
	cmpl	$24, -28(%rbp)
	je	.L1163
	cmpl	$24, -28(%rbp)
	jg	.L1137
	cmpl	$23, -28(%rbp)
	je	.L1164
	cmpl	$23, -28(%rbp)
	jg	.L1137
	cmpl	$22, -28(%rbp)
	je	.L1165
	cmpl	$22, -28(%rbp)
	jg	.L1137
	cmpl	$21, -28(%rbp)
	je	.L1166
	cmpl	$21, -28(%rbp)
	jg	.L1137
	cmpl	$16, -28(%rbp)
	je	.L1167
	cmpl	$20, -28(%rbp)
	je	.L1168
	jmp	.L1137
.L1154:
	movq	-24(%rbp), %rax
	movl	360(%rax), %eax
	cltq
	jmp	.L1135
.L1153:
	movq	-24(%rbp), %rax
	movl	360(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 360(%rax)
	movq	-8(%rbp), %rax
	jmp	.L1135
.L1167:
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 376(%rax)
	movl	$1, %eax
	jmp	.L1135
.L1148:
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	jmp	.L1135
.L1147:
	cmpq	$0, -40(%rbp)
	jns	.L1169
	movl	$0, %eax
	jmp	.L1135
.L1169:
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 336(%rax)
	movq	-8(%rbp), %rax
	jmp	.L1135
.L1152:
	cmpq	$0, -40(%rbp)
	jns	.L1170
	movl	$0, %eax
	jmp	.L1135
.L1170:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	jmp	.L1135
.L1151:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	jmp	.L1135
.L1150:
	movq	-24(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 80(%rax)
	movq	-8(%rbp), %rax
	jmp	.L1135
.L1149:
	movq	-24(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	jmp	.L1135
.L1168:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	lh_SSL_SESSION_num_items
	jmp	.L1135
.L1166:
	movq	-24(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	cltq
	jmp	.L1135
.L1165:
	movq	-24(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	cltq
	jmp	.L1135
.L1164:
	movq	-24(%rbp), %rax
	leaq	124(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	cltq
	jmp	.L1135
.L1163:
	movq	-24(%rbp), %rax
	leaq	132(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	cltq
	jmp	.L1135
.L1162:
	movq	-24(%rbp), %rax
	leaq	140(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	cltq
	jmp	.L1135
.L1161:
	movq	-24(%rbp), %rax
	leaq	136(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	cltq
	jmp	.L1135
.L1160:
	movq	-24(%rbp), %rax
	leaq	156(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	cltq
	jmp	.L1135
.L1159:
	movq	-24(%rbp), %rax
	leaq	160(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	cltq
	jmp	.L1135
.L1158:
	movq	-24(%rbp), %rax
	leaq	144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	cltq
	jmp	.L1135
.L1157:
	movq	-24(%rbp), %rax
	leaq	148(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	cltq
	jmp	.L1135
.L1156:
	movq	-24(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	cltq
	jmp	.L1135
.L1155:
	movq	-24(%rbp), %rax
	movl	320(%rax), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 320(%rax)
	movq	-24(%rbp), %rax
	movl	320(%rax), %eax
	movl	%eax, %eax
	jmp	.L1135
.L1145:
	movq	-24(%rbp), %rax
	movl	320(%rax), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 320(%rax)
	movq	-24(%rbp), %rax
	movl	320(%rax), %eax
	movl	%eax, %eax
	jmp	.L1135
.L1146:
	cmpq	$511, -40(%rbp)
	jle	.L1171
	cmpq	$16384, -40(%rbp)
	jle	.L1172
.L1171:
	movl	$0, %eax
	jmp	.L1135
.L1172:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 496(%rax)
	movq	-24(%rbp), %rax
	movq	496(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	488(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L1173
	movq	-24(%rbp), %rax
	movq	496(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 488(%rax)
.L1173:
	movl	$1, %eax
	jmp	.L1135
.L1140:
	movq	-24(%rbp), %rax
	movq	496(%rax), %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L1174
	cmpq	$0, -40(%rbp)
	jne	.L1175
.L1174:
	movl	$0, %eax
	jmp	.L1135
.L1175:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 488(%rax)
	movl	$1, %eax
	jmp	.L1135
.L1139:
	cmpq	$0, -40(%rbp)
	jle	.L1176
	cmpq	$32, -40(%rbp)
	jle	.L1177
.L1176:
	movl	$0, %eax
	jmp	.L1135
.L1177:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 504(%rax)
	movl	$1, %eax
	jmp	.L1135
.L1144:
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movl	%edx, 28(%rax)
	movl	28(%rax), %eax
	movl	%eax, %eax
	jmp	.L1135
.L1143:
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	notl	%eax
	andl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movl	%edx, 28(%rax)
	movl	28(%rax), %eax
	movl	%eax, %eax
	jmp	.L1135
.L1142:
	movq	-24(%rbp), %rax
	movl	328(%rax), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, %esi
	movl	%edx, %edi
	call	ssl_check_allowed_versions
	testl	%eax, %eax
	je	.L1178
	movq	-24(%rbp), %rax
	leaq	324(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ssl_set_version_bound@PLT
	testl	%eax, %eax
	je	.L1178
	movl	$1, %eax
	jmp	.L1179
.L1178:
	movl	$0, %eax
.L1179:
	cltq
	jmp	.L1135
.L1138:
	movq	-24(%rbp), %rax
	movl	324(%rax), %eax
	cltq
	jmp	.L1135
.L1141:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	324(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ssl_check_allowed_versions
	testl	%eax, %eax
	je	.L1180
	movq	-24(%rbp), %rax
	leaq	328(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ssl_set_version_bound@PLT
	testl	%eax, %eax
	je	.L1180
	movl	$1, %eax
	jmp	.L1181
.L1180:
	movl	$0, %eax
.L1181:
	cltq
	jmp	.L1135
.L1136:
	movq	-24(%rbp), %rax
	movl	328(%rax), %eax
	cltq
	jmp	.L1135
.L1137:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	160(%rax), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L1135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE997:
	.size	SSL_CTX_ctrl, .-SSL_CTX_ctrl
	.globl	SSL_CTX_callback_ctrl
	.type	SSL_CTX_callback_ctrl, @function
SSL_CTX_callback_ctrl:
.LFB998:
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
	cmpl	$15, -12(%rbp)
	jne	.L1183
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 368(%rax)
	movl	$1, %eax
	jmp	.L1184
.L1183:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	240(%rax), %r8
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
.L1184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE998:
	.size	SSL_CTX_callback_ctrl, .-SSL_CTX_callback_ctrl
	.globl	ssl_cipher_id_cmp
	.type	ssl_cipher_id_cmp, @function
ssl_cipher_id_cmp:
.LFB999:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %edx
	cmpl	%eax, %edx
	jnb	.L1186
	movl	$1, %eax
	jmp	.L1187
.L1186:
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	jnb	.L1188
	movl	$-1, %eax
	jmp	.L1187
.L1188:
	movl	$0, %eax
.L1187:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE999:
	.size	ssl_cipher_id_cmp, .-ssl_cipher_id_cmp
	.globl	ssl_cipher_ptr_id_cmp
	.type	ssl_cipher_ptr_id_cmp, @function
ssl_cipher_ptr_id_cmp:
.LFB1000:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	24(%rdx), %edx
	cmpl	%eax, %edx
	jnb	.L1190
	movl	$1, %eax
	jmp	.L1191
.L1190:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	jnb	.L1192
	movl	$-1, %eax
	jmp	.L1191
.L1192:
	movl	$0, %eax
.L1191:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1000:
	.size	ssl_cipher_ptr_id_cmp, .-ssl_cipher_ptr_id_cmp
	.globl	SSL_get_ciphers
	.type	SSL_get_ciphers, @function
SSL_get_ciphers:
.LFB1001:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1194
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1195
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1196
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1197
.L1196:
	movq	$0, -8(%rbp)
	jmp	.L1197
.L1195:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1197
.L1194:
	movq	$0, -8(%rbp)
.L1197:
	cmpq	$0, -8(%rbp)
	je	.L1198
	movq	-8(%rbp), %rax
	movq	1256(%rax), %rax
	testq	%rax, %rax
	je	.L1199
	movq	-8(%rbp), %rax
	movq	1256(%rax), %rax
	jmp	.L1200
.L1199:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1198
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L1198
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	jmp	.L1200
.L1198:
	movl	$0, %eax
.L1200:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1001:
	.size	SSL_get_ciphers, .-SSL_get_ciphers
	.globl	SSL_get_client_ciphers
	.type	SSL_get_client_ciphers, @function
SSL_get_client_ciphers:
.LFB1002:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1202
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1203
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1204
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1205
.L1204:
	movq	$0, -8(%rbp)
	jmp	.L1205
.L1203:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1205
.L1202:
	movq	$0, -8(%rbp)
.L1205:
	cmpq	$0, -8(%rbp)
	je	.L1206
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L1207
.L1206:
	movl	$0, %eax
	jmp	.L1208
.L1207:
	movq	-8(%rbp), %rax
	movq	1248(%rax), %rax
.L1208:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1002:
	.size	SSL_get_client_ciphers, .-SSL_get_client_ciphers
	.globl	SSL_get1_supported_ciphers
	.type	SSL_get1_supported_ciphers, @function
SSL_get1_supported_ciphers:
.LFB1003:
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
	movq	$0, -24(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L1210
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1211
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1212
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L1213
.L1212:
	movq	$0, -40(%rbp)
	jmp	.L1213
.L1211:
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L1213
.L1210:
	movq	$0, -40(%rbp)
.L1213:
	cmpq	$0, -40(%rbp)
	jne	.L1214
	movl	$0, %eax
	jmp	.L1215
.L1214:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_ciphers@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L1216
	movl	$0, %eax
	jmp	.L1215
.L1216:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_set_client_disabled@PLT
	testl	%eax, %eax
	jne	.L1217
	movl	$0, %eax
	jmp	.L1215
.L1217:
	movl	$0, -28(%rbp)
	jmp	.L1218
.L1222:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$65537, %edx
	movq	%rax, %rdi
	call	ssl_cipher_disabled@PLT
	testl	%eax, %eax
	jne	.L1219
	cmpq	$0, -24(%rbp)
	jne	.L1220
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -24(%rbp)
.L1220:
	cmpq	$0, -24(%rbp)
	jne	.L1221
	movl	$0, %eax
	jmp	.L1215
.L1221:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L1219
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L1215
.L1219:
	addl	$1, -28(%rbp)
.L1218:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L1222
	movq	-24(%rbp), %rax
.L1215:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1003:
	.size	SSL_get1_supported_ciphers, .-SSL_get1_supported_ciphers
	.globl	ssl_get_ciphers_by_id
	.type	ssl_get_ciphers_by_id, @function
ssl_get_ciphers_by_id:
.LFB1004:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1224
	movq	-8(%rbp), %rax
	movq	1264(%rax), %rax
	testq	%rax, %rax
	je	.L1225
	movq	-8(%rbp), %rax
	movq	1264(%rax), %rax
	jmp	.L1226
.L1225:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1224
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L1224
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	jmp	.L1226
.L1224:
	movl	$0, %eax
.L1226:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1004:
	.size	ssl_get_ciphers_by_id, .-ssl_get_ciphers_by_id
	.globl	SSL_get_cipher_list
	.type	SSL_get_cipher_list, @function
SSL_get_cipher_list:
.LFB1005:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L1228
	movl	$0, %eax
	jmp	.L1229
.L1228:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_ciphers@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1230
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L1231
.L1230:
	movl	$0, %eax
	jmp	.L1229
.L1231:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1232
	movl	$0, %eax
	jmp	.L1229
.L1232:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
.L1229:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1005:
	.size	SSL_get_cipher_list, .-SSL_get_cipher_list
	.globl	SSL_CTX_get_ciphers
	.type	SSL_CTX_get_ciphers, @function
SSL_CTX_get_ciphers:
.LFB1006:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1234
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L1235
.L1234:
	movl	$0, %eax
.L1235:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1006:
	.size	SSL_CTX_get_ciphers, .-SSL_CTX_get_ciphers
	.type	cipher_list_tls12_num, @function
cipher_list_tls12_num:
.LFB1007:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L1237
	movl	$0, %eax
	jmp	.L1238
.L1237:
	movl	$0, -4(%rbp)
	jmp	.L1239
.L1242:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	$771, %eax
	jg	.L1243
	addl	$1, -8(%rbp)
	jmp	.L1241
.L1243:
	nop
.L1241:
	addl	$1, -4(%rbp)
.L1239:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L1242
	movl	-8(%rbp), %eax
.L1238:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1007:
	.size	cipher_list_tls12_num, .-cipher_list_tls12_num
	.globl	SSL_CTX_set_cipher_list
	.type	SSL_CTX_set_cipher_list, @function
SSL_CTX_set_cipher_list:
.LFB1008:
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
	movq	344(%rax), %r8
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_create_cipher_list@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1245
	movl	$0, %eax
	jmp	.L1246
.L1245:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	call	*%rax
	testl	%eax, %eax
	jle	.L1247
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	cipher_list_tls12_num
	testl	%eax, %eax
	jne	.L1247
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3344, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$185, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1246
.L1247:
	movl	$1, %eax
.L1246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1008:
	.size	SSL_CTX_set_cipher_list, .-SSL_CTX_set_cipher_list
	.globl	SSL_set_cipher_list
	.type	SSL_set_cipher_list, @function
SSL_set_cipher_list:
.LFB1009:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L1249
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1250
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1251
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1252
.L1251:
	movq	$0, -8(%rbp)
	jmp	.L1252
.L1250:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1252
.L1249:
	movq	$0, -8(%rbp)
.L1252:
	cmpq	$0, -8(%rbp)
	jne	.L1253
	movl	$0, %eax
	jmp	.L1254
.L1253:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	2056(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	1264(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	1256(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	1272(%rax), %rsi
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_create_cipher_list@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L1255
	movl	$0, %eax
	jmp	.L1254
.L1255:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	call	*%rax
	testl	%eax, %eax
	jle	.L1256
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cipher_list_tls12_num
	testl	%eax, %eax
	jne	.L1256
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3368, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$185, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1254
.L1256:
	movl	$1, %eax
.L1254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1009:
	.size	SSL_set_cipher_list, .-SSL_set_cipher_list
	.globl	SSL_get_shared_ciphers
	.type	SSL_get_shared_ciphers, @function
SSL_get_shared_ciphers:
.LFB1010:
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
	movl	%edx, -100(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L1258
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1259
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1260
	movq	-88(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L1261
.L1260:
	movq	$0, -40(%rbp)
	jmp	.L1261
.L1259:
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L1261
.L1258:
	movq	$0, -40(%rbp)
.L1261:
	cmpq	$0, -40(%rbp)
	jne	.L1262
	movl	$0, %eax
	jmp	.L1263
.L1262:
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L1264
	movq	-40(%rbp), %rax
	movq	1248(%rax), %rax
	testq	%rax, %rax
	je	.L1264
	cmpl	$1, -100(%rbp)
	jg	.L1265
.L1264:
	movl	$0, %eax
	jmp	.L1263
.L1265:
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	1248(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_ciphers@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L1266
	cmpq	$0, -56(%rbp)
	jne	.L1267
.L1266:
	movl	$0, %eax
	jmp	.L1263
.L1267:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	je	.L1268
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L1269
.L1268:
	movl	$0, %eax
	jmp	.L1263
.L1269:
	movl	$0, -28(%rbp)
	jmp	.L1270
.L1275:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	testl	%eax, %eax
	js	.L1276
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strnlen@PLT
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L1273
	movq	-24(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L1274
	subq	$1, -24(%rbp)
.L1274:
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-96(%rbp), %rax
	jmp	.L1263
.L1273:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-68(%rbp), %eax
	cltq
	addq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$58, (%rax)
	movl	-68(%rbp), %eax
	addl	$1, %eax
	subl	%eax, -100(%rbp)
	jmp	.L1272
.L1276:
	nop
.L1272:
	addl	$1, -28(%rbp)
.L1270:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L1275
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movb	$0, (%rax)
	movq	-96(%rbp), %rax
.L1263:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1010:
	.size	SSL_get_shared_ciphers, .-SSL_get_shared_ciphers
	.globl	SSL_get_servername
	.type	SSL_get_servername, @function
SSL_get_servername:
.LFB1011:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1278
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1279
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1280
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1281
.L1280:
	movq	$0, -8(%rbp)
	jmp	.L1281
.L1279:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1281
.L1278:
	movq	$0, -8(%rbp)
.L1281:
	cmpq	$0, -8(%rbp)
	jne	.L1282
	movl	$0, %eax
	jmp	.L1283
.L1282:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L1284
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.L1285
.L1284:
	movl	$0, -12(%rbp)
.L1285:
	cmpl	$0, -28(%rbp)
	je	.L1286
	movl	$0, %eax
	jmp	.L1283
.L1286:
	cmpl	$0, -12(%rbp)
	je	.L1287
	movq	-8(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L1288
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1289
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L1289
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L1288
.L1289:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	800(%rax), %rax
	jmp	.L1283
.L1287:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_before@PLT
	testl	%eax, %eax
	je	.L1290
	movq	-8(%rbp), %rax
	movq	2472(%rax), %rax
	testq	%rax, %rax
	jne	.L1288
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L1288
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movl	(%rax), %eax
	cmpl	$772, %eax
	je	.L1288
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	800(%rax), %rax
	jmp	.L1283
.L1290:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1291
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L1291
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L1288
.L1291:
	movq	-8(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L1288
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	je	.L1288
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	800(%rax), %rax
	jmp	.L1283
.L1288:
	movq	-8(%rbp), %rax
	movq	2472(%rax), %rax
.L1283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1011:
	.size	SSL_get_servername, .-SSL_get_servername
	.globl	SSL_get_servername_type
	.type	SSL_get_servername_type, @function
SSL_get_servername_type:
.LFB1012:
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
	call	SSL_get_servername@PLT
	testq	%rax, %rax
	je	.L1293
	movl	$0, %eax
	jmp	.L1294
.L1293:
	movl	$-1, %eax
.L1294:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1012:
	.size	SSL_get_servername_type, .-SSL_get_servername_type
	.globl	SSL_select_next_proto
	.type	SSL_select_next_proto, @function
SSL_select_next_proto:
.LFB1013:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	%r8, -120(%rbp)
	movl	%r9d, -112(%rbp)
	movl	-112(%rbp), %edx
	movq	-120(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L1296
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L1296
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L1297
.L1296:
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	-96(%rbp), %rax
	movb	$0, (%rax)
	movl	$2, %eax
	jmp	.L1306
.L1297:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
	movl	-108(%rbp), %edx
	movq	-104(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L1299
	jmp	.L1300
.L1305:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L1301
	jmp	.L1300
.L1301:
	movl	-112(%rbp), %edx
	movq	-120(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L1302
	jmp	.L1303
.L1304:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	je	.L1303
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
	movl	$1, %eax
	jmp	.L1306
.L1303:
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L1304
	jmp	.L1300
.L1302:
	movl	$2, %eax
	jmp	.L1306
.L1300:
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L1305
.L1299:
	movl	$2, %eax
.L1306:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1013:
	.size	SSL_select_next_proto, .-SSL_select_next_proto
	.globl	SSL_get0_next_proto_negotiated
	.type	SSL_get0_next_proto_negotiated, @function
SSL_get0_next_proto_negotiated:
.LFB1014:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1308
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1309
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1310
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1311
.L1310:
	movq	$0, -8(%rbp)
	jmp	.L1311
.L1309:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1311
.L1308:
	movq	$0, -8(%rbp)
.L1311:
	cmpq	$0, -8(%rbp)
	jne	.L1312
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L1307
.L1312:
	movq	-8(%rbp), %rax
	movq	2664(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L1314
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L1307
.L1314:
	movq	-8(%rbp), %rax
	movq	2672(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L1307:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1014:
	.size	SSL_get0_next_proto_negotiated, .-SSL_get0_next_proto_negotiated
	.globl	SSL_CTX_set_next_protos_advertised_cb
	.type	SSL_CTX_set_next_protos_advertised_cb, @function
SSL_CTX_set_next_protos_advertised_cb:
.LFB1015:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_method@PLT
	cmpq	%rax, %rbx
	je	.L1319
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, %rbx
	je	.L1319
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 704(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 712(%rax)
	jmp	.L1315
.L1319:
	nop
.L1315:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1015:
	.size	SSL_CTX_set_next_protos_advertised_cb, .-SSL_CTX_set_next_protos_advertised_cb
	.globl	SSL_CTX_set_next_proto_select_cb
	.type	SSL_CTX_set_next_proto_select_cb, @function
SSL_CTX_set_next_proto_select_cb:
.LFB1016:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_method@PLT
	cmpq	%rax, %rbx
	je	.L1324
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, %rbx
	je	.L1324
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 720(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 728(%rax)
	jmp	.L1320
.L1324:
	nop
.L1320:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1016:
	.size	SSL_CTX_set_next_proto_select_cb, .-SSL_CTX_set_next_proto_select_cb
	.type	alpn_value_ok, @function
alpn_value_ok:
.LFB1017:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$1, -28(%rbp)
	jbe	.L1326
	cmpq	$0, -24(%rbp)
	jne	.L1327
.L1326:
	movl	$0, %eax
	jmp	.L1328
.L1327:
	movl	$0, -4(%rbp)
	jmp	.L1329
.L1331:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L1330
	movl	$0, %eax
	jmp	.L1328
.L1330:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.L1329:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L1331
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	sete	%al
	movzbl	%al, %eax
.L1328:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1017:
	.size	alpn_value_ok, .-alpn_value_ok
	.globl	SSL_CTX_set_alpn_protos
	.type	SSL_CTX_set_alpn_protos, @function
SSL_CTX_set_alpn_protos:
.LFB1018:
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
	cmpl	$0, -36(%rbp)
	je	.L1333
	cmpq	$0, -32(%rbp)
	jne	.L1334
.L1333:
	movq	-24(%rbp), %rax
	movq	688(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$3686, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 688(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 696(%rax)
	movl	$0, %eax
	jmp	.L1335
.L1334:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	alpn_value_ok
	testl	%eax, %eax
	jne	.L1336
	movl	$1, %eax
	jmp	.L1335
.L1336:
	movl	-36(%rbp), %esi
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$3695, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1337
	movl	$1, %eax
	jmp	.L1335
.L1337:
	movq	-24(%rbp), %rax
	movq	688(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$3698, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 688(%rax)
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rdx, 696(%rax)
	movl	$0, %eax
.L1335:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1018:
	.size	SSL_CTX_set_alpn_protos, .-SSL_CTX_set_alpn_protos
	.globl	SSL_set_alpn_protos
	.type	SSL_set_alpn_protos, @function
SSL_set_alpn_protos:
.LFB1019:
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
	cmpq	$0, -24(%rbp)
	je	.L1339
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1340
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1341
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1342
.L1341:
	movq	$0, -8(%rbp)
	jmp	.L1342
.L1340:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1342
.L1339:
	movq	$0, -8(%rbp)
.L1342:
	cmpq	$0, -8(%rbp)
	jne	.L1343
	movl	$1, %eax
	jmp	.L1344
.L1343:
	cmpl	$0, -36(%rbp)
	je	.L1345
	cmpq	$0, -32(%rbp)
	jne	.L1346
.L1345:
	movq	-8(%rbp), %rax
	movq	2648(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$3720, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2648(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 2656(%rax)
	movl	$0, %eax
	jmp	.L1344
.L1346:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	alpn_value_ok
	testl	%eax, %eax
	jne	.L1347
	movl	$1, %eax
	jmp	.L1344
.L1347:
	movl	-36(%rbp), %esi
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$3729, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1348
	movl	$1, %eax
	jmp	.L1344
.L1348:
	movq	-8(%rbp), %rax
	movq	2648(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$3732, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 2648(%rax)
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rdx, 2656(%rax)
	movl	$0, %eax
.L1344:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1019:
	.size	SSL_set_alpn_protos, .-SSL_set_alpn_protos
	.globl	SSL_CTX_set_alpn_select_cb
	.type	SSL_CTX_set_alpn_select_cb, @function
SSL_CTX_set_alpn_select_cb:
.LFB1020:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 672(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 680(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1020:
	.size	SSL_CTX_set_alpn_select_cb, .-SSL_CTX_set_alpn_select_cb
	.globl	SSL_get0_alpn_selected
	.type	SSL_get0_alpn_selected, @function
SSL_get0_alpn_selected:
.LFB1021:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1351
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1352
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1353
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1354
.L1353:
	movq	$0, -8(%rbp)
	jmp	.L1354
.L1352:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1354
.L1351:
	movq	$0, -8(%rbp)
.L1354:
	cmpq	$0, -8(%rbp)
	jne	.L1355
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L1350
.L1355:
	movq	-8(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L1357
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L1350
.L1357:
	movq	-8(%rbp), %rax
	movq	1104(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L1350:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1021:
	.size	SSL_get0_alpn_selected, .-SSL_get0_alpn_selected
	.globl	SSL_export_keying_material
	.type	SSL_export_keying_material, @function
SSL_export_keying_material:
.LFB1022:
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
	movq	%r9, -64(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1359
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1360
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1361
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1362
.L1361:
	movq	$0, -8(%rbp)
	jmp	.L1362
.L1360:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1362
.L1359:
	movq	$0, -8(%rbp)
.L1362:
	cmpq	$0, -8(%rbp)
	jne	.L1363
	movl	$-1, %eax
	jmp	.L1364
.L1363:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L1365
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jg	.L1366
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$256, %eax
	je	.L1366
.L1365:
	movl	$-1, %eax
	jmp	.L1364
.L1366:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	72(%rax), %r10
	movq	-64(%rbp), %r9
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	24(%rbp), %edi
	pushq	%rdi
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
.L1364:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1022:
	.size	SSL_export_keying_material, .-SSL_export_keying_material
	.globl	SSL_export_keying_material_early
	.type	SSL_export_keying_material_early, @function
SSL_export_keying_material_early:
.LFB1023:
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
	movq	%r9, -64(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1368
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1369
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1370
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1371
.L1370:
	movq	$0, -8(%rbp)
	jmp	.L1371
.L1369:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1371
.L1368:
	movq	$0, -8(%rbp)
.L1371:
	cmpq	$0, -8(%rbp)
	jne	.L1372
	movl	$-1, %eax
	jmp	.L1373
.L1372:
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$772, %eax
	je	.L1374
	movl	$0, %eax
	jmp	.L1373
.L1374:
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls13_export_keying_material_early@PLT
	addq	$16, %rsp
.L1373:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1023:
	.size	SSL_export_keying_material_early, .-SSL_export_keying_material_early
	.type	ssl_session_hash, @function
ssl_session_hash:
.LFB1024:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$600, %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	592(%rax), %rax
	cmpq	$3, %rax
	ja	.L1376
	leaq	-20(%rbp), %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rax
	movq	592(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	600(%rax), %rcx
	leaq	-20(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-20(%rbp), %rax
	movq	%rax, -8(%rbp)
.L1376:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1024:
	.size	ssl_session_hash, .-ssl_session_hash
	.type	ssl_session_cmp, @function
ssl_session_cmp:
.LFB1025:
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
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L1379
	movl	$1, %eax
	jmp	.L1380
.L1379:
	movq	-8(%rbp), %rax
	movq	592(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	592(%rax), %rax
	cmpq	%rax, %rdx
	je	.L1381
	movl	$1, %eax
	jmp	.L1380
.L1381:
	movq	-8(%rbp), %rax
	movq	592(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	600(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	600(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcmp@PLT
.L1380:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1025:
	.size	ssl_session_cmp, .-ssl_session_cmp
	.globl	SSL_CTX_new_ex
	.type	SSL_CTX_new_ex, @function
SSL_CTX_new_ex:
.LFB1026:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L1383
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3866, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$196, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1384
.L1383:
	movl	$0, %esi
	movl	$2097152, %edi
	call	OPENSSL_init_ssl@PLT
	testl	%eax, %eax
	jne	.L1385
	movl	$0, %eax
	jmp	.L1384
.L1385:
	call	SSL_get_ex_data_X509_STORE_CTX_idx@PLT
	testl	%eax, %eax
	jns	.L1386
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3875, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$269, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1386:
	leaq	.LC1(%rip), %rax
	movl	$3879, %edx
	movq	%rax, %rsi
	movl	$1704, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L1388
	movl	$0, %eax
	jmp	.L1384
.L1388:
	movq	-24(%rbp), %rax
	addq	$164, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L1389
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$3885, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L1384
.L1389:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 976(%rdx)
	movq	-24(%rbp), %rax
	movq	976(%rax), %rax
	testq	%rax, %rax
	jne	.L1390
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3891, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1390:
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -48(%rbp)
	je	.L1391
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$3905, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 1096(%rdx)
	movq	-24(%rbp), %rax
	movq	1096(%rax), %rax
	testq	%rax, %rax
	je	.L1413
.L1391:
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 324(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 328(%rax)
	movq	-24(%rbp), %rax
	movl	$4, 320(%rax)
	movq	-24(%rbp), %rax
	movl	$2, 80(%rax)
	movq	-24(%rbp), %rax
	movq	$20480, 56(%rax)
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	movq	-24(%rbp), %rbx
	call	*%rax
	movq	%rax, 88(%rbx)
	movq	-24(%rbp), %rax
	movq	$102400, 336(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 384(%rax)
	leaq	ssl_session_cmp(%rip), %rdx
	leaq	ssl_session_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SSL_SESSION_new
	movq	-24(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L1392
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3923, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1392:
	call	X509_STORE_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L1393
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3928, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1393:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CTLOG_STORE_new_ex@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 464(%rdx)
	movq	-24(%rbp), %rax
	movq	464(%rax), %rax
	testq	%rax, %rax
	jne	.L1394
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3934, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524338, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1394:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_load_ciphers@PLT
	testl	%eax, %eax
	jne	.L1395
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3941, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524308, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1395:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_load_groups@PLT
	testl	%eax, %eax
	jne	.L1396
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3946, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524308, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1396:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_load_sigalgs@PLT
	testl	%eax, %eax
	jne	.L1397
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3952, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524308, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1397:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_setup_sigalgs@PLT
	testl	%eax, %eax
	jne	.L1398
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3958, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524308, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1398:
	call	OSSL_default_ciphersuites@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	testl	%eax, %eax
	jne	.L1399
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3963, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524308, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1399:
	movq	-24(%rbp), %rax
	movq	1632(%rax), %rax
	addq	$9, %rax
	movq	%rax, %rdi
	call	ssl_cert_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 344(%rdx)
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	testq	%rax, %rax
	jne	.L1400
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3968, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524308, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1400:
	movq	-24(%rbp), %rax
	movq	344(%rax), %rbx
	call	OSSL_default_cipher_list@PLT
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rbx, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_create_cipher_list@PLT
	testq	%rax, %rax
	je	.L1401
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L1402
.L1401:
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3977, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$161, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1402:
	call	X509_VERIFY_PARAM_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 448(%rdx)
	movq	-24(%rbp), %rax
	movq	448(%rax), %rax
	testq	%rax, %rax
	jne	.L1403
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3983, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1403:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ssl_evp_md_fetch@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 256(%rdx)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ssl_evp_md_fetch@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 264(%rdx)
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 296(%rdx)
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	jne	.L1404
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3995, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1404:
	call	OPENSSL_sk_new_null@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 304(%rdx)
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	jne	.L1405
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1405:
	movq	-24(%rbp), %rax
	leaq	240(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	jne	.L1406
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4005, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1406:
	leaq	.LC1(%rip), %rax
	movl	$4009, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_secure_zalloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 576(%rax)
	movq	-24(%rbp), %rax
	movq	576(%rax), %rax
	testq	%rax, %rax
	je	.L1414
	movq	-56(%rbp), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1408
	call	SSL_COMP_get_compression_methods@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 280(%rdx)
.L1408:
	movq	-24(%rbp), %rax
	movq	$16384, 496(%rax)
	movq	-24(%rbp), %rax
	movq	$16384, 488(%rax)
	movq	-24(%rbp), %rax
	leaq	560(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L1409
	movq	-24(%rbp), %rax
	movq	576(%rax), %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L1409
	movq	-24(%rbp), %rax
	movq	576(%rax), %rax
	leaq	32(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L1410
.L1409:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	orb	$64, %ah
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 312(%rax)
.L1410:
	movq	-24(%rbp), %rax
	leaq	736(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L1411
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4030, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524324, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1411:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_ctx_srp_ctx_init_intern@PLT
	testl	%eax, %eax
	jne	.L1412
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4036, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524308, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L1387
.L1412:
	movq	-24(%rbp), %rax
	movq	312(%rax), %rax
	orq	$1179648, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 312(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 616(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 992(%rax)
	movq	-24(%rbp), %rax
	movl	$16384, 996(%rax)
	movq	-24(%rbp), %rax
	movq	$2, 1048(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_ctx_system_config@PLT
	movq	-24(%rbp), %rax
	jmp	.L1384
.L1413:
	nop
	jmp	.L1387
.L1414:
	nop
.L1387:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	$0, %eax
.L1384:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1026:
	.size	SSL_CTX_new_ex, .-SSL_CTX_new_ex
	.globl	SSL_CTX_new
	.type	SSL_CTX_new, @function
SSL_CTX_new:
.LFB1027:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	SSL_CTX_new_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1027:
	.size	SSL_CTX_new, .-SSL_CTX_new
	.globl	SSL_CTX_up_ref
	.type	SSL_CTX_up_ref, @function
SSL_CTX_up_ref:
.LFB1028:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	164(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L1418
	movl	$0, %eax
	jmp	.L1420
.L1418:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L1420:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1028:
	.size	SSL_CTX_up_ref, .-SSL_CTX_up_ref
	.globl	SSL_CTX_free
	.type	SSL_CTX_free, @function
SSL_CTX_free:
.LFB1029:
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
	cmpq	$0, -40(%rbp)
	je	.L1435
	movq	-40(%rbp), %rax
	leaq	164(%rax), %rdx
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jg	.L1436
	movq	-40(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
	movq	-40(%rbp), %rax
	addq	$928, %rax
	movq	%rax, %rdi
	call	dane_ctx_final
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L1425
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_flush_sessions@PLT
.L1425:
	movq	-40(%rbp), %rax
	leaq	240(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	lh_SSL_SESSION_free
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-40(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, %rdi
	call	CTLOG_STORE_free@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	ssl_cert_free@PLT
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-40(%rbp), %rax
	movq	960(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SRTP_PROTECTION_PROFILE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_ctx_srp_ctx_free_intern@PLT
	movq	-40(%rbp), %rax
	movq	520(%rax), %rax
	movq	%rax, %rdi
	call	tls_engine_finish@PLT
	movq	-40(%rbp), %rax
	movq	632(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4194, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	648(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4195, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	656(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4196, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	688(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4197, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	576(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4198, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_free@PLT
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	call	ssl_evp_md_free@PLT
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	call	ssl_evp_md_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L1426
.L1427:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$144, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ssl_evp_cipher_free@PLT
	addq	$1, -24(%rbp)
.L1426:
	cmpq	$23, -24(%rbp)
	jbe	.L1427
	movq	$0, -24(%rbp)
	jmp	.L1428
.L1429:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$168, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ssl_evp_md_free@PLT
	addq	$1, -24(%rbp)
.L1428:
	cmpq	$13, -24(%rbp)
	jbe	.L1429
	movq	$0, -24(%rbp)
	jmp	.L1430
.L1431:
	movq	-40(%rbp), %rax
	movq	1600(%rax), %rdx
	movq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4208, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1600(%rax), %rdx
	movq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4209, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1600(%rax), %rdx
	movq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4210, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addq	$1, -24(%rbp)
.L1430:
	movq	-40(%rbp), %rax
	movq	1608(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L1431
	movq	-40(%rbp), %rax
	movq	1600(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4212, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L1432
.L1433:
	movq	-40(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4214, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4215, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	24(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4216, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	32(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4217, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	40(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	48(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4219, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	56(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4220, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	64(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4221, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1624(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	72(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4222, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addq	$1, -24(%rbp)
.L1432:
	movq	-40(%rbp), %rax
	movq	1632(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L1433
	movq	-40(%rbp), %rax
	movq	1624(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4224, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4225, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1584(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4227, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1592(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4228, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1664(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4230, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1680(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4231, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-40(%rbp), %rax
	addq	$164, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	movq	-40(%rbp), %rax
	movq	1096(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4239, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	1696(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$4241, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$4244, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L1421
.L1435:
	nop
	jmp	.L1421
.L1436:
	nop
.L1421:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1029:
	.size	SSL_CTX_free, .-SSL_CTX_free
	.globl	SSL_CTX_set_default_passwd_cb
	.type	SSL_CTX_set_default_passwd_cb, @function
SSL_CTX_set_default_passwd_cb:
.LFB1030:
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
	movq	%rdx, 184(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1030:
	.size	SSL_CTX_set_default_passwd_cb, .-SSL_CTX_set_default_passwd_cb
	.globl	SSL_CTX_set_default_passwd_cb_userdata
	.type	SSL_CTX_set_default_passwd_cb_userdata, @function
SSL_CTX_set_default_passwd_cb_userdata:
.LFB1031:
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
	movq	%rdx, 192(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1031:
	.size	SSL_CTX_set_default_passwd_cb_userdata, .-SSL_CTX_set_default_passwd_cb_userdata
	.globl	SSL_CTX_get_default_passwd_cb
	.type	SSL_CTX_get_default_passwd_cb, @function
SSL_CTX_get_default_passwd_cb:
.LFB1032:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1032:
	.size	SSL_CTX_get_default_passwd_cb, .-SSL_CTX_get_default_passwd_cb
	.globl	SSL_CTX_get_default_passwd_cb_userdata
	.type	SSL_CTX_get_default_passwd_cb_userdata, @function
SSL_CTX_get_default_passwd_cb_userdata:
.LFB1033:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1033:
	.size	SSL_CTX_get_default_passwd_cb_userdata, .-SSL_CTX_get_default_passwd_cb_userdata
	.globl	SSL_set_default_passwd_cb
	.type	SSL_set_default_passwd_cb, @function
SSL_set_default_passwd_cb:
.LFB1034:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1444
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1445
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1446
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1447
.L1446:
	movq	$0, -8(%rbp)
	jmp	.L1447
.L1445:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1447
.L1444:
	movq	$0, -8(%rbp)
.L1447:
	cmpq	$0, -8(%rbp)
	je	.L1450
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 5240(%rax)
	jmp	.L1443
.L1450:
	nop
.L1443:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1034:
	.size	SSL_set_default_passwd_cb, .-SSL_set_default_passwd_cb
	.globl	SSL_set_default_passwd_cb_userdata
	.type	SSL_set_default_passwd_cb_userdata, @function
SSL_set_default_passwd_cb_userdata:
.LFB1035:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1452
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1453
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1454
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1455
.L1454:
	movq	$0, -8(%rbp)
	jmp	.L1455
.L1453:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1455
.L1452:
	movq	$0, -8(%rbp)
.L1455:
	cmpq	$0, -8(%rbp)
	je	.L1458
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 5248(%rax)
	jmp	.L1451
.L1458:
	nop
.L1451:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1035:
	.size	SSL_set_default_passwd_cb_userdata, .-SSL_set_default_passwd_cb_userdata
	.globl	SSL_get_default_passwd_cb
	.type	SSL_get_default_passwd_cb, @function
SSL_get_default_passwd_cb:
.LFB1036:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1460
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1461
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1462
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1463
.L1462:
	movq	$0, -8(%rbp)
	jmp	.L1463
.L1461:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1463
.L1460:
	movq	$0, -8(%rbp)
.L1463:
	cmpq	$0, -8(%rbp)
	jne	.L1464
	movl	$0, %eax
	jmp	.L1465
.L1464:
	movq	-8(%rbp), %rax
	movq	5240(%rax), %rax
.L1465:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1036:
	.size	SSL_get_default_passwd_cb, .-SSL_get_default_passwd_cb
	.globl	SSL_get_default_passwd_cb_userdata
	.type	SSL_get_default_passwd_cb_userdata, @function
SSL_get_default_passwd_cb_userdata:
.LFB1037:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1467
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1468
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1469
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1470
.L1469:
	movq	$0, -8(%rbp)
	jmp	.L1470
.L1468:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1470
.L1467:
	movq	$0, -8(%rbp)
.L1470:
	cmpq	$0, -8(%rbp)
	jne	.L1471
	movl	$0, %eax
	jmp	.L1472
.L1471:
	movq	-8(%rbp), %rax
	movq	5248(%rax), %rax
.L1472:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1037:
	.size	SSL_get_default_passwd_cb_userdata, .-SSL_get_default_passwd_cb_userdata
	.globl	SSL_CTX_set_cert_verify_callback
	.type	SSL_CTX_set_cert_verify_callback, @function
SSL_CTX_set_cert_verify_callback:
.LFB1038:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 168(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 176(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1038:
	.size	SSL_CTX_set_cert_verify_callback, .-SSL_CTX_set_cert_verify_callback
	.globl	SSL_CTX_set_verify
	.type	SSL_CTX_set_verify, @function
SSL_CTX_set_verify:
.LFB1039:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 384(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 432(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1039:
	.size	SSL_CTX_set_verify, .-SSL_CTX_set_verify
	.globl	SSL_CTX_set_verify_depth
	.type	SSL_CTX_set_verify_depth, @function
SSL_CTX_set_verify_depth:
.LFB1040:
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
	movq	448(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_depth@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1040:
	.size	SSL_CTX_set_verify_depth, .-SSL_CTX_set_verify_depth
	.globl	SSL_CTX_set_cert_cb
	.type	SSL_CTX_set_cert_cb, @function
SSL_CTX_set_cert_cb:
.LFB1041:
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
	movq	344(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_set_cert_cb@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1041:
	.size	SSL_CTX_set_cert_cb, .-SSL_CTX_set_cert_cb
	.globl	SSL_set_cert_cb
	.type	SSL_set_cert_cb, @function
SSL_set_cert_cb:
.LFB1042:
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
	cmpq	$0, -24(%rbp)
	je	.L1478
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1479
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1480
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1481
.L1480:
	movq	$0, -8(%rbp)
	jmp	.L1481
.L1479:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1481
.L1478:
	movq	$0, -8(%rbp)
.L1481:
	cmpq	$0, -8(%rbp)
	je	.L1484
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_cert_set_cert_cb@PLT
	jmp	.L1477
.L1484:
	nop
.L1477:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1042:
	.size	SSL_set_cert_cb, .-SSL_set_cert_cb
	.globl	ssl_set_masks
	.type	ssl_set_masks, @function
ssl_set_masks:
.LFB1043:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	920(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L1511
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L1488
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L1488
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L1489
.L1488:
	movl	$1, %eax
	jmp	.L1490
.L1489:
	movl	$0, %eax
.L1490:
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	andl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	ssl_has_cert
	testl	%eax, %eax
	je	.L1491
	orq	$528, -8(%rbp)
	orq	$128, -16(%rbp)
.L1491:
	movq	-72(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	ssl_has_cert
	testl	%eax, %eax
	je	.L1492
	orq	$528, -8(%rbp)
	orq	$128, -16(%rbp)
.L1492:
	movq	-72(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ssl_has_cert
	testl	%eax, %eax
	je	.L1493
	orq	$16, -8(%rbp)
	orq	$32, -16(%rbp)
.L1493:
	cmpl	$0, -48(%rbp)
	je	.L1494
	orq	$1, -8(%rbp)
.L1494:
	cmpl	$0, -44(%rbp)
	je	.L1495
	orq	$2, -8(%rbp)
.L1495:
	cmpl	$0, -48(%rbp)
	jne	.L1496
	cmpl	$0, -52(%rbp)
	jne	.L1496
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl_has_cert
	testl	%eax, %eax
	je	.L1497
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1497
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	sarl	$8, %eax
	cmpl	$3, %eax
	jne	.L1497
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	cmpl	$771, %eax
	jne	.L1497
.L1496:
	orq	$1, -16(%rbp)
.L1497:
	cmpl	$0, -56(%rbp)
	je	.L1498
	orq	$2, -16(%rbp)
.L1498:
	orq	$4, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1499
	orq	$1, -16(%rbp)
	orq	$1, -8(%rbp)
.L1499:
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1500
	orq	$8, -16(%rbp)
.L1500:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	sarl	$8, %eax
	cmpl	$3, %eax
	jne	.L1501
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	cmpl	$771, %eax
	jne	.L1501
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1502
	orq	$1, -16(%rbp)
.L1502:
	movq	-40(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L1503
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L1501
.L1503:
	orq	$8, -16(%rbp)
.L1501:
	cmpl	$0, -60(%rbp)
	je	.L1504
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	addq	$120, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_key_usage@PLT
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	andl	$128, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L1505
	movl	$0, -20(%rbp)
.L1505:
	cmpl	$0, -20(%rbp)
	je	.L1504
	orq	$8, -16(%rbp)
.L1504:
	movq	-16(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1506
	movq	-72(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	ssl_has_cert
	testl	%eax, %eax
	je	.L1506
	movq	-40(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1506
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	sarl	$8, %eax
	cmpl	$3, %eax
	jne	.L1506
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	cmpl	$771, %eax
	jne	.L1506
	orq	$8, -16(%rbp)
.L1506:
	movq	-16(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L1507
	movq	-72(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ssl_has_cert
	testl	%eax, %eax
	je	.L1507
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1507
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	sarl	$8, %eax
	cmpl	$3, %eax
	jne	.L1507
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	cmpl	$771, %eax
	jne	.L1507
	orq	$8, -16(%rbp)
.L1507:
	orq	$4, -8(%rbp)
	orq	$8, -8(%rbp)
	orq	$16, -16(%rbp)
	movq	-8(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L1508
	orq	$64, -8(%rbp)
.L1508:
	movq	-8(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L1509
	orq	$256, -8(%rbp)
.L1509:
	movq	-8(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L1510
	orq	$128, -8(%rbp)
.L1510:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 928(%rax)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 932(%rax)
	jmp	.L1485
.L1511:
	nop
.L1485:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1043:
	.size	ssl_set_masks, .-ssl_set_masks
	.globl	ssl_check_srvr_ecc_cert_and_alg
	.type	ssl_check_srvr_ecc_cert_and_alg, @function
ssl_check_srvr_ecc_cert_and_alg:
.LFB1044:
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
	movq	704(%rax), %rax
	movl	32(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L1513
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_key_usage@PLT
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L1513
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4469, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$318, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1514
.L1513:
	movl	$1, %eax
.L1514:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1044:
	.size	ssl_check_srvr_ecc_cert_and_alg, .-ssl_check_srvr_ecc_cert_and_alg
	.globl	ssl_get_server_cert_serverinfo
	.type	ssl_get_server_cert_serverinfo, @function
ssl_get_server_cert_serverinfo:
.LFB1045:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	872(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -8(%rbp)
	je	.L1516
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L1517
.L1516:
	movl	$0, %eax
	jmp	.L1518
.L1517:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L1518:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1045:
	.size	ssl_get_server_cert_serverinfo, .-ssl_get_server_cert_serverinfo
	.globl	ssl_update_cache
	.type	ssl_update_cache, @function
ssl_update_cache:
.LFB1046:
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
	movq	2184(%rax), %rax
	movq	592(%rax), %rax
	testq	%rax, %rax
	je	.L1531
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movl	688(%rax), %eax
	testl	%eax, %eax
	jne	.L1531
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L1523
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	632(%rax), %rax
	testq	%rax, %rax
	jne	.L1523
	movq	-24(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L1532
.L1523:
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	movl	80(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	andl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L1524
	movq	-24(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L1525
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1524
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L1524
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L1524
.L1525:
	movl	-12(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L1526
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L1527
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L1527
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L1527
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L1527
	movq	-24(%rbp), %rax
	movl	5280(%rax), %eax
	testl	%eax, %eax
	je	.L1528
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$16777216, %eax
	testq	%rax, %rax
	je	.L1527
.L1528:
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L1527
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$16384, %eax
	testq	%rax, %rax
	je	.L1526
.L1527:
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_add_session@PLT
.L1526:
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L1524
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_up_ref@PLT
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	movq	96(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L1524
	movq	-24(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
.L1524:
	movl	-12(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L1519
	movl	-12(%rbp), %eax
	andl	-28(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L1519
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L1529
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	subq	$-128, %rax
	movq	%rax, -8(%rbp)
	jmp	.L1530
.L1529:
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	addq	$140, %rax
	movq	%rax, -8(%rbp)
.L1530:
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_load
	movzbl	%al, %eax
	cmpl	$255, %eax
	jne	.L1519
	movl	$0, %edi
	call	time@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_flush_sessions@PLT
	jmp	.L1519
.L1531:
	nop
	jmp	.L1519
.L1532:
	nop
.L1519:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1046:
	.size	ssl_update_cache, .-ssl_update_cache
	.globl	SSL_CTX_get_ssl_method
	.type	SSL_CTX_get_ssl_method, @function
SSL_CTX_get_ssl_method:
.LFB1047:
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
.LFE1047:
	.size	SSL_CTX_get_ssl_method, .-SSL_CTX_get_ssl_method
	.globl	SSL_get_ssl_method
	.type	SSL_get_ssl_method, @function
SSL_get_ssl_method:
.LFB1048:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1048:
	.size	SSL_get_ssl_method, .-SSL_get_ssl_method
	.globl	SSL_set_ssl_method
	.type	SSL_set_ssl_method, @function
SSL_set_ssl_method:
.LFB1049:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L1538
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1539
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1540
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L1541
.L1540:
	movq	$0, -16(%rbp)
	jmp	.L1541
.L1539:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L1541
.L1538:
	movq	$0, -16(%rbp)
.L1541:
	cmpq	$0, -16(%rbp)
	je	.L1542
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1543
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L1542
.L1543:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1544
	call	OSSL_QUIC_client_method@PLT
	cmpq	%rax, -48(%rbp)
	je	.L1542
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, -48(%rbp)
	jne	.L1544
.L1542:
	movl	$0, %eax
	jmp	.L1545
.L1544:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -48(%rbp)
	je	.L1546
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L1547
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 24(%rax)
	jmp	.L1548
.L1547:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L1548:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L1549
	movq	-48(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 112(%rax)
	jmp	.L1546
.L1549:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L1546
	movq	-48(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 112(%rax)
.L1546:
	movl	-4(%rbp), %eax
.L1545:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1049:
	.size	SSL_set_ssl_method, .-SSL_set_ssl_method
	.globl	SSL_get_error
	.type	SSL_get_error, @function
SSL_get_error:
.LFB1050:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_ssl_get_error@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1050:
	.size	SSL_get_error, .-SSL_get_error
	.globl	ossl_ssl_get_error
	.type	ossl_ssl_get_error, @function
ossl_ssl_get_error:
.LFB1051:
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
	cmpq	$0, -40(%rbp)
	je	.L1553
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1554
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1555
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1556
.L1555:
	movq	$0, -8(%rbp)
	jmp	.L1556
.L1554:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1556
.L1553:
	movq	$0, -8(%rbp)
.L1556:
	cmpl	$0, -44(%rbp)
	jle	.L1557
	movl	$0, %eax
	jmp	.L1558
.L1557:
	cmpq	$0, -40(%rbp)
	je	.L1559
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1560
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1559
.L1560:
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_get_error@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L1559
	movl	-12(%rbp), %eax
	jmp	.L1558
.L1559:
	cmpq	$0, -8(%rbp)
	jne	.L1561
	movl	$1, %eax
	jmp	.L1558
.L1561:
	cmpl	$0, -48(%rbp)
	je	.L1562
	call	ERR_peek_error@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1562
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$2, %eax
	jne	.L1563
	movl	$5, %eax
	jmp	.L1558
.L1563:
	movl	$1, %eax
	jmp	.L1558
.L1562:
	cmpq	$0, -40(%rbp)
	je	.L1564
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1565
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L1565
.L1564:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	cmpl	$3, %eax
	jne	.L1566
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L1567
	movl	$2, %eax
	jmp	.L1558
.L1567:
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L1568
	movl	$3, %eax
	jmp	.L1558
.L1568:
	movq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L1566
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_retry_reason@PLT
	movl	%eax, -12(%rbp)
	cmpl	$2, -12(%rbp)
	jne	.L1569
	movl	$7, %eax
	jmp	.L1558
.L1569:
	cmpl	$3, -12(%rbp)
	jne	.L1570
	movl	$8, %eax
	jmp	.L1558
.L1570:
	movl	$5, %eax
	jmp	.L1558
.L1566:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	cmpl	$2, %eax
	jne	.L1565
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L1571
	movl	$3, %eax
	jmp	.L1558
.L1571:
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L1572
	movl	$2, %eax
	jmp	.L1558
.L1572:
	movq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L1565
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_retry_reason@PLT
	movl	%eax, -12(%rbp)
	cmpl	$2, -12(%rbp)
	jne	.L1573
	movl	$7, %eax
	jmp	.L1558
.L1573:
	cmpl	$3, -12(%rbp)
	jne	.L1574
	movl	$8, %eax
	jmp	.L1558
.L1574:
	movl	$5, %eax
	jmp	.L1558
.L1565:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	cmpl	$4, %eax
	jne	.L1575
	movl	$4, %eax
	jmp	.L1558
.L1575:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	cmpl	$8, %eax
	jne	.L1576
	movl	$12, %eax
	jmp	.L1558
.L1576:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	cmpl	$5, %eax
	jne	.L1577
	movl	$9, %eax
	jmp	.L1558
.L1577:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	cmpl	$6, %eax
	jne	.L1578
	movl	$10, %eax
	jmp	.L1558
.L1578:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	cmpl	$7, %eax
	jne	.L1579
	movl	$11, %eax
	jmp	.L1558
.L1579:
	movq	-8(%rbp), %rax
	movl	132(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1580
	movq	-8(%rbp), %rax
	movl	380(%rax), %eax
	testl	%eax, %eax
	jne	.L1580
	movl	$6, %eax
	jmp	.L1558
.L1580:
	movl	$5, %eax
.L1558:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1051:
	.size	ossl_ssl_get_error, .-ossl_ssl_get_error
	.type	ssl_do_handshake_intern, @function
ssl_do_handshake_intern:
.LFB1052:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1582
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1583
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1584
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1585
.L1584:
	movq	$0, -8(%rbp)
	jmp	.L1585
.L1583:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1585
.L1582:
	movq	$0, -8(%rbp)
.L1585:
	cmpq	$0, -8(%rbp)
	jne	.L1586
	movl	$-1, %eax
	jmp	.L1587
.L1586:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1587:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1052:
	.size	ssl_do_handshake_intern, .-ssl_do_handshake_intern
	.globl	SSL_do_handshake
	.type	SSL_do_handshake, @function
SSL_do_handshake:
.LFB1053:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L1589
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1590
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1591
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L1592
.L1591:
	movq	$0, -16(%rbp)
	jmp	.L1592
.L1590:
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L1592
.L1589:
	movq	$0, -16(%rbp)
.L1592:
	cmpq	$0, -72(%rbp)
	je	.L1593
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1594
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1593
.L1594:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_do_handshake@PLT
	jmp	.L1595
.L1593:
	cmpq	$0, -16(%rbp)
	jne	.L1596
	movl	$-1, %eax
	jmp	.L1595
.L1596:
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L1597
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4742, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L1595
.L1597:
	movq	-16(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_statem_check_finish_init@PLT
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	120(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	jne	.L1598
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_before@PLT
	testl	%eax, %eax
	je	.L1599
.L1598:
	movq	-16(%rbp), %rax
	movl	2368(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L1600
	call	ASYNC_get_current_job@PLT
	testq	%rax, %rax
	jne	.L1600
	leaq	-64(%rbp), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	ssl_do_handshake_intern(%rip), %rdx
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_start_async_job
	movl	%eax, -4(%rbp)
	jmp	.L1599
.L1600:
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L1599:
	movl	-4(%rbp), %eax
.L1595:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1053:
	.size	SSL_do_handshake, .-SSL_do_handshake
	.globl	SSL_set_accept_state
	.type	SSL_set_accept_state, @function
SSL_set_accept_state:
.LFB1054:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1602
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1603
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1604
.L1603:
	movq	$0, -8(%rbp)
	jmp	.L1604
.L1602:
	movq	$0, -8(%rbp)
.L1604:
	cmpq	$0, -24(%rbp)
	je	.L1605
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1606
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1605
.L1606:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_set_accept_state@PLT
	jmp	.L1601
.L1605:
	movq	-8(%rbp), %rax
	movl	$1, 120(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 132(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_clear@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_reset@PLT
.L1601:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1054:
	.size	SSL_set_accept_state, .-SSL_set_accept_state
	.globl	SSL_set_connect_state
	.type	SSL_set_connect_state, @function
SSL_set_connect_state:
.LFB1055:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1609
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1610
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1611
.L1610:
	movq	$0, -8(%rbp)
	jmp	.L1611
.L1609:
	movq	$0, -8(%rbp)
.L1611:
	cmpq	$0, -24(%rbp)
	je	.L1612
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1613
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1612
.L1613:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_set_connect_state@PLT
	jmp	.L1608
.L1612:
	movq	-8(%rbp), %rax
	movl	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 132(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_clear@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	RECORD_LAYER_reset@PLT
.L1608:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1055:
	.size	SSL_set_connect_state, .-SSL_set_connect_state
	.globl	ssl_undefined_function
	.type	ssl_undefined_function, @function
ssl_undefined_function:
.LFB1056:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4805, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1056:
	.size	ssl_undefined_function, .-ssl_undefined_function
	.globl	ssl_undefined_void_function
	.type	ssl_undefined_void_function, @function
ssl_undefined_void_function:
.LFB1057:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4811, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1057:
	.size	ssl_undefined_void_function, .-ssl_undefined_void_function
	.globl	ssl_undefined_const_function
	.type	ssl_undefined_const_function, @function
ssl_undefined_const_function:
.LFB1058:
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
.LFE1058:
	.size	ssl_undefined_const_function, .-ssl_undefined_const_function
	.section	.rodata
.LC4:
	.string	"TLSv1.3"
.LC5:
	.string	"TLSv1.2"
.LC6:
	.string	"TLSv1.1"
.LC7:
	.string	"TLSv1"
.LC8:
	.string	"SSLv3"
.LC9:
	.string	"DTLSv0.9"
.LC10:
	.string	"DTLSv1"
.LC11:
	.string	"DTLSv1.2"
.LC12:
	.string	"unknown"
	.text
	.globl	ssl_protocol_to_string
	.type	ssl_protocol_to_string, @function
ssl_protocol_to_string:
.LFB1059:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$65279, -4(%rbp)
	je	.L1622
	cmpl	$65279, -4(%rbp)
	jg	.L1623
	cmpl	$65277, -4(%rbp)
	je	.L1624
	cmpl	$65277, -4(%rbp)
	jg	.L1623
	cmpl	$772, -4(%rbp)
	je	.L1625
	cmpl	$772, -4(%rbp)
	jg	.L1623
	cmpl	$771, -4(%rbp)
	je	.L1626
	cmpl	$771, -4(%rbp)
	jg	.L1623
	cmpl	$770, -4(%rbp)
	je	.L1627
	cmpl	$770, -4(%rbp)
	jg	.L1623
	cmpl	$769, -4(%rbp)
	je	.L1628
	cmpl	$769, -4(%rbp)
	jg	.L1623
	cmpl	$256, -4(%rbp)
	je	.L1629
	cmpl	$768, -4(%rbp)
	je	.L1630
	jmp	.L1623
.L1625:
	leaq	.LC4(%rip), %rax
	jmp	.L1631
.L1626:
	leaq	.LC5(%rip), %rax
	jmp	.L1631
.L1627:
	leaq	.LC6(%rip), %rax
	jmp	.L1631
.L1628:
	leaq	.LC7(%rip), %rax
	jmp	.L1631
.L1630:
	leaq	.LC8(%rip), %rax
	jmp	.L1631
.L1629:
	leaq	.LC9(%rip), %rax
	jmp	.L1631
.L1622:
	leaq	.LC10(%rip), %rax
	jmp	.L1631
.L1624:
	leaq	.LC11(%rip), %rax
	jmp	.L1631
.L1623:
	leaq	.LC12(%rip), %rax
.L1631:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1059:
	.size	ssl_protocol_to_string, .-ssl_protocol_to_string
	.section	.rodata
.LC13:
	.string	"QUICv1"
	.text
	.globl	SSL_get_version
	.type	SSL_get_version, @function
SSL_get_version:
.LFB1060:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1633
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1634
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1635
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1636
.L1635:
	movq	$0, -8(%rbp)
	jmp	.L1636
.L1634:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1636
.L1633:
	movq	$0, -8(%rbp)
.L1636:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1637
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1638
.L1637:
	leaq	.LC13(%rip), %rax
	jmp	.L1639
.L1638:
	cmpq	$0, -8(%rbp)
	jne	.L1640
	movl	$0, %eax
	jmp	.L1639
.L1640:
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, %edi
	call	ssl_protocol_to_string@PLT
.L1639:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1060:
	.size	SSL_get_version, .-SSL_get_version
	.globl	SSL_get_handshake_rtt
	.type	SSL_get_handshake_rtt, @function
SSL_get_handshake_rtt:
.LFB1061:
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
	je	.L1642
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1643
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1644
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1645
.L1644:
	movq	$0, -8(%rbp)
	jmp	.L1645
.L1643:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1645
.L1642:
	movq	$0, -8(%rbp)
.L1645:
	cmpq	$0, -8(%rbp)
	jne	.L1646
	movl	$-1, %eax
	jmp	.L1647
.L1646:
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L1648
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L1649
.L1648:
	movl	$0, %eax
	jmp	.L1647
.L1649:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L1650
	movl	$-1, %eax
	jmp	.L1647
.L1650:
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	shrq	$4, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L1647:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1061:
	.size	SSL_get_handshake_rtt, .-SSL_get_handshake_rtt
	.type	dup_ca_names, @function
dup_ca_names:
.LFB1062:
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
	cmpq	$0, -64(%rbp)
	jne	.L1652
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L1653
.L1652:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L1654
	movl	$0, %eax
	jmp	.L1653
.L1654:
	movl	$0, -20(%rbp)
	jmp	.L1655
.L1658:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L1656
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
	movl	$0, %eax
	jmp	.L1653
.L1656:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rax, %rcx
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_sk_insert@PLT
	testl	%eax, %eax
	jne	.L1657
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
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
	movl	$0, %eax
	jmp	.L1653
.L1657:
	addl	$1, -20(%rbp)
.L1655:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L1658
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L1653:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1062:
	.size	dup_ca_names, .-dup_ca_names
	.globl	SSL_dup
	.type	SSL_dup, @function
SSL_dup:
.LFB1063:
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
	cmpq	$0, -56(%rbp)
	je	.L1660
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1661
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L1662
.L1661:
	movq	$0, -32(%rbp)
	jmp	.L1662
.L1660:
	movq	$0, -32(%rbp)
.L1662:
	cmpq	$0, -32(%rbp)
	jne	.L1663
	movl	$0, %eax
	jmp	.L1685
.L1663:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L1665
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_before@PLT
	testl	%eax, %eax
	jne	.L1666
.L1665:
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rdx
	leaq	-44(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	movq	-56(%rbp), %rax
	jmp	.L1685
.L1666:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_SSL_CTX@PLT
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L1667
	movl	$0, %eax
	jmp	.L1685
.L1667:
	cmpq	$0, -40(%rbp)
	je	.L1668
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1669
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1670
.L1669:
	movq	$0, -24(%rbp)
	jmp	.L1670
.L1668:
	movq	$0, -24(%rbp)
.L1670:
	cmpq	$0, -24(%rbp)
	je	.L1686
	movq	-32(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L1673
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_copy_session_id@PLT
	testl	%eax, %eax
	jne	.L1674
	jmp	.L1672
.L1673:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_ssl_method@PLT
	testl	%eax, %eax
	je	.L1687
	movq	-32(%rbp), %rax
	movq	2056(%rax), %rax
	testq	%rax, %rax
	je	.L1676
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, %rdi
	call	ssl_cert_free@PLT
	movq	-32(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, %rdi
	call	ssl_cert_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 2056(%rdx)
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	testq	%rax, %rax
	je	.L1688
.L1676:
	movq	-32(%rbp), %rax
	movq	2144(%rax), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	leaq	2152(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session_id_context@PLT
	testl	%eax, %eax
	je	.L1689
.L1674:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_dane_dup
	testl	%eax, %eax
	je	.L1690
	movq	-32(%rbp), %rax
	movl	72(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 72(%rax)
	movq	-32(%rbp), %rax
	movq	2360(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2360(%rax)
	movq	-32(%rbp), %rax
	movl	2372(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 2372(%rax)
	movq	-32(%rbp), %rax
	movl	2376(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 2376(%rax)
	movq	-32(%rbp), %rax
	movl	2368(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 2368(%rax)
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$51, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_read_ahead@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_set_read_ahead@PLT
	movq	-32(%rbp), %rax
	movq	1152(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 1152(%rax)
	movq	-32(%rbp), %rax
	movq	1160(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 1160(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_verify_callback@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_verify_mode@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SSL_set_verify@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_verify_depth@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_set_verify_depth@PLT
	movq	-32(%rbp), %rax
	movq	2216(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2216(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_info_callback@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_info_callback@PLT
	movq	-56(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	CRYPTO_dup_ex_data@PLT
	testl	%eax, %eax
	je	.L1691
	movq	-32(%rbp), %rax
	movl	120(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 120(%rax)
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L1679
	movq	-32(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L1680
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_accept_state@PLT
	jmp	.L1679
.L1680:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
.L1679:
	movq	-32(%rbp), %rax
	movl	132(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 132(%rax)
	movq	-32(%rbp), %rax
	movl	1168(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1168(%rax)
	movq	-32(%rbp), %rax
	movq	5240(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 5240(%rax)
	movq	-32(%rbp), %rax
	movq	5248(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 5248(%rax)
	movq	-32(%rbp), %rax
	movq	1176(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_inherit@PLT
	movq	-32(%rbp), %rax
	movq	1256(%rax), %rax
	testq	%rax, %rax
	je	.L1681
	movq	-32(%rbp), %rax
	movq	1256(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 1256(%rdx)
	movq	-24(%rbp), %rax
	movq	1256(%rax), %rax
	testq	%rax, %rax
	je	.L1692
.L1681:
	movq	-32(%rbp), %rax
	movq	1264(%rax), %rax
	testq	%rax, %rax
	je	.L1682
	movq	-32(%rbp), %rax
	movq	1264(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_dup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 1264(%rdx)
	movq	-24(%rbp), %rax
	movq	1264(%rax), %rax
	testq	%rax, %rax
	je	.L1693
.L1682:
	movq	-32(%rbp), %rax
	movq	2344(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$2344, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	dup_ca_names
	testl	%eax, %eax
	je	.L1694
	movq	-32(%rbp), %rax
	movq	2352(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$2352, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	dup_ca_names
	testl	%eax, %eax
	je	.L1694
	movq	-40(%rbp), %rax
	jmp	.L1685
.L1686:
	nop
	jmp	.L1672
.L1687:
	nop
	jmp	.L1672
.L1688:
	nop
	jmp	.L1672
.L1689:
	nop
	jmp	.L1672
.L1690:
	nop
	jmp	.L1672
.L1691:
	nop
	jmp	.L1672
.L1692:
	nop
	jmp	.L1672
.L1693:
	nop
	jmp	.L1672
.L1694:
	nop
.L1672:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movl	$0, %eax
.L1685:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1063:
	.size	SSL_dup, .-SSL_dup
	.globl	SSL_get_certificate
	.type	SSL_get_certificate, @function
SSL_get_certificate:
.LFB1064:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1696
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1697
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1698
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1699
.L1698:
	movq	$0, -8(%rbp)
	jmp	.L1699
.L1697:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1699
.L1696:
	movq	$0, -8(%rbp)
.L1699:
	cmpq	$0, -8(%rbp)
	jne	.L1700
	movl	$0, %eax
	jmp	.L1701
.L1700:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	testq	%rax, %rax
	je	.L1702
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	jmp	.L1701
.L1702:
	movl	$0, %eax
.L1701:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1064:
	.size	SSL_get_certificate, .-SSL_get_certificate
	.globl	SSL_get_privatekey
	.type	SSL_get_privatekey, @function
SSL_get_privatekey:
.LFB1065:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1704
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1705
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1706
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1707
.L1706:
	movq	$0, -8(%rbp)
	jmp	.L1707
.L1705:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1707
.L1704:
	movq	$0, -8(%rbp)
.L1707:
	cmpq	$0, -8(%rbp)
	jne	.L1708
	movl	$0, %eax
	jmp	.L1709
.L1708:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	testq	%rax, %rax
	je	.L1710
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L1709
.L1710:
	movl	$0, %eax
.L1709:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1065:
	.size	SSL_get_privatekey, .-SSL_get_privatekey
	.globl	SSL_CTX_get0_certificate
	.type	SSL_CTX_get0_certificate, @function
SSL_CTX_get0_certificate:
.LFB1066:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	testq	%rax, %rax
	je	.L1712
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	jmp	.L1713
.L1712:
	movl	$0, %eax
.L1713:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1066:
	.size	SSL_CTX_get0_certificate, .-SSL_CTX_get0_certificate
	.globl	SSL_CTX_get0_privatekey
	.type	SSL_CTX_get0_privatekey, @function
SSL_CTX_get0_privatekey:
.LFB1067:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	testq	%rax, %rax
	je	.L1715
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L1716
.L1715:
	movl	$0, %eax
.L1716:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1067:
	.size	SSL_CTX_get0_privatekey, .-SSL_CTX_get0_privatekey
	.globl	SSL_get_current_cipher
	.type	SSL_get_current_cipher, @function
SSL_get_current_cipher:
.LFB1068:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1718
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1719
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1720
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1721
.L1720:
	movq	$0, -8(%rbp)
	jmp	.L1721
.L1719:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1721
.L1718:
	movq	$0, -8(%rbp)
.L1721:
	cmpq	$0, -8(%rbp)
	jne	.L1722
	movl	$0, %eax
	jmp	.L1723
.L1722:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L1724
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	testq	%rax, %rax
	je	.L1724
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	760(%rax), %rax
	jmp	.L1723
.L1724:
	movl	$0, %eax
.L1723:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1068:
	.size	SSL_get_current_cipher, .-SSL_get_current_cipher
	.globl	SSL_get_pending_cipher
	.type	SSL_get_pending_cipher, @function
SSL_get_pending_cipher:
.LFB1069:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1726
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1727
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1728
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1729
.L1728:
	movq	$0, -8(%rbp)
	jmp	.L1729
.L1727:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1729
.L1726:
	movq	$0, -8(%rbp)
.L1729:
	cmpq	$0, -8(%rbp)
	jne	.L1730
	movl	$0, %eax
	jmp	.L1731
.L1730:
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
.L1731:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1069:
	.size	SSL_get_pending_cipher, .-SSL_get_pending_cipher
	.globl	SSL_get_current_compression
	.type	SSL_get_current_compression, @function
SSL_get_current_compression:
.LFB1070:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1733
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1734
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1735
.L1734:
	movq	$0, -8(%rbp)
	jmp	.L1735
.L1733:
	movq	$0, -8(%rbp)
.L1735:
	cmpq	$0, -8(%rbp)
	jne	.L1736
	movl	$0, %eax
	jmp	.L1737
.L1736:
	movq	-8(%rbp), %rax
	movq	3040(%rax), %rax
	movq	152(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1737:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1070:
	.size	SSL_get_current_compression, .-SSL_get_current_compression
	.globl	SSL_get_current_expansion
	.type	SSL_get_current_expansion, @function
SSL_get_current_expansion:
.LFB1071:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1739
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1740
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1741
.L1740:
	movq	$0, -8(%rbp)
	jmp	.L1741
.L1739:
	movq	$0, -8(%rbp)
.L1741:
	cmpq	$0, -8(%rbp)
	jne	.L1742
	movl	$0, %eax
	jmp	.L1743
.L1742:
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	movq	152(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	3048(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L1743:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1071:
	.size	SSL_get_current_expansion, .-SSL_get_current_expansion
	.globl	ssl_init_wbio_buffer
	.type	ssl_init_wbio_buffer, @function
ssl_init_wbio_buffer:
.LFB1072:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L1745
	movl	$1, %eax
	jmp	.L1746
.L1745:
	call	BIO_f_buffer@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L1747
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$117, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	testq	%rax, %rax
	jg	.L1748
.L1747:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5130, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1746
.L1748:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-24(%rbp), %rax
	movq	3040(%rax), %rax
	movq	88(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	$1, %eax
.L1746:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1072:
	.size	ssl_init_wbio_buffer, .-ssl_init_wbio_buffer
	.globl	ssl_free_wbio_buffer
	.type	ssl_free_wbio_buffer, @function
ssl_free_wbio_buffer:
.LFB1073:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L1750
	movl	$1, %eax
	jmp	.L1751
.L1750:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-8(%rbp), %rax
	movq	3040(%rax), %rax
	movq	88(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movl	$1, %eax
.L1751:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1073:
	.size	ssl_free_wbio_buffer, .-ssl_free_wbio_buffer
	.globl	SSL_CTX_set_quiet_shutdown
	.type	SSL_CTX_set_quiet_shutdown, @function
SSL_CTX_set_quiet_shutdown:
.LFB1074:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 456(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1074:
	.size	SSL_CTX_set_quiet_shutdown, .-SSL_CTX_set_quiet_shutdown
	.globl	SSL_CTX_get_quiet_shutdown
	.type	SSL_CTX_get_quiet_shutdown, @function
SSL_CTX_get_quiet_shutdown:
.LFB1075:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	456(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1075:
	.size	SSL_CTX_get_quiet_shutdown, .-SSL_CTX_get_quiet_shutdown
	.globl	SSL_set_quiet_shutdown
	.type	SSL_set_quiet_shutdown, @function
SSL_set_quiet_shutdown:
.LFB1076:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1756
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1757
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1758
.L1757:
	movq	$0, -8(%rbp)
	jmp	.L1758
.L1756:
	movq	$0, -8(%rbp)
.L1758:
	cmpq	$0, -8(%rbp)
	je	.L1761
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 128(%rax)
	jmp	.L1755
.L1761:
	nop
.L1755:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1076:
	.size	SSL_set_quiet_shutdown, .-SSL_set_quiet_shutdown
	.globl	SSL_get_quiet_shutdown
	.type	SSL_get_quiet_shutdown, @function
SSL_get_quiet_shutdown:
.LFB1077:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1763
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1764
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1765
.L1764:
	movq	$0, -8(%rbp)
	jmp	.L1765
.L1763:
	movq	$0, -8(%rbp)
.L1765:
	cmpq	$0, -8(%rbp)
	jne	.L1766
	movl	$0, %eax
	jmp	.L1767
.L1766:
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
.L1767:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1077:
	.size	SSL_get_quiet_shutdown, .-SSL_get_quiet_shutdown
	.globl	SSL_set_shutdown
	.type	SSL_set_shutdown, @function
SSL_set_shutdown:
.LFB1078:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1769
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1770
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1771
.L1770:
	movq	$0, -8(%rbp)
	jmp	.L1771
.L1769:
	movq	$0, -8(%rbp)
.L1771:
	cmpq	$0, -8(%rbp)
	je	.L1774
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 132(%rax)
	jmp	.L1768
.L1774:
	nop
.L1768:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1078:
	.size	SSL_set_shutdown, .-SSL_set_shutdown
	.globl	SSL_get_shutdown
	.type	SSL_get_shutdown, @function
SSL_get_shutdown:
.LFB1079:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1776
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1777
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1778
.L1777:
	movq	$0, -8(%rbp)
	jmp	.L1778
.L1776:
	movq	$0, -8(%rbp)
.L1778:
	cmpq	$0, -24(%rbp)
	je	.L1779
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1780
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1779
.L1780:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get_shutdown@PLT
	jmp	.L1781
.L1779:
	cmpq	$0, -8(%rbp)
	jne	.L1782
	movl	$0, %eax
	jmp	.L1781
.L1782:
	movq	-8(%rbp), %rax
	movl	132(%rax), %eax
.L1781:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1079:
	.size	SSL_get_shutdown, .-SSL_get_shutdown
	.globl	SSL_version
	.type	SSL_version, @function
SSL_version:
.LFB1080:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1784
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1785
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1786
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1787
.L1786:
	movq	$0, -8(%rbp)
	jmp	.L1787
.L1785:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1787
.L1784:
	movq	$0, -8(%rbp)
.L1787:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1788
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1789
.L1788:
	movl	$1, %eax
	jmp	.L1790
.L1789:
	cmpq	$0, -8(%rbp)
	jne	.L1791
	movl	$0, %eax
	jmp	.L1790
.L1791:
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
.L1790:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1080:
	.size	SSL_version, .-SSL_version
	.globl	SSL_client_version
	.type	SSL_client_version, @function
SSL_client_version:
.LFB1081:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1793
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1794
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1795
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1796
.L1795:
	movq	$0, -8(%rbp)
	jmp	.L1796
.L1794:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1796
.L1793:
	movq	$0, -8(%rbp)
.L1796:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1797
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1798
.L1797:
	movl	$1, %eax
	jmp	.L1799
.L1798:
	cmpq	$0, -8(%rbp)
	jne	.L1800
	movl	$0, %eax
	jmp	.L1799
.L1800:
	movq	-8(%rbp), %rax
	movl	2396(%rax), %eax
.L1799:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1081:
	.size	SSL_client_version, .-SSL_client_version
	.globl	SSL_get_SSL_CTX
	.type	SSL_get_SSL_CTX, @function
SSL_get_SSL_CTX:
.LFB1082:
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
.LFE1082:
	.size	SSL_get_SSL_CTX, .-SSL_get_SSL_CTX
	.globl	SSL_set_SSL_CTX
	.type	SSL_set_SSL_CTX, @function
SSL_set_SSL_CTX:
.LFB1083:
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
	je	.L1804
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1805
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1806
.L1805:
	movq	$0, -8(%rbp)
	jmp	.L1806
.L1804:
	movq	$0, -8(%rbp)
.L1806:
	cmpq	$0, -8(%rbp)
	jne	.L1807
	movl	$0, %eax
	jmp	.L1808
.L1807:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L1809
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L1808
.L1809:
	cmpq	$0, -32(%rbp)
	jne	.L1810
	movq	-8(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rax, -32(%rbp)
.L1810:
	movq	-32(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	call	ssl_cert_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L1811
	movl	$0, %eax
	jmp	.L1808
.L1811:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	leaq	128(%rax), %rdx
	movq	-16(%rbp), %rax
	subq	$-128, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	custom_exts_copy_flags@PLT
	testl	%eax, %eax
	jne	.L1812
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_cert_free@PLT
	movl	$0, %eax
	jmp	.L1808
.L1812:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, %rdi
	call	ssl_cert_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 2056(%rax)
	movq	-8(%rbp), %rax
	movq	2144(%rax), %rax
	cmpq	$32, %rax
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L1813
	movl	$0, %eax
	jmp	.L1808
.L1813:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L1814
	movq	-8(%rbp), %rax
	movq	2144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	392(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L1814
	movq	-8(%rbp), %rax
	movq	2144(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	leaq	400(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	2152(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L1814
	movq	-32(%rbp), %rax
	movq	392(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 2144(%rax)
	movq	-32(%rbp), %rax
	leaq	400(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$2152, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L1814:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_up_ref@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
.L1808:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1083:
	.size	SSL_set_SSL_CTX, .-SSL_set_SSL_CTX
	.globl	SSL_CTX_set_default_verify_paths
	.type	SSL_CTX_set_default_verify_paths, @function
SSL_CTX_set_default_verify_paths:
.LFB1084:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_set_default_paths_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1084:
	.size	SSL_CTX_set_default_verify_paths, .-SSL_CTX_set_default_verify_paths
	.globl	SSL_CTX_set_default_verify_dir
	.type	SSL_CTX_set_default_verify_dir, @function
SSL_CTX_set_default_verify_dir:
.LFB1085:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	X509_LOOKUP_hash_dir@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1818
	movl	$0, %eax
	jmp	.L1819
.L1818:
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl@PLT
	call	ERR_pop_to_mark@PLT
	movl	$1, %eax
.L1819:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1085:
	.size	SSL_CTX_set_default_verify_dir, .-SSL_CTX_set_default_verify_dir
	.globl	SSL_CTX_set_default_verify_file
	.type	SSL_CTX_set_default_verify_file, @function
SSL_CTX_set_default_verify_file:
.LFB1086:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	X509_LOOKUP_file@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1821
	movl	$0, %eax
	jmp	.L1822
.L1821:
	call	ERR_set_mark@PLT
	movq	-24(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl_ex@PLT
	addq	$16, %rsp
	call	ERR_pop_to_mark@PLT
	movl	$1, %eax
.L1822:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1086:
	.size	SSL_CTX_set_default_verify_file, .-SSL_CTX_set_default_verify_file
	.globl	SSL_CTX_set_default_verify_store
	.type	SSL_CTX_set_default_verify_store, @function
SSL_CTX_set_default_verify_store:
.LFB1087:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	X509_LOOKUP_store@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_lookup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L1824
	movl	$0, %eax
	jmp	.L1825
.L1824:
	call	ERR_set_mark@PLT
	movq	-24(%rbp), %rax
	movq	1096(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl_ex@PLT
	addq	$16, %rsp
	call	ERR_pop_to_mark@PLT
	movl	$1, %eax
.L1825:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1087:
	.size	SSL_CTX_set_default_verify_store, .-SSL_CTX_set_default_verify_store
	.globl	SSL_CTX_load_verify_file
	.type	SSL_CTX_load_verify_file, @function
SSL_CTX_load_verify_file:
.LFB1088:
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
	movq	1096(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_file_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1088:
	.size	SSL_CTX_load_verify_file, .-SSL_CTX_load_verify_file
	.globl	SSL_CTX_load_verify_dir
	.type	SSL_CTX_load_verify_dir, @function
SSL_CTX_load_verify_dir:
.LFB1089:
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
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_path@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1089:
	.size	SSL_CTX_load_verify_dir, .-SSL_CTX_load_verify_dir
	.globl	SSL_CTX_load_verify_store
	.type	SSL_CTX_load_verify_store, @function
SSL_CTX_load_verify_store:
.LFB1090:
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
	movq	1096(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_store_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1090:
	.size	SSL_CTX_load_verify_store, .-SSL_CTX_load_verify_store
	.globl	SSL_CTX_load_verify_locations
	.type	SSL_CTX_load_verify_locations, @function
SSL_CTX_load_verify_locations:
.LFB1091:
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
	cmpq	$0, -16(%rbp)
	jne	.L1833
	cmpq	$0, -24(%rbp)
	jne	.L1833
	movl	$0, %eax
	jmp	.L1834
.L1833:
	cmpq	$0, -16(%rbp)
	je	.L1835
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_load_verify_file@PLT
	testl	%eax, %eax
	jne	.L1835
	movl	$0, %eax
	jmp	.L1834
.L1835:
	cmpq	$0, -24(%rbp)
	je	.L1836
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_load_verify_dir@PLT
	testl	%eax, %eax
	jne	.L1836
	movl	$0, %eax
	jmp	.L1834
.L1836:
	movl	$1, %eax
.L1834:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1091:
	.size	SSL_CTX_load_verify_locations, .-SSL_CTX_load_verify_locations
	.globl	SSL_set_info_callback
	.type	SSL_set_info_callback, @function
SSL_set_info_callback:
.LFB1092:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1838
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1839
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1840
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1841
.L1840:
	movq	$0, -8(%rbp)
	jmp	.L1841
.L1839:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1841
.L1838:
	movq	$0, -8(%rbp)
.L1841:
	cmpq	$0, -8(%rbp)
	je	.L1844
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2280(%rax)
	jmp	.L1837
.L1844:
	nop
.L1837:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1092:
	.size	SSL_set_info_callback, .-SSL_set_info_callback
	.globl	SSL_get_info_callback
	.type	SSL_get_info_callback, @function
SSL_get_info_callback:
.LFB1093:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1846
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1847
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1848
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1849
.L1848:
	movq	$0, -8(%rbp)
	jmp	.L1849
.L1847:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1849
.L1846:
	movq	$0, -8(%rbp)
.L1849:
	cmpq	$0, -8(%rbp)
	jne	.L1850
	movl	$0, %eax
	jmp	.L1851
.L1850:
	movq	-8(%rbp), %rax
	movq	2280(%rax), %rax
.L1851:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1093:
	.size	SSL_get_info_callback, .-SSL_get_info_callback
	.globl	SSL_set_verify_result
	.type	SSL_set_verify_result, @function
SSL_set_verify_result:
.LFB1094:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1853
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1854
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1855
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1856
.L1855:
	movq	$0, -8(%rbp)
	jmp	.L1856
.L1854:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1856
.L1853:
	movq	$0, -8(%rbp)
.L1856:
	cmpq	$0, -8(%rbp)
	je	.L1859
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2336(%rax)
	jmp	.L1852
.L1859:
	nop
.L1852:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1094:
	.size	SSL_set_verify_result, .-SSL_set_verify_result
	.globl	SSL_get_verify_result
	.type	SSL_get_verify_result, @function
SSL_get_verify_result:
.LFB1095:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1861
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1862
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1863
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1864
.L1863:
	movq	$0, -8(%rbp)
	jmp	.L1864
.L1862:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1864
.L1861:
	movq	$0, -8(%rbp)
.L1864:
	cmpq	$0, -8(%rbp)
	jne	.L1865
	movl	$0, %eax
	jmp	.L1866
.L1865:
	movq	-8(%rbp), %rax
	movq	2336(%rax), %rax
.L1866:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1095:
	.size	SSL_get_verify_result, .-SSL_get_verify_result
	.globl	SSL_get_client_random
	.type	SSL_get_client_random, @function
SSL_get_client_random:
.LFB1096:
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
	cmpq	$0, -24(%rbp)
	je	.L1868
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1869
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1870
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1871
.L1870:
	movq	$0, -8(%rbp)
	jmp	.L1871
.L1869:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1871
.L1868:
	movq	$0, -8(%rbp)
.L1871:
	cmpq	$0, -8(%rbp)
	jne	.L1872
	movl	$0, %eax
	jmp	.L1873
.L1872:
	cmpq	$0, -40(%rbp)
	jne	.L1874
	movl	$32, %eax
	jmp	.L1873
.L1874:
	cmpq	$32, -40(%rbp)
	jbe	.L1875
	movq	$32, -40(%rbp)
.L1875:
	movq	-8(%rbp), %rax
	leaq	328(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
.L1873:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1096:
	.size	SSL_get_client_random, .-SSL_get_client_random
	.globl	SSL_get_server_random
	.type	SSL_get_server_random, @function
SSL_get_server_random:
.LFB1097:
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
	cmpq	$0, -24(%rbp)
	je	.L1877
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1878
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1879
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1880
.L1879:
	movq	$0, -8(%rbp)
	jmp	.L1880
.L1878:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1880
.L1877:
	movq	$0, -8(%rbp)
.L1880:
	cmpq	$0, -8(%rbp)
	jne	.L1881
	movl	$0, %eax
	jmp	.L1882
.L1881:
	cmpq	$0, -40(%rbp)
	jne	.L1883
	movl	$32, %eax
	jmp	.L1882
.L1883:
	cmpq	$32, -40(%rbp)
	jbe	.L1884
	movq	$32, -40(%rbp)
.L1884:
	movq	-8(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
.L1882:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1097:
	.size	SSL_get_server_random, .-SSL_get_server_random
	.globl	SSL_SESSION_get_master_key
	.type	SSL_SESSION_get_master_key, @function
SSL_SESSION_get_master_key:
.LFB1098:
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
	cmpq	$0, -24(%rbp)
	jne	.L1886
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L1887
.L1886:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L1888
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L1888:
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
.L1887:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1098:
	.size	SSL_SESSION_get_master_key, .-SSL_SESSION_get_master_key
	.globl	SSL_SESSION_set1_master_key
	.type	SSL_SESSION_set1_master_key, @function
SSL_SESSION_set1_master_key:
.LFB1099:
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
	cmpq	$512, -24(%rbp)
	jbe	.L1890
	movl	$0, %eax
	jmp	.L1891
.L1890:
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L1891:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1099:
	.size	SSL_SESSION_set1_master_key, .-SSL_SESSION_set1_master_key
	.globl	SSL_set_ex_data
	.type	SSL_set_ex_data, @function
SSL_set_ex_data:
.LFB1100:
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
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1100:
	.size	SSL_set_ex_data, .-SSL_set_ex_data
	.globl	SSL_get_ex_data
	.type	SSL_get_ex_data, @function
SSL_get_ex_data:
.LFB1101:
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
	leaq	48(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1101:
	.size	SSL_get_ex_data, .-SSL_get_ex_data
	.globl	SSL_CTX_set_ex_data
	.type	SSL_CTX_set_ex_data, @function
SSL_CTX_set_ex_data:
.LFB1102:
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
	movq	-8(%rbp), %rax
	leaq	240(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1102:
	.size	SSL_CTX_set_ex_data, .-SSL_CTX_set_ex_data
	.globl	SSL_CTX_get_ex_data
	.type	SSL_CTX_get_ex_data, @function
SSL_CTX_get_ex_data:
.LFB1103:
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
	leaq	240(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1103:
	.size	SSL_CTX_get_ex_data, .-SSL_CTX_get_ex_data
	.globl	SSL_CTX_get_cert_store
	.type	SSL_CTX_get_cert_store, @function
SSL_CTX_get_cert_store:
.LFB1104:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1104:
	.size	SSL_CTX_get_cert_store, .-SSL_CTX_get_cert_store
	.globl	SSL_CTX_set_cert_store
	.type	SSL_CTX_set_cert_store, @function
SSL_CTX_set_cert_store:
.LFB1105:
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
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1105:
	.size	SSL_CTX_set_cert_store, .-SSL_CTX_set_cert_store
	.globl	SSL_CTX_set1_cert_store
	.type	SSL_CTX_set1_cert_store, @function
SSL_CTX_set1_cert_store:
.LFB1106:
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
	je	.L1904
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_up_ref@PLT
.L1904:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cert_store@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1106:
	.size	SSL_CTX_set1_cert_store, .-SSL_CTX_set1_cert_store
	.globl	SSL_want
	.type	SSL_want, @function
SSL_want:
.LFB1107:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1906
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1907
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1908
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1909
.L1908:
	movq	$0, -8(%rbp)
	jmp	.L1909
.L1907:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1909
.L1906:
	movq	$0, -8(%rbp)
.L1909:
	cmpq	$0, -24(%rbp)
	je	.L1910
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L1911
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L1910
.L1911:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_want@PLT
	jmp	.L1912
.L1910:
	cmpq	$0, -8(%rbp)
	jne	.L1913
	movl	$1, %eax
	jmp	.L1912
.L1913:
	movq	-8(%rbp), %rax
	movl	104(%rax), %eax
.L1912:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1107:
	.size	SSL_want, .-SSL_want
	.globl	SSL_CTX_use_psk_identity_hint
	.type	SSL_CTX_use_psk_identity_hint, @function
SSL_CTX_use_psk_identity_hint:
.LFB1108:
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
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L1915
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$256, %rax
	jbe	.L1915
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5549, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1916
.L1915:
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	168(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$5552, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -32(%rbp)
	je	.L1917
	movq	-24(%rbp), %rax
	movq	344(%rax), %rbx
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$5554, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, 168(%rbx)
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L1918
	movl	$0, %eax
	jmp	.L1916
.L1917:
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	movq	$0, 168(%rax)
.L1918:
	movl	$1, %eax
.L1916:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1108:
	.size	SSL_CTX_use_psk_identity_hint, .-SSL_CTX_use_psk_identity_hint
	.globl	SSL_use_psk_identity_hint
	.type	SSL_use_psk_identity_hint, @function
SSL_use_psk_identity_hint:
.LFB1109:
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
	cmpq	$0, -40(%rbp)
	je	.L1920
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1921
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1922
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1923
.L1922:
	movq	$0, -24(%rbp)
	jmp	.L1923
.L1921:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1923
.L1920:
	movq	$0, -24(%rbp)
.L1923:
	cmpq	$0, -24(%rbp)
	jne	.L1924
	movl	$0, %eax
	jmp	.L1925
.L1924:
	cmpq	$0, -48(%rbp)
	je	.L1926
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$256, %rax
	jbe	.L1926
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5570, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L1925
.L1926:
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movq	168(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$5573, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -48(%rbp)
	je	.L1927
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rbx
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$5575, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, 168(%rbx)
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L1928
	movl	$0, %eax
	jmp	.L1925
.L1927:
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movq	$0, 168(%rax)
.L1928:
	movl	$1, %eax
.L1925:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1109:
	.size	SSL_use_psk_identity_hint, .-SSL_use_psk_identity_hint
	.globl	SSL_get_psk_identity_hint
	.type	SSL_get_psk_identity_hint, @function
SSL_get_psk_identity_hint:
.LFB1110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1930
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1931
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1932
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1933
.L1932:
	movq	$0, -8(%rbp)
	jmp	.L1933
.L1931:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1933
.L1930:
	movq	$0, -8(%rbp)
.L1933:
	cmpq	$0, -8(%rbp)
	je	.L1934
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	jne	.L1935
.L1934:
	movl	$0, %eax
	jmp	.L1936
.L1935:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	672(%rax), %rax
.L1936:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1110:
	.size	SSL_get_psk_identity_hint, .-SSL_get_psk_identity_hint
	.globl	SSL_get_psk_identity
	.type	SSL_get_psk_identity, @function
SSL_get_psk_identity:
.LFB1111:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1938
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1939
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1940
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1941
.L1940:
	movq	$0, -8(%rbp)
	jmp	.L1941
.L1939:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1941
.L1938:
	movq	$0, -8(%rbp)
.L1941:
	cmpq	$0, -8(%rbp)
	je	.L1942
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	jne	.L1943
.L1942:
	movl	$0, %eax
	jmp	.L1944
.L1943:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	680(%rax), %rax
.L1944:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1111:
	.size	SSL_get_psk_identity, .-SSL_get_psk_identity
	.globl	SSL_set_psk_client_callback
	.type	SSL_set_psk_client_callback, @function
SSL_set_psk_client_callback:
.LFB1112:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1946
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1947
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1948
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1949
.L1948:
	movq	$0, -8(%rbp)
	jmp	.L1949
.L1947:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1949
.L1946:
	movq	$0, -8(%rbp)
.L1949:
	cmpq	$0, -8(%rbp)
	je	.L1952
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2296(%rax)
	jmp	.L1945
.L1952:
	nop
.L1945:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1112:
	.size	SSL_set_psk_client_callback, .-SSL_set_psk_client_callback
	.globl	SSL_CTX_set_psk_client_callback
	.type	SSL_CTX_set_psk_client_callback, @function
SSL_CTX_set_psk_client_callback:
.LFB1113:
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
	movq	%rdx, 768(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1113:
	.size	SSL_CTX_set_psk_client_callback, .-SSL_CTX_set_psk_client_callback
	.globl	SSL_set_psk_server_callback
	.type	SSL_set_psk_server_callback, @function
SSL_set_psk_server_callback:
.LFB1114:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1955
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1956
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1957
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1958
.L1957:
	movq	$0, -8(%rbp)
	jmp	.L1958
.L1956:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1958
.L1955:
	movq	$0, -8(%rbp)
.L1958:
	cmpq	$0, -8(%rbp)
	je	.L1961
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2304(%rax)
	jmp	.L1954
.L1961:
	nop
.L1954:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1114:
	.size	SSL_set_psk_server_callback, .-SSL_set_psk_server_callback
	.globl	SSL_CTX_set_psk_server_callback
	.type	SSL_CTX_set_psk_server_callback, @function
SSL_CTX_set_psk_server_callback:
.LFB1115:
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
	movq	%rdx, 776(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1115:
	.size	SSL_CTX_set_psk_server_callback, .-SSL_CTX_set_psk_server_callback
	.globl	SSL_set_psk_find_session_callback
	.type	SSL_set_psk_find_session_callback, @function
SSL_set_psk_find_session_callback:
.LFB1116:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1964
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1965
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1966
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1967
.L1966:
	movq	$0, -8(%rbp)
	jmp	.L1967
.L1965:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1967
.L1964:
	movq	$0, -8(%rbp)
.L1967:
	cmpq	$0, -8(%rbp)
	je	.L1970
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2312(%rax)
	jmp	.L1963
.L1970:
	nop
.L1963:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1116:
	.size	SSL_set_psk_find_session_callback, .-SSL_set_psk_find_session_callback
	.globl	SSL_CTX_set_psk_find_session_callback
	.type	SSL_CTX_set_psk_find_session_callback, @function
SSL_CTX_set_psk_find_session_callback:
.LFB1117:
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
	movq	%rdx, 784(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1117:
	.size	SSL_CTX_set_psk_find_session_callback, .-SSL_CTX_set_psk_find_session_callback
	.globl	SSL_set_psk_use_session_callback
	.type	SSL_set_psk_use_session_callback, @function
SSL_set_psk_use_session_callback:
.LFB1118:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L1973
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L1974
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L1975
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1976
.L1975:
	movq	$0, -8(%rbp)
	jmp	.L1976
.L1974:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1976
.L1973:
	movq	$0, -8(%rbp)
.L1976:
	cmpq	$0, -8(%rbp)
	je	.L1979
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2320(%rax)
	jmp	.L1972
.L1979:
	nop
.L1972:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1118:
	.size	SSL_set_psk_use_session_callback, .-SSL_set_psk_use_session_callback
	.globl	SSL_CTX_set_psk_use_session_callback
	.type	SSL_CTX_set_psk_use_session_callback, @function
SSL_CTX_set_psk_use_session_callback:
.LFB1119:
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
	movq	%rdx, 792(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1119:
	.size	SSL_CTX_set_psk_use_session_callback, .-SSL_CTX_set_psk_use_session_callback
	.globl	SSL_CTX_set_msg_callback
	.type	SSL_CTX_set_msg_callback, @function
SSL_CTX_set_msg_callback:
.LFB1120:
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
	movl	$15, %esi
	movq	%rax, %rdi
	call	SSL_CTX_callback_ctrl@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1120:
	.size	SSL_CTX_set_msg_callback, .-SSL_CTX_set_msg_callback
	.globl	SSL_set_msg_callback
	.type	SSL_set_msg_callback, @function
SSL_set_msg_callback:
.LFB1121:
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
	movl	$15, %esi
	movq	%rax, %rdi
	call	SSL_callback_ctrl@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1121:
	.size	SSL_set_msg_callback, .-SSL_set_msg_callback
	.globl	SSL_CTX_set_not_resumable_session_callback
	.type	SSL_CTX_set_not_resumable_session_callback, @function
SSL_CTX_set_not_resumable_session_callback:
.LFB1122:
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
	movl	$79, %esi
	movq	%rax, %rdi
	call	SSL_CTX_callback_ctrl@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1122:
	.size	SSL_CTX_set_not_resumable_session_callback, .-SSL_CTX_set_not_resumable_session_callback
	.globl	SSL_set_not_resumable_session_callback
	.type	SSL_set_not_resumable_session_callback, @function
SSL_set_not_resumable_session_callback:
.LFB1123:
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
	movl	$79, %esi
	movq	%rax, %rdi
	call	SSL_callback_ctrl@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1123:
	.size	SSL_set_not_resumable_session_callback, .-SSL_set_not_resumable_session_callback
	.globl	SSL_CTX_set_record_padding_callback
	.type	SSL_CTX_set_record_padding_callback, @function
SSL_CTX_set_record_padding_callback:
.LFB1124:
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
	movq	%rdx, 1000(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1124:
	.size	SSL_CTX_set_record_padding_callback, .-SSL_CTX_set_record_padding_callback
	.globl	SSL_CTX_set_record_padding_callback_arg
	.type	SSL_CTX_set_record_padding_callback_arg, @function
SSL_CTX_set_record_padding_callback_arg:
.LFB1125:
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
	movq	%rdx, 1008(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1125:
	.size	SSL_CTX_set_record_padding_callback_arg, .-SSL_CTX_set_record_padding_callback_arg
	.globl	SSL_CTX_get_record_padding_callback_arg
	.type	SSL_CTX_get_record_padding_callback_arg, @function
SSL_CTX_get_record_padding_callback_arg:
.LFB1126:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1008(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1126:
	.size	SSL_CTX_get_record_padding_callback_arg, .-SSL_CTX_get_record_padding_callback_arg
	.globl	SSL_CTX_set_block_padding
	.type	SSL_CTX_set_block_padding, @function
SSL_CTX_set_block_padding:
.LFB1127:
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
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_method@PLT
	cmpq	%rax, %rbx
	je	.L1990
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	OSSL_QUIC_client_thread_method@PLT
	cmpq	%rax, %rbx
	jne	.L1991
.L1990:
	cmpq	$1, -32(%rbp)
	jbe	.L1991
	movl	$0, %eax
	jmp	.L1992
.L1991:
	cmpq	$1, -32(%rbp)
	jne	.L1993
	movq	-24(%rbp), %rax
	movq	$0, 1016(%rax)
	jmp	.L1994
.L1993:
	cmpq	$16384, -32(%rbp)
	ja	.L1995
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 1016(%rax)
	jmp	.L1994
.L1995:
	movl	$0, %eax
	jmp	.L1992
.L1994:
	movl	$1, %eax
.L1992:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1127:
	.size	SSL_CTX_set_block_padding, .-SSL_CTX_set_block_padding
	.globl	SSL_set_record_padding_callback
	.type	SSL_set_record_padding_callback, @function
SSL_set_record_padding_callback:
.LFB1128:
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
	je	.L1997
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L1998
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1999
.L1998:
	movq	$0, -8(%rbp)
	jmp	.L1999
.L1997:
	movq	$0, -8(%rbp)
.L1999:
	cmpq	$0, -8(%rbp)
	jne	.L2000
	movl	$0, %eax
	jmp	.L2001
.L2000:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 3152(%rax)
	movl	$1, %eax
.L2001:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1128:
	.size	SSL_set_record_padding_callback, .-SSL_set_record_padding_callback
	.globl	SSL_set_record_padding_callback_arg
	.type	SSL_set_record_padding_callback_arg, @function
SSL_set_record_padding_callback_arg:
.LFB1129:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2003
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2004
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2005
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2006
.L2005:
	movq	$0, -8(%rbp)
	jmp	.L2006
.L2004:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2006
.L2003:
	movq	$0, -8(%rbp)
.L2006:
	cmpq	$0, -8(%rbp)
	je	.L2009
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 3160(%rax)
	jmp	.L2002
.L2009:
	nop
.L2002:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1129:
	.size	SSL_set_record_padding_callback_arg, .-SSL_set_record_padding_callback_arg
	.globl	SSL_get_record_padding_callback_arg
	.type	SSL_get_record_padding_callback_arg, @function
SSL_get_record_padding_callback_arg:
.LFB1130:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2011
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2012
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2013
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2014
.L2013:
	movq	$0, -8(%rbp)
	jmp	.L2014
.L2012:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2014
.L2011:
	movq	$0, -8(%rbp)
.L2014:
	cmpq	$0, -8(%rbp)
	jne	.L2015
	movl	$0, %eax
	jmp	.L2016
.L2015:
	movq	-8(%rbp), %rax
	movq	3160(%rax), %rax
.L2016:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1130:
	.size	SSL_get_record_padding_callback_arg, .-SSL_get_record_padding_callback_arg
	.globl	SSL_set_block_padding
	.type	SSL_set_block_padding, @function
SSL_set_block_padding:
.LFB1131:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2018
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2019
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2020
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2021
.L2020:
	movq	$0, -8(%rbp)
	jmp	.L2021
.L2019:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2021
.L2018:
	movq	$0, -8(%rbp)
.L2021:
	cmpq	$0, -8(%rbp)
	je	.L2022
	cmpq	$0, -24(%rbp)
	je	.L2023
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2024
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2023
.L2024:
	cmpq	$1, -32(%rbp)
	jbe	.L2023
.L2022:
	movl	$0, %eax
	jmp	.L2025
.L2023:
	cmpq	$1, -32(%rbp)
	jne	.L2026
	movq	-8(%rbp), %rax
	movq	$0, 3168(%rax)
	jmp	.L2027
.L2026:
	cmpq	$16384, -32(%rbp)
	ja	.L2028
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 3168(%rax)
	jmp	.L2027
.L2028:
	movl	$0, %eax
	jmp	.L2025
.L2027:
	movl	$1, %eax
.L2025:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1131:
	.size	SSL_set_block_padding, .-SSL_set_block_padding
	.globl	SSL_set_num_tickets
	.type	SSL_set_num_tickets, @function
SSL_set_num_tickets:
.LFB1132:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2030
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2031
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2032
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2033
.L2032:
	movq	$0, -8(%rbp)
	jmp	.L2033
.L2031:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2033
.L2030:
	movq	$0, -8(%rbp)
.L2033:
	cmpq	$0, -8(%rbp)
	jne	.L2034
	movl	$0, %eax
	jmp	.L2035
.L2034:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 5296(%rax)
	movl	$1, %eax
.L2035:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1132:
	.size	SSL_set_num_tickets, .-SSL_set_num_tickets
	.globl	SSL_get_num_tickets
	.type	SSL_get_num_tickets, @function
SSL_get_num_tickets:
.LFB1133:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2037
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2038
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2039
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2040
.L2039:
	movq	$0, -8(%rbp)
	jmp	.L2040
.L2038:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2040
.L2037:
	movq	$0, -8(%rbp)
.L2040:
	cmpq	$0, -8(%rbp)
	jne	.L2041
	movl	$0, %eax
	jmp	.L2042
.L2041:
	movq	-8(%rbp), %rax
	movq	5296(%rax), %rax
.L2042:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1133:
	.size	SSL_get_num_tickets, .-SSL_get_num_tickets
	.globl	SSL_CTX_set_num_tickets
	.type	SSL_CTX_set_num_tickets, @function
SSL_CTX_set_num_tickets:
.LFB1134:
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
	movq	%rdx, 1048(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1134:
	.size	SSL_CTX_set_num_tickets, .-SSL_CTX_set_num_tickets
	.globl	SSL_CTX_get_num_tickets
	.type	SSL_CTX_get_num_tickets, @function
SSL_CTX_get_num_tickets:
.LFB1135:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1048(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1135:
	.size	SSL_CTX_get_num_tickets, .-SSL_CTX_get_num_tickets
	.globl	ssl_handshake_hash
	.type	ssl_handshake_hash, @function
ssl_handshake_hash:
.LFB1136:
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
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -28(%rbp)
	movl	$0, -12(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L2048
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, -56(%rbp)
	jnb	.L2049
.L2048:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5831, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L2050
.L2049:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2051
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5837, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L2050
.L2051:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L2052
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jg	.L2053
.L2052:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5843, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L2050
.L2053:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -12(%rbp)
.L2050:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1136:
	.size	ssl_handshake_hash, .-ssl_handshake_hash
	.globl	SSL_session_reused
	.type	SSL_session_reused, @function
SSL_session_reused:
.LFB1137:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2056
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2057
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2058
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2059
.L2058:
	movq	$0, -8(%rbp)
	jmp	.L2059
.L2057:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2059
.L2056:
	movq	$0, -8(%rbp)
.L2059:
	cmpq	$0, -8(%rbp)
	jne	.L2060
	movl	$0, %eax
	jmp	.L2061
.L2060:
	movq	-8(%rbp), %rax
	movl	1168(%rax), %eax
.L2061:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1137:
	.size	SSL_session_reused, .-SSL_session_reused
	.globl	SSL_is_server
	.type	SSL_is_server, @function
SSL_is_server:
.LFB1138:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2063
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2064
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2065
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2066
.L2065:
	movq	$0, -8(%rbp)
	jmp	.L2066
.L2064:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2066
.L2063:
	movq	$0, -8(%rbp)
.L2066:
	cmpq	$0, -8(%rbp)
	jne	.L2067
	movl	$0, %eax
	jmp	.L2068
.L2067:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
.L2068:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1138:
	.size	SSL_is_server, .-SSL_is_server
	.globl	SSL_set_debug
	.type	SSL_set_debug, @function
SSL_set_debug:
.LFB1139:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1139:
	.size	SSL_set_debug, .-SSL_set_debug
	.globl	SSL_set_security_level
	.type	SSL_set_security_level, @function
SSL_set_security_level:
.LFB1140:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2071
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2072
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2073
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2074
.L2073:
	movq	$0, -8(%rbp)
	jmp	.L2074
.L2072:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2074
.L2071:
	movq	$0, -8(%rbp)
.L2074:
	cmpq	$0, -8(%rbp)
	je	.L2077
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 152(%rax)
	jmp	.L2070
.L2077:
	nop
.L2070:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1140:
	.size	SSL_set_security_level, .-SSL_set_security_level
	.globl	SSL_get_security_level
	.type	SSL_get_security_level, @function
SSL_get_security_level:
.LFB1141:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2079
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2080
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2081
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2082
.L2081:
	movq	$0, -8(%rbp)
	jmp	.L2082
.L2080:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2082
.L2079:
	movq	$0, -8(%rbp)
.L2082:
	cmpq	$0, -8(%rbp)
	jne	.L2083
	movl	$0, %eax
	jmp	.L2084
.L2083:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movl	152(%rax), %eax
.L2084:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1141:
	.size	SSL_get_security_level, .-SSL_get_security_level
	.globl	SSL_set_security_callback
	.type	SSL_set_security_callback, @function
SSL_set_security_callback:
.LFB1142:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2086
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2087
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2088
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2089
.L2088:
	movq	$0, -8(%rbp)
	jmp	.L2089
.L2087:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2089
.L2086:
	movq	$0, -8(%rbp)
.L2089:
	cmpq	$0, -8(%rbp)
	je	.L2092
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 144(%rax)
	jmp	.L2085
.L2092:
	nop
.L2085:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1142:
	.size	SSL_set_security_callback, .-SSL_set_security_callback
	.globl	SSL_get_security_callback
	.type	SSL_get_security_callback, @function
SSL_get_security_callback:
.LFB1143:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2094
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2095
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2096
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2097
.L2096:
	movq	$0, -8(%rbp)
	jmp	.L2097
.L2095:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2097
.L2094:
	movq	$0, -8(%rbp)
.L2097:
	cmpq	$0, -8(%rbp)
	jne	.L2098
	movl	$0, %eax
	jmp	.L2099
.L2098:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	144(%rax), %rax
.L2099:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1143:
	.size	SSL_get_security_callback, .-SSL_get_security_callback
	.globl	SSL_set0_security_ex_data
	.type	SSL_set0_security_ex_data, @function
SSL_set0_security_ex_data:
.LFB1144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2101
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2102
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2103
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2104
.L2103:
	movq	$0, -8(%rbp)
	jmp	.L2104
.L2102:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2104
.L2101:
	movq	$0, -8(%rbp)
.L2104:
	cmpq	$0, -8(%rbp)
	je	.L2107
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 160(%rax)
	jmp	.L2100
.L2107:
	nop
.L2100:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1144:
	.size	SSL_set0_security_ex_data, .-SSL_set0_security_ex_data
	.globl	SSL_get0_security_ex_data
	.type	SSL_get0_security_ex_data, @function
SSL_get0_security_ex_data:
.LFB1145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2109
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2110
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2111
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2112
.L2111:
	movq	$0, -8(%rbp)
	jmp	.L2112
.L2110:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2112
.L2109:
	movq	$0, -8(%rbp)
.L2112:
	cmpq	$0, -8(%rbp)
	jne	.L2113
	movl	$0, %eax
	jmp	.L2114
.L2113:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	160(%rax), %rax
.L2114:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1145:
	.size	SSL_get0_security_ex_data, .-SSL_get0_security_ex_data
	.globl	SSL_CTX_set_security_level
	.type	SSL_CTX_set_security_level, @function
SSL_CTX_set_security_level:
.LFB1146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 152(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1146:
	.size	SSL_CTX_set_security_level, .-SSL_CTX_set_security_level
	.globl	SSL_CTX_get_security_level
	.type	SSL_CTX_get_security_level, @function
SSL_CTX_get_security_level:
.LFB1147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movl	152(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1147:
	.size	SSL_CTX_get_security_level, .-SSL_CTX_get_security_level
	.globl	SSL_CTX_set_security_callback
	.type	SSL_CTX_set_security_callback, @function
SSL_CTX_set_security_callback:
.LFB1148:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 144(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1148:
	.size	SSL_CTX_set_security_callback, .-SSL_CTX_set_security_callback
	.globl	SSL_CTX_get_security_callback
	.type	SSL_CTX_get_security_callback, @function
SSL_CTX_get_security_callback:
.LFB1149:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	144(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1149:
	.size	SSL_CTX_get_security_callback, .-SSL_CTX_get_security_callback
	.globl	SSL_CTX_set0_security_ex_data
	.type	SSL_CTX_set0_security_ex_data, @function
SSL_CTX_set0_security_ex_data:
.LFB1150:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 160(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1150:
	.size	SSL_CTX_set0_security_ex_data, .-SSL_CTX_set0_security_ex_data
	.globl	SSL_CTX_get0_security_ex_data
	.type	SSL_CTX_get0_security_ex_data, @function
SSL_CTX_get0_security_ex_data:
.LFB1151:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	160(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1151:
	.size	SSL_CTX_get0_security_ex_data, .-SSL_CTX_get0_security_ex_data
	.globl	SSL_CTX_get_options
	.type	SSL_CTX_get_options, @function
SSL_CTX_get_options:
.LFB1152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1152:
	.size	SSL_CTX_get_options, .-SSL_CTX_get_options
	.globl	SSL_get_options
	.type	SSL_get_options, @function
SSL_get_options:
.LFB1153:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2127
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2128
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2129
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2130
.L2129:
	movq	$0, -8(%rbp)
	jmp	.L2130
.L2128:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2130
.L2127:
	movq	$0, -8(%rbp)
.L2130:
	cmpq	$0, -24(%rbp)
	je	.L2131
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2132
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2131
.L2132:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get_options@PLT
	jmp	.L2133
.L2131:
	cmpq	$0, -8(%rbp)
	jne	.L2134
	movl	$0, %eax
	jmp	.L2133
.L2134:
	movq	-8(%rbp), %rax
	movq	2360(%rax), %rax
.L2133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1153:
	.size	SSL_get_options, .-SSL_get_options
	.globl	SSL_CTX_set_options
	.type	SSL_CTX_set_options, @function
SSL_CTX_set_options:
.LFB1154:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	orq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 312(%rax)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1154:
	.size	SSL_CTX_set_options, .-SSL_CTX_set_options
	.section	.rodata
.LC14:
	.string	"options"
	.text
	.globl	SSL_set_options
	.type	SSL_set_options, @function
SSL_set_options:
.LFB1155:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L2138
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2139
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2138
.L2139:
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_set_options@PLT
	jmp	.L2146
.L2138:
	cmpq	$0, -120(%rbp)
	je	.L2141
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2142
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2143
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L2144
.L2143:
	movq	$0, -24(%rbp)
	jmp	.L2144
.L2142:
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L2144
.L2141:
	movq	$0, -24(%rbp)
.L2144:
	cmpq	$0, -24(%rbp)
	jne	.L2145
	movl	$0, %eax
	jmp	.L2146
.L2145:
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rax
	orq	-128(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2360(%rax)
	movq	-24(%rbp), %rax
	leaq	2360(%rax), %rdx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-176(%rbp), %rax
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	144(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-24(%rbp), %rax
	movq	3040(%rax), %rax
	movq	144(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	3056(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rax
.L2146:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1155:
	.size	SSL_set_options, .-SSL_set_options
	.globl	SSL_CTX_clear_options
	.type	SSL_CTX_clear_options, @function
SSL_CTX_clear_options:
.LFB1156:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-16(%rbp), %rax
	notq	%rax
	andq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 312(%rax)
	movq	-8(%rbp), %rax
	movq	312(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1156:
	.size	SSL_CTX_clear_options, .-SSL_CTX_clear_options
	.globl	SSL_clear_options
	.type	SSL_clear_options, @function
SSL_clear_options:
.LFB1157:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L2150
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2151
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2152
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L2153
.L2152:
	movq	$0, -24(%rbp)
	jmp	.L2153
.L2151:
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L2153
.L2150:
	movq	$0, -24(%rbp)
.L2153:
	leaq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L2154
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2155
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2154
.L2155:
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_clear_options@PLT
	jmp	.L2158
.L2154:
	cmpq	$0, -24(%rbp)
	jne	.L2157
	movl	$0, %eax
	jmp	.L2158
.L2157:
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rdx
	movq	-128(%rbp), %rax
	notq	%rax
	andq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 2360(%rax)
	movq	-24(%rbp), %rax
	leaq	2360(%rax), %rdx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-176(%rbp), %rax
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rax
	movq	3032(%rax), %rax
	movq	144(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	3048(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-24(%rbp), %rax
	movq	3040(%rax), %rax
	movq	144(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	3056(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-24(%rbp), %rax
	movq	2360(%rax), %rax
.L2158:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1157:
	.size	SSL_clear_options, .-SSL_clear_options
	.globl	SSL_get0_verified_chain
	.type	SSL_get0_verified_chain, @function
SSL_get0_verified_chain:
.LFB1158:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2160
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2161
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2162
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2163
.L2162:
	movq	$0, -8(%rbp)
	jmp	.L2163
.L2161:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2163
.L2160:
	movq	$0, -8(%rbp)
.L2163:
	cmpq	$0, -8(%rbp)
	jne	.L2164
	movl	$0, %eax
	jmp	.L2165
.L2164:
	movq	-8(%rbp), %rax
	movq	2328(%rax), %rax
.L2165:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1158:
	.size	SSL_get0_verified_chain, .-SSL_get0_verified_chain
	.type	ssl_cipher_id_cmp_BSEARCH_CMP_FN, @function
ssl_cipher_id_cmp_BSEARCH_CMP_FN:
.LFB1159:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_cipher_id_cmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1159:
	.size	ssl_cipher_id_cmp_BSEARCH_CMP_FN, .-ssl_cipher_id_cmp_BSEARCH_CMP_FN
	.globl	OBJ_bsearch_ssl_cipher_id
	.type	OBJ_bsearch_ssl_cipher_id, @function
OBJ_bsearch_ssl_cipher_id:
.LFB1160:
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
	leaq	ssl_cipher_id_cmp_BSEARCH_CMP_FN(%rip), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	OBJ_bsearch_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1160:
	.size	OBJ_bsearch_ssl_cipher_id, .-OBJ_bsearch_ssl_cipher_id
	.type	ct_move_scts, @function
ct_move_scts:
.LFB1161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2173
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2173
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6101, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L2172
.L2176:
	movl	-52(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SCT_set_source@PLT
	cmpl	$1, %eax
	jne	.L2178
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SCT_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_SCT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L2179
	addl	$1, -20(%rbp)
.L2173:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SCT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_pop@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L2176
	movl	-20(%rbp), %eax
	jmp	.L2177
.L2178:
	nop
	jmp	.L2172
.L2179:
	nop
.L2172:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_free@PLT
	movl	$-1, %eax
.L2177:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1161:
	.size	ct_move_scts, .-ct_move_scts
	.type	ct_extract_tls_extension_scts, @function
ct_extract_tls_extension_scts:
.LFB1162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	2488(%rax), %rax
	testq	%rax, %rax
	je	.L2181
	movq	-40(%rbp), %rax
	movq	2488(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movzwl	2496(%rax), %eax
	movzwl	%ax, %edx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	o2i_SCT_LIST@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	2784(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ct_move_scts
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_LIST_free@PLT
.L2181:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1162:
	.size	ct_extract_tls_extension_scts, .-ct_extract_tls_extension_scts
	.type	ct_extract_ocsp_response_scts, @function
ct_extract_ocsp_response_scts:
.LFB1163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	2520(%rax), %rax
	testq	%rax, %rax
	je	.L2194
	movq	-72(%rbp), %rax
	movq	2528(%rax), %rax
	testq	%rax, %rax
	je	.L2194
	movq	-72(%rbp), %rax
	movq	2520(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	2528(%rax), %rax
	movslq	%eax, %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_OCSP_RESPONSE@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2195
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_response_get1_basic@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L2196
	movl	$0, -36(%rbp)
	jmp	.L2189
.L2192:
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OCSP_resp_get0@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L2197
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$954, %esi
	movq	%rax, %rdi
	call	OCSP_SINGLERESP_get1_ext_d2i@PLT
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	leaq	2784(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$3, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ct_move_scts
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L2198
	jmp	.L2191
.L2197:
	nop
.L2191:
	addl	$1, -36(%rbp)
.L2189:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_resp_count@PLT
	cmpl	%eax, -36(%rbp)
	jl	.L2192
	jmp	.L2186
.L2194:
	nop
	jmp	.L2186
.L2195:
	nop
	jmp	.L2186
.L2196:
	nop
	jmp	.L2186
.L2198:
	nop
.L2186:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_LIST_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_BASICRESP_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_RESPONSE_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1163:
	.size	ct_extract_ocsp_response_scts, .-ct_extract_ocsp_response_scts
	.type	ct_extract_x509v3_extension_scts, @function
ct_extract_x509v3_extension_scts:
.LFB1164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L2200
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	704(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L2201
.L2200:
	movq	$0, -16(%rbp)
.L2201:
	cmpq	$0, -16(%rbp)
	je	.L2202
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$951, %esi
	movq	%rax, %rdi
	call	X509_get_ext_d2i@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	2784(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ct_move_scts
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_LIST_free@PLT
.L2202:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1164:
	.size	ct_extract_x509v3_extension_scts, .-ct_extract_x509v3_extension_scts
	.globl	SSL_get0_peer_scts
	.type	SSL_get0_peer_scts, @function
SSL_get0_peer_scts:
.LFB1165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2205
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2206
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2207
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2208
.L2207:
	movq	$0, -8(%rbp)
	jmp	.L2208
.L2206:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2208
.L2205:
	movq	$0, -8(%rbp)
.L2208:
	cmpq	$0, -8(%rbp)
	jne	.L2209
	movl	$0, %eax
	jmp	.L2210
.L2209:
	movq	-8(%rbp), %rax
	movl	2792(%rax), %eax
	testl	%eax, %eax
	jne	.L2211
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ct_extract_tls_extension_scts
	testl	%eax, %eax
	js	.L2215
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ct_extract_ocsp_response_scts
	testl	%eax, %eax
	js	.L2215
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ct_extract_x509v3_extension_scts
	testl	%eax, %eax
	js	.L2215
	movq	-8(%rbp), %rax
	movl	$1, 2792(%rax)
.L2211:
	movq	-8(%rbp), %rax
	movq	2784(%rax), %rax
	jmp	.L2210
.L2215:
	nop
.L2214:
	movl	$0, %eax
.L2210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1165:
	.size	SSL_get0_peer_scts, .-SSL_get0_peer_scts
	.type	ct_permissive, @function
ct_permissive:
.LFB1166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1166:
	.size	ct_permissive, .-ct_permissive
	.type	ct_strict, @function
ct_strict:
.LFB1167:
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
	cmpq	$0, -48(%rbp)
	je	.L2219
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -4(%rbp)
	jmp	.L2220
.L2219:
	movl	$0, -4(%rbp)
.L2220:
	movl	$0, -8(%rbp)
	jmp	.L2221
.L2224:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_get_validation_status@PLT
	movl	%eax, -20(%rbp)
	cmpl	$2, -20(%rbp)
	jne	.L2222
	movl	$1, %eax
	jmp	.L2223
.L2222:
	addl	$1, -8(%rbp)
.L2221:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L2224
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6262, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$216, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L2223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1167:
	.size	ct_strict, .-ct_strict
	.globl	SSL_set_ct_validation_callback
	.type	SSL_set_ct_validation_callback, @function
SSL_set_ct_validation_callback:
.LFB1168:
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
	cmpq	$0, -24(%rbp)
	je	.L2226
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2227
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2228
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2229
.L2228:
	movq	$0, -8(%rbp)
	jmp	.L2229
.L2227:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2229
.L2226:
	movq	$0, -8(%rbp)
.L2229:
	cmpq	$0, -8(%rbp)
	jne	.L2230
	movl	$0, %eax
	jmp	.L2231
.L2230:
	cmpq	$0, -32(%rbp)
	je	.L2232
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$18, %esi
	movq	%rax, %rdi
	call	SSL_CTX_has_client_custom_ext@PLT
	testl	%eax, %eax
	je	.L2232
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6281, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$206, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2231
.L2232:
	cmpq	$0, -32(%rbp)
	je	.L2233
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$65, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	jne	.L2233
	movl	$0, %eax
	jmp	.L2231
.L2233:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2768(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 2776(%rax)
	movl	$1, %eax
.L2231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1168:
	.size	SSL_set_ct_validation_callback, .-SSL_set_ct_validation_callback
	.globl	SSL_CTX_set_ct_validation_callback
	.type	SSL_CTX_set_ct_validation_callback, @function
SSL_CTX_set_ct_validation_callback:
.LFB1169:
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
	cmpq	$0, -16(%rbp)
	je	.L2235
	movq	-8(%rbp), %rax
	movl	$18, %esi
	movq	%rax, %rdi
	call	SSL_CTX_has_client_custom_ext@PLT
	testl	%eax, %eax
	je	.L2235
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6309, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$206, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2236
.L2235:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 472(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 480(%rax)
	movl	$1, %eax
.L2236:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1169:
	.size	SSL_CTX_set_ct_validation_callback, .-SSL_CTX_set_ct_validation_callback
	.globl	SSL_ct_is_enabled
	.type	SSL_ct_is_enabled, @function
SSL_ct_is_enabled:
.LFB1170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2238
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2239
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2240
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2241
.L2240:
	movq	$0, -8(%rbp)
	jmp	.L2241
.L2239:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2241
.L2238:
	movq	$0, -8(%rbp)
.L2241:
	cmpq	$0, -8(%rbp)
	jne	.L2242
	movl	$0, %eax
	jmp	.L2243
.L2242:
	movq	-8(%rbp), %rax
	movq	2768(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L2243:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1170:
	.size	SSL_ct_is_enabled, .-SSL_ct_is_enabled
	.globl	SSL_CTX_ct_is_enabled
	.type	SSL_CTX_ct_is_enabled, @function
SSL_CTX_ct_is_enabled:
.LFB1171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1171:
	.size	SSL_CTX_ct_is_enabled, .-SSL_CTX_ct_is_enabled
	.globl	ssl_validate_ct
	.type	ssl_validate_ct, @function
ssl_validate_ct:
.LFB1172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L2247
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	704(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L2248
.L2247:
	movq	$0, -16(%rbp)
.L2248:
	movq	-56(%rbp), %rax
	addq	$1184, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	2768(%rax), %rax
	testq	%rax, %rax
	je	.L2249
	cmpq	$0, -16(%rbp)
	je	.L2249
	movq	-56(%rbp), %rax
	movq	2336(%rax), %rax
	testq	%rax, %rax
	jne	.L2249
	movq	-56(%rbp), %rax
	movq	2328(%rax), %rax
	testq	%rax, %rax
	je	.L2249
	movq	-56(%rbp), %rax
	movq	2328(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	jg	.L2250
.L2249:
	movl	$1, %eax
	jmp	.L2251
.L2250:
	cmpq	$0, -24(%rbp)
	je	.L2252
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_danetls_record_num
	testl	%eax, %eax
	jle	.L2252
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L2252
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$2, %eax
	cmpl	$1, %eax
	ja	.L2252
	movl	$1, %eax
	jmp	.L2251
.L2252:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	1096(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L2253
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6373, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$524338, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L2254
.L2253:
	movq	-56(%rbp), %rax
	movq	2328(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$1, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_set1_cert@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_set1_issuer@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	464(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_set_shared_CTLOG_STORE@PLT
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_get_time@PLT
	imulq	$1000, %rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_set_time@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_scts@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SCT_LIST_validate@PLT
	testl	%eax, %eax
	jns	.L2255
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6402, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$208, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L2254
.L2255:
	movq	-56(%rbp), %rax
	movq	2768(%rax), %r8
	movq	-56(%rbp), %rax
	movq	2776(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L2256
	movl	$0, -4(%rbp)
.L2256:
	cmpl	$0, -4(%rbp)
	jne	.L2258
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6410, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$234, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L2254
.L2258:
	nop
.L2254:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CT_POLICY_EVAL_CTX_free@PLT
	cmpl	$0, -4(%rbp)
	jg	.L2257
	movq	-56(%rbp), %rax
	movq	$71, 2336(%rax)
.L2257:
	movl	-4(%rbp), %eax
.L2251:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1172:
	.size	ssl_validate_ct, .-ssl_validate_ct
	.globl	SSL_CTX_enable_ct
	.type	SSL_CTX_enable_ct, @function
SSL_CTX_enable_ct:
.LFB1173:
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
	je	.L2260
	cmpl	$1, -12(%rbp)
	je	.L2261
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6438, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$212, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2262
.L2260:
	leaq	ct_permissive(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ct_validation_callback@PLT
	jmp	.L2262
.L2261:
	leaq	ct_strict(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ct_validation_callback@PLT
.L2262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1173:
	.size	SSL_CTX_enable_ct, .-SSL_CTX_enable_ct
	.globl	SSL_enable_ct
	.type	SSL_enable_ct, @function
SSL_enable_ct:
.LFB1174:
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
	je	.L2264
	cmpl	$1, -12(%rbp)
	je	.L2265
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6451, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$212, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2266
.L2264:
	leaq	ct_permissive(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_ct_validation_callback@PLT
	jmp	.L2266
.L2265:
	leaq	ct_strict(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_ct_validation_callback@PLT
.L2266:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1174:
	.size	SSL_enable_ct, .-SSL_enable_ct
	.globl	SSL_CTX_set_default_ctlog_list_file
	.type	SSL_CTX_set_default_ctlog_list_file, @function
SSL_CTX_set_default_ctlog_list_file:
.LFB1175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, %rdi
	call	CTLOG_STORE_load_default_file@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1175:
	.size	SSL_CTX_set_default_ctlog_list_file, .-SSL_CTX_set_default_ctlog_list_file
	.globl	SSL_CTX_set_ctlog_list_file
	.type	SSL_CTX_set_ctlog_list_file, @function
SSL_CTX_set_ctlog_list_file:
.LFB1176:
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
	movq	464(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CTLOG_STORE_load_file@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1176:
	.size	SSL_CTX_set_ctlog_list_file, .-SSL_CTX_set_ctlog_list_file
	.globl	SSL_CTX_set0_ctlog_store
	.type	SSL_CTX_set0_ctlog_store, @function
SSL_CTX_set0_ctlog_store:
.LFB1177:
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
	movq	464(%rax), %rax
	movq	%rax, %rdi
	call	CTLOG_STORE_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 464(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1177:
	.size	SSL_CTX_set0_ctlog_store, .-SSL_CTX_set0_ctlog_store
	.globl	SSL_CTX_get0_ctlog_store
	.type	SSL_CTX_get0_ctlog_store, @function
SSL_CTX_get0_ctlog_store:
.LFB1178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1178:
	.size	SSL_CTX_get0_ctlog_store, .-SSL_CTX_get0_ctlog_store
	.globl	SSL_CTX_set_client_hello_cb
	.type	SSL_CTX_set_client_hello_cb, @function
SSL_CTX_set_client_hello_cb:
.LFB1179:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 528(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 536(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1179:
	.size	SSL_CTX_set_client_hello_cb, .-SSL_CTX_set_client_hello_cb
	.globl	SSL_client_hello_isv2
	.type	SSL_client_hello_isv2, @function
SSL_client_hello_isv2:
.LFB1180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2276
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2277
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2278
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2279
.L2278:
	movq	$0, -8(%rbp)
	jmp	.L2279
.L2277:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2279
.L2276:
	movq	$0, -8(%rbp)
.L2279:
	cmpq	$0, -8(%rbp)
	jne	.L2280
	movl	$0, %eax
	jmp	.L2281
.L2280:
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	testq	%rax, %rax
	jne	.L2282
	movl	$0, %eax
	jmp	.L2281
.L2282:
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	movl	(%rax), %eax
.L2281:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1180:
	.size	SSL_client_hello_isv2, .-SSL_client_hello_isv2
	.globl	SSL_client_hello_get0_legacy_version
	.type	SSL_client_hello_get0_legacy_version, @function
SSL_client_hello_get0_legacy_version:
.LFB1181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2284
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2285
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2286
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2287
.L2286:
	movq	$0, -8(%rbp)
	jmp	.L2287
.L2285:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2287
.L2284:
	movq	$0, -8(%rbp)
.L2287:
	cmpq	$0, -8(%rbp)
	jne	.L2288
	movl	$0, %eax
	jmp	.L2289
.L2288:
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	testq	%rax, %rax
	jne	.L2290
	movl	$0, %eax
	jmp	.L2289
.L2290:
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	movl	4(%rax), %eax
.L2289:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1181:
	.size	SSL_client_hello_get0_legacy_version, .-SSL_client_hello_get0_legacy_version
	.globl	SSL_client_hello_get0_random
	.type	SSL_client_hello_get0_random, @function
SSL_client_hello_get0_random:
.LFB1182:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2292
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2293
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2294
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2295
.L2294:
	movq	$0, -8(%rbp)
	jmp	.L2295
.L2293:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2295
.L2292:
	movq	$0, -8(%rbp)
.L2295:
	cmpq	$0, -8(%rbp)
	jne	.L2296
	movl	$0, %eax
	jmp	.L2297
.L2296:
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	testq	%rax, %rax
	jne	.L2298
	movl	$0, %eax
	jmp	.L2297
.L2298:
	cmpq	$0, -32(%rbp)
	je	.L2299
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L2299:
	movl	$32, %eax
.L2297:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1182:
	.size	SSL_client_hello_get0_random, .-SSL_client_hello_get0_random
	.globl	SSL_client_hello_get0_session_id
	.type	SSL_client_hello_get0_session_id, @function
SSL_client_hello_get0_session_id:
.LFB1183:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2301
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2302
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2303
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2304
.L2303:
	movq	$0, -8(%rbp)
	jmp	.L2304
.L2302:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2304
.L2301:
	movq	$0, -8(%rbp)
.L2304:
	cmpq	$0, -8(%rbp)
	jne	.L2305
	movl	$0, %eax
	jmp	.L2306
.L2305:
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	testq	%rax, %rax
	jne	.L2307
	movl	$0, %eax
	jmp	.L2306
.L2307:
	cmpq	$0, -32(%rbp)
	je	.L2308
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	leaq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L2308:
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	movq	40(%rax), %rax
.L2306:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1183:
	.size	SSL_client_hello_get0_session_id, .-SSL_client_hello_get0_session_id
	.globl	SSL_client_hello_get0_ciphers
	.type	SSL_client_hello_get0_ciphers, @function
SSL_client_hello_get0_ciphers:
.LFB1184:
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
	je	.L2310
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2311
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2312
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2313
.L2312:
	movq	$0, -8(%rbp)
	jmp	.L2313
.L2311:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2313
.L2310:
	movq	$0, -8(%rbp)
.L2313:
	cmpq	$0, -8(%rbp)
	jne	.L2314
	movl	$0, %eax
	jmp	.L2315
.L2314:
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	testq	%rax, %rax
	jne	.L2316
	movl	$0, %eax
	jmp	.L2315
.L2316:
	cmpq	$0, -32(%rbp)
	je	.L2317
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	addq	$344, %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
.L2317:
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	addq	$344, %rax
	movq	%rax, %rdi
	call	PACKET_remaining
.L2315:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1184:
	.size	SSL_client_hello_get0_ciphers, .-SSL_client_hello_get0_ciphers
	.globl	SSL_client_hello_get0_compression_methods
	.type	SSL_client_hello_get0_compression_methods, @function
SSL_client_hello_get0_compression_methods:
.LFB1185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2319
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2320
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2321
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2322
.L2321:
	movq	$0, -8(%rbp)
	jmp	.L2322
.L2320:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2322
.L2319:
	movq	$0, -8(%rbp)
.L2322:
	cmpq	$0, -8(%rbp)
	jne	.L2323
	movl	$0, %eax
	jmp	.L2324
.L2323:
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	testq	%rax, %rax
	jne	.L2325
	movl	$0, %eax
	jmp	.L2324
.L2325:
	cmpq	$0, -32(%rbp)
	je	.L2326
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	leaq	368(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L2326:
	movq	-8(%rbp), %rax
	movq	2752(%rax), %rax
	movq	360(%rax), %rax
.L2324:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1185:
	.size	SSL_client_hello_get0_compression_methods, .-SSL_client_hello_get0_compression_methods
	.globl	SSL_client_hello_get1_extensions_present
	.type	SSL_client_hello_get1_extensions_present, @function
SSL_client_hello_get1_extensions_present:
.LFB1186:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L2328
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2329
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2330
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L2331
.L2330:
	movq	$0, -24(%rbp)
	jmp	.L2331
.L2329:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L2331
.L2328:
	movq	$0, -24(%rbp)
.L2331:
	cmpq	$0, -24(%rbp)
	jne	.L2332
	movl	$0, %eax
	jmp	.L2333
.L2332:
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	testq	%rax, %rax
	je	.L2334
	cmpq	$0, -64(%rbp)
	je	.L2334
	cmpq	$0, -72(%rbp)
	jne	.L2335
.L2334:
	movl	$0, %eax
	jmp	.L2333
.L2335:
	movq	$0, -16(%rbp)
	jmp	.L2336
.L2338:
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	movq	648(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L2337
	addq	$1, -8(%rbp)
.L2337:
	addq	$1, -16(%rbp)
.L2336:
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	movq	640(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L2338
	cmpq	$0, -8(%rbp)
	jne	.L2339
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L2333
.L2339:
	movq	-8(%rbp), %rax
	salq	$2, %rax
	leaq	.LC1(%rip), %rcx
	movl	$6592, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L2340
	movl	$0, %eax
	jmp	.L2333
.L2340:
	movq	$0, -16(%rbp)
	jmp	.L2341
.L2345:
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	movq	648(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L2342
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L2347
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movl	%edx, (%rax)
.L2342:
	addq	$1, -16(%rbp)
.L2341:
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	movq	640(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L2345
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L2333
.L2347:
	nop
.L2344:
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$6606, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L2333:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1186:
	.size	SSL_client_hello_get1_extensions_present, .-SSL_client_hello_get1_extensions_present
	.globl	SSL_client_hello_get_extension_order
	.type	SSL_client_hello_get_extension_order, @function
SSL_client_hello_get_extension_order:
.LFB1187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L2349
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2350
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2351
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L2352
.L2351:
	movq	$0, -24(%rbp)
	jmp	.L2352
.L2350:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L2352
.L2349:
	movq	$0, -24(%rbp)
.L2352:
	cmpq	$0, -24(%rbp)
	jne	.L2353
	movl	$0, %eax
	jmp	.L2354
.L2353:
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	testq	%rax, %rax
	je	.L2355
	cmpq	$0, -56(%rbp)
	jne	.L2356
.L2355:
	movl	$0, %eax
	jmp	.L2354
.L2356:
	movq	$0, -16(%rbp)
	jmp	.L2357
.L2359:
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	movq	648(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L2358
	addq	$1, -8(%rbp)
.L2358:
	addq	$1, -16(%rbp)
.L2357:
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	movq	640(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L2359
	cmpq	$0, -8(%rbp)
	jne	.L2360
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L2354
.L2360:
	cmpq	$0, -48(%rbp)
	jne	.L2361
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L2354
.L2361:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L2362
	movl	$0, %eax
	jmp	.L2354
.L2362:
	movq	$0, -16(%rbp)
	jmp	.L2363
.L2366:
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	movq	648(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L2364
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-8(%rbp), %rax
	jb	.L2365
	movl	$0, %eax
	jmp	.L2354
.L2365:
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	leaq	(%rax,%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movw	%dx, (%rax)
.L2364:
	addq	$1, -16(%rbp)
.L2363:
	movq	-24(%rbp), %rax
	movq	2752(%rax), %rax
	movq	640(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L2366
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L2354:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1187:
	.size	SSL_client_hello_get_extension_order, .-SSL_client_hello_get_extension_order
	.globl	SSL_client_hello_get0_ext
	.type	SSL_client_hello_get0_ext, @function
SSL_client_hello_get0_ext:
.LFB1188:
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
	cmpq	$0, -40(%rbp)
	je	.L2368
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2369
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2370
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L2371
.L2370:
	movq	$0, -16(%rbp)
	jmp	.L2371
.L2369:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L2371
.L2368:
	movq	$0, -16(%rbp)
.L2371:
	cmpq	$0, -16(%rbp)
	jne	.L2372
	movl	$0, %eax
	jmp	.L2373
.L2372:
	movq	-16(%rbp), %rax
	movq	2752(%rax), %rax
	testq	%rax, %rax
	jne	.L2374
	movl	$0, %eax
	jmp	.L2373
.L2374:
	movq	$0, -8(%rbp)
	jmp	.L2375
.L2379:
	movq	-16(%rbp), %rax
	movq	2752(%rax), %rax
	movq	648(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L2376
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L2376
	cmpq	$0, -56(%rbp)
	je	.L2377
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
.L2377:
	cmpq	$0, -64(%rbp)
	je	.L2378
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
.L2378:
	movl	$1, %eax
	jmp	.L2373
.L2376:
	addq	$1, -8(%rbp)
.L2375:
	movq	-16(%rbp), %rax
	movq	2752(%rax), %rax
	movq	640(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L2379
	movl	$0, %eax
.L2373:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1188:
	.size	SSL_client_hello_get0_ext, .-SSL_client_hello_get0_ext
	.globl	SSL_free_buffers
	.type	SSL_free_buffers, @function
SSL_free_buffers:
.LFB1189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2381
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2382
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2383
.L2382:
	movq	$0, -8(%rbp)
	jmp	.L2383
.L2381:
	movq	$0, -8(%rbp)
.L2383:
	cmpq	$0, -8(%rbp)
	jne	.L2384
	movl	$0, %eax
	jmp	.L2385
.L2384:
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	192(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L2386
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	192(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L2386
	movl	$1, %eax
	jmp	.L2385
.L2386:
	movl	$0, %eax
.L2385:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1189:
	.size	SSL_free_buffers, .-SSL_free_buffers
	.globl	SSL_alloc_buffers
	.type	SSL_alloc_buffers, @function
SSL_alloc_buffers:
.LFB1190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2389
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2390
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2391
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2392
.L2391:
	movq	$0, -8(%rbp)
	jmp	.L2392
.L2390:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2392
.L2389:
	movq	$0, -8(%rbp)
.L2392:
	cmpq	$0, -8(%rbp)
	jne	.L2393
	movl	$0, %eax
	jmp	.L2394
.L2393:
	cmpq	$0, -24(%rbp)
	je	.L2395
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2396
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2395
.L2396:
	movl	$1, %eax
	jmp	.L2394
.L2395:
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	184(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L2397
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	184(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L2397
	movl	$1, %eax
	jmp	.L2394
.L2397:
	movl	$0, %eax
.L2394:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1190:
	.size	SSL_alloc_buffers, .-SSL_alloc_buffers
	.globl	SSL_CTX_set_keylog_callback
	.type	SSL_CTX_set_keylog_callback, @function
SSL_CTX_set_keylog_callback:
.LFB1191:
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
	movq	%rdx, 984(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1191:
	.size	SSL_CTX_set_keylog_callback, .-SSL_CTX_set_keylog_callback
	.globl	SSL_CTX_get_keylog_callback
	.type	SSL_CTX_get_keylog_callback, @function
SSL_CTX_get_keylog_callback:
.LFB1192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	984(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1192:
	.size	SSL_CTX_get_keylog_callback, .-SSL_CTX_get_keylog_callback
	.section	.rodata
.LC15:
	.string	"%02x"
	.text
	.type	nss_keylog_int, @function
nss_keylog_int:
.LFB1193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	984(%rax), %rax
	testq	%rax, %rax
	jne	.L2403
	movl	$1, %eax
	jmp	.L2404
.L2403:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	leaq	(%rax,%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	addq	$3, %rax
	movq	%rax, -32(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$6742, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2405
	movl	$0, %eax
	jmp	.L2404
.L2405:
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-48(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$32, (%rax)
	movq	$0, -16(%rbp)
	jmp	.L2406
.L2407:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC15(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	addq	$2, -8(%rbp)
	addq	$1, -16(%rbp)
.L2406:
	movq	-16(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L2407
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$32, (%rax)
	movq	$0, -16(%rbp)
	jmp	.L2408
.L2409:
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC15(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	addq	$2, -8(%rbp)
	addq	$1, -16(%rbp)
.L2408:
	movq	-16(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L2409
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	984(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$6762, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	$1, %eax
.L2404:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1193:
	.size	nss_keylog_int, .-nss_keylog_int
	.section	.rodata
.LC16:
	.string	"RSA"
	.text
	.globl	ssl_log_rsa_client_key_exchange
	.type	ssl_log_rsa_client_key_exchange, @function
ssl_log_rsa_client_key_exchange:
.LFB1194:
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
	movq	%r8, -40(%rbp)
	cmpq	$7, -24(%rbp)
	ja	.L2411
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6774, %esi
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
	jmp	.L2412
.L2411:
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC16(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$8, %ecx
	movq	%rax, %rsi
	call	nss_keylog_int
.L2412:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1194:
	.size	ssl_log_rsa_client_key_exchange, .-ssl_log_rsa_client_key_exchange
	.globl	ssl_log_secret
	.type	ssl_log_secret, @function
ssl_log_secret:
.LFB1195:
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
	leaq	328(%rax), %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$32, %ecx
	movq	%rax, %rdi
	call	nss_keylog_int
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1195:
	.size	ssl_log_secret, .-ssl_log_secret
	.globl	ssl_cache_cipherlist
	.type	ssl_cache_cipherlist, @function
ssl_cache_cipherlist:
.LFB1196:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L2416
	movl	$3, -4(%rbp)
	jmp	.L2417
.L2416:
	movl	$2, -4(%rbp)
.L2417:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L2418
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6809, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$183, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L2419
.L2418:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	testq	%rax, %rax
	je	.L2420
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6814, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$151, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L2419
.L2420:
	movq	-72(%rbp), %rax
	movq	816(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$6818, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, 816(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 824(%rax)
	cmpl	$0, -84(%rbp)
	je	.L2421
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	-4(%rbp), %edx
	movslq	%edx, %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, %rax
	leaq	.LC1(%rip), %rcx
	movl	$6835, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 816(%rax)
	cmpq	$0, -16(%rbp)
	jne	.L2422
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6838, %esi
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
	jmp	.L2419
.L2422:
	movq	-72(%rbp), %rax
	movq	$0, 824(%rax)
	jmp	.L2424
.L2429:
	leaq	-52(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L2425
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jne	.L2426
	movq	-16(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	je	.L2425
.L2426:
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	je	.L2427
	leaq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L2427
.L2425:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6850, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$240, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-72(%rbp), %rax
	movq	816(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$6851, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, 816(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 824(%rax)
	movl	$0, %eax
	jmp	.L2419
.L2427:
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jne	.L2428
	movq	-72(%rbp), %rax
	movq	824(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 824(%rax)
.L2428:
	addq	$2, -16(%rbp)
.L2424:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L2429
	jmp	.L2430
.L2421:
	movq	-72(%rbp), %rax
	leaq	824(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	816(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_memdup
	testl	%eax, %eax
	jne	.L2430
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6861, %esi
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
	jmp	.L2419
.L2430:
	movl	$1, %eax
.L2419:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1196:
	.size	ssl_cache_cipherlist, .-ssl_cache_cipherlist
	.globl	SSL_bytes_to_cipher_list
	.type	SSL_bytes_to_cipher_list, @function
SSL_bytes_to_cipher_list:
.LFB1197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L2432
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2433
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2434
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2435
.L2434:
	movq	$0, -8(%rbp)
	jmp	.L2435
.L2433:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2435
.L2432:
	movq	$0, -8(%rbp)
.L2435:
	cmpq	$0, -8(%rbp)
	jne	.L2436
	movl	$0, %eax
	jmp	.L2439
.L2436:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L2438
	movl	$0, %eax
	jmp	.L2439
.L2438:
	movl	-60(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_bytes_to_cipher_list@PLT
.L2439:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1197:
	.size	SSL_bytes_to_cipher_list, .-SSL_bytes_to_cipher_list
	.globl	ossl_bytes_to_cipher_list
	.type	ossl_bytes_to_cipher_list, @function
ossl_bytes_to_cipher_list:
.LFB1198:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	%r9d, -104(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L2441
	movl	$3, -20(%rbp)
	jmp	.L2442
.L2441:
	movl	$2, -20(%rbp)
.L2442:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L2443
	cmpl	$0, -104(%rbp)
	je	.L2444
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6898, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$183, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L2445
.L2444:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6900, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$183, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L2445:
	movl	$0, %eax
	jmp	.L2471
.L2443:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	-20(%rbp), %edx
	movslq	%edx, %rbx
	movl	$0, %edx
	divq	%rbx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	testq	%rax, %rax
	je	.L2447
	cmpl	$0, -104(%rbp)
	je	.L2448
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6906, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$151, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L2449
.L2448:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6909, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L2449:
	movl	$0, %eax
	jmp	.L2471
.L2447:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L2450
	cmpq	$0, -40(%rbp)
	jne	.L2455
.L2450:
	cmpl	$0, -104(%rbp)
	je	.L2452
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6917, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L2454
.L2452:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6919, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L2454
.L2463:
	cmpl	$0, -100(%rbp)
	je	.L2456
	movzbl	-51(%rbp), %eax
	testb	%al, %al
	je	.L2456
	jmp	.L2455
.L2456:
	cmpl	$0, -100(%rbp)
	je	.L2457
	leaq	-51(%rbp), %rax
	addq	$1, %rax
	jmp	.L2458
.L2457:
	leaq	-51(%rbp), %rax
.L2458:
	movq	-72(%rbp), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ssl_get_cipher_by_char@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L2455
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2459
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L2460
.L2459:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2455
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L2455
.L2460:
	cmpl	$0, -104(%rbp)
	je	.L2461
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6938, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L2454
.L2461:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6940, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L2454
.L2455:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-51(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L2463
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L2464
	cmpl	$0, -104(%rbp)
	je	.L2465
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6947, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L2454
.L2465:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6949, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$271, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L2454
.L2464:
	cmpq	$0, -88(%rbp)
	je	.L2467
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L2468
.L2467:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
.L2468:
	cmpq	$0, -96(%rbp)
	je	.L2469
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L2470
.L2469:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
.L2470:
	movl	$1, %eax
	jmp	.L2471
.L2454:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_SSL_CIPHER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
.L2471:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1198:
	.size	ossl_bytes_to_cipher_list, .-ossl_bytes_to_cipher_list
	.globl	SSL_CTX_set_max_early_data
	.type	SSL_CTX_set_max_early_data, @function
SSL_CTX_set_max_early_data:
.LFB1199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 992(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1199:
	.size	SSL_CTX_set_max_early_data, .-SSL_CTX_set_max_early_data
	.globl	SSL_CTX_get_max_early_data
	.type	SSL_CTX_get_max_early_data, @function
SSL_CTX_get_max_early_data:
.LFB1200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	992(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1200:
	.size	SSL_CTX_get_max_early_data, .-SSL_CTX_get_max_early_data
	.globl	SSL_set_max_early_data
	.type	SSL_set_max_early_data, @function
SSL_set_max_early_data:
.LFB1201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2477
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2478
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2479
.L2478:
	movq	$0, -8(%rbp)
	jmp	.L2479
.L2477:
	movq	$0, -8(%rbp)
.L2479:
	cmpq	$0, -8(%rbp)
	jne	.L2480
	movl	$0, %eax
	jmp	.L2481
.L2480:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 5280(%rax)
	movl	$1, %eax
.L2481:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1201:
	.size	SSL_set_max_early_data, .-SSL_set_max_early_data
	.globl	SSL_get_max_early_data
	.type	SSL_get_max_early_data, @function
SSL_get_max_early_data:
.LFB1202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2483
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2484
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2485
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2486
.L2485:
	movq	$0, -8(%rbp)
	jmp	.L2486
.L2484:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2486
.L2483:
	movq	$0, -8(%rbp)
.L2486:
	cmpq	$0, -8(%rbp)
	jne	.L2487
	movl	$0, %eax
	jmp	.L2488
.L2487:
	movq	-8(%rbp), %rax
	movl	5280(%rax), %eax
.L2488:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1202:
	.size	SSL_get_max_early_data, .-SSL_get_max_early_data
	.globl	SSL_CTX_set_recv_max_early_data
	.type	SSL_CTX_set_recv_max_early_data, @function
SSL_CTX_set_recv_max_early_data:
.LFB1203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 996(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1203:
	.size	SSL_CTX_set_recv_max_early_data, .-SSL_CTX_set_recv_max_early_data
	.globl	SSL_CTX_get_recv_max_early_data
	.type	SSL_CTX_get_recv_max_early_data, @function
SSL_CTX_get_recv_max_early_data:
.LFB1204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	996(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1204:
	.size	SSL_CTX_get_recv_max_early_data, .-SSL_CTX_get_recv_max_early_data
	.globl	SSL_set_recv_max_early_data
	.type	SSL_set_recv_max_early_data, @function
SSL_set_recv_max_early_data:
.LFB1205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2494
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2495
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2496
.L2495:
	movq	$0, -8(%rbp)
	jmp	.L2496
.L2494:
	movq	$0, -8(%rbp)
.L2496:
	cmpq	$0, -8(%rbp)
	jne	.L2497
	movl	$0, %eax
	jmp	.L2498
.L2497:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 5284(%rax)
	movl	$1, %eax
.L2498:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1205:
	.size	SSL_set_recv_max_early_data, .-SSL_set_recv_max_early_data
	.globl	SSL_get_recv_max_early_data
	.type	SSL_get_recv_max_early_data, @function
SSL_get_recv_max_early_data:
.LFB1206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2500
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2501
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2502
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2503
.L2502:
	movq	$0, -8(%rbp)
	jmp	.L2503
.L2501:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2503
.L2500:
	movq	$0, -8(%rbp)
.L2503:
	cmpq	$0, -8(%rbp)
	jne	.L2504
	movl	$0, %eax
	jmp	.L2505
.L2504:
	movq	-8(%rbp), %rax
	movl	5284(%rax), %eax
.L2505:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1206:
	.size	SSL_get_recv_max_early_data, .-SSL_get_recv_max_early_data
	.globl	ssl_get_max_send_fragment
	.type	ssl_get_max_send_fragment, @function
ssl_get_max_send_fragment:
.LFB1207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L2507
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	testb	%al, %al
	je	.L2507
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	cmpb	$4, %al
	ja	.L2507
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	$512, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L2508
.L2507:
	movq	-8(%rbp), %rax
	movq	2408(%rax), %rax
.L2508:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1207:
	.size	ssl_get_max_send_fragment, .-ssl_get_max_send_fragment
	.globl	ssl_get_split_send_fragment
	.type	ssl_get_split_send_fragment, @function
ssl_get_split_send_fragment:
.LFB1208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L2510
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	testb	%al, %al
	je	.L2510
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	cmpb	$4, %al
	ja	.L2510
	movq	-8(%rbp), %rax
	movq	2400(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	2184(%rdx), %rdx
	movzbl	856(%rdx), %edx
	movzbl	%dl, %edx
	subl	$1, %edx
	movl	$512, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	movl	%edx, %edx
	cmpq	%rax, %rdx
	jnb	.L2510
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movzbl	856(%rax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	movl	$512, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	jmp	.L2511
.L2510:
	movq	-8(%rbp), %rax
	movq	2400(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	2408(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L2512
	movq	-8(%rbp), %rax
	movq	2408(%rax), %rax
	jmp	.L2511
.L2512:
	movq	-8(%rbp), %rax
	movq	2400(%rax), %rax
.L2511:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1208:
	.size	ssl_get_split_send_fragment, .-ssl_get_split_send_fragment
	.globl	SSL_stateless
	.type	SSL_stateless, @function
SSL_stateless:
.LFB1209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2514
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2515
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2516
.L2515:
	movq	$0, -8(%rbp)
	jmp	.L2516
.L2514:
	movq	$0, -8(%rbp)
.L2516:
	cmpq	$0, -8(%rbp)
	jne	.L2517
	movl	$0, %eax
	jmp	.L2518
.L2517:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_clear@PLT
	testl	%eax, %eax
	jne	.L2519
	movl	$0, %eax
	jmp	.L2518
.L2519:
	call	ERR_clear_error@PLT
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	orb	$8, %ah
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 288(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_accept@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	andb	$-9, %ah
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 288(%rax)
	cmpl	$0, -12(%rbp)
	jle	.L2520
	movq	-8(%rbp), %rax
	movl	2712(%rax), %eax
	testl	%eax, %eax
	je	.L2520
	movl	$1, %eax
	jmp	.L2518
.L2520:
	movq	-8(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$1, %eax
	jne	.L2521
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_in_error@PLT
	testl	%eax, %eax
	jne	.L2521
	movl	$0, %eax
	jmp	.L2518
.L2521:
	movl	$-1, %eax
.L2518:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1209:
	.size	SSL_stateless, .-SSL_stateless
	.globl	SSL_CTX_set_post_handshake_auth
	.type	SSL_CTX_set_post_handshake_auth, @function
SSL_CTX_set_post_handshake_auth:
.LFB1210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 1072(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1210:
	.size	SSL_CTX_set_post_handshake_auth, .-SSL_CTX_set_post_handshake_auth
	.globl	SSL_set_post_handshake_auth
	.type	SSL_set_post_handshake_auth, @function
SSL_set_post_handshake_auth:
.LFB1211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2524
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2525
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2526
.L2525:
	movq	$0, -8(%rbp)
	jmp	.L2526
.L2524:
	movq	$0, -8(%rbp)
.L2526:
	cmpq	$0, -8(%rbp)
	je	.L2529
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 2836(%rax)
	jmp	.L2523
.L2529:
	nop
.L2523:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1211:
	.size	SSL_set_post_handshake_auth, .-SSL_set_post_handshake_auth
	.globl	SSL_verify_client_post_handshake
	.type	SSL_verify_client_post_handshake, @function
SSL_verify_client_post_handshake:
.LFB1212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2531
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2532
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2533
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2534
.L2533:
	movq	$0, -8(%rbp)
	jmp	.L2534
.L2532:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2534
.L2531:
	movq	$0, -8(%rbp)
.L2534:
	cmpq	$0, -24(%rbp)
	je	.L2535
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2536
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2535
.L2536:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$266, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2537
.L2535:
	cmpq	$0, -8(%rbp)
	jne	.L2538
	movl	$0, %eax
	jmp	.L2537
.L2538:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L2539
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L2539
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L2540
.L2539:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$266, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2537
.L2540:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L2541
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7122, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$284, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2537
.L2541:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_init_finished@PLT
	testl	%eax, %eax
	jne	.L2542
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2537
.L2542:
	movq	-8(%rbp), %rax
	movl	2832(%rax), %eax
	cmpl	$4, %eax
	je	.L2543
	cmpl	$4, %eax
	ja	.L2544
	cmpl	$3, %eax
	je	.L2545
	cmpl	$3, %eax
	ja	.L2544
	testl	%eax, %eax
	je	.L2546
	cmpl	$2, %eax
	je	.L2550
	jmp	.L2544
.L2546:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7133, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$279, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2537
.L2544:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2537
.L2545:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7142, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$285, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2537
.L2543:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7145, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$286, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2537
.L2550:
	nop
	movq	-8(%rbp), %rax
	movl	$3, 2832(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	send_certificate_request@PLT
	testl	%eax, %eax
	jne	.L2549
	movq	-8(%rbp), %rax
	movl	$2, 2832(%rax)
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$283, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2537
.L2549:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	movl	$1, %eax
.L2537:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1212:
	.size	SSL_verify_client_post_handshake, .-SSL_verify_client_post_handshake
	.globl	SSL_CTX_set_session_ticket_cb
	.type	SSL_CTX_set_session_ticket_cb, @function
SSL_CTX_set_session_ticket_cb:
.LFB1213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 1024(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 1032(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 1040(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1213:
	.size	SSL_CTX_set_session_ticket_cb, .-SSL_CTX_set_session_ticket_cb
	.globl	SSL_CTX_set_allow_early_data_cb
	.type	SSL_CTX_set_allow_early_data_cb, @function
SSL_CTX_set_allow_early_data_cb:
.LFB1214:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 1056(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 1064(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1214:
	.size	SSL_CTX_set_allow_early_data_cb, .-SSL_CTX_set_allow_early_data_cb
	.globl	SSL_set_allow_early_data_cb
	.type	SSL_set_allow_early_data_cb, @function
SSL_set_allow_early_data_cb:
.LFB1215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2555
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2556
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2557
.L2556:
	movq	$0, -8(%rbp)
	jmp	.L2557
.L2555:
	movq	$0, -8(%rbp)
.L2557:
	cmpq	$0, -8(%rbp)
	je	.L2560
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 5320(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 5328(%rax)
	jmp	.L2554
.L2560:
	nop
.L2554:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1215:
	.size	SSL_set_allow_early_data_cb, .-SSL_set_allow_early_data_cb
	.globl	ssl_evp_cipher_fetch
	.type	ssl_evp_cipher_fetch, @function
ssl_evp_cipher_fetch:
.LFB1216:
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
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	tls_get_cipher_from_engine@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2562
	movq	-8(%rbp), %rax
	jmp	.L2563
.L2562:
	call	ERR_set_mark@PLT
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -8(%rbp)
	call	ERR_pop_to_mark@PLT
	movq	-8(%rbp), %rax
.L2563:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1216:
	.size	ssl_evp_cipher_fetch, .-ssl_evp_cipher_fetch
	.globl	ssl_evp_cipher_up_ref
	.type	ssl_evp_cipher_up_ref, @function
ssl_evp_cipher_up_ref:
.LFB1217:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_provider@PLT
	testq	%rax, %rax
	jne	.L2565
	movl	$1, %eax
	jmp	.L2566
.L2565:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_up_ref@PLT
.L2566:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1217:
	.size	ssl_evp_cipher_up_ref, .-ssl_evp_cipher_up_ref
	.globl	ssl_evp_cipher_free
	.type	ssl_evp_cipher_free, @function
ssl_evp_cipher_free:
.LFB1218:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2570
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_provider@PLT
	testq	%rax, %rax
	je	.L2567
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	jmp	.L2567
.L2570:
	nop
.L2567:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1218:
	.size	ssl_evp_cipher_free, .-ssl_evp_cipher_free
	.globl	ssl_evp_md_fetch
	.type	ssl_evp_md_fetch, @function
ssl_evp_md_fetch:
.LFB1219:
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
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	tls_get_digest_from_engine@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2572
	movq	-8(%rbp), %rax
	jmp	.L2573
.L2572:
	call	ERR_set_mark@PLT
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	call	ERR_pop_to_mark@PLT
	movq	-8(%rbp), %rax
.L2573:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1219:
	.size	ssl_evp_md_fetch, .-ssl_evp_md_fetch
	.globl	ssl_evp_md_up_ref
	.type	ssl_evp_md_up_ref, @function
ssl_evp_md_up_ref:
.LFB1220:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_provider@PLT
	testq	%rax, %rax
	jne	.L2575
	movl	$1, %eax
	jmp	.L2576
.L2575:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
.L2576:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1220:
	.size	ssl_evp_md_up_ref, .-ssl_evp_md_up_ref
	.globl	ssl_evp_md_free
	.type	ssl_evp_md_free, @function
ssl_evp_md_free:
.LFB1221:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2580
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_provider@PLT
	testq	%rax, %rax
	je	.L2577
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	jmp	.L2577
.L2580:
	nop
.L2577:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1221:
	.size	ssl_evp_md_free, .-ssl_evp_md_free
	.globl	SSL_set0_tmp_dh_pkey
	.type	SSL_set0_tmp_dh_pkey, @function
SSL_set0_tmp_dh_pkey:
.LFB1222:
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
	je	.L2582
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2583
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2584
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2585
.L2584:
	movq	$0, -8(%rbp)
	jmp	.L2585
.L2583:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2585
.L2582:
	movq	$0, -8(%rbp)
.L2585:
	cmpq	$0, -8(%rbp)
	jne	.L2586
	movl	$0, %eax
	jmp	.L2587
.L2586:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$262151, %esi
	movq	%rax, %rdi
	call	ssl_security@PLT
	testl	%eax, %eax
	jne	.L2588
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7295, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$394, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2587
.L2588:
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L2587:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1222:
	.size	SSL_set0_tmp_dh_pkey, .-SSL_set0_tmp_dh_pkey
	.globl	SSL_CTX_set0_tmp_dh_pkey
	.type	SSL_CTX_set0_tmp_dh_pkey, @function
SSL_CTX_set0_tmp_dh_pkey:
.LFB1223:
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
	call	EVP_PKEY_get_security_bits@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$262151, %esi
	movq	%rax, %rdi
	call	ssl_ctx_security@PLT
	testl	%eax, %eax
	jne	.L2590
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7307, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$394, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L2591
.L2590:
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L2591:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1223:
	.size	SSL_CTX_set0_tmp_dh_pkey, .-SSL_CTX_set0_tmp_dh_pkey
	.globl	SSL_handle_events
	.type	SSL_handle_events, @function
SSL_handle_events:
.LFB1224:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2593
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2594
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2593
.L2594:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_handle_events@PLT
	jmp	.L2595
.L2593:
	cmpq	$0, -24(%rbp)
	je	.L2596
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2597
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2598
.L2597:
	movq	$0, -8(%rbp)
	jmp	.L2598
.L2596:
	movq	$0, -8(%rbp)
.L2598:
	cmpq	$0, -8(%rbp)
	je	.L2599
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L2599
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$74, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	notq	%rax
	shrq	$63, %rax
	movzbl	%al, %eax
	jmp	.L2595
.L2599:
	movl	$1, %eax
.L2595:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1224:
	.size	SSL_handle_events, .-SSL_handle_events
	.globl	SSL_get_event_timeout
	.type	SSL_get_event_timeout, @function
SSL_get_event_timeout:
.LFB1225:
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
	cmpq	$0, -24(%rbp)
	je	.L2601
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2602
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2601
.L2602:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_get_event_timeout@PLT
	jmp	.L2603
.L2601:
	cmpq	$0, -24(%rbp)
	je	.L2604
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L2605
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2606
.L2605:
	movq	$0, -8(%rbp)
	jmp	.L2606
.L2604:
	movq	$0, -8(%rbp)
.L2606:
	cmpq	$0, -8(%rbp)
	je	.L2607
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L2607
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$73, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	je	.L2607
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, %eax
	jmp	.L2603
.L2607:
	movq	-32(%rbp), %rax
	movq	$1000000, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, %eax
.L2603:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1225:
	.size	SSL_get_event_timeout, .-SSL_get_event_timeout
	.globl	SSL_get_rpoll_descriptor
	.type	SSL_get_rpoll_descriptor, @function
SSL_get_rpoll_descriptor:
.LFB1226:
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
	je	.L2609
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2610
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2611
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2612
.L2611:
	movq	$0, -8(%rbp)
	jmp	.L2612
.L2610:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2612
.L2609:
	movq	$0, -8(%rbp)
.L2612:
	cmpq	$0, -24(%rbp)
	je	.L2613
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2614
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2613
.L2614:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_get_rpoll_descriptor@PLT
	jmp	.L2615
.L2613:
	cmpq	$0, -8(%rbp)
	je	.L2616
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L2617
.L2616:
	movl	$0, %eax
	jmp	.L2615
.L2617:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_get_rpoll_descriptor@PLT
.L2615:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1226:
	.size	SSL_get_rpoll_descriptor, .-SSL_get_rpoll_descriptor
	.globl	SSL_get_wpoll_descriptor
	.type	SSL_get_wpoll_descriptor, @function
SSL_get_wpoll_descriptor:
.LFB1227:
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
	je	.L2619
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2620
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2621
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2622
.L2621:
	movq	$0, -8(%rbp)
	jmp	.L2622
.L2620:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2622
.L2619:
	movq	$0, -8(%rbp)
.L2622:
	cmpq	$0, -24(%rbp)
	je	.L2623
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2624
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2623
.L2624:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_get_wpoll_descriptor@PLT
	jmp	.L2625
.L2623:
	cmpq	$0, -8(%rbp)
	je	.L2626
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L2627
.L2626:
	movl	$0, %eax
	jmp	.L2625
.L2627:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_get_wpoll_descriptor@PLT
.L2625:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1227:
	.size	SSL_get_wpoll_descriptor, .-SSL_get_wpoll_descriptor
	.globl	SSL_net_read_desired
	.type	SSL_net_read_desired, @function
SSL_net_read_desired:
.LFB1228:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2629
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2630
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2630
.L2629:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L2631
.L2630:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get_net_read_desired@PLT
.L2631:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1228:
	.size	SSL_net_read_desired, .-SSL_net_read_desired
	.globl	SSL_net_write_desired
	.type	SSL_net_write_desired, @function
SSL_net_write_desired:
.LFB1229:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2633
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2634
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2634
.L2633:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L2635
.L2634:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get_net_write_desired@PLT
.L2635:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1229:
	.size	SSL_net_write_desired, .-SSL_net_write_desired
	.globl	SSL_set_blocking_mode
	.type	SSL_set_blocking_mode, @function
SSL_set_blocking_mode:
.LFB1230:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2637
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2638
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2638
.L2637:
	movl	$0, %eax
	jmp	.L2639
.L2638:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_conn_set_blocking_mode@PLT
.L2639:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1230:
	.size	SSL_set_blocking_mode, .-SSL_set_blocking_mode
	.globl	SSL_get_blocking_mode
	.type	SSL_get_blocking_mode, @function
SSL_get_blocking_mode:
.LFB1231:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2641
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2642
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2642
.L2641:
	movl	$-1, %eax
	jmp	.L2643
.L2642:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_get_blocking_mode@PLT
.L2643:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1231:
	.size	SSL_get_blocking_mode, .-SSL_get_blocking_mode
	.globl	SSL_set1_initial_peer_addr
	.type	SSL_set1_initial_peer_addr, @function
SSL_set1_initial_peer_addr:
.LFB1232:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2645
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2646
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2646
.L2645:
	movl	$0, %eax
	jmp	.L2647
.L2646:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_set_initial_peer_addr@PLT
.L2647:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1232:
	.size	SSL_set1_initial_peer_addr, .-SSL_set1_initial_peer_addr
	.globl	SSL_shutdown_ex
	.type	SSL_shutdown_ex, @function
SSL_shutdown_ex:
.LFB1233:
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
	cmpq	$0, -8(%rbp)
	je	.L2649
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2650
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2650
.L2649:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	jmp	.L2651
.L2650:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_shutdown@PLT
.L2651:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1233:
	.size	SSL_shutdown_ex, .-SSL_shutdown_ex
	.globl	SSL_stream_conclude
	.type	SSL_stream_conclude, @function
SSL_stream_conclude:
.LFB1234:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2653
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2654
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2654
.L2653:
	movl	$0, %eax
	jmp	.L2655
.L2654:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_stream_conclude@PLT
.L2655:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1234:
	.size	SSL_stream_conclude, .-SSL_stream_conclude
	.globl	SSL_new_stream
	.type	SSL_new_stream, @function
SSL_new_stream:
.LFB1235:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2657
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2658
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2658
.L2657:
	movl	$0, %eax
	jmp	.L2659
.L2658:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_stream_new@PLT
.L2659:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1235:
	.size	SSL_new_stream, .-SSL_new_stream
	.globl	SSL_get0_connection
	.type	SSL_get0_connection, @function
SSL_get0_connection:
.LFB1236:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2661
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2662
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2662
.L2661:
	movq	-8(%rbp), %rax
	jmp	.L2663
.L2662:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get0_connection@PLT
.L2663:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1236:
	.size	SSL_get0_connection, .-SSL_get0_connection
	.globl	SSL_is_connection
	.type	SSL_is_connection, @function
SSL_is_connection:
.LFB1237:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_connection@PLT
	cmpq	%rax, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1237:
	.size	SSL_is_connection, .-SSL_is_connection
	.globl	SSL_get_stream_type
	.type	SSL_get_stream_type, @function
SSL_get_stream_type:
.LFB1238:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2667
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2668
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2668
.L2667:
	movl	$3, %eax
	jmp	.L2669
.L2668:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get_stream_type@PLT
.L2669:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1238:
	.size	SSL_get_stream_type, .-SSL_get_stream_type
	.globl	SSL_get_stream_id
	.type	SSL_get_stream_id, @function
SSL_get_stream_id:
.LFB1239:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2671
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2672
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2672
.L2671:
	movq	$-1, %rax
	jmp	.L2673
.L2672:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get_stream_id@PLT
.L2673:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1239:
	.size	SSL_get_stream_id, .-SSL_get_stream_id
	.globl	SSL_is_stream_local
	.type	SSL_is_stream_local, @function
SSL_is_stream_local:
.LFB1240:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2675
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2676
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2676
.L2675:
	movl	$-1, %eax
	jmp	.L2677
.L2676:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_is_stream_local@PLT
.L2677:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1240:
	.size	SSL_is_stream_local, .-SSL_is_stream_local
	.globl	SSL_set_default_stream_mode
	.type	SSL_set_default_stream_mode, @function
SSL_set_default_stream_mode:
.LFB1241:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2679
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2680
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2680
.L2679:
	movl	$0, %eax
	jmp	.L2681
.L2680:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_set_default_stream_mode@PLT
.L2681:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1241:
	.size	SSL_set_default_stream_mode, .-SSL_set_default_stream_mode
	.globl	SSL_set_incoming_stream_policy
	.type	SSL_set_incoming_stream_policy, @function
SSL_set_incoming_stream_policy:
.LFB1242:
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
	cmpq	$0, -8(%rbp)
	je	.L2683
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2684
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2684
.L2683:
	movl	$0, %eax
	jmp	.L2685
.L2684:
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_quic_set_incoming_stream_policy@PLT
.L2685:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1242:
	.size	SSL_set_incoming_stream_policy, .-SSL_set_incoming_stream_policy
	.globl	SSL_accept_stream
	.type	SSL_accept_stream, @function
SSL_accept_stream:
.LFB1243:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2687
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2688
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2688
.L2687:
	movl	$0, %eax
	jmp	.L2689
.L2688:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_accept_stream@PLT
.L2689:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1243:
	.size	SSL_accept_stream, .-SSL_accept_stream
	.globl	SSL_get_accept_stream_queue_len
	.type	SSL_get_accept_stream_queue_len, @function
SSL_get_accept_stream_queue_len:
.LFB1244:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2691
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2692
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2692
.L2691:
	movl	$0, %eax
	jmp	.L2693
.L2692:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get_accept_stream_queue_len@PLT
.L2693:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1244:
	.size	SSL_get_accept_stream_queue_len, .-SSL_get_accept_stream_queue_len
	.globl	SSL_stream_reset
	.type	SSL_stream_reset, @function
SSL_stream_reset:
.LFB1245:
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
	cmpq	$0, -8(%rbp)
	je	.L2695
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2696
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2696
.L2695:
	movl	$0, %eax
	jmp	.L2697
.L2696:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_reset@PLT
.L2697:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1245:
	.size	SSL_stream_reset, .-SSL_stream_reset
	.globl	SSL_get_stream_read_state
	.type	SSL_get_stream_read_state, @function
SSL_get_stream_read_state:
.LFB1246:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2699
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2700
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2700
.L2699:
	movl	$0, %eax
	jmp	.L2701
.L2700:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get_stream_read_state@PLT
.L2701:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1246:
	.size	SSL_get_stream_read_state, .-SSL_get_stream_read_state
	.globl	SSL_get_stream_write_state
	.type	SSL_get_stream_write_state, @function
SSL_get_stream_write_state:
.LFB1247:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2703
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2704
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2704
.L2703:
	movl	$0, %eax
	jmp	.L2705
.L2704:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get_stream_write_state@PLT
.L2705:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1247:
	.size	SSL_get_stream_write_state, .-SSL_get_stream_write_state
	.globl	SSL_get_stream_read_error_code
	.type	SSL_get_stream_read_error_code, @function
SSL_get_stream_read_error_code:
.LFB1248:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2707
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2708
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2708
.L2707:
	movl	$-1, %eax
	jmp	.L2709
.L2708:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_get_stream_read_error_code@PLT
.L2709:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1248:
	.size	SSL_get_stream_read_error_code, .-SSL_get_stream_read_error_code
	.globl	SSL_get_stream_write_error_code
	.type	SSL_get_stream_write_error_code, @function
SSL_get_stream_write_error_code:
.LFB1249:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2711
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2712
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2712
.L2711:
	movl	$-1, %eax
	jmp	.L2713
.L2712:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_get_stream_write_error_code@PLT
.L2713:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1249:
	.size	SSL_get_stream_write_error_code, .-SSL_get_stream_write_error_code
	.globl	SSL_get_conn_close_info
	.type	SSL_get_conn_close_info, @function
SSL_get_conn_close_info:
.LFB1250:
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
	cmpq	$0, -8(%rbp)
	je	.L2715
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2716
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L2716
.L2715:
	movl	$-1, %eax
	jmp	.L2717
.L2716:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_get_conn_close_info@PLT
.L2717:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1250:
	.size	SSL_get_conn_close_info, .-SSL_get_conn_close_info
	.globl	SSL_get_value_uint
	.type	SSL_get_value_uint, @function
SSL_get_value_uint:
.LFB1251:
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
	movq	%rcx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2719
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2720
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2719
.L2720:
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_get_value_uint@PLT
	jmp	.L2721
.L2719:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7674, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$258, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L2721:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1251:
	.size	SSL_get_value_uint, .-SSL_get_value_uint
	.globl	SSL_set_value_uint
	.type	SSL_set_value_uint, @function
SSL_set_value_uint:
.LFB1252:
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
	movq	%rcx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2723
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L2724
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L2723
.L2724:
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_set_value_uint@PLT
	jmp	.L2725
.L2723:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7686, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$258, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L2725:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1252:
	.size	SSL_set_value_uint, .-SSL_set_value_uint
	.globl	SSL_add_expected_rpk
	.type	SSL_add_expected_rpk, @function
SSL_add_expected_rpk:
.LFB1253:
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
	movq	%rax, %rdi
	call	SSL_get0_dane@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2727
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2728
.L2727:
	movl	$0, %eax
	jmp	.L2731
.L2728:
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_PUBKEY@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L2730
	movl	$0, %eax
	jmp	.L2731
.L2730:
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	SSL_dane_tlsa_add@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$7705, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
.L2731:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1253:
	.size	SSL_add_expected_rpk, .-SSL_add_expected_rpk
	.globl	SSL_get0_peer_rpk
	.type	SSL_get0_peer_rpk, @function
SSL_get0_peer_rpk:
.LFB1254:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2733
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2734
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2735
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2736
.L2735:
	movq	$0, -8(%rbp)
	jmp	.L2736
.L2734:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2736
.L2733:
	movq	$0, -8(%rbp)
.L2736:
	cmpq	$0, -8(%rbp)
	je	.L2737
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	jne	.L2738
.L2737:
	movl	$0, %eax
	jmp	.L2739
.L2738:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	696(%rax), %rax
.L2739:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1254:
	.size	SSL_get0_peer_rpk, .-SSL_get0_peer_rpk
	.globl	SSL_get_negotiated_client_cert_type
	.type	SSL_get_negotiated_client_cert_type, @function
SSL_get_negotiated_client_cert_type:
.LFB1255:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2741
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2742
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2743
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2744
.L2743:
	movq	$0, -8(%rbp)
	jmp	.L2744
.L2742:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2744
.L2741:
	movq	$0, -8(%rbp)
.L2744:
	cmpq	$0, -8(%rbp)
	jne	.L2745
	movl	$0, %eax
	jmp	.L2746
.L2745:
	movq	-8(%rbp), %rax
	movzbl	2744(%rax), %eax
	movzbl	%al, %eax
.L2746:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1255:
	.size	SSL_get_negotiated_client_cert_type, .-SSL_get_negotiated_client_cert_type
	.globl	SSL_get_negotiated_server_cert_type
	.type	SSL_get_negotiated_server_cert_type, @function
SSL_get_negotiated_server_cert_type:
.LFB1256:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2748
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2749
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2750
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2751
.L2750:
	movq	$0, -8(%rbp)
	jmp	.L2751
.L2749:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2751
.L2748:
	movq	$0, -8(%rbp)
.L2751:
	cmpq	$0, -8(%rbp)
	jne	.L2752
	movl	$0, %eax
	jmp	.L2753
.L2752:
	movq	-8(%rbp), %rax
	movzbl	2746(%rax), %eax
	movzbl	%al, %eax
.L2753:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1256:
	.size	SSL_get_negotiated_server_cert_type, .-SSL_get_negotiated_server_cert_type
	.type	validate_cert_type, @function
validate_cert_type:
.LFB1257:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L2755
	cmpq	$0, -32(%rbp)
	jne	.L2755
	movl	$1, %eax
	jmp	.L2756
.L2755:
	cmpq	$0, -24(%rbp)
	je	.L2757
	cmpq	$0, -32(%rbp)
	jne	.L2758
.L2757:
	movl	$0, %eax
	jmp	.L2756
.L2758:
	movq	$0, -8(%rbp)
	jmp	.L2759
.L2765:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L2760
	cmpl	$2, %eax
	jne	.L2761
	cmpl	$0, -12(%rbp)
	je	.L2762
	movl	$0, %eax
	jmp	.L2756
.L2762:
	movl	$1, -12(%rbp)
	jmp	.L2763
.L2760:
	cmpl	$0, -16(%rbp)
	je	.L2764
	movl	$0, %eax
	jmp	.L2756
.L2764:
	movl	$1, -16(%rbp)
	jmp	.L2763
.L2761:
	movl	$0, %eax
	jmp	.L2756
.L2763:
	addq	$1, -8(%rbp)
.L2759:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L2765
	movl	$1, %eax
.L2756:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1257:
	.size	validate_cert_type, .-validate_cert_type
	.type	set_cert_type, @function
set_cert_type:
.LFB1258:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validate_cert_type
	testl	%eax, %eax
	jne	.L2767
	movl	$0, %eax
	jmp	.L2768
.L2767:
	cmpq	$0, -40(%rbp)
	je	.L2769
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$7781, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2769
	movl	$0, %eax
	jmp	.L2768
.L2769:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$7784, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L2768:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1258:
	.size	set_cert_type, .-set_cert_type
	.globl	SSL_set1_client_cert_type
	.type	SSL_set1_client_cert_type, @function
SSL_set1_client_cert_type:
.LFB1259:
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
	cmpq	$0, -24(%rbp)
	je	.L2771
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2772
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2773
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2774
.L2773:
	movq	$0, -8(%rbp)
	jmp	.L2774
.L2772:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2774
.L2771:
	movq	$0, -8(%rbp)
.L2774:
	movq	-8(%rbp), %rax
	leaq	5376(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	5368(%rax), %rdi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	set_cert_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1259:
	.size	SSL_set1_client_cert_type, .-SSL_set1_client_cert_type
	.globl	SSL_set1_server_cert_type
	.type	SSL_set1_server_cert_type, @function
SSL_set1_server_cert_type:
.LFB1260:
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
	cmpq	$0, -24(%rbp)
	je	.L2777
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2778
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2779
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2780
.L2779:
	movq	$0, -8(%rbp)
	jmp	.L2780
.L2778:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2780
.L2777:
	movq	$0, -8(%rbp)
.L2780:
	movq	-8(%rbp), %rax
	leaq	5392(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	5384(%rax), %rdi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	set_cert_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1260:
	.size	SSL_set1_server_cert_type, .-SSL_set1_server_cert_type
	.globl	SSL_CTX_set1_client_cert_type
	.type	SSL_CTX_set1_client_cert_type, @function
SSL_CTX_set1_client_cert_type:
.LFB1261:
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
	leaq	1672(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	1664(%rax), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	set_cert_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1261:
	.size	SSL_CTX_set1_client_cert_type, .-SSL_CTX_set1_client_cert_type
	.globl	SSL_CTX_set1_server_cert_type
	.type	SSL_CTX_set1_server_cert_type, @function
SSL_CTX_set1_server_cert_type:
.LFB1262:
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
	leaq	1688(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	1680(%rax), %rdi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	set_cert_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1262:
	.size	SSL_CTX_set1_server_cert_type, .-SSL_CTX_set1_server_cert_type
	.globl	SSL_get0_client_cert_type
	.type	SSL_get0_client_cert_type, @function
SSL_get0_client_cert_type:
.LFB1263:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2787
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2788
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2789
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2790
.L2789:
	movq	$0, -8(%rbp)
	jmp	.L2790
.L2788:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2790
.L2787:
	movq	$0, -8(%rbp)
.L2790:
	cmpq	$0, -32(%rbp)
	je	.L2791
	cmpq	$0, -40(%rbp)
	jne	.L2792
.L2791:
	movl	$0, %eax
	jmp	.L2793
.L2792:
	movq	-8(%rbp), %rax
	movq	5368(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	5376(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L2793:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1263:
	.size	SSL_get0_client_cert_type, .-SSL_get0_client_cert_type
	.globl	SSL_get0_server_cert_type
	.type	SSL_get0_server_cert_type, @function
SSL_get0_server_cert_type:
.LFB1264:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L2795
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L2796
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L2797
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2798
.L2797:
	movq	$0, -8(%rbp)
	jmp	.L2798
.L2796:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2798
.L2795:
	movq	$0, -8(%rbp)
.L2798:
	cmpq	$0, -32(%rbp)
	je	.L2799
	cmpq	$0, -40(%rbp)
	jne	.L2800
.L2799:
	movl	$0, %eax
	jmp	.L2801
.L2800:
	movq	-8(%rbp), %rax
	movq	5384(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	5392(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L2801:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1264:
	.size	SSL_get0_server_cert_type, .-SSL_get0_server_cert_type
	.globl	SSL_CTX_get0_client_cert_type
	.type	SSL_CTX_get0_client_cert_type, @function
SSL_CTX_get0_client_cert_type:
.LFB1265:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L2803
	cmpq	$0, -24(%rbp)
	jne	.L2804
.L2803:
	movl	$0, %eax
	jmp	.L2805
.L2804:
	movq	-8(%rbp), %rax
	movq	1664(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	1672(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L2805:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1265:
	.size	SSL_CTX_get0_client_cert_type, .-SSL_CTX_get0_client_cert_type
	.globl	SSL_CTX_get0_server_cert_type
	.type	SSL_CTX_get0_server_cert_type, @function
SSL_CTX_get0_server_cert_type:
.LFB1266:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L2807
	cmpq	$0, -24(%rbp)
	jne	.L2808
.L2807:
	movl	$0, %eax
	jmp	.L2809
.L2808:
	movq	-8(%rbp), %rax
	movq	1680(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	1688(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L2809:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1266:
	.size	SSL_CTX_get0_server_cert_type, .-SSL_CTX_get0_server_cert_type
	.section	.rodata
	.align 8
	.type	__func__.54, @object
	.size	__func__.54, 13
__func__.54:
	.string	"ssl_dane_dup"
	.align 8
	.type	__func__.53, @object
	.size	__func__.53, 15
__func__.53:
	.string	"dane_mtype_set"
	.align 8
	.type	__func__.52, @object
	.size	__func__.52, 14
__func__.52:
	.string	"dane_tlsa_add"
	.align 8
	.type	__func__.51, @object
	.size	__func__.51, 10
__func__.51:
	.string	"SSL_clear"
	.align 16
	.type	__func__.50, @object
	.size	__func__.50, 26
__func__.50:
	.string	"ossl_ssl_connection_reset"
	.align 16
	.type	__func__.49, @object
	.size	__func__.49, 24
__func__.49:
	.string	"SSL_CTX_set_ssl_version"
	.align 8
	.type	__func__.48, @object
	.size	__func__.48, 8
__func__.48:
	.string	"SSL_new"
	.align 16
	.type	__func__.47, @object
	.size	__func__.47, 28
__func__.47:
	.string	"ossl_ssl_connection_new_int"
	.align 16
	.type	__func__.46, @object
	.size	__func__.46, 31
__func__.46:
	.string	"SSL_CTX_set_session_id_context"
	.align 16
	.type	__func__.45, @object
	.size	__func__.45, 27
__func__.45:
	.string	"SSL_set_session_id_context"
	.align 16
	.type	__func__.44, @object
	.size	__func__.44, 16
__func__.44:
	.string	"SSL_dane_enable"
	.align 8
	.type	__func__.43, @object
	.size	__func__.43, 11
__func__.43:
	.string	"SSL_set_fd"
	.align 8
	.type	__func__.42, @object
	.size	__func__.42, 12
__func__.42:
	.string	"SSL_set_wfd"
	.align 8
	.type	__func__.41, @object
	.size	__func__.41, 12
__func__.41:
	.string	"SSL_set_rfd"
	.align 16
	.type	__func__.40, @object
	.size	__func__.40, 26
__func__.40:
	.string	"SSL_CTX_check_private_key"
	.align 16
	.type	__func__.39, @object
	.size	__func__.39, 22
__func__.39:
	.string	"SSL_check_private_key"
	.align 16
	.type	__func__.38, @object
	.size	__func__.38, 20
__func__.38:
	.string	"ssl_start_async_job"
	.align 16
	.type	__func__.37, @object
	.size	__func__.37, 18
__func__.37:
	.string	"ssl_read_internal"
	.align 8
	.type	__func__.36, @object
	.size	__func__.36, 9
__func__.36:
	.string	"SSL_read"
	.align 16
	.type	__func__.35, @object
	.size	__func__.35, 20
__func__.35:
	.string	"SSL_read_early_data"
	.align 16
	.type	__func__.34, @object
	.size	__func__.34, 18
__func__.34:
	.string	"ssl_peek_internal"
	.align 8
	.type	__func__.33, @object
	.size	__func__.33, 9
__func__.33:
	.string	"SSL_peek"
	.align 16
	.type	__func__.32, @object
	.size	__func__.32, 19
__func__.32:
	.string	"ssl_write_internal"
	.align 8
	.type	__func__.31, @object
	.size	__func__.31, 13
__func__.31:
	.string	"SSL_sendfile"
	.align 8
	.type	__func__.30, @object
	.size	__func__.30, 10
__func__.30:
	.string	"SSL_write"
	.align 16
	.type	__func__.29, @object
	.size	__func__.29, 21
__func__.29:
	.string	"SSL_write_early_data"
	.align 8
	.type	__func__.28, @object
	.size	__func__.28, 13
__func__.28:
	.string	"SSL_shutdown"
	.align 8
	.type	__func__.27, @object
	.size	__func__.27, 15
__func__.27:
	.string	"SSL_key_update"
	.align 16
	.type	__func__.26, @object
	.size	__func__.26, 16
__func__.26:
	.string	"can_renegotiate"
	.align 16
	.type	__func__.25, @object
	.size	__func__.25, 24
__func__.25:
	.string	"SSL_CTX_set_cipher_list"
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 20
__func__.24:
	.string	"SSL_set_cipher_list"
	.align 8
	.type	__func__.23, @object
	.size	__func__.23, 15
__func__.23:
	.string	"SSL_CTX_new_ex"
	.align 32
	.type	__func__.22, @object
	.size	__func__.22, 32
__func__.22:
	.string	"ssl_check_srvr_ecc_cert_and_alg"
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 17
__func__.21:
	.string	"SSL_do_handshake"
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 23
__func__.20:
	.string	"ssl_undefined_function"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 28
__func__.19:
	.string	"ssl_undefined_void_function"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 21
__func__.18:
	.string	"ssl_init_wbio_buffer"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 30
__func__.17:
	.string	"SSL_CTX_use_psk_identity_hint"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 26
__func__.16:
	.string	"SSL_use_psk_identity_hint"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 19
__func__.15:
	.string	"ssl_handshake_hash"
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 13
__func__.14:
	.string	"ct_move_scts"
	.align 8
	.type	__func__.13, @object
	.size	__func__.13, 10
__func__.13:
	.string	"ct_strict"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 31
__func__.12:
	.string	"SSL_set_ct_validation_callback"
	.align 32
	.type	__func__.11, @object
	.size	__func__.11, 35
__func__.11:
	.string	"SSL_CTX_set_ct_validation_callback"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 16
__func__.10:
	.string	"ssl_validate_ct"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 18
__func__.9:
	.string	"SSL_CTX_enable_ct"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 14
__func__.8:
	.string	"SSL_enable_ct"
	.align 32
	.type	__func__.7, @object
	.size	__func__.7, 32
__func__.7:
	.string	"ssl_log_rsa_client_key_exchange"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 21
__func__.6:
	.string	"ssl_cache_cipherlist"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 26
__func__.5:
	.string	"ossl_bytes_to_cipher_list"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 33
__func__.4:
	.string	"SSL_verify_client_post_handshake"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 21
__func__.3:
	.string	"SSL_set0_tmp_dh_pkey"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"SSL_CTX_set0_tmp_dh_pkey"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 19
__func__.1:
	.string	"SSL_get_value_uint"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"SSL_set_value_uint"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
