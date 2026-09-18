	.file	"bad_dtls_test.c"
	.text
	.type	packet_forward, @function
packet_forward:
.LFB496:
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
.LFE496:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB497:
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
.LFE497:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB500:
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
.LFE500:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_equal, @function
PACKET_equal:
.LFB502:
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
	je	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
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
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	PACKET_equal, .-PACKET_equal
	.type	PACKET_peek_net_2, @function
PACKET_peek_net_2:
.LFB505:
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
	ja	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
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
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	PACKET_peek_net_2, .-PACKET_peek_net_2
	.type	PACKET_get_net_2, @function
PACKET_get_net_2:
.LFB506:
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
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_peek_1, @function
PACKET_peek_1:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PACKET_peek_1, .-PACKET_peek_1
	.type	PACKET_get_1, @function
PACKET_get_1:
.LFB517:
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
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PACKET_get_1, .-PACKET_get_1
	.type	PACKET_peek_bytes, @function
PACKET_peek_bytes:
.LFB521:
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
	jnb	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	PACKET_peek_bytes, .-PACKET_peek_bytes
	.type	PACKET_get_bytes, @function
PACKET_get_bytes:
.LFB522:
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
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.type	PACKET_peek_copy_bytes, @function
PACKET_peek_copy_bytes:
.LFB523:
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
	jnb	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	PACKET_peek_copy_bytes, .-PACKET_peek_copy_bytes
	.type	PACKET_copy_bytes, @function
PACKET_copy_bytes:
.LFB524:
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
	jne	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PACKET_copy_bytes, .-PACKET_copy_bytes
	.type	PACKET_forward, @function
PACKET_forward:
.LFB529:
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
	jnb	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	PACKET_forward, .-PACKET_forward
	.type	PACKET_get_length_prefixed_1, @function
PACKET_get_length_prefixed_1:
.LFB530:
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
	je	.L38
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L39
.L38:
	movl	$0, %eax
	jmp	.L41
.L39:
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
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	PACKET_get_length_prefixed_1, .-PACKET_get_length_prefixed_1
	.local	client_random
	.comm	client_random,32,32
	.local	server_random
	.comm	server_random,32,32
	.local	session_id
	.comm	session_id,32,32
	.local	master_secret
	.comm	master_secret,48,32
	.local	cookie
	.comm	cookie,20,16
	.local	key_block
	.comm	key_block,104,32
	.local	handshake_md
	.comm	handshake_md,8,8
	.type	do_PRF, @function
