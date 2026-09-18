	.file	"quicserver.c"
	.text
	.type	safe_add_time, @function
safe_add_time:
.LFB496:
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
	jnc	.L2
	movl	$1, %ecx
.L2:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	movq	-8(%rbp), %rax
	jmp	.L6
.L4:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	safe_add_time, .-safe_add_time
	.type	safe_sub_time, @function
safe_sub_time:
.LFB497:
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
	jnb	.L8
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L8:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	safe_sub_time, .-safe_sub_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB505:
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
.LFE505:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB507:
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
.LFE507:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB508:
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
.LFE508:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_to_timeval, @function
ossl_time_to_timeval:
.LFB509:
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
	je	.L17
	call	ossl_time_infinite
	movq	%rax, -40(%rbp)
.L17:
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
.LFE509:
	.size	ossl_time_to_timeval, .-ossl_time_to_timeval
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB513:
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
	jnb	.L20
	movl	$1, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L22
	movl	$-1, %eax
	jmp	.L21
.L22:
	movl	$0, %eax
.L21:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_infinite, @function
ossl_time_is_infinite:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_infinite
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
.LFE515:
	.size	ossl_time_is_infinite, .-ossl_time_is_infinite
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB517:
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
	je	.L26
	call	ossl_time_zero
	jmp	.L28
.L26:
	movq	-8(%rbp), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	ossl_time_subtract, .-ossl_time_subtract
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
	.local	bio_err
	.comm	bio_err,8,8
	.type	wait_for_activity, @function
