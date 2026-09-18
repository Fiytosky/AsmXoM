	.file	"servername_test.c"
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
	ja	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
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
.L9:
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
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L12:
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
	jnb	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L21:
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
.LFE522:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.section	.rodata
.LC0:
	.string	"../include/internal/packet.h"
	.text
	.type	PACKET_strndup, @function
PACKET_strndup:
.LFB527:
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
.LFE527:
	.size	PACKET_strndup, .-PACKET_strndup
	.type	PACKET_contains_zero_byte, @function
PACKET_contains_zero_byte:
.LFB528:
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
.LFE528:
	.size	PACKET_contains_zero_byte, .-PACKET_contains_zero_byte
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
	jnb	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-16(%rbp), %rdx
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
	je	.L33
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L34
.L33:
	movl	$0, %eax
	jmp	.L36
.L34:
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
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	PACKET_get_length_prefixed_1, .-PACKET_get_length_prefixed_1
	.type	PACKET_get_length_prefixed_2, @function
PACKET_get_length_prefixed_2:
.LFB532:
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
.LFE532:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
	.type	PACKET_as_length_prefixed_2, @function
PACKET_as_length_prefixed_2:
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
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L43
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	je	.L43
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L44
.L43:
	movl	$0, %eax
	jmp	.L46
.L44:
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
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PACKET_as_length_prefixed_2, .-PACKET_as_length_prefixed_2
	.section	.rodata
.LC1:
	.string	"dummy-host"
	.section	.data.rel.local,"aw"
	.align 8
	.type	host, @object
	.size	host, 8
host:
	.quad	.LC1
	.local	cert
	.comm	cert,8,8
	.local	privkey
	.comm	privkey,8,8
	.local	maxversion
	.comm	maxversion,4,4
	.section	.rodata
.LC2:
	.string	"0"
	.align 8
.LC3:
	.string	"len = BIO_get_mem_data(bio, (char **)&data)"
.LC4:
	.string	"../test/servername_test.c"
	.align 8
.LC5:
	.string	"PACKET_buf_init(&pkt, data, len)"
	.align 8
.LC6:
	.string	"PACKET_forward(&pkt, SSL3_HM_HEADER_LENGTH)"
	.align 8
.LC7:
	.string	"PACKET_forward(&pkt, CLIENT_VERSION_LEN + SSL3_RANDOM_SIZE)"
	.align 8
.LC8:
	.string	"PACKET_get_length_prefixed_1(&pkt, &pkt2)"
	.align 8
.LC9:
	.string	"PACKET_get_length_prefixed_2(&pkt, &pkt2)"
	.align 8
.LC10:
	.string	"PACKET_as_length_prefixed_2(&pkt, &pkt2)"
	.align 8
.LC11:
	.string	"PACKET_get_net_2(&pkt2, &type)"
	.align 8
.LC12:
	.string	"PACKET_get_length_prefixed_2(&pkt2, &pkt3)"
	.align 8
.LC13:
	.string	"PACKET_get_length_prefixed_2(&pkt3, &pkt4)"
.LC14:
	.string	"PACKET_remaining(&pkt4)"
	.align 8
.LC15:
	.string	"PACKET_get_1(&pkt4, &servname_type)"
.LC16:
	.string	"TLSEXT_NAMETYPE_host_name"
.LC17:
	.string	"servname_type"
	.align 8
.LC18:
	.string	"PACKET_get_length_prefixed_2(&pkt4, &pkt5)"
.LC19:
	.string	"TLSEXT_MAXLEN_host_name"
.LC20:
	.string	"PACKET_remaining(&pkt5)"
	.align 8
.LC21:
	.string	"PACKET_contains_zero_byte(&pkt5)"
.LC22:
	.string	"PACKET_strndup(&pkt5, sni)"
	.text
	.type	get_sni_from_client_hello, @function
