	.file	"packettest.c"
	.text
	.type	packet_forward, @function
packet_forward:
.LFB30:
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
.LFE30:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB31:
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
.LFE31:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_end, @function
PACKET_end:
.LFB32:
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
.LFE32:
	.size	PACKET_end, .-PACKET_end
	.type	PACKET_data, @function
PACKET_data:
.LFB33:
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
.LFE33:
	.size	PACKET_data, .-PACKET_data
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB34:
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
.LFE34:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_null_init, @function
PACKET_null_init:
.LFB35:
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
.LFE35:
	.size	PACKET_null_init, .-PACKET_null_init
	.type	PACKET_equal, @function
PACKET_equal:
.LFB36:
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
	je	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
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
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	PACKET_equal, .-PACKET_equal
	.type	PACKET_peek_sub_packet, @function
PACKET_peek_sub_packet:
.LFB37:
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
	jnb	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	PACKET_peek_sub_packet, .-PACKET_peek_sub_packet
	.type	PACKET_get_sub_packet, @function
PACKET_get_sub_packet:
.LFB38:
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
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	PACKET_get_sub_packet, .-PACKET_get_sub_packet
	.type	PACKET_peek_net_2, @function
PACKET_peek_net_2:
.LFB39:
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
	ja	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
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
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	PACKET_peek_net_2, .-PACKET_peek_net_2
	.type	PACKET_get_net_2, @function
PACKET_get_net_2:
.LFB40:
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
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_peek_net_3, @function
PACKET_peek_net_3:
.LFB42:
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
	ja	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
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
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	PACKET_peek_net_3, .-PACKET_peek_net_3
	.type	PACKET_get_net_3, @function
PACKET_get_net_3:
.LFB43:
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
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	PACKET_get_net_3, .-PACKET_get_net_3
	.type	PACKET_peek_net_4, @function
PACKET_peek_net_4:
.LFB45:
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
	ja	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
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
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	PACKET_peek_net_4, .-PACKET_peek_net_4
	.type	PACKET_get_net_4, @function
PACKET_get_net_4:
.LFB47:
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
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	PACKET_get_net_4, .-PACKET_get_net_4
	.type	PACKET_peek_1, @function
PACKET_peek_1:
.LFB50:
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
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	PACKET_peek_1, .-PACKET_peek_1
	.type	PACKET_get_1, @function
PACKET_get_1:
.LFB51:
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
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	PACKET_get_1, .-PACKET_get_1
	.type	PACKET_peek_4, @function
PACKET_peek_4:
.LFB53:
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
	ja	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
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
	salq	$16, %rax
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
	salq	$24, %rax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	PACKET_peek_4, .-PACKET_peek_4
	.type	PACKET_get_4, @function
PACKET_get_4:
.LFB54:
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
	call	PACKET_peek_4
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	PACKET_get_4, .-PACKET_get_4
	.type	PACKET_peek_bytes, @function
PACKET_peek_bytes:
.LFB55:
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
.LFE55:
	.size	PACKET_peek_bytes, .-PACKET_peek_bytes
	.type	PACKET_get_bytes, @function
PACKET_get_bytes:
.LFB56:
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
.LFE56:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.type	PACKET_peek_copy_bytes, @function
PACKET_peek_copy_bytes:
.LFB57:
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
.LFE57:
	.size	PACKET_peek_copy_bytes, .-PACKET_peek_copy_bytes
	.type	PACKET_copy_bytes, @function
PACKET_copy_bytes:
.LFB58:
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
.LFE58:
	.size	PACKET_copy_bytes, .-PACKET_copy_bytes
	.type	PACKET_copy_all, @function
PACKET_copy_all:
.LFB59:
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
.LFE59:
	.size	PACKET_copy_all, .-PACKET_copy_all
	.section	.rodata
.LC0:
	.string	"../include/internal/packet.h"
	.text
	.type	PACKET_memdup, @function
PACKET_memdup:
.LFB60:
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
.LFE60:
	.size	PACKET_memdup, .-PACKET_memdup
	.type	PACKET_strndup, @function
PACKET_strndup:
.LFB61:
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
.LFE61:
	.size	PACKET_strndup, .-PACKET_strndup
	.type	PACKET_contains_zero_byte, @function
PACKET_contains_zero_byte:
.LFB62:
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
.LFE62:
	.size	PACKET_contains_zero_byte, .-PACKET_contains_zero_byte
	.type	PACKET_forward, @function
PACKET_forward:
.LFB63:
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
	jnb	.L75
	movl	$0, %eax
	jmp	.L76
.L75:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	PACKET_forward, .-PACKET_forward
	.type	PACKET_get_length_prefixed_1, @function
PACKET_get_length_prefixed_1:
.LFB64:
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
	je	.L78
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L79
.L78:
	movl	$0, %eax
	jmp	.L81
.L79:
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
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	PACKET_get_length_prefixed_1, .-PACKET_get_length_prefixed_1
	.type	PACKET_as_length_prefixed_1, @function
PACKET_as_length_prefixed_1:
.LFB65:
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
	je	.L83
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L83
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L84
.L83:
	movl	$0, %eax
	jmp	.L86
.L84:
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
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	PACKET_as_length_prefixed_1, .-PACKET_as_length_prefixed_1
	.type	PACKET_get_length_prefixed_2, @function
PACKET_get_length_prefixed_2:
.LFB66:
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
	je	.L88
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L89
.L88:
	movl	$0, %eax
	jmp	.L91
.L89:
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
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
	.type	PACKET_as_length_prefixed_2, @function
PACKET_as_length_prefixed_2:
.LFB67:
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
	je	.L93
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L93
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L94
.L93:
	movl	$0, %eax
	jmp	.L96
