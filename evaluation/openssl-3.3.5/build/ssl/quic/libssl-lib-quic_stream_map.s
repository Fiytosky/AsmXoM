	.file	"quic_stream_map.c"
	.text
	.type	ossl_quic_stream_is_server_init, @function
ossl_quic_stream_is_server_init:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	ossl_quic_stream_is_server_init, .-ossl_quic_stream_is_server_init
	.type	ossl_quic_stream_is_bidi, @function
ossl_quic_stream_is_bidi:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	256(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	ossl_quic_stream_is_bidi, .-ossl_quic_stream_is_bidi
	.type	ossl_quic_stream_is_local_init, @function
ossl_quic_stream_is_local_init:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_server_init
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movzbl	259(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	ossl_quic_stream_is_local_init, .-ossl_quic_stream_is_local_init
	.type	ossl_quic_stream_has_send, @function
ossl_quic_stream_has_send:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	257(%rax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ossl_quic_stream_has_send, .-ossl_quic_stream_has_send
	.type	ossl_quic_stream_has_recv, @function
ossl_quic_stream_has_recv:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	258(%rax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ossl_quic_stream_has_recv, .-ossl_quic_stream_has_recv
	.type	ossl_quic_stream_recv_is_reset, @function
ossl_quic_stream_recv_is_reset:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	258(%rax), %eax
	cmpb	$5, %al
	je	.L12
	movq	-8(%rbp), %rax
	movzbl	258(%rax), %eax
	cmpb	$6, %al
	jne	.L13
.L12:
	movl	$1, %eax
	jmp	.L15
.L13:
	movl	$0, %eax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	ossl_quic_stream_recv_is_reset, .-ossl_quic_stream_recv_is_reset
	.type	ossl_quic_stream_recv_get_final_size, @function
ossl_quic_stream_recv_get_final_size:
.LFB596:
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
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	subl	$2, %eax
	cmpl	$4, %eax
	jbe	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	leaq	160(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_rxfc_get_final_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L19
	movl	$0, %eax
	jmp	.L18
.L19:
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	ossl_quic_stream_recv_get_final_size, .-ossl_quic_stream_recv_get_final_size
	.type	lh_QUIC_STREAM_hfn_thunk, @function
lh_QUIC_STREAM_hfn_thunk:
.LFB598:
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
.LFE598:
	.size	lh_QUIC_STREAM_hfn_thunk, .-lh_QUIC_STREAM_hfn_thunk
	.type	lh_QUIC_STREAM_cfn_thunk, @function
lh_QUIC_STREAM_cfn_thunk:
.LFB599:
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
.LFE599:
	.size	lh_QUIC_STREAM_cfn_thunk, .-lh_QUIC_STREAM_cfn_thunk
	.type	lh_QUIC_STREAM_free, @function
lh_QUIC_STREAM_free:
.LFB600:
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
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	lh_QUIC_STREAM_free, .-lh_QUIC_STREAM_free
	.type	lh_QUIC_STREAM_insert, @function
lh_QUIC_STREAM_insert:
.LFB602:
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
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	lh_QUIC_STREAM_insert, .-lh_QUIC_STREAM_insert
	.type	lh_QUIC_STREAM_delete, @function
lh_QUIC_STREAM_delete:
.LFB603:
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
	call	OPENSSL_LH_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	lh_QUIC_STREAM_delete, .-lh_QUIC_STREAM_delete
	.type	lh_QUIC_STREAM_retrieve, @function
lh_QUIC_STREAM_retrieve:
.LFB604:
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
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	lh_QUIC_STREAM_retrieve, .-lh_QUIC_STREAM_retrieve
	.type	lh_QUIC_STREAM_doall_thunk, @function
lh_QUIC_STREAM_doall_thunk:
.LFB609:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	lh_QUIC_STREAM_doall_thunk, .-lh_QUIC_STREAM_doall_thunk
	.type	lh_QUIC_STREAM_doall_arg_thunk, @function
lh_QUIC_STREAM_doall_arg_thunk:
.LFB610:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	lh_QUIC_STREAM_doall_arg_thunk, .-lh_QUIC_STREAM_doall_arg_thunk
	.type	lh_QUIC_STREAM_new, @function
lh_QUIC_STREAM_new:
.LFB612:
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
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_QUIC_STREAM_doall_arg_thunk(%rip), %rsi
	leaq	lh_QUIC_STREAM_doall_thunk(%rip), %rcx
	leaq	lh_QUIC_STREAM_cfn_thunk(%rip), %rdx
	leaq	lh_QUIC_STREAM_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	lh_QUIC_STREAM_new, .-lh_QUIC_STREAM_new
	.type	lh_QUIC_STREAM_doall_arg, @function
lh_QUIC_STREAM_doall_arg:
.LFB613:
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
	call	OPENSSL_LH_doall_arg@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	lh_QUIC_STREAM_doall_arg, .-lh_QUIC_STREAM_doall_arg
	.type	list_insert_tail, @function
list_insert_tail:
.LFB614:
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
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	list_insert_tail, .-list_insert_tail
	.type	list_remove, @function
list_remove:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	list_remove, .-list_remove
	.type	list_next, @function
list_next:
.LFB616:
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
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L39
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L39:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-24(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
.L41:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	list_next, .-list_next
	.type	hash_stream, @function
hash_stream:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	hash_stream, .-hash_stream
	.type	cmp_stream, @function
cmp_stream:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L45
	movl	$-1, %eax
	jmp	.L46
.L45:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L47
	movl	$1, %eax
	jmp	.L46
.L47:
	movl	$0, %eax
.L46:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	cmp_stream, .-cmp_stream
	.globl	ossl_quic_stream_map_init
	.type	ossl_quic_stream_map_init, @function
ossl_quic_stream_map_init:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	leaq	cmp_stream(%rip), %rdx
	leaq	hash_stream(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_STREAM_new
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$1, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 120(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 136(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	ossl_quic_stream_map_init, .-ossl_quic_stream_map_init
	.type	release_each, @function
release_each:
.LFB620:
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
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_release@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	release_each, .-release_each
	.globl	ossl_quic_stream_map_cleanup
	.type	ossl_quic_stream_map_cleanup, @function
ossl_quic_stream_map_cleanup:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	release_each(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_visit@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUIC_STREAM_free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	ossl_quic_stream_map_cleanup, .-ossl_quic_stream_map_cleanup
	.globl	ossl_quic_stream_map_visit
	.type	ossl_quic_stream_map_visit, @function
ossl_quic_stream_map_visit:
.LFB622:
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
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_STREAM_doall_arg
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	ossl_quic_stream_map_visit, .-ossl_quic_stream_map_visit
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_stream_map.c"
	.text
	.globl	ossl_quic_stream_map_alloc
	.type	ossl_quic_stream_map_alloc, @function
ossl_quic_stream_map_alloc:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movl	%edx, -292(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	-272(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_STREAM_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L54
	movl	$0, %eax
	jmp	.L63
.L54:
	leaq	.LC0(%rip), %rax
	movl	$153, %edx
	movq	%rax, %rsi
	movl	$264, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L63
.L56:
	movq	-8(%rbp), %rax
	movq	-288(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movl	-292(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 256(%rax)
	movq	-280(%rbp), %rax
	movl	136(%rax), %eax
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	259(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 259(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_local_init
	testl	%eax, %eax
	jne	.L57
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	je	.L58
.L57:
	movl	$1, %eax
	jmp	.L59
.L58:
	movl	$0, %eax
.L59:
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 257(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_local_init
	testl	%eax, %eax
	je	.L60
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	je	.L61
.L60:
	movl	$1, %eax
	jmp	.L62
.L61:
	movl	$0, %eax
.L62:
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 258(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 104(%rax)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_STREAM_insert
	movq	-8(%rbp), %rax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	ossl_quic_stream_map_alloc, .-ossl_quic_stream_map_alloc
	.globl	ossl_quic_stream_map_release
	.type	ossl_quic_stream_map_release, @function
ossl_quic_stream_map_release:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L70
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	list_remove
.L67:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_remove
.L68:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_remove
.L69:
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_STREAM_delete
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$194, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L64
.L70:
	nop
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	ossl_quic_stream_map_release, .-ossl_quic_stream_map_release
	.globl	ossl_quic_stream_map_get_by_id
	.type	ossl_quic_stream_map_get_by_id, @function
ossl_quic_stream_map_get_by_id:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	-272(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUIC_STREAM_retrieve
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	ossl_quic_stream_map_get_by_id, .-ossl_quic_stream_map_get_by_id
	.type	stream_map_mark_active, @function
stream_map_mark_active:
.LFB626:
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
	movzbl	259(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L77
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	list_insert_tail
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L76
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 96(%rax)
.L76:
	movq	-16(%rbp), %rax
	movzbl	259(%rax), %edx
	orl	$1, %edx
	movb	%dl, 259(%rax)
	jmp	.L73
.L77:
	nop
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	stream_map_mark_active, .-stream_map_mark_active
	.type	stream_map_mark_inactive, @function
stream_map_mark_inactive:
.LFB627:
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
	movzbl	259(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L83
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L81
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	list_next
	movq	-8(%rbp), %rdx
	movq	%rax, 96(%rdx)
.L81:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L82
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
.L82:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	list_remove
	movq	-16(%rbp), %rax
	movzbl	259(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 259(%rax)
	jmp	.L78
.L83:
	nop
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	stream_map_mark_inactive, .-stream_map_mark_inactive
	.globl	ossl_quic_stream_map_set_rr_stepping
	.type	ossl_quic_stream_map_set_rr_stepping, @function
ossl_quic_stream_map_set_rr_stepping:
.LFB628:
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
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	ossl_quic_stream_map_set_rr_stepping, .-ossl_quic_stream_map_set_rr_stepping
	.type	stream_has_data_to_send, @function
stream_has_data_to_send:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	cmpl	$2, %eax
	jbe	.L96
	movl	$0, %eax
	jmp	.L94
.L96:
	nop
	movq	$2, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-104(%rbp), %rsi
	leaq	-96(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_stream_frame@PLT
	testl	%eax, %eax
	jne	.L89
	movl	$0, %eax
	jmp	.L94
.L89:
	movq	-120(%rbp), %rax
	subq	$-128, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_credit@PLT
	movq	%rax, -8(%rbp)
	movq	-120(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movzbl	-32(%rbp), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L90
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L91
.L90:
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L92
.L91:
	movl	$1, %eax
	jmp	.L94
.L92:
	movl	$0, %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	stream_has_data_to_send, .-stream_has_data_to_send
	.type	qsm_send_part_permits_gc, @function
qsm_send_part_permits_gc:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	cmpl	$6, %eax
	je	.L98
	cmpl	$6, %eax
	jg	.L99
	testl	%eax, %eax
	je	.L98
	cmpl	$4, %eax
	jne	.L99
.L98:
	movl	$1, %eax
	jmp	.L100
.L99:
	movl	$0, %eax
.L100:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	qsm_send_part_permits_gc, .-qsm_send_part_permits_gc
	.type	qsm_ready_for_gc, @function
qsm_ready_for_gc:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	je	.L102
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_recv
	testl	%eax, %eax
	je	.L103
	cmpl	$0, -4(%rbp)
	jne	.L103
	movq	-32(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L102
.L103:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_send
	testl	%eax, %eax
	je	.L104
	movq	-32(%rbp), %rax
	movzbl	257(%rax), %eax
	cmpb	$4, %al
	je	.L104
	movq	-32(%rbp), %rax
	movzbl	257(%rax), %eax
	cmpb	$6, %al
	jne	.L102
.L104:
	movl	$1, %eax
	jmp	.L106
.L102:
	movl	$0, %eax
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	qsm_ready_for_gc, .-qsm_ready_for_gc
	.globl	ossl_quic_stream_map_is_local_allowed_by_stream_limit
	.type	ossl_quic_stream_map_is_local_allowed_by_stream_limit, @function
ossl_quic_stream_map_is_local_allowed_by_stream_limit:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L108
	movl	$1, %eax
	jmp	.L109
.L108:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	*%rcx
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	ossl_quic_stream_map_is_local_allowed_by_stream_limit, .-ossl_quic_stream_map_is_local_allowed_by_stream_limit
	.globl	ossl_quic_stream_map_update_state
	.type	ossl_quic_stream_map_update_state, @function
ossl_quic_stream_map_update_state:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_server_init
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	%eax, %edx
	jne	.L111
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$2, %rax
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_is_local_allowed_by_stream_limit@PLT
	movl	%eax, -4(%rbp)
.L111:
	movq	-48(%rbp), %rax
	movzbl	257(%rax), %eax
	cmpb	$3, %al
	jne	.L112
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_is_totally_acked@PLT
	testl	%eax, %eax
	je	.L112
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_notify_totally_acked@PLT
	jmp	.L113
.L112:
	movq	-48(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L113
	movq	-48(%rbp), %rax
	movzbl	257(%rax), %eax
	cmpb	$2, %al
	jne	.L113
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_is_totally_acked@PLT
	testl	%eax, %eax
	je	.L113
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	shutdown_flush_done
.L113:
	movq	-48(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L114
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qsm_ready_for_gc
	andl	$1, %eax
	movq	-48(%rbp), %rdx
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %ecx
	movzbl	260(%rdx), %eax
	andl	$-65, %eax
	orl	%ecx, %eax
	movb	%al, 260(%rdx)
	movq	-48(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L114
	movq	-48(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_insert_tail
.L114:
	cmpl	$0, -4(%rbp)
	je	.L115
	movq	-48(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L115
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_has_recv
	testl	%eax, %eax
	je	.L116
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_recv_is_reset
	testl	%eax, %eax
	jne	.L116
	movq	-48(%rbp), %rax
	movzbl	258(%rax), %eax
	cmpb	$1, %al
	jne	.L116
	movq	-48(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L117
	movq	-48(%rbp), %rax
	addq	$160, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_has_cwm_changed@PLT
	testl	%eax, %eax
	jne	.L117
.L116:
	movq	-48(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L117
	movq	-48(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L117
	movq	-48(%rbp), %rax
	movzbl	259(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L115
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	stream_has_data_to_send
	testl	%eax, %eax
	je	.L115
.L117:
	movl	$1, %eax
	jmp	.L118
.L115:
	movl	$0, %eax
.L118:
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L119
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stream_map_mark_active
	jmp	.L121
.L119:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stream_map_mark_inactive
.L121:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	ossl_quic_stream_map_update_state, .-ossl_quic_stream_map_update_state
	.globl	ossl_quic_stream_map_ensure_send_part_id
	.type	ossl_quic_stream_map_ensure_send_part_id, @function
ossl_quic_stream_map_ensure_send_part_id:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L123
	cmpl	$1, %eax
	je	.L124
	jmp	.L127
.L123:
	movl	$0, %eax
	jmp	.L126
.L124:
	movq	-16(%rbp), %rax
	movb	$2, 257(%rax)
	movl	$1, %eax
	jmp	.L126
.L127:
	movl	$1, %eax
.L126:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	ossl_quic_stream_map_ensure_send_part_id, .-ossl_quic_stream_map_ensure_send_part_id
	.globl	ossl_quic_stream_map_notify_all_data_sent
	.type	ossl_quic_stream_map_notify_all_data_sent, @function
ossl_quic_stream_map_notify_all_data_sent:
.LFB635:
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
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	cmpl	$2, %eax
	je	.L129
	movl	$0, %eax
	jmp	.L130
.L129:
	movq	-16(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_sstream_get_final_size@PLT
	testl	%eax, %eax
	jne	.L131
	movl	$0, %eax
	jmp	.L130
.L131:
	movq	-16(%rbp), %rax
	movb	$3, 257(%rax)
	movl	$1, %eax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	ossl_quic_stream_map_notify_all_data_sent, .-ossl_quic_stream_map_notify_all_data_sent
	.type	shutdown_flush_done, @function
shutdown_flush_done:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L135
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %edx
	andl	$127, %edx
	movb	%dl, 260(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	.L132
.L135:
	nop
.L132:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	shutdown_flush_done, .-shutdown_flush_done
	.globl	ossl_quic_stream_map_notify_totally_acked
	.type	ossl_quic_stream_map_notify_totally_acked, @function
ossl_quic_stream_map_notify_totally_acked:
.LFB637:
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
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	cmpl	$3, %eax
	je	.L137
	movl	$0, %eax
	jmp	.L138
.L137:
	movq	-16(%rbp), %rax
	movb	$4, 257(%rax)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	shutdown_flush_done
	movl	$1, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	ossl_quic_stream_map_notify_totally_acked, .-ossl_quic_stream_map_notify_totally_acked
	.globl	ossl_quic_stream_map_reset_stream_send_part
	.type	ossl_quic_stream_map_reset_stream_send_part, @function
ossl_quic_stream_map_reset_stream_send_part:
.LFB638:
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
	movq	-16(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	cmpl	$6, %eax
	jg	.L140
	cmpl	$5, %eax
	jge	.L141
	cmpl	$3, %eax
	je	.L142
	cmpl	$3, %eax
	jg	.L140
	cmpl	$1, %eax
	je	.L143
	cmpl	$2, %eax
	je	.L144
.L140:
	movl	$0, %eax
	jmp	.L145
.L143:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_ensure_send_part_id@PLT
	testl	%eax, %eax
	jne	.L144
	movl	$0, %eax
	jmp	.L145
.L144:
	movq	-16(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	ossl_quic_txfc_get_swm@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 104(%rdx)
.L142:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %edx
	orl	$8, %edx
	movb	%dl, 260(%rax)
	movq	-16(%rbp), %rax
	movb	$5, 257(%rax)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	shutdown_flush_done
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	movl	$1, %eax
	jmp	.L145
.L141:
	movl	$1, %eax
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	ossl_quic_stream_map_reset_stream_send_part, .-ossl_quic_stream_map_reset_stream_send_part
	.globl	ossl_quic_stream_map_notify_reset_stream_acked
	.type	ossl_quic_stream_map_notify_reset_stream_acked, @function
ossl_quic_stream_map_notify_reset_stream_acked:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	cmpl	$5, %eax
	je	.L147
	cmpl	$6, %eax
	je	.L148
	movl	$0, %eax
	jmp	.L149
.L147:
	movq	-16(%rbp), %rax
	movb	$6, 257(%rax)
	movl	$1, %eax
	jmp	.L149
.L148:
	movl	$1, %eax
.L149:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ossl_quic_stream_map_notify_reset_stream_acked, .-ossl_quic_stream_map_notify_reset_stream_acked
	.globl	ossl_quic_stream_map_notify_size_known_recv_part
	.type	ossl_quic_stream_map_notify_size_known_recv_part, @function
ossl_quic_stream_map_notify_size_known_recv_part:
.LFB640:
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
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	cmpl	$1, %eax
	je	.L151
	movl	$0, %eax
	jmp	.L152
.L151:
	movq	-16(%rbp), %rax
	movb	$2, 258(%rax)
	movl	$1, %eax
.L152:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ossl_quic_stream_map_notify_size_known_recv_part, .-ossl_quic_stream_map_notify_size_known_recv_part
	.globl	ossl_quic_stream_map_notify_totally_received
	.type	ossl_quic_stream_map_notify_totally_received, @function
ossl_quic_stream_map_notify_totally_received:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	cmpl	$2, %eax
	je	.L154
	movl	$0, %eax
	jmp	.L155
.L154:
	movq	-16(%rbp), %rax
	movb	$3, 258(%rax)
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 260(%rax)
	movl	$1, %eax
.L155:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ossl_quic_stream_map_notify_totally_received, .-ossl_quic_stream_map_notify_totally_received
	.globl	ossl_quic_stream_map_notify_totally_read
	.type	ossl_quic_stream_map_notify_totally_read, @function
ossl_quic_stream_map_notify_totally_read:
.LFB642:
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
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	cmpl	$3, %eax
	je	.L157
	movl	$0, %eax
	jmp	.L158
.L157:
	movq	-16(%rbp), %rax
	movb	$4, 258(%rax)
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
	movl	$1, %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	ossl_quic_stream_map_notify_totally_read, .-ossl_quic_stream_map_notify_totally_read
	.globl	ossl_quic_stream_map_notify_reset_recv_part
	.type	ossl_quic_stream_map_notify_reset_recv_part, @function
ossl_quic_stream_map_notify_reset_recv_part:
.LFB643:
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
	movq	-32(%rbp), %rax
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	cmpl	$3, %eax
	jg	.L160
	testl	%eax, %eax
	jg	.L161
	jmp	.L162
.L160:
	subl	$4, %eax
	cmpl	$2, %eax
	jbe	.L163
.L162:
	movl	$0, %eax
	jmp	.L166
.L161:
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_recv_get_final_size
	testl	%eax, %eax
	je	.L165
	movq	-8(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	je	.L165
	movl	$0, %eax
	jmp	.L166
.L165:
	movq	-32(%rbp), %rax
	movb	$5, 258(%rax)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-32(%rbp), %rax
	movzbl	260(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 260(%rax)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_rstream_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	movl	$1, %eax
	jmp	.L166
.L163:
	movl	$1, %eax
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	ossl_quic_stream_map_notify_reset_recv_part, .-ossl_quic_stream_map_notify_reset_recv_part
	.globl	ossl_quic_stream_map_notify_app_read_reset_recv_part
	.type	ossl_quic_stream_map_notify_app_read_reset_recv_part, @function
ossl_quic_stream_map_notify_app_read_reset_recv_part:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	cmpl	$5, %eax
	je	.L168
	movl	$0, %eax
	jmp	.L169
.L168:
	movq	-16(%rbp), %rax
	movb	$6, 258(%rax)
	movl	$1, %eax
.L169:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	ossl_quic_stream_map_notify_app_read_reset_recv_part, .-ossl_quic_stream_map_notify_app_read_reset_recv_part
	.globl	ossl_quic_stream_map_stop_sending_recv_part
	.type	ossl_quic_stream_map_stop_sending_recv_part, @function
ossl_quic_stream_map_stop_sending_recv_part:
.LFB645:
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
	movq	-16(%rbp), %rax
	movzbl	259(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L171
	movl	$0, %eax
	jmp	.L172
.L171:
	movq	-16(%rbp), %rax
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	cmpl	$1, %eax
	jbe	.L175
	movl	$0, %eax
	jmp	.L172
.L175:
	nop
	movq	-16(%rbp), %rax
	movzbl	259(%rax), %edx
	orl	$4, %edx
	movb	%dl, 259(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_schedule_stop_sending@PLT
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	ossl_quic_stream_map_stop_sending_recv_part, .-ossl_quic_stream_map_stop_sending_recv_part
	.globl	ossl_quic_stream_map_schedule_stop_sending
	.type	ossl_quic_stream_map_schedule_stop_sending, @function
ossl_quic_stream_map_schedule_stop_sending:
.LFB646:
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
	movzbl	259(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L177
	movl	$0, %eax
	jmp	.L178
.L177:
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L179
	movl	$1, %eax
	jmp	.L178
.L179:
	movq	-16(%rbp), %rax
	movzbl	258(%rax), %eax
	movzbl	%al, %eax
	subl	$1, %eax
	cmpl	$1, %eax
	jbe	.L182
	movl	$1, %eax
	jmp	.L178
.L182:
	nop
	movq	-16(%rbp), %rax
	movzbl	260(%rax), %edx
	orl	$4, %edx
	movb	%dl, 260(%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	movl	$1, %eax
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	ossl_quic_stream_map_schedule_stop_sending, .-ossl_quic_stream_map_schedule_stop_sending
	.globl	ossl_quic_stream_map_peek_accept_queue
	.type	ossl_quic_stream_map_peek_accept_queue, @function
ossl_quic_stream_map_peek_accept_queue:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	list_next
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	ossl_quic_stream_map_peek_accept_queue, .-ossl_quic_stream_map_peek_accept_queue
	.globl	ossl_quic_stream_map_push_accept_queue
	.type	ossl_quic_stream_map_push_accept_queue, @function
ossl_quic_stream_map_push_accept_queue:
.LFB648:
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
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_insert_tail
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	je	.L186
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L188
.L186:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
.L188:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	ossl_quic_stream_map_push_accept_queue, .-ossl_quic_stream_map_push_accept_queue
	.type	qsm_get_max_streams_rxfc, @function
qsm_get_max_streams_rxfc:
.LFB649:
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
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	je	.L190
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	jmp	.L192
.L190:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	qsm_get_max_streams_rxfc, .-qsm_get_max_streams_rxfc
	.globl	ossl_quic_stream_map_remove_from_accept_queue
	.type	ossl_quic_stream_map_remove_from_accept_queue, @function
ossl_quic_stream_map_remove_from_accept_queue:
.LFB650:
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
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_remove
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_is_bidi
	testl	%eax, %eax
	je	.L194
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L195
.L194:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 80(%rax)
.L195:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qsm_get_max_streams_rxfc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L197
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_on_retire@PLT
.L197:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	ossl_quic_stream_map_remove_from_accept_queue, .-ossl_quic_stream_map_remove_from_accept_queue
	.globl	ossl_quic_stream_map_get_accept_queue_len
	.type	ossl_quic_stream_map_get_accept_queue_len, @function
ossl_quic_stream_map_get_accept_queue_len:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L199
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	jmp	.L201
.L199:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
.L201:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	ossl_quic_stream_map_get_accept_queue_len, .-ossl_quic_stream_map_get_accept_queue_len
	.globl	ossl_quic_stream_map_get_total_accept_queue_len
	.type	ossl_quic_stream_map_get_total_accept_queue_len, @function
ossl_quic_stream_map_get_total_accept_queue_len:
.LFB652:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_accept_queue_len@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_accept_queue_len@PLT
	addq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	ossl_quic_stream_map_get_total_accept_queue_len, .-ossl_quic_stream_map_get_total_accept_queue_len
	.globl	ossl_quic_stream_map_gc
	.type	ossl_quic_stream_map_gc, @function
ossl_quic_stream_map_gc:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	list_next
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L205
.L207:
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	list_next
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_release@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L205:
	cmpq	$0, -8(%rbp)
	je	.L208
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L207
.L208:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	ossl_quic_stream_map_gc, .-ossl_quic_stream_map_gc
	.type	eligible_for_shutdown_flush, @function
eligible_for_shutdown_flush:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	257(%rax), %eax
	movzbl	%al, %eax
	subl	$2, %eax
	cmpl	$1, %eax
	ja	.L210
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_is_totally_acked@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L211
.L210:
	movl	$0, %eax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	eligible_for_shutdown_flush, .-eligible_for_shutdown_flush
	.type	begin_shutdown_flush_each, @function
begin_shutdown_flush_each:
.LFB655:
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
	movq	%rax, %rdi
	call	eligible_for_shutdown_flush
	testl	%eax, %eax
	je	.L216
	movq	-24(%rbp), %rax
	movzbl	260(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L216
	movq	-24(%rbp), %rax
	movzbl	260(%rax), %edx
	orl	$-128, %edx
	movb	%dl, 260(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	.L212
.L216:
	nop
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	begin_shutdown_flush_each, .-begin_shutdown_flush_each
	.globl	ossl_quic_stream_map_begin_shutdown_flush
	.type	ossl_quic_stream_map_begin_shutdown_flush, @function
ossl_quic_stream_map_begin_shutdown_flush:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rdx
	leaq	begin_shutdown_flush_each(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_visit@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	ossl_quic_stream_map_begin_shutdown_flush, .-ossl_quic_stream_map_begin_shutdown_flush
	.globl	ossl_quic_stream_map_is_shutdown_flush_finished
	.type	ossl_quic_stream_map_is_shutdown_flush_finished, @function
ossl_quic_stream_map_is_shutdown_flush_finished:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	ossl_quic_stream_map_is_shutdown_flush_finished, .-ossl_quic_stream_map_is_shutdown_flush_finished
	.globl	ossl_quic_stream_iter_init
	.type	ossl_quic_stream_iter_init, @function
ossl_quic_stream_iter_init:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	cmpl	$0, -20(%rbp)
	je	.L222
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L222
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L222
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	list_next
	movq	-16(%rbp), %rdx
	movq	%rax, 96(%rdx)
.L222:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	ossl_quic_stream_iter_init, .-ossl_quic_stream_iter_init
	.globl	ossl_quic_stream_iter_next
	.type	ossl_quic_stream_iter_next, @function
ossl_quic_stream_iter_next:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L226
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	list_next
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L223
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L223
.L226:
	nop
.L223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	ossl_quic_stream_iter_next, .-ossl_quic_stream_iter_next
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