wait_for_activity:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -360(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_get0_rbio@PLT
	movq	%rax, -32(%rbp)
	leaq	-340(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$105, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_net_read_desired@PLT
	testl	%eax, %eax
	je	.L34
	leaq	-192(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movl	$0, %eax
	movl	$16, %ecx
	movq	%rdx, %rdi
#APP
# 41 "../util/quicserver.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax
	movl	%ecx, %edx
	movl	%edx, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	-340(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movslq	%esi, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	-340(%rbp), %edx
	andl	$63, %edx
	movl	$1, %edi
	movl	%edx, %ecx
	salq	%cl, %rdi
	movq	%rdi, %rdx
	orq	%rdx, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movslq	%esi, %rdx
	movq	%rcx, (%rax,%rdx,8)
.L34:
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_net_write_desired@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-320(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	$0, %eax
	movl	$16, %ecx
	movq	%rdx, %rdi
#APP
# 47 "../util/quicserver.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax
	movl	%ecx, %edx
	movl	%edx, -44(%rbp)
	movl	%eax, -48(%rbp)
	movl	-340(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rax
	movslq	%esi, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	-340(%rbp), %edx
	andl	$63, %edx
	movl	$1, %edi
	movl	%edx, %ecx
	salq	%cl, %rdi
	movq	%rdi, %rdx
	orq	%rdx, %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movslq	%esi, %rdx
	movq	%rcx, (%rax,%rdx,8)
.L35:
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_deadline@PLT
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	jne	.L36
	call	ossl_time_now@PLT
	movq	%rax, %rdx
	movq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, %rdi
	call	ossl_time_to_timeval
	movq	%rax, -336(%rbp)
	movq	%rdx, -328(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -24(%rbp)
.L36:
	movl	-340(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L37
	cmpq	$0, -16(%rbp)
	jne	.L37
	cmpq	$0, -24(%rbp)
	je	.L39
.L37:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movl	-52(%rbp), %eax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	%eax, %edi
	call	select@PLT
	jmp	.L33
.L39:
	nop
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	wait_for_activity, .-wait_for_activity
	.type	create_dgram_bio, @function
create_dgram_bio:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$-1, -4(%rbp)
	movq	$0, -16(%rbp)
	call	BIO_sock_init@PLT
	cmpl	$1, %eax
	je	.L41
	movl	$0, %eax
	jmp	.L53
.L41:
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movl	$0, %r9d
	movl	$2, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	BIO_lookup_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L53
.L43:
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L44
.L50:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_family@PLT
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	BIO_socket@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	je	.L54
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_address@PLT
	movq	%rax, %rcx
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_listen@PLT
	testl	%eax, %eax
	jne	.L47
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	jmp	.L46
.L47:
	movl	-4(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	jne	.L55
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	jmp	.L46
.L54:
	nop
.L46:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_next@PLT
	movq	%rax, -16(%rbp)
.L44:
	cmpq	$0, -16(%rbp)
	jne	.L50
	jmp	.L49
.L55:
	nop
.L49:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDRINFO_free@PLT
	cmpq	$0, -16(%rbp)
	jne	.L51
	movl	$0, %eax
	jmp	.L53
.L51:
	call	BIO_s_datagram@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L52
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movl	$0, %eax
	jmp	.L53
.L52:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	movl	$1, %edx
	movl	$104, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	movq	-24(%rbp), %rax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	create_dgram_bio, .-create_dgram_bio
	.section	.rodata
	.align 8
.LC0:
	.string	"quicserver [-6][-trace] hostname port certfile keyfile\n"
	.text
	.type	usage, @function
usage:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	bio_err(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	usage, .-usage
	.section	.rodata
	.align 8
.LC1:
	.string	"HTTP/1.0 200 ok\r\nContent-type: text/html\r\n\r\n<!DOCTYPE html>\n<html>\n<body>Hello world</body>\n</html>\n"
	.align 8
.LC2:
	.string	"HTTP/1.0 200 ok\r\nContent-type: text/html\r\n\r\n<!DOCTYPE html>\n<html>\n<body>Hello again</body>\n</html>\n"
	.align 8
.LC3:
	.string	"HTTP/1.0 200 ok\r\nContent-type: text/html\r\n\r\n<!DOCTYPE html>\n<html>\n<body>Another response</body>\n</html>\n"
	.align 8
.LC4:
	.string	"HTTP/1.0 200 ok\r\nContent-type: text/html\r\n\r\n<!DOCTYPE html>\n<html>\n<body>A message</body>\n</html>\n"
.LC5:
	.string	"-6"
.LC6:
	.string	"-trace"
.LC7:
	.string	"Unrecognised argument %s\n"
	.align 8
.LC8:
	.string	"Unable to create server socket\n"
	.align 8
.LC9:
	.string	"Failed to create the QUIC_TSERVER\n"
.LC10:
	.string	"Starting quicserver\n"
	.align 8
.LC11:
	.string	"Note that this utility will be removed in a future OpenSSL version.\n"
	.align 8
.LC12:
	.string	"For test purposes only. Not for use in a production environment.\n"
	.align 8
.LC13:
	.string	"Failed waiting for handshake completion\n"
.LC14:
	.string	"Failed reading request\n"
	.align 8
.LC15:
	.string	"Failed creating response stream\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1296, %rsp
	movl	%edi, -1284(%rbp)
	movq	%rsi, -1296(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movq	%xmm0, -112(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	$1, -36(%rbp)
	movq	$0, -48(%rbp)
	movl	$168626701, -1212(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -1248(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -1240(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -1232(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -1224(%rbp)
	movabsq	$3328493759640135688, %rax
	movq	%rax, -1257(%rbp)
	movb	$48, -1249(%rbp)
	movl	$1, -52(%rbp)
	movq	$0, -64(%rbp)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, bio_err(%rip)
	cmpl	$0, -1284(%rbp)
	je	.L92
	movq	bio_err(%rip), %rax
	testq	%rax, %rax
	je	.L92
	jmp	.L61
.L67:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1296(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L93
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1296(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L64
	movl	$1, -12(%rbp)
	jmp	.L65
.L64:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1296(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$1, -16(%rbp)
	jmp	.L65
.L66:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1296(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	bio_err(%rip), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	usage
	jmp	.L60
.L65:
	addl	$1, -20(%rbp)
.L61:
	movl	-20(%rbp), %eax
	cmpl	-1284(%rbp), %eax
	jl	.L67
	jmp	.L63
.L93:
	nop
.L63:
	movl	-1284(%rbp), %eax
	subl	-20(%rbp), %eax
	cmpl	$4, %eax
	je	.L68
	call	usage
	jmp	.L60
.L68:
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1296(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1296(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1296(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1296(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L69
	movl	$10, %ecx
	jmp	.L70
.L69:
	movl	$2, %ecx
.L70:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	create_dgram_bio
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L71
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	jne	.L72
.L71:
	movq	bio_err(%rip), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L60
.L72:
	movq	$0, -176(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-1257(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	$9, -112(%rbp)
	movq	$0, -160(%rbp)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tserver_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L73
	movq	bio_err(%rip), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L74
.L73:
	movq	bio_err(%rip), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err(%rip), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err(%rip), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	$0, -32(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L75
	movq	bio_err(%rip), %rdx
	movq	SSL_trace@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tserver_set_msg_callback@PLT
.L75:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	jmp	.L76
.L77:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	wait_for_activity
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_terminated@PLT
	testl	%eax, %eax
	je	.L76
	movq	bio_err(%rip), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -36(%rbp)
	jmp	.L74
.L76:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_handshake_confirmed@PLT
	testl	%eax, %eax
	je	.L77
.L90:
	cmpq	$3, -64(%rbp)
	ja	.L94
.L78:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_pop_incoming_stream@PLT
	movq	%rax, -1272(%rbp)
	movq	-1272(%rbp), %rax
	cmpq	$-1, %rax
	jne	.L79
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	wait_for_activity
.L79:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_terminated@PLT
	testl	%eax, %eax
	je	.L80
	movl	$0, -36(%rbp)
	jmp	.L74
.L80:
	movq	-1272(%rbp), %rax
	cmpq	$-1, %rax
	je	.L78
.L86:
	cmpl	$0, -52(%rbp)
	je	.L81
	movl	$0, -52(%rbp)
	jmp	.L82
.L81:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	wait_for_activity
.L82:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_terminated@PLT
	testl	%eax, %eax
	je	.L83
	movq	bio_err(%rip), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -36(%rbp)
	jmp	.L74
.L83:
	movl	$1024, %eax
	subq	-48(%rbp), %rax
	movq	%rax, %rdx
	leaq	-1200(%rbp), %rcx
	movq	-48(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-1272(%rbp), %rsi
	leaq	-1208(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_quic_tserver_read@PLT
	testl	%eax, %eax
	je	.L84
	movq	-1208(%rbp), %rax
	testq	%rax, %rax
	je	.L85
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-1208(%rbp), %rax
	leaq	-1200(%rbp), %rsi
	movq	-48(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	fwrite@PLT
.L85:
	movq	-1208(%rbp), %rax
	addq	%rax, -48(%rbp)
.L84:
	cmpq	$3, -48(%rbp)
	jbe	.L86
	movq	-48(%rbp), %rax
	leaq	-4(%rax), %rdx
	leaq	-1200(%rbp), %rax
	leaq	(%rax,%rdx), %rcx
	leaq	-1212(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L86
	movq	-1272(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L87
	leaq	-1272(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_stream_new@PLT
	testl	%eax, %eax
	jne	.L87
	movq	bio_err(%rip), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L74
.L87:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-64(%rbp), %rax
	movq	-1248(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	-1248(%rbp,%rax,8), %rdx
	movq	-1272(%rbp), %rsi
	leaq	-1208(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	je	.L95
	movq	-1272(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tserver_conclude@PLT
	testl	%eax, %eax
	je	.L96
	addq	$1, -64(%rbp)
	jmp	.L90
.L94:
	nop
	jmp	.L74
.L95:
	nop
	jmp	.L74
.L96:
	nop
.L74:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L60
.L92:
	nop
.L60:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	bio_err(%rip), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