.L94:
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
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	PACKET_as_length_prefixed_2, .-PACKET_as_length_prefixed_2
	.type	PACKET_get_length_prefixed_3, @function
PACKET_get_length_prefixed_3:
.LFB68:
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
	je	.L98
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L99
.L98:
	movl	$0, %eax
	jmp	.L101
.L99:
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
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	PACKET_get_length_prefixed_3, .-PACKET_get_length_prefixed_3
	.type	ossl_quic_vlint_decode_len, @function
ossl_quic_vlint_decode_len:
.LFB70:
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
.LFE70:
	.size	ossl_quic_vlint_decode_len, .-ossl_quic_vlint_decode_len
	.type	PACKET_get_quic_vlint, @function
PACKET_get_quic_vlint:
.LFB71:
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
	jne	.L105
	movl	$0, %eax
	jmp	.L106
.L105:
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
	jnb	.L107
	movl	$0, %eax
	jmp	.L106
.L107:
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
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	PACKET_get_quic_vlint, .-PACKET_get_quic_vlint
	.type	PACKET_get_quic_length_prefixed, @function
PACKET_get_quic_length_prefixed:
.LFB75:
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
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L109
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L110
.L109:
	movl	$0, %eax
	jmp	.L112
.L110:
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
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	PACKET_get_quic_length_prefixed, .-PACKET_get_quic_length_prefixed
	.local	smbuf
	.comm	smbuf,256,32
	.section	.rodata
	.align 8
.LC1:
	.string	"PACKET_buf_init(&pkt, smbuf, BUF_LEN)"
.LC2:
	.string	"../test/packettest.c"
.LC3:
	.string	"BUF_LEN"
.LC4:
	.string	"PACKET_remaining(&pkt)"
	.align 8
.LC5:
	.string	"PACKET_forward(&pkt, BUF_LEN - 1)"
.LC6:
	.string	"1"
.LC7:
	.string	"PACKET_forward(&pkt, 1)"
.LC8:
	.string	"0"
	.text
	.type	test_PACKET_remaining, @function