get_sni_from_client_hello:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -4(%rbp)
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-64(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-80(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-96(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-112(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-24(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_long_ge@PLT
	testl	%eax, %eax
	je	.L58
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$56, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	leaq	-48(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L58
	leaq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$60, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	leaq	-48(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$62, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$65, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$67, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$69, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_as_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC10(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	jmp	.L51
.L56:
	leaq	-120(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$76, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$77, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movl	-120(%rbp), %eax
	testl	%eax, %eax
	jne	.L51
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$80, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$81, %esi
	movq	%rax, %rdi
	call	test_uint_ne@PLT
	testl	%eax, %eax
	je	.L60
	leaq	-116(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movl	-116(%rbp), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L60
	leaq	-112(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$84, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$255, %r9d
	movl	%esi, %r8d
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_uint_le@PLT
	testl	%eax, %eax
	je	.L60
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_contains_zero_byte
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L60
	movq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_strndup
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movl	$1, -4(%rbp)
	jmp	.L50
.L51:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L56
	jmp	.L50
.L58:
	nop
	jmp	.L50
.L59:
	nop
	jmp	.L50
.L60:
	nop
.L50:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	get_sni_from_client_hello, .-get_sni_from_client_hello
	.section	.rodata
.LC23:
	.string	"ctx"
	.align 8
.LC24:
	.string	"SSL_CTX_set_max_proto_version(ctx, maxversion)"
.LC25:
	.string	"con"
.LC26:
	.string	"rbio"
.LC27:
	.string	"wbio"
.LC28:
	.string	"SSL_connect(con)"
	.align 8
.LC29:
	.string	"get_sni_from_client_hello(wbio, &hostname)"
.LC30:
	.string	"host"
.LC31:
	.string	"hostname"
	.text
	.type	client_setup_sni_before_state, @function
client_setup_sni_before_state:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -12(%rbp)
	call	TLS_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rcx
	movl	$108, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L72
	movl	maxversion(%rip), %eax
	testl	%eax, %eax
	jle	.L64
	movl	maxversion(%rip), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$112, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L73
.L64:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rcx
	movl	$116, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	movq	host(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$55, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rcx
	movl	$124, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	movq	-40(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rcx
	movl	$124, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L67
.L66:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L63
.L67:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$132, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L75
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_sni_from_client_hello
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$135, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	movq	host(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$138, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L77
	movl	$1, -12(%rbp)
	jmp	.L63
.L72:
	nop
	jmp	.L63
.L73:
	nop
	jmp	.L63
.L74:
	nop
	jmp	.L63
.L75:
	nop
	jmp	.L63
.L76:
	nop
	jmp	.L63
.L77:
	nop
.L63:
	movq	-48(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movl	$143, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	client_setup_sni_before_state, .-client_setup_sni_before_state
	.type	client_setup_sni_after_state, @function
client_setup_sni_after_state:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -12(%rbp)
	call	TLS_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rcx
	movl	$160, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L89
	movl	maxversion(%rip), %eax
	testl	%eax, %eax
	jle	.L81
	movl	maxversion(%rip), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$124, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$164, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L90
.L81:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rcx
	movl	$168, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L91
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rcx
	movl	$173, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L83
	movq	-40(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rcx
	movl	$173, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L84
.L83:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L80
.L84:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_bio@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_set_connect_state@PLT
	movq	host(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$55, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$185, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L92
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_sni_from_client_hello
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$188, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L93
	movq	host(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$191, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L94
	movl	$1, -12(%rbp)
	jmp	.L80
.L89:
	nop
	jmp	.L80
.L90:
	nop
	jmp	.L80
.L91:
	nop
	jmp	.L80
.L92:
	nop
	jmp	.L80
.L93:
	nop
	jmp	.L80
.L94:
	nop
.L80:
	movq	-48(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movl	$196, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	client_setup_sni_after_state, .-client_setup_sni_after_state
	.section	.rodata
	.align 8
.LC32:
	.string	"create_ssl_ctx_pair(NULL, TLS_server_method(), TLS_client_method(), TLS1_VERSION, 0, &sctx, &cctx, cert, privkey)"
	.align 8
.LC33:
	.string	"create_ssl_objects(sctx, cctx, &serverssl, &clientssl, NULL, NULL)"
	.align 8
.LC34:
	.string	"create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)"
	.align 8
.LC35:
	.string	"SSL_get_servername(serverssl, TLSEXT_NAMETYPE_host_name)"
	.text
	.type	server_setup_sni, @function
server_setup_sni:
.LFB566:
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
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -36(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	TLS_client_method@PLT
	movq	%rax, %r13
	call	TLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-56(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-48(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$769, %ecx
	movq	%r13, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$208, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$212, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L102
	movq	host(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$55, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movl	%eax, %ecx
	movl	$219, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L103
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_servername@PLT
	movq	%rax, %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$222, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L104
	movl	$1, -36(%rbp)
	jmp	.L98
.L102:
	nop
	jmp	.L98
.L103:
	nop
	jmp	.L98
.L104:
	nop
.L98:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-36(%rbp), %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	server_setup_sni, .-server_setup_sni
	.section	.data.rel.local
	.align 16
	.type	sni_test_fns, @object
	.size	sni_test_fns, 24
sni_test_fns:
	.quad	client_setup_sni_before_state
	.quad	client_setup_sni_after_state
	.quad	server_setup_sni
	.text
	.type	test_servername, @function
test_servername:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sni_test_fns(%rip), %rax
	movq	(%rdx,%rax), %rax
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	test_servername, .-test_servername
	.section	.rodata
.LC36:
	.string	"Error parsing test options\n"
.LC37:
	.string	"cert = test_get_argument(0)"
	.align 8
.LC38:
	.string	"privkey = test_get_argument(1)"
.LC39:
	.string	"test_servername"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L108
	leaq	.LC36(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L109
.L108:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rcx
	movl	$262, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L110
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rcx
	movl	$263, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L111
.L110:
	movl	$0, %eax
	jmp	.L109
.L111:
	leaq	test_servername(%rip), %rsi
	leaq	.LC39(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L109:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
