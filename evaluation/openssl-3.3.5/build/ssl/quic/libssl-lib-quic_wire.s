	.file	"quic_wire.c"
	.text
	.type	packet_forward, @function
packet_forward:
.LFB480:
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
.LFE480:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB481:
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
.LFE481:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_end, @function
PACKET_end:
.LFB482:
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
.LFE482:
	.size	PACKET_end, .-PACKET_end
	.type	PACKET_data, @function
PACKET_data:
.LFB483:
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
.LFE483:
	.size	PACKET_data, .-PACKET_data
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB484:
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
	jns	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_peek_net_2, @function
PACKET_peek_net_2:
.LFB489:
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
	ja	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
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
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	PACKET_peek_net_2, .-PACKET_peek_net_2
	.type	PACKET_get_net_2, @function
PACKET_get_net_2:
.LFB490:
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
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_peek_net_8, @function
PACKET_peek_net_8:
.LFB496:
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
	ja	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
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
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	PACKET_peek_net_8, .-PACKET_peek_net_8
	.type	PACKET_get_net_8, @function
PACKET_get_net_8:
.LFB499:
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
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	PACKET_get_net_8, .-PACKET_get_net_8
	.type	PACKET_peek_1, @function
PACKET_peek_1:
.LFB500:
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
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	PACKET_peek_1, .-PACKET_peek_1
	.type	PACKET_get_1, @function
PACKET_get_1:
.LFB501:
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
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	PACKET_get_1, .-PACKET_get_1
	.type	PACKET_peek_bytes, @function
PACKET_peek_bytes:
.LFB505:
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
.LFE505:
	.size	PACKET_peek_bytes, .-PACKET_peek_bytes
	.type	PACKET_get_bytes, @function
PACKET_get_bytes:
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
.LFE506:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.type	PACKET_peek_copy_bytes, @function
PACKET_peek_copy_bytes:
.LFB507:
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
	jnb	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	PACKET_peek_copy_bytes, .-PACKET_peek_copy_bytes
	.type	PACKET_copy_bytes, @function
PACKET_copy_bytes:
.LFB508:
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
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	PACKET_copy_bytes, .-PACKET_copy_bytes
	.type	PACKET_forward, @function
PACKET_forward:
.LFB513:
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
	jnb	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	PACKET_forward, .-PACKET_forward
	.type	ossl_quic_vlint_encode_len, @function
ossl_quic_vlint_encode_len:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$63, -8(%rbp)
	ja	.L45
	movl	$1, %eax
	jmp	.L46
.L45:
	cmpq	$16383, -8(%rbp)
	ja	.L47
	movl	$2, %eax
	jmp	.L46
.L47:
	cmpq	$1073741823, -8(%rbp)
	ja	.L48
	movl	$4, %eax
	jmp	.L46
.L48:
	movabsq	$4611686018427387903, %rax
	cmpq	-8(%rbp), %rax
	jb	.L49
	movl	$8, %eax
	jmp	.L46
.L49:
	movl	$0, %eax
.L46:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	ossl_quic_vlint_encode_len, .-ossl_quic_vlint_encode_len
	.type	ossl_quic_vlint_decode_len, @function
ossl_quic_vlint_decode_len:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	ossl_quic_vlint_decode_len, .-ossl_quic_vlint_decode_len
	.type	PACKET_get_quic_vlint, @function
PACKET_get_quic_vlint:
.LFB521:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L53
	movl	$0, %eax
	jmp	.L54
.L53:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_vlint_decode_len
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-8(%rbp), %rax
	jnb	.L55
	movl	$0, %eax
	jmp	.L54
.L55:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_decode_unchecked@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	PACKET_get_quic_vlint, .-PACKET_get_quic_vlint
	.type	PACKET_peek_quic_vlint_ex, @function
PACKET_peek_quic_vlint_ex:
.LFB522:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_vlint_decode_len
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-8(%rbp), %rax
	jnb	.L59
	movl	$0, %eax
	jmp	.L58