do_PRF:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	$0, %esi
	movl	$1021, %edi
	call	EVP_PKEY_CTX_new_id@PLT
	movq	%rax, -8(%rbp)
	movl	24(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_derive_init@PLT
	call	EVP_md5_sha1@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_tls1_prf_md@PLT
	leaq	master_secret(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_tls1_prf_secret@PLT
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_tls1_prf_seed@PLT
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_tls1_prf_seed@PLT
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_add1_tls1_prf_seed@PLT
	leaq	-16(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_derive@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	do_PRF, .-do_PRF
	.type	client_session, @function
client_session:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	session_asn1.7(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	15+session_asn1.7(%rip), %rcx
	movq	session_id(%rip), %rax
	movq	8+session_id(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+session_id(%rip), %rax
	movq	24+session_id(%rip), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	leaq	49+session_asn1.7(%rip), %rax
	movq	master_secret(%rip), %rcx
	movq	8+master_secret(%rip), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16+master_secret(%rip), %rcx
	movq	24+master_secret(%rip), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32+master_secret(%rip), %rcx
	movq	40+master_secret(%rip), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	leaq	-24(%rbp), %rax
	movl	$97, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_SSL_SESSION@PLT
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	client_session, .-client_session
	.type	validate_client_hello, @function
validate_client_hello:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -60(%rbp)
	leaq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jns	.L47
	movl	$0, %eax
	jmp	.L74
.L47:
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L74
.L49:
	leaq	-60(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L50
	movl	-60(%rbp), %eax
	cmpl	$22, %eax
	je	.L51
.L50:
	movl	$0, %eax
	jmp	.L74
.L51:
	leaq	-60(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L52
	movl	-60(%rbp), %eax
	cmpl	$256, %eax
	je	.L53
.L52:
	movl	$0, %eax
	jmp	.L74
.L53:
	leaq	-32(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L74
.L54:
	leaq	-60(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L55
	movl	-60(%rbp), %eax
	cmpl	$1, %eax
	je	.L56
.L55:
	movl	$0, %eax
	jmp	.L74
.L56:
	leaq	-32(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L74
.L57:
	leaq	-60(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L58
	movl	-60(%rbp), %eax
	cmpl	$256, %eax
	je	.L59
.L58:
	movl	$0, %eax
	jmp	.L74
.L59:
	leaq	client_random(%rip), %rcx
	leaq	-32(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L60
	movl	$0, %eax
	jmp	.L74
.L60:
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L61
	leaq	session_id(%rip), %rcx
	leaq	-48(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	jne	.L62
.L61:
	movl	$0, %eax
	jmp	.L74
.L62:
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L63
	movl	$0, %eax
	jmp	.L74
.L63:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L64
	leaq	cookie(%rip), %rcx
	leaq	-48(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_equal
	testl	%eax, %eax
	jne	.L65
	movl	$0, %eax
	jmp	.L74
.L65:
	movl	$1, -4(%rbp)
.L64:
	leaq	-60(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L66
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L67
.L66:
	movl	$0, %eax
	jmp	.L74
.L67:
	leaq	-60(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L68
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L69
.L68:
	movl	$0, %eax
	jmp	.L74
.L69:
	leaq	-60(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L70
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L71
.L70:
	movl	$0, %eax
	jmp	.L74
.L71:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L72
	movl	$0, %eax
	jmp	.L74
.L72:
	cmpl	$0, -4(%rbp)
	je	.L73
	movq	-16(%rbp), %rax
	subq	$25, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	25(%rax), %rcx
	movq	handshake_md(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L74
.L73:
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	-4(%rbp), %eax
	addl	$1, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	validate_client_hello, .-validate_client_hello
	.type	send_hello_verify, @function
send_hello_verify:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	28+hello_verify.6(%rip), %rcx
	movq	cookie(%rip), %rax
	movq	8+cookie(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	16+cookie(%rip), %eax
	movl	%eax, 16(%rcx)
	leaq	hello_verify.6(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	send_hello_verify, .-send_hello_verify
	.type	send_server_hello, @function
send_server_hello:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	27+server_hello.5(%rip), %rcx
	movq	server_random(%rip), %rax
	movq	8+server_random(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+server_random(%rip), %rax
	movq	24+server_random(%rip), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	leaq	60+server_hello.5(%rip), %rcx
	movq	session_id(%rip), %rax
	movq	8+session_id(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+session_id(%rip), %rax
	movq	24+session_id(%rip), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	leaq	25+server_hello.5(%rip), %rcx
	movq	handshake_md(%rip), %rax
	movl	$70, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L79
.L78:
	leaq	server_hello.5(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$95, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leaq	change_cipher_spec.4(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	$1, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	send_server_hello, .-send_server_hello
	.section	.rodata
.LC0:
	.string	"../test/bad_dtls_test.c"
.LC1:
	.string	"HMAC"
	.align 8
.LC2:
	.string	"hmac = EVP_MAC_fetch(NULL, \"HMAC\", NULL)"
.LC3:
	.string	"ctx = EVP_MAC_CTX_new(hmac)"
.LC4:
	.string	"SHA1"
.LC5:
	.string	"digest"
.LC6:
	.string	"0"
.LC7:
	.string	"RAND_bytes(iv, sizeof(iv))"
	.align 8
.LC8:
	.string	"enc_ctx = EVP_CIPHER_CTX_new()"
	.align 8
.LC9:
	.string	"EVP_CipherInit_ex(enc_ctx, EVP_aes_128_cbc(), NULL, enc_key, iv, 1)"
	.align 8
.LC10:
	.string	"EVP_Cipher(enc_ctx, enc, enc, len)"
	.text
	.type	send_record, @function
send_record:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movl	%esi, %eax
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movb	%al, -188(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-200(%rbp), %rax
	shrq	$40, %rax
	movb	%al, seq.3(%rip)
	movq	-200(%rbp), %rax
	shrq	$32, %rax
	movb	%al, 1+seq.3(%rip)
	movq	-200(%rbp), %rax
	shrq	$24, %rax
	movb	%al, 2+seq.3(%rip)
	movq	-200(%rbp), %rax
	shrq	$16, %rax
	movb	%al, 3+seq.3(%rip)
	movq	-200(%rbp), %rax
	shrq	$8, %rax
	movb	%al, 4+seq.3(%rip)
	movq	-200(%rbp), %rax
	movb	%al, 5+seq.3(%rip)
	movq	-216(%rbp), %rax
	movl	%eax, %edx
	movl	$-21, %eax
	subl	%edx, %eax
	andl	$15, %eax
	movb	%al, -49(%rbp)
	movzbl	-49(%rbp), %edx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	addq	$21, %rax
	leaq	.LC0(%rip), %rcx
	movl	$301, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L81
	movl	$0, %eax
	jmp	.L91
.L81:
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	.LC1(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MAC_fetch@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$309, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L92
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$310, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L92
	leaq	-272(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-216(%rbp), %rax
	shrq	$8, %rax
	movb	%al, -66(%rbp)
	movq	-216(%rbp), %rax
	movb	%al, -65(%rbp)
	leaq	20+key_block(%rip), %rsi
	leaq	-176(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$20, %edx
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L93
	leaq	epoch.2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L93
	leaq	seq.3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L93
	leaq	-188(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L93
	leaq	ver.1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L93
	leaq	-66(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L93
	movq	-216(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L93
	movq	-64(%rbp), %rdx
	movq	-216(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-24(%rbp), %rax
	movl	$20, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L93
	addq	$20, -216(%rbp)
.L88:
	movq	-216(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -216(%rbp)
	movq	-64(%rbp), %rdx
	addq	%rax, %rdx
	movzbl	-49(%rbp), %eax
	movb	%al, (%rdx)
	movq	-216(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	jne	.L88
	leaq	-96(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$334, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L94
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$335, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	leaq	56+key_block(%rip), %rbx
	call	EVP_aes_128_cbc@PLT
	movq	%rax, %rsi
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$1, %r9d
	movq	%rdx, %r8
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$336, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-216(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_Cipher@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$338, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L94
	leaq	-188(%rbp), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leaq	ver.1(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leaq	epoch.2(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leaq	seq.3(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	-216(%rbp), %rax
	addq	$16, %rax
	shrq	$8, %rax
	movb	%al, -66(%rbp)
	movq	-216(%rbp), %rax
	addl	$16, %eax
	movb	%al, -65(%rbp)
	leaq	-66(%rbp), %rcx
	movq	-184(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leaq	-96(%rbp), %rcx
	movq	-184(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	-216(%rbp), %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	$1, -36(%rbp)
	jmp	.L85
.L92:
	nop
	jmp	.L85
.L93:
	nop
	jmp	.L85
.L94:
	nop
.L85:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$357, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-36(%rbp), %eax
.L91:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	send_record, .-send_record
	.section	.rodata
.LC11:
	.string	"key expansion"
.LC12:
	.string	"server finished"
	.text
	.type	send_finished, @function
send_finished:
.LFB544:
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
	leaq	client_random(%rip), %rsi
	leaq	server_random(%rip), %rdx
	leaq	.LC11(%rip), %rax
	pushq	$104
	leaq	key_block(%rip), %rcx
	pushq	%rcx
	movl	$32, %r9d
	movq	%rsi, %r8
	movl	$32, %ecx
	movl	$13, %esi
	movq	%rax, %rdi
	call	do_PRF
	addq	$16, %rsp
	movq	handshake_md(%rip), %rax
	leaq	-80(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L98
.L96:
	leaq	12+finished_msg.0(%rip), %rbx
	movq	handshake_md(%rip), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	leaq	.LC12(%rip), %rdi
	pushq	$12
	pushq	%rbx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$15, %esi
	call	do_PRF
	addq	$16, %rsp
	leaq	finished_msg.0(%rip), %rdx
	movq	-96(%rbp), %rax
	movl	$24, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	call	send_record
.L98:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	send_finished, .-send_finished
	.type	validate_ccs, @function
validate_ccs:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jns	.L100
	movl	$0, %eax
	jmp	.L118
.L100:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L102
	movl	$0, %eax
	jmp	.L118
.L102:
	leaq	-44(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L103
	movl	-44(%rbp), %eax
	cmpl	$20, %eax
	je	.L104
.L103:
	movl	$0, %eax
	jmp	.L118
.L104:
	leaq	-44(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L105
	movl	-44(%rbp), %eax
	cmpl	$256, %eax
	je	.L106
.L105:
	movl	$0, %eax
	jmp	.L118
.L106:
	leaq	-32(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	jne	.L107
	movl	$0, %eax
	jmp	.L118
.L107:
	leaq	-44(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L108
	movl	-44(%rbp), %eax
	cmpl	$1, %eax
	je	.L109
.L108:
	movl	$0, %eax
	jmp	.L118
.L109:
	leaq	-44(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L110
	movl	-44(%rbp), %eax
	cmpl	$2, %eax
	je	.L111
.L110:
	movl	$0, %eax
	jmp	.L118
.L111:
	leaq	-44(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L112
	movl	-44(%rbp), %eax
	cmpl	$22, %eax
	je	.L113
.L112:
	movl	$0, %eax
	jmp	.L118
.L113:
	leaq	-44(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L114
	movl	-44(%rbp), %eax
	cmpl	$256, %eax
	je	.L115
.L114:
	movl	$0, %eax
	jmp	.L118
.L115:
	leaq	-44(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L116
	movl	-44(%rbp), %eax
	cmpl	$1, %eax
	je	.L117
.L116:
	movl	$0, %eax
	jmp	.L118
.L117:
	movl	$1, %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	validate_ccs, .-validate_ccs
	.data
	.align 32
	.type	tests, @object
	.size	tests, 560
tests:
	.quad	1
	.long	0
	.zero	4
	.quad	3
	.long	0
	.zero	4
	.quad	2
	.long	0
	.zero	4
	.quad	4660
	.long	0
	.zero	4
	.quad	4656
	.long	0
	.zero	4
	.quad	4661
	.long	0
	.zero	4
	.quad	65535
	.long	0
	.zero	4
	.quad	65537
	.long	0
	.zero	4
	.quad	65534
	.long	0
	.zero	4
	.quad	65536
	.long	0
	.zero	4
	.quad	65537
	.long	1
	.zero	4
	.quad	255
	.long	1
	.zero	4
	.quad	1048576
	.long	0
	.zero	4
	.quad	8388608
	.long	0
	.zero	4
	.quad	8388577
	.long	0
	.zero	4
	.quad	16777215
	.long	0
	.zero	4
	.quad	16777216
	.long	0
	.zero	4
	.quad	16777214
	.long	0
	.zero	4
	.quad	16777215
	.long	1
	.zero	4
	.quad	16777232
	.long	0
	.zero	4
	.quad	16777213
	.long	0
	.zero	4
	.quad	16777233
	.long	0
	.zero	4
	.quad	18
	.long	1
	.zero	4
	.quad	16777234
	.long	0
	.zero	4
	.quad	33554431
	.long	0
	.zero	4
	.quad	33554432
	.long	0
	.zero	4
	.quad	33489150
	.long	1
	.zero	4
	.quad	33554433
	.long	0
	.zero	4
	.quad	34603007
	.long	0
	.zero	4
	.quad	34624768
	.long	0
	.zero	4
	.quad	34603006
	.long	1
	.zero	4
	.quad	34624767
	.long	0
	.zero	4
	.quad	34734079
	.long	0
	.zero	4
	.quad	34668544
	.long	1
	.zero	4
	.quad	34734080
	.long	0
	.zero	4
	.section	.rodata
.LC13:
	.string	"sess"
.LC14:
	.string	"handshake_md"
	.align 8
.LC15:
	.string	"EVP_DigestInit_ex(handshake_md, EVP_md5_sha1(), NULL)"
.LC16:
	.string	"ctx"
	.align 8
.LC17:
	.string	"SSL_CTX_set_min_proto_version(ctx, DTLS1_BAD_VER)"
	.align 8
.LC18:
	.string	"SSL_CTX_set_max_proto_version(ctx, DTLS1_BAD_VER)"
	.align 8
.LC19:
	.string	"SSL_CTX_set_options(ctx, SSL_OP_LEGACY_SERVER_CONNECT)"
.LC20:
	.string	"AES128-SHA"
	.align 8
.LC21:
	.string	"SSL_CTX_set_cipher_list(ctx, \"AES128-SHA\")"
.LC22:
	.string	"con"
.LC23:
	.string	"SSL_set_session(con, sess)"
.LC24:
	.string	"rbio"
.LC25:
	.string	"wbio"
.LC26:
	.string	"BIO_up_ref(rbio)"
.LC27:
	.string	"BIO_up_ref(wbio)"
.LC28:
	.string	"ret"
.LC29:
	.string	"SSL_ERROR_WANT_READ"
.LC30:
	.string	"SSL_get_error(con, ret)"
.LC31:
	.string	"1"
.LC32:
	.string	"validate_client_hello(wbio)"
.LC33:
	.string	"send_hello_verify(rbio)"
.LC34:
	.string	"2"
.LC35:
	.string	"send_server_hello(rbio)"
.LC36:
	.string	"send_finished(con, rbio)"
.LC37:
	.string	"validate_ccs(wbio)"
	.align 8
.LC38:
	.string	"send_record(rbio, SSL3_RT_APPLICATION_DATA, tests[i].seq, &tests[i].seq, sizeof(uint64_t))"
	.align 8
.LC39:
	.string	"Failed to send data seq #0x%x%08x (%d)\n"
.LC40:
	.string	"(int)sizeof(uint64_t)"
	.align 8
.LC41:
	.string	"SSL_read failed or wrong size on seq#0x%x%08x (%d)\n"
.LC42:
	.string	"recv_buf[0] == tests[i].seq"
.LC43:
	.string	"tests[i-1].drop"
	.text
	.type	test_bad_dtls, @function
test_bad_dtls:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -36(%rbp)
	leaq	session_id(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	leaq	master_secret(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	leaq	cookie(%rip), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	leaq	4+server_random(%rip), %rax
	movl	$28, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, server_random(%rip)
	call	client_session
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$484, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L150
	call	EVP_MD_CTX_new@PLT
	movq	%rax, handshake_md(%rip)
	movq	handshake_md(%rip), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$488, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L151
	call	EVP_md5_sha1@PLT
	movq	%rax, %rcx
	movq	handshake_md(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$489, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L151
	call	DTLS_client_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$494, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L152
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$256, %edx
	movl	$123, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$495, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L152
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$256, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$496, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L152
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_options@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$497, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L152
	leaq	.LC20(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$499, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L152
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_security_level@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$504, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L153
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$505, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L153
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$511, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L154
	movq	-32(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$512, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L154
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$517, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L130
	movq	$0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L121
.L130:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$526, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L131
	movq	$0, -32(%rbp)
	jmp	.L121
.L131:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$535, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L155
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$536, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L155
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	validate_client_hello
	movl	%eax, %esi
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$537, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L155
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	send_hello_verify
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$538, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L155
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$542, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L156
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$543, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L156
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	validate_client_hello
	movl	%eax, %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$544, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L156
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	send_server_hello
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$545, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L156
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$549, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L157
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$550, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L157
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	send_finished
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$551, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L157
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_do_handshake@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$555, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L158
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	validate_ccs
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$556, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L158
	movl	$0, -40(%rbp)
	jmp	.L140
.L147:
	movl	-40(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	tests(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-40(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	tests(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$8, %r8d
	movl	$23, %esi
	movq	%rax, %rdi
	call	send_record
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$567, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L141
	movl	-40(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	%eax, %edi
	movl	-40(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	-40(%rbp), %ecx
	leaq	.LC39(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ecx, %r9d
	movl	%edi, %r8d
	movl	%esi, %ecx
	movl	$569, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L121
.L141:
	movl	-40(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L159
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %esi
	leaq	.LC40(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$8, %r9d
	movl	%esi, %r8d
	movl	$578, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L145
	movl	-40(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	%eax, %edi
	movl	-40(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	shrq	$32, %rax
	movl	%eax, %esi
	movl	-40(%rbp), %ecx
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%ecx, %r9d
	movl	%edi, %r8d
	movl	%esi, %ecx
	movl	$579, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L121
.L145:
	movq	-80(%rbp), %rdx
	movl	-40(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	tests(%rip), %rax
	movq	(%rcx,%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$583, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L160
	jmp	.L144
.L159:
	nop
.L144:
	addl	$1, -40(%rbp)
.L140:
	cmpl	$34, -40(%rbp)
	jle	.L147
	movl	-40(%rbp), %eax
	subl	$1, %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$588, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L161
	movl	$1, -36(%rbp)
	jmp	.L121
.L150:
	nop
	jmp	.L121
.L151:
	nop
	jmp	.L121
.L152:
	nop
	jmp	.L121
.L153:
	nop
	jmp	.L121
.L154:
	nop
	jmp	.L121
.L155:
	nop
	jmp	.L121
.L156:
	nop
	jmp	.L121
.L157:
	nop
	jmp	.L121
.L158:
	nop
	jmp	.L121
.L160:
	nop
	jmp	.L121
.L161:
	nop
.L121:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	handshake_md(%rip), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	test_bad_dtls, .-test_bad_dtls
	.section	.rodata
.LC44:
	.string	"test_bad_dtls"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_bad_dtls(%rip), %rdx
	leaq	.LC44(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	setup_tests, .-setup_tests
	.data
	.align 32
	.type	session_asn1.7, @object
	.size	session_asn1.7, 97
session_asn1.7:
	.string	"0_\002\001\001\002\002\001"
	.string	"\004\002"
	.string	"/\004 "
	.zero	31
	.string	"\0040"
	.zero	47
	.align 32
	.type	hello_verify.6, @object
	.size	hello_verify.6, 48
hello_verify.6:
	.base64	"FgEAAAAAAAAAAAAAIwMAABcAAAAAAAAAFwEAFAAAAAAAAAAAAAAAAAAAAAAAAAAA"
	.align 32
	.type	server_hello.5, @object
	.size	server_hello.5, 95
server_hello.5:
	.string	"\026\001"
	.zero	7
	.string	"\001"
	.string	"R\002"
	.string	""
	.string	"F"
	.string	"\001"
	.zero	4
	.string	"F\001"
	.zero	32
	.string	" "
	.zero	32
	.string	"/"
	.align 16
	.type	change_cipher_spec.4, @object
	.size	change_cipher_spec.4, 16
change_cipher_spec.4:
	.base64	"FAEAAAAAAAAAAAIAAwEAAg=="
	.local	seq.3
	.comm	seq.3,6,1
	.type	epoch.2, @object
	.size	epoch.2, 2
epoch.2:
	.string	""
	.ascii	"\001"
	.type	ver.1, @object
	.size	ver.1, 2
ver.1:
	.string	"\001"
	.align 16
	.type	finished_msg.0, @object
	.size	finished_msg.0, 24
finished_msg.0:
	.base64	"FAAADAADAAAAAAAMAA=="
	.zero	11
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