test_PACKET_remaining:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	smbuf(%rip), %rcx
	leaq	-16(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$21, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L114
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$255, %r9d
	movq	%rsi, %r8
	movl	$22, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L114
	leaq	-16(%rbp), %rax
	movl	$254, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$23, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L114
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$24, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L114
	leaq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$25, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L114
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$26, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L115
.L114:
	movl	$0, %eax
	jmp	.L117
.L115:
	movl	$1, %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	test_PACKET_remaining, .-test_PACKET_remaining
	.section	.rodata
.LC9:
	.string	"smbuf + BUF_LEN"
.LC10:
	.string	"PACKET_end(&pkt)"
	.text
	.type	test_PACKET_end, @function
test_PACKET_end:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	smbuf(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$36, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L119
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$255, %r9d
	movq	%rsi, %r8
	movl	$37, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L119
	leaq	255+smbuf(%rip), %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_end
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$38, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L119
	leaq	-32(%rbp), %rax
	movl	$254, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$39, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L119
	leaq	255+smbuf(%rip), %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_end
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$40, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L119
	leaq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$41, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L119
	leaq	255+smbuf(%rip), %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_end
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$42, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L120
.L119:
	movl	$0, %eax
	jmp	.L122
.L120:
	movl	$1, %eax
.L122:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	test_PACKET_end, .-test_PACKET_end
	.section	.rodata
.LC11:
	.string	"PACKET_get_1(&pkt, &i)"
.LC12:
	.string	"0x02"
.LC13:
	.string	"i"
	.align 8
.LC14:
	.string	"PACKET_forward(&pkt, BUF_LEN - 2)"
.LC15:
	.string	"0xfe"
	.text
	.type	test_PACKET_get_1, @function
test_PACKET_get_1:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	smbuf(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$53, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$54, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movl	-4(%rbp), %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L124
	leaq	-32(%rbp), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$56, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$57, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movl	-4(%rbp), %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$254, %r9d
	movl	%esi, %r8d
	movl	$58, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L124
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$59, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L125
.L124:
	movl	$0, %eax
	jmp	.L127
.L125:
	movl	$1, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	test_PACKET_get_1, .-test_PACKET_get_1
	.section	.rodata
.LC16:
	.string	"PACKET_get_4(&pkt, &i)"
.LC17:
	.string	"0x08060402UL"
	.align 8
.LC18:
	.string	"PACKET_forward(&pkt, BUF_LEN - 8)"
.LC19:
	.string	"0xfefcfaf8UL"
	.text
	.type	test_PACKET_get_4, @function
test_PACKET_get_4:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	smbuf(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L129
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_4
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L129
	movq	-8(%rbp), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$134611970, %r9d
	movq	%rsi, %r8
	movl	$72, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L129
	leaq	-32(%rbp), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$73, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L129
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_4
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$74, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L129
	movq	-8(%rbp), %rsi
	leaq	.LC19(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4277992184, %r9d
	movq	%rsi, %r8
	movl	$75, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L129
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_4
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$76, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L130
.L129:
	movl	$0, %eax
	jmp	.L132
.L130:
	movl	$1, %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	test_PACKET_get_4, .-test_PACKET_get_4
	.section	.rodata
.LC20:
	.string	"PACKET_get_net_2(&pkt, &i)"
.LC21:
	.string	"0x0204"
	.align 8
.LC22:
	.string	"PACKET_forward(&pkt, BUF_LEN - 4)"
.LC23:
	.string	"0xfcfe"
	.text
	.type	test_PACKET_get_net_2, @function
test_PACKET_get_net_2:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	smbuf(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$88, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L134
	movl	-4(%rbp), %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$516, %r9d
	movl	%esi, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-32(%rbp), %rax
	movl	$251, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$90, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$91, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L134
	movl	-4(%rbp), %esi
	leaq	.LC23(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$64766, %r9d
	movl	%esi, %r8d
	movl	$92, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L134
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$93, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L135
.L134:
	movl	$0, %eax
	jmp	.L137
.L135:
	movl	$1, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	test_PACKET_get_net_2, .-test_PACKET_get_net_2
	.section	.rodata
.LC24:
	.string	"PACKET_get_net_3(&pkt, &i)"
.LC25:
	.string	"0x020406UL"
	.align 8
.LC26:
	.string	"PACKET_forward(&pkt, BUF_LEN - 6)"
.LC27:
	.string	"0xfafcfeUL"
	.text
	.type	test_PACKET_get_net_3, @function
test_PACKET_get_net_3:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	smbuf(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$104, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L139
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$105, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L139
	movq	-8(%rbp), %rsi
	leaq	.LC25(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$132102, %r9d
	movq	%rsi, %r8
	movl	$106, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L139
	leaq	-32(%rbp), %rax
	movl	$249, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$107, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L139
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L139
	movq	-8(%rbp), %rsi
	leaq	.LC27(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16448766, %r9d
	movq	%rsi, %r8
	movl	$109, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L139
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$110, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L140
.L139:
	movl	$0, %eax
	jmp	.L142
.L140:
	movl	$1, %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	test_PACKET_get_net_3, .-test_PACKET_get_net_3
	.section	.rodata
.LC28:
	.string	"PACKET_get_net_4(&pkt, &i)"
.LC29:
	.string	"0x02040608UL"
.LC30:
	.string	"0xf8fafcfeUL"
	.text
	.type	test_PACKET_get_net_4, @function
test_PACKET_get_net_4:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	smbuf(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$121, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L144
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$122, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L144
	movq	-8(%rbp), %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$33818120, %r9d
	movq	%rsi, %r8
	movl	$123, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L144
	leaq	-32(%rbp), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$124, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L144
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$125, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L144
	movq	-8(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4177198334, %r9d
	movq	%rsi, %r8
	movl	$126, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L144
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$127, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L145
.L144:
	movl	$0, %eax
	jmp	.L147
.L145:
	movl	$1, %eax
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	test_PACKET_get_net_4, .-test_PACKET_get_net_4
	.section	.rodata
	.align 8
.LC31:
	.string	"PACKET_get_sub_packet(&pkt, &subpkt, 4)"
.LC32:
	.string	"PACKET_get_net_4(&subpkt, &i)"
.LC33:
	.string	"PACKET_remaining(&subpkt)"
	.text
	.type	test_PACKET_get_sub_packet, @function
test_PACKET_get_sub_packet:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -40(%rbp)
	leaq	smbuf(%rip), %rcx
	leaq	-16(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$138, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-32(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_sub_packet
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$139, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$140, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	movq	-40(%rbp), %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$33818120, %r9d
	movq	%rsi, %r8
	movl	$141, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$142, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-16(%rbp), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$143, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-32(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_sub_packet
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$144, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$145, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	movq	-40(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4177198334, %r9d
	movq	%rsi, %r8
	movl	$146, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$147, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L149
	leaq	-32(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_sub_packet
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$148, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L150
.L149:
	movl	$0, %eax
	jmp	.L152
.L150:
	movl	$1, %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	test_PACKET_get_sub_packet, .-test_PACKET_get_sub_packet
	.section	.rodata
	.align 8
.LC34:
	.string	"PACKET_get_bytes(&pkt, &bytes, 4)"
.LC35:
	.string	"2"
.LC36:
	.string	"bytes[0]"
.LC37:
	.string	"4"
.LC38:
	.string	"bytes[1]"
.LC39:
	.string	"6"
.LC40:
	.string	"bytes[2]"
.LC41:
	.string	"8"
.LC42:
	.string	"bytes[3]"
.LC43:
	.string	"BUF_LEN -4"
.LC44:
	.string	"0xf8"
.LC45:
	.string	"0xfa"
.LC46:
	.string	"0xfc"
	.text
	.type	test_PACKET_get_bytes, @function
test_PACKET_get_bytes:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	smbuf(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$159, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L154
	leaq	-8(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$160, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L154
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L154
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC37(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$162, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L154
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC39(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$163, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L154
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8, %r9d
	movl	%esi, %r8d
	movl	$164, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L154
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC43(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$251, %r9d
	movq	%rsi, %r8
	movl	$165, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L154
	leaq	-32(%rbp), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$166, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L154
	leaq	-8(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$167, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L154
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC44(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$248, %r9d
	movl	%esi, %r8d
	movl	$168, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L154
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$250, %r9d
	movl	%esi, %r8d
	movl	$169, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L154
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$252, %r9d
	movl	%esi, %r8d
	movl	$170, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L154
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$254, %r9d
	movl	%esi, %r8d
	movl	$171, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L154
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L155
.L154:
	movl	$0, %eax
	jmp	.L157
.L155:
	movl	$1, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	test_PACKET_get_bytes, .-test_PACKET_get_bytes
	.section	.rodata
	.align 8
.LC47:
	.string	"PACKET_copy_bytes(&pkt, bytes, 4)"
.LC48:
	.string	"BUF_LEN - 4"
	.text
	.type	test_PACKET_copy_bytes, @function
test_PACKET_copy_bytes:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	smbuf(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$183, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	leaq	-4(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$184, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	movzbl	-4(%rbp), %eax
	movsbl	%al, %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$185, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L159
	movzbl	-3(%rbp), %eax
	movsbl	%al, %esi
	leaq	.LC37(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$186, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L159
	movzbl	-2(%rbp), %eax
	movsbl	%al, %esi
	leaq	.LC39(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$187, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L159
	movzbl	-1(%rbp), %eax
	movsbl	%al, %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8, %r9d
	movl	%esi, %r8d
	movl	$188, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L159
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC48(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$251, %r9d
	movq	%rsi, %r8
	movl	$189, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L159
	leaq	-32(%rbp), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$190, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	leaq	-4(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$191, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L159
	movzbl	-4(%rbp), %eax
	movzbl	%al, %esi
	leaq	.LC44(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$248, %r9d
	movl	%esi, %r8d
	movl	$192, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L159
	movzbl	-3(%rbp), %eax
	movzbl	%al, %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$250, %r9d
	movl	%esi, %r8d
	movl	$193, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L159
	movzbl	-2(%rbp), %eax
	movzbl	%al, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$252, %r9d
	movl	%esi, %r8d
	movl	$194, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L159
	movzbl	-1(%rbp), %eax
	movzbl	%al, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$254, %r9d
	movl	%esi, %r8d
	movl	$195, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L159
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$196, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L160
.L159:
	movl	$0, %eax
	jmp	.L162
.L160:
	movl	$1, %eax
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	test_PACKET_copy_bytes, .-test_PACKET_copy_bytes
	.section	.rodata
	.align 8
.LC49:
	.string	"PACKET_copy_all(&pkt, tmp, BUF_LEN, &len)"
.LC50:
	.string	"len"
.LC51:
	.string	"tmp"
.LC52:
	.string	"smbuf"
	.align 8
.LC53:
	.string	"PACKET_copy_all(&pkt, tmp, BUF_LEN - 1, &len)"
	.text
	.type	test_PACKET_copy_all, @function
test_PACKET_copy_all:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	leaq	smbuf(%rip), %rcx
	leaq	-272(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$208, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L164
	leaq	-280(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movq	%rdx, %rcx
	movl	$255, %edx
	movq	%rax, %rdi
	call	PACKET_copy_all
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$209, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L164
	movq	-280(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$255, %r9d
	movq	%rsi, %r8
	movl	$210, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L164
	leaq	smbuf(%rip), %rdi
	leaq	.LC51(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$255
	leaq	-256(%rbp), %rsi
	pushq	%rsi
	movl	$255, %r9d
	movq	%rdi, %r8
	movl	$211, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L164
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$255, %r9d
	movq	%rsi, %r8
	movl	$212, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L164
	leaq	-280(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	leaq	-272(%rbp), %rax
	movq	%rdx, %rcx
	movl	$254, %edx
	movq	%rax, %rdi
	call	PACKET_copy_all
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$213, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L165
.L164:
	movl	$0, %eax
	jmp	.L167
.L165:
	movl	$1, %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	test_PACKET_copy_all, .-test_PACKET_copy_all
	.section	.rodata
	.align 8
.LC54:
	.string	"PACKET_memdup(&pkt, &data, &len)"
.LC55:
	.string	"PACKET_data(&pkt)"
.LC56:
	.string	"data"
.LC57:
	.string	"PACKET_forward(&pkt, 10)"
.LC58:
	.string	"BUF_LEN - 10"
	.text
	.type	test_PACKET_memdup, @function
test_PACKET_memdup:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
	leaq	smbuf(%rip), %rcx
	leaq	-64(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$226, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L173
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_memdup
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$227, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L173
	movq	-40(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$255, %r9d
	movq	%rsi, %r8
	movl	$228, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L173
	movq	-40(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rsi
	leaq	.LC55(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r9
	movq	%rsi, %r8
	movl	$229, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L173
	leaq	-64(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$230, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L173
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_memdup
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$231, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L173
	movq	-40(%rbp), %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$245, %r9d
	movq	%rsi, %r8
	movl	$232, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L173
	movq	-40(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rsi
	leaq	.LC55(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r9
	movq	%rsi, %r8
	movl	$233, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L173
	movl	$1, -20(%rbp)
	jmp	.L171
.L173:
	nop
.L171:
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$237, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	test_PACKET_memdup, .-test_PACKET_memdup
	.section	.rodata
	.align 8
.LC59:
	.string	"PACKET_buf_init(&pkt, (unsigned char*)buf1, 10)"
.LC60:
	.string	"PACKET_strndup(&pkt, &data)"
.LC61:
	.string	"10"
.LC62:
	.string	"strlen(data)"
.LC63:
	.string	"buf1"
	.align 8
.LC64:
	.string	"PACKET_buf_init(&pkt, (unsigned char*)buf2, 10)"
.LC65:
	.string	"5"
.LC66:
	.string	"buf2"
	.text
	.type	test_PACKET_strndup, @function
test_PACKET_strndup:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	leaq	-14(%rbp), %rax
	movl	$10, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-24(%rbp), %rax
	movl	$10, %edx
	movl	$121, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$0, -19(%rbp)
	leaq	-14(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$252, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_strndup
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$253, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	.LC61(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$10, %r9d
	movq	%rsi, %r8
	movl	$254, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L179
	movq	-32(%rbp), %rdi
	leaq	.LC63(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$10
	leaq	-14(%rbp), %rsi
	pushq	%rsi
	movl	$10, %r9d
	movq	%rdi, %r8
	movl	$255, %esi
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L179
	leaq	-24(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_strndup
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	.LC65(%rip), %rcx
	leaq	.LC62(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movq	%rsi, %r8
	movl	$258, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L179
	movq	-32(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	leaq	.LC66(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$259, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L179
	movl	$1, -4(%rbp)
	jmp	.L177
.L179:
	nop
.L177:
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$264, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	test_PACKET_strndup, .-test_PACKET_strndup
	.section	.rodata
	.align 8
.LC67:
	.string	"PACKET_contains_zero_byte(&pkt)"
	.text
	.type	test_PACKET_contains_zero_byte, @function
test_PACKET_contains_zero_byte:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	-10(%rbp), %rax
	movl	$10, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-20(%rbp), %rax
	movl	$10, %edx
	movl	$121, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movb	$0, -15(%rbp)
	leaq	-10(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$277, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L181
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_contains_zero_byte
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$278, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L181
	leaq	-20(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$279, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L181
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_contains_zero_byte
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$280, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L182
.L181:
	movl	$0, %eax
	jmp	.L184
.L182:
	movl	$1, %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_PACKET_contains_zero_byte, .-test_PACKET_contains_zero_byte
	.section	.rodata
	.align 8
.LC68:
	.string	"PACKET_get_bytes(&pkt, &byte, 1)"
.LC69:
	.string	"byte[0]"
	.align 8
.LC70:
	.string	"PACKET_forward(&pkt, BUF_LEN - 3)"
	.text
	.type	test_PACKET_forward, @function
test_PACKET_forward:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	leaq	smbuf(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$291, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	leaq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$292, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	leaq	-8(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$293, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC37(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$294, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L186
	leaq	-32(%rbp), %rax
	movl	$252, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$295, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	leaq	-8(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$296, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$254, %r9d
	movl	%esi, %r8d
	movl	$297, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	jne	.L187
.L186:
	movl	$0, %eax
	jmp	.L189
.L187:
	movl	$1, %eax
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_PACKET_forward, .-test_PACKET_forward
	.section	.rodata
	.align 8
.LC71:
	.string	"PACKET_buf_init(&pkt, buf1, 4)"
	.align 8
.LC72:
	.string	"PACKET_buf_init(&pkt, buf1, BUF_LEN)"
	.align 8
.LC73:
	.string	"PACKET_buf_init(&pkt, buf1, -1)"
	.text
	.type	test_PACKET_buf_init, @function
test_PACKET_buf_init:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -17(%rbp)
	movq	$0, -9(%rbp)
	leaq	-256(%rbp), %rcx
	leaq	-272(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$309, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L191
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$310, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L191
	leaq	-256(%rbp), %rcx
	leaq	-272(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$311, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L191
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$255, %r9d
	movq	%rsi, %r8
	movl	$312, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L191
	leaq	-256(%rbp), %rcx
	leaq	-272(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC73(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$313, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L192
.L191:
	movl	$0, %eax
	jmp	.L194
.L192:
	movl	$1, %eax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	test_PACKET_buf_init, .-test_PACKET_buf_init
	.type	test_PACKET_null_init, @function
test_PACKET_null_init:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_null_init
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$324, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L196
	leaq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$325, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L197
.L196:
	movl	$0, %eax
	jmp	.L199
.L197:
	movl	$1, %eax
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	test_PACKET_null_init, .-test_PACKET_null_init
	.section	.rodata
	.align 8
.LC74:
	.string	"PACKET_buf_init(&pkt, smbuf, 4)"
.LC75:
	.string	"PACKET_equal(&pkt, smbuf, 4)"
	.align 8
.LC76:
	.string	"PACKET_equal(&pkt, smbuf + 1, 4)"
	.align 8
.LC77:
	.string	"PACKET_equal(&pkt, smbuf, BUF_LEN)"
	.align 8
.LC78:
	.string	"PACKET_equal(&pkt, smbuf, BUF_LEN - 1)"
	.align 8
.LC79:
	.string	"PACKET_equal(&pkt, smbuf, BUF_LEN + 1)"
.LC80:
	.string	"PACKET_equal(&pkt, smbuf, 0)"
	.text
	.type	test_PACKET_equal, @function
test_PACKET_equal:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	smbuf(%rip), %rcx
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$335, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L201
	leaq	smbuf(%rip), %rcx
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC75(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$336, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L201
	leaq	1+smbuf(%rip), %rcx
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$337, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L201
	leaq	smbuf(%rip), %rcx
	leaq	-16(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$338, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L201
	leaq	smbuf(%rip), %rcx
	leaq	-16(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC77(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$339, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L201
	leaq	smbuf(%rip), %rcx
	leaq	-16(%rbp), %rax
	movl	$254, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC78(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$340, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L201
	leaq	smbuf(%rip), %rcx
	leaq	-16(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC79(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$341, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L201
	leaq	smbuf(%rip), %rcx
	leaq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC80(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$342, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L202
.L201:
	movl	$0, %eax
	jmp	.L204
.L202:
	movl	$1, %eax
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	test_PACKET_equal, .-test_PACKET_equal
	.section	.rodata
	.align 8
.LC81:
	.string	"PACKET_buf_init(&short_pkt, buf1, len)"
	.align 8
.LC82:
	.string	"PACKET_get_length_prefixed_1(&pkt, &subpkt)"
.LC83:
	.string	"PACKET_get_net_2(&subpkt, &i)"
	.align 8
.LC84:
	.string	"PACKET_get_length_prefixed_1(&short_pkt, &subpkt)"
.LC85:
	.string	"PACKET_remaining(&short_pkt)"
	.text
	.type	test_PACKET_get_length_prefixed_1, @function
test_PACKET_get_length_prefixed_1:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	$16, -8(%rbp)
	leaq	-336(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movb	%al, -272(%rbp)
	movl	$1, -276(%rbp)
	jmp	.L206
.L207:
	movl	-276(%rbp), %eax
	movl	-276(%rbp), %edx
	addl	%eax, %eax
	movl	%edx, %edx
	movb	%al, -272(%rbp,%rdx)
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
.L206:
	movl	-276(%rbp), %eax
	cmpl	$254, %eax
	jbe	.L207
	leaq	-272(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$360, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L208
	movq	-8(%rbp), %rdx
	leaq	-272(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$361, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L208
	leaq	-336(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC82(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$362, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L208
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$363, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L208
	leaq	-276(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$364, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L208
	movl	-276(%rbp), %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$516, %r9d
	movl	%esi, %r8d
	movl	$365, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L208
	leaq	-336(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$366, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L208
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$367, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L209
.L208:
	movl	$0, %eax
	jmp	.L211
.L209:
	movl	$1, %eax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	test_PACKET_get_length_prefixed_1, .-test_PACKET_get_length_prefixed_1
	.section	.rodata
	.align 8
.LC86:
	.string	"PACKET_buf_init(&pkt, buf1, 1024)"
	.align 8
.LC87:
	.string	"PACKET_get_length_prefixed_2(&pkt, &subpkt)"
.LC88:
	.string	"0x0608"
	.align 8
.LC89:
	.string	"PACKET_get_length_prefixed_2(&short_pkt, &subpkt)"
	.text
	.type	test_PACKET_get_length_prefixed_2, @function
test_PACKET_get_length_prefixed_2:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1104, %rsp
	movq	$516, -8(%rbp)
	leaq	-1104(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -1044(%rbp)
	jmp	.L213
.L214:
	movl	-1044(%rbp), %eax
	movl	%eax, %ecx
	movl	-1044(%rbp), %eax
	leal	-1(%rax), %edx
	leal	(%rcx,%rcx), %eax
	movl	%edx, %edx
	movb	%al, -1040(%rbp,%rdx)
	movl	-1044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1044(%rbp)
.L213:
	movl	-1044(%rbp), %eax
	cmpl	$1024, %eax
	jbe	.L214
	leaq	-1040(%rbp), %rcx
	leaq	-1072(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC86(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$384, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L215
	movq	-8(%rbp), %rdx
	leaq	-1040(%rbp), %rcx
	leaq	-1088(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$385, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L215
	leaq	-1104(%rbp), %rdx
	leaq	-1072(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$386, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L215
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$387, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L215
	leaq	-1044(%rbp), %rdx
	leaq	-1104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$388, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L215
	movl	-1044(%rbp), %esi
	leaq	.LC88(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1544, %r9d
	movl	%esi, %r8d
	movl	$389, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L215
	leaq	-1104(%rbp), %rdx
	leaq	-1088(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$390, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L215
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$391, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L216
.L215:
	movl	$0, %eax
	jmp	.L218
.L216:
	movl	$1, %eax
.L218:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	test_PACKET_get_length_prefixed_2, .-test_PACKET_get_length_prefixed_2
	.section	.rodata
	.align 8
.LC90:
	.string	"PACKET_get_length_prefixed_3(&pkt, &subpkt)"
	.align 8
.LC91:
	.string	"PACKET_get_length_prefixed_3(&short_pkt, &subpkt)"
	.text
	.type	test_PACKET_get_length_prefixed_3, @function
test_PACKET_get_length_prefixed_3:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1104, %rsp
	movq	$516, -8(%rbp)
	leaq	-1104(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -1044(%rbp)
	jmp	.L220
.L221:
	movl	-1044(%rbp), %eax
	movl	-1044(%rbp), %edx
	addl	%eax, %eax
	movl	%edx, %edx
	movb	%al, -1040(%rbp,%rdx)
	movl	-1044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1044(%rbp)
.L220:
	movl	-1044(%rbp), %eax
	cmpl	$1023, %eax
	jbe	.L221
	leaq	-1040(%rbp), %rcx
	leaq	-1072(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC86(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$408, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L222
	movq	-8(%rbp), %rdx
	leaq	-1040(%rbp), %rcx
	leaq	-1088(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$409, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L222
	leaq	-1104(%rbp), %rdx
	leaq	-1072(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_3
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC90(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$410, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L222
	leaq	-1104(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$411, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L222
	leaq	-1044(%rbp), %rdx
	leaq	-1104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$412, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L222
	movl	-1044(%rbp), %esi
	leaq	.LC88(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1544, %r9d
	movl	%esi, %r8d
	movl	$413, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L222
	leaq	-1104(%rbp), %rdx
	leaq	-1088(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_3
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC91(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$414, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L222
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$415, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L223
.L222:
	movl	$0, %eax
	jmp	.L225
.L223:
	movl	$1, %eax
.L225:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	test_PACKET_get_length_prefixed_3, .-test_PACKET_get_length_prefixed_3
	.section	.rodata
	.align 8
.LC92:
	.string	"PACKET_buf_init(&exact_pkt, buf1, len + 1)"
	.align 8
.LC93:
	.string	"PACKET_as_length_prefixed_1(&pkt, &subpkt)"
	.align 8
.LC94:
	.string	"PACKET_as_length_prefixed_1(&exact_pkt, &subpkt)"
.LC95:
	.string	"PACKET_remaining(&exact_pkt)"
	.text
	.type	test_PACKET_as_length_prefixed_1, @function
test_PACKET_as_length_prefixed_1:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	$16, -16(%rbp)
	leaq	-320(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-16(%rbp), %rax
	movb	%al, -272(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L227
.L228:
	movl	-4(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-4(%rbp), %eax
	movb	%dl, -272(%rbp,%rax)
	addl	$1, -4(%rbp)
.L227:
	cmpl	$254, -4(%rbp)
	jbe	.L228
	leaq	-272(%rbp), %rcx
	leaq	-288(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$433, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L229
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-272(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC92(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$434, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L229
	leaq	-320(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$435, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L229
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$255, %r9d
	movq	%rsi, %r8
	movl	$436, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L229
	leaq	-320(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$437, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L229
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$438, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L229
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$439, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L230
.L229:
	movl	$0, %eax
	jmp	.L232
.L230:
	movl	$1, %eax
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	test_PACKET_as_length_prefixed_1, .-test_PACKET_as_length_prefixed_1
	.section	.rodata
	.align 8
.LC96:
	.string	"PACKET_buf_init(&pkt, buf, 1024)"
	.align 8
.LC97:
	.string	"PACKET_buf_init(&exact_pkt, buf, len + 2)"
	.align 8
.LC98:
	.string	"PACKET_as_length_prefixed_2(&pkt, &subpkt)"
.LC99:
	.string	"1024"
	.align 8
.LC100:
	.string	"PACKET_as_length_prefixed_2(&exact_pkt, &subpkt)"
	.text
	.type	test_PACKET_as_length_prefixed_2, @function
test_PACKET_as_length_prefixed_2:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1088, %rsp
	movq	$516, -16(%rbp)
	leaq	-1088(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -4(%rbp)
	jmp	.L234
.L235:
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	leal	(%rcx,%rcx), %eax
	movl	%edx, %edx
	movb	%al, -1040(%rbp,%rdx)
	addl	$1, -4(%rbp)
.L234:
	cmpl	$1024, -4(%rbp)
	jbe	.L235
	leaq	-1040(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC96(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$456, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L236
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	leaq	-1040(%rbp), %rcx
	leaq	-1072(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$457, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L236
	leaq	-1088(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC98(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$458, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L236
	leaq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC99(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1024, %r9d
	movq	%rsi, %r8
	movl	$459, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L236
	leaq	-1088(%rbp), %rdx
	leaq	-1072(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC100(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$460, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L236
	leaq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$461, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L236
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$462, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L237
.L236:
	movl	$0, %eax
	jmp	.L239
.L237:
	movl	$1, %eax
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	test_PACKET_as_length_prefixed_2, .-test_PACKET_as_length_prefixed_2
	.section	.rodata
	.align 8
.LC101:
	.string	"PACKET_buf_init(&pkt, cases[i].buf, sizeof(cases[i].buf))"
	.align 8
.LC102:
	.string	"PACKET_get_quic_vlint(&pkt, &v)"
.LC103:
	.string	"cases[i].value"
.LC104:
	.string	"v"
	.align 8
.LC105:
	.string	"sizeof(cases[i].buf) - cases[i].expected_read_count"
	.text
	.type	test_PACKET_get_quic_vlint, @function
test_PACKET_get_quic_vlint:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	$0, -24(%rbp)
	jmp	.L241
.L245:
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	$55, -56(%rbp)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	cases.1(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC101(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$509, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L242
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$510, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L242
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+cases.1(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC103(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$511, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L242
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+cases.1(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$16, %edx
	movq	%rdx, %rbx
	subq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC105(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$512, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L243
.L242:
	movl	$0, %eax
	jmp	.L246
.L243:
	addq	$1, -24(%rbp)
.L241:
	cmpq	$19, -24(%rbp)
	jbe	.L245
	movl	$1, %eax
.L246:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	test_PACKET_get_quic_vlint, .-test_PACKET_get_quic_vlint
	.section	.rodata
	.align 8
.LC106:
	.string	"PACKET_buf_init(&pkt, cases[i].buf, cases[i].fail ? sizeof(cases[i].buf) : cases[i].enclen + cases[i].len)"
.LC107:
	.string	"!cases[i].fail"
	.align 8
.LC108:
	.string	"PACKET_get_quic_length_prefixed(&pkt, &subpkt)"
.LC109:
	.string	"cases[i].buf"
.LC110:
	.string	"pkt.curr"
	.align 8
.LC111:
	.string	"cases[i].buf + cases[i].enclen"
.LC112:
	.string	"subpkt.curr"
.LC113:
	.string	"cases[i].len"
.LC114:
	.string	"subpkt.remaining"
	.text
	.type	test_PACKET_get_quic_length_prefixed, @function
test_PACKET_get_quic_length_prefixed:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L248
.L258:
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	32+cases.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L249
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+cases.0(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	24+cases.0(%rip), %rax
	movq	(%rdx,%rax), %rax
	addq	%rax, %rcx
	jmp	.L250
.L249:
	movl	$16, %ecx
.L250:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	cases.0(%rip), %rdx
	leaq	(%rax,%rdx), %rsi
	leaq	-48(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC106(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$549, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L251
	movl	$0, %eax
	jmp	.L259
.L251:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	32+cases.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_length_prefixed
	movl	%eax, %esi
	leaq	.LC107(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$555, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L253
	movl	$0, %eax
	jmp	.L259
.L253:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	32+cases.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L254
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	cases.0(%rip), %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC109(%rip), %rcx
	leaq	.LC110(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$559, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L260
	movl	$0, %eax
	jmp	.L259
.L254:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	cases.0(%rip), %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+cases.0(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-64(%rbp), %rsi
	leaq	.LC111(%rip), %rcx
	leaq	.LC112(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$564, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L257
	movl	$0, %eax
	jmp	.L259
.L257:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	24+cases.0(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC113(%rip), %rcx
	leaq	.LC114(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$567, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L256
	movl	$0, %eax
	jmp	.L259
.L260:
	nop
.L256:
	addq	$1, -24(%rbp)
.L248:
	cmpq	$7, -24(%rbp)
	jbe	.L258
	movl	$1, %eax
.L259:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	test_PACKET_get_quic_length_prefixed, .-test_PACKET_get_quic_length_prefixed
	.section	.rodata
.LC115:
	.string	"test_PACKET_buf_init"
.LC116:
	.string	"test_PACKET_null_init"
.LC117:
	.string	"test_PACKET_remaining"
.LC118:
	.string	"test_PACKET_end"
.LC119:
	.string	"test_PACKET_equal"
.LC120:
	.string	"test_PACKET_get_1"
.LC121:
	.string	"test_PACKET_get_4"
.LC122:
	.string	"test_PACKET_get_net_2"
.LC123:
	.string	"test_PACKET_get_net_3"
.LC124:
	.string	"test_PACKET_get_net_4"
.LC125:
	.string	"test_PACKET_get_sub_packet"
.LC126:
	.string	"test_PACKET_get_bytes"
.LC127:
	.string	"test_PACKET_copy_bytes"
.LC128:
	.string	"test_PACKET_copy_all"
.LC129:
	.string	"test_PACKET_memdup"
.LC130:
	.string	"test_PACKET_strndup"
	.align 8
.LC131:
	.string	"test_PACKET_contains_zero_byte"
.LC132:
	.string	"test_PACKET_forward"
	.align 8
.LC133:
	.string	"test_PACKET_get_length_prefixed_1"
	.align 8
.LC134:
	.string	"test_PACKET_get_length_prefixed_2"
	.align 8
.LC135:
	.string	"test_PACKET_get_length_prefixed_3"
	.align 8
.LC136:
	.string	"test_PACKET_as_length_prefixed_1"
	.align 8
.LC137:
	.string	"test_PACKET_as_length_prefixed_2"
.LC138:
	.string	"test_PACKET_get_quic_vlint"
	.align 8
.LC139:
	.string	"test_PACKET_get_quic_length_prefixed"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	jmp	.L262
.L263:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	addl	%edx, %edx
	movl	%eax, %ecx
	leaq	smbuf(%rip), %rax
	movb	%dl, (%rcx,%rax)
	addl	$1, -4(%rbp)
.L262:
	cmpl	$255, -4(%rbp)
	jbe	.L263
	leaq	test_PACKET_buf_init(%rip), %rdx
	leaq	.LC115(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_null_init(%rip), %rdx
	leaq	.LC116(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_remaining(%rip), %rdx
	leaq	.LC117(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_end(%rip), %rdx
	leaq	.LC118(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_equal(%rip), %rdx
	leaq	.LC119(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_1(%rip), %rdx
	leaq	.LC120(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_4(%rip), %rdx
	leaq	.LC121(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_net_2(%rip), %rdx
	leaq	.LC122(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_net_3(%rip), %rdx
	leaq	.LC123(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_net_4(%rip), %rdx
	leaq	.LC124(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_sub_packet(%rip), %rdx
	leaq	.LC125(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_bytes(%rip), %rdx
	leaq	.LC126(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_copy_bytes(%rip), %rdx
	leaq	.LC127(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_copy_all(%rip), %rdx
	leaq	.LC128(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_memdup(%rip), %rdx
	leaq	.LC129(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_strndup(%rip), %rdx
	leaq	.LC130(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_contains_zero_byte(%rip), %rdx
	leaq	.LC131(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_forward(%rip), %rdx
	leaq	.LC132(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_length_prefixed_1(%rip), %rdx
	leaq	.LC133(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_length_prefixed_2(%rip), %rdx
	leaq	.LC134(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_length_prefixed_3(%rip), %rdx
	leaq	.LC135(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_as_length_prefixed_1(%rip), %rdx
	leaq	.LC136(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_as_length_prefixed_2(%rip), %rdx
	leaq	.LC137(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_quic_vlint(%rip), %rdx
	leaq	.LC138(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_PACKET_get_quic_length_prefixed(%rip), %rdx
	leaq	.LC139(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 32
	.type	cases.1, @object
	.size	cases.1, 640
cases.1:
	.zero	2
	.zero	14
	.quad	1
	.quad	0
	.string	"\001"
	.zero	14
	.quad	1
	.quad	1
	.string	">"
	.zero	14
	.quad	1
	.quad	62
	.string	"?"
	.zero	14
	.quad	1
	.quad	63
	.string	"@"
	.string	""
	.zero	13
	.quad	2
	.quad	0
	.base64	"QAEA"
	.zero	13
	.quad	2
	.quad	1
	.base64	"QAIA"
	.zero	13
	.quad	2
	.quad	2
	.base64	"QP8A"
	.zero	13
	.quad	2
	.quad	255
	.string	"A"
	.string	""
	.zero	13
	.quad	2
	.quad	256
	.base64	"f/4A"
	.zero	13
	.quad	2
	.quad	16382
	.base64	"f/8A"
	.zero	13
	.quad	2
	.quad	16383
	.base64	"gAAAAAA="
	.zero	11
	.quad	4
	.quad	0
	.base64	"gAAAAQA="
	.zero	11
	.quad	4
	.quad	1
	.base64	"gAABAgA="
	.zero	11
	.quad	4
	.quad	258
	.base64	"gBhJZQA="
	.zero	11
	.quad	4
	.quad	1591653
	.base64	"vhhJZQA="
	.zero	11
	.quad	4
	.quad	1041779045
	.base64	"v////wA="
	.zero	11
	.quad	4
	.quad	1073741823
	.base64	"wAAAAAAAAAAA"
	.zero	7
	.quad	8
	.quad	0
	.base64	"wAAAAAAAAQIA"
	.zero	7
	.quad	8
	.quad	258
	.base64	"/R9Zjcn4cYoA"
	.zero	7
	.quad	8
	.quad	4404337426105397642
	.align 32
	.type	cases.0, @object
	.size	cases.0, 320
cases.0:
	.zero	2
	.zero	14
	.quad	1
	.quad	0
	.long	0
	.zero	4
	.string	"\001"
	.zero	14
	.quad	1
	.quad	1
	.long	0
	.zero	4
	.string	"\002"
	.zero	14
	.quad	1
	.quad	2
	.long	0
	.zero	4
	.string	"\003"
	.zero	14
	.quad	1
	.quad	3
	.long	0
	.zero	4
	.string	"\004"
	.zero	14
	.quad	1
	.quad	4
	.long	0
	.zero	4
	.string	"\005"
	.zero	14
	.quad	1
	.quad	5
	.long	0
	.zero	4
	.string	"\020"
	.zero	14
	.quad	1
	.quad	0
	.long	1
	.zero	4
	.string	"?"
	.zero	14
	.quad	1
	.quad	0
	.long	1
	.zero	4
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