.L59:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_decode_unchecked@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	cmpq	$0, -40(%rbp)
	je	.L60
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	cmpq	%rax, -8(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L60:
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PACKET_peek_quic_vlint_ex, .-PACKET_peek_quic_vlint_ex
	.type	PACKET_peek_quic_vlint, @function
PACKET_peek_quic_vlint:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_peek_quic_vlint_ex
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	PACKET_peek_quic_vlint, .-PACKET_peek_quic_vlint
	.type	PACKET_skip_quic_vlint, @function
PACKET_skip_quic_vlint:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L64
	movl	$0, %eax
	jmp	.L65
.L64:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_vlint_decode_len
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-8(%rbp), %rax
	jnb	.L66
	movl	$0, %eax
	jmp	.L65
.L66:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PACKET_skip_quic_vlint, .-PACKET_skip_quic_vlint
	.type	safe_mul_time, @function
safe_mul_time:
.LFB541:
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
	mulq	-32(%rbp)
	jno	.L68
	movl	$1, %ecx
.L68:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L70
	movq	-8(%rbp), %rax
	jmp	.L72
.L70:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
.L72:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	safe_mul_time, .-safe_mul_time
	.type	safe_div_time, @function
safe_div_time:
.LFB542:
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
	je	.L74
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	jmp	.L75
.L74:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	$-1, %rax
.L75:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	safe_div_time, .-safe_div_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB548:
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
.LFE548:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB549:
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
.LFE549:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB550:
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
.LFE550:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB551:
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
.LFE551:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_multiply, @function
ossl_time_multiply:
.LFB562:
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
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mul_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L85
	call	ossl_time_infinite
	jmp	.L87
.L85:
	movq	-8(%rbp), %rax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	ossl_time_multiply, .-ossl_time_multiply
	.type	ossl_time_divide, @function
ossl_time_divide:
.LFB563:
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
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_div_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L89
	call	ossl_time_zero
	jmp	.L91
.L89:
	movq	-8(%rbp), %rax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	ossl_time_divide, .-ossl_time_divide
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB627:
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
.LFE627:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB628:
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
.LFE628:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	safe_mul_uint64_t, @function
safe_mul_uint64_t:
.LFB645:
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
	mulq	-32(%rbp)
	jno	.L97
	movl	$1, %ecx
.L97:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L99
	movq	-8(%rbp), %rax
	jmp	.L101
.L99:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
.L101:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	safe_mul_uint64_t, .-safe_mul_uint64_t
	.globl	ossl_quic_frame_ack_contains_pn
	.type	ossl_quic_frame_ack_contains_pn, @function
ossl_quic_frame_ack_contains_pn:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L103
.L106:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L104
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L104
	movl	$1, %eax
	jmp	.L105
.L104:
	addq	$1, -8(%rbp)
.L103:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L106
	movl	$0, %eax
.L105:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	ossl_quic_frame_ack_contains_pn, .-ossl_quic_frame_ack_contains_pn
	.globl	ossl_quic_wire_encode_padding
	.type	ossl_quic_wire_encode_padding, @function
ossl_quic_wire_encode_padding:
.LFB653:
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
	call	WPACKET_memset@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	ossl_quic_wire_encode_padding, .-ossl_quic_wire_encode_padding
	.type	encode_frame_hdr, @function
encode_frame_hdr:
.LFB654:
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
	call	WPACKET_quic_write_vlint@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	encode_frame_hdr, .-encode_frame_hdr
	.globl	ossl_quic_wire_encode_frame_ping
	.type	ossl_quic_wire_encode_frame_ping, @function
ossl_quic_wire_encode_frame_ping:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	ossl_quic_wire_encode_frame_ping, .-ossl_quic_wire_encode_frame_ping
	.globl	ossl_quic_wire_encode_frame_ack
	.type	ossl_quic_wire_encode_frame_ack, @function
ossl_quic_wire_encode_frame_ack:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	48(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L114
	movq	$3, -24(%rbp)
	jmp	.L115
.L114:
	movq	$2, -24(%rbp)
.L115:
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L116
	movl	$0, %eax
	jmp	.L126
.L116:
	movl	-108(%rbp), %eax
	movl	$1, %edx
	movq	%rdx, %rbx
	movl	%eax, %ecx
	salq	%cl, %rbx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1000, %esi
	movq	%rax, %rdi
	call	ossl_time_divide
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_time_divide
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -64(%rbp)
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L118
	movq	-56(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L118
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L118
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L118
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L119
.L118:
	movl	$0, %eax
	jmp	.L126
.L119:
	movq	$1, -32(%rbp)
	jmp	.L120
.L123:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$4, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	leaq	-2(%rdx), %rax
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -80(%rbp)
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L121
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L122
.L121:
	movl	$0, %eax
	jmp	.L126
.L122:
	addq	$1, -32(%rbp)
.L120:
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L123
	movq	-120(%rbp), %rax
	movzbl	48(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L124
	movq	-120(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L125
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L125
	movq	-120(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L124
.L125:
	movl	$0, %eax
	jmp	.L126
.L124:
	movl	$1, %eax
.L126:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	ossl_quic_wire_encode_frame_ack, .-ossl_quic_wire_encode_frame_ack
	.globl	ossl_quic_wire_encode_frame_reset_stream
	.type	ossl_quic_wire_encode_frame_reset_stream, @function
ossl_quic_wire_encode_frame_reset_stream:
.LFB657:
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
	movl	$4, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L128
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L128
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L128
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L129
.L128:
	movl	$0, %eax
	jmp	.L130
.L129:
	movl	$1, %eax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	ossl_quic_wire_encode_frame_reset_stream, .-ossl_quic_wire_encode_frame_reset_stream
	.globl	ossl_quic_wire_encode_frame_stop_sending
	.type	ossl_quic_wire_encode_frame_stop_sending, @function
ossl_quic_wire_encode_frame_stop_sending:
.LFB658:
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
	movl	$5, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L132
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L132
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L133
.L132:
	movl	$0, %eax
	jmp	.L134
.L133:
	movl	$1, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	ossl_quic_wire_encode_frame_stop_sending, .-ossl_quic_wire_encode_frame_stop_sending
	.globl	ossl_quic_wire_encode_frame_crypto_hdr
	.type	ossl_quic_wire_encode_frame_crypto_hdr, @function
ossl_quic_wire_encode_frame_crypto_hdr:
.LFB659:
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
	movl	$6, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L136
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L136
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L137
.L136:
	movl	$0, %eax
	jmp	.L138
.L137:
	movl	$1, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	ossl_quic_wire_encode_frame_crypto_hdr, .-ossl_quic_wire_encode_frame_crypto_hdr
	.globl	ossl_quic_wire_get_encoded_frame_len_crypto_hdr
	.type	ossl_quic_wire_get_encoded_frame_len_crypto_hdr, @function
ossl_quic_wire_get_encoded_frame_len_crypto_hdr:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movl	$6, %edi
	call	ossl_quic_vlint_encode_len
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L140
	cmpq	$0, -16(%rbp)
	je	.L140
	cmpq	$0, -24(%rbp)
	jne	.L141
.L140:
	movl	$0, %eax
	jmp	.L142
.L141:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	ossl_quic_wire_get_encoded_frame_len_crypto_hdr, .-ossl_quic_wire_get_encoded_frame_len_crypto_hdr
	.globl	ossl_quic_wire_encode_frame_crypto
	.type	ossl_quic_wire_encode_frame_crypto, @function
ossl_quic_wire_encode_frame_crypto:
.LFB661:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_crypto_hdr@PLT
	testl	%eax, %eax
	je	.L144
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L145
.L144:
	movl	$0, %eax
	jmp	.L148
.L145:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L147
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L147:
	movq	-8(%rbp), %rax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	ossl_quic_wire_encode_frame_crypto, .-ossl_quic_wire_encode_frame_crypto
	.globl	ossl_quic_wire_encode_frame_new_token
	.type	ossl_quic_wire_encode_frame_new_token, @function
ossl_quic_wire_encode_frame_new_token:
.LFB662:
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
	movl	$7, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L150
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L150
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L151
.L150:
	movl	$0, %eax
	jmp	.L152
.L151:
	movl	$1, %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	ossl_quic_wire_encode_frame_new_token, .-ossl_quic_wire_encode_frame_new_token
	.globl	ossl_quic_wire_encode_frame_stream_hdr
	.type	ossl_quic_wire_encode_frame_stream_hdr, @function
ossl_quic_wire_encode_frame_stream_hdr:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$8, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L154
	orq	$4, -8(%rbp)
.L154:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L155
	orq	$2, -8(%rbp)
.L155:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L156
	orq	$1, -8(%rbp)
.L156:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L157
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L158
.L157:
	movl	$0, %eax
	jmp	.L159
.L158:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L160
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L160
	movl	$0, %eax
	jmp	.L159
.L160:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L161
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L161
	movl	$0, %eax
	jmp	.L159
.L161:
	movl	$1, %eax
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	ossl_quic_wire_encode_frame_stream_hdr, .-ossl_quic_wire_encode_frame_stream_hdr
	.globl	ossl_quic_wire_get_encoded_frame_len_stream_hdr
	.type	ossl_quic_wire_get_encoded_frame_len_stream_hdr, @function
ossl_quic_wire_get_encoded_frame_len_stream_hdr:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movl	$8, %edi
	call	ossl_quic_vlint_encode_len
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L163
	cmpq	$0, -32(%rbp)
	jne	.L164
.L163:
	movl	$0, %eax
	jmp	.L165
.L164:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L166
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L167
	movl	$0, %eax
	jmp	.L165
.L166:
	movq	$0, -8(%rbp)
.L167:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L168
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L169
	movl	$0, %eax
	jmp	.L165
.L168:
	movq	$0, -16(%rbp)
.L169:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	ossl_quic_wire_get_encoded_frame_len_stream_hdr, .-ossl_quic_wire_get_encoded_frame_len_stream_hdr
	.globl	ossl_quic_wire_encode_frame_stream
	.type	ossl_quic_wire_encode_frame_stream, @function
ossl_quic_wire_encode_frame_stream:
.LFB665:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_stream_hdr@PLT
	testl	%eax, %eax
	jne	.L171
	movl	$0, %eax
	jmp	.L175
.L171:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L173
	movl	$0, %eax
	jmp	.L175
.L173:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L174
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L174:
	movq	-8(%rbp), %rax
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	ossl_quic_wire_encode_frame_stream, .-ossl_quic_wire_encode_frame_stream
	.globl	ossl_quic_wire_encode_frame_max_data
	.type	ossl_quic_wire_encode_frame_max_data, @function
ossl_quic_wire_encode_frame_max_data:
.LFB666:
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
	movl	$16, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L177
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L178
.L177:
	movl	$0, %eax
	jmp	.L179
.L178:
	movl	$1, %eax
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	ossl_quic_wire_encode_frame_max_data, .-ossl_quic_wire_encode_frame_max_data
	.globl	ossl_quic_wire_encode_frame_max_stream_data
	.type	ossl_quic_wire_encode_frame_max_stream_data, @function
ossl_quic_wire_encode_frame_max_stream_data:
.LFB667:
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
	movl	$17, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L181
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L181
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L182
.L181:
	movl	$0, %eax
	jmp	.L183
.L182:
	movl	$1, %eax
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	ossl_quic_wire_encode_frame_max_stream_data, .-ossl_quic_wire_encode_frame_max_stream_data
	.globl	ossl_quic_wire_encode_frame_max_streams
	.type	ossl_quic_wire_encode_frame_max_streams, @function
ossl_quic_wire_encode_frame_max_streams:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movq	%rdx, -24(%rbp)
	movb	%al, -12(%rbp)
	cmpb	$0, -12(%rbp)
	je	.L185
	movl	$19, %edx
	jmp	.L186
.L185:
	movl	$18, %edx
.L186:
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L187
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L188
.L187:
	movl	$0, %eax
	jmp	.L189
.L188:
	movl	$1, %eax
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	ossl_quic_wire_encode_frame_max_streams, .-ossl_quic_wire_encode_frame_max_streams
	.globl	ossl_quic_wire_encode_frame_data_blocked
	.type	ossl_quic_wire_encode_frame_data_blocked, @function
ossl_quic_wire_encode_frame_data_blocked:
.LFB669:
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
	movl	$20, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L191
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L192
.L191:
	movl	$0, %eax
	jmp	.L193
.L192:
	movl	$1, %eax
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	ossl_quic_wire_encode_frame_data_blocked, .-ossl_quic_wire_encode_frame_data_blocked
	.globl	ossl_quic_wire_encode_frame_stream_data_blocked
	.type	ossl_quic_wire_encode_frame_stream_data_blocked, @function
ossl_quic_wire_encode_frame_stream_data_blocked:
.LFB670:
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
	movl	$21, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L195
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L195
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L196
.L195:
	movl	$0, %eax
	jmp	.L197
.L196:
	movl	$1, %eax
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	ossl_quic_wire_encode_frame_stream_data_blocked, .-ossl_quic_wire_encode_frame_stream_data_blocked
	.globl	ossl_quic_wire_encode_frame_streams_blocked
	.type	ossl_quic_wire_encode_frame_streams_blocked, @function
ossl_quic_wire_encode_frame_streams_blocked:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movq	%rdx, -24(%rbp)
	movb	%al, -12(%rbp)
	cmpb	$0, -12(%rbp)
	je	.L199
	movl	$23, %edx
	jmp	.L200
.L199:
	movl	$22, %edx
.L200:
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L201
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L202
.L201:
	movl	$0, %eax
	jmp	.L203
.L202:
	movl	$1, %eax
.L203:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	ossl_quic_wire_encode_frame_streams_blocked, .-ossl_quic_wire_encode_frame_streams_blocked
	.globl	ossl_quic_wire_encode_frame_new_conn_id
	.type	ossl_quic_wire_encode_frame_new_conn_id, @function
ossl_quic_wire_encode_frame_new_conn_id:
.LFB672:
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
	movzbl	16(%rax), %eax
	testb	%al, %al
	je	.L205
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	cmpb	$20, %al
	jbe	.L206
.L205:
	movl	$0, %eax
	jmp	.L207
.L206:
	movq	-8(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L208
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L208
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L208
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	movzbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L208
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	leaq	17(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L208
	movq	-16(%rbp), %rax
	leaq	37(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L209
.L208:
	movl	$0, %eax
	jmp	.L207
.L209:
	movl	$1, %eax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	ossl_quic_wire_encode_frame_new_conn_id, .-ossl_quic_wire_encode_frame_new_conn_id
	.globl	ossl_quic_wire_encode_frame_retire_conn_id
	.type	ossl_quic_wire_encode_frame_retire_conn_id, @function
ossl_quic_wire_encode_frame_retire_conn_id:
.LFB673:
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
	movl	$25, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L211
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L212
.L211:
	movl	$0, %eax
	jmp	.L213
.L212:
	movl	$1, %eax
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	ossl_quic_wire_encode_frame_retire_conn_id, .-ossl_quic_wire_encode_frame_retire_conn_id
	.globl	ossl_quic_wire_encode_frame_path_challenge
	.type	ossl_quic_wire_encode_frame_path_challenge, @function
ossl_quic_wire_encode_frame_path_challenge:
.LFB674:
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
	movl	$26, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L215
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L216
.L215:
	movl	$0, %eax
	jmp	.L217
.L216:
	movl	$1, %eax
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	ossl_quic_wire_encode_frame_path_challenge, .-ossl_quic_wire_encode_frame_path_challenge
	.globl	ossl_quic_wire_encode_frame_path_response
	.type	ossl_quic_wire_encode_frame_path_response, @function
ossl_quic_wire_encode_frame_path_response:
.LFB675:
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
	movl	$27, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L219
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	jne	.L220
.L219:
	movl	$0, %eax
	jmp	.L221
.L220:
	movl	$1, %eax
.L221:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	ossl_quic_wire_encode_frame_path_response, .-ossl_quic_wire_encode_frame_path_response
	.globl	ossl_quic_wire_encode_frame_conn_close
	.type	ossl_quic_wire_encode_frame_conn_close, @function
ossl_quic_wire_encode_frame_conn_close:
.LFB676:
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
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L223
	movl	$29, %edx
	jmp	.L224
.L223:
	movl	$28, %edx
.L224:
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	encode_frame_hdr
	testl	%eax, %eax
	je	.L225
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L226
.L225:
	movl	$0, %eax
	jmp	.L227
.L226:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L228
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L228
	movl	$0, %eax
	jmp	.L227
.L228:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L229
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L230
.L229:
	movl	$0, %eax
	jmp	.L227
.L230:
	movl	$1, %eax
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	ossl_quic_wire_encode_frame_conn_close, .-ossl_quic_wire_encode_frame_conn_close
	.globl	ossl_quic_wire_encode_frame_handshake_done
	.type	ossl_quic_wire_encode_frame_handshake_done, @function
ossl_quic_wire_encode_frame_handshake_done:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	encode_frame_hdr
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	ossl_quic_wire_encode_frame_handshake_done, .-ossl_quic_wire_encode_frame_handshake_done
	.globl	ossl_quic_wire_encode_transport_param_bytes
	.type	ossl_quic_wire_encode_transport_param_bytes, @function
ossl_quic_wire_encode_transport_param_bytes:
.LFB678:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L234
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L235
.L234:
	movl	$0, %eax
	jmp	.L240
.L235:
	cmpq	$0, -48(%rbp)
	jne	.L237
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	%rax, -8(%rbp)
	jmp	.L238
.L237:
	leaq	-8(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L238
	movl	$0, %eax
	jmp	.L240
.L238:
	cmpq	$0, -40(%rbp)
	je	.L239
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L239:
	movq	-8(%rbp), %rax
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	ossl_quic_wire_encode_transport_param_bytes, .-ossl_quic_wire_encode_transport_param_bytes
	.globl	ossl_quic_wire_encode_transport_param_int
	.type	ossl_quic_wire_encode_transport_param_int, @function
ossl_quic_wire_encode_transport_param_int:
.LFB679:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L242
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L242
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	jne	.L243
.L242:
	movl	$0, %eax
	jmp	.L244
.L243:
	movl	$1, %eax
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	ossl_quic_wire_encode_transport_param_int, .-ossl_quic_wire_encode_transport_param_int
	.globl	ossl_quic_wire_encode_transport_param_cid
	.type	ossl_quic_wire_encode_transport_param_cid, @function
ossl_quic_wire_encode_transport_param_cid:
.LFB680:
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
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jbe	.L246
	movl	$0, %eax
	jmp	.L247
.L246:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_transport_param_bytes@PLT
	testq	%rax, %rax
	jne	.L248
	movl	$0, %eax
	jmp	.L247
.L248:
	movl	$1, %eax
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	ossl_quic_wire_encode_transport_param_cid, .-ossl_quic_wire_encode_transport_param_cid
	.globl	ossl_quic_wire_peek_frame_header
	.type	ossl_quic_wire_peek_frame_header, @function
ossl_quic_wire_peek_frame_header:
.LFB681:
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
	call	PACKET_peek_quic_vlint_ex
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	ossl_quic_wire_peek_frame_header, .-ossl_quic_wire_peek_frame_header
	.globl	ossl_quic_wire_skip_frame_header
	.type	ossl_quic_wire_skip_frame_header, @function
ossl_quic_wire_skip_frame_header:
.LFB682:
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
	call	PACKET_get_quic_vlint
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	ossl_quic_wire_skip_frame_header, .-ossl_quic_wire_skip_frame_header
	.type	expect_frame_header_mask, @function
expect_frame_header_mask:
.LFB683:
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
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_skip_frame_header@PLT
	testl	%eax, %eax
	je	.L254
	movq	-40(%rbp), %rax
	notq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	andq	%rdx, %rax
	cmpq	%rax, -32(%rbp)
	je	.L255
.L254:
	movl	$0, %eax
	jmp	.L258
.L255:
	cmpq	$0, -48(%rbp)
	je	.L257
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L257:
	movl	$1, %eax
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	expect_frame_header_mask, .-expect_frame_header_mask
	.type	expect_frame_header, @function
expect_frame_header:
.LFB684:
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
	call	ossl_quic_wire_skip_frame_header@PLT
	testl	%eax, %eax
	je	.L260
	movq	-8(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	je	.L261
.L260:
	movl	$0, %eax
	jmp	.L263
.L261:
	movl	$1, %eax
.L263:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	expect_frame_header, .-expect_frame_header
	.globl	ossl_quic_wire_peek_frame_ack_num_ranges
	.type	ossl_quic_wire_peek_frame_ack_num_ranges, @function
ossl_quic_wire_peek_frame_ack_num_ranges:
.LFB685:
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
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	expect_frame_header_mask
	testl	%eax, %eax
	je	.L265
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_skip_quic_vlint
	testl	%eax, %eax
	je	.L265
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_skip_quic_vlint
	testl	%eax, %eax
	je	.L265
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L266
.L265:
	movl	$0, %eax
	jmp	.L272
.L266:
	movq	$0, -8(%rbp)
	jmp	.L268
.L271:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_skip_quic_vlint
	testl	%eax, %eax
	je	.L269
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_skip_quic_vlint
	testl	%eax, %eax
	jne	.L270
.L269:
	movl	$0, %eax
	jmp	.L272
.L270:
	addq	$1, -8(%rbp)
.L268:
	movq	-40(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L271
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L272:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	ossl_quic_wire_peek_frame_ack_num_ranges, .-ossl_quic_wire_peek_frame_ack_num_ranges
	.globl	ossl_quic_wire_decode_frame_ack
	.type	ossl_quic_wire_decode_frame_ack, @function
ossl_quic_wire_decode_frame_ack:
.LFB686:
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
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	expect_frame_header_mask
	testl	%eax, %eax
	je	.L274
	leaq	-56(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L274
	leaq	-64(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L274
	leaq	-72(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L274
	leaq	-80(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L275
.L274:
	movl	$0, %eax
	jmp	.L296
.L275:
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L277
	movl	$0, %eax
	jmp	.L296
.L277:
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L278
	movl	$0, -84(%rbp)
	movl	-140(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rcx
	movq	-64(%rbp), %rax
	leaq	-84(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mul_uint64_t
	movq	%rax, %r12
	movl	$1000, %edi
	call	ossl_ticks2time
	movq	-152(%rbp), %rbx
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	ossl_time_multiply
	movq	%rax, 16(%rbx)
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	je	.L279
	movq	-152(%rbp), %rbx
	call	ossl_time_infinite
	movq	%rax, 16(%rbx)
.L279:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L278
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L278:
	movq	$0, -32(%rbp)
	jmp	.L281
.L288:
	leaq	-96(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L282
	leaq	-104(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L283
.L282:
	movl	$0, %eax
	jmp	.L296
.L283:
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	leaq	-2(%rdx), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	addq	$2, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L285
	movq	-104(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L286
.L285:
	movl	$0, %eax
	jmp	.L296
.L286:
	cmpq	$0, -152(%rbp)
	je	.L287
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L287
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rdx)
.L287:
	addq	$1, -32(%rbp)
.L281:
	movq	-72(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L288
	cmpq	$0, -152(%rbp)
	je	.L289
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L289
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 8(%rax)
.L289:
	cmpq	$0, -160(%rbp)
	je	.L290
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, (%rax)
.L290:
	movq	-48(%rbp), %rax
	cmpq	$3, %rax
	jne	.L291
	leaq	-112(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L292
	leaq	-120(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L292
	leaq	-128(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L293
.L292:
	movl	$0, %eax
	jmp	.L296
.L293:
	cmpq	$0, -152(%rbp)
	je	.L295
	movq	-112(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-120(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-128(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-152(%rbp), %rax
	movzbl	48(%rax), %edx
	orl	$1, %edx
	movb	%dl, 48(%rax)
	jmp	.L295
.L291:
	cmpq	$0, -152(%rbp)
	je	.L295
	movq	-152(%rbp), %rax
	movzbl	48(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 48(%rax)
.L295:
	movl	$1, %eax
.L296:
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	ossl_quic_wire_decode_frame_ack, .-ossl_quic_wire_decode_frame_ack
	.globl	ossl_quic_wire_decode_frame_reset_stream
	.type	ossl_quic_wire_decode_frame_reset_stream, @function
ossl_quic_wire_decode_frame_reset_stream:
.LFB687:
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
	movl	$4, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L298
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L298
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L298
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L299
.L298:
	movl	$0, %eax
	jmp	.L300
.L299:
	movl	$1, %eax
.L300:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	ossl_quic_wire_decode_frame_reset_stream, .-ossl_quic_wire_decode_frame_reset_stream
	.globl	ossl_quic_wire_decode_frame_stop_sending
	.type	ossl_quic_wire_decode_frame_stop_sending, @function
ossl_quic_wire_decode_frame_stop_sending:
.LFB688:
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
	movl	$5, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L302
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L302
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L303
.L302:
	movl	$0, %eax
	jmp	.L304
.L303:
	movl	$1, %eax
.L304:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	ossl_quic_wire_decode_frame_stop_sending, .-ossl_quic_wire_decode_frame_stop_sending
	.globl	ossl_quic_wire_decode_frame_crypto
	.type	ossl_quic_wire_decode_frame_crypto, @function
ossl_quic_wire_decode_frame_crypto:
.LFB689:
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
	movl	$6, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L306
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L306
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L307
.L306:
	movl	$0, %eax
	jmp	.L308
.L307:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movabsq	$4611686018427387903, %rdx
	cmpq	%rax, %rdx
	jnb	.L309
	movl	$0, %eax
	jmp	.L308
.L309:
	cmpl	$0, -12(%rbp)
	je	.L310
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L311
.L310:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L312
	movl	$0, %eax
	jmp	.L308
.L312:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L311
	movl	$0, %eax
	jmp	.L308
.L311:
	movl	$1, %eax
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	ossl_quic_wire_decode_frame_crypto, .-ossl_quic_wire_decode_frame_crypto
	.globl	ossl_quic_wire_decode_frame_new_token
	.type	ossl_quic_wire_decode_frame_new_token, @function
ossl_quic_wire_decode_frame_new_token:
.LFB690:
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
	movl	$7, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L314
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L315
.L314:
	movl	$0, %eax
	jmp	.L318
.L315:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L317
	movl	$0, %eax
	jmp	.L318
.L317:
	movl	$1, %eax
.L318:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	ossl_quic_wire_decode_frame_new_token, .-ossl_quic_wire_decode_frame_new_token
	.globl	ossl_quic_wire_decode_frame_stream
	.type	ossl_quic_wire_decode_frame_stream, @function
ossl_quic_wire_decode_frame_stream:
.LFB691:
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
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	expect_frame_header_mask
	testl	%eax, %eax
	je	.L320
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L321
.L320:
	movl	$0, %eax
	jmp	.L331
.L321:
	movq	-8(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L323
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L324
	movl	$0, %eax
	jmp	.L331
.L323:
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
.L324:
	movq	-8(%rbp), %rax
	andl	$2, %eax
	shrq	%rax
	movl	%eax, %edx
	andl	$1, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	32(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 32(%rax)
	movq	-8(%rbp), %rax
	andl	$1, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movq	-40(%rbp), %rax
	andl	$1, %edx
	leal	(%rdx,%rdx), %ecx
	movzbl	32(%rax), %edx
	andl	$-3, %edx
	orl	%ecx, %edx
	movb	%dl, 32(%rax)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L325
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L326
	movl	$0, %eax
	jmp	.L331
.L325:
	cmpl	$0, -28(%rbp)
	je	.L327
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L326
.L327:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L326:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	movabsq	$4611686018427387903, %rdx
	cmpq	%rax, %rdx
	jnb	.L328
	movl	$0, %eax
	jmp	.L331
.L328:
	cmpl	$0, -28(%rbp)
	je	.L329
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.L330
.L329:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L330
	movl	$0, %eax
	jmp	.L331
.L330:
	movl	$1, %eax
.L331:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	ossl_quic_wire_decode_frame_stream, .-ossl_quic_wire_decode_frame_stream
	.globl	ossl_quic_wire_decode_frame_max_data
	.type	ossl_quic_wire_decode_frame_max_data, @function
ossl_quic_wire_decode_frame_max_data:
.LFB692:
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
	movl	$16, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L333
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L334
.L333:
	movl	$0, %eax
	jmp	.L335
.L334:
	movl	$1, %eax
.L335:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	ossl_quic_wire_decode_frame_max_data, .-ossl_quic_wire_decode_frame_max_data
	.globl	ossl_quic_wire_decode_frame_max_stream_data
	.type	ossl_quic_wire_decode_frame_max_stream_data, @function
ossl_quic_wire_decode_frame_max_stream_data:
.LFB693:
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
	movl	$17, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L337
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L337
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L338
.L337:
	movl	$0, %eax
	jmp	.L339
.L338:
	movl	$1, %eax
.L339:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	ossl_quic_wire_decode_frame_max_stream_data, .-ossl_quic_wire_decode_frame_max_stream_data
	.globl	ossl_quic_wire_decode_frame_max_streams
	.type	ossl_quic_wire_decode_frame_max_streams, @function
ossl_quic_wire_decode_frame_max_streams:
.LFB694:
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
	movl	$0, %ecx
	movl	$1, %edx
	movl	$18, %esi
	movq	%rax, %rdi
	call	expect_frame_header_mask
	testl	%eax, %eax
	je	.L341
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L342
.L341:
	movl	$0, %eax
	jmp	.L343
.L342:
	movl	$1, %eax
.L343:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	ossl_quic_wire_decode_frame_max_streams, .-ossl_quic_wire_decode_frame_max_streams
	.globl	ossl_quic_wire_decode_frame_data_blocked
	.type	ossl_quic_wire_decode_frame_data_blocked, @function
ossl_quic_wire_decode_frame_data_blocked:
.LFB695:
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
	movl	$20, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L345
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L346
.L345:
	movl	$0, %eax
	jmp	.L347
.L346:
	movl	$1, %eax
.L347:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	ossl_quic_wire_decode_frame_data_blocked, .-ossl_quic_wire_decode_frame_data_blocked
	.globl	ossl_quic_wire_decode_frame_stream_data_blocked
	.type	ossl_quic_wire_decode_frame_stream_data_blocked, @function
ossl_quic_wire_decode_frame_stream_data_blocked:
.LFB696:
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
	movl	$21, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L349
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L349
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L350
.L349:
	movl	$0, %eax
	jmp	.L351
.L350:
	movl	$1, %eax
.L351:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	ossl_quic_wire_decode_frame_stream_data_blocked, .-ossl_quic_wire_decode_frame_stream_data_blocked
	.globl	ossl_quic_wire_decode_frame_streams_blocked
	.type	ossl_quic_wire_decode_frame_streams_blocked, @function
ossl_quic_wire_decode_frame_streams_blocked:
.LFB697:
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
	movl	$0, %ecx
	movl	$1, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	expect_frame_header_mask
	testl	%eax, %eax
	je	.L353
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L354
.L353:
	movl	$0, %eax
	jmp	.L355
.L354:
	movl	$1, %eax
.L355:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	ossl_quic_wire_decode_frame_streams_blocked, .-ossl_quic_wire_decode_frame_streams_blocked
	.globl	ossl_quic_wire_decode_frame_new_conn_id
	.type	ossl_quic_wire_decode_frame_new_conn_id, @function
ossl_quic_wire_decode_frame_new_conn_id:
.LFB698:
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
	movl	$24, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L357
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L357
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L357
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L357
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L357
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L357
	movl	-4(%rbp), %eax
	cmpl	$20, %eax
	jbe	.L358
.L357:
	movl	$0, %eax
	jmp	.L363
.L358:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 16(%rax)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	leaq	17(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L360
	movl	$0, %eax
	jmp	.L363
.L360:
	movl	-4(%rbp), %eax
	cmpl	$19, %eax
	ja	.L361
	movl	-4(%rbp), %eax
	movl	$20, %edx
	subl	%eax, %edx
	movl	%edx, %edx
	movq	-32(%rbp), %rax
	addq	$17, %rax
	movl	-4(%rbp), %ecx
	movl	%ecx, %ecx
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L361:
	movq	-32(%rbp), %rax
	leaq	37(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L362
	movl	$0, %eax
	jmp	.L363
.L362:
	movl	$1, %eax
.L363:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	ossl_quic_wire_decode_frame_new_conn_id, .-ossl_quic_wire_decode_frame_new_conn_id
	.globl	ossl_quic_wire_decode_frame_retire_conn_id
	.type	ossl_quic_wire_decode_frame_retire_conn_id, @function
ossl_quic_wire_decode_frame_retire_conn_id:
.LFB699:
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
	movl	$25, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L365
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L366
.L365:
	movl	$0, %eax
	jmp	.L367
.L366:
	movl	$1, %eax
.L367:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	ossl_quic_wire_decode_frame_retire_conn_id, .-ossl_quic_wire_decode_frame_retire_conn_id
	.globl	ossl_quic_wire_decode_frame_path_challenge
	.type	ossl_quic_wire_decode_frame_path_challenge, @function
ossl_quic_wire_decode_frame_path_challenge:
.LFB700:
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
	movl	$26, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L369
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_8
	testl	%eax, %eax
	jne	.L370
.L369:
	movl	$0, %eax
	jmp	.L371
.L370:
	movl	$1, %eax
.L371:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	ossl_quic_wire_decode_frame_path_challenge, .-ossl_quic_wire_decode_frame_path_challenge
	.globl	ossl_quic_wire_decode_frame_path_response
	.type	ossl_quic_wire_decode_frame_path_response, @function
ossl_quic_wire_decode_frame_path_response:
.LFB701:
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
	movl	$27, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	testl	%eax, %eax
	je	.L373
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_8
	testl	%eax, %eax
	jne	.L374
.L373:
	movl	$0, %eax
	jmp	.L375
.L374:
	movl	$1, %eax
.L375:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	ossl_quic_wire_decode_frame_path_response, .-ossl_quic_wire_decode_frame_path_response
	.globl	ossl_quic_wire_decode_frame_conn_close
	.type	ossl_quic_wire_decode_frame_conn_close, @function
ossl_quic_wire_decode_frame_conn_close:
.LFB702:
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
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$28, %esi
	movq	%rax, %rdi
	call	expect_frame_header_mask
	testl	%eax, %eax
	je	.L377
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L378
.L377:
	movl	$0, %eax
	jmp	.L384
.L378:
	movq	-8(%rbp), %rax
	andl	$1, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L380
	movq	-32(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L381
	movl	$0, %eax
	jmp	.L384
.L380:
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
.L381:
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L382
	movl	$0, %eax
	jmp	.L384
.L382:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L383
	movl	$0, %eax
	jmp	.L384
.L383:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L384:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	ossl_quic_wire_decode_frame_conn_close, .-ossl_quic_wire_decode_frame_conn_close
	.globl	ossl_quic_wire_decode_padding
	.type	ossl_quic_wire_decode_padding, @function
ossl_quic_wire_decode_padding:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_end
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L386
.L388:
	addq	$1, -8(%rbp)
.L386:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L387
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L388
.L387:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L389
	movl	$0, %eax
	jmp	.L390
.L389:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
.L390:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	ossl_quic_wire_decode_padding, .-ossl_quic_wire_decode_padding
	.globl	ossl_quic_wire_decode_frame_ping
	.type	ossl_quic_wire_decode_frame_ping, @function
ossl_quic_wire_decode_frame_ping:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	ossl_quic_wire_decode_frame_ping, .-ossl_quic_wire_decode_frame_ping
	.globl	ossl_quic_wire_decode_frame_handshake_done
	.type	ossl_quic_wire_decode_frame_handshake_done, @function
ossl_quic_wire_decode_frame_handshake_done:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	expect_frame_header
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	ossl_quic_wire_decode_frame_handshake_done, .-ossl_quic_wire_decode_frame_handshake_done
	.globl	ossl_quic_wire_peek_transport_param
	.type	ossl_quic_wire_peek_transport_param, @function
ossl_quic_wire_peek_transport_param:
.LFB706:
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
	call	PACKET_peek_quic_vlint
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	ossl_quic_wire_peek_transport_param, .-ossl_quic_wire_peek_transport_param
	.globl	ossl_quic_wire_decode_transport_param_bytes
	.type	ossl_quic_wire_decode_transport_param_bytes, @function
ossl_quic_wire_decode_transport_param_bytes:
.LFB707:
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
	movq	$0, -16(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L398
	leaq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L399
.L398:
	movl	$0, %eax
	jmp	.L403
.L399:
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L401
	movl	$0, %eax
	jmp	.L403
.L401:
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -48(%rbp)
	je	.L402
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L402:
	movq	-16(%rbp), %rax
.L403:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	ossl_quic_wire_decode_transport_param_bytes, .-ossl_quic_wire_decode_transport_param_bytes
	.globl	ossl_quic_wire_decode_transport_param_int
	.type	ossl_quic_wire_decode_transport_param_int, @function
ossl_quic_wire_decode_transport_param_int:
.LFB708:
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
	leaq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_bytes@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L405
	movl	$0, %eax
	jmp	.L409
.L405:
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	jne	.L407
	movl	$0, %eax
	jmp	.L409
.L407:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L408
	movl	$0, %eax
	jmp	.L409
.L408:
	movl	$1, %eax
.L409:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	ossl_quic_wire_decode_transport_param_int, .-ossl_quic_wire_decode_transport_param_int
	.globl	ossl_quic_wire_decode_transport_param_cid
	.type	ossl_quic_wire_decode_transport_param_cid, @function
ossl_quic_wire_decode_transport_param_cid:
.LFB709:
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
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_bytes@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L411
	movq	-16(%rbp), %rax
	cmpq	$20, %rax
	jbe	.L412
.L411:
	movl	$0, %eax
	jmp	.L414
.L412:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L414:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	ossl_quic_wire_decode_transport_param_cid, .-ossl_quic_wire_decode_transport_param_cid
	.globl	ossl_quic_wire_decode_transport_param_preferred_addr
	.type	ossl_quic_wire_decode_transport_param_preferred_addr, @function
ossl_quic_wire_decode_transport_param_preferred_addr:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_transport_param_bytes@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L416
	movq	-24(%rbp), %rax
	cmpq	$40, %rax
	jbe	.L416
	movq	-24(%rbp), %rax
	cmpq	$61, %rax
	ja	.L416
	movq	-16(%rbp), %rax
	cmpq	$13, %rax
	je	.L417
.L416:
	movl	$0, %eax
	jmp	.L422
.L417:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L419
	movl	$0, %eax
	jmp	.L422
.L419:
	movq	-80(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-48(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	je	.L420
	leaq	-52(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L420
	movq	-80(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	je	.L420
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L420
	leaq	-60(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L420
	movl	-60(%rbp), %eax
	cmpl	$20, %eax
	ja	.L420
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	leaq	41(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	je	.L420
	movq	-80(%rbp), %rax
	leaq	24(%rax), %rcx
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L421
.L420:
	movl	$0, %eax
	jmp	.L422
.L421:
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movw	%dx, (%rax)
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movw	%dx, 2(%rax)
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movb	%dl, 40(%rax)
	movl	$1, %eax
.L422:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	ossl_quic_wire_decode_transport_param_preferred_addr, .-ossl_quic_wire_decode_transport_param_preferred_addr
	.section	.rodata
.LC0:
	.string	"PADDING"
.LC1:
	.string	"PING"
.LC2:
	.string	"ACK_WITHOUT_ECN"
.LC3:
	.string	"ACK_WITH_ECN"
.LC4:
	.string	"RESET_STREAM"
.LC5:
	.string	"STOP_SENDING"
.LC6:
	.string	"CRYPTO"
.LC7:
	.string	"NEW_TOKEN"
.LC8:
	.string	"MAX_DATA"
.LC9:
	.string	"MAX_STREAM_DATA"
.LC10:
	.string	"MAX_STREAMS_BIDI"
.LC11:
	.string	"MAX_STREAMS_UNI"
.LC12:
	.string	"DATA_BLOCKED"
.LC13:
	.string	"STREAM_DATA_BLOCKED"
.LC14:
	.string	"STREAMS_BLOCKED_BIDI"
.LC15:
	.string	"STREAMS_BLOCKED_UNI"
.LC16:
	.string	"NEW_CONN_ID"
.LC17:
	.string	"RETIRE_CONN_ID"
.LC18:
	.string	"PATH_CHALLENGE"
.LC19:
	.string	"PATH_RESPONSE"
.LC20:
	.string	"CONN_CLOSE_TRANSPORT"
.LC21:
	.string	"CONN_CLOSE_APP"
.LC22:
	.string	"HANDSHAKE_DONE"
.LC23:
	.string	"STREAM"
.LC24:
	.string	"STREAM_FIN"
.LC25:
	.string	"STREAM_LEN"
.LC26:
	.string	"STREAM_LEN_FIN"
.LC27:
	.string	"STREAM_OFF"
.LC28:
	.string	"STREAM_OFF_FIN"
.LC29:
	.string	"STREAM_OFF_LEN"
.LC30:
	.string	"STREAM_OFF_LEN_FIN"
	.text
	.globl	ossl_quic_frame_type_to_string
	.type	ossl_quic_frame_type_to_string, @function
ossl_quic_frame_type_to_string:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$30, -8(%rbp)
	je	.L424
	cmpq	$30, -8(%rbp)
	ja	.L425
	cmpq	$29, -8(%rbp)
	je	.L426
	cmpq	$29, -8(%rbp)
	ja	.L425
	cmpq	$28, -8(%rbp)
	je	.L427
	cmpq	$28, -8(%rbp)
	ja	.L425
	cmpq	$27, -8(%rbp)
	je	.L428
	cmpq	$27, -8(%rbp)
	ja	.L425
	cmpq	$26, -8(%rbp)
	je	.L429
	cmpq	$26, -8(%rbp)
	ja	.L425
	cmpq	$25, -8(%rbp)
	je	.L430
	cmpq	$25, -8(%rbp)
	ja	.L425
	cmpq	$24, -8(%rbp)
	je	.L431
	cmpq	$24, -8(%rbp)
	ja	.L425
	cmpq	$23, -8(%rbp)
	je	.L432
	cmpq	$23, -8(%rbp)
	ja	.L425
	cmpq	$22, -8(%rbp)
	je	.L433
	cmpq	$22, -8(%rbp)
	ja	.L425
	cmpq	$21, -8(%rbp)
	je	.L434
	cmpq	$21, -8(%rbp)
	ja	.L425
	cmpq	$20, -8(%rbp)
	je	.L435
	cmpq	$20, -8(%rbp)
	ja	.L425
	cmpq	$19, -8(%rbp)
	je	.L436
	cmpq	$19, -8(%rbp)
	ja	.L425
	cmpq	$18, -8(%rbp)
	je	.L437
	cmpq	$18, -8(%rbp)
	ja	.L425
	cmpq	$17, -8(%rbp)
	je	.L438
	cmpq	$17, -8(%rbp)
	ja	.L425
	cmpq	$16, -8(%rbp)
	je	.L439
	cmpq	$16, -8(%rbp)
	ja	.L425
	cmpq	$15, -8(%rbp)
	je	.L440
	cmpq	$15, -8(%rbp)
	ja	.L425
	cmpq	$14, -8(%rbp)
	je	.L441
	cmpq	$14, -8(%rbp)
	ja	.L425
	cmpq	$13, -8(%rbp)
	je	.L442
	cmpq	$13, -8(%rbp)
	ja	.L425
	cmpq	$12, -8(%rbp)
	je	.L443
	cmpq	$12, -8(%rbp)
	ja	.L425
	cmpq	$11, -8(%rbp)
	je	.L444
	cmpq	$11, -8(%rbp)
	ja	.L425
	cmpq	$10, -8(%rbp)
	je	.L445
	cmpq	$10, -8(%rbp)
	ja	.L425
	cmpq	$9, -8(%rbp)
	je	.L446
	cmpq	$9, -8(%rbp)
	ja	.L425
	cmpq	$8, -8(%rbp)
	je	.L447
	cmpq	$8, -8(%rbp)
	ja	.L425
	cmpq	$7, -8(%rbp)
	je	.L448
	cmpq	$7, -8(%rbp)
	ja	.L425
	cmpq	$6, -8(%rbp)
	je	.L449
	cmpq	$6, -8(%rbp)
	ja	.L425
	cmpq	$5, -8(%rbp)
	je	.L450
	cmpq	$5, -8(%rbp)
	ja	.L425
	cmpq	$4, -8(%rbp)
	je	.L451
	cmpq	$4, -8(%rbp)
	ja	.L425
	cmpq	$3, -8(%rbp)
	je	.L452
	cmpq	$3, -8(%rbp)
	ja	.L425
	cmpq	$2, -8(%rbp)
	je	.L453
	cmpq	$2, -8(%rbp)
	ja	.L425
	cmpq	$0, -8(%rbp)
	je	.L454
	cmpq	$1, -8(%rbp)
	je	.L455
	jmp	.L425
.L454:
	leaq	.LC0(%rip), %rax
	jmp	.L456
.L455:
	leaq	.LC1(%rip), %rax
	jmp	.L456
.L453:
	leaq	.LC2(%rip), %rax
	jmp	.L456
.L452:
	leaq	.LC3(%rip), %rax
	jmp	.L456
.L451:
	leaq	.LC4(%rip), %rax
	jmp	.L456
.L450:
	leaq	.LC5(%rip), %rax
	jmp	.L456
.L449:
	leaq	.LC6(%rip), %rax
	jmp	.L456
.L448:
	leaq	.LC7(%rip), %rax
	jmp	.L456
.L439:
	leaq	.LC8(%rip), %rax
	jmp	.L456
.L438:
	leaq	.LC9(%rip), %rax
	jmp	.L456
.L437:
	leaq	.LC10(%rip), %rax
	jmp	.L456
.L436:
	leaq	.LC11(%rip), %rax
	jmp	.L456
.L435:
	leaq	.LC12(%rip), %rax
	jmp	.L456
.L434:
	leaq	.LC13(%rip), %rax
	jmp	.L456
.L433:
	leaq	.LC14(%rip), %rax
	jmp	.L456
.L432:
	leaq	.LC15(%rip), %rax
	jmp	.L456
.L431:
	leaq	.LC16(%rip), %rax
	jmp	.L456
.L430:
	leaq	.LC17(%rip), %rax
	jmp	.L456
.L429:
	leaq	.LC18(%rip), %rax
	jmp	.L456
.L428:
	leaq	.LC19(%rip), %rax
	jmp	.L456
.L427:
	leaq	.LC20(%rip), %rax
	jmp	.L456
.L426:
	leaq	.LC21(%rip), %rax
	jmp	.L456
.L424:
	leaq	.LC22(%rip), %rax
	jmp	.L456
.L447:
	leaq	.LC23(%rip), %rax
	jmp	.L456
.L446:
	leaq	.LC24(%rip), %rax
	jmp	.L456
.L445:
	leaq	.LC25(%rip), %rax
	jmp	.L456
.L444:
	leaq	.LC26(%rip), %rax
	jmp	.L456
.L443:
	leaq	.LC27(%rip), %rax
	jmp	.L456
.L442:
	leaq	.LC28(%rip), %rax
	jmp	.L456
.L441:
	leaq	.LC29(%rip), %rax
	jmp	.L456
.L440:
	leaq	.LC30(%rip), %rax
	jmp	.L456
.L425:
	movl	$0, %eax
.L456:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	ossl_quic_frame_type_to_string, .-ossl_quic_frame_type_to_string
	.section	.rodata
.LC31:
	.string	"NO_ERROR"
.LC32:
	.string	"INTERNAL_ERROR"
.LC33:
	.string	"CONNECTION_REFUSED"
.LC34:
	.string	"FLOW_CONTROL_ERROR"
.LC35:
	.string	"STREAM_LIMIT_ERROR"
.LC36:
	.string	"STREAM_STATE_ERROR"
.LC37:
	.string	"FINAL_SIZE_ERROR"
.LC38:
	.string	"FRAME_ENCODING_ERROR"
.LC39:
	.string	"TRANSPORT_PARAMETER_ERROR"
.LC40:
	.string	"CONNECTION_ID_LIMIT_ERROR"
.LC41:
	.string	"PROTOCOL_VIOLATION"
.LC42:
	.string	"INVALID_TOKEN"
.LC43:
	.string	"APPLICATION_ERROR"
.LC44:
	.string	"CRYPTO_BUFFER_EXCEEDED"
.LC45:
	.string	"KEY_UPDATE_ERROR"
.LC46:
	.string	"AEAD_LIMIT_REACHED"
.LC47:
	.string	"NO_VIABLE_PATH"
	.text
	.globl	ossl_quic_err_to_string
	.type	ossl_quic_err_to_string, @function
ossl_quic_err_to_string:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$16, -8(%rbp)
	je	.L458
	cmpq	$16, -8(%rbp)
	ja	.L459
	cmpq	$15, -8(%rbp)
	je	.L460
	cmpq	$15, -8(%rbp)
	ja	.L459
	cmpq	$14, -8(%rbp)
	je	.L461
	cmpq	$14, -8(%rbp)
	ja	.L459
	cmpq	$13, -8(%rbp)
	je	.L462
	cmpq	$13, -8(%rbp)
	ja	.L459
	cmpq	$12, -8(%rbp)
	je	.L463
	cmpq	$12, -8(%rbp)
	ja	.L459
	cmpq	$11, -8(%rbp)
	je	.L464
	cmpq	$11, -8(%rbp)
	ja	.L459
	cmpq	$10, -8(%rbp)
	je	.L465
	cmpq	$10, -8(%rbp)
	ja	.L459
	cmpq	$9, -8(%rbp)
	je	.L466
	cmpq	$9, -8(%rbp)
	ja	.L459
	cmpq	$8, -8(%rbp)
	je	.L467
	cmpq	$8, -8(%rbp)
	ja	.L459
	cmpq	$7, -8(%rbp)
	je	.L468
	cmpq	$7, -8(%rbp)
	ja	.L459
	cmpq	$6, -8(%rbp)
	je	.L469
	cmpq	$6, -8(%rbp)
	ja	.L459
	cmpq	$5, -8(%rbp)
	je	.L470
	cmpq	$5, -8(%rbp)
	ja	.L459
	cmpq	$4, -8(%rbp)
	je	.L471
	cmpq	$4, -8(%rbp)
	ja	.L459
	cmpq	$3, -8(%rbp)
	je	.L472
	cmpq	$3, -8(%rbp)
	ja	.L459
	cmpq	$2, -8(%rbp)
	je	.L473
	cmpq	$2, -8(%rbp)
	ja	.L459
	cmpq	$0, -8(%rbp)
	je	.L474
	cmpq	$1, -8(%rbp)
	je	.L475
	jmp	.L459
.L474:
	leaq	.LC31(%rip), %rax
	jmp	.L476
.L475:
	leaq	.LC32(%rip), %rax
	jmp	.L476
.L473:
	leaq	.LC33(%rip), %rax
	jmp	.L476
.L472:
	leaq	.LC34(%rip), %rax
	jmp	.L476
.L471:
	leaq	.LC35(%rip), %rax
	jmp	.L476
.L470:
	leaq	.LC36(%rip), %rax
	jmp	.L476
.L469:
	leaq	.LC37(%rip), %rax
	jmp	.L476
.L468:
	leaq	.LC38(%rip), %rax
	jmp	.L476
.L467:
	leaq	.LC39(%rip), %rax
	jmp	.L476
.L466:
	leaq	.LC40(%rip), %rax
	jmp	.L476
.L465:
	leaq	.LC41(%rip), %rax
	jmp	.L476
.L464:
	leaq	.LC42(%rip), %rax
	jmp	.L476
.L463:
	leaq	.LC43(%rip), %rax
	jmp	.L476
.L462:
	leaq	.LC44(%rip), %rax
	jmp	.L476
.L461:
	leaq	.LC45(%rip), %rax
	jmp	.L476
.L460:
	leaq	.LC46(%rip), %rax
	jmp	.L476
.L458:
	leaq	.LC47(%rip), %rax
	jmp	.L476
.L459:
	movl	$0, %eax
.L476:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	ossl_quic_err_to_string, .-ossl_quic_err_to_string
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
