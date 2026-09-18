	.file	"quic_trace.c"
	.text
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
	jns	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	PACKET_buf_init, .-PACKET_buf_init
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
.LC0:
	.string	"Initial"
.LC1:
	.string	"0RTT"
.LC2:
	.string	"Handshake"
.LC3:
	.string	"Retry"
.LC4:
	.string	"1RTT"
.LC5:
	.string	"VersionNeg"
.LC6:
	.string	"Unknown"
	.text
	.type	packet_type, @function
packet_type:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$6, -4(%rbp)
	je	.L21
	cmpl	$6, -4(%rbp)
	jg	.L22
	cmpl	$5, -4(%rbp)
	je	.L23
	cmpl	$5, -4(%rbp)
	jg	.L22
	cmpl	$4, -4(%rbp)
	je	.L24
	cmpl	$4, -4(%rbp)
	jg	.L22
	cmpl	$3, -4(%rbp)
	je	.L25
	cmpl	$3, -4(%rbp)
	jg	.L22
	cmpl	$1, -4(%rbp)
	je	.L26
	cmpl	$2, -4(%rbp)
	je	.L27
	jmp	.L22
.L26:
	leaq	.LC0(%rip), %rax
	jmp	.L28
.L27:
	leaq	.LC1(%rip), %rax
	jmp	.L28
.L25:
	leaq	.LC2(%rip), %rax
	jmp	.L28
.L24:
	leaq	.LC3(%rip), %rax
	jmp	.L28
.L23:
	leaq	.LC4(%rip), %rax
	jmp	.L28
.L21:
	leaq	.LC5(%rip), %rax
	jmp	.L28
.L22:
	leaq	.LC6(%rip), %rax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	packet_type, .-packet_type
	.section	.rodata
.LC7:
	.string	"%c"
	.text
	.type	put_str, @function
put_str:
.LFB730:
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
	movq	$0, -8(%rbp)
	jmp	.L30
