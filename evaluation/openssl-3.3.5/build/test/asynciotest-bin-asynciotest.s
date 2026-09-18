	.file	"asynciotest.c"
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
	jnb	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-16(%rbp), %rdx
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
	je	.L29
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L30
.L29:
	movl	$0, %eax
	jmp	.L32
.L30:
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
.L32:
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
	je	.L34
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L35
.L34:
	movl	$0, %eax
	jmp	.L37
.L35:
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
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
	.local	fragment
	.comm	fragment,4,4
	.local	cert
	.comm	cert,8,8
	.local	privkey
	.comm	privkey,8,8
	.local	methods_async
	.comm	methods_async,8,8
	.section	.rodata
.LC0:
	.string	"Async filter"
	.text
	.type	bio_f_async_filter, @function
bio_f_async_filter:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	methods_async(%rip), %rax
	testq	%rax, %rax
	jne	.L39
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movl	$640, %edi
	call	BIO_meth_new@PLT
	movq	%rax, methods_async(%rip)
	movq	methods_async(%rip), %rax
	testq	%rax, %rax
	je	.L40
	movq	methods_async(%rip), %rax
	leaq	async_write(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_write@PLT
	testl	%eax, %eax
	je	.L40
	movq	methods_async(%rip), %rax
	leaq	async_read(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_read@PLT
	testl	%eax, %eax
	je	.L40
	movq	methods_async(%rip), %rax
	leaq	async_puts(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_puts@PLT
	testl	%eax, %eax
	je	.L40
	movq	methods_async(%rip), %rax
	leaq	async_gets(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_gets@PLT
	testl	%eax, %eax
	je	.L40
	movq	methods_async(%rip), %rax
	leaq	async_ctrl(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_ctrl@PLT
	testl	%eax, %eax
	je	.L40
	movq	methods_async(%rip), %rax
	leaq	async_new(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_create@PLT
	testl	%eax, %eax
	je	.L40
	movq	methods_async(%rip), %rax
	leaq	async_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_destroy@PLT
	testl	%eax, %eax
	jne	.L39
.L40:
	movl	$0, %eax
	jmp	.L41
.L39:
	movq	methods_async(%rip), %rax
.L41:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	bio_f_async_filter, .-bio_f_async_filter
	.section	.rodata
.LC1:
	.string	"../test/asynciotest.c"
	.text
	.type	async_new, @function
async_new:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$66, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	async_new, .-async_new
	.type	async_free, @function
async_free:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$82, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	async_free, .-async_free
	.type	async_read, @function
async_read:
.LFB566:
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
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	cmpq	$0, -16(%rbp)
	jne	.L51
	movl	$0, %eax
	jmp	.L50
.L51:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L52
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L53
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L53
	movq	-40(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L53:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L54
.L52:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L54:
	movl	-4(%rbp), %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	async_read, .-async_read
	.type	async_write, @function
async_write:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	cmpl	$0, -196(%rbp)
	jg	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	cmpq	$0, -24(%rbp)
	jne	.L58
	movl	$0, %eax
	jmp	.L57
.L58:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -32(%rbp)
	movq	-184(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L59
	movq	-32(%rbp), %rax
	movl	$0, 4(%rax)
	movl	fragment(%rip), %eax
	testl	%eax, %eax
	je	.L60
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L63
	movl	$-1, %eax
	jmp	.L57
.L84:
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
	leaq	-116(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L64
	leaq	-120(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L64
	leaq	-124(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L64
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L65
.L64:
	movl	$-1, %eax
	jmp	.L66
.L65:
	addq	$5, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movl	-116(%rbp), %eax
	cmpl	$22, %eax
	jne	.L67
	leaq	-132(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L67
	movl	$-1, %eax
	jmp	.L66
.L67:
	movl	-132(%rbp), %eax
	cmpl	$2, %eax
	jne	.L78
	leaq	-80(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L69
	leaq	-136(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L69
	leaq	-80(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L69
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	je	.L69
	leaq	-80(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L69
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L71
.L69:
	movl	$-1, %eax
	jmp	.L66
.L77:
	leaq	-140(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L72
	leaq	-160(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L73
.L72:
	movl	$-1, %eax
	jmp	.L74
.L73:
	movl	-140(%rbp), %eax
	cmpl	$43, %eax
	jne	.L71
	leaq	-136(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L76
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L71
.L76:
	movl	$-1, %eax
.L74:
	jmp	.L57
.L71:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L77
	jmp	.L78
.L80:
	movl	$0, -166(%rbp)
	movw	$1, -162(%rbp)
	movl	-116(%rbp), %eax
	movb	%al, -166(%rbp)
	movl	-120(%rbp), %eax
	movb	%al, -165(%rbp)
	movl	-124(%rbp), %eax
	movb	%al, -164(%rbp)
	movl	-128(%rbp), %eax
	movb	%al, -161(%rbp)
	leaq	-166(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L79
	movl	$-1, %eax
	jmp	.L57
.L79:
	addq	$1, -16(%rbp)
.L78:
	leaq	-128(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L80
	movl	-116(%rbp), %eax
	cmpl	$20, %eax
	je	.L81
	movl	-136(%rbp), %eax
	cmpl	$772, %eax
	jne	.L63
	movl	-132(%rbp), %eax
	cmpl	$2, %eax
	jne	.L63
.L81:
	movl	$0, fragment(%rip)
	jmp	.L60
.L66:
	jmp	.L57
.L63:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L84
.L60:
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	cmpl	%eax, -196(%rbp)
	jle	.L85
	movl	-196(%rbp), %eax
	movq	-16(%rbp), %rdx
	subl	%edx, %eax
	movl	%eax, %esi
	movq	-192(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -4(%rbp)
.L85:
	cmpl	$0, -4(%rbp)
	jg	.L86
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L86
	movq	-184(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L88
.L86:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	jmp	.L88
.L59:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-184(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L88:
	movl	-4(%rbp), %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	async_write, .-async_write
	.type	async_ctrl, @function
async_ctrl:
.LFB568:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	cmpl	$12, -28(%rbp)
	jne	.L92
	movq	$0, -8(%rbp)
	jmp	.L93
.L92:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	nop
.L93:
	movq	-8(%rbp), %rax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	async_ctrl, .-async_ctrl
	.type	async_gets, @function
async_gets:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	async_gets, .-async_gets
	.type	async_puts, @function
async_puts:
.LFB570:
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
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	async_write
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	async_puts, .-async_puts
	.section	.rodata
	.align 8
.LC2:
	.string	"create_ssl_ctx_pair(NULL, TLS_server_method(), TLS_client_method(), TLS1_VERSION, 0, &serverctx, &clientctx, cert, privkey)"
.LC3:
	.string	"s_to_c_fbio"
.LC4:
	.string	"c_to_s_fbio"
	.align 8
.LC5:
	.string	"create_ssl_objects(serverctx, clientctx, &serverssl, &clientssl, s_to_c_fbio, c_to_s_fbio)"
	.align 8
.LC6:
	.string	"create_ssl_connection(serverssl, clientssl, SSL_ERROR_NONE)"
	.align 8
.LC7:
	.string	"ssl_error == SSL_ERROR_SYSCALL || ssl_error == SSL_ERROR_SSL"
.LC8:
	.string	"sizeof(testdata)"
.LC9:
	.string	"len"
.LC10:
	.string	"buf"
.LC11:
	.string	"testdata"
	.text
	.type	test_asyncio, @function
test_asyncio:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -164(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -36(%rbp)
	movabsq	$8386094071696024916, %rax
	movq	%rax, -138(%rbp)
	movw	$97, -130(%rbp)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	TLS_client_method@PLT
	movq	%rax, %r13
	call	TLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-104(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-112(%rbp), %rax
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
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$299, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L127
	cmpl	$1, -164(%rbp)
	jne	.L101
	movl	$1, fragment(%rip)
.L101:
	call	bio_f_async_filter
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -72(%rbp)
	call	bio_f_async_filter
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$317, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L102
	movq	-80(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$318, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L103
.L102:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L100
.L103:
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	leaq	-128(%rbp), %rcx
	leaq	-120(%rbp), %rdx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$325, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L128
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$327, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L128
	movq	$0, -56(%rbp)
	jmp	.L106
.L125:
	movl	$-1, -84(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L107
.L114:
	movl	-60(%rbp), %eax
	movl	$10, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	movl	-60(%rbp), %eax
	cltq
	leaq	-138(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movq	-128(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_write@PLT
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jle	.L108
	movl	-84(%rbp), %eax
	addl	%eax, -60(%rbp)
	jmp	.L109
.L108:
	movq	-128(%rbp), %rax
	movl	-84(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -88(%rbp)
	cmpl	$5, -88(%rbp)
	je	.L110
	cmpl	$1, -88(%rbp)
	jne	.L111
.L110:
	movl	$1, %ecx
	jmp	.L112
.L111:
	movl	$0, %ecx
.L112:
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$351, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L129
.L109:
	addq	$1, -48(%rbp)
.L107:
	cmpl	$10, -60(%rbp)
	je	.L113
	cmpq	$1, -48(%rbp)
	jbe	.L114
.L113:
	movl	-60(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$10, %r9d
	movq	%rsi, %r8
	movl	$356, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L130
	movl	$-1, -84(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L116
.L123:
	movl	-60(%rbp), %eax
	movl	$10, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	movl	-60(%rbp), %eax
	cltq
	leaq	-148(%rbp), %rdx
	leaq	(%rdx,%rax), %rcx
	movq	-120(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_read@PLT
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jle	.L117
	movl	-84(%rbp), %eax
	addl	%eax, -60(%rbp)
	jmp	.L118
.L117:
	movq	-120(%rbp), %rax
	movl	-84(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -92(%rbp)
	cmpl	$5, -92(%rbp)
	je	.L119
	cmpl	$1, -92(%rbp)
	jne	.L120
.L119:
	movl	$1, %ecx
	jmp	.L121
.L120:
	movl	$0, %ecx
.L121:
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$372, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L131
.L118:
	addq	$1, -48(%rbp)
.L116:
	cmpl	$10, -60(%rbp)
	je	.L122
	cmpq	$99, -48(%rbp)
	jbe	.L123
.L122:
	movl	-60(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-138(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	leaq	-148(%rbp), %rsi
	pushq	%rsi
	movl	$10, %r9d
	movq	%rdi, %r8
	movl	$377, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L132
	addq	$1, -56(%rbp)
.L106:
	cmpq	$1, -56(%rbp)
	jbe	.L125
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	$0, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	$1, -36(%rbp)
	jmp	.L100
.L127:
	nop
	jmp	.L100
.L128:
	nop
	jmp	.L100
.L129:
	nop
	jmp	.L100
.L130:
	nop
	jmp	.L100
.L131:
	nop
	jmp	.L100
.L132:
	nop
.L100:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-104(%rbp), %rax
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
.LFE571:
	.size	test_asyncio, .-test_asyncio
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC12:
	.string	"Error parsing test options\n"
.LC13:
	.string	"cert = test_get_argument(0)"
	.align 8
.LC14:
	.string	"privkey = test_get_argument(1)"
.LC15:
	.string	"test_asyncio"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L136
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$402, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L137
.L136:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$406, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L138
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$407, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L139
.L138:
	movl	$0, %eax
	jmp	.L137
.L139:
	leaq	test_asyncio(%rip), %rsi
	leaq	.LC15(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L137:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	methods_async(%rip), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 8
.LC16:
	.string	"Usage: %s [options] certname privkey\n"
.LC17:
	.string	"Valid options are:\n"
.LC18:
	.string	"help"
.LC19:
	.string	"Display this summary"
.LC20:
	.string	"list"
	.align 8
.LC21:
	.string	"Display the list of tests available"
.LC22:
	.string	"test"
	.align 8
.LC23:
	.string	"Run a single test by id or name"
.LC24:
	.string	"iter"
	.align 8
.LC25:
	.string	"Run a single iteration of a test"
.LC26:
	.string	"indent"
	.align 8
.LC27:
	.string	"Number of tabs added to output"
.LC28:
	.string	"seed"
	.align 8
.LC29:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC16
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	500
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	501
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	502
	.long	115
	.quad	.LC23
	.quad	.LC24
	.long	503
	.long	110
	.quad	.LC25
	.quad	.LC26
	.long	504
	.long	112
	.quad	.LC27
	.quad	.LC28
	.long	505
	.long	110
	.quad	.LC29
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
