	.file	"quic_wire_pkt.c"
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
	.type	PACKET_end, @function
PACKET_end:
.LFB501:
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
.LFE501:
	.size	PACKET_end, .-PACKET_end
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
	ja	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
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
.L10:
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
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L13:
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
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L16:
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
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L19:
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
	jnb	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L22:
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
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L25:
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
	call	memcpy@PLT
	movl	$1, %eax
.L28:
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
	jnb	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-16(%rbp), %rdx
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
.LFE532:
	.size	PACKET_forward, .-PACKET_forward
	.type	ossl_quic_vlint_encode_len, @function
ossl_quic_vlint_encode_len:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$63, -8(%rbp)
	ja	.L36
	movl	$1, %eax
	jmp	.L37
.L36:
	cmpq	$16383, -8(%rbp)
	ja	.L38
	movl	$2, %eax
	jmp	.L37
.L38:
	cmpq	$1073741823, -8(%rbp)
	ja	.L39
	movl	$4, %eax
	jmp	.L37
.L39:
	movabsq	$4611686018427387903, %rax
	cmpq	-8(%rbp), %rax
	jb	.L40
	movl	$8, %eax
	jmp	.L37
.L40:
	movl	$0, %eax
.L37:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	ossl_quic_vlint_encode_len, .-ossl_quic_vlint_encode_len
	.type	ossl_quic_vlint_decode_len, @function
ossl_quic_vlint_decode_len:
.LFB539:
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
.LFE539:
	.size	ossl_quic_vlint_decode_len, .-ossl_quic_vlint_decode_len
	.type	PACKET_get_quic_vlint, @function
PACKET_get_quic_vlint:
.LFB540:
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
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
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
	jnb	.L46
	movl	$0, %eax
	jmp	.L45
.L46:
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
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	PACKET_get_quic_vlint, .-PACKET_get_quic_vlint
	.type	ossl_quic_pkt_type_is_encrypted, @function
ossl_quic_pkt_type_is_encrypted:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$4, -4(%rbp)
	je	.L48
	cmpl	$6, -4(%rbp)
	jne	.L49
.L48:
	movl	$0, %eax
	jmp	.L50
.L49:
	movl	$1, %eax
.L50:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	ossl_quic_pkt_type_is_encrypted, .-ossl_quic_pkt_type_is_encrypted
	.type	ossl_quic_pkt_type_has_pn, @function
ossl_quic_pkt_type_has_pn:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_is_encrypted
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	ossl_quic_pkt_type_has_pn, .-ossl_quic_pkt_type_has_pn
	.type	ossl_quic_pkt_type_can_share_dgram, @function
ossl_quic_pkt_type_can_share_dgram:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_is_encrypted
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	ossl_quic_pkt_type_can_share_dgram, .-ossl_quic_pkt_type_can_share_dgram
	.type	ossl_quic_pkt_type_must_be_last, @function
ossl_quic_pkt_type_must_be_last:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_can_share_dgram
	testl	%eax, %eax
	je	.L56
	cmpl	$5, -4(%rbp)
	jne	.L57
.L56:
	movl	$1, %eax
	jmp	.L59
.L57:
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	ossl_quic_pkt_type_must_be_last, .-ossl_quic_pkt_type_must_be_last
	.section	.rodata
.LC0:
	.string	"AES-128-ECB"
.LC1:
	.string	"AES-256-ECB"
.LC2:
	.string	"ChaCha20"
.LC3:
	.string	"../ssl/quic/quic_wire_pkt.c"
	.text
	.globl	ossl_quic_hdr_protector_init
	.type	ossl_quic_hdr_protector_init, @function
ossl_quic_hdr_protector_init:
.LFB558:
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
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	$0, -8(%rbp)
	cmpl	$3, -44(%rbp)
	je	.L61
	cmpl	$3, -44(%rbp)
	ja	.L62
	cmpl	$1, -44(%rbp)
	je	.L63
	cmpl	$2, -44(%rbp)
	je	.L64
	jmp	.L62
.L63:
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L65
.L64:
	leaq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L65
.L61:
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L65
.L62:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524556, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L66
.L65:
	call	EVP_CIPHER_CTX_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L66
.L67:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	cltq
	cmpq	%rax, -64(%rbp)
	je	.L69
