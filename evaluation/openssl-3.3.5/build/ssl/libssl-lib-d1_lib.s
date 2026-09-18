	.file	"d1_lib.c"
	.text
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
	jns	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	PACKET_buf_init, .-PACKET_buf_init
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
	jnb	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
.L11:
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
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L14:
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
	ja	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
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
.L17:
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
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L20:
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
	ja	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
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
.L23:
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
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L26:
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
	je	.L28
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L28:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	PACKET_get_net_3_len, .-PACKET_get_net_3_len
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
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L32:
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
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L35:
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
	jnb	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L38:
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
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L41:
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
	jnb	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L44:
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
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	PACKET_copy_bytes, .-PACKET_copy_bytes
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
	jnb	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L50:
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
	je	.L52
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L53
.L52:
	movl	$0, %eax
	jmp	.L55
.L53:
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
.L55:
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
	je	.L57
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L58
.L57:
	movl	$0, %eax
	jmp	.L60
.L58:
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
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
	.type	safe_add_time, @function
safe_add_time:
.LFB568:
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
	jnc	.L62
	movl	$1, %ecx
.L62:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L64
	movq	-8(%rbp), %rax
	jmp	.L66
.L64:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L66:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	safe_add_time, .-safe_add_time
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
	jnb	.L68
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L68:
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
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB580:
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
.LFE580:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_to_timeval, @function
ossl_time_to_timeval:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	leaq	-20(%rbp), %rdx
	movl	$999, %esi
	movq	%rax, %rdi
	call	safe_add_time
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L77
	call	ossl_time_infinite
	movq	%rax, -40(%rbp)
.L77:
	movq	-40(%rbp), %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	imulq	$1000000000, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	ossl_time_to_timeval, .-ossl_time_to_timeval
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
	jnb	.L80
	movl	$1, %eax
	jmp	.L81
.L80:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L82
	movl	$-1, %eax
	jmp	.L81
.L82:
	movl	$0, %eax
.L81:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_zero, @function
ossl_time_is_zero:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_zero
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	ossl_time_is_zero, .-ossl_time_is_zero
	.type	ossl_time_add, @function
ossl_time_add:
.LFB588:
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
	je	.L86
	call	ossl_time_infinite
	jmp	.L88
.L86:
	movq	-8(%rbp), %rax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	ossl_time_add, .-ossl_time_add
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
	je	.L90
	call	ossl_time_zero
	jmp	.L92
.L90:
	movq	-8(%rbp), %rax
.L92:
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
	.align 16
	.type	g_probable_mtu, @object
	.size	g_probable_mtu, 24
g_probable_mtu:
	.quad	1500
	.quad	512
	.quad	256
	.globl	DTLSv1_enc_data
.LC0:
	.string	"client finished"
.LC1:
	.string	"server finished"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	DTLSv1_enc_data, @object
	.size	DTLSv1_enc_data, 112
DTLSv1_enc_data:
	.quad	tls1_setup_key_block
	.quad	tls1_generate_master_secret
	.quad	tls1_change_cipher_state
	.quad	tls1_final_finish_mac
	.quad	.LC0
	.quad	15
	.quad	.LC1
	.quad	15
	.quad	tls1_alert_code
	.quad	tls1_export_keying_material
	.long	9
	.zero	4
	.quad	dtls1_set_handshake_header
	.quad	dtls1_close_construct_packet
	.quad	dtls1_handshake_write
	.globl	DTLSv1_2_enc_data
	.align 32
	.type	DTLSv1_2_enc_data, @object
	.size	DTLSv1_2_enc_data, 112
DTLSv1_2_enc_data:
	.quad	tls1_setup_key_block
	.quad	tls1_generate_master_secret
	.quad	tls1_change_cipher_state
	.quad	tls1_final_finish_mac
	.quad	.LC0
	.quad	15
	.quad	.LC1
	.quad	15
	.quad	tls1_alert_code
	.quad	tls1_export_keying_material
	.long	31
	.zero	4
	.quad	dtls1_set_handshake_header
	.quad	dtls1_close_construct_packet
	.quad	dtls1_handshake_write
	.text
	.globl	dtls1_default_timeout
	.type	dtls1_default_timeout, @function