.L31:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	leaq	.LC7(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$1, -8(%rbp)
.L30:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L31
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	put_str, .-put_str
	.section	.rodata
.LC8:
	.string	"%02x"
	.text
	.type	put_data, @function
put_data:
.LFB731:
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
	movq	$0, -8(%rbp)
	jmp	.L33
.L34:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC8(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$1, -8(%rbp)
.L33:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L34
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	put_data, .-put_data
	.section	.rodata
.LC9:
	.string	"<zero length id>"
.LC10:
	.string	"0x"
	.text
	.type	put_conn_id, @function
put_conn_id:
.LFB732:
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
	testb	%al, %al
	jne	.L36
	leaq	.LC9(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L35
.L36:
	leaq	.LC10(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	put_data
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	put_conn_id, .-put_conn_id
	.section	.rodata
.LC11:
	.string	"<zero length token>"
	.text
	.type	put_token, @function
put_token:
.LFB733:
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
	jne	.L39
	leaq	.LC11(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L41
.L39:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	put_data
.L41:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	put_token, .-put_token
	.section	.rodata
.LC12:
	.string	"../ssl/quic/quic_trace.c"
.LC13:
	.string	"    Largest acked: %llu\n"
.LC14:
	.string	"    Ack delay (raw) %llu\n"
.LC15:
	.string	"    Ack range count: %llu\n"
.LC16:
	.string	"    First ack range: %llu\n"
.LC17:
	.string	"    Gap: %llu\n"
.LC18:
	.string	"    Ack range len: %llu\n"
	.text
	.type	frame_ack, @function
frame_ack:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -12(%rbp)
	leaq	-88(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_ack_num_ranges@PLT
	testl	%eax, %eax
	je	.L43
	movq	-88(%rbp), %rax
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L43
	movq	-88(%rbp), %rax
	salq	$4, %rax
	leaq	.LC12(%rip), %rcx
	movl	$87, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L44
.L43:
	movl	-12(%rbp), %eax
	jmp	.L50
.L44:
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_ack@PLT
	testl	%eax, %eax
	je	.L51
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.LC13(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movq	%rax, %rdx
	leaq	.LC14(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-88(%rbp), %rax
	leaq	-1(%rax), %rdx
	leaq	.LC15(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	leaq	.LC16(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	$1, -8(%rbp)
	jmp	.L48
.L49:
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	subq	$2, %rdx
	leaq	.LC17(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	leaq	.LC18(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$1, -8(%rbp)
.L48:
	movq	-88(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L49
	movl	$1, -12(%rbp)
	jmp	.L47
.L51:
	nop
.L47:
	leaq	.LC12(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$118, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	frame_ack, .-frame_ack
	.section	.rodata
.LC19:
	.string	"    Stream id: %llu\n"
	.align 8
.LC20:
	.string	"    App Protocol Error Code: %llu\n"
.LC21:
	.string	"    Final size: %llu\n"
	.text
	.type	frame_reset_stream, @function
frame_reset_stream:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_reset_stream@PLT
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L55
.L53:
	movq	-32(%rbp), %rdx
	leaq	.LC19(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rdx
	leaq	.LC20(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rdx
	leaq	.LC21(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	frame_reset_stream, .-frame_reset_stream
	.type	frame_stop_sending, @function
frame_stop_sending:
.LFB736:
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
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stop_sending@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L59
.L57:
	movq	-16(%rbp), %rdx
	leaq	.LC19(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-8(%rbp), %rdx
	leaq	.LC20(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	frame_stop_sending, .-frame_stop_sending
	.section	.rodata
.LC22:
	.string	"    Offset: %llu\n"
.LC23:
	.string	"    Len: %llu\n"
	.text
	.type	frame_crypto, @function
frame_crypto:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_crypto@PLT
	testl	%eax, %eax
	jne	.L61
	movl	$0, %eax
	jmp	.L63
.L61:
	movq	-32(%rbp), %rdx
	leaq	.LC22(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rdx
	leaq	.LC23(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	frame_crypto, .-frame_crypto
	.section	.rodata
.LC24:
	.string	"    Token: "
.LC25:
	.string	"\n"
	.text
	.type	frame_new_token, @function
frame_new_token:
.LFB738:
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
	leaq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_new_token@PLT
	testl	%eax, %eax
	jne	.L65
	movl	$0, %eax
	jmp	.L67
.L65:
	leaq	.LC24(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	put_token
	leaq	.LC25(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	frame_new_token, .-frame_new_token
	.section	.rodata
.LC26:
	.string	"Stream"
.LC27:
	.string	" (Fin)\n"
.LC28:
	.string	" (Len)\n"
.LC29:
	.string	" (Len, Fin)\n"
.LC30:
	.string	" (Off)\n"
.LC31:
	.string	" (Off, Fin)\n"
.LC32:
	.string	" (Off, Len)\n"
.LC33:
	.string	" (Off, Len, Fin)\n"
.LC34:
	.string	"    Len: <implicit length>\n"
	.text
	.type	frame_stream, @function
frame_stream:
.LFB739:
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
	leaq	.LC26(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	cmpq	$15, -72(%rbp)
	je	.L69
	cmpq	$15, -72(%rbp)
	ja	.L70
	cmpq	$14, -72(%rbp)
	je	.L71
	cmpq	$14, -72(%rbp)
	ja	.L70
	cmpq	$13, -72(%rbp)
	je	.L72
	cmpq	$13, -72(%rbp)
	ja	.L70
	cmpq	$12, -72(%rbp)
	je	.L73
	cmpq	$12, -72(%rbp)
	ja	.L70
	cmpq	$11, -72(%rbp)
	je	.L74
	cmpq	$11, -72(%rbp)
	ja	.L70
	cmpq	$10, -72(%rbp)
	je	.L75
	cmpq	$10, -72(%rbp)
	ja	.L70
	cmpq	$8, -72(%rbp)
	je	.L76
	cmpq	$9, -72(%rbp)
	je	.L77
	jmp	.L70
.L76:
	leaq	.LC25(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L78
.L77:
	leaq	.LC27(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L78
.L75:
	leaq	.LC28(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L78
.L74:
	leaq	.LC29(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L78
.L73:
	leaq	.LC30(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L78
.L72:
	leaq	.LC31(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L78
.L71:
	leaq	.LC32(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L78
.L69:
	leaq	.LC33(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L78
.L70:
	movl	$0, %eax
	jmp	.L83
.L78:
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stream@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L83
.L80:
	movq	-48(%rbp), %rdx
	leaq	.LC19(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-40(%rbp), %rdx
	leaq	.LC22(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movzbl	-16(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L81
	movq	-32(%rbp), %rdx
	leaq	.LC23(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L82
.L81:
	leaq	.LC34(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L82:
	movl	$1, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	frame_stream, .-frame_stream
	.section	.rodata
.LC35:
	.string	"    Max Data: %llu\n"
	.text
	.type	frame_max_data, @function
frame_max_data:
.LFB740:
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
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_data@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L87
.L85:
	movq	-8(%rbp), %rdx
	leaq	.LC35(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	frame_max_data, .-frame_max_data
	.section	.rodata
.LC36:
	.string	"    Max Stream Data: %llu\n"
	.text
	.type	frame_max_stream_data, @function
frame_max_stream_data:
.LFB741:
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
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_stream_data@PLT
	testl	%eax, %eax
	jne	.L89
	movl	$0, %eax
	jmp	.L91
.L89:
	movq	-16(%rbp), %rdx
	leaq	.LC36(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	frame_max_stream_data, .-frame_max_stream_data
	.section	.rodata
.LC37:
	.string	"    Max Streams: %llu\n"
	.text
	.type	frame_max_streams, @function
frame_max_streams:
.LFB742:
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
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_streams@PLT
	testl	%eax, %eax
	jne	.L93
	movl	$0, %eax
	jmp	.L95
.L93:
	movq	-8(%rbp), %rdx
	leaq	.LC37(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	frame_max_streams, .-frame_max_streams
	.type	frame_data_blocked, @function
frame_data_blocked:
.LFB743:
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
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_data_blocked@PLT
	testl	%eax, %eax
	jne	.L97
	movl	$0, %eax
	jmp	.L99
.L97:
	movq	-8(%rbp), %rdx
	leaq	.LC35(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	frame_data_blocked, .-frame_data_blocked
	.type	frame_stream_data_blocked, @function
frame_stream_data_blocked:
.LFB744:
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
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stream_data_blocked@PLT
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L103
.L101:
	movq	-8(%rbp), %rdx
	leaq	.LC19(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rdx
	leaq	.LC35(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	frame_stream_data_blocked, .-frame_stream_data_blocked
	.type	frame_streams_blocked, @function
frame_streams_blocked:
.LFB745:
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
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_streams_blocked@PLT
	testl	%eax, %eax
	jne	.L105
	movl	$0, %eax
	jmp	.L107
.L105:
	movq	-8(%rbp), %rdx
	leaq	.LC35(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	frame_streams_blocked, .-frame_streams_blocked
	.section	.rodata
.LC38:
	.string	"    Sequence Number: %llu\n"
.LC39:
	.string	"    Retire prior to: %llu\n"
.LC40:
	.string	"    Connection id: "
.LC41:
	.string	"\n    Stateless Reset Token: "
	.text
	.type	frame_new_conn_id, @function
frame_new_conn_id:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_new_conn_id@PLT
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L111
.L109:
	movq	-64(%rbp), %rdx
	leaq	.LC38(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-56(%rbp), %rdx
	leaq	.LC39(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC40(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	leaq	-64(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	put_conn_id
	leaq	.LC41(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	leaq	-64(%rbp), %rax
	leaq	37(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	put_data
	leaq	.LC25(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	frame_new_conn_id, .-frame_new_conn_id
	.type	frame_retire_conn_id, @function
frame_retire_conn_id:
.LFB747:
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
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_retire_conn_id@PLT
	testl	%eax, %eax
	jne	.L113
	movl	$0, %eax
	jmp	.L115
.L113:
	movq	-8(%rbp), %rdx
	leaq	.LC38(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	frame_retire_conn_id, .-frame_retire_conn_id
	.section	.rodata
.LC42:
	.string	"    Data: %016llx\n"
	.text
	.type	frame_path_challenge, @function
frame_path_challenge:
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
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_path_challenge@PLT
	testl	%eax, %eax
	jne	.L117
	movl	$0, %eax
	jmp	.L119
.L117:
	movq	-8(%rbp), %rdx
	leaq	.LC42(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	frame_path_challenge, .-frame_path_challenge
	.type	frame_path_response, @function
frame_path_response:
.LFB749:
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
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_path_response@PLT
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L123
.L121:
	movq	-8(%rbp), %rdx
	leaq	.LC42(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	frame_path_response, .-frame_path_response
	.section	.rodata
.LC43:
	.string	"    Error Code: %llu\n"
.LC44:
	.string	"    Reason: "
	.text
	.type	frame_conn_closed, @function
frame_conn_closed:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_conn_close@PLT
	testl	%eax, %eax
	jne	.L125
	movl	$0, %eax
	jmp	.L127
.L125:
	movq	-40(%rbp), %rdx
	leaq	.LC43(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC44(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	put_str
	leaq	.LC25(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	frame_conn_closed, .-frame_conn_closed
	.section	.rodata
.LC45:
	.string	"Ping\n"
.LC46:
	.string	"Padding\n"
.LC47:
	.string	"Ack "
.LC48:
	.string	" (with ECN)\n"
.LC49:
	.string	" (without ECN)\n"
.LC50:
	.string	"Reset stream\n"
.LC51:
	.string	"Stop sending\n"
.LC52:
	.string	"Crypto\n"
.LC53:
	.string	"New token\n"
.LC54:
	.string	"Max data\n"
.LC55:
	.string	"Max stream data\n"
.LC56:
	.string	"Max streams "
.LC57:
	.string	" (Bidi)\n"
.LC58:
	.string	" (Uni)\n"
.LC59:
	.string	"Data blocked\n"
.LC60:
	.string	"Stream data blocked\n"
.LC61:
	.string	"Streams blocked"
.LC62:
	.string	"New conn id\n"
.LC63:
	.string	"Retire conn id\n"
.LC64:
	.string	"Path challenge\n"
.LC65:
	.string	"Path response\n"
.LC66:
	.string	"Connection close"
.LC67:
	.string	" (app)\n"
.LC68:
	.string	" (transport)\n"
.LC69:
	.string	"Handshake done\n"
	.align 8
.LC70:
	.string	"    <unexpected trailing frame data skipped>\n"
	.text
	.type	trace_frame_data, @function
trace_frame_data:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	testl	%eax, %eax
	jne	.L129
	movl	$0, %eax
	jmp	.L180
.L129:
	movq	-8(%rbp), %rax
	cmpq	$30, %rax
	je	.L131
	cmpq	$30, %rax
	ja	.L132
	cmpq	$29, %rax
	ja	.L132
	cmpq	$28, %rax
	jnb	.L133
	cmpq	$27, %rax
	je	.L134
	cmpq	$27, %rax
	ja	.L132
	cmpq	$26, %rax
	je	.L135
	cmpq	$26, %rax
	ja	.L132
	cmpq	$25, %rax
	je	.L136
	cmpq	$25, %rax
	ja	.L132
	cmpq	$24, %rax
	je	.L137
	cmpq	$24, %rax
	ja	.L132
	cmpq	$23, %rax
	ja	.L132
	cmpq	$22, %rax
	jnb	.L138
	cmpq	$21, %rax
	je	.L139
	cmpq	$21, %rax
	ja	.L132
	cmpq	$20, %rax
	je	.L140
	cmpq	$20, %rax
	ja	.L132
	cmpq	$19, %rax
	ja	.L132
	cmpq	$18, %rax
	jnb	.L141
	cmpq	$17, %rax
	je	.L142
	cmpq	$17, %rax
	ja	.L132
	cmpq	$16, %rax
	je	.L143
	cmpq	$16, %rax
	ja	.L132
	cmpq	$15, %rax
	ja	.L132
	cmpq	$8, %rax
	jnb	.L144
	cmpq	$7, %rax
	je	.L145
	cmpq	$7, %rax
	ja	.L132
	cmpq	$6, %rax
	je	.L146
	cmpq	$6, %rax
	ja	.L132
	cmpq	$5, %rax
	je	.L147
	cmpq	$5, %rax
	ja	.L132
	cmpq	$4, %rax
	je	.L148
	cmpq	$4, %rax
	ja	.L132
	cmpq	$3, %rax
	ja	.L132
	cmpq	$2, %rax
	jnb	.L149
	testq	%rax, %rax
	je	.L150
	cmpq	$1, %rax
	jne	.L132
	leaq	.LC45(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_ping@PLT
	testl	%eax, %eax
	jne	.L181
	movl	$0, %eax
	jmp	.L180
.L150:
	leaq	.LC46(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_padding@PLT
	jmp	.L152
.L149:
	leaq	.LC47(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-8(%rbp), %rax
	cmpq	$3, %rax
	jne	.L153
	leaq	.LC48(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L154
.L153:
	leaq	.LC49(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L154:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_ack
	testl	%eax, %eax
	jne	.L182
	movl	$0, %eax
	jmp	.L180
.L148:
	leaq	.LC50(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_reset_stream
	testl	%eax, %eax
	jne	.L183
	movl	$0, %eax
	jmp	.L180
.L147:
	leaq	.LC51(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_stop_sending
	testl	%eax, %eax
	jne	.L184
	movl	$0, %eax
	jmp	.L180
.L146:
	leaq	.LC52(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_crypto
	testl	%eax, %eax
	jne	.L185
	movl	$0, %eax
	jmp	.L180
.L145:
	leaq	.LC53(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_new_token
	testl	%eax, %eax
	jne	.L186
	movl	$0, %eax
	jmp	.L180
.L144:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	frame_stream
	testl	%eax, %eax
	jne	.L187
	movl	$0, %eax
	jmp	.L180
.L143:
	leaq	.LC54(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_max_data
	testl	%eax, %eax
	jne	.L188
	movl	$0, %eax
	jmp	.L180
.L142:
	leaq	.LC55(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_max_stream_data
	testl	%eax, %eax
	jne	.L189
	movl	$0, %eax
	jmp	.L180
.L141:
	leaq	.LC56(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-8(%rbp), %rax
	cmpq	$18, %rax
	jne	.L163
	leaq	.LC57(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L164
.L163:
	leaq	.LC58(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L164:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_max_streams
	testl	%eax, %eax
	jne	.L190
	movl	$0, %eax
	jmp	.L180
.L140:
	leaq	.LC59(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_data_blocked
	testl	%eax, %eax
	jne	.L191
	movl	$0, %eax
	jmp	.L180
.L139:
	leaq	.LC60(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_stream_data_blocked
	testl	%eax, %eax
	jne	.L192
	movl	$0, %eax
	jmp	.L180
.L138:
	leaq	.LC61(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-8(%rbp), %rax
	cmpq	$22, %rax
	jne	.L168
	leaq	.LC57(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L169
.L168:
	leaq	.LC58(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L169:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_streams_blocked
	testl	%eax, %eax
	jne	.L193
	movl	$0, %eax
	jmp	.L180
.L137:
	leaq	.LC62(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_new_conn_id
	testl	%eax, %eax
	jne	.L194
	movl	$0, %eax
	jmp	.L180
.L136:
	leaq	.LC63(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_retire_conn_id
	testl	%eax, %eax
	jne	.L195
	movl	$0, %eax
	jmp	.L180
.L135:
	leaq	.LC64(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_path_challenge
	testl	%eax, %eax
	jne	.L196
	movl	$0, %eax
	jmp	.L180
.L134:
	leaq	.LC65(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_path_response
	testl	%eax, %eax
	jne	.L197
	movl	$0, %eax
	jmp	.L180
.L133:
	leaq	.LC66(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-8(%rbp), %rax
	cmpq	$29, %rax
	jne	.L175
	leaq	.LC67(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L176
.L175:
	leaq	.LC68(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L176:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	frame_conn_closed
	testl	%eax, %eax
	jne	.L198
	movl	$0, %eax
	jmp	.L180
.L131:
	leaq	.LC69(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_handshake_done@PLT
	testl	%eax, %eax
	jne	.L199
	movl	$0, %eax
	jmp	.L180
.L132:
	movl	$0, %eax
	jmp	.L180
.L181:
	nop
	jmp	.L152
.L182:
	nop
	jmp	.L152
.L183:
	nop
	jmp	.L152
.L184:
	nop
	jmp	.L152
.L185:
	nop
	jmp	.L152
.L186:
	nop
	jmp	.L152
.L187:
	nop
	jmp	.L152
.L188:
	nop
	jmp	.L152
.L189:
	nop
	jmp	.L152
.L190:
	nop
	jmp	.L152
.L191:
	nop
	jmp	.L152
.L192:
	nop
	jmp	.L152
.L193:
	nop
	jmp	.L152
.L194:
	nop
	jmp	.L152
.L195:
	nop
	jmp	.L152
.L196:
	nop
	jmp	.L152
.L197:
	nop
	jmp	.L152
.L198:
	nop
	jmp	.L152
.L199:
	nop
.L152:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	je	.L179
	leaq	.LC70(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L179:
	movl	$1, %eax
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	trace_frame_data, .-trace_frame_data
	.section	.rodata
.LC71:
	.string	"Sent"
.LC72:
	.string	"Received"
.LC73:
	.string	" Datagram\n  Length: %zu\n"
.LC74:
	.string	" Packet\n"
.LC75:
	.string	"  Packet Type: %s\n"
.LC76:
	.string	"  Version: 0x%08lx\n"
.LC77:
	.string	"  Destination Conn Id: "
.LC78:
	.string	"  Source Conn Id: "
.LC79:
	.string	"  Payload length: %zu\n"
.LC80:
	.string	"  Token: "
.LC81:
	.string	"  Packet Number: 0x"
.LC82:
	.string	" Frame: "
	.align 8
.LC83:
	.string	"  <error processing frame data>\n"
	.text
	.globl	ossl_quic_trace
	.type	ossl_quic_trace, @function
ossl_quic_trace:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	%edi, -132(%rbp)
	movl	%esi, -136(%rbp)
	movl	%edx, -140(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -168(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$516, -140(%rbp)
	jg	.L201
	cmpl	$514, -140(%rbp)
	jge	.L202
	cmpl	$512, -140(%rbp)
	je	.L203
	cmpl	$513, -140(%rbp)
	je	.L204
	jmp	.L201
.L203:
	cmpl	$0, -132(%rbp)
	je	.L205
	leaq	.LC71(%rip), %rax
	jmp	.L206
.L205:
	leaq	.LC72(%rip), %rax
.L206:
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_puts@PLT
	movq	-160(%rbp), %rdx
	leaq	.LC73(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L207
.L204:
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L208
	movl	$0, %eax
	jmp	.L224
.L208:
	leaq	-128(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$1, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_pkt_hdr@PLT
	cmpl	$1, %eax
	je	.L210
	movl	$0, %eax
	jmp	.L224
.L210:
	cmpl	$0, -132(%rbp)
	je	.L211
	leaq	.LC71(%rip), %rax
	jmp	.L212
.L211:
	leaq	.LC72(%rip), %rax
.L212:
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_puts@PLT
	leaq	.LC74(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movzbl	-128(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	packet_type
	movq	%rax, %rdx
	leaq	.LC75(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movzbl	-128(%rbp), %eax
	cmpb	$5, %al
	je	.L213
	movl	-124(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC76(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L213:
	leaq	.LC77(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	leaq	-128(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	put_conn_id
	leaq	.LC25(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movzbl	-128(%rbp), %eax
	cmpb	$5, %al
	je	.L214
	leaq	.LC78(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	leaq	-128(%rbp), %rax
	leaq	29(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	put_conn_id
	leaq	.LC25(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L214:
	movq	-56(%rbp), %rdx
	leaq	.LC79(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movzbl	-128(%rbp), %eax
	cmpb	$1, %al
	jne	.L215
	leaq	.LC80(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	put_token
	leaq	.LC25(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L215:
	movzbl	-128(%rbp), %eax
	cmpb	$6, %al
	je	.L225
	movzbl	-128(%rbp), %eax
	cmpb	$4, %al
	je	.L225
	leaq	.LC81(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	$0, -8(%rbp)
	jmp	.L217
.L218:
	leaq	-78(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC8(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$1, -8(%rbp)
.L217:
	movzbl	-127(%rbp), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %eax
	cmpq	%rax, -8(%rbp)
	jb	.L218
	leaq	.LC25(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L207
.L202:
	cmpl	$0, -132(%rbp)
	je	.L220
	leaq	.LC71(%rip), %rax
	jmp	.L221
.L220:
	leaq	.LC72(%rip), %rax
.L221:
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_puts@PLT
	leaq	.LC82(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L222
	movl	$0, %eax
	jmp	.L224
.L222:
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	trace_frame_data
	testl	%eax, %eax
	jne	.L226
	leaq	.LC83(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, %eax
	jmp	.L224
.L201:
	movl	$0, %eax
	jmp	.L224
.L225:
	nop
	jmp	.L207
.L226:
	nop
.L207:
	movl	$1, %eax
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	ossl_quic_trace, .-ossl_quic_trace
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