.L68:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L70
.L69:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L70
.L71:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 32(%rax)
	movl	$1, %eax
	jmp	.L66
.L70:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_hdr_protector_cleanup@PLT
	movl	$0, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	ossl_quic_hdr_protector_init, .-ossl_quic_hdr_protector_init
	.globl	ossl_quic_hdr_protector_cleanup
	.type	ossl_quic_hdr_protector_cleanup, @function
ossl_quic_hdr_protector_cleanup:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	ossl_quic_hdr_protector_cleanup, .-ossl_quic_hdr_protector_cleanup
	.type	hdr_generate_mask, @function
hdr_generate_mask:
.LFB560:
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
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$1, %eax
	je	.L74
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.L75
.L74:
	cmpq	$15, -56(%rbp)
	ja	.L76
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L76:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	je	.L78
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jne	.L79
.L78:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$94, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L79:
	movq	$0, -8(%rbp)
	jmp	.L80
.L81:
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	leaq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -8(%rbp)
.L80:
	cmpq	$4, -8(%rbp)
	jbe	.L81
	jmp	.L82
.L75:
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$3, %eax
	jne	.L83
	cmpq	$15, -56(%rbp)
	ja	.L84
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L84:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	je	.L85
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	zeroes.1(%rip), %rcx
	leaq	-12(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movl	$5, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	jne	.L82
.L85:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L83:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L82:
	movl	$1, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	hdr_generate_mask, .-hdr_generate_mask
	.globl	ossl_quic_hdr_protector_decrypt
	.type	ossl_quic_hdr_protector_decrypt, @function
ossl_quic_hdr_protector_decrypt:
.LFB561:
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
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_hdr_protector_decrypt_fields@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	ossl_quic_hdr_protector_decrypt, .-ossl_quic_hdr_protector_decrypt
	.globl	ossl_quic_hdr_protector_decrypt_fields
	.type	ossl_quic_hdr_protector_decrypt_fields, @function
ossl_quic_hdr_protector_decrypt_fields:
.LFB562:
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
	leaq	-7(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	hdr_generate_mask
	testl	%eax, %eax
	jne	.L90
	movl	$0, %eax
	jmp	.L96
.L90:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movzbl	-7(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L92
	movl	$15, %eax
	jmp	.L93
.L92:
	movl	$31, %eax
.L93:
	andl	%ecx, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$3, %eax
	addl	$1, %eax
	movb	%al, -2(%rbp)
	movb	$0, -1(%rbp)
	jmp	.L94
.L95:
	movzbl	-1(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	cltq
	movzbl	-7(%rbp,%rax), %ecx
	movzbl	-1(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addb	$1, -1(%rbp)
.L94:
	movzbl	-1(%rbp), %eax
	cmpb	-2(%rbp), %al
	jb	.L95
	movl	$1, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	ossl_quic_hdr_protector_decrypt_fields, .-ossl_quic_hdr_protector_decrypt_fields
	.globl	ossl_quic_hdr_protector_encrypt
	.type	ossl_quic_hdr_protector_encrypt, @function
ossl_quic_hdr_protector_encrypt:
.LFB563:
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
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_hdr_protector_encrypt_fields@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	ossl_quic_hdr_protector_encrypt, .-ossl_quic_hdr_protector_encrypt
	.globl	ossl_quic_hdr_protector_encrypt_fields
	.type	ossl_quic_hdr_protector_encrypt_fields, @function
ossl_quic_hdr_protector_encrypt_fields:
.LFB564:
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
	leaq	-7(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	hdr_generate_mask
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L106
.L100:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$3, %eax
	addl	$1, %eax
	movb	%al, -2(%rbp)
	movb	$0, -1(%rbp)
	jmp	.L102
.L103:
	movzbl	-1(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	cltq
	movzbl	-7(%rbp,%rax), %ecx
	movzbl	-1(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addb	$1, -1(%rbp)
.L102:
	movzbl	-1(%rbp), %eax
	cmpb	-2(%rbp), %al
	jb	.L103
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movzbl	-7(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L104
	movl	$15, %eax
	jmp	.L105
.L104:
	movl	$31, %eax
.L105:
	andl	%ecx, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
	movl	$1, %eax
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	ossl_quic_hdr_protector_encrypt_fields, .-ossl_quic_hdr_protector_encrypt_fields
	.globl	ossl_quic_wire_decode_pkt_hdr
	.type	ossl_quic_wire_decode_pkt_hdr, @function
ossl_quic_wire_decode_pkt_hdr:
.LFB565:
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
	movl	%ecx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -16(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L108
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-104(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-104(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-104(%rbp), %rax
	movq	$0, 24(%rax)
.L108:
	cmpq	$6, -16(%rbp)
	jbe	.L109
	leaq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L110
.L109:
	movl	$0, %eax
	jmp	.L158
.L110:
	movl	-84(%rbp), %eax
	andl	$1, %eax
	movq	-96(%rbp), %rdx
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %ecx
	movzbl	1(%rdx), %eax
	andl	$-65, %eax
	orl	%ecx, %eax
	movb	%al, 1(%rdx)
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$-16, %edx
	movb	%dl, 2(%rax)
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$-49, %edx
	movb	%dl, 2(%rax)
	movl	-24(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L112
	cmpq	$20, -80(%rbp)
	jbe	.L113
	movl	$0, %eax
	jmp	.L158
.L113:
	movl	-24(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L114
	cmpq	$20, -16(%rbp)
	ja	.L115
.L114:
	movl	$0, %eax
	jmp	.L158
.L115:
	movq	-96(%rbp), %rax
	movb	$5, (%rax)
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 1(%rax)
	movl	-24(%rbp), %eax
	andl	$32, %eax
	shrl	$5, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movq	-96(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	1(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 1(%rax)
	cmpl	$0, -84(%rbp)
	je	.L116
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 1(%rax)
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-61, %edx
	movb	%dl, 1(%rax)
	movq	-96(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$-49, %edx
	movb	%dl, 2(%rax)
	jmp	.L117
.L116:
	movl	-24(%rbp), %eax
	andl	$4, %eax
	shrl	$2, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movq	-96(%rbp), %rax
	andl	$1, %edx
	leal	(%rdx,%rdx), %ecx
	movzbl	1(%rax), %edx
	andl	$-3, %edx
	orl	%ecx, %edx
	movb	%dl, 1(%rax)
	movl	-24(%rbp), %eax
	andl	$3, %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	andl	$15, %edx
	leal	0(,%rdx,4), %ecx
	movzbl	1(%rax), %edx
	andl	$-61, %edx
	orl	%ecx, %edx
	movb	%dl, 1(%rax)
	movl	-24(%rbp), %eax
	shrl	$3, %eax
	andl	$3, %eax
	movq	-96(%rbp), %rdx
	andl	$3, %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movzbl	2(%rdx), %eax
	andl	$-49, %eax
	orl	%ecx, %eax
	movb	%al, 2(%rdx)
.L117:
	movq	-96(%rbp), %rax
	leaq	9(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L118
	movl	$0, %eax
	jmp	.L158
.L118:
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, 8(%rax)
	movq	-96(%rbp), %rax
	addq	$50, %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -8(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L119
	movq	-72(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L158
.L119:
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %edx
	movq	-96(%rbp), %rax
	leaq	50(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L158
.L120:
	movq	-96(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-96(%rbp), %rax
	movb	$0, 29(%rax)
	movq	-96(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-96(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	-96(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-96(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-96(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L158
.L112:
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_4
	testl	%eax, %eax
	jne	.L122
	movl	$0, %eax
	jmp	.L158
.L122:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L124
	movl	-24(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L158
.L124:
	leaq	-36(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L125
	movl	-36(%rbp), %eax
	cmpl	$20, %eax
	ja	.L125
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	leaq	9(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	je	.L125
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L125
	movl	-40(%rbp), %eax
	cmpl	$20, %eax
	ja	.L125
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	leaq	30(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L126
.L125:
	movl	$0, %eax
	jmp	.L158
.L126:
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, 8(%rax)
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, 29(%rax)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L127
	movq	-96(%rbp), %rax
	movb	$6, (%rax)
	movl	-24(%rbp), %eax
	andl	$64, %eax
	shrl	$6, %eax
	movl	%eax, %edx
	andl	$1, %edx
	movq	-96(%rbp), %rax
	movl	%edx, %ecx
	sall	$7, %ecx
	movzbl	1(%rax), %edx
	andl	$127, %edx
	orl	%ecx, %edx
	movb	%dl, 1(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-96(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	-96(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-96(%rbp), %rax
	movq	72(%rax), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L128
	movl	$0, %eax
	jmp	.L158
.L128:
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-65, %edx
	movb	%dl, 1(%rax)
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-61, %edx
	movb	%dl, 1(%rax)
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 1(%rax)
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 1(%rax)
	movq	-96(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-96(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-96(%rbp), %rax
	addq	$50, %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-96(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L158
.L127:
	movq	-32(%rbp), %rax
	cmpq	$1, %rax
	je	.L130
	movl	$0, %eax
	jmp	.L158
.L130:
	cmpq	$20, -16(%rbp)
	ja	.L131
	movl	$0, %eax
	jmp	.L158
.L131:
	movl	-24(%rbp), %eax
	shrl	$4, %eax
	andl	$3, %eax
	movl	%eax, -20(%rbp)
	cmpl	$3, -20(%rbp)
	je	.L132
	cmpl	$3, -20(%rbp)
	ja	.L133
	cmpl	$2, -20(%rbp)
	je	.L134
	cmpl	$2, -20(%rbp)
	ja	.L133
	cmpl	$0, -20(%rbp)
	je	.L135
	cmpl	$1, -20(%rbp)
	je	.L136
	jmp	.L133
.L135:
	movq	-96(%rbp), %rax
	movb	$1, (%rax)
	jmp	.L133
.L136:
	movq	-96(%rbp), %rax
	movb	$2, (%rax)
	jmp	.L133
.L134:
	movq	-96(%rbp), %rax
	movb	$3, (%rax)
	jmp	.L133
.L132:
	movq	-96(%rbp), %rax
	movb	$4, (%rax)
	nop
.L133:
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-61, %edx
	movb	%dl, 1(%rax)
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 1(%rax)
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 1(%rax)
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 1(%rax)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L137
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L138
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L139
.L138:
	movl	$0, %eax
	jmp	.L158
.L139:
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L141
	movq	-96(%rbp), %rax
	movq	$0, 56(%rax)
	jmp	.L141
.L137:
	movq	-96(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-96(%rbp), %rax
	movq	$0, 64(%rax)
.L141:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	jne	.L142
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-96(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	-96(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$-65, %edx
	movb	%dl, 1(%rax)
	movl	-24(%rbp), %eax
	andl	$15, %eax
	movq	-96(%rbp), %rdx
	andl	$15, %eax
	movl	%eax, %ecx
	movzbl	2(%rdx), %eax
	andl	$-16, %eax
	orl	%ecx, %eax
	movb	%al, 2(%rdx)
	movq	-96(%rbp), %rax
	addq	$50, %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-96(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L158
.L142:
	cmpl	$0, -84(%rbp)
	jne	.L143
	movl	-24(%rbp), %eax
	andl	$3, %eax
	addl	$1, %eax
	andl	$15, %eax
	movl	%eax, %edx
	jmp	.L144
.L143:
	movl	$0, %edx
.L144:
	movq	-96(%rbp), %rax
	andl	$15, %edx
	leal	0(,%rdx,4), %ecx
	movzbl	1(%rax), %edx
	andl	$-61, %edx
	orl	%ecx, %edx
	movb	%dl, 1(%rax)
	cmpl	$0, -84(%rbp)
	jne	.L145
	movl	-24(%rbp), %eax
	shrl	$2, %eax
	andl	$3, %eax
	jmp	.L146
.L145:
	movl	$0, %eax
.L146:
	movq	-96(%rbp), %rdx
	andl	$3, %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movzbl	2(%rdx), %eax
	andl	$-49, %eax
	orl	%ecx, %eax
	movb	%al, 2(%rdx)
	leaq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_quic_vlint
	testl	%eax, %eax
	je	.L147
	movq	-56(%rbp), %rax
	cmpq	$3, %rax
	ja	.L148
.L147:
	movl	$0, %eax
	jmp	.L149
.L148:
	cmpl	$0, -88(%rbp)
	jne	.L150
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L150
	movl	$0, %eax
	jmp	.L149
.L150:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	addq	$50, %rax
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpl	$0, -84(%rbp)
	je	.L151
	movq	-72(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L152
	movl	$0, %eax
	jmp	.L149
.L152:
	movq	-56(%rbp), %rax
	leaq	-4(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L153
.L151:
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %edx
	movq	-96(%rbp), %rax
	leaq	50(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L154
	movl	$0, %eax
	jmp	.L149
.L154:
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %eax
	subq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 72(%rax)
.L153:
	cmpl	$0, -88(%rbp)
	je	.L155
	movq	-96(%rbp), %rax
	movq	$0, 80(%rax)
	jmp	.L121
.L155:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-96(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-96(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
.L149:
	jmp	.L158
.L121:
	cmpq	$0, -104(%rbp)
	je	.L157
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -8(%rbp)
	je	.L157
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_end
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 16(%rax)
.L157:
	movl	$1, %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	ossl_quic_wire_decode_pkt_hdr, .-ossl_quic_wire_decode_pkt_hdr
	.globl	ossl_quic_wire_encode_pkt_hdr
	.type	ossl_quic_wire_encode_pkt_hdr, @function
ossl_quic_wire_encode_pkt_hdr:
.LFB566:
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
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	jne	.L160
	movl	$0, %eax
	jmp	.L197
.L160:
	cmpq	$0, -80(%rbp)
	je	.L162
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L163
	movl	$0, %eax
	jmp	.L197
.L163:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movq	-80(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-80(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-80(%rbp), %rax
	movq	$0, 24(%rax)
.L162:
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L164
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L165
	movq	-72(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpq	%rax, -64(%rbp)
	je	.L165
.L164:
	movl	$0, %eax
	jmp	.L197
.L165:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L166
	movq	-72(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpq	%rax, -64(%rbp)
	jne	.L167
	cmpq	$20, -64(%rbp)
	ja	.L167
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$60, %eax
	testb	%al, %al
	je	.L167
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	cmpb	$4, %al
	jbe	.L168
.L167:
	movl	$0, %eax
	jmp	.L197
.L168:
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	sall	$5, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	%al
	andl	$1, %eax
	sall	$2, %eax
	orl	%eax, %edx
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	subl	$1, %eax
	orl	%eax, %edx
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %eax
	shrb	$4, %al
	andl	$3, %eax
	sall	$3, %eax
	orl	%edx, %eax
	orl	$64, %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L169
	movq	-72(%rbp), %rax
	leaq	9(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L169
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L169
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	leaq	50(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L170
.L169:
	movl	$0, %eax
	jmp	.L197
.L166:
	movq	-72(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$20, %al
	ja	.L171
	movq	-72(%rbp), %rax
	movzbl	29(%rax), %eax
	cmpb	$20, %al
	jbe	.L172
.L171:
	movl	$0, %eax
	jmp	.L197
.L172:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_has_pn
	testl	%eax, %eax
	je	.L173
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$60, %eax
	testb	%al, %al
	je	.L174
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	cmpb	$4, %al
	jbe	.L173
.L174:
	movl	$0, %eax
	jmp	.L197
.L173:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$6, %eax
	je	.L175
	cmpl	$6, %eax
	jg	.L176
	cmpl	$4, %eax
	je	.L177
	cmpl	$4, %eax
	jg	.L176
	cmpl	$3, %eax
	je	.L178
	cmpl	$3, %eax
	jg	.L176
	cmpl	$1, %eax
	je	.L179
	cmpl	$2, %eax
	je	.L180
	jmp	.L176
.L175:
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L181
	movl	$0, %eax
	jmp	.L197
.L181:
	movl	$0, -8(%rbp)
	jmp	.L182
.L179:
	movl	$0, -8(%rbp)
	jmp	.L182
.L180:
	movl	$1, -8(%rbp)
	jmp	.L182
.L178:
	movl	$2, -8(%rbp)
	jmp	.L182
.L177:
	movl	$3, -8(%rbp)
	jmp	.L182
.L176:
	movl	$0, %eax
	jmp	.L197
.L182:
	movl	-8(%rbp), %eax
	sall	$4, %eax
	orl	$-128, %eax
	movb	%al, -1(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	jne	.L183
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L184
.L183:
	orb	$64, -1(%rbp)
.L184:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_has_pn
	testl	%eax, %eax
	je	.L185
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	subl	$1, %eax
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	orl	%edx, %eax
	movb	%al, -1(%rbp)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %eax
	shrb	$4, %al
	andl	$3, %eax
	leal	0(,%rax,4), %edx
	movzbl	-1(%rbp), %eax
	orl	%edx, %eax
	movb	%al, -1(%rbp)
.L185:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	jne	.L186
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %eax
	andl	$15, %eax
	orb	%al, -1(%rbp)
.L186:
	movzbl	-1(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L187
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L187
	movq	-72(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %ecx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L187
	movq	-72(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	leaq	9(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L187
	movq	-72(%rbp), %rax
	movzbl	29(%rax), %eax
	movzbl	%al, %ecx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L187
	movq	-72(%rbp), %rax
	movzbl	29(%rax), %eax
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	leaq	30(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L188
.L187:
	movl	$0, %eax
	jmp	.L197
.L188:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	je	.L189
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	jne	.L190
.L189:
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L191
	movq	-72(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	jne	.L191
	movl	$0, %eax
	jmp	.L197
.L191:
	movl	$1, %eax
	jmp	.L197
.L190:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L192
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L193
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L192
.L193:
	movl	$0, %eax
	jmp	.L197
.L192:
	movq	-72(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %eax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	je	.L194
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	je	.L194
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %edx
	movq	-72(%rbp), %rax
	leaq	50(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L170
.L194:
	movl	$0, %eax
	jmp	.L197
.L170:
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L195
	movq	-72(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	jne	.L195
	movl	$0, %eax
	jmp	.L197
.L195:
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L196
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	-72(%rbp), %rdx
	movq	72(%rdx), %rdx
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 24(%rax)
.L196:
	movl	$1, %eax
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	ossl_quic_wire_encode_pkt_hdr, .-ossl_quic_wire_encode_pkt_hdr
	.globl	ossl_quic_wire_get_encoded_pkt_hdr_len
	.type	ossl_quic_wire_get_encoded_pkt_hdr_len, @function
ossl_quic_wire_get_encoded_pkt_hdr_len:
.LFB567:
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
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L199
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L200
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpq	%rax, -24(%rbp)
	je	.L200
.L199:
	movl	$0, %eax
	jmp	.L201
.L200:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L202
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	cmpq	%rax, -24(%rbp)
	jne	.L203
	cmpq	$20, -24(%rbp)
	ja	.L203
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$60, %eax
	testb	%al, %al
	je	.L203
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	cmpb	$4, %al
	jbe	.L204
.L203:
	movl	$0, %eax
	jmp	.L201
.L204:
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	addl	%edx, %eax
	addl	$1, %eax
	jmp	.L201
.L202:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	cmpb	$20, %al
	ja	.L205
	movq	-32(%rbp), %rax
	movzbl	29(%rax), %eax
	cmpb	$20, %al
	jbe	.L206
.L205:
	movl	$0, %eax
	jmp	.L201
.L206:
	movq	-32(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	leal	7(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	29(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	cltq
	addq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_has_pn
	testl	%eax, %eax
	je	.L207
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$60, %eax
	testb	%al, %al
	je	.L208
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	cmpb	$4, %al
	jbe	.L209
.L208:
	movl	$0, %eax
	jmp	.L201
.L209:
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %eax
	addq	%rax, -8(%rbp)
.L207:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L210
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L211
	movl	$0, %eax
	jmp	.L201
.L211:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	%rax, -8(%rbp)
.L210:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_must_be_last
	testl	%eax, %eax
	jne	.L212
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	ossl_quic_vlint_encode_len
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L213
	movl	$0, %eax
	jmp	.L201
.L213:
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L212:
	movq	-8(%rbp), %rax
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	ossl_quic_wire_get_encoded_pkt_hdr_len, .-ossl_quic_wire_get_encoded_pkt_hdr_len
	.globl	ossl_quic_wire_get_pkt_hdr_dst_conn_id
	.type	ossl_quic_wire_get_pkt_hdr_dst_conn_id, @function
ossl_quic_wire_get_pkt_hdr_dst_conn_id:
.LFB568:
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
	cmpq	$6, -32(%rbp)
	jbe	.L215
	cmpq	$20, -40(%rbp)
	jbe	.L216
.L215:
	movl	$0, %eax
	jmp	.L217
.L216:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	testb	%al, %al
	jns	.L218
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L219
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L219
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L219
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L220
.L219:
	movzbl	-1(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L220
	movl	$0, %eax
	jmp	.L217
.L220:
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -16(%rbp)
	cmpq	$20, -16(%rbp)
	ja	.L221
	movq	-16(%rbp), %rax
	addq	$7, %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L222
.L221:
	movl	$0, %eax
	jmp	.L217
.L222:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	leaq	6(%rax), %rsi
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L217
.L218:
	movzbl	-1(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L223
	movl	$0, %eax
	jmp	.L217
.L223:
	movq	-40(%rbp), %rax
	addq	$21, %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L224
	movl	$0, %eax
	jmp	.L217
.L224:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	ossl_quic_wire_get_pkt_hdr_dst_conn_id, .-ossl_quic_wire_get_pkt_hdr_dst_conn_id
	.globl	ossl_quic_wire_decode_pkt_hdr_pn
	.type	ossl_quic_wire_decode_pkt_hdr_pn, @function
ossl_quic_wire_decode_pkt_hdr_pn:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	cmpq	$4, -64(%rbp)
	je	.L226
	cmpq	$4, -64(%rbp)
	ja	.L227
	cmpq	$3, -64(%rbp)
	je	.L228
	cmpq	$3, -64(%rbp)
	ja	.L227
	cmpq	$1, -64(%rbp)
	je	.L229
	cmpq	$2, -64(%rbp)
	je	.L230
	jmp	.L227
.L229:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	jmp	.L231
.L230:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L231
.L228:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L231
.L226:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L231
.L227:
	movl	$0, %eax
	jmp	.L232
.L231:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	sall	$3, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	notq	%rax
	andq	-16(%rbp), %rax
	orq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	subq	-32(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jg	.L233
	movabsq	$4611686018427387904, %rax
	subq	-24(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jge	.L233
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L234
.L233:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -48(%rbp)
	jle	.L235
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.L235
	movq	-48(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L234
.L235:
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
.L234:
	movl	$1, %eax
.L232:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	ossl_quic_wire_decode_pkt_hdr_pn, .-ossl_quic_wire_decode_pkt_hdr_pn
	.globl	ossl_quic_wire_determine_pn_len
	.type	ossl_quic_wire_determine_pn_len, @function
ossl_quic_wire_determine_pn_len:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.L237
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L238
.L237:
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L238:
	cmpq	$128, -8(%rbp)
	ja	.L239
	movl	$1, %eax
	jmp	.L240
.L239:
	cmpq	$32768, -8(%rbp)
	ja	.L241
	movl	$2, %eax
	jmp	.L240
.L241:
	cmpq	$8388608, -8(%rbp)
	ja	.L242
	movl	$3, %eax
	jmp	.L240
.L242:
	movl	$4, %eax
.L240:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	ossl_quic_wire_determine_pn_len, .-ossl_quic_wire_determine_pn_len
	.globl	ossl_quic_wire_encode_pkt_hdr_pn
	.type	ossl_quic_wire_encode_pkt_hdr_pn, @function
ossl_quic_wire_encode_pkt_hdr_pn:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$4, -24(%rbp)
	je	.L244
	cmpq	$4, -24(%rbp)
	ja	.L245
	cmpq	$3, -24(%rbp)
	je	.L246
	cmpq	$3, -24(%rbp)
	ja	.L245
	cmpq	$1, -24(%rbp)
	je	.L247
	cmpq	$2, -24(%rbp)
	je	.L248
	jmp	.L245
.L247:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L249
.L248:
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L249
.L246:
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	-8(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L249
.L244:
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movq	-8(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	shrq	$24, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L249
.L245:
	movl	$0, %eax
	jmp	.L250
.L249:
	movl	$1, %eax
.L250:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	ossl_quic_wire_encode_pkt_hdr_pn, .-ossl_quic_wire_encode_pkt_hdr_pn
	.globl	ossl_quic_validate_retry_integrity_tag
	.type	ossl_quic_validate_retry_integrity_tag, @function
ossl_quic_validate_retry_integrity_tag:
.LFB572:
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
	cmpq	$0, -56(%rbp)
	je	.L252
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$15, %rax
	ja	.L253
.L252:
	movl	$0, %eax
	jmp	.L256
.L253:
	leaq	-32(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_calculate_retry_integrity_tag@PLT
	testl	%eax, %eax
	jne	.L255
	movl	$0, %eax
	jmp	.L256
.L255:
	movq	-56(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	subq	$16, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L256:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	ossl_quic_validate_retry_integrity_tag, .-ossl_quic_validate_retry_integrity_tag
	.section	.rodata
	.align 16
	.type	retry_integrity_key, @object
	.size	retry_integrity_key, 16
retry_integrity_key:
	.base64	"vgxpC59mV1oddmtU42jITg=="
	.align 8
	.type	retry_integrity_nonce, @object
	.size	retry_integrity_nonce, 12
retry_integrity_nonce:
	.base64	"RhWZ011jK/IjmCW7"
.LC4:
	.string	"AES-128-GCM"
	.text
	.globl	ossl_quic_calculate_retry_integrity_tag
	.type	ossl_quic_calculate_retry_integrity_tag, @function
ossl_quic_calculate_retry_integrity_tag:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$392, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%rcx, -384(%rbp)
	movq	%r8, -392(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -40(%rbp)
	movq	$0, -344(%rbp)
	movq	-376(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	jne	.L258
	movq	-376(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L258
	movq	-376(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$15, %rax
	jbe	.L258
	movq	-376(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L258
	cmpq	$0, -384(%rbp)
	je	.L258
	cmpq	$0, -392(%rbp)
	je	.L258
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jbe	.L259
.L258:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$855, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L260
.L259:
	movq	-376(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -336(%rbp)
	movq	%rbx, -328(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -320(%rbp)
	movq	%rbx, -312(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -304(%rbp)
	movq	%rbx, -296(%rbp)
	movq	48(%rax), %rcx
	movq	56(%rax), %rbx
	movq	%rcx, -288(%rbp)
	movq	%rbx, -280(%rbp)
	movq	64(%rax), %rcx
	movq	72(%rax), %rbx
	movq	%rcx, -272(%rbp)
	movq	%rbx, -264(%rbp)
	movq	80(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	$0, -264(%rbp)
	leaq	-240(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$128, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	jne	.L261
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$869, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L260
.L261:
	movl	$1, -40(%rbp)
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	leaq	-112(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L262
	movq	-384(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-384(%rbp), %rax
	leaq	1(%rax), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L263
.L262:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$879, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L260
.L263:
	movzbl	-328(%rbp), %eax
	movzbl	%al, %esi
	leaq	-336(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_pkt_hdr@PLT
	testl	%eax, %eax
	je	.L275
	leaq	-344(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	jne	.L265
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$889, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L260
.L265:
	movq	-368(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-360(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L266
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$896, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L260
.L266:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L267
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$901, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L260
.L267:
	leaq	retry_integrity_nonce(%rip), %rcx
	leaq	retry_integrity_key(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L268
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$907, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L260
.L268:
	movq	-344(%rbp), %rax
	movl	%eax, %esi
	leaq	-240(%rbp), %rcx
	leaq	-44(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	cmpl	$1, %eax
	je	.L269
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$913, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L260
.L269:
	movq	-376(%rbp), %rax
	movq	72(%rax), %rax
	subl	$16, %eax
	movl	%eax, %esi
	movq	-376(%rbp), %rax
	movq	80(%rax), %rcx
	leaq	-44(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	cmpl	$1, %eax
	je	.L270
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$920, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L260
.L270:
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	cmpl	$1, %eax
	je	.L271
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$926, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L260
.L271:
	movq	-392(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	cmpl	$1, %eax
	je	.L272
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$933, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L260
.L272:
	movl	$1, -36(%rbp)
	jmp	.L260
.L275:
	nop
.L260:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	cmpl	$0, -40(%rbp)
	je	.L273
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
.L273:
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	ossl_quic_calculate_retry_integrity_tag, .-ossl_quic_calculate_retry_integrity_tag
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 29
__func__.3:
	.string	"ossl_quic_hdr_protector_init"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"hdr_generate_mask"
	.type	zeroes.1, @object
	.size	zeroes.1, 5
zeroes.1:
	.zero	5
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 40
__func__.0:
	.string	"ossl_quic_calculate_retry_integrity_tag"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