dtls1_default_timeout:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movabsq	$7200000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	dtls1_default_timeout, .-dtls1_default_timeout
	.section	.rodata
.LC2:
	.string	"../ssl/d1_lib.c"
	.text
	.globl	dtls1_new
	.type	dtls1_new, @function
dtls1_new:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L108
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L109
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L110
.L109:
	movq	$0, -8(%rbp)
	jmp	.L110
.L108:
	movq	$0, -8(%rbp)
.L110:
	cmpq	$0, -8(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L112
.L111:
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	DTLS_RECORD_LAYER_new@PLT
	testl	%eax, %eax
	jne	.L113
	movl	$0, %eax
	jmp	.L112
.L113:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_new@PLT
	testl	%eax, %eax
	jne	.L114
	movl	$0, %eax
	jmp	.L112
.L114:
	leaq	.LC2(%rip), %rax
	movl	$77, %edx
	movq	%rax, %rsi
	movl	$472, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L115
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_free@PLT
	movl	$0, %eax
	jmp	.L112
.L115:
	call	pqueue_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 280(%rdx)
	call	pqueue_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 288(%rdx)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L116
	movq	-16(%rbp), %rax
	movq	$255, 256(%rax)
.L116:
	movq	-16(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	jne	.L118
.L117:
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_free@PLT
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$95, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_free@PLT
	movl	$0, %eax
	jmp	.L112
.L118:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 1144(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L119
	movl	$0, %eax
	jmp	.L112
.L119:
	movl	$1, %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	dtls1_new, .-dtls1_new
	.type	dtls1_clear_queues, @function
dtls1_clear_queues:
.LFB731:
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
	call	dtls1_clear_received_buffer@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_clear_sent_buffer@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	dtls1_clear_queues, .-dtls1_clear_queues
	.globl	dtls1_clear_received_buffer
	.type	dtls1_clear_received_buffer, @function
dtls1_clear_received_buffer:
.LFB732:
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
	jmp	.L122
.L123:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_hm_fragment_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
.L122:
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_pop@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L123
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	dtls1_clear_received_buffer, .-dtls1_clear_received_buffer
	.globl	dtls1_clear_sent_buffer
	.type	dtls1_clear_sent_buffer, @function
dtls1_clear_sent_buffer:
.LFB733:
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
	jmp	.L125
.L127:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L126
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-24(%rbp), %rax
	movq	3056(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, %rdx
	je	.L126
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L126:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_hm_fragment_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pitem_free@PLT
.L125:
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_pop@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L127
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	dtls1_clear_sent_buffer, .-dtls1_clear_sent_buffer
	.globl	dtls1_free
	.type	dtls1_free, @function
dtls1_free:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L129
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L130
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L131
.L130:
	movq	$0, -8(%rbp)
	jmp	.L131
.L129:
	movq	$0, -8(%rbp)
.L131:
	cmpq	$0, -8(%rbp)
	je	.L135
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_clear_queues
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_free@PLT
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	pqueue_free@PLT
.L134:
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	DTLS_RECORD_LAYER_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_free@PLT
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$167, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 1144(%rax)
	jmp	.L128
.L135:
	nop
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	dtls1_free, .-dtls1_free
	.globl	dtls1_clear
	.type	dtls1_clear, @function
dtls1_clear:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L137
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L138
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L139
.L138:
	movq	$0, -8(%rbp)
	jmp	.L139
.L137:
	movq	$0, -8(%rbp)
.L139:
	cmpq	$0, -8(%rbp)
	jne	.L140
	movl	$0, %eax
	jmp	.L141
.L140:
	movq	-8(%rbp), %rax
	addq	$3008, %rax
	movq	%rax, %rdi
	call	DTLS_RECORD_LAYER_clear@PLT
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	testq	%rax, %rax
	je	.L142
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	464(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	280(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	288(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	304(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	296(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_clear_queues
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movl	$472, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 464(%rax)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L143
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	$255, 256(%rax)
.L143:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	andl	$4096, %eax
	testq	%rax, %rax
	je	.L144
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 304(%rax)
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 296(%rax)
.L144:
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 280(%rax)
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 288(%rax)
.L142:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_clear@PLT
	testl	%eax, %eax
	jne	.L145
	movl	$0, %eax
	jmp	.L141
.L145:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$131071, %eax
	jne	.L146
	movq	-8(%rbp), %rax
	movl	$65277, 72(%rax)
	jmp	.L147
.L146:
	movq	-8(%rbp), %rax
	movq	2360(%rax), %rax
	andl	$32768, %eax
	testq	%rax, %rax
	je	.L148
	movq	-8(%rbp), %rax
	movl	$256, 72(%rax)
	movq	-8(%rbp), %rax
	movl	72(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 2396(%rax)
	jmp	.L147
.L148:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 72(%rax)
.L147:
	movl	$1, %eax
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	dtls1_clear, .-dtls1_clear
	.globl	dtls1_ctrl
	.type	dtls1_ctrl, @function
dtls1_ctrl:
.LFB736:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L150
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L151
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L152
.L151:
	movq	$0, -16(%rbp)
	jmp	.L152
.L150:
	movq	$0, -16(%rbp)
.L152:
	cmpq	$0, -16(%rbp)
	jne	.L153
	movl	$0, %eax
	jmp	.L164
.L153:
	cmpl	$121, -44(%rbp)
	je	.L155
	cmpl	$121, -44(%rbp)
	jg	.L156
	cmpl	$120, -44(%rbp)
	je	.L157
	cmpl	$120, -44(%rbp)
	jg	.L156
	cmpl	$74, -44(%rbp)
	je	.L158
	cmpl	$74, -44(%rbp)
	jg	.L156
	cmpl	$17, -44(%rbp)
	je	.L159
	cmpl	$73, -44(%rbp)
	jne	.L156
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_get_timeout@PLT
	testl	%eax, %eax
	je	.L165
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_to_timeval
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	$1, -4(%rbp)
	jmp	.L165
.L158:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_handle_timeout@PLT
	movl	%eax, -4(%rbp)
	jmp	.L161
.L157:
	call	dtls1_link_min_mtu
	cmpq	%rax, -56(%rbp)
	jge	.L162
	movl	$0, %eax
	jmp	.L164
.L162:
	movq	-16(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 296(%rax)
	movl	$1, %eax
	jmp	.L164
.L155:
	call	dtls1_link_min_mtu
	jmp	.L164
.L159:
	call	dtls1_link_min_mtu
	subq	$48, %rax
	cmpq	%rax, -56(%rbp)
	jge	.L163
	movl	$0, %eax
	jmp	.L164
.L163:
	movq	-16(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 304(%rax)
	movq	-56(%rbp), %rax
	jmp	.L164
.L156:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl3_ctrl@PLT
	movl	%eax, -4(%rbp)
	jmp	.L161
.L165:
	nop
.L161:
	movl	-4(%rbp), %eax
	cltq
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	dtls1_ctrl, .-dtls1_ctrl
	.type	dtls1_bio_set_next_timeout, @function
dtls1_bio_set_next_timeout:
.LFB737:
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
	movq	448(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_to_timeval
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$45, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	dtls1_bio_set_next_timeout, .-dtls1_bio_set_next_timeout
	.globl	dtls1_start_timer
	.type	dtls1_start_timer, @function
dtls1_start_timer:
.LFB738:
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
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	448(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	je	.L168
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	464(%rax), %rax
	testq	%rax, %rax
	je	.L169
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	464(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rbx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, 456(%rbx)
	jmp	.L168
.L169:
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movl	$1000000, 456(%rax)
.L168:
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movl	456(%rax), %eax
	movl	%eax, %eax
	imulq	$1000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, -32(%rbp)
	call	ossl_time_now@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_add
	movq	%rax, 448(%rbx)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	dtls1_bio_set_next_timeout
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	dtls1_start_timer, .-dtls1_start_timer
	.globl	dtls1_get_timeout
	.type	dtls1_get_timeout, @function
dtls1_get_timeout:
.LFB739:
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
	movq	1144(%rax), %rax
	movq	448(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	je	.L171
	movl	$0, %eax
	jmp	.L174
.L171:
	call	ossl_time_now@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	448(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$15000000, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	jg	.L173
	call	ossl_time_zero
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L173:
	movl	$1, %eax
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	dtls1_get_timeout, .-dtls1_get_timeout
	.globl	dtls1_is_timer_expired
	.type	dtls1_is_timer_expired, @function
dtls1_is_timer_expired:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_get_timeout@PLT
	testl	%eax, %eax
	jne	.L176
	movl	$0, %eax
	jmp	.L179
.L176:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	jne	.L178
	movl	$0, %eax
	jmp	.L179
.L178:
	movl	$1, %eax
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	dtls1_is_timer_expired, .-dtls1_is_timer_expired
	.type	dtls1_double_timeout, @function
dtls1_double_timeout:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movl	456(%rax), %edx
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	addl	%edx, %edx
	movl	%edx, 456(%rax)
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movl	456(%rax), %eax
	cmpl	$60000000, %eax
	jbe	.L182
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movl	$60000000, 456(%rax)
.L182:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	dtls1_double_timeout, .-dtls1_double_timeout
	.globl	dtls1_stop_timer
	.type	dtls1_stop_timer, @function
dtls1_stop_timer:
.LFB742:
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
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movl	$0, 440(%rax)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rbx
	call	ossl_time_zero
	movq	%rax, 448(%rbx)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movl	$1000000, 456(%rax)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls1_bio_set_next_timeout
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_clear_sent_buffer@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	dtls1_stop_timer, .-dtls1_stop_timer
	.globl	dtls1_check_timeout_num
	.type	dtls1_check_timeout_num, @function
dtls1_check_timeout_num:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movl	440(%rax), %edx
	addl	$1, %edx
	movl	%edx, 440(%rax)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movl	440(%rax), %eax
	cmpl	$2, %eax
	jbe	.L185
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	andl	$4096, %eax
	testq	%rax, %rax
	jne	.L185
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movq	304(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L185
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 304(%rax)
.L185:
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movl	440(%rax), %eax
	cmpl	$12, %eax
	jbe	.L186
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$383, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$312, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$-1, %eax
	jmp	.L187
.L186:
	movl	$0, %eax
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	dtls1_check_timeout_num, .-dtls1_check_timeout_num
	.globl	dtls1_handle_timeout
	.type	dtls1_handle_timeout, @function
dtls1_handle_timeout:
.LFB744:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_is_timer_expired@PLT
	testl	%eax, %eax
	jne	.L189
	movl	$0, %eax
	jmp	.L190
.L189:
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movq	464(%rax), %rax
	testq	%rax, %rax
	je	.L191
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movq	464(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	1144(%rax), %rax
	movl	456(%rax), %edx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	1144(%rsi), %rbx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, 456(%rbx)
	jmp	.L192
.L191:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_double_timeout
.L192:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_check_timeout_num@PLT
	testl	%eax, %eax
	jns	.L193
	movl	$-1, %eax
	jmp	.L190
.L193:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_start_timer@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_retransmit_buffered_messages@PLT
.L190:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	dtls1_handle_timeout, .-dtls1_handle_timeout
	.globl	DTLSv1_listen
	.type	DTLSv1_listen, @function
DTLSv1_listen:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$560, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -568(%rbp)
	je	.L195
	movq	-568(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L196
	movq	-568(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L197
.L196:
	movq	$0, -40(%rbp)
	jmp	.L197
.L195:
	movq	$0, -40(%rbp)
.L197:
	cmpq	$0, -40(%rbp)
	jne	.L198
	movl	$-1, %eax
	jmp	.L258
.L198:
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L200
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_accept_state@PLT
.L200:
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_clear@PLT
	testl	%eax, %eax
	jne	.L201
	movl	$-1, %eax
	jmp	.L258
.L201:
	call	ERR_clear_error@PLT
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, -64(%rbp)
	movq	-568(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L202
	cmpq	$0, -72(%rbp)
	jne	.L203
.L202:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$449, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L258
.L203:
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	andl	$65280, %eax
	cmpl	$65024, %eax
	je	.L204
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$461, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$259, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L258
.L204:
	leaq	.LC2(%rip), %rax
	movl	$465, %edx
	movq	%rax, %rsi
	movl	$16397, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L205
	movl	$-1, %eax
	jmp	.L258
.L205:
	leaq	.LC2(%rip), %rax
	movl	$468, %edx
	movq	%rax, %rsi
	movl	$16397, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L206
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$470, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$-1, %eax
	jmp	.L258
.L206:
	call	__errno_location@PLT
	movl	$0, (%rax)
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$16397, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jg	.L207
	movq	-64(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L259
	movl	$-1, -24(%rbp)
	jmp	.L209
.L207:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rcx
	leaq	-432(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L210
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$490, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -24(%rbp)
	jmp	.L209
.L210:
	cmpl	$12, -84(%rbp)
	jg	.L211
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$506, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$298, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L211:
	leaq	-388(%rbp), %rdx
	leaq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L212
	leaq	-392(%rbp), %rdx
	leaq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L212
	leaq	-396(%rbp), %rdx
	leaq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L213
.L212:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$514, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L213:
	movq	-40(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L214
	movq	-40(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-40(%rbp), %rax
	movq	1160(%rax), %rdx
	movl	-392(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movl	-396(%rbp), %eax
	orl	%ecx, %eax
	movl	%eax, %esi
	movq	-568(%rbp), %rcx
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rcx, %r9
	movl	$13, %r8d
	movq	%rax, %rcx
	movl	$256, %edx
	movl	$0, %edi
	call	*%r10
	addq	$16, %rsp
.L214:
	movl	-388(%rbp), %eax
	cmpl	$22, %eax
	je	.L215
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$523, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$244, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L215:
	movl	-392(%rbp), %eax
	cmpl	$254, %eax
	je	.L216
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$532, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L216:
	leaq	-360(%rbp), %rcx
	leaq	-432(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	je	.L217
	leaq	-448(%rbp), %rdx
	leaq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L218
.L217:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$539, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L218:
	movzbl	-360(%rbp), %eax
	testb	%al, %al
	jne	.L219
	movzbl	-359(%rbp), %eax
	testb	%al, %al
	je	.L220
.L219:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$549, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$244, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L220:
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -96(%rbp)
	leaq	-404(%rbp), %rdx
	leaq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L221
	leaq	-384(%rbp), %rdx
	leaq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3_len
	testl	%eax, %eax
	je	.L221
	leaq	-400(%rbp), %rdx
	leaq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L221
	leaq	-368(%rbp), %rdx
	leaq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3_len
	testl	%eax, %eax
	je	.L221
	leaq	-376(%rbp), %rdx
	leaq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3_len
	testl	%eax, %eax
	je	.L221
	movq	-376(%rbp), %rdx
	leaq	-464(%rbp), %rcx
	leaq	-448(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_sub_packet
	testl	%eax, %eax
	je	.L221
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L222
.L221:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$564, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L222:
	movl	-404(%rbp), %eax
	cmpl	$1, %eax
	je	.L223
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$569, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$244, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L223:
	movl	-400(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L224
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$575, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$402, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L224:
	movq	-368(%rbp), %rax
	testq	%rax, %rax
	jne	.L225
	movq	-376(%rbp), %rax
	movq	-384(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L226
.L225:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$588, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$401, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L226:
	movq	-40(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L227
	movq	-40(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-40(%rbp), %rax
	movq	1160(%rax), %rcx
	movq	-376(%rbp), %rax
	leaq	12(%rax), %rdi
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	movq	-568(%rbp), %rsi
	movq	-96(%rbp), %rdx
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
.L227:
	leaq	-408(%rbp), %rdx
	leaq	-464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	jne	.L228
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$598, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L228:
	movl	-408(%rbp), %eax
	cmpl	$256, %eax
	je	.L229
	movl	-408(%rbp), %eax
	jmp	.L230
.L229:
	movl	$65280, %eax
.L230:
	movq	-568(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	(%rdx), %edx
	cmpl	$256, %edx
	je	.L231
	movq	-568(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	(%rdx), %edx
	jmp	.L232
.L231:
	movl	$65280, %edx
.L232:
	cmpl	%eax, %edx
	jnb	.L233
	movq	-568(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$131071, %eax
	je	.L233
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$607, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$267, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L233:
	leaq	-464(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L234
	leaq	-480(%rbp), %rdx
	leaq	-464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L234
	leaq	-496(%rbp), %rdx
	leaq	-464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L235
.L234:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$618, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L235:
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L236
	movl	$1, -20(%rbp)
	jmp	.L237
.L236:
	movq	-568(%rbp), %rax
	movq	8(%rax), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.L238
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$633, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$403, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -24(%rbp)
	jmp	.L209
.L238:
	movq	-568(%rbp), %rax
	movq	8(%rax), %rax
	movq	216(%rax), %rbx
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %r12d
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	movq	-568(%rbp), %rax
	movl	%r12d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	testl	%eax, %eax
	jne	.L239
	movl	$1, -20(%rbp)
	jmp	.L237
.L239:
	movl	$2, -20(%rbp)
.L237:
	cmpl	$1, -20(%rbp)
	jne	.L240
	movq	-568(%rbp), %rax
	movq	8(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L241
	movq	-568(%rbp), %rax
	movq	8(%rax), %rax
	movq	208(%rax), %r8
	leaq	-412(%rbp), %rdx
	leaq	-352(%rbp), %rcx
	movq	-568(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L241
	movl	-412(%rbp), %eax
	cmpl	$255, %eax
	jbe	.L242
.L241:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$666, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$400, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -24(%rbp)
	jmp	.L209
.L242:
	movq	-568(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$131071, %eax
	je	.L244
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -44(%rbp)
	jmp	.L245
.L244:
	movl	$65279, -44(%rbp)
.L245:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_get_max_send_fragment@PLT
	addl	$13, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rsi
	leaq	-560(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-560(%rbp), %rax
	movl	$1, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L246
	movl	-44(%rbp), %ecx
	leaq	-560(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-360(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-560(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-560(%rbp), %rax
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-560(%rbp), %rax
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-560(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-560(%rbp), %rax
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-560(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L246
	movl	-412(%rbp), %eax
	movl	%eax, %edx
	leaq	-352(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dtls_raw_hello_verify_request@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-504(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L246
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	jne	.L247
.L246:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$730, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movl	$-1, -24(%rbp)
	jmp	.L209
.L247:
	movq	-80(%rbp), %rax
	leaq	22(%rax), %rcx
	movq	-80(%rbp), %rax
	addq	$14, %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	1152(%rax), %rax
	testq	%rax, %rax
	je	.L248
	movq	-40(%rbp), %rax
	movq	1152(%rax), %r10
	movq	-40(%rbp), %rax
	movq	1160(%rax), %rdx
	movq	-568(%rbp), %rcx
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rcx, %r9
	movl	$13, %r8d
	movq	%rax, %rcx
	movl	$256, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	*%r10
	addq	$16, %rsp
.L248:
	call	BIO_ADDR_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L249
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L209
.L249:
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$46, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jle	.L250
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L250:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	$0, -32(%rbp)
	movq	-504(%rbp), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	-504(%rbp), %rdx
	cmpl	%edx, %eax
	jge	.L251
	movq	-72(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L260
	movl	$-1, -24(%rbp)
	jmp	.L209
.L251:
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L240
	movq	-72(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L261
	movl	$-1, -24(%rbp)
	jmp	.L209
.L240:
	cmpl	$2, -20(%rbp)
	jne	.L206
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movw	$1, 272(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movw	$1, 268(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movw	$1, 270(%rax)
	movq	-40(%rbp), %rax
	movq	3040(%rax), %rax
	movq	176(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	3056(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-568(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	SSL_set_options@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_statem_set_hello_verify_done@PLT
	movq	-576(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$46, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L255
	movq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
.L255:
	movq	-40(%rbp), %rax
	movq	3064(%rax), %rax
	movl	-84(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	%eax, -84(%rbp)
	je	.L256
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$823, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -24(%rbp)
	jmp	.L209
.L256:
	movq	-40(%rbp), %rax
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
	movl	$0, %edx
	movl	$131071, %esi
	movq	%rax, %rdi
	call	ssl_set_new_record_layer@PLT
	addq	$96, %rsp
	testl	%eax, %eax
	jne	.L257
	movl	$-1, -24(%rbp)
	jmp	.L209
.L257:
	movl	$1, -24(%rbp)
	jmp	.L209
.L259:
	nop
	jmp	.L209
.L260:
	nop
	jmp	.L209
.L261:
	nop
.L209:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$846, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$847, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-24(%rbp), %eax
.L258:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	DTLSv1_listen, .-DTLSv1_listen
	.type	dtls1_handshake_write, @function
dtls1_handshake_write:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$22, %esi
	movq	%rax, %rdi
	call	dtls1_do_write@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	dtls1_handshake_write, .-dtls1_handshake_write
	.globl	dtls1_shutdown
	.type	dtls1_shutdown, @function
dtls1_shutdown:
.LFB747:
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
	call	ssl3_shutdown@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	dtls1_shutdown, .-dtls1_shutdown
	.globl	dtls1_query_mtu
	.type	dtls1_query_mtu, @function
dtls1_query_mtu:
.LFB748:
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
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	je	.L267
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	296(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$49, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	%rbx, %rdx
	subq	%rcx, %rdx
	movq	%rdx, 304(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	$0, 296(%rax)
.L267:
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	304(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_min_mtu@PLT
	cmpq	%rax, %rbx
	jnb	.L268
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_options@PLT
	andl	$4096, %eax
	testq	%rax, %rax
	jne	.L269
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	%rdx, 304(%rax)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	304(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_min_mtu@PLT
	cmpq	%rax, %rbx
	jnb	.L268
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_min_mtu@PLT
	movq	%rax, 304(%rbx)
	movq	-40(%rbp), %rax
	movq	1144(%rax), %rax
	movq	304(%rax), %rax
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movl	$0, %ecx
	movq	%rbx, %rdx
	movl	$42, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	jmp	.L268
.L269:
	movl	$0, %eax
	jmp	.L270
.L268:
	movl	$1, %eax
.L270:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	dtls1_query_mtu, .-dtls1_query_mtu
	.type	dtls1_link_min_mtu, @function
dtls1_link_min_mtu:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$256, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	dtls1_link_min_mtu, .-dtls1_link_min_mtu
	.globl	dtls1_min_mtu
	.type	dtls1_min_mtu, @function
dtls1_min_mtu:
.LFB750:
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
	movq	%rax, -24(%rbp)
	call	dtls1_link_min_mtu
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_wbio@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$49, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %edx
	movq	%rbx, %rax
	subq	%rdx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	dtls1_min_mtu, .-dtls1_min_mtu
	.globl	DTLS_get_data_mtu
	.type	DTLS_get_data_mtu, @function
DTLS_get_data_mtu:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_current_cipher@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L276
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L277
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L278
.L277:
	movq	$0, -16(%rbp)
	jmp	.L278
.L276:
	movq	$0, -16(%rbp)
.L278:
	cmpq	$0, -16(%rbp)
	jne	.L279
	movl	$0, %eax
	jmp	.L288
.L279:
	movq	-16(%rbp), %rax
	movq	1144(%rax), %rax
	movq	304(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L281
	movl	$0, %eax
	jmp	.L288
.L281:
	leaq	-56(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl_cipher_get_overhead@PLT
	testl	%eax, %eax
	jne	.L282
	movl	$0, %eax
	jmp	.L288
.L282:
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L283
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	jmp	.L284
.L283:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L284:
	movq	-56(%rbp), %rax
	addq	$13, %rax
	cmpq	-8(%rbp), %rax
	jb	.L285
	movl	$0, %eax
	jmp	.L288
.L285:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	leaq	-13(%rdx), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L286
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	subq	%rax, -8(%rbp)
.L286:
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L287
	movl	$0, %eax
	jmp	.L288
.L287:
	movq	-40(%rbp), %rax
	subq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L288:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	DTLS_get_data_mtu, .-DTLS_get_data_mtu
	.globl	DTLS_set_timer_cb
	.type	DTLS_set_timer_cb, @function
DTLS_set_timer_cb:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L290
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L291
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L292
.L291:
	movq	$0, -8(%rbp)
	jmp	.L292
.L290:
	movq	$0, -8(%rbp)
.L292:
	cmpq	$0, -8(%rbp)
	je	.L295
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 464(%rax)
	jmp	.L289
.L295:
	nop
.L289:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	DTLS_set_timer_cb, .-DTLS_set_timer_cb
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 24
__func__.1:
	.string	"dtls1_check_timeout_num"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"DTLSv1_listen"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
