	.file	"quic-rcidm.c"
	.text
	.type	packet_forward, @function
packet_forward:
.LFB529:
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
.LFE529:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB530:
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
.LFE530:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB533:
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
	jns	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_peek_net_8, @function
PACKET_peek_net_8:
.LFB545:
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
	ja	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
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
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	PACKET_peek_net_8, .-PACKET_peek_net_8
	.type	PACKET_get_net_8, @function
PACKET_get_net_8:
.LFB548:
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
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	PACKET_get_net_8, .-PACKET_get_net_8
	.type	PACKET_peek_1, @function
PACKET_peek_1:
.LFB549:
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
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	PACKET_peek_1, .-PACKET_peek_1
	.type	PACKET_get_1, @function
PACKET_get_1:
.LFB550:
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
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	PACKET_get_1, .-PACKET_get_1
	.type	PACKET_peek_copy_bytes, @function
PACKET_peek_copy_bytes:
.LFB556:
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
	jnb	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	PACKET_peek_copy_bytes, .-PACKET_peek_copy_bytes
	.type	PACKET_copy_bytes, @function
PACKET_copy_bytes:
.LFB557:
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
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	PACKET_copy_bytes, .-PACKET_copy_bytes
	.globl	FuzzerInitialize
	.type	FuzzerInitialize, @function
FuzzerInitialize:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	FuzzerSetRand@PLT
	movl	$0, %esi
	movl	$258, %edi
	call	OPENSSL_init_crypto@PLT
	movl	$0, %esi
	movl	$2097152, %edi
	call	OPENSSL_init_ssl@PLT
	call	ERR_clear_error@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	FuzzerInitialize, .-FuzzerInitialize
	.type	get_cid, @function
get_cid:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L28
	movl	-4(%rbp), %eax
	cmpl	$20, %eax
	ja	.L28
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L29
.L28:
	movl	$0, %eax
	jmp	.L31
.L29:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	get_cid, .-get_cid
	.globl	FuzzerTestOneInput
	.type	FuzzerTestOneInput, @function
FuzzerTestOneInput:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L62
	movl	$0, %edi
	call	ossl_quic_rcidm_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L63
	jmp	.L36
.L60:
	leaq	-52(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L64
	movl	-52(%rbp), %eax
	cmpl	$11, %eax
	je	.L38
	cmpl	$11, %eax
	ja	.L39
	cmpl	$10, %eax
	je	.L40
	cmpl	$10, %eax
	ja	.L39
	cmpl	$9, %eax
	je	.L41
	cmpl	$9, %eax
	ja	.L39
	cmpl	$8, %eax
	je	.L42
	cmpl	$8, %eax
	ja	.L39
	cmpl	$7, %eax
	je	.L43
	cmpl	$7, %eax
	ja	.L39
	cmpl	$6, %eax
	je	.L44
	cmpl	$6, %eax
	ja	.L39
	cmpl	$5, %eax
	je	.L45
	cmpl	$5, %eax
	ja	.L39
	cmpl	$4, %eax
	je	.L46
	cmpl	$4, %eax
	ja	.L39
	cmpl	$3, %eax
	je	.L47
	cmpl	$3, %eax
	ja	.L39
	cmpl	$2, %eax
	je	.L48
	cmpl	$2, %eax
	ja	.L39
	testl	%eax, %eax
	je	.L49
	cmpl	$1, %eax
	je	.L50
	jmp	.L39
.L49:
	leaq	-80(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_cid
	testl	%eax, %eax
	jne	.L51
	movl	$-1, -4(%rbp)
	jmp	.L34
.L51:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_free@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L65
	jmp	.L36
.L50:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_free@PLT
	movl	$0, %edi
	call	ossl_quic_rcidm_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L66
	jmp	.L36
.L48:
	leaq	-80(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_cid
	testl	%eax, %eax
	jne	.L54
	movl	$-1, -4(%rbp)
	jmp	.L34
.L54:
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_add_from_initial@PLT
	jmp	.L36
.L47:
	leaq	-80(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_cid
	testl	%eax, %eax
	jne	.L55
	movl	$-1, -4(%rbp)
	jmp	.L34
.L55:
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_add_from_server_retry@PLT
	jmp	.L36
.L46:
	leaq	-176(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_8
	testl	%eax, %eax
	je	.L56
	leaq	-176(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_8
	testl	%eax, %eax
	je	.L56
	leaq	-176(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_cid
	testl	%eax, %eax
	jne	.L57
.L56:
	movl	$-1, -4(%rbp)
	jmp	.L34
.L57:
	leaq	-176(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_add_from_ncid@PLT
	jmp	.L36
.L45:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_on_handshake_complete@PLT
	jmp	.L36
.L44:
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_8
	testl	%eax, %eax
	jne	.L58
	movl	$-1, -4(%rbp)
	jmp	.L34
.L58:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_on_packet_sent@PLT
	jmp	.L36
.L43:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_request_roll@PLT
	jmp	.L36
.L42:
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_pop_retire_seq_num@PLT
	jmp	.L36
.L41:
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_peek_retire_seq_num@PLT
	jmp	.L36
.L40:
	leaq	-112(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid@PLT
	jmp	.L36
.L38:
	leaq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L59
	movl	$-1, -4(%rbp)
	jmp	.L34
.L59:
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_preferred_tx_dcid_changed@PLT
	jmp	.L36
.L39:
	movl	$-1, -4(%rbp)
	jmp	.L34
.L36:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L60
	jmp	.L34
.L62:
	nop
	jmp	.L34
.L63:
	nop
	jmp	.L34
.L64:
	nop
	jmp	.L34
.L65:
	nop
	jmp	.L34
.L66:
	nop
.L34:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	FuzzerTestOneInput, .-FuzzerTestOneInput
	.globl	FuzzerCleanup
	.type	FuzzerCleanup, @function
FuzzerCleanup:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	FuzzerClearRand@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	FuzzerCleanup, .-FuzzerCleanup
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
