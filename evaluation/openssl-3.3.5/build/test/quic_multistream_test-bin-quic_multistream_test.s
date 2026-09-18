	.file	"quic_multistream_test.c"
	.text
	.type	SSL_as_poll_descriptor, @function
SSL_as_poll_descriptor:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$2, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	SSL_as_poll_descriptor, .-SSL_as_poll_descriptor
	.type	safe_add_time, @function
safe_add_time:
.LFB480:
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
	jnc	.L4
	movl	$1, %ecx
.L4:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L6
	movq	-8(%rbp), %rax
	jmp	.L8
.L6:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	safe_add_time, .-safe_add_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB489:
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
.LFE489:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB491:
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
.LFE491:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB492:
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
.LFE492:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB497:
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
	jnb	.L16
	movl	$1, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L18
	movl	$-1, %eax
	jmp	.L17
.L18:
	movl	$0, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_add, @function
ossl_time_add:
.LFB500:
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
	je	.L20
	call	ossl_time_infinite
	jmp	.L22
.L20:
	movq	-8(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	ossl_time_add, .-ossl_time_add
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB517:
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
	jns	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L27
	movl	$2, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L30
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L31
.L30:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L31:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
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
	.local	certfile
	.comm	certfile,8,8
	.local	keyfile
	.comm	keyfile,8,8
	.type	lh_STREAM_INFO_hfn_thunk, @function
lh_STREAM_INFO_hfn_thunk:
.LFB656:
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
.LFE656:
	.size	lh_STREAM_INFO_hfn_thunk, .-lh_STREAM_INFO_hfn_thunk
	.type	lh_STREAM_INFO_cfn_thunk, @function
lh_STREAM_INFO_cfn_thunk:
.LFB657:
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
.LFE657:
	.size	lh_STREAM_INFO_cfn_thunk, .-lh_STREAM_INFO_cfn_thunk
	.type	lh_STREAM_INFO_free, @function
lh_STREAM_INFO_free:
.LFB658:
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
.LFE658:
	.size	lh_STREAM_INFO_free, .-lh_STREAM_INFO_free
	.type	lh_STREAM_INFO_insert, @function
lh_STREAM_INFO_insert:
.LFB660:
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
.LFE660:
	.size	lh_STREAM_INFO_insert, .-lh_STREAM_INFO_insert
	.type	lh_STREAM_INFO_retrieve, @function
lh_STREAM_INFO_retrieve:
.LFB662:
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
.LFE662:
	.size	lh_STREAM_INFO_retrieve, .-lh_STREAM_INFO_retrieve
	.type	lh_STREAM_INFO_doall_thunk, @function
lh_STREAM_INFO_doall_thunk:
.LFB667:
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
.LFE667:
	.size	lh_STREAM_INFO_doall_thunk, .-lh_STREAM_INFO_doall_thunk
	.type	lh_STREAM_INFO_doall_arg_thunk, @function
lh_STREAM_INFO_doall_arg_thunk:
.LFB668:
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
.LFE668:
	.size	lh_STREAM_INFO_doall_arg_thunk, .-lh_STREAM_INFO_doall_arg_thunk
	.type	lh_STREAM_INFO_doall, @function
lh_STREAM_INFO_doall:
.LFB669:
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
	call	OPENSSL_LH_doall@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	lh_STREAM_INFO_doall, .-lh_STREAM_INFO_doall
	.type	lh_STREAM_INFO_new, @function
lh_STREAM_INFO_new:
.LFB670:
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
	leaq	lh_STREAM_INFO_doall_arg_thunk(%rip), %rsi
	leaq	lh_STREAM_INFO_doall_thunk(%rip), %rcx
	leaq	lh_STREAM_INFO_cfn_thunk(%rip), %rdx
	leaq	lh_STREAM_INFO_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	lh_STREAM_INFO_new, .-lh_STREAM_INFO_new
	.section	.rodata
	.align 8
.LC0:
	.string	"CRYPTO_THREAD_read_lock(h->time_lock)"
	.align 8
.LC1:
	.string	"../test/quic_multistream_test.c"
	.text
	.type	get_time, @function
get_time:
.LFB672:
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
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$355, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L51
	call	ossl_time_zero
	jmp	.L53
.L51:
	call	ossl_time_now@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_add
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-16(%rbp), %rax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	get_time, .-get_time
	.section	.rodata
	.align 8
.LC2:
	.string	"CRYPTO_THREAD_write_lock(h->time_lock)"
	.text
	.type	skip_time_ms, @function
skip_time_ms:
.LFB673:
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
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$366, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-24(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, 176(%rbx)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
.L56:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	skip_time_ms, .-skip_time_ms
	.type	check_rejected, @function
check_rejected:
.LFB674:
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
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_tserver_stream_has_peer_stop_sending@PLT
	testl	%eax, %eax
	je	.L58
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_tserver_stream_has_peer_reset_stream@PLT
	testl	%eax, %eax
	jne	.L59
.L58:
	movq	-24(%rbp), %rax
	movl	$1, 200(%rax)
	movl	$0, %eax
	jmp	.L60
.L59:
	movl	$1, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	check_rejected, .-check_rejected
	.section	.rodata
.LC3:
	.string	"42"
.LC4:
	.string	"aec"
	.text
	.type	check_stream_reset, @function
check_stream_reset:
.LFB675:
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
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rcx
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_tserver_stream_has_peer_reset_stream@PLT
	testl	%eax, %eax
	jne	.L62
	movq	-24(%rbp), %rax
	movl	$1, 200(%rax)
	movl	$0, %eax
	jmp	.L64
.L62:
	movq	-16(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$42, %r9d
	movq	%rsi, %r8
	movl	$403, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	check_stream_reset, .-check_stream_reset
	.type	check_stream_stopped, @function
check_stream_stopped:
.LFB676:
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
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_tserver_stream_has_peer_stop_sending@PLT
	testl	%eax, %eax
	jne	.L66
	movq	-24(%rbp), %rax
	movl	$1, 200(%rax)
	movl	$0, %eax
	jmp	.L67
.L66:
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	check_stream_stopped, .-check_stream_stopped
	.type	override_key_update, @function
override_key_update:
.LFB677:
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
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_get_channel@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_set_txku_threshold_override@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	override_key_update, .-override_key_update
	.section	.rodata
	.align 8
.LC5:
	.string	"SSL_key_update(h->c_conn, SSL_KEY_UPDATE_REQUESTED)"
	.text
	.type	trigger_key_update, @function
trigger_key_update:
.LFB678:
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
	movq	112(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_key_update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$428, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	trigger_key_update, .-trigger_key_update
	.section	.rodata
.LC6:
	.string	"0"
.LC7:
	.string	"diff"
.LC8:
	.string	"1"
.LC9:
	.string	"hl->check_op->arg2"
.LC10:
	.string	"(uint64_t)rxke"
	.text
	.type	check_key_update_ge, @function
check_key_update_ge:
.LFB679:
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
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_get_channel@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_tx_key_epoch@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_rx_key_epoch@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$445, %esi
	movq	%rax, %rdi
	call	test_int64_t_ge@PLT
	testl	%eax, %eax
	je	.L74
	movq	-32(%rbp), %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$445, %esi
	movq	%rax, %rdi
	call	test_int64_t_le@PLT
	testl	%eax, %eax
	jne	.L75
.L74:
	movl	$0, %eax
	jmp	.L76
.L75:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$449, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L76
.L77:
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	check_key_update_ge, .-check_key_update_ge
	.section	.rodata
.LC11:
	.string	"txke"
	.text
	.type	check_key_update_lt, @function
check_key_update_lt:
.LFB680:
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
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_get_channel@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_tx_key_epoch@PLT
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$461, %esi
	movq	%rax, %rdi
	call	test_uint64_t_lt@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	movl	$1, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	check_key_update_lt, .-check_key_update_lt
	.type	stream_info_hash, @function
stream_info_hash:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_strhash@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	stream_info_hash, .-stream_info_hash
	.type	stream_info_cmp, @function
stream_info_cmp:
.LFB682:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	stream_info_cmp, .-stream_info_cmp
	.type	cleanup_stream, @function
cleanup_stream:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$480, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	cleanup_stream, .-cleanup_stream
	.type	helper_cleanup_streams, @function
helper_cleanup_streams:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	cleanup_stream(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_STREAM_INFO_doall
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lh_STREAM_INFO_free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L86
.L89:
	nop
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	helper_cleanup_streams, .-helper_cleanup_streams
	.type	join_threads, @function
join_threads:
.LFB685:
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
	movq	$0, -16(%rbp)
	jmp	.L91
.L94:
	movq	-16(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L92
	movq	-16(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %rax
	leaq	-20(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_join@PLT
	movq	-16(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jne	.L93
	movl	$0, -4(%rbp)
.L93:
	movq	-16(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_clean@PLT
	movq	-16(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, 32(%rax)
.L92:
	movq	-16(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_free@PLT
	addq	$1, -16(%rbp)
.L91:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L94
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	join_threads, .-join_threads
	.type	join_server_thread, @function
join_server_thread:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L97
	movl	$1, %eax
	jmp	.L99
.L97:
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	movq	-24(%rbp), %rax
	movl	$1, 308(%rax)
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_condvar_signal@PLT
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	leaq	-4(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_join@PLT
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_clean@PLT
	movq	-24(%rbp), %rax
	movq	$0, 280(%rax)
	movl	$1, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	join_server_thread, .-join_server_thread
	.type	s_checked_out_p, @function
s_checked_out_p:
.LFB687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L101
	movq	-8(%rbp), %rax
	addq	$312, %rax
	jmp	.L103
.L101:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	addq	$56, %rax
.L103:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	s_checked_out_p, .-s_checked_out_p
	.type	s_lock, @function
s_lock:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L105
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	jmp	.L106
.L105:
	movl	$-1, %eax
.L106:
	movq	-24(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	s_checked_out_p
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L108
.L107:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	jmp	.L109
.L108:
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	s_lock, .-s_lock
	.type	s_unlock, @function
s_unlock:
.LFB689:
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
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	s_checked_out_p
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L114
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L114
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	jmp	.L110
.L114:
	nop
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	s_unlock, .-s_unlock
	.type	server_helper_thread, @function
server_helper_thread:
.LFB690:
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
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
.L120:
	movq	-8(%rbp), %rax
	movl	304(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	308(%rax), %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L123
	cmpl	$0, -12(%rbp)
	jne	.L118
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_condvar_wait@PLT
	jmp	.L119
.L118:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	movl	$1, %edi
	call	OSSL_sleep@PLT
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
.L119:
	jmp	.L120
.L123:
	nop
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	server_helper_thread, .-server_helper_thread
	.type	helper_cleanup, @function
helper_cleanup:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	join_threads
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	join_server_thread
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$622, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-8(%rbp), %rax
	movl	204(%rax), %eax
	testl	%eax, %eax
	jne	.L125
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	helper_cleanup_streams
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	jmp	.L126
.L125:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	helper_cleanup_streams
.L126:
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	helper_cleanup_streams
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	qtest_fault_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 184(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L127
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movq	-8(%rbp), %rax
	movl	$-1, (%rax)
.L127:
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	js	.L128
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movq	-8(%rbp), %rax
	movl	$-1, 80(%rax)
.L128:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-8(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_free@PLT
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	call	ossl_crypto_condvar_free@PLT
	movq	-8(%rbp), %rax
	addq	$288, %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_free@PLT
	movq	-8(%rbp), %rax
	addq	$296, %rax
	movq	%rax, %rdi
	call	ossl_crypto_condvar_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	helper_cleanup, .-helper_cleanup
	.section	.rodata
	.align 8
.LC12:
	.string	"h->time_lock = CRYPTO_THREAD_lock_new()"
	.align 8
.LC13:
	.string	"h->s_streams = lh_STREAM_INFO_new(stream_info_hash, stream_info_cmp)"
	.align 8
.LC14:
	.string	"h->c_streams = lh_STREAM_INFO_new(stream_info_hash, stream_info_cmp)"
.LC15:
	.string	"h->s_fd"
.LC16:
	.string	"BIO_socket_nbio(h->s_fd, 1)"
	.align 8
.LC17:
	.string	"h->s_net_bio_orig_addr = BIO_ADDR_new()"
	.align 8
.LC18:
	.string	"h->s_net_bio_addr = BIO_ADDR_new()"
	.align 8
.LC19:
	.string	"BIO_ADDR_rawmake(h->s_net_bio_orig_addr, AF_INET, &ina, sizeof(ina), 0)"
	.align 8
.LC20:
	.string	"BIO_bind(h->s_fd, h->s_net_bio_orig_addr, 0)"
	.align 8
.LC21:
	.string	"BIO_sock_info(h->s_fd, BIO_SOCK_INFO_ADDRESS, &info)"
	.align 8
.LC22:
	.string	"BIO_ADDR_rawport(h->s_net_bio_addr)"
	.align 8
.LC23:
	.string	"h->s_net_bio = h->s_net_bio_own = BIO_new_dgram(h->s_fd, 0)"
.LC24:
	.string	"h->s_qtf_wbio"
	.align 8
.LC25:
	.string	"BIO_push(h->s_qtf_wbio, h->s_net_bio)"
	.align 8
.LC26:
	.string	"h->s_priv = ossl_quic_tserver_new(&s_args, certfile, keyfile)"
.LC27:
	.string	"h->qtf"
.LC28:
	.string	"h->c_fd"
.LC29:
	.string	"BIO_socket_nbio(h->c_fd, 1)"
	.align 8
.LC30:
	.string	"h->c_net_bio = h->c_net_bio_own = BIO_new_dgram(h->c_fd, 0)"
	.align 8
.LC31:
	.string	"BIO_dgram_set_peer(h->c_net_bio, h->s_net_bio_addr)"
	.align 8
.LC32:
	.string	"h->c_ctx = SSL_CTX_new(OSSL_QUIC_client_method())"
.LC33:
	.string	"quic_multistream_test: %s"
	.align 8
.LC34:
	.string	"ossl_quic_set_diag_title(h->c_ctx, title)"
.LC35:
	.string	"h->c_conn = SSL_new(h->c_ctx)"
	.align 8
.LC36:
	.string	"ossl_quic_conn_set_override_now_cb(h->c_conn, get_time, h)"
.LC37:
	.string	"BIO_up_ref(h->c_net_bio)"
	.align 8
.LC38:
	.string	"SSL_set_blocking_mode(h->c_conn, h->blocking)"
	.align 8
.LC39:
	.string	"h->misc_m = ossl_crypto_mutex_new()"
	.align 8
.LC40:
	.string	"h->misc_cv = ossl_crypto_condvar_new()"
	.align 8
.LC41:
	.string	"h->server_thread.m = ossl_crypto_mutex_new()"
	.align 8
.LC42:
	.string	"h->server_thread.c = ossl_crypto_condvar_new()"
.LC43:
	.string	"h->server_thread.t"
	.text
	.type	helper_init, @function
helper_init:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movl	%edx, -260(%rbp)
	movl	%ecx, -264(%rbp)
	movl	%r8d, -268(%rbp)
	movl	$0, -20(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movq	%xmm0, -32(%rbp)
	movq	-248(%rbp), %rax
	movl	$320, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-248(%rbp), %rax
	movl	$-1, 80(%rax)
	movq	-248(%rbp), %rax
	movl	$-1, (%rax)
	movq	-248(%rbp), %rax
	movl	-260(%rbp), %edx
	movl	%edx, 204(%rax)
	movq	-248(%rbp), %rax
	movl	-264(%rbp), %edx
	movl	%edx, 196(%rax)
	movq	-248(%rbp), %rax
	movl	-268(%rbp), %edx
	movl	%edx, 208(%rax)
	movq	-248(%rbp), %rbx
	call	ossl_time_zero
	movq	%rax, 176(%rbx)
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 168(%rdx)
	movq	-248(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$703, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L169
	leaq	stream_info_cmp(%rip), %rdx
	leaq	stream_info_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_STREAM_INFO_new
	movq	-248(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-248(%rbp), %rax
	movq	72(%rax), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$706, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L170
	leaq	stream_info_cmp(%rip), %rdx
	leaq	stream_info_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_STREAM_INFO_new
	movq	-248(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-248(%rbp), %rax
	movq	120(%rax), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$710, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L171
	movl	$2130706433, %edi
	call	htonl@PLT
	movl	%eax, -20(%rbp)
	movl	$0, %ecx
	movl	$17, %edx
	movl	$2, %esi
	movl	$2, %edi
	call	BIO_socket@PLT
	movq	-248(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-248(%rbp), %rax
	movl	(%rax), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$717, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L172
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$720, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L173
	call	BIO_ADDR_new@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-248(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$723, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L174
	call	BIO_ADDR_new@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-248(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$724, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L174
	movq	-248(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-20(%rbp), %rdx
	movl	$0, %r8d
	movl	$4, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$727, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L175
	movq	-248(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	BIO_bind@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$731, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L176
	movq	-248(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	leaq	-104(%rbp), %rdx
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_sock_info@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$735, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L177
	movq	-248(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movzwl	%ax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$738, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L178
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_new_dgram@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$741, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L179
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	je	.L180
	cmpl	$0, -268(%rbp)
	je	.L144
	call	qtest_get_bio_method@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-248(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$749, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L181
	movq	-248(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$752, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L182
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L147
.L144:
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.L147:
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -40(%rbp)
	leaq	get_time(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	keyfile(%rip), %rdx
	movq	certfile(%rip), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tserver_new@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-248(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$766, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L183
	cmpl	$0, -264(%rbp)
	jne	.L149
	movq	-248(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 56(%rax)
.L149:
	cmpl	$0, -268(%rbp)
	je	.L150
	movq	-248(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	qtest_create_injector@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 184(%rdx)
	movq	-248(%rbp), %rax
	movq	184(%rax), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$774, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L184
	movq	-248(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
.L150:
	movq	-248(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-248(%rbp), %rax
	movq	$0, 32(%rax)
	movl	$0, %ecx
	movl	$17, %edx
	movl	$2, %esi
	movl	$2, %edi
	call	BIO_socket@PLT
	movq	-248(%rbp), %rdx
	movl	%eax, 80(%rdx)
	movq	-248(%rbp), %rax
	movl	80(%rax), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$784, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L185
	movq	-248(%rbp), %rax
	movl	80(%rax), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	BIO_socket_nbio@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$787, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L186
	movq	-248(%rbp), %rax
	movl	80(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	BIO_new_dgram@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-248(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-248(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$790, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L187
	movq	-248(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$793, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L188
	call	OSSL_QUIC_client_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-248(%rbp), %rax
	movq	104(%rax), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$796, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L189
	movq	-256(%rbp), %rdx
	leaq	.LC33(%rip), %rsi
	leaq	-240(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-248(%rbp), %rax
	movq	104(%rax), %rax
	leaq	-240(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_set_diag_title@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$801, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L190
	movq	-248(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	SSL_new@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-248(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$804, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L191
	movq	-248(%rbp), %rax
	movq	112(%rax), %rax
	movq	-248(%rbp), %rdx
	leaq	get_time(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_set_override_now_cb@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$808, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L192
	movq	-248(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_rbio@PLT
	movq	-248(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-248(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$815, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L193
	movq	-248(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-248(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_wbio@PLT
	movq	-248(%rbp), %rax
	movl	196(%rax), %edx
	movq	-248(%rbp), %rax
	movq	112(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_set_blocking_mode@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$820, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L194
	call	ossl_crypto_mutex_new@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 144(%rdx)
	movq	-248(%rbp), %rax
	movq	144(%rax), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$824, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L195
	call	ossl_crypto_condvar_new@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 152(%rdx)
	movq	-248(%rbp), %rax
	movq	152(%rax), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$826, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L196
	movq	-248(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L164
	call	ossl_crypto_mutex_new@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 288(%rdx)
	movq	-248(%rbp), %rax
	movq	288(%rax), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$832, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L197
	call	ossl_crypto_condvar_new@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 296(%rdx)
	movq	-248(%rbp), %rax
	movq	296(%rax), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$835, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L198
	movq	-248(%rbp), %rax
	leaq	server_helper_thread(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_crypto_thread_native_start@PLT
	movq	-248(%rbp), %rdx
	movq	%rax, 280(%rdx)
	movq	-248(%rbp), %rax
	movq	280(%rax), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$840, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L199
.L164:
	movq	-248(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 160(%rbx)
	movq	-248(%rbp), %rax
	movl	$1, 192(%rax)
	movl	$1, %eax
	jmp	.L168
.L169:
	nop
	jmp	.L131
.L170:
	nop
	jmp	.L131
.L171:
	nop
	jmp	.L131
.L172:
	nop
	jmp	.L131
.L173:
	nop
	jmp	.L131
.L174:
	nop
	jmp	.L131
.L175:
	nop
	jmp	.L131
.L176:
	nop
	jmp	.L131
.L177:
	nop
	jmp	.L131
.L178:
	nop
	jmp	.L131
.L179:
	nop
	jmp	.L131
.L180:
	nop
	jmp	.L131
.L181:
	nop
	jmp	.L131
.L182:
	nop
	jmp	.L131
.L183:
	nop
	jmp	.L131
.L184:
	nop
	jmp	.L131
.L185:
	nop
	jmp	.L131
.L186:
	nop
	jmp	.L131
.L187:
	nop
	jmp	.L131
.L188:
	nop
	jmp	.L131
.L189:
	nop
	jmp	.L131
.L190:
	nop
	jmp	.L131
.L191:
	nop
	jmp	.L131
.L192:
	nop
	jmp	.L131
.L193:
	nop
	jmp	.L131
.L194:
	nop
	jmp	.L131
.L195:
	nop
	jmp	.L131
.L196:
	nop
	jmp	.L131
.L197:
	nop
	jmp	.L131
.L198:
	nop
	jmp	.L131
.L199:
	nop
.L131:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	helper_cleanup
	movl	$0, %eax
.L168:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	helper_init, .-helper_init
	.section	.rodata
.LC44:
	.string	"h"
	.align 8
.LC45:
	.string	"hl->c_streams = lh_STREAM_INFO_new(stream_info_hash, stream_info_cmp)"
	.text
	.type	helper_local_init, @function
helper_local_init:
.LFB693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-16(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$865, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L201
	movl	$0, %eax
	jmp	.L202
.L201:
	cmpl	$0, -20(%rbp)
	jns	.L203
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L204
.L203:
	leaq	stream_info_cmp(%rip), %rdx
	leaq	stream_info_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_STREAM_INFO_new
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$871, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L204
	movl	$0, %eax
	jmp	.L202
.L204:
	movl	$1, %eax
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	helper_local_init, .-helper_local_init
	.type	helper_local_cleanup, @function
helper_local_cleanup:
.LFB694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L209
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	js	.L208
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	helper_cleanup_streams
.L208:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L205
.L209:
	nop
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	helper_local_cleanup, .-helper_local_cleanup
	.section	.rodata
.LC46:
	.string	"stream_name"
.LC47:
	.string	"DEFAULT"
	.text
	.type	get_stream_info, @function
get_stream_info:
.LFB695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$895, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L211
	movl	$0, %eax
	jmp	.L216
.L211:
	leaq	.LC47(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L213
	movl	$0, %eax
	jmp	.L216
.L213:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_STREAM_INFO_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L214
	leaq	.LC1(%rip), %rax
	movl	$904, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L215
	movl	$0, %eax
	jmp	.L216
.L215:
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_STREAM_INFO_insert
.L214:
	movq	-8(%rbp), %rax
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	get_stream_info, .-get_stream_info
	.type	helper_local_set_c_stream, @function
helper_local_set_c_stream:
.LFB696:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stream_info
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L218
	movl	$0, %eax
	jmp	.L219
.L218:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 16(%rax)
	movl	$1, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	helper_local_set_c_stream, .-helper_local_set_c_stream
	.type	helper_local_get_c_stream, @function
helper_local_get_c_stream:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC47(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L221
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	112(%rax), %rax
	jmp	.L222
.L221:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stream_info
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L223
	movl	$0, %eax
	jmp	.L222
.L223:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L222:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	helper_local_get_c_stream, .-helper_local_get_c_stream
	.type	helper_set_s_stream, @function
helper_set_s_stream:
.LFB698:
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
	leaq	.LC47(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L225
	movl	$0, %eax
	jmp	.L226
.L225:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stream_info
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L227
	movl	$0, %eax
	jmp	.L226
.L227:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L226:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	helper_set_s_stream, .-helper_set_s_stream
	.type	helper_get_s_stream, @function
helper_get_s_stream:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC47(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L229
	movq	$-1, %rax
	jmp	.L230
.L229:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_stream_info
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L231
	movq	$-1, %rax
	jmp	.L230
.L231:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	helper_get_s_stream, .-helper_get_s_stream
	.type	helper_packet_plain_listener, @function
helper_packet_plain_listener:
.LFB700:
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
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	helper_packet_plain_listener, .-helper_packet_plain_listener
	.type	helper_handshake_listener, @function
helper_handshake_listener:
.LFB701:
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
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	224(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	helper_handshake_listener, .-helper_handshake_listener
	.type	helper_datagram_listener, @function
helper_datagram_listener:
.LFB702:
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
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	232(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	helper_datagram_listener, .-helper_datagram_listener
	.type	is_want, @function
is_want:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -4(%rbp)
	cmpl	$2, -4(%rbp)
	je	.L239
	cmpl	$3, -4(%rbp)
	jne	.L240
.L239:
	movl	$1, %eax
	jmp	.L242
.L240:
	movl	$0, %eax
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	is_want, .-is_want
	.section	.rodata
	.align 8
.LC48:
	.ascii	"(ec == SSL_ERROR_NONE && w == SSL_NOTHING) || (ec == SSL_ERR"
	.ascii	"OR_ZERO_RETURN && w == SSL_NOTHING) || (ec == SSL_ERROR_SSL "
	.ascii	"&& w == SSL_NOTHING) || (ec == SSL_ERROR_SYSCALL && w == SSL"
	.ascii	"_NOTHING) || (ec == SSL_ERROR_WANT_READ && w == SSL_"
	.string	"READING) || (ec == SSL_ERROR_WANT_WRITE && w == SSL_WRITING) || (ec == SSL_ERROR_WANT_CLIENT_HELLO_CB && w == SSL_CLIENT_HELLO_CB) || (ec == SSL_ERROR_WANT_X509_LOOKUP && w == SSL_X509_LOOKUP) || (ec == SSL_ERROR_WANT_RETRY_VERIFY && w == SSL_RETRY_VERIFY)"
.LC49:
	.string	"got error=%d, want=%d"
	.text
	.type	check_consistent_want, @function
check_consistent_want:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L244
	cmpl	$1, -8(%rbp)
	je	.L245
.L244:
	cmpl	$6, -4(%rbp)
	jne	.L246
	cmpl	$1, -8(%rbp)
	je	.L245
.L246:
	cmpl	$1, -4(%rbp)
	jne	.L247
	cmpl	$1, -8(%rbp)
	je	.L245
.L247:
	cmpl	$5, -4(%rbp)
	jne	.L248
	cmpl	$1, -8(%rbp)
	je	.L245
.L248:
	cmpl	$2, -4(%rbp)
	jne	.L249
	cmpl	$3, -8(%rbp)
	je	.L245
.L249:
	cmpl	$3, -4(%rbp)
	jne	.L250
	cmpl	$2, -8(%rbp)
	je	.L245
.L250:
	cmpl	$11, -4(%rbp)
	jne	.L251
	cmpl	$7, -8(%rbp)
	je	.L245
.L251:
	cmpl	$4, -4(%rbp)
	jne	.L252
	cmpl	$4, -8(%rbp)
	je	.L245
.L252:
	cmpl	$12, -4(%rbp)
	jne	.L253
	cmpl	$8, -8(%rbp)
	jne	.L253
.L245:
	movl	$1, %ecx
	jmp	.L254
.L253:
	movl	$0, %ecx
.L254:
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1016, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L255
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$1029, %esi
	movl	$0, %eax
	call	test_error@PLT
.L255:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	check_consistent_want, .-check_consistent_want
	.section	.rodata
	.align 8
.LC50:
	.string	"helper_local_init(hl, h, thread_idx)"
	.align 8
.LC51:
	.string	"ossl_time_compare(ossl_time_now(), op_deadline)"
.LC52:
	.string	"op %zu timed out on thread %d"
	.align 8
.LC53:
	.string	"opcode %lu not allowed on child thread"
.LC54:
	.string	"repeat_stack_len"
	.align 8
.LC55:
	.string	"still waiting for other threads to finish (%zu)"
	.align 8
.LC56:
	.string	"script \"%s\" finished on thread %d"
.LC57:
	.string	"OSSL_NELEM(repeat_stack_idx)"
.LC58:
	.string	"op->arg1"
.LC59:
	.string	"ok"
.LC60:
	.string	"UINT8_MAX"
.LC61:
	.string	"alpn_len"
	.align 8
.LC62:
	.string	"tmp_buf = (unsigned char *)OPENSSL_malloc(alpn_len + 1)"
	.align 8
.LC63:
	.string	"SSL_set_alpn_protos(h->c_conn, tmp_buf, alpn_len + 1)"
.LC64:
	.string	"spin again in blocking mode"
.LC65:
	.string	"ret"
.LC66:
	.string	"c_tgt"
.LC67:
	.string	"r"
.LC68:
	.string	"bytes_written"
.LC69:
	.string	"UINT64_MAX"
.LC70:
	.string	"s_stream_id"
	.align 8
.LC71:
	.string	"ossl_quic_tserver_write(ACQUIRE_S(), s_stream_id, op->arg0, op->arg1, &bytes_written)"
.LC72:
	.string	"SSL_stream_conclude(c_tgt, 0)"
	.align 8
.LC73:
	.string	"tmp_buf = OPENSSL_malloc(op->arg1)"
.LC74:
	.string	"op->arg0"
.LC75:
	.string	"tmp_buf"
	.align 8
.LC76:
	.string	"ossl_quic_tserver_read(ACQUIRE_S(), s_stream_id, tmp_buf + offset, op->arg1 - offset, &bytes_read)"
.LC77:
	.string	"bytes_read"
.LC78:
	.string	"SSL_ERROR_ZERO_RETURN"
.LC79:
	.string	"SSL_get_error(c_tgt, 0)"
.LC80:
	.string	"SSL_NOTHING"
.LC81:
	.string	"SSL_want(c_tgt)"
.LC82:
	.string	"op->stream_name"
	.align 8
.LC83:
	.string	"c_stream = ossl_quic_detach_stream(h->c_conn)"
	.align 8
.LC84:
	.string	"helper_local_set_c_stream(hl, op->stream_name, c_stream)"
	.align 8
.LC85:
	.string	"ossl_quic_attach_stream(h->c_conn, c_tgt)"
	.align 8
.LC86:
	.string	"helper_local_set_c_stream(hl, op->stream_name, NULL)"
.LC87:
	.string	"c_stream"
.LC88:
	.string	"SSL_R_STREAM_COUNT_LIMITED"
	.align 8
.LC89:
	.string	"ERR_GET_REASON(ERR_get_error())"
.LC90:
	.string	"op->arg2"
.LC91:
	.string	"SSL_get_stream_id(c_stream)"
	.align 8
.LC92:
	.string	"ossl_quic_tserver_stream_new(ACQUIRE_S(), op->arg1 > 0, &stream_id)"
.LC93:
	.string	"stream_id"
	.align 8
.LC94:
	.string	"helper_set_s_stream(h, op->stream_name, stream_id)"
	.align 8
.LC95:
	.string	"helper_set_s_stream(h, op->stream_name, new_stream_id)"
	.align 8
.LC96:
	.string	"c_stream = SSL_accept_stream(h->c_conn, SSL_ACCEPT_STREAM_NO_BLOCK)"
.LC97:
	.string	"!SSL_is_connection(c_tgt)"
	.align 8
.LC98:
	.string	"SSL_set_default_stream_mode(c_tgt, op->arg1)"
	.align 8
.LC99:
	.string	"SSL_set_incoming_stream_policy(c_tgt, op->arg1, 0)"
	.align 8
.LC100:
	.string	"SSL_shutdown_ex(c_tgt, SSL_SHUTDOWN_FLAG_WAIT_PEER, NULL, 0)"
	.align 8
.LC101:
	.string	"(cc_info.flags & SSL_CONN_CLOSE_FLAG_TRANSPORT) == 0"
.LC102:
	.string	"expect_app"
	.align 8
.LC103:
	.string	"(cc_info.flags & SSL_CONN_CLOSE_FLAG_LOCAL) == 0"
.LC104:
	.string	"expect_remote"
.LC105:
	.string	"cc_info.error_code"
.LC106:
	.string	"error_code"
.LC107:
	.string	"Connection close reason: %s"
	.align 8
.LC108:
	.string	"tc = ossl_quic_tserver_get_terminate_cause(ACQUIRE_S())"
.LC109:
	.string	"tc->error_code"
.LC110:
	.string	"tc->app"
.LC111:
	.string	"tc->remote"
	.align 8
.LC112:
	.string	"helper_set_s_stream(h, op->stream_name, op->arg2)"
	.align 8
.LC113:
	.string	"helper_set_s_stream(h, op->stream_name, UINT64_MAX)"
.LC114:
	.string	"apple"
	.align 8
.LC115:
	.string	"ossl_quic_tserver_write(ACQUIRE_S(), s_stream_id, (const unsigned char *)\"apple\", 5, &bytes_written)"
	.align 8
.LC116:
	.string	"ret == 0 || (op->arg1 && bytes_read == 0)"
	.align 8
.LC117:
	.string	"SSL_stream_reset(c_tgt, &args, sizeof(args))"
.LC118:
	.string	"h->threads"
	.align 8
.LC119:
	.string	"max one NEW_THREAD operation per script"
.LC120:
	.string	"h->threads[i].m"
.LC121:
	.string	"h->threads[i].t"
	.align 8
.LC122:
	.string	"(size_t)SSL_get_error(c_tgt, 0)"
	.align 8
.LC123:
	.string	"(size_t)ERR_GET_REASON(ERR_peek_last_error())"
	.align 8
.LC124:
	.string	"(size_t)ERR_GET_LIB(ERR_peek_last_error())"
	.align 8
.LC125:
	.string	"qtest_fault_set_packet_plain_listener(h->qtf, h->qtf_packet_plain_cb != NULL ? helper_packet_plain_listener : NULL, h)"
	.align 8
.LC126:
	.string	"qtest_fault_set_handshake_listener(h->qtf, h->qtf_handshake_cb != NULL ? helper_handshake_listener : NULL, h)"
	.align 8
.LC127:
	.string	"qtest_fault_set_datagram_listener(h->qtf, h->qtf_datagram_cb != NULL ? helper_datagram_listener : NULL, h)"
	.align 8
.LC128:
	.string	"ossl_quic_set_write_buffer_size(c_tgt, op->arg1)"
	.align 8
.LC129:
	.string	"ossl_quic_tserver_new_ticket(ACQUIRE_S())"
.LC130:
	.string	"unknown op"
	.align 8
.LC131:
	.string	"failed in script \"%s\" at op %zu, thread %d\n"
	.align 8
.LC132:
	.string	"while repeating, iteration %zu of %zu, starting at script op %zu"
.LC133:
	.string	"?"
.LC134:
	.string	"-"
.LC135:
	.string	"transport"
.LC136:
	.string	"app"
.LC137:
	.string	"local"
.LC138:
	.string	"remote"
	.align 8
.LC139:
	.string	"client side is closed: %llu(%s)/%llu(%s), %s, %s, reason: \"%s\""
	.align 8
.LC140:
	.string	"server side is closed: %llu(%s)/%llu(%s), %s, %s, reason: \"%s\""
	.text
	.type	run_script_worker, @function
run_script_worker:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$816, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	%rdx, -824(%rbp)
	movl	%ecx, -828(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -152(%rbp)
	movl	$0, -60(%rbp)
	movl	$1, -64(%rbp)
	movl	$0, -68(%rbp)
	call	ossl_time_zero
	movq	%rax, -352(%rbp)
	call	ossl_time_zero
	movq	%rax, -360(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	$0, -80(%rbp)
	movl	-828(%rbp), %edx
	movq	-808(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	helper_local_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1055, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L531
.L258:
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	$-1, -96(%rbp)
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_unlock
	cmpl	$0, -60(%rbp)
	je	.L260
	movl	$0, -60(%rbp)
	jmp	.L261
.L260:
	cmpl	$0, -64(%rbp)
	jne	.L262
	addq	$1, -56(%rbp)
.L262:
	movl	$0, -64(%rbp)
	movq	$0, -48(%rbp)
	call	ossl_time_now@PLT
	movq	%rax, -352(%rbp)
	movabsq	$60000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, -360(%rbp)
.L261:
	call	ossl_time_now@PLT
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_compare
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1096, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	jne	.L263
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movl	-828(%rbp), %esi
	leaq	.LC52(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%esi, %r8d
	movl	$1097, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L263:
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-816(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L264
	movq	-152(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	helper_local_get_c_stream
	movq	%rax, -88(%rbp)
	cmpl	$0, -828(%rbp)
	jns	.L265
	movq	-152(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	helper_get_s_stream
	movq	%rax, -96(%rbp)
	jmp	.L264
.L265:
	movq	$-1, -96(%rbp)
.L264:
	cmpl	$0, -828(%rbp)
	jns	.L266
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	jne	.L267
	movq	-808(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	jmp	.L266
.L267:
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L266
	movq	-808(%rbp), %rax
	movl	304(%rax), %eax
	testl	%eax, %eax
	jne	.L266
	movq	-808(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	movq	-808(%rbp), %rax
	movl	$1, 304(%rax)
	movq	-808(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_condvar_signal@PLT
	movq	-808(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
.L266:
	movq	-160(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L269
	cmpl	$0, -828(%rbp)
	jns	.L270
	cmpl	$0, -36(%rbp)
	je	.L269
.L270:
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	SSL_handle_events@PLT
.L269:
	cmpl	$0, -828(%rbp)
	js	.L271
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$52, %eax
	ja	.L272
	cmpl	$51, %eax
	jnb	.L532
	cmpl	$40, %eax
	ja	.L272
	cmpl	$37, %eax
	jnb	.L532
	cmpl	$35, %eax
	je	.L532
	cmpl	$35, %eax
	ja	.L272
	cmpl	$33, %eax
	ja	.L272
	cmpl	$32, %eax
	jnb	.L532
	cmpl	$18, %eax
	je	.L532
	cmpl	$18, %eax
	ja	.L272
	cmpl	$16, %eax
	je	.L532
	cmpl	$16, %eax
	ja	.L272
	cmpl	$14, %eax
	je	.L532
	cmpl	$14, %eax
	ja	.L272
	cmpl	$10, %eax
	je	.L532
	cmpl	$10, %eax
	ja	.L272
	cmpl	$8, %eax
	je	.L532
	cmpl	$8, %eax
	ja	.L272
	cmpl	$6, %eax
	je	.L532
	cmpl	$6, %eax
	ja	.L272
	cmpl	$1, %eax
	jbe	.L532
	cmpl	$4, %eax
	je	.L532
.L272:
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1155, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L532:
	nop
.L271:
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$54, %eax
	je	.L274
	cmpl	$54, %eax
	ja	.L275
	cmpl	$53, %eax
	je	.L276
	cmpl	$53, %eax
	ja	.L275
	cmpl	$52, %eax
	je	.L277
	cmpl	$52, %eax
	ja	.L275
	cmpl	$51, %eax
	je	.L278
	cmpl	$51, %eax
	ja	.L275
	cmpl	$50, %eax
	je	.L279
	cmpl	$50, %eax
	ja	.L275
	cmpl	$49, %eax
	je	.L280
	cmpl	$49, %eax
	ja	.L275
	cmpl	$48, %eax
	je	.L281
	cmpl	$48, %eax
	ja	.L275
	cmpl	$47, %eax
	je	.L282
	cmpl	$47, %eax
	ja	.L275
	cmpl	$46, %eax
	je	.L283
	cmpl	$46, %eax
	ja	.L275
	cmpl	$45, %eax
	je	.L284
	cmpl	$45, %eax
	ja	.L275
	cmpl	$44, %eax
	je	.L285
	cmpl	$44, %eax
	ja	.L275
	cmpl	$43, %eax
	je	.L286
	cmpl	$43, %eax
	ja	.L275
	cmpl	$42, %eax
	je	.L287
	cmpl	$42, %eax
	ja	.L275
	cmpl	$41, %eax
	je	.L288
	cmpl	$41, %eax
	ja	.L275
	cmpl	$40, %eax
	je	.L289
	cmpl	$40, %eax
	ja	.L275
	cmpl	$39, %eax
	je	.L290
	cmpl	$39, %eax
	ja	.L275
	cmpl	$38, %eax
	je	.L291
	cmpl	$38, %eax
	ja	.L275
	cmpl	$37, %eax
	je	.L292
	cmpl	$37, %eax
	ja	.L275
	cmpl	$36, %eax
	je	.L293
	cmpl	$36, %eax
	ja	.L275
	cmpl	$35, %eax
	je	.L294
	cmpl	$35, %eax
	ja	.L275
	cmpl	$34, %eax
	je	.L295
	cmpl	$34, %eax
	ja	.L275
	cmpl	$33, %eax
	je	.L296
	cmpl	$33, %eax
	ja	.L275
	cmpl	$32, %eax
	je	.L297
	cmpl	$32, %eax
	ja	.L275
	cmpl	$31, %eax
	je	.L298
	cmpl	$31, %eax
	ja	.L275
	cmpl	$30, %eax
	je	.L299
	cmpl	$30, %eax
	ja	.L275
	cmpl	$29, %eax
	je	.L274
	cmpl	$29, %eax
	ja	.L275
	cmpl	$28, %eax
	je	.L300
	cmpl	$28, %eax
	ja	.L275
	cmpl	$27, %eax
	je	.L301
	cmpl	$27, %eax
	ja	.L275
	cmpl	$26, %eax
	je	.L302
	cmpl	$26, %eax
	ja	.L275
	cmpl	$25, %eax
	je	.L303
	cmpl	$25, %eax
	ja	.L275
	cmpl	$24, %eax
	je	.L304
	cmpl	$24, %eax
	ja	.L275
	cmpl	$23, %eax
	je	.L305
	cmpl	$23, %eax
	ja	.L275
	cmpl	$22, %eax
	je	.L306
	cmpl	$22, %eax
	ja	.L275
	cmpl	$21, %eax
	je	.L307
	cmpl	$21, %eax
	ja	.L275
	cmpl	$20, %eax
	je	.L308
	cmpl	$20, %eax
	ja	.L275
	cmpl	$19, %eax
	je	.L309
	cmpl	$19, %eax
	ja	.L275
	cmpl	$18, %eax
	je	.L310
	cmpl	$18, %eax
	ja	.L275
	cmpl	$17, %eax
	je	.L311
	cmpl	$17, %eax
	ja	.L275
	cmpl	$16, %eax
	je	.L312
	cmpl	$16, %eax
	ja	.L275
	cmpl	$15, %eax
	je	.L313
	cmpl	$15, %eax
	ja	.L275
	cmpl	$14, %eax
	je	.L314
	cmpl	$14, %eax
	ja	.L275
	cmpl	$13, %eax
	je	.L315
	cmpl	$13, %eax
	ja	.L275
	cmpl	$12, %eax
	je	.L316
	cmpl	$12, %eax
	ja	.L275
	cmpl	$11, %eax
	je	.L317
	cmpl	$11, %eax
	ja	.L275
	cmpl	$10, %eax
	je	.L318
	cmpl	$10, %eax
	ja	.L275
	cmpl	$9, %eax
	je	.L319
	cmpl	$9, %eax
	ja	.L275
	cmpl	$8, %eax
	je	.L320
	cmpl	$8, %eax
	ja	.L275
	cmpl	$7, %eax
	je	.L321
	cmpl	$7, %eax
	ja	.L275
	cmpl	$6, %eax
	je	.L322
	cmpl	$6, %eax
	ja	.L275
	cmpl	$5, %eax
	je	.L323
	cmpl	$5, %eax
	ja	.L275
	cmpl	$4, %eax
	je	.L324
	cmpl	$4, %eax
	ja	.L275
	cmpl	$3, %eax
	je	.L325
	cmpl	$3, %eax
	ja	.L275
	cmpl	$2, %eax
	je	.L326
	cmpl	$2, %eax
	ja	.L275
	testl	%eax, %eax
	je	.L327
	cmpl	$1, %eax
	je	.L328
	jmp	.L275
.L327:
	movq	-80(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1163, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L533
	cmpl	$0, -828(%rbp)
	jns	.L330
	movq	$0, -104(%rbp)
	jmp	.L331
.L335:
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-104(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L534
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-104(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-104(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	movl	52(%rax), %eax
	movl	%eax, -344(%rbp)
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-104(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	cmpl	$0, -344(%rbp)
	jne	.L333
	cmpl	$0, -68(%rbp)
	jne	.L334
	movq	-104(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1181, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -68(%rbp)
.L334:
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	-808(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, -60(%rbp)
	jmp	.L333
.L534:
	nop
.L333:
	addq	$1, -104(%rbp)
.L331:
	movq	-808(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	%rax, -104(%rbp)
	jb	.L335
.L330:
	movl	-828(%rbp), %ecx
	movq	-824(%rbp), %rax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$1191, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$1, -20(%rbp)
	jmp	.L259
.L297:
	movq	-80(%rbp), %rsi
	leaq	.LC57(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$1196, %esi
	movq	%rax, %rdi
	call	test_size_t_lt@PLT
	testl	%eax, %eax
	je	.L535
	movq	-152(%rbp), %rax
	movq	16(%rax), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1199, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L536
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, -464(%rbp,%rax,8)
	movq	-80(%rbp), %rax
	movq	$0, -528(%rbp,%rax,8)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, -592(%rbp,%rax,8)
	addq	$1, -80(%rbp)
	jmp	.L338
.L281:
	cmpq	$0, -88(%rbp)
	jne	.L537
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, -56(%rbp)
	jmp	.L338
.L276:
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L538
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, -56(%rbp)
	jmp	.L338
.L296:
	movq	-80(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1223, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L539
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movq	-528(%rbp,%rax,8), %rdx
	addq	$1, %rdx
	movq	%rdx, -528(%rbp,%rax,8)
	movq	-528(%rbp,%rax,8), %rdx
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movq	-592(%rbp,%rax,8), %rax
	cmpq	%rax, %rdx
	jne	.L342
	subq	$1, -80(%rbp)
	jmp	.L338
.L342:
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movq	-464(%rbp,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movl	$1, -60(%rbp)
	jmp	.L338
.L328:
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -340(%rbp)
	movq	-160(%rbp), %rax
	movq	$0, 24(%rax)
	cmpl	$0, -828(%rbp)
	jns	.L344
	movq	-808(%rbp), %rax
	movl	200(%rax), %eax
	testl	%eax, %eax
	je	.L344
	movq	-808(%rbp), %rax
	movl	$0, 200(%rax)
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	-808(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, -60(%rbp)
	jmp	.L338
.L344:
	cmpl	$0, -340(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1250, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L540
	jmp	.L259
.L326:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rsi
	leaq	.LC60(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$255, %r9d
	movq	%rsi, %r8
	movl	$1260, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	testl	%eax, %eax
	je	.L541
	movq	-336(%rbp), %rax
	addq	$1, %rax
	leaq	.LC1(%rip), %rcx
	movl	$1261, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC62(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1261, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L541
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-336(%rbp), %rdx
	movq	-328(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-336(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-336(%rbp), %rax
	leal	1(%rax), %edx
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_set_alpn_protos@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC63(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1268, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L542
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1272, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -32(%rbp)
	jmp	.L338
.L325:
	movl	$1, -36(%rbp)
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, -320(%rbp)
	movl	-320(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_consistent_want
	testl	%eax, %eax
	je	.L543
	cmpl	$1, -320(%rbp)
	je	.L544
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	jne	.L351
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movl	-320(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	is_want
	testl	%eax, %eax
	je	.L351
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L352
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1288, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L352:
	movl	$1, -60(%rbp)
	jmp	.L338
.L351:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L544
	movl	-320(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1290, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L544
	jmp	.L259
.L324:
	movq	$0, -600(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1301, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L545
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	-600(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	movl	%eax, -316(%rbp)
	cmpl	$0, -316(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1305, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L546
	movl	-316(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_consistent_want
	testl	%eax, %eax
	je	.L546
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-600(%rbp), %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1307, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L547
	jmp	.L546
.L277:
	movq	$0, -608(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1317, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L548
	movq	-152(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	-608(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SSL_write_ex2@PLT
	movl	%eax, -164(%rbp)
	cmpl	$0, -164(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1322, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L549
	movl	-164(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_consistent_want
	testl	%eax, %eax
	je	.L549
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-608(%rbp), %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1324, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L550
	jmp	.L549
.L323:
	movq	$0, -616(%rbp)
	movq	-96(%rbp), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1333, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ne@PLT
	testl	%eax, %eax
	je	.L551
	movq	-152(%rbp), %rax
	movq	16(%rax), %r12
	movq	-152(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	leaq	-616(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %r8
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC71(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1336, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L552
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-616(%rbp), %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1339, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L553
	jmp	.L552
.L318:
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_stream_conclude@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1346, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L554
	jmp	.L259
.L317:
	movq	-96(%rbp), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1353, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ne@PLT
	testl	%eax, %eax
	je	.L555
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_tserver_conclude@PLT
	jmp	.L338
.L303:
	movq	$0, -632(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1365, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L556
	leaq	-632(%rbp), %rdx
	leaq	-617(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	SSL_peek_ex@PLT
	testl	%eax, %eax
	je	.L369
	movq	-632(%rbp), %rax
	testq	%rax, %rax
	jne	.L557
.L369:
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L371
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1370, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L371:
	movl	$1, -60(%rbp)
	jmp	.L258
.L322:
	movq	$0, -640(%rbp)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L372
	cmpq	$0, -32(%rbp)
	jne	.L372
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1380, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1380, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L558
.L372:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-640(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	movl	%eax, -312(%rbp)
	movl	-312(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_consistent_want
	testl	%eax, %eax
	je	.L559
	cmpl	$0, -312(%rbp)
	jne	.L375
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L376
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1389, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L376:
	movl	$1, -60(%rbp)
	jmp	.L338
.L375:
	movq	-640(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L378
	movq	-640(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L379
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1393, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L379:
	movl	$1, -60(%rbp)
	jmp	.L338
.L378:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L380
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-152(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-152(%rbp), %rax
	movq	16(%rax), %r9
	movq	-32(%rbp), %r8
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$1397, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L560
.L380:
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1400, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -32(%rbp)
	jmp	.L338
.L321:
	movq	$0, -648(%rbp)
	movq	-96(%rbp), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1409, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ne@PLT
	testl	%eax, %eax
	je	.L561
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L383
	cmpq	$0, -32(%rbp)
	jne	.L383
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$1413, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC73(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1413, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L562
.L383:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rbx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %r12
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	leaq	-648(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %r8
	movq	%rbx, %rcx
	movq	%r12, %rdx
	movq	%rax, %rsi
	call	ossl_quic_tserver_read@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1416, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L563
	movq	-648(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L385
	movq	-648(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	-808(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, -60(%rbp)
	jmp	.L258
.L385:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L386
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-152(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-152(%rbp), %rax
	movq	16(%rax), %r9
	movq	-32(%rbp), %r8
	leaq	.LC74(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$1428, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L564
.L386:
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1431, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -32(%rbp)
	jmp	.L338
.L320:
	movq	$0, -664(%rbp)
	leaq	-664(%rbp), %rdx
	leaq	-649(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	movl	%eax, -308(%rbp)
	movl	-308(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_consistent_want
	testl	%eax, %eax
	je	.L565
	cmpl	$0, -308(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1444, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L565
	movq	-664(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1445, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L565
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	is_want
	testl	%eax, %eax
	je	.L390
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L391
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1449, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L391:
	movl	$1, -60(%rbp)
	jmp	.L258
.L390:
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movl	%eax, %esi
	leaq	.LC78(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$1451, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L566
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	movl	%eax, %esi
	leaq	.LC80(%rip), %rcx
	leaq	.LC81(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1455, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L567
	jmp	.L259
.L319:
	movq	-96(%rbp), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1462, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ne@PLT
	testl	%eax, %eax
	je	.L568
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_tserver_has_read_ended@PLT
	testl	%eax, %eax
	jne	.L569
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	-808(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, -60(%rbp)
	jmp	.L338
.L316:
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1474, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L570
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1477, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L571
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_detach_stream@PLT
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1480, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L572
	movq	-152(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-304(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	helper_local_set_c_stream
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1483, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L573
	jmp	.L259
.L315:
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1490, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L574
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1493, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L575
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_attach_stream@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1496, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L576
	movq	-152(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	helper_local_set_c_stream
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC86(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1499, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L577
	jmp	.L259
.L314:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	andl	$65536, %eax
	shrq	$16, %rax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
	andq	$-65537, -280(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1512, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L578
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1515, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L579
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movq	-280(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_new_stream@PLT
	movq	%rax, -296(%rbp)
	cmpl	$0, -284(%rbp)
	jne	.L406
	movq	-296(%rbp), %rax
	leaq	.LC87(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1519, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L580
.L406:
	cmpl	$0, -284(%rbp)
	je	.L407
	cmpq	$0, -296(%rbp)
	jne	.L407
	call	ERR_get_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movslq	%eax, %rsi
	leaq	.LC88(%rip), %rcx
	leaq	.LC89(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$411, %r9d
	movq	%rsi, %r8
	movl	$1523, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L581
	movq	-808(%rbp), %rax
	movq	272(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, 272(%rax)
	jmp	.L338
.L407:
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$-1, %rax
	je	.L409
	movq	-152(%rbp), %rax
	movq	40(%rax), %rbx
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_stream_id@PLT
	movq	%rax, %rsi
	leaq	.LC90(%rip), %rcx
	leaq	.LC91(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$1532, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L582
.L409:
	movq	-152(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-296(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	helper_local_set_c_stream
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1536, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L583
	jmp	.L259
.L313:
	movq	$-1, -672(%rbp)
	movq	-96(%rbp), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1545, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L584
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1548, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L585
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %ebx
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rcx
	leaq	-672(%rbp), %rax
	movq	%rax, %rdx
	movl	%ebx, %esi
	movq	%rcx, %rdi
	call	ossl_quic_tserver_stream_new@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC92(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1551, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L586
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$-1, %rax
	je	.L415
	movq	-152(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-672(%rbp), %rsi
	leaq	.LC90(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1557, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L587
.L415:
	movq	-672(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	helper_set_s_stream
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1560, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L588
	jmp	.L259
.L312:
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1570, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L589
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1573, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L590
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_accept_stream@PLT
	movq	%rax, -272(%rbp)
	cmpq	$0, -272(%rbp)
	jne	.L419
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L420
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1577, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L420:
	movl	$1, -60(%rbp)
	jmp	.L338
.L419:
	movq	-152(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-272(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	helper_local_set_c_stream
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1579, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L591
	jmp	.L259
.L299:
	movq	-96(%rbp), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1589, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L592
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1592, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L593
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	call	ossl_quic_tserver_pop_incoming_stream@PLT
	movq	%rax, -192(%rbp)
	cmpq	$-1, -192(%rbp)
	jne	.L424
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	-808(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, -60(%rbp)
	jmp	.L338
.L424:
	movq	-152(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-192(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	helper_set_s_stream
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC95(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1599, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L594
	jmp	.L259
.L311:
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_accept_stream@PLT
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1608, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L595
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	jmp	.L259
.L310:
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1618, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L596
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_connection@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC97(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1619, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L596
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1622, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L597
	movq	-152(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	helper_local_set_c_stream
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC86(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1625, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L598
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	$0, -88(%rbp)
	jmp	.L338
.L309:
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1635, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L599
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_set_default_stream_mode@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC98(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1638, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L600
	jmp	.L259
.L308:
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1645, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L601
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	SSL_set_incoming_stream_policy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1648, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L602
	jmp	.L259
.L307:
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_get_channel@PLT
	movq	%rax, -248(%rbp)
	movq	$0, -688(%rbp)
	movq	$0, -680(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get0_engine@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_engine_set_inhibit_tick@PLT
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1662, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L603
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rsi
	leaq	-688(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	SSL_shutdown_ex@PLT
	movl	%eax, -252(%rbp)
	movl	-252(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1668, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L604
	cmpl	$0, -252(%rbp)
	jne	.L605
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L439
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1672, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L439:
	movl	$1, -60(%rbp)
	jmp	.L258
.L279:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tserver_shutdown@PLT
	jmp	.L338
.L306:
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -800(%rbp)
	movaps	%xmm0, -784(%rbp)
	movq	%xmm0, -768(%rbp)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	andl	$1, %eax
	movl	%eax, -228(%rbp)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	andl	$2, %eax
	shrq	%rax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -232(%rbp)
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1689, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L606
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L442
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	SSL_shutdown_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC100(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1693, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L607
.L442:
	leaq	-800(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get_conn_close_info@PLT
	testl	%eax, %eax
	jne	.L443
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L444
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1699, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L444:
	movl	$1, -60(%rbp)
	jmp	.L258
.L443:
	movl	-768(%rbp), %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %edi
	movl	-228(%rbp), %esi
	leaq	.LC101(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1701, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L445
	movl	-768(%rbp), %eax
	andl	$1, %eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %edi
	movl	-232(%rbp), %esi
	leaq	.LC103(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1704, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L445
	movq	-800(%rbp), %rdi
	movq	-240(%rbp), %rsi
	leaq	.LC105(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1707, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L608
.L445:
	movq	-784(%rbp), %rax
	leaq	.LC107(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1708, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L259
.L305:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	andl	$1, %eax
	movl	%eax, -204(%rbp)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	andl	$2, %eax
	shrq	%rax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -208(%rbp)
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	call	ossl_quic_tserver_is_term_any@PLT
	testl	%eax, %eax
	jne	.L447
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	call	ossl_quic_tserver_ping@PLT
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	-808(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_tick@PLT
	movl	$1, -60(%rbp)
	jmp	.L338
.L447:
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_terminate_cause@PLT
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1726, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L609
	movq	-224(%rbp), %rax
	movq	(%rax), %rdi
	movq	-216(%rbp), %rsi
	leaq	.LC109(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1729, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L610
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %edi
	movl	-204(%rbp), %esi
	leaq	.LC110(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1730, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L610
	movq	-224(%rbp), %rax
	movzbl	32(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movl	-208(%rbp), %esi
	leaq	.LC111(%rip), %rcx
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$1731, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L611
	jmp	.L610
.L304:
	movq	-96(%rbp), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1738, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L612
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1741, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L613
	movq	-152(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	helper_set_s_stream
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1744, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L614
	jmp	.L259
.L295:
	movq	-96(%rbp), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1751, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ne@PLT
	testl	%eax, %eax
	je	.L615
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1754, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L616
	movq	-152(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-808(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	helper_set_s_stream
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1757, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L617
	jmp	.L259
.L302:
	movq	$0, -696(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1767, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L618
	leaq	-696(%rbp), %rdx
	leaq	.LC114(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movq	%rax, %rdi
	call	SSL_write_ex@PLT
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1771, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L619
	movl	-200(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_consistent_want
	testl	%eax, %eax
	jne	.L620
	jmp	.L619
.L301:
	movq	$0, -704(%rbp)
	movq	-96(%rbp), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1781, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ne@PLT
	testl	%eax, %eax
	je	.L621
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	leaq	-704(%rbp), %rcx
	leaq	.LC114(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rcx, %r8
	movl	$5, %ecx
	movq	%rax, %rsi
	call	ossl_quic_tserver_write@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1784, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L622
	jmp	.L259
.L300:
	movq	$0, -712(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1797, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L623
	leaq	-712(%rbp), %rdx
	leaq	-713(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1801, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L624
	movl	-196(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_consistent_want
	testl	%eax, %eax
	jne	.L625
	jmp	.L259
.L294:
	movq	$0, -728(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1814, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L626
	leaq	-728(%rbp), %rdx
	leaq	-729(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	SSL_read_ex@PLT
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1818, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L627
	movl	-184(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_consistent_want
	testl	%eax, %eax
	je	.L628
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	is_want
	testl	%eax, %eax
	je	.L629
	movq	-808(%rbp), %rax
	movl	196(%rax), %eax
	testl	%eax, %eax
	je	.L473
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1824, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L473:
	movl	$1, -60(%rbp)
	jmp	.L258
.L288:
	movq	$0, -744(%rbp)
	movq	-96(%rbp), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$1834, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ne@PLT
	testl	%eax, %eax
	je	.L630
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	leaq	-744(%rbp), %rcx
	leaq	-745(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rsi
	call	ossl_quic_tserver_read@PLT
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	je	.L476
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L477
	movq	-744(%rbp), %rax
	testq	%rax, %rax
	jne	.L477
.L476:
	movl	$1, %ecx
	jmp	.L478
.L477:
	movl	$0, %ecx
.L478:
	leaq	.LC116(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1840, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L631
	jmp	.L259
.L274:
	movq	$0, -760(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1850, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L632
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -760(%rbp)
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$29, %eax
	jne	.L482
	leaq	-760(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_stream_reset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1855, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L633
	jmp	.L259
.L482:
	leaq	-760(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_stream_reset@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1858, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L633
	jmp	.L259
.L298:
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	leaq	.LC118(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1877, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L485
	leaq	.LC119(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1878, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L485:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	salq	$6, %rax
	leaq	.LC1(%rip), %rcx
	movl	$1882, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	leaq	.LC118(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1883, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L634
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	$0, -112(%rbp)
	jmp	.L487
.L490:
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-112(%rbp), %rdx
	salq	$6, %rdx
	addq	%rax, %rdx
	movq	-808(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-112(%rbp), %rdx
	salq	$6, %rdx
	addq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rdx)
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-112(%rbp), %rdx
	salq	$6, %rdx
	addq	%rax, %rdx
	movq	-824(%rbp), %rax
	movq	%rax, 16(%rdx)
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-112(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	movq	-112(%rbp), %rdx
	movl	%edx, 24(%rax)
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-112(%rbp), %rdx
	salq	$6, %rdx
	leaq	(%rax,%rdx), %rbx
	call	ossl_crypto_mutex_new@PLT
	movq	%rax, 40(%rbx)
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-112(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	movq	40(%rax), %rax
	leaq	.LC120(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1895, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L635
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-112(%rbp), %rdx
	salq	$6, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-112(%rbp), %rdx
	salq	$6, %rdx
	leaq	(%rax,%rdx), %rbx
	leaq	run_script_child_thread(%rip), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_start@PLT
	movq	%rax, 32(%rbx)
	movq	-808(%rbp), %rax
	movq	128(%rax), %rax
	movq	-112(%rbp), %rdx
	salq	$6, %rdx
	addq	%rdx, %rax
	movq	32(%rax), %rax
	leaq	.LC121(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$1901, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L636
	addq	$1, -112(%rbp)
.L487:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -112(%rbp)
	jb	.L490
	jmp	.L338
.L293:
	movq	-808(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, %edi
	call	BIO_closesocket@PLT
	movq	-808(%rbp), %rax
	movl	$-1, 80(%rax)
	jmp	.L338
.L292:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_error@PLT
	movslq	%eax, %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$1917, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L637
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_want@PLT
	movl	%eax, %esi
	leaq	.LC80(%rip), %rcx
	leaq	.LC81(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1919, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L638
	jmp	.L259
.L291:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rbx
	call	ERR_peek_last_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movslq	%eax, %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC123(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$1926, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L639
	jmp	.L259
.L290:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rbx
	call	ERR_peek_last_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_LIB
	movslq	%eax, %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC124(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$1933, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L640
	jmp	.L259
.L278:
	call	ERR_pop@PLT
	jmp	.L338
.L289:
	movq	-152(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_sleep@PLT
	jmp	.L338
.L287:
	movq	-152(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-808(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L495
	leaq	helper_packet_plain_listener(%rip), %rcx
	jmp	.L496
.L495:
	movl	$0, %ecx
.L496:
	movq	-808(%rbp), %rax
	movq	184(%rax), %rax
	movq	-808(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_set_packet_plain_listener@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1951, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L641
	jmp	.L259
.L283:
	movq	-152(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, 224(%rax)
	movq	-808(%rbp), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	je	.L498
	leaq	helper_handshake_listener(%rip), %rcx
	jmp	.L499
.L498:
	movl	$0, %ecx
.L499:
	movq	-808(%rbp), %rax
	movq	184(%rax), %rax
	movq	-808(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_set_handshake_listener@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC126(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1962, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L642
	jmp	.L259
.L280:
	movq	-152(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-808(%rbp), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	je	.L501
	leaq	helper_datagram_listener(%rip), %rcx
	jmp	.L502
.L501:
	movl	$0, %ecx
.L502:
	movq	-808(%rbp), %rax
	movq	184(%rax), %rax
	movq	-808(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_set_datagram_listener@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC127(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$1973, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L643
	jmp	.L259
.L286:
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, 240(%rax)
	movq	-152(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, 248(%rax)
	jmp	.L338
.L285:
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_conn_get_channel@PLT
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %ebx
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get0_engine@PLT
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	ossl_quic_engine_set_inhibit_tick@PLT
	jmp	.L338
.L284:
	movq	-88(%rbp), %rax
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$2001, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L644
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_set_write_buffer_size@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC128(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2004, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L645
	jmp	.L259
.L282:
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	call	ossl_quic_tserver_new_ticket@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC129(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2010, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L646
	jmp	.L259
.L275:
	leaq	.LC130(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2015, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L259
.L537:
	nop
	jmp	.L258
.L538:
	nop
	jmp	.L258
.L540:
	nop
	jmp	.L258
.L544:
	nop
	jmp	.L258
.L547:
	nop
	jmp	.L258
.L550:
	nop
	jmp	.L258
.L553:
	nop
	jmp	.L258
.L554:
	nop
	jmp	.L258
.L557:
	nop
	jmp	.L258
.L567:
	nop
	jmp	.L258
.L569:
	nop
	jmp	.L258
.L573:
	nop
	jmp	.L258
.L577:
	nop
	jmp	.L258
.L583:
	nop
	jmp	.L258
.L588:
	nop
	jmp	.L258
.L591:
	nop
	jmp	.L258
.L594:
	nop
	jmp	.L258
.L595:
	nop
	jmp	.L258
.L600:
	nop
	jmp	.L258
.L602:
	nop
	jmp	.L258
.L605:
	nop
	jmp	.L258
.L608:
	nop
	jmp	.L258
.L611:
	nop
	jmp	.L258
.L614:
	nop
	jmp	.L258
.L617:
	nop
	jmp	.L258
.L620:
	nop
	jmp	.L258
.L622:
	nop
	jmp	.L258
.L625:
	nop
	jmp	.L258
.L629:
	nop
	jmp	.L258
.L631:
	nop
	jmp	.L258
.L633:
	nop
	jmp	.L258
.L638:
	nop
	jmp	.L258
.L639:
	nop
	jmp	.L258
.L640:
	nop
	jmp	.L258
.L641:
	nop
	jmp	.L258
.L642:
	nop
	jmp	.L258
.L643:
	nop
	jmp	.L258
.L645:
	nop
	jmp	.L258
.L646:
	nop
.L338:
	jmp	.L258
.L531:
	nop
	jmp	.L259
.L533:
	nop
	jmp	.L259
.L535:
	nop
	jmp	.L259
.L536:
	nop
	jmp	.L259
.L539:
	nop
	jmp	.L259
.L541:
	nop
	jmp	.L259
.L542:
	nop
	jmp	.L259
.L543:
	nop
	jmp	.L259
.L545:
	nop
	jmp	.L259
.L546:
	nop
	jmp	.L259
.L548:
	nop
	jmp	.L259
.L549:
	nop
	jmp	.L259
.L551:
	nop
	jmp	.L259
.L552:
	nop
	jmp	.L259
.L555:
	nop
	jmp	.L259
.L556:
	nop
	jmp	.L259
.L558:
	nop
	jmp	.L259
.L559:
	nop
	jmp	.L259
.L560:
	nop
	jmp	.L259
.L561:
	nop
	jmp	.L259
.L562:
	nop
	jmp	.L259
.L563:
	nop
	jmp	.L259
.L564:
	nop
	jmp	.L259
.L565:
	nop
	jmp	.L259
.L566:
	nop
	jmp	.L259
.L568:
	nop
	jmp	.L259
.L570:
	nop
	jmp	.L259
.L571:
	nop
	jmp	.L259
.L572:
	nop
	jmp	.L259
.L574:
	nop
	jmp	.L259
.L575:
	nop
	jmp	.L259
.L576:
	nop
	jmp	.L259
.L578:
	nop
	jmp	.L259
.L579:
	nop
	jmp	.L259
.L580:
	nop
	jmp	.L259
.L581:
	nop
	jmp	.L259
.L582:
	nop
	jmp	.L259
.L584:
	nop
	jmp	.L259
.L585:
	nop
	jmp	.L259
.L586:
	nop
	jmp	.L259
.L587:
	nop
	jmp	.L259
.L589:
	nop
	jmp	.L259
.L590:
	nop
	jmp	.L259
.L592:
	nop
	jmp	.L259
.L593:
	nop
	jmp	.L259
.L596:
	nop
	jmp	.L259
.L597:
	nop
	jmp	.L259
.L598:
	nop
	jmp	.L259
.L599:
	nop
	jmp	.L259
.L601:
	nop
	jmp	.L259
.L603:
	nop
	jmp	.L259
.L604:
	nop
	jmp	.L259
.L606:
	nop
	jmp	.L259
.L607:
	nop
	jmp	.L259
.L609:
	nop
	jmp	.L259
.L610:
	nop
	jmp	.L259
.L612:
	nop
	jmp	.L259
.L613:
	nop
	jmp	.L259
.L615:
	nop
	jmp	.L259
.L616:
	nop
	jmp	.L259
.L618:
	nop
	jmp	.L259
.L619:
	nop
	jmp	.L259
.L621:
	nop
	jmp	.L259
.L623:
	nop
	jmp	.L259
.L624:
	nop
	jmp	.L259
.L626:
	nop
	jmp	.L259
.L627:
	nop
	jmp	.L259
.L628:
	nop
	jmp	.L259
.L630:
	nop
	jmp	.L259
.L632:
	nop
	jmp	.L259
.L634:
	nop
	jmp	.L259
.L635:
	nop
	jmp	.L259
.L636:
	nop
	jmp	.L259
.L637:
	nop
	jmp	.L259
.L644:
	nop
.L259:
	movq	-160(%rbp), %rdx
	movq	-808(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_unlock
	cmpl	$0, -20(%rbp)
	jne	.L507
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rsi
	movl	-828(%rbp), %ecx
	movq	-824(%rbp), %rax
	leaq	.LC131(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%ecx, %r9d
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$2027, %esi
	movl	$0, %eax
	call	test_error@PLT
	movq	$0, -120(%rbp)
	jmp	.L508
.L509:
	movq	-120(%rbp), %rax
	movq	-464(%rbp,%rax,8), %rsi
	movq	-120(%rbp), %rax
	movq	-592(%rbp,%rax,8), %rcx
	movq	-120(%rbp), %rax
	movq	-528(%rbp,%rax,8), %rax
	leaq	.LC132(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$2031, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$1, -120(%rbp)
.L508:
	movq	-120(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L509
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L510
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -800(%rbp)
	movaps	%xmm0, -784(%rbp)
	movq	%xmm0, -768(%rbp)
	movq	-808(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-800(%rbp), %rcx
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_get_conn_close_info@PLT
	testl	%eax, %eax
	je	.L510
	movq	-800(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_err_to_string@PLT
	movq	%rax, -136(%rbp)
	movq	-792(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_frame_type_to_string@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L512
	leaq	.LC133(%rip), %rax
	movq	%rax, -136(%rbp)
.L512:
	cmpq	$0, -144(%rbp)
	jne	.L513
	leaq	.LC133(%rip), %rax
	movq	%rax, -144(%rbp)
.L513:
	movq	-784(%rbp), %rax
	testq	%rax, %rax
	je	.L514
	movq	-784(%rbp), %rax
	jmp	.L515
.L514:
	leaq	.LC134(%rip), %rax
.L515:
	movl	-768(%rbp), %edx
	andl	$2, %edx
	testl	%edx, %edx
	je	.L516
	leaq	.LC135(%rip), %rcx
	jmp	.L517
.L516:
	leaq	.LC136(%rip), %rcx
.L517:
	movl	-768(%rbp), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L518
	leaq	.LC137(%rip), %rdx
	jmp	.L519
.L518:
	leaq	.LC138(%rip), %rdx
.L519:
	movq	-792(%rbp), %r9
	movq	-800(%rbp), %rsi
	movq	-136(%rbp), %r8
	leaq	.LC139(%rip), %r10
	leaq	.LC1(%rip), %rdi
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	-144(%rbp)
	movq	%rsi, %rcx
	movq	%r10, %rdx
	movl	$2050, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$32, %rsp
.L510:
	movq	-808(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L520
	movq	-808(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_terminate_cause@PLT
	movq	%rax, -128(%rbp)
	jmp	.L521
.L520:
	movq	$0, -128(%rbp)
.L521:
	cmpq	$0, -128(%rbp)
	je	.L507
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_err_to_string@PLT
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_frame_type_to_string@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L522
	leaq	.LC133(%rip), %rax
	movq	%rax, -136(%rbp)
.L522:
	cmpq	$0, -144(%rbp)
	jne	.L523
	leaq	.LC133(%rip), %rax
	movq	%rax, -144(%rbp)
.L523:
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L524
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L525
.L524:
	leaq	.LC134(%rip), %rax
.L525:
	movq	-128(%rbp), %rdx
	movzbl	32(%rdx), %edx
	andl	$1, %edx
	testb	%dl, %dl
	je	.L526
	leaq	.LC136(%rip), %rcx
	jmp	.L527
.L526:
	leaq	.LC135(%rip), %rcx
.L527:
	movq	-128(%rbp), %rdx
	movzbl	32(%rdx), %edx
	andl	$2, %edx
	testb	%dl, %dl
	je	.L528
	leaq	.LC138(%rip), %rdx
	jmp	.L529
.L528:
	leaq	.LC137(%rip), %rdx
.L529:
	movq	-128(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-128(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-136(%rbp), %r8
	leaq	.LC140(%rip), %r10
	leaq	.LC1(%rip), %rdi
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	-144(%rbp)
	movq	%rsi, %rcx
	movq	%r10, %rdx
	movl	$2075, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$32, %rsp
.L507:
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$2087, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	helper_local_cleanup
	movl	-20(%rbp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	run_script_worker, .-run_script_worker
	.section	.rodata
	.align 8
.LC141:
	.string	"helper_init(&h, script_name, free_order, blocking, 1)"
	.align 8
.LC142:
	.string	"run_script_worker(&h, script, script_name, -1)"
	.align 8
.LC143:
	.string	"join_threads(h.threads, h.num_threads)"
	.text
	.type	run_script, @function
run_script:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movl	%edx, -356(%rbp)
	movl	%ecx, -360(%rbp)
	movl	$0, -4(%rbp)
	movl	-360(%rbp), %ecx
	movl	-356(%rbp), %edx
	movq	-352(%rbp), %rsi
	leaq	-336(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	helper_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC141(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2100, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L653
	movq	-352(%rbp), %rdx
	movq	-344(%rbp), %rsi
	leaq	-336(%rbp), %rax
	movl	$-1, %ecx
	movq	%rax, %rdi
	call	run_script_worker
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC142(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2104, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L654
	movq	-200(%rbp), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	join_threads
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC143(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L655
	movl	$1, -4(%rbp)
	jmp	.L649
.L653:
	nop
	jmp	.L649
.L654:
	nop
	jmp	.L649
.L655:
	nop
.L649:
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	helper_cleanup
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	run_script, .-run_script
	.type	run_script_child_thread, @function
run_script_child_thread:
.LFB707:
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
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	run_script_worker
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	run_script_child_thread, .-run_script_child_thread
	.section	.rodata
.LC144:
	.string	"ossltest"
.LC145:
	.string	"a"
.LC146:
	.string	"orange"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	script_1, @object
	.size	script_1, 864
script_1:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.zero	32
	.long	0
	.zero	68
	.section	.rodata
.LC147:
	.string	"b"
.LC148:
	.string	"flamingo"
.LC149:
	.string	"gargoyle"
.LC150:
	.string	"c"
.LC151:
	.string	"elephant"
.LC152:
	.string	"d"
.LC153:
	.string	"frog"
.LC154:
	.string	"e"
.LC155:
	.string	"mixture"
.LC156:
	.string	"ramble"
.LC157:
	.string	"f"
.LC158:
	.string	"yonder"
.LC159:
	.string	"g"
.LC160:
	.string	"unseen"
.LC161:
	.string	"UNSEEN"
	.section	.data.rel.ro.local
	.align 32
	.type	script_2, @object
	.size	script_2, 4608
script_2:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	20
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	4
	.zero	24
	.long	4
	.zero	4
	.quad	.LC148
	.quad	8
	.quad	0
	.quad	.LC147
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	4
	.zero	24
	.long	7
	.zero	4
	.quad	.LC148
	.quad	8
	.quad	0
	.quad	.LC147
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	5
	.zero	4
	.quad	.LC149
	.quad	8
	.quad	0
	.quad	.LC147
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	6
	.zero	4
	.quad	.LC149
	.quad	8
	.quad	0
	.quad	.LC147
	.zero	32
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC150
	.quad	2
	.zero	24
	.long	4
	.zero	4
	.quad	.LC151
	.quad	8
	.quad	0
	.quad	.LC150
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.quad	2
	.zero	24
	.long	7
	.zero	4
	.quad	.LC151
	.quad	8
	.quad	0
	.quad	.LC150
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.zero	32
	.long	27
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.zero	32
	.long	17
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.quad	1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC153
	.quad	4
	.quad	0
	.quad	.LC152
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.zero	32
	.long	17
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	6
	.zero	4
	.quad	.LC153
	.quad	4
	.quad	0
	.quad	.LC152
	.zero	32
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC154
	.quad	5
	.zero	24
	.long	5
	.zero	4
	.quad	.LC155
	.quad	7
	.quad	0
	.quad	.LC154
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC154
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC154
	.zero	32
	.long	6
	.zero	4
	.quad	.LC155
	.quad	7
	.quad	0
	.quad	.LC154
	.zero	32
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC154
	.zero	32
	.long	4
	.zero	4
	.quad	.LC156
	.quad	6
	.quad	0
	.quad	.LC154
	.zero	32
	.long	7
	.zero	4
	.quad	.LC156
	.quad	6
	.quad	0
	.quad	.LC154
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC154
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC154
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC157
	.quad	3
	.zero	24
	.long	5
	.zero	4
	.quad	.LC158
	.quad	6
	.quad	0
	.quad	.LC157
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC157
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC157
	.zero	32
	.long	17
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	6
	.zero	4
	.quad	.LC158
	.quad	6
	.quad	0
	.quad	.LC157
	.zero	32
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC157
	.zero	32
	.long	26
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC157
	.zero	32
	.long	20
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC159
	.quad	9
	.zero	24
	.long	5
	.zero	4
	.quad	.LC160
	.quad	6
	.quad	0
	.quad	.LC159
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC159
	.zero	32
	.long	17
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	20
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC44
	.quad	13
	.zero	24
	.long	5
	.zero	4
	.quad	.LC161
	.quad	6
	.quad	0
	.quad	.LC44
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC44
	.zero	32
	.long	17
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_rejected
	.quad	0
	.quad	9
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_rejected
	.quad	0
	.quad	13
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
.LC162:
	.string	"by"
.LC163:
	.string	"appleby"
.LC164:
	.string	"hello"
.LC165:
	.string	"is here"
	.section	.data.rel.ro.local
	.align 32
	.type	script_3, @object
	.size	script_3, 1296
script_3:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	12
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	26
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.zero	32
	.long	4
	.zero	4
	.quad	.LC162
	.quad	2
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC163
	.quad	7
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC164
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC164
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	26
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.zero	32
	.long	13
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	4
	.zero	4
	.quad	.LC165
	.quad	7
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC165
	.quad	7
	.quad	0
	.quad	.LC145
	.zero	32
	.long	12
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_4, @object
	.size	script_4, 936
script_4:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	26
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	28
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	13
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	4
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.section	.rodata
.LC166:
	.string	"strawberry"
	.section	.data.rel.ro.local
	.align 32
	.type	script_5, @object
	.size	script_5, 1008
script_5:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	4
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	29
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	42
	.zero	24
	.long	4
	.zero	4
	.quad	.LC166
	.quad	10
	.quad	0
	.quad	.LC147
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	4
	.zero	24
	.long	7
	.zero	4
	.quad	.LC166
	.quad	10
	.quad	0
	.quad	.LC147
	.zero	32
	.long	41
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_stream_reset
	.quad	0
	.quad	0
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_6, @object
	.size	script_6, 720
script_6:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	18
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	17
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_stream_stopped
	.quad	0
	.quad	1
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_7, @object
	.size	script_7, 576
script_7:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	2
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	27
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_8, @object
	.size	script_8, 576
script_8:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC145
	.quad	3
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	26
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_9, @object
	.size	script_9, 648
script_9:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	4
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_10, @object
	.size	script_10, 648
script_10:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	21
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.zero	24
	.long	23
	.zero	4
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
.LC167:
	.string	"foo"
	.section	.data.rel.ro.local
	.align 32
	.type	script_11_child, @object
	.size	script_11_child, 360
script_11_child:
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	40
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	10
	.zero	24
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_11, @object
	.size	script_11, 1440
script_11:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	31
	.zero	4
	.quad	script_11_child
	.quad	5
	.quad	0
	.quad	0
	.quad	0
	.zero	24
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	-1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	-1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC147
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.quad	-1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC150
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.quad	-1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC152
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC154
	.quad	-1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC154
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC154
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_12_child, @object
	.size	script_12_child, 360
script_12_child:
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	-1
	.zero	24
	.long	4
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	18
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_12, @object
	.size	script_12, 1440
script_12:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	31
	.zero	4
	.quad	script_12_child
	.quad	5
	.quad	0
	.quad	0
	.quad	0
	.zero	24
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	4
	.zero	24
	.long	7
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC147
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.quad	8
	.zero	24
	.long	7
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC150
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.quad	12
	.zero	24
	.long	7
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC152
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC154
	.quad	16
	.zero	24
	.long	7
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC154
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC154
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_13_child, @object
	.size	script_13_child, 504
script_13_child:
	.long	32
	.zero	4
	.quad	0
	.quad	10
	.zero	48
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	18
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	33
	.zero	68
	.long	0
	.zero	68
	.align 32
	.type	script_13, @object
	.size	script_13, 792
script_13:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	31
	.zero	4
	.quad	script_13_child
	.quad	5
	.quad	0
	.quad	0
	.quad	0
	.zero	24
	.long	32
	.zero	4
	.quad	0
	.quad	50
	.zero	48
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	-1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	34
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	33
	.zero	68
	.long	0
	.zero	68
	.align 32
	.type	script_14_child, @object
	.size	script_14_child, 504
script_14_child:
	.long	32
	.zero	4
	.quad	0
	.quad	10
	.zero	48
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	-1
	.zero	24
	.long	4
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	18
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	33
	.zero	68
	.long	0
	.zero	68
	.align 32
	.type	script_14, @object
	.size	script_14, 792
script_14:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	31
	.zero	4
	.quad	script_14_child
	.quad	5
	.quad	0
	.quad	0
	.quad	0
	.zero	24
	.long	32
	.zero	4
	.quad	0
	.quad	50
	.zero	48
	.long	30
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	7
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	34
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	33
	.zero	68
	.long	0
	.zero	68
	.section	.rodata
.LC168:
	.string	"bar"
	.section	.data.rel.ro.local
	.align 32
	.type	script_15, @object
	.size	script_15, 1584
script_15:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	32
	.zero	4
	.quad	0
	.quad	200
	.zero	48
	.long	14
	.zero	4
	.quad	0
	.quad	4
	.quad	0
	.quad	.LC145
	.quad	-1
	.zero	24
	.long	4
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	18
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	33
	.zero	68
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC168
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC168
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	32
	.zero	4
	.quad	0
	.quad	200
	.zero	48
	.long	30
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	7
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC147
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	34
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	33
	.zero	68
	.long	0
	.zero	68
	.align 32
	.type	script_16, @object
	.size	script_16, 1584
script_16:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	32
	.zero	4
	.quad	0
	.quad	200
	.zero	48
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	-1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	34
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	33
	.zero	68
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	-1
	.zero	24
	.long	4
	.zero	4
	.quad	.LC168
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	30
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	7
	.zero	4
	.quad	.LC168
	.quad	3
	.quad	0
	.quad	.LC147
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	32
	.zero	4
	.quad	0
	.quad	200
	.zero	48
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	6
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC147
	.zero	32
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	18
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	33
	.zero	68
	.long	0
	.zero	68
	.section	.rodata
.LC169:
	.string	"xyzzy"
.LC170:
	.string	"plugh"
	.section	.data.rel.ro.local
	.align 32
	.type	script_17, @object
	.size	script_17, 1224
script_17:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	override_key_update
	.quad	0
	.quad	1
	.zero	24
	.long	32
	.zero	4
	.quad	0
	.quad	200
	.zero	48
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	skip_time_ms
	.quad	0
	.quad	100
	.zero	24
	.long	33
	.zero	68
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_key_update_ge
	.quad	0
	.quad	5
	.zero	24
	.long	4
	.zero	4
	.quad	.LC169
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC169
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC170
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC170
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_18, @object
	.size	script_18, 1224
script_18:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	override_key_update
	.quad	0
	.quad	1
	.zero	24
	.long	32
	.zero	4
	.quad	0
	.quad	200
	.zero	48
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	skip_time_ms
	.quad	0
	.quad	8
	.zero	24
	.long	33
	.zero	68
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_key_update_lt
	.quad	0
	.quad	240
	.zero	24
	.long	4
	.zero	4
	.quad	.LC169
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC169
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC170
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC170
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_19, @object
	.size	script_19, 1224
script_19:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	4
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC166
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC166
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_key_update_lt
	.quad	0
	.quad	1
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	trigger_key_update
	.quad	0
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC59
	.quad	2
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC59
	.quad	2
	.quad	0
	.quad	.LC47
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_key_update_ge
	.quad	0
	.quad	1
	.zero	24
	.long	0
	.zero	68
	.text
	.type	script_20_trigger, @function
script_20_trigger:
.LFB708:
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
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_condvar_broadcast@PLT
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	script_20_trigger, .-script_20_trigger
	.type	script_20_wait, @function
script_20_wait:
.LFB709:
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
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	jmp	.L661
.L664:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L666
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_condvar_wait@PLT
.L661:
	cmpl	$0, -4(%rbp)
	je	.L664
	jmp	.L663
.L666:
	nop
.L663:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	script_20_wait, .-script_20_wait
	.type	script_20_trigger1, @function
script_20_trigger1:
.LFB710:
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
	leaq	256(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	script_20_trigger
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	script_20_trigger1, .-script_20_trigger1
	.type	script_20_wait1, @function
script_20_wait1:
.LFB711:
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
	movq	24(%rax), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	256(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	script_20_wait
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	script_20_wait1, .-script_20_wait1
	.type	script_20_trigger2, @function
script_20_trigger2:
.LFB712:
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
	leaq	264(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	script_20_trigger
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	script_20_trigger2, .-script_20_trigger2
	.type	script_20_wait2, @function
script_20_wait2:
.LFB713:
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
	movq	24(%rax), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	264(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	script_20_wait
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	script_20_wait2, .-script_20_wait2
	.section	.data.rel.ro.local
	.align 32
	.type	script_20_child, @object
	.size	script_20_child, 936
script_20_child:
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	script_20_trigger1
	.quad	0
	.quad	0
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	script_20_wait2
	.quad	0
	.quad	1
	.zero	24
	.long	35
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	37
	.zero	4
	.quad	0
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	39
	.zero	4
	.quad	0
	.quad	20
	.zero	48
	.long	38
	.zero	4
	.quad	0
	.quad	207
	.zero	48
	.long	51
	.zero	68
	.long	39
	.zero	4
	.quad	0
	.quad	20
	.zero	48
	.long	38
	.zero	4
	.quad	0
	.quad	387
	.zero	48
	.long	18
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_20, @object
	.size	script_20, 936
script_20:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	31
	.zero	4
	.quad	script_20_child
	.quad	5
	.quad	0
	.quad	0
	.quad	0
	.zero	24
	.long	32
	.zero	4
	.quad	0
	.quad	5
	.zero	48
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	-1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC167
	.quad	3
	.quad	0
	.quad	.LC145
	.zero	32
	.long	34
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	33
	.zero	68
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	script_20_wait1
	.quad	0
	.quad	5
	.zero	24
	.long	36
	.zero	68
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	script_20_trigger2
	.quad	0
	.quad	0
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC171:
	.string	"WPACKET_init_static_len(&wpkt, frame_buf, sizeof(frame_buf), 0)"
	.align 8
.LC172:
	.string	"WPACKET_quic_write_vlint(&wpkt, h->inject_word1)"
	.align 8
.LC173:
	.string	"WPACKET_put_bytes_u64(&wpkt, (uint64_t)0)"
	.align 8
.LC174:
	.string	"WPACKET_quic_write_vlint(&wpkt, (uint64_t)0)"
	.align 8
.LC175:
	.string	"WPACKET_get_total_written(&wpkt, &written)"
	.text
	.type	script_21_inject_plain, @function
script_21_inject_plain:
.LFB714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	$0, -4(%rbp)
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L676
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	cmpq	%rax, %rdx
	je	.L677
.L676:
	movl	$1, %eax
	jmp	.L692
.L677:
	leaq	-73(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2841, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L679
	movl	$0, %eax
	jmp	.L692
.L679:
	movq	-104(%rbp), %rax
	movq	248(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2845, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L693
	movq	-104(%rbp), %rax
	movq	248(%rax), %rax
	cmpq	$27, %rax
	ja	.L682
	cmpq	$26, %rax
	jnb	.L683
	cmpq	$21, %rax
	je	.L684
	cmpq	$21, %rax
	ja	.L682
	cmpq	$5, %rax
	je	.L684
	cmpq	$17, %rax
	je	.L684
	jmp	.L682
.L683:
	leaq	-64(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC173(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2851, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L694
	jmp	.L681
.L684:
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC174(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2857, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L695
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC174(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2859, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L696
	jmp	.L682
.L694:
	nop
.L682:
	leaq	-88(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2864, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L697
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-73(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L698
	movl	$1, -4(%rbp)
	jmp	.L681
.L693:
	nop
	jmp	.L681
.L695:
	nop
	jmp	.L681
.L696:
	nop
	jmp	.L681
.L697:
	nop
	jmp	.L681
.L698:
	nop
.L681:
	cmpl	$0, -4(%rbp)
	je	.L690
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L691
.L690:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L691:
	movl	-4(%rbp), %eax
.L692:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	script_21_inject_plain, .-script_21_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_21, @object
	.size	script_21, 720
script_21:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_21_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	5
	.quad	0
	.quad	0
	.quad	4611686018427387903
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.text
	.type	script_22_inject_plain, @function
script_22_inject_plain:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	jne	.L700
	movl	$1, %eax
	jmp	.L701
.L700:
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$-49, %edx
	orl	$16, %edx
	movb	%dl, 2(%rax)
	movl	$1, %eax
.L701:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	script_22_inject_plain, .-script_22_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_22, @object
	.size	script_22, 720
script_22:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_22_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	10
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC176:
	.string	"WPACKET_quic_write_vlint(&wpkt, OSSL_QUIC_FRAME_TYPE_NEW_TOKEN)"
	.align 8
.LC177:
	.string	"WPACKET_quic_write_vlint(&wpkt, 0)"
	.text
	.type	script_23_inject_plain, @function
script_23_inject_plain:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	$0, -4(%rbp)
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L703
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L704
.L703:
	movl	$1, %eax
	jmp	.L714
.L704:
	leaq	-80(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2938, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L706
	movl	$0, %eax
	jmp	.L714
.L706:
	leaq	-64(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC176(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2942, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L715
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2943, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L715
	leaq	-88(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2946, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L716
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L717
	movl	$1, -4(%rbp)
	jmp	.L709
.L715:
	nop
	jmp	.L709
.L716:
	nop
	jmp	.L709
.L717:
	nop
.L709:
	cmpl	$0, -4(%rbp)
	je	.L712
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L713
.L712:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L713:
	movl	-4(%rbp), %eax
.L714:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	script_23_inject_plain, .-script_23_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_23, @object
	.size	script_23, 720
script_23:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_23_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC178:
	.string	"WPACKET_quic_write_vlint(&wpkt, (((uint64_t)1) << 60) + 1)"
	.text
	.type	script_24_inject_plain, @function
script_24_inject_plain:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	$0, -4(%rbp)
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L719
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L720
.L719:
	movl	$1, %eax
	jmp	.L730
.L720:
	leaq	-80(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2991, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L722
	movl	$0, %eax
	jmp	.L730
.L722:
	movq	-104(%rbp), %rax
	movq	248(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2995, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L731
	movabsq	$1152921504606846977, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC178(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2996, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L731
	leaq	-88(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$2999, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L732
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L733
	movl	$1, -4(%rbp)
	jmp	.L725
.L731:
	nop
	jmp	.L725
.L732:
	nop
	jmp	.L725
.L733:
	nop
.L725:
	cmpl	$0, -4(%rbp)
	je	.L728
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L729
.L728:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L729:
	movl	-4(%rbp), %eax
.L730:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	script_24_inject_plain, .-script_24_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_24, @object
	.size	script_24, 720
script_24:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_24_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	18
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_25, @object
	.size	script_25, 720
script_25:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_24_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	19
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_26, @object
	.size	script_26, 720
script_26:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_24_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	22
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	4
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_27, @object
	.size	script_27, 720
script_27:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_24_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	23
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	4
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC179:
	.string	"WPACKET_quic_write_vlint(&wpkt, h->inject_word0 - 1)"
	.align 8
.LC180:
	.string	"WPACKET_quic_write_vlint(&wpkt, 123)"
	.align 8
.LC181:
	.string	"WPACKET_quic_write_vlint(&wpkt, 5)"
	.text
	.type	script_28_inject_plain, @function
script_28_inject_plain:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movl	$0, -4(%rbp)
	movq	-120(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L735
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L736
.L735:
	movl	$1, %eax
	jmp	.L746
.L736:
	leaq	-96(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3101, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L738
	movl	$0, %eax
	jmp	.L746
.L738:
	movq	-120(%rbp), %rax
	movq	248(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3105, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L747
	movq	-120(%rbp), %rax
	movq	240(%rax), %rax
	leaq	-1(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC179(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3106, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L747
	leaq	-64(%rbp), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC180(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L747
	movq	-120(%rbp), %rax
	movq	248(%rax), %rax
	cmpq	$4, %rax
	jne	.L740
	leaq	-64(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC181(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3110, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L747
.L740:
	leaq	-104(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3113, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L748
	movq	-104(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L749
	movl	$1, -4(%rbp)
	jmp	.L741
.L747:
	nop
	jmp	.L741
.L748:
	nop
	jmp	.L741
.L749:
	nop
.L741:
	cmpl	$0, -4(%rbp)
	je	.L744
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L745
.L744:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L745:
	movl	-4(%rbp), %eax
.L746:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	script_28_inject_plain, .-script_28_inject_plain
	.section	.rodata
.LC182:
	.string	"fruit"
	.section	.data.rel.ro.local
	.align 32
	.type	script_28, @object
	.size	script_28, 1152
script_28:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_28_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC147
	.quad	2
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC147
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	2
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC147
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	4
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC182
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_29, @object
	.size	script_29, 1152
script_29:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_28_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC147
	.quad	2
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC147
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	2
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC147
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	7
	.quad	0
	.quad	0
	.quad	4
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC182
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_30, @object
	.size	script_30, 864
script_30:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_28_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC145
	.quad	3
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	4
	.quad	0
	.quad	0
	.quad	5
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_31, @object
	.size	script_31, 864
script_31:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_28_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC145
	.quad	3
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	5
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC183:
	.string	"WPACKET_quic_write_vlint(&wpkt, type)"
	.align 8
.LC184:
	.string	"WPACKET_quic_write_vlint(&wpkt, offset)"
	.align 8
.LC185:
	.string	"WPACKET_quic_write_vlint(&wpkt, flen)"
	.align 8
.LC186:
	.string	"WPACKET_put_bytes_u8(&wpkt, 0x42)"
	.text
	.type	script_32_inject_plain, @function
script_32_inject_plain:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movl	$0, -4(%rbp)
	movq	$14, -40(%rbp)
	movq	-192(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L751
	movl	$1, %eax
	jmp	.L771
.L751:
	movq	-184(%rbp), %rax
	movq	248(%rax), %rax
	cmpq	$4, %rax
	je	.L753
	cmpq	$4, %rax
	ja	.L754
	cmpq	$3, %rax
	je	.L755
	cmpq	$3, %rax
	ja	.L754
	cmpq	$2, %rax
	je	.L756
	cmpq	$2, %rax
	ja	.L754
	testq	%rax, %rax
	je	.L757
	cmpq	$1, %rax
	je	.L758
.L754:
	movl	$0, %eax
	jmp	.L771
.L757:
	movl	$1, %eax
	jmp	.L771
.L758:
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L759
.L756:
	movabsq	$4611686018427387903, %rax
	movq	%rax, -16(%rbp)
	movq	$5, -24(%rbp)
	jmp	.L759
.L755:
	movq	$1073741824, -16(%rbp)
	movq	$5, -24(%rbp)
	jmp	.L759
.L753:
	movq	$0, -16(%rbp)
	movq	$1, -24(%rbp)
	nop
.L759:
	leaq	-160(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3259, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L760
	movl	$0, %eax
	jmp	.L771
.L760:
	movq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC183(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3263, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L772
	movq	-184(%rbp), %rax
	movq	240(%rax), %rax
	leaq	-1(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC179(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3264, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L772
	movq	-16(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC184(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3266, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L772
	movq	-24(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC185(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3267, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L772
	movq	$0, -32(%rbp)
	jmp	.L764
.L766:
	leaq	-96(%rbp), %rax
	movl	$1, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC186(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3271, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L773
	addq	$1, -32(%rbp)
.L764:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L766
	leaq	-168(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3274, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L774
	movq	-168(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L775
	movl	$1, -4(%rbp)
	jmp	.L763
.L772:
	nop
	jmp	.L763
.L773:
	nop
	jmp	.L763
.L774:
	nop
	jmp	.L763
.L775:
	nop
.L763:
	cmpl	$0, -4(%rbp)
	je	.L769
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L770
.L769:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L770:
	movl	-4(%rbp), %eax
.L771:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	script_32_inject_plain, .-script_32_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_32, @object
	.size	script_32, 864
script_32:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_32_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC145
	.quad	3
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_33, @object
	.size	script_33, 864
script_33:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_32_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	2
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_34, @object
	.size	script_34, 864
script_34:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_32_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_35, @object
	.size	script_35, 864
script_35:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_28_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC145
	.quad	3
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	4
	.quad	0
	.quad	0
	.quad	17
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_36, @object
	.size	script_36, 864
script_36:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_28_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC145
	.quad	3
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	17
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_37, @object
	.size	script_37, 936
script_37:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_28_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC145
	.quad	2
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	2
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC147
	.quad	3
	.zero	24
	.long	43
	.zero	4
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	21
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	5
	.quad	0
	.quad	.LC147
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_38, @object
	.size	script_38, 936
script_38:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_28_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC145
	.quad	2
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	2
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	21
	.quad	0
	.zero	16
	.long	15
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC147
	.quad	3
	.zero	24
	.long	5
	.zero	4
	.quad	.LC146
	.quad	5
	.quad	0
	.quad	.LC147
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC187:
	.string	"WPACKET_quic_write_vlint(&wpkt, OSSL_QUIC_FRAME_TYPE_NEW_CONN_ID)"
	.align 8
.LC188:
	.string	"WPACKET_quic_write_vlint(&wpkt, seq_no)"
	.align 8
.LC189:
	.string	"WPACKET_quic_write_vlint(&wpkt, retire_prior_to)"
	.align 8
.LC190:
	.string	"WPACKET_put_bytes_u8(&wpkt, new_cid.id_len)"
	.align 8
.LC191:
	.string	"WPACKET_put_bytes_u8(&wpkt, new_cid.id[i])"
	.align 8
.LC192:
	.string	"WPACKET_put_bytes_u8(&wpkt, 0x55)"
	.text
	.type	script_39_inject_plain, @function
script_39_inject_plain:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -192(%rbp)
	movq	%xmm0, -179(%rbp)
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_channel@PLT
	movq	%rax, -40(%rbp)
	movq	-208(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L777
	movl	$1, %eax
	jmp	.L804
.L777:
	movq	-200(%rbp), %rax
	movq	248(%rax), %rax
	cmpq	$5, %rax
	je	.L779
	cmpq	$5, %rax
	ja	.L780
	cmpq	$4, %rax
	je	.L781
	cmpq	$4, %rax
	ja	.L780
	cmpq	$3, %rax
	je	.L782
	cmpq	$3, %rax
	ja	.L780
	cmpq	$2, %rax
	je	.L783
	cmpq	$2, %rax
	ja	.L780
	testq	%rax, %rax
	je	.L784
	cmpq	$1, %rax
	je	.L785
	jmp	.L780
.L784:
	movl	$1, %eax
	jmp	.L804
.L785:
	movb	$0, -192(%rbp)
	jmp	.L780
.L783:
	movb	$21, -192(%rbp)
	jmp	.L780
.L782:
	movb	$1, -192(%rbp)
	movb	$85, -191(%rbp)
	movq	$0, -24(%rbp)
	movq	$1, -32(%rbp)
	jmp	.L780
.L781:
	leaq	-192(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_get_diag_local_cid@PLT
	movq	$2, -24(%rbp)
	movq	$2, -32(%rbp)
	jmp	.L780
.L779:
	movb	$8, -192(%rbp)
	movb	$85, -191(%rbp)
	movq	$1, -24(%rbp)
	movq	$1, -32(%rbp)
	nop
.L780:
	leaq	-160(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3489, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L786
	movl	$0, %eax
	jmp	.L804
.L786:
	leaq	-96(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC187(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3493, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L805
	movq	-24(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC188(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3494, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L805
	movq	-32(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC189(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3495, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L805
	movzbl	-192(%rbp), %eax
	movzbl	%al, %ecx
	leaq	-96(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC190(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3496, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L805
	movq	$0, -16(%rbp)
	jmp	.L790
.L793:
	leaq	-191(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	leaq	-96(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC191(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3500, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L806
	addq	$1, -16(%rbp)
.L790:
	movzbl	-192(%rbp), %eax
	movzbl	%al, %eax
	cmpq	%rax, -16(%rbp)
	jnb	.L794
	cmpq	$19, -16(%rbp)
	jbe	.L793
	jmp	.L794
.L796:
	leaq	-96(%rbp), %rax
	movl	$1, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC192(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3504, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L807
	addq	$1, -16(%rbp)
.L794:
	movzbl	-192(%rbp), %eax
	movzbl	%al, %eax
	cmpq	%rax, -16(%rbp)
	jb	.L796
	movq	$0, -16(%rbp)
	jmp	.L797
.L799:
	leaq	-96(%rbp), %rax
	movl	$1, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC186(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3508, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L808
	addq	$1, -16(%rbp)
.L797:
	cmpq	$15, -16(%rbp)
	jbe	.L799
	leaq	-168(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3511, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L809
	movq	-168(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L810
	movl	$1, -4(%rbp)
	jmp	.L789
.L805:
	nop
	jmp	.L789
.L806:
	nop
	jmp	.L789
.L807:
	nop
	jmp	.L789
.L808:
	nop
	jmp	.L789
.L809:
	nop
	jmp	.L789
.L810:
	nop
.L789:
	cmpl	$0, -4(%rbp)
	je	.L802
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L803
.L802:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L803:
	movl	-4(%rbp), %eax
.L804:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	script_39_inject_plain, .-script_39_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_39, @object
	.size	script_39, 864
script_39:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_39_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 32
	.type	script_40_data, @object
	.size	script_40_data, 1024
script_40_data:
	.string	"strawberry"
	.zero	1013
	.section	.data.rel.ro.local
	.align 32
	.type	script_40, @object
	.size	script_40, 1512
script_40:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	44
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	45
	.zero	4
	.quad	0
	.quad	307200
	.quad	0
	.quad	.LC145
	.zero	32
	.long	32
	.zero	4
	.quad	0
	.quad	100
	.zero	48
	.long	4
	.zero	4
	.quad	script_40_data
	.quad	1024
	.quad	0
	.quad	.LC145
	.zero	32
	.long	33
	.zero	68
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	21
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	32
	.zero	4
	.quad	0
	.quad	100
	.zero	48
	.long	7
	.zero	4
	.quad	script_40_data
	.quad	1024
	.quad	0
	.quad	.LC145
	.zero	32
	.long	33
	.zero	68
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.zero	24
	.long	23
	.zero	4
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
	.type	path_challenge, @object
	.size	path_challenge, 8
path_challenge:
	.quad	-4761549105021549654
	.align 8
.LC193:
	.string	"WPACKET_put_bytes_u64(&wpkt, path_challenge)"
.LC194:
	.string	"9"
.LC195:
	.string	"written"
	.text
	.type	script_41_inject_plain, @function
script_41_inject_plain:
.LFB721:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	$0, -4(%rbp)
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L812
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L813
.L812:
	movl	$1, %eax
	jmp	.L824
.L813:
	leaq	-80(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3599, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L815
	movl	$0, %eax
	jmp	.L824
.L815:
	movq	-104(%rbp), %rax
	movq	248(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3603, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L825
	movabsq	$-4761549105021549654, %rcx
	leaq	-64(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC193(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3604, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L825
	leaq	-88(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3607, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L826
	movq	-88(%rbp), %rsi
	leaq	.LC194(%rip), %rcx
	leaq	.LC195(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$9, %r9d
	movq	%rsi, %r8
	movl	$3608, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L826
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L827
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 240(%rax)
	movl	$1, -4(%rbp)
	jmp	.L818
.L825:
	nop
	jmp	.L818
.L826:
	nop
	jmp	.L818
.L827:
	nop
.L818:
	cmpl	$0, -4(%rbp)
	je	.L822
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L823
.L822:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L823:
	movl	-4(%rbp), %eax
.L824:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	script_41_inject_plain, .-script_41_inject_plain
	.section	.rodata
	.align 8
.LC196:
	.string	"PACKET_buf_init(&pkt, buf, len)"
	.align 8
.LC197:
	.string	"ossl_quic_wire_peek_frame_header(&pkt, &frame_type, &was_minimal)"
	.align 8
.LC198:
	.string	"ossl_quic_wire_decode_frame_path_response(&pkt, &frame_data)"
.LC199:
	.string	"path_challenge"
.LC200:
	.string	"frame_data"
	.text
	.type	script_41_trace, @function
script_41_trace:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$1, -56(%rbp)
	jne	.L838
	cmpl	$514, -60(%rbp)
	jne	.L838
	cmpq	$0, -80(%rbp)
	je	.L838
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC196(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3637, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L832
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 264(%rax)
	jmp	.L828
.L832:
	leaq	-28(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC197(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3642, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L833
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 264(%rax)
	jmp	.L828
.L833:
	movq	-16(%rbp), %rax
	cmpq	$27, %rax
	jne	.L839
	leaq	-24(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_path_response@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC198(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3651, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L835
	movabsq	$-4761549105021549654, %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC199(%rip), %rcx
	leaq	.LC200(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$3652, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L836
.L835:
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 264(%rax)
	jmp	.L828
.L836:
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 256(%rax)
	jmp	.L828
.L838:
	nop
	jmp	.L828
.L839:
	nop
.L828:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	script_41_trace, .-script_41_trace
	.type	script_41_setup, @function
script_41_setup:
.LFB723:
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
	call	s_lock
	movq	%rax, %rdi
	movq	-8(%rbp), %rax
	leaq	script_41_trace(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	ossl_quic_tserver_set_msg_callback@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	script_41_setup, .-script_41_setup
	.section	.rodata
.LC201:
	.string	"h->scratch0"
.LC202:
	.string	"h->scratch1"
	.text
	.type	script_41_check, @function
script_41_check:
.LFB724:
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
	movq	256(%rax), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC201(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$3669, %esi
	movq	%rax, %rdi
	call	test_uint64_t_gt@PLT
	testl	%eax, %eax
	jne	.L843
	movl	$0, %eax
	jmp	.L844
.L843:
	movq	-8(%rbp), %rax
	movq	264(%rax), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC202(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$3673, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L845
	movl	$0, %eax
	jmp	.L844
.L845:
	movl	$1, %eax
.L844:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	script_41_check, .-script_41_check
	.section	.data.rel.ro.local
	.align 32
	.type	script_41, @object
	.size	script_41, 1008
script_41:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_41_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	script_41_setup
	.quad	0
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	26
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	4
	.zero	4
	.quad	.LC166
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC166
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	script_41_check
	.quad	0
	.quad	0
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC203:
	.string	"WPACKET_quic_write_vlint(&wpkt, OSSL_QUIC_FRAME_TYPE_CRYPTO)"
	.align 8
.LC204:
	.string	"WPACKET_quic_write_vlint(&wpkt, 1)"
	.text
	.type	script_42_inject_plain, @function
script_42_inject_plain:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	$0, -4(%rbp)
	movq	-152(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	jne	.L847
	movl	$1, %eax
	jmp	.L857
.L847:
	movq	-152(%rbp), %rax
	movq	240(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 240(%rax)
	leaq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3715, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L849
	movl	$0, %eax
	jmp	.L857
.L849:
	leaq	-144(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC203(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3719, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L858
	movq	-152(%rbp), %rax
	movq	248(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3720, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L858
	leaq	-144(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC204(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3721, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L858
	leaq	-144(%rbp), %rax
	movl	$1, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC186(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3722, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L858
	leaq	-88(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3725, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L859
	movq	-88(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L860
	movl	$1, -4(%rbp)
	jmp	.L852
.L858:
	nop
	jmp	.L852
.L859:
	nop
	jmp	.L852
.L860:
	nop
.L852:
	cmpl	$0, -4(%rbp)
	je	.L855
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L856
.L855:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L856:
	movl	-4(%rbp), %eax
.L857:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	script_42_inject_plain, .-script_42_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_42, @object
	.size	script_42, 864
script_42:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_42_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	4611686018427387903
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_43, @object
	.size	script_43, 864
script_43:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_42_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	1048576
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	13
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC205:
	.string	"ossl_quic_wire_encode_padding(&wpkt, 1)"
	.text
	.type	script_44_inject_plain, @function
script_44_inject_plain:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	$0, -4(%rbp)
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L862
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L863
.L862:
	movl	$1, %eax
	jmp	.L872
.L863:
	leaq	-80(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3793, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L865
	movl	$0, %eax
	jmp	.L872
.L865:
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_padding@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC205(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3797, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L873
	leaq	-88(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3800, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L874
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L875
	movl	$1, -4(%rbp)
	jmp	.L867
.L873:
	nop
	jmp	.L867
.L874:
	nop
	jmp	.L867
.L875:
	nop
.L867:
	cmpl	$0, -4(%rbp)
	je	.L870
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L871
.L870:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L871:
	movl	-4(%rbp), %eax
.L872:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	script_44_inject_plain, .-script_44_inject_plain
	.section	.rodata
.LC206:
	.string	"Strawberry"
	.section	.data.rel.ro.local
	.align 32
	.type	script_44, @object
	.size	script_44, 720
script_44:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_44_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC207:
	.string	"ossl_quic_tserver_ping(ACQUIRE_S())"
	.text
	.type	force_ping, @function
force_ping:
.LFB727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_channel@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_diag_num_rx_ack@PLT
	movzwl	%ax, %edx
	movq	-24(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	call	ossl_quic_tserver_ping@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC207(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3839, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L877
	movl	$0, %eax
	jmp	.L878
.L877:
	movl	$1, %eax
.L878:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	force_ping, .-force_ping
	.type	wait_incoming_acks_increased, @function
wait_incoming_acks_increased:
.LFB728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_channel@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_get_diag_num_rx_ack@PLT
	movw	%ax, -10(%rbp)
	movzwl	-10(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L880
	movq	-24(%rbp), %rax
	movl	$1, 200(%rax)
	movl	$0, %eax
	jmp	.L881
.L880:
	movl	$1, %eax
.L881:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	wait_incoming_acks_increased, .-wait_incoming_acks_increased
	.section	.data.rel.ro.local
	.align 32
	.type	script_45, @object
	.size	script_45, 864
script_45:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	32
	.zero	4
	.quad	0
	.quad	2
	.zero	48
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	force_ping
	.quad	0
	.quad	0
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	wait_incoming_acks_increased
	.quad	0
	.quad	0
	.zero	24
	.long	33
	.zero	68
	.long	5
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC208:
	.string	"WPACKET_quic_write_vlint(&wpkt, largest_acked)"
	.align 8
.LC209:
	.string	"WPACKET_quic_write_vlint(&wpkt, range_count)"
	.align 8
.LC210:
	.string	"WPACKET_quic_write_vlint(&wpkt, first_range)"
	.align 8
.LC211:
	.string	"WPACKET_quic_write_vlint(&wpkt, agap)"
	.align 8
.LC212:
	.string	"WPACKET_quic_write_vlint(&wpkt, alen)"
	.align 8
.LC213:
	.string	"WPACKET_quic_write_vlint(&wpkt, ect0)"
	.align 8
.LC214:
	.string	"WPACKET_quic_write_vlint(&wpkt, ect1)"
	.align 8
.LC215:
	.string	"WPACKET_quic_write_vlint(&wpkt, ecnce)"
	.text
	.type	script_46_inject_plain, @function
script_46_inject_plain:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-184(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	jne	.L883
	movl	$1, %eax
	jmp	.L903
.L883:
	leaq	-160(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3896, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L885
	movl	$0, %eax
	jmp	.L903
.L885:
	movq	$2, -16(%rbp)
	movq	-184(%rbp), %rax
	movq	240(%rax), %rax
	cmpq	$5, %rax
	je	.L886
	cmpq	$5, %rax
	ja	.L887
	cmpq	$4, %rax
	je	.L888
	cmpq	$4, %rax
	ja	.L887
	cmpq	$3, %rax
	je	.L889
	cmpq	$3, %rax
	ja	.L887
	cmpq	$1, %rax
	je	.L890
	cmpq	$2, %rax
	je	.L891
	jmp	.L887
.L890:
	movq	$100, -24(%rbp)
	movq	$101, -32(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L887
.L891:
	movq	$100, -24(%rbp)
	movq	$80, -32(%rbp)
	movq	$1, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$19, -56(%rbp)
	jmp	.L887
.L889:
	movq	$100, -24(%rbp)
	movq	$80, -32(%rbp)
	movq	$1, -40(%rbp)
	movq	$18, -48(%rbp)
	movq	$1, -56(%rbp)
	jmp	.L887
.L888:
	movq	$3, -16(%rbp)
	movq	$100, -24(%rbp)
	movq	$1, -32(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L887
.L886:
	movq	$3, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -64(%rbp)
	movq	$50, -72(%rbp)
	movq	$200, -80(%rbp)
	nop
.L887:
	movq	-184(%rbp), %rax
	movq	$0, 240(%rax)
	movq	-16(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC183(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3942, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L904
	movq	-24(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC208(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3943, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L904
	leaq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3944, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L904
	movq	-40(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC209(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3945, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L904
	movq	-32(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC210(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3946, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L904
	cmpq	$0, -40(%rbp)
	je	.L895
	movq	-48(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC211(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3950, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L905
	movq	-56(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC212(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3951, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L905
.L895:
	cmpq	$3, -16(%rbp)
	jne	.L897
	movq	-64(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC213(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3955, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L906
	movq	-72(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC214(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3956, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L906
	movq	-80(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC215(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3957, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L906
.L897:
	leaq	-168(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$3960, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L907
	movq	-168(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L908
	movl	$1, -4(%rbp)
	jmp	.L894
.L904:
	nop
	jmp	.L894
.L905:
	nop
	jmp	.L894
.L906:
	nop
	jmp	.L894
.L907:
	nop
	jmp	.L894
.L908:
	nop
.L894:
	cmpl	$0, -4(%rbp)
	je	.L901
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L902
.L901:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L902:
	movl	-4(%rbp), %eax
.L903:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	script_46_inject_plain, .-script_46_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_46, @object
	.size	script_46, 720
script_46:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_46_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_47, @object
	.size	script_47, 720
script_47:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_46_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_48, @object
	.size	script_48, 720
script_48:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_46_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_49, @object
	.size	script_49, 720
script_49:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_46_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_50, @object
	.size	script_50, 864
script_50:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_46_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	32
	.zero	4
	.quad	0
	.quad	2
	.zero	48
	.long	43
	.zero	4
	.quad	0
	.quad	5
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	33
	.zero	68
	.long	0
	.zero	68
	.align 32
	.type	script_51, @object
	.size	script_51, 864
script_51:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_41_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	27
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	4
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC216:
	.string	"WPACKET_quic_write_vlint(&wpkt, C_BIDI_ID(0))"
	.align 8
.LC217:
	.string	"WPACKET_quic_write_vlint(&wpkt, 0xFFFFFF)"
	.text
	.type	script_52_inject_plain, @function
script_52_inject_plain:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	$0, -4(%rbp)
	movq	-152(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-152(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L910
	movq	-160(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L911
.L910:
	movl	$1, %eax
	jmp	.L922
.L911:
	movq	-152(%rbp), %rax
	movq	240(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 240(%rax)
	leaq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4107, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L913
	movl	$0, %eax
	jmp	.L922
.L913:
	movq	-16(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC183(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4111, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L923
	cmpq	$21, -16(%rbp)
	jne	.L916
	leaq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC216(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4115, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L924
.L916:
	leaq	-144(%rbp), %rax
	movl	$16777215, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC217(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L925
	leaq	-88(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4121, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L926
	movq	-88(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L927
	movl	$1, -4(%rbp)
	jmp	.L915
.L923:
	nop
	jmp	.L915
.L924:
	nop
	jmp	.L915
.L925:
	nop
	jmp	.L915
.L926:
	nop
	jmp	.L915
.L927:
	nop
.L915:
	cmpl	$0, -4(%rbp)
	je	.L920
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L921
.L920:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L921:
	movl	-4(%rbp), %eax
.L922:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	script_52_inject_plain, .-script_52_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_52, @object
	.size	script_52, 1944
script_52:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_52_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	20
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	4
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	21
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	4
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	23
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	4
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	22
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	4
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC218:
	.string	"frame_buf = OPENSSL_malloc(frame_len)"
	.align 8
.LC219:
	.string	"WPACKET_init_static_len(&wpkt, frame_buf, frame_len, 0)"
	.align 8
.LC220:
	.string	"WPACKET_quic_write_vlint(&wpkt, data_len)"
	.text
	.type	script_53_inject_plain, @function
script_53_inject_plain:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$100, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-120(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L929
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L930
.L929:
	movl	$1, %eax
	jmp	.L945
.L930:
	movq	-120(%rbp), %rax
	movq	$0, 240(%rax)
	movq	-120(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L932
	movq	$100000, -16(%rbp)
	movq	$1, -24(%rbp)
	nop
.L932:
	movq	-24(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -48(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$4210, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC218(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$4210, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L933
	movl	$0, %eax
	jmp	.L945
.L933:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC219(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4213, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L946
	leaq	-112(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC203(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4216, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L947
	movq	-16(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC184(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4217, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L947
	movq	-24(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC220(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4218, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L947
	movq	$0, -32(%rbp)
	jmp	.L938
.L940:
	leaq	-112(%rbp), %rax
	movl	$1, %edx
	movl	$66, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC186(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4222, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L948
	addq	$1, -32(%rbp)
.L938:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L940
	leaq	-56(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4225, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L949
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	184(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L950
	movl	$1, -4(%rbp)
	jmp	.L935
.L946:
	nop
	jmp	.L935
.L947:
	nop
	jmp	.L935
.L948:
	nop
	jmp	.L935
.L949:
	nop
	jmp	.L935
.L950:
	nop
.L935:
	cmpl	$0, -4(%rbp)
	je	.L943
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L944
.L943:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L944:
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$4237, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L945:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	script_53_inject_plain, .-script_53_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_53, @object
	.size	script_53, 720
script_53:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_53_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	13
	.zero	24
	.long	0
	.zero	68
	.text
	.type	script_54_inject_handshake, @function
script_54_inject_handshake:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L952
.L953:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	notl	%edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L952:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L953
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	script_54_inject_handshake, .-script_54_inject_handshake
	.section	.data.rel.ro.local
	.align 32
	.type	script_54, @object
	.size	script_54, 360
script_54:
	.long	46
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_54_inject_handshake
	.zero	8
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	266
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_55, @object
	.size	script_55, 864
script_55:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_39_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	2
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_56, @object
	.size	script_56, 864
script_56:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_39_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	3
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
.LC221:
	.string	"raspberry"
.LC222:
	.string	"peach"
	.section	.data.rel.ro.local
	.align 32
	.type	script_57, @object
	.size	script_57, 1368
script_57:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_39_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	4
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	4
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	7
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC221
	.quad	9
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC221
	.quad	9
	.quad	0
	.quad	.LC145
	.zero	32
	.long	4
	.zero	4
	.quad	.LC222
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	7
	.zero	4
	.quad	.LC222
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC223:
	.string	"WPACKET_quic_write_vlint(&wpkt, OSSL_QUIC_FRAME_TYPE_HANDSHAKE_DONE)"
	.align 8
.LC224:
	.string	"WPACKET_put_bytes_u8(&wpkt, 0x40)"
	.align 8
.LC225:
	.string	"WPACKET_put_bytes_u8(&wpkt, 0x1E)"
	.text
	.type	script_58_inject_plain, @function
script_58_inject_plain:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	$0, -4(%rbp)
	movq	-152(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L956
	movq	-160(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L957
.L956:
	movl	$1, %eax
	jmp	.L968
.L957:
	leaq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4366, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L959
	movl	$0, %eax
	jmp	.L968
.L959:
	movq	-152(%rbp), %rax
	movq	240(%rax), %rax
	cmpq	$1, %rax
	jne	.L960
	leaq	-144(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC223(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4371, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L961
	jmp	.L962
.L960:
	leaq	-144(%rbp), %rax
	movl	$1, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC224(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4375, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L969
	leaq	-144(%rbp), %rax
	movl	$1, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC225(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4376, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L969
.L961:
	leaq	-88(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4380, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L970
	movq	-88(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L971
	movl	$1, -4(%rbp)
	jmp	.L962
.L969:
	nop
	jmp	.L962
.L970:
	nop
	jmp	.L962
.L971:
	nop
.L962:
	cmpl	$0, -4(%rbp)
	je	.L966
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L967
.L966:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L967:
	movl	-4(%rbp), %eax
.L968:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	script_58_inject_plain, .-script_58_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_58, @object
	.size	script_58, 864
script_58:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_58_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	4
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	7
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_59, @object
	.size	script_59, 720
script_59:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_58_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	10
	.zero	24
	.long	0
	.zero	68
	.local	long_reason
	.comm	long_reason,2048,32
	.section	.rodata
.LC226:
	.string	"This is a long reason string."
	.text
	.type	init_reason, @function
init_reason:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	long_reason(%rip), %rax
	movl	$2048, %edx
	movl	$126, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	.LC226(%rip), %rcx
	leaq	long_reason(%rip), %rax
	movl	$29, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movb	$0, 2047+long_reason(%rip)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	init_reason, .-init_reason
	.section	.rodata
.LC227:
	.string	"50"
.LC228:
	.string	"tc->reason_len"
.LC229:
	.string	"tc->reason"
.LC230:
	.string	"long_reason"
	.text
	.type	check_shutdown_reason, @function
check_shutdown_reason:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_terminate_cause@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L975
	movq	-24(%rbp), %rax
	movl	$1, 200(%rax)
	movl	$0, %eax
	jmp	.L976
.L975:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC227(%rip), %rcx
	leaq	.LC228(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$50, %r9d
	movq	%rsi, %r8
	movl	$4454, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	testl	%eax, %eax
	je	.L977
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	24(%rax), %r8
	leaq	long_reason(%rip), %r10
	leaq	.LC229(%rip), %rcx
	leaq	.LC230(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movq	%r8, %r9
	movq	%r10, %r8
	movl	$4455, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L978
.L977:
	movl	$0, %eax
	jmp	.L976
.L978:
	movl	$1, %eax
.L976:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	check_shutdown_reason, .-check_shutdown_reason
	.section	.data.rel.ro.local
	.align 32
	.type	script_60, @object
	.size	script_60, 648
script_60:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	init_reason
	.quad	0
	.quad	0
	.zero	24
	.long	21
	.zero	4
	.quad	long_reason
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_shutdown_reason
	.quad	0
	.quad	0
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC231:
	.string	"WPACKET_quic_write_vlint(&wpkt, h->inject_word0)"
	.text
	.type	script_61_inject_plain, @function
script_61_inject_plain:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movl	$0, -4(%rbp)
	movq	-120(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L980
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L981
.L980:
	movl	$1, %eax
	jmp	.L991
.L981:
	leaq	-96(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4489, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L983
	movl	$0, %eax
	jmp	.L991
.L983:
	movq	-120(%rbp), %rax
	movq	240(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC231(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4493, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L992
	movq	-120(%rbp), %rax
	movq	248(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4494, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L992
	leaq	-64(%rbp), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC180(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4496, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L992
	movq	-120(%rbp), %rax
	movq	240(%rax), %rax
	cmpq	$4, %rax
	jne	.L985
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4498, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L992
.L985:
	leaq	-104(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4501, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L993
	movq	-104(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L994
	movl	$1, -4(%rbp)
	jmp	.L986
.L992:
	nop
	jmp	.L986
.L993:
	nop
	jmp	.L986
.L994:
	nop
.L986:
	cmpl	$0, -4(%rbp)
	je	.L989
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L990
.L989:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L990:
	movl	-4(%rbp), %eax
.L991:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	script_61_inject_plain, .-script_61_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_61, @object
	.size	script_61, 864
script_61:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_61_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	4
	.quad	0
	.quad	0
	.quad	4611686018427387901
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC182
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	4
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_62, @object
	.size	script_62, 864
script_62:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_61_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	5
	.quad	0
	.quad	0
	.quad	4611686018427387900
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC182
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	5
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_63, @object
	.size	script_63, 864
script_63:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_32_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	20002
	.quad	0
	.quad	0
	.quad	4
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	4
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_64, @object
	.size	script_64, 864
script_64:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_32_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC145
	.quad	3
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	82
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.text
	.type	script_65_inject_plain, @function
script_65_inject_plain:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	$0, -4(%rbp)
	movq	-152(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	jne	.L996
	movl	$1, %eax
	jmp	.L1006
.L996:
	movq	-152(%rbp), %rax
	movq	240(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 240(%rax)
	leaq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4614, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L998
	movl	$0, %eax
	jmp	.L1006
.L998:
	leaq	-144(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC203(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4618, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1007
	leaq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4619, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1007
	leaq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC177(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4620, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1007
	leaq	-88(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4623, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1008
	movq	-88(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L1009
	movl	$1, -4(%rbp)
	jmp	.L1001
.L1007:
	nop
	jmp	.L1001
.L1008:
	nop
	jmp	.L1001
.L1009:
	nop
.L1001:
	cmpl	$0, -4(%rbp)
	je	.L1004
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L1005
.L1004:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L1005:
	movl	-4(%rbp), %eax
.L1006:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	script_65_inject_plain, .-script_65_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_65, @object
	.size	script_65, 864
script_65:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_65_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC232:
	.string	"WPACKET_quic_write_vlint(&wpkt, OSSL_QUIC_VLINT_MAX)"
	.text
	.type	script_66_inject_plain, @function
script_66_inject_plain:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movl	$0, -4(%rbp)
	movq	-152(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L1011
	movq	-160(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	je	.L1012
.L1011:
	movl	$1, %eax
	jmp	.L1023
.L1012:
	leaq	-128(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4669, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1014
	movl	$0, %eax
	jmp	.L1023
.L1014:
	movq	-152(%rbp), %rax
	movq	248(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4673, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1024
	movq	-152(%rbp), %rax
	movq	248(%rax), %rax
	cmpq	$17, %rax
	jne	.L1017
	movq	-152(%rbp), %rax
	movq	240(%rax), %rax
	leaq	-1(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC179(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4677, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1025
.L1017:
	movabsq	$4611686018427387903, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_quic_write_vlint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC232(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4681, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1026
	leaq	-136(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC175(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4684, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1027
	movq	-136(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-128(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L1028
	movl	$1, -4(%rbp)
	jmp	.L1016
.L1024:
	nop
	jmp	.L1016
.L1025:
	nop
	jmp	.L1016
.L1026:
	nop
	jmp	.L1016
.L1027:
	nop
	jmp	.L1016
.L1028:
	nop
.L1016:
	cmpl	$0, -4(%rbp)
	je	.L1021
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L1022
.L1021:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L1022:
	movl	-4(%rbp), %eax
.L1023:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	script_66_inject_plain, .-script_66_inject_plain
	.section	.data.rel.ro.local
	.align 32
	.type	script_66, @object
	.size	script_66, 1008
script_66:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_66_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	0
	.quad	17
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	4
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	7
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_67, @object
	.size	script_67, 1008
script_67:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_66_inject_plain
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	16
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	4
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	7
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC233:
	.string	"qtest_fault_resize_message(h->qtf, datalen - SSL3_HM_HEADER_LENGTH)"
	.text
	.type	script_68_inject_handshake, @function
script_68_inject_handshake:
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
	movabsq	$576461856311345165, %rax
	movabsq	$290484375055764736, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$16777240, -37(%rbp)
	movb	$0, -33(%rbp)
	movq	-56(%rbp), %rax
	movq	240(%rax), %rax
	cmpq	$2, %rax
	je	.L1030
	cmpq	$2, %rax
	ja	.L1031
	testq	%rax, %rax
	je	.L1032
	cmpq	$1, %rax
	je	.L1033
	jmp	.L1031
.L1032:
	movl	$1, %eax
	jmp	.L1037
.L1033:
	leaq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$16, -16(%rbp)
	jmp	.L1035
.L1030:
	leaq	-37(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$5, -16(%rbp)
	jmp	.L1035
.L1031:
	movl	$0, %eax
	jmp	.L1037
.L1035:
	movq	-16(%rbp), %rax
	leaq	-4(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_resize_message@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC233(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4785, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1036
	movl	$0, %eax
	jmp	.L1037
.L1036:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L1037:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	script_68_inject_handshake, .-script_68_inject_handshake
	.section	.data.rel.ro.local
	.align 32
	.type	script_68, @object
	.size	script_68, 936
script_68:
	.long	46
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_68_inject_handshake
	.zero	8
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	47
	.zero	68
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	10
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_69, @object
	.size	script_69, 936
script_69:
	.long	46
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_68_inject_handshake
	.zero	8
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	47
	.zero	68
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	266
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC234:
	.string	"ossl_quic_tserver_set_max_early_data(ACQUIRE_S(), (uint32_t)hl->check_op->arg2)"
	.text
	.type	set_max_early_data, @function
set_max_early_data:
.LFB740:
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
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movl	%eax, %ebx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	ossl_quic_tserver_set_max_early_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC234(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4840, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1039
	movl	$0, %eax
	jmp	.L1040
.L1039:
	movl	$1, %eax
.L1040:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	set_max_early_data, .-set_max_early_data
	.section	.data.rel.ro.local
	.align 32
	.type	script_70, @object
	.size	script_70, 864
script_70:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	set_max_early_data
	.quad	0
	.quad	4294967294
	.zero	24
	.long	47
	.zero	68
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	10
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_71, @object
	.size	script_71, 864
script_71:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	set_max_early_data
	.quad	0
	.quad	4294967295
	.zero	24
	.long	47
	.zero	68
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.section	.rodata
.LC235:
	.string	"h->fail_count"
	.text
	.type	script_72_check, @function
script_72_check:
.LFB741:
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
	movq	272(%rax), %rsi
	leaq	.LC227(%rip), %rcx
	leaq	.LC235(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$50, %r9d
	movq	%rsi, %r8
	movl	$4889, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	jne	.L1042
	movl	$0, %eax
	jmp	.L1043
.L1042:
	movl	$1, %eax
.L1043:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	script_72_check, .-script_72_check
	.section	.data.rel.ro.local
	.align 32
	.type	script_72, @object
	.size	script_72, 792
script_72:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	32
	.zero	4
	.quad	0
	.quad	200
	.zero	48
	.long	14
	.zero	4
	.quad	0
	.quad	65538
	.quad	0
	.quad	.LC145
	.quad	-1
	.zero	24
	.long	48
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	.LC145
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	18
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	33
	.zero	68
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	script_72_check
	.quad	0
	.quad	0
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_73, @object
	.size	script_73, 792
script_73:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	32
	.zero	4
	.quad	0
	.quad	200
	.zero	48
	.long	14
	.zero	4
	.quad	0
	.quad	65539
	.quad	0
	.quad	.LC145
	.quad	-1
	.zero	24
	.long	48
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	.LC145
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	18
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	33
	.zero	68
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	script_72_check
	.quad	0
	.quad	0
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC236:
	.string	"ossl_quic_wire_encode_pkt_hdr(wpkt, 0, &hdr, NULL)"
	.align 8
.LC237:
	.string	"WPACKET_put_bytes_u32(wpkt, version)"
	.text
	.type	generate_version_neg, @function
generate_version_neg:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movb	$6, -96(%rbp)
	movzbl	-95(%rbp), %eax
	orl	$-128, %eax
	movb	%al, -95(%rbp)
	movb	$0, -88(%rbp)
	movb	$8, -67(%rbp)
	leaq	-96(%rbp), %rax
	addq	$30, %rax
	movl	$8, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_pkt_hdr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC236(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4953, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1045
	movl	$0, %eax
	jmp	.L1048
.L1045:
	movl	-108(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC237(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4956, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1047
	movl	$0, %eax
	jmp	.L1048
.L1047:
	movl	$1, %eax
.L1048:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	generate_version_neg, .-generate_version_neg
	.section	.rodata
.LC238:
	.string	"buf = BUF_MEM_new()"
.LC239:
	.string	"WPACKET_init(&wpkt, buf)"
	.align 8
.LC240:
	.string	"WPACKET_get_total_written(&wpkt, &l)"
	.align 8
.LC241:
	.string	"qtest_fault_resize_datagram(h->qtf, l)"
	.text
	.type	server_gen_version_neg, @function
server_gen_version_neg:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L1050
	cmpq	$1, %rax
	je	.L1051
	jmp	.L1062
.L1050:
	movl	$1, %eax
	jmp	.L1061
.L1051:
	movl	$1, -12(%rbp)
	jmp	.L1054
.L1062:
	movl	$1412606925, -12(%rbp)
	nop
.L1054:
	call	BUF_MEM_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC238(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$4981, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1063
	movq	-24(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC239(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4984, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1064
	movl	$1, -8(%rbp)
	movl	-12(%rbp), %edx
	leaq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	generate_version_neg
	leaq	-32(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC240(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4991, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1065
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_resize_datagram@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC241(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$4994, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1059
	movl	$0, %eax
	jmp	.L1061
.L1059:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-104(%rbp), %rax
	movq	$0, 240(%rax)
	movl	$1, -4(%rbp)
	jmp	.L1056
.L1063:
	nop
	jmp	.L1056
.L1064:
	nop
	jmp	.L1056
.L1065:
	nop
.L1056:
	cmpl	$0, -8(%rbp)
	je	.L1060
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
.L1060:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	-4(%rbp), %eax
.L1061:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	server_gen_version_neg, .-server_gen_version_neg
	.section	.data.rel.ro.local
	.align 32
	.type	script_74, @object
	.size	script_74, 720
script_74:
	.long	49
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	server_gen_version_neg
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_75, @object
	.size	script_75, 432
script_75:
	.long	49
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	server_gen_version_neg
	.long	43
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	2
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC242:
	.string	"SSL_shutdown_ex(h->c_conn, SSL_SHUTDOWN_FLAG_WAIT_PEER | SSL_SHUTDOWN_FLAG_NO_BLOCK, NULL, 0)"
	.text
	.type	script_76_check, @function
script_76_check:
.LFB744:
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
	movq	112(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$12, %esi
	movq	%rax, %rdi
	call	SSL_shutdown_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC242(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5042, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L1067
	movl	$0, %eax
	jmp	.L1068
.L1067:
	movl	$1, %eax
.L1068:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	script_76_check, .-script_76_check
	.section	.data.rel.ro.local
	.align 32
	.type	script_76, @object
	.size	script_76, 864
script_76:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	script_76_check
	.quad	0
	.quad	0
	.zero	24
	.long	50
	.zero	4
	.quad	0
	.quad	42
	.zero	48
	.long	21
	.zero	4
	.quad	0
	.quad	8
	.quad	0
	.quad	0
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	3
	.quad	0
	.quad	0
	.quad	42
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
.LC243:
	.string	"xyz"
	.section	.data.rel.ro.local
	.align 32
	.type	script_77, @object
	.size	script_77, 792
script_77:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	20
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC47
	.zero	32
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	5
	.zero	24
	.long	5
	.zero	4
	.quad	.LC243
	.quad	3
	.quad	0
	.quad	.LC147
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.zero	32
	.long	6
	.zero	4
	.quad	.LC243
	.quad	3
	.quad	0
	.quad	.LC147
	.zero	32
	.long	0
	.zero	68
	.local	new_session_count
	.comm	new_session_count,8,8
	.text
	.type	on_new_session, @function
on_new_session:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	new_session_count(%rip), %rax
	addq	$1, %rax
	movq	%rax, new_session_count(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	on_new_session, .-on_new_session
	.type	setup_session, @function
setup_session:
.LFB746:
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
	movq	104(%rax), %rax
	movl	$0, %ecx
	movl	$3, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	leaq	on_new_session(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_sess_set_new_cb@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	setup_session, .-setup_session
	.type	trigger_late_session_ticket, @function
trigger_late_session_ticket:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, new_session_count(%rip)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	call	ossl_quic_tserver_new_ticket@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC129(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5113, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1074
	movl	$0, %eax
	jmp	.L1075
.L1074:
	movl	$1, %eax
.L1075:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	trigger_late_session_ticket, .-trigger_late_session_ticket
	.section	.rodata
.LC244:
	.string	"new_session_count"
	.text
	.type	check_got_session_ticket, @function
check_got_session_ticket:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	new_session_count(%rip), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC244(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$5121, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L1077
	movl	$0, %eax
	jmp	.L1078
.L1077:
	movl	$1, %eax
.L1078:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	check_got_session_ticket, .-check_got_session_ticket
	.section	.data.rel.ro.local
	.align 32
	.type	script_78, @object
	.size	script_78, 1152
script_78:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	setup_session
	.quad	0
	.quad	0
	.zero	24
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	trigger_late_session_ticket
	.quad	0
	.quad	0
	.zero	24
	.long	5
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_got_session_ticket
	.quad	0
	.quad	0
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	3
	.quad	check_idle_timeout
	.quad	0
	.quad	30000
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_79, @object
	.size	script_79, 792
script_79:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	52
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.quad	1
	.zero	24
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC47
	.zero	32
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.zero	32
	.long	0
	.zero	68
	.data
	.align 16
	.type	test_reset_token, @object
	.size	test_reset_token, 16
test_reset_token:
	.base64	"3q2+796tvu/erb7v3q2+7w=="
	.section	.rodata
.LC245:
	.string	"Sending stateless reset\n"
	.align 8
.LC246:
	.string	"SSL_inject_net_dgram(h->c_conn, databuf, sizeof(databuf), NULL, h->s_net_bio_addr)"
	.text
	.type	script_80_send_stateless_reset, @function
script_80_send_stateless_reset:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L1080
	movl	$1, %eax
	jmp	.L1083
.L1080:
	movq	-72(%rbp), %rax
	movq	$0, 248(%rax)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC245(%rip), %rdi
	movq	%rax, %rcx
	movl	$24, %edx
	movl	$1, %esi
	call	fwrite@PLT
	leaq	-64(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movb	$64, -64(%rbp)
	movq	test_reset_token(%rip), %rax
	movq	8+test_reset_token(%rip), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-64(%rbp), %rsi
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	SSL_inject_net_dgram@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC246(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$5203, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L1082
	movl	$0, %eax
	jmp	.L1083
.L1082:
	movl	$1, %eax
.L1083:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	script_80_send_stateless_reset, .-script_80_send_stateless_reset
	.section	.rodata
.LC247:
	.string	"sending new conn id\n"
	.align 8
.LC248:
	.string	"ossl_quic_wire_encode_frame_new_conn_id(&wpkt, &ncid)"
	.text
	.type	script_80_gen_new_conn_id, @function
script_80_gen_new_conn_id:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -288(%rbp)
	movl	$0, -4(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -192(%rbp)
	movq	%xmm0, -179(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
	movq	%xmm0, -208(%rbp)
	movq	-264(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	s_lock
	movq	%rax, %rdi
	call	ossl_quic_tserver_get_channel@PLT
	movq	%rax, -16(%rbp)
	movq	-264(%rbp), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	jne	.L1085
	movl	$1, %eax
	jmp	.L1094
.L1085:
	movq	-264(%rbp), %rax
	movq	$0, 240(%rax)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC247(%rip), %rdi
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	call	fwrite@PLT
	leaq	-96(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC171(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5227, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1087
	movl	$0, %eax
	jmp	.L1094
.L1087:
	leaq	-192(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_get_diag_local_cid@PLT
	movq	$2, -256(%rbp)
	movq	$2, -248(%rbp)
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-179(%rbp), %rax
	movq	%rax, -227(%rbp)
	movq	test_reset_token(%rip), %rax
	movq	8+test_reset_token(%rip), %rdx
	movq	%rax, -219(%rbp)
	movq	%rdx, -211(%rbp)
	leaq	-256(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_new_conn_id@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC248(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5239, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1095
	leaq	-24(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC240(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5242, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1096
	movq	-24(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	184(%rax), %rax
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qtest_fault_prepend_frame@PLT
	testl	%eax, %eax
	je	.L1097
	movl	$1, -4(%rbp)
	jmp	.L1089
.L1095:
	nop
	jmp	.L1089
.L1096:
	nop
	jmp	.L1089
.L1097:
	nop
.L1089:
	cmpl	$0, -4(%rbp)
	je	.L1092
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	jmp	.L1093
.L1092:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
.L1093:
	movl	-4(%rbp), %eax
.L1094:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	script_80_gen_new_conn_id, .-script_80_gen_new_conn_id
	.type	script_80_inject_pkt, @function
script_80_inject_pkt:
.LFB751:
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
	movq	248(%rax), %rax
	cmpq	$1, %rax
	jne	.L1099
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	script_80_send_stateless_reset
	jmp	.L1100
.L1099:
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	cmpq	$1, %rax
	jne	.L1101
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	script_80_gen_new_conn_id
	jmp	.L1100
.L1101:
	movl	$1, %eax
.L1100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	script_80_inject_pkt, .-script_80_inject_pkt
	.section	.data.rel.ro.local
	.align 32
	.type	script_80, @object
	.size	script_80, 1008
script_80:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_80_inject_pkt
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC47
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC47
	.zero	32
	.long	43
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.zero	16
	.long	5
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	2
	.quad	0
	.quad	0
	.quad	0
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC249:
	.string	"SSL_set_feature_request_uint(h->c_conn, SSL_VALUE_QUIC_IDLE_TIMEOUT, (1ULL << 62))"
	.align 8
.LC250:
	.string	"SSL_set_feature_request_uint(h->c_conn, SSL_VALUE_QUIC_IDLE_TIMEOUT, hl->check_op->arg2)"
	.align 8
.LC251:
	.string	"SSL_get_feature_request_uint(h->c_conn, SSL_VALUE_QUIC_IDLE_TIMEOUT, &v)"
.LC252:
	.string	"v"
	.text
	.type	modify_idle_timeout, @function
modify_idle_timeout:
.LFB752:
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
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movabsq	$4611686018427387904, %rdx
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC249(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5292, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L1103
	movl	$0, %eax
	jmp	.L1108
.L1103:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC250(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5298, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1105
	movl	$0, %eax
	jmp	.L1108
.L1105:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_get_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC251(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1106
	movl	$0, %eax
	jmp	.L1108
.L1106:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5308, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L1107
	movl	$0, %eax
	jmp	.L1108
.L1107:
	movl	$1, %eax
.L1108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	modify_idle_timeout, .-modify_idle_timeout
	.section	.rodata
	.align 8
.LC253:
	.string	"SSL_get_value_uint(h->c_conn, hl->check_op->arg1, SSL_VALUE_QUIC_IDLE_TIMEOUT, &v)"
	.text
	.type	check_idle_timeout, @function
check_idle_timeout:
.LFB753:
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
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$5, %edx
	movq	%rax, %rdi
	call	SSL_get_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC253(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5318, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1110
	movl	$0, %eax
	jmp	.L1113
.L1110:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5323, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L1112
	movl	$0, %eax
	jmp	.L1113
.L1112:
	movl	$1, %eax
.L1113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	check_idle_timeout, .-check_idle_timeout
	.section	.data.rel.ro.local
	.align 32
	.type	script_81, @object
	.size	script_81, 504
script_81:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	modify_idle_timeout
	.quad	0
	.quad	25000
	.zero	24
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	2
	.quad	check_idle_timeout
	.quad	0
	.quad	30000
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	3
	.quad	check_idle_timeout
	.quad	0
	.quad	25000
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	script_82, @object
	.size	script_82, 432
script_82:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	2
	.quad	check_idle_timeout
	.quad	0
	.quad	30000
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	3
	.quad	check_idle_timeout
	.quad	0
	.quad	30000
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
.LC254:
	.string	"30000"
	.align 8
.LC255:
	.string	"SSL_set_feature_request_uint(h->c_conn, SSL_VALUE_QUIC_IDLE_TIMEOUT, 5000)"
	.text
	.type	cannot_change_idle_timeout, @function
cannot_change_idle_timeout:
.LFB754:
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
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_get_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC251(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5364, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1115
	movl	$0, %eax
	jmp	.L1119
.L1115:
	movq	-8(%rbp), %rsi
	leaq	.LC254(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$30000, %r9d
	movq	%rsi, %r8
	movl	$5369, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L1117
	movl	$0, %eax
	jmp	.L1119
.L1117:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	$5000, %ecx
	movl	$5, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	SSL_set_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC255(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5372, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L1118
	movl	$0, %eax
	jmp	.L1119
.L1118:
	movl	$1, %eax
.L1119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	cannot_change_idle_timeout, .-cannot_change_idle_timeout
	.section	.data.rel.ro.local
	.align 32
	.type	script_83, @object
	.size	script_83, 504
script_83:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	cannot_change_idle_timeout
	.quad	0
	.quad	0
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	2
	.quad	check_idle_timeout
	.quad	0
	.quad	30000
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	3
	.quad	check_idle_timeout
	.quad	0
	.quad	30000
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC256:
	.string	"SSL_get_quic_stream_bidi_local_avail(h->c_conn, &v)"
	.align 8
.LC257:
	.string	"SSL_get_quic_stream_bidi_remote_avail(h->c_conn, &v)"
	.align 8
.LC258:
	.string	"SSL_get_quic_stream_uni_local_avail(h->c_conn, &v)"
	.align 8
.LC259:
	.string	"SSL_get_quic_stream_uni_remote_avail(h->c_conn, &v)"
	.text
	.type	check_avail_streams, @function
check_avail_streams:
.LFB755:
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
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	cmpq	$3, %rax
	je	.L1121
	cmpq	$3, %rax
	ja	.L1122
	cmpq	$2, %rax
	je	.L1123
	cmpq	$2, %rax
	ja	.L1122
	testq	%rax, %rax
	je	.L1124
	cmpq	$1, %rax
	je	.L1125
	jmp	.L1122
.L1124:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC256(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5402, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1134
	movl	$0, %eax
	jmp	.L1133
.L1125:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC257(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5406, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1135
	movl	$0, %eax
	jmp	.L1133
.L1123:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC258(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5410, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1136
	movl	$0, %eax
	jmp	.L1133
.L1121:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC259(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5414, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L1137
	movl	$0, %eax
	jmp	.L1133
.L1122:
	movl	$0, %eax
	jmp	.L1133
.L1134:
	nop
	jmp	.L1128
.L1135:
	nop
	jmp	.L1128
.L1136:
	nop
	jmp	.L1128
.L1137:
	nop
.L1128:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5421, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L1132
	movl	$0, %eax
	jmp	.L1133
.L1132:
	movl	$1, %eax
.L1133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	check_avail_streams, .-check_avail_streams
	.section	.rodata
	.align 8
.LC260:
	.string	"c_a = helper_local_get_c_stream(hl, \"a\")"
	.align 8
.LC261:
	.string	"SSL_get_stream_write_buf_size(c_a, &size)"
	.align 8
.LC262:
	.string	"SSL_get_stream_write_buf_used(c_a, &used)"
	.align 8
.LC263:
	.string	"SSL_get_stream_write_buf_avail(c_a, &avail)"
.LC264:
	.string	"avail"
.LC265:
	.string	"size"
.LC266:
	.string	"used"
.LC267:
	.string	"avail + used"
.LC268:
	.string	"hl->check_op->arg1"
	.text
	.type	check_write_buf_stat, @function
check_write_buf_stat:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	.LC145(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	helper_local_get_c_stream
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC260(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$5435, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1139
	movl	$0, %eax
	jmp	.L1144
.L1139:
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC261(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5438, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1141
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC262(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5439, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1141
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$9, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_value_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC263(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5440, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L1141
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC264(%rip), %rcx
	leaq	.LC265(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5441, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L1141
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC266(%rip), %rcx
	leaq	.LC265(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5442, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L1141
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	.LC265(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$5443, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L1142
.L1141:
	movl	$0, %eax
	jmp	.L1144
.L1142:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC268(%rip), %rcx
	leaq	.LC266(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5446, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L1143
	movl	$0, %eax
	jmp	.L1144
.L1143:
	movl	$1, %eax
.L1144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	check_write_buf_stat, .-check_write_buf_stat
	.section	.rodata
.LC269:
	.string	"x"
	.section	.data.rel.ro.local
	.align 32
	.type	script_84, @object
	.size	script_84, 3168
script_84:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_avail_streams
	.quad	0
	.quad	100
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	1
	.quad	check_avail_streams
	.quad	0
	.quad	100
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	2
	.quad	check_avail_streams
	.quad	0
	.quad	100
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	3
	.quad	check_avail_streams
	.quad	0
	.quad	100
	.zero	24
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_avail_streams
	.quad	0
	.quad	99
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	1
	.quad	check_avail_streams
	.quad	0
	.quad	100
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	2
	.quad	check_avail_streams
	.quad	0
	.quad	100
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	3
	.quad	check_avail_streams
	.quad	0
	.quad	100
	.zero	24
	.long	14
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC147
	.quad	2
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_avail_streams
	.quad	0
	.quad	99
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	1
	.quad	check_avail_streams
	.quad	0
	.quad	100
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	2
	.quad	check_avail_streams
	.quad	0
	.quad	99
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	3
	.quad	check_avail_streams
	.quad	0
	.quad	100
	.zero	24
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.quad	1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC269
	.quad	1
	.quad	0
	.quad	.LC150
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.zero	32
	.long	6
	.zero	4
	.quad	.LC269
	.quad	1
	.quad	0
	.quad	.LC150
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_avail_streams
	.quad	0
	.quad	99
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	1
	.quad	check_avail_streams
	.quad	0
	.quad	99
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	2
	.quad	check_avail_streams
	.quad	0
	.quad	99
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	3
	.quad	check_avail_streams
	.quad	0
	.quad	100
	.zero	24
	.long	15
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC152
	.quad	3
	.zero	24
	.long	5
	.zero	4
	.quad	.LC269
	.quad	1
	.quad	0
	.quad	.LC152
	.zero	32
	.long	16
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.zero	32
	.long	6
	.zero	4
	.quad	.LC269
	.quad	1
	.quad	0
	.quad	.LC152
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_avail_streams
	.quad	0
	.quad	99
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	1
	.quad	check_avail_streams
	.quad	0
	.quad	99
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	2
	.quad	check_avail_streams
	.quad	0
	.quad	99
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	3
	.quad	check_avail_streams
	.quad	0
	.quad	99
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_write_buf_stat
	.quad	0
	.quad	0
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	set_event_handling_mode_conn
	.quad	0
	.quad	2
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	5
	.quad	check_write_buf_stat
	.quad	0
	.quad	0
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	reenable_test_event_handling
	.quad	0
	.quad	0
	.zero	24
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	check_write_buf_stat
	.quad	0
	.quad	0
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 8
.LC270:
	.string	"c_b = helper_local_get_c_stream(hl, \"b\")"
	.align 8
.LC271:
	.string	"c_c = helper_local_get_c_stream(hl, \"c\")"
	.align 8
.LC272:
	.string	"c_d = helper_local_get_c_stream(hl, \"d\")"
	.align 8
.LC273:
	.string	"SSL_poll(items, OSSL_NELEM(items), sizeof(SSL_POLL_ITEM), &nz_timeout, 0, &result_count)"
.LC274:
	.string	"result_count"
.LC275:
	.string	"expected_ret"
.LC276:
	.string	"expected_result_count"
.LC277:
	.string	"expected_revents[i]"
.LC278:
	.string	"items[i].revents"
	.align 8
.LC279:
	.string	"mismatch at index %zu in poll results, mode %d"
	.text
	.type	script_85_poll, @function
script_85_poll:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movl	$1, -20(%rbp)
	movl	$1, -44(%rbp)
	movq	$0, -32(%rbp)
	leaq	-272(%rbp), %rdx
	movl	$0, %eax
	movl	$20, %ecx
	movq	%rdx, %rdi
	rep stosq
	leaq	-272(%rbp), %rax
	movq	%rax, -56(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -320(%rbp)
	movaps	%xmm0, -304(%rbp)
	movq	%xmm0, -288(%rbp)
	leaq	.LC145(%rip), %rdx
	movq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	helper_local_get_c_stream
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC260(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$5528, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1146
	leaq	.LC147(%rip), %rdx
	movq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	helper_local_get_c_stream
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC270(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$5529, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1146
	leaq	.LC150(%rip), %rdx
	movq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	helper_local_get_c_stream
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC271(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$5530, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1146
	leaq	.LC152(%rip), %rdx
	movq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	helper_local_get_c_stream
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC272(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$5531, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1147
.L1146:
	movl	$0, %eax
	jmp	.L1160
.L1147:
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_as_poll_descriptor
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	%ecx, (%rbx)
	movq	%rax, 8(%rbx)
	movq	-56(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-56(%rbp), %rax
	movq	$-1, 24(%rax)
	addq	$32, -56(%rbp)
	movq	-56(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_as_poll_descriptor
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	%ecx, (%rbx)
	movq	%rax, 8(%rbx)
	movq	-56(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-56(%rbp), %rax
	movq	$-1, 24(%rax)
	addq	$32, -56(%rbp)
	movq	-56(%rbp), %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_as_poll_descriptor
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	%ecx, (%rbx)
	movq	%rax, 8(%rbx)
	movq	-56(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-56(%rbp), %rax
	movq	$-1, 24(%rax)
	addq	$32, -56(%rbp)
	movq	-56(%rbp), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_as_poll_descriptor
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	%ecx, (%rbx)
	movq	%rax, 8(%rbx)
	movq	-56(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-56(%rbp), %rax
	movq	$-1, 24(%rax)
	addq	$32, -56(%rbp)
	movq	-328(%rbp), %rax
	movq	112(%rax), %rax
	movq	-56(%rbp), %rbx
	movq	%rax, %rdi
	call	SSL_as_poll_descriptor
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	%ecx, (%rbx)
	movq	%rax, 8(%rbx)
	movq	-56(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-56(%rbp), %rax
	movq	$-1, 24(%rax)
	addq	$32, -56(%rbp)
	movq	$-1, -112(%rbp)
	call	ERR_set_mark@PLT
	leaq	-112(%rbp), %rcx
	leaq	nz_timeout.2(%rip), %rdx
	leaq	-272(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	SSL_poll@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC273(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$5562, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L1149
	movq	-112(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$5565, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L1150
.L1149:
	movl	$0, %eax
	jmp	.L1160
.L1150:
	call	ERR_pop_to_mark@PLT
	movq	$-1, -112(%rbp)
	leaq	-112(%rbp), %rcx
	leaq	timeout.1(%rip), %rdx
	leaq	-272(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	SSL_poll@PLT
	movl	%eax, -92(%rbp)
	movq	-336(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L1151
	cmpq	$1, -104(%rbp)
	je	.L1152
	jmp	.L1161
.L1151:
	movq	$128, -320(%rbp)
	movq	$128, -312(%rbp)
	movq	$128, -304(%rbp)
	movq	$128, -296(%rbp)
	movq	$6144, -288(%rbp)
	movq	$5, -32(%rbp)
	jmp	.L1154
.L1152:
	movq	$192, -320(%rbp)
	movq	$144, -312(%rbp)
	movq	$32, -304(%rbp)
	movq	$128, -296(%rbp)
	movq	$6656, -288(%rbp)
	movq	$5, -32(%rbp)
	jmp	.L1154
.L1161:
	movl	$0, %eax
	jmp	.L1160
.L1154:
	movl	-44(%rbp), %edi
	movl	-92(%rbp), %esi
	leaq	.LC275(%rip), %rcx
	leaq	.LC65(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$5598, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L1155
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC276(%rip), %rcx
	leaq	.LC274(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5599, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L1156
.L1155:
	movl	$0, -20(%rbp)
.L1156:
	movq	$0, -40(%rbp)
	jmp	.L1157
.L1159:
	movq	-40(%rbp), %rax
	movq	-320(%rbp,%rax,8), %rdi
	movq	-40(%rbp), %rax
	salq	$5, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$232, %rax
	movq	(%rax), %rsi
	leaq	.LC277(%rip), %rcx
	leaq	.LC278(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$5603, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L1158
	movq	-104(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	leaq	.LC279(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$5604, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, -20(%rbp)
.L1158:
	addq	$1, -40(%rbp)
.L1157:
	cmpq	$4, -40(%rbp)
	jbe	.L1159
	movl	-20(%rbp), %eax
.L1160:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	script_85_poll, .-script_85_poll
	.section	.rodata
.LC280:
	.string	"sync"
.LC281:
	.string	"herringbone"
.LC282:
	.string	"z"
	.section	.data.rel.ro.local
	.align 32
	.type	script_85, @object
	.size	script_85, 2232
script_85:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC148
	.quad	8
	.quad	0
	.quad	.LC145
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	4
	.zero	24
	.long	4
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC147
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.quad	8
	.zero	24
	.long	4
	.zero	4
	.quad	.LC206
	.quad	10
	.quad	0
	.quad	.LC150
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.quad	12
	.zero	24
	.long	4
	.zero	4
	.quad	.LC280
	.quad	4
	.quad	0
	.quad	.LC152
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC147
	.quad	4
	.zero	24
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC150
	.quad	8
	.zero	24
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC152
	.quad	12
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	script_85_poll
	.quad	0
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC148
	.quad	8
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC281
	.quad	11
	.quad	0
	.quad	.LC145
	.zero	32
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_28_inject_plain
	.zero	16
	.long	43
	.zero	4
	.quad	0
	.quad	5
	.quad	0
	.quad	0
	.quad	4
	.quad	0
	.zero	16
	.long	7
	.zero	4
	.quad	.LC280
	.quad	4
	.quad	0
	.quad	.LC152
	.zero	32
	.long	5
	.zero	4
	.quad	.LC269
	.quad	1
	.quad	0
	.quad	.LC152
	.zero	32
	.long	6
	.zero	4
	.quad	.LC269
	.quad	1
	.quad	0
	.quad	.LC152
	.zero	32
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_28_inject_plain
	.zero	16
	.long	43
	.zero	4
	.quad	0
	.quad	9
	.quad	0
	.quad	0
	.quad	5
	.quad	0
	.zero	16
	.long	15
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC282
	.quad	1
	.zero	24
	.long	5
	.zero	4
	.quad	.LC282
	.quad	1
	.quad	0
	.quad	.LC282
	.zero	32
	.long	5
	.zero	4
	.quad	.LC269
	.quad	1
	.quad	0
	.quad	.LC152
	.zero	32
	.long	6
	.zero	4
	.quad	.LC269
	.quad	1
	.quad	0
	.quad	.LC152
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	script_85_poll
	.quad	0
	.quad	1
	.zero	24
	.long	0
	.zero	68
	.text
	.type	set_event_handling_mode_conn, @function
set_event_handling_mode_conn:
.LFB758:
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
	movl	$1, 32(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_value_uint@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	set_event_handling_mode_conn, .-set_event_handling_mode_conn
	.type	reenable_test_event_handling, @function
reenable_test_event_handling:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	reenable_test_event_handling, .-reenable_test_event_handling
	.section	.rodata
.LC283:
	.string	"ssl"
	.text
	.type	set_event_handling_mode_stream, @function
set_event_handling_mode_stream:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC145(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	helper_local_get_c_stream
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC283(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$5685, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1167
	movl	$0, %eax
	jmp	.L1168
.L1167:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$6, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_set_value_uint@PLT
.L1168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	set_event_handling_mode_stream, .-set_event_handling_mode_stream
	.section	.rodata
.LC284:
	.string	"appleorange"
	.section	.data.rel.ro.local
	.align 32
	.type	script_86, @object
	.size	script_86, 1800
script_86:
	.long	53
	.zero	4
	.quad	0
	.quad	23
	.quad	0
	.quad	0
	.zero	32
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	19
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	set_event_handling_mode_conn
	.quad	0
	.quad	2
	.zero	24
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	set_event_handling_mode_conn
	.quad	0
	.quad	1
	.zero	24
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	set_event_handling_mode_stream
	.quad	0
	.quad	2
	.zero	24
	.long	4
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	32
	.zero	4
	.quad	0
	.quad	20
	.zero	48
	.long	41
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	.LC145
	.zero	32
	.long	40
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	10
	.zero	24
	.long	33
	.zero	68
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	reenable_test_event_handling
	.quad	0
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC284
	.quad	11
	.quad	0
	.quad	.LC145
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	set_event_handling_mode_conn
	.quad	0
	.quad	2
	.zero	24
	.long	5
	.zero	4
	.quad	.LC59
	.quad	2
	.quad	0
	.quad	.LC145
	.zero	32
	.long	28
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	reenable_test_event_handling
	.quad	0
	.quad	0
	.zero	24
	.long	6
	.zero	4
	.quad	.LC59
	.quad	2
	.quad	0
	.quad	.LC145
	.zero	32
	.long	0
	.zero	68
	.align 32
	.type	script_87, @object
	.size	script_87, 1080
script_87:
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	4
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	10
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	24
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	0
	.zero	24
	.long	7
	.zero	4
	.quad	.LC114
	.quad	5
	.quad	0
	.quad	.LC145
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	5
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	6
	.zero	4
	.quad	.LC146
	.quad	6
	.quad	0
	.quad	.LC145
	.zero	32
	.long	11
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	8
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.zero	32
	.long	40
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	1000
	.zero	24
	.long	54
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC145
	.quad	42
	.zero	24
	.long	0
	.zero	68
	.align 32
	.type	scripts, @object
	.size	scripts, 696
scripts:
	.quad	script_1
	.quad	script_2
	.quad	script_3
	.quad	script_4
	.quad	script_5
	.quad	script_6
	.quad	script_7
	.quad	script_8
	.quad	script_9
	.quad	script_10
	.quad	script_11
	.quad	script_12
	.quad	script_13
	.quad	script_14
	.quad	script_15
	.quad	script_16
	.quad	script_17
	.quad	script_18
	.quad	script_19
	.quad	script_20
	.quad	script_21
	.quad	script_22
	.quad	script_23
	.quad	script_24
	.quad	script_25
	.quad	script_26
	.quad	script_27
	.quad	script_28
	.quad	script_29
	.quad	script_30
	.quad	script_31
	.quad	script_32
	.quad	script_33
	.quad	script_34
	.quad	script_35
	.quad	script_36
	.quad	script_37
	.quad	script_38
	.quad	script_39
	.quad	script_40
	.quad	script_41
	.quad	script_42
	.quad	script_43
	.quad	script_44
	.quad	script_45
	.quad	script_46
	.quad	script_47
	.quad	script_48
	.quad	script_49
	.quad	script_50
	.quad	script_51
	.quad	script_52
	.quad	script_53
	.quad	script_54
	.quad	script_55
	.quad	script_56
	.quad	script_57
	.quad	script_58
	.quad	script_59
	.quad	script_60
	.quad	script_61
	.quad	script_62
	.quad	script_63
	.quad	script_64
	.quad	script_65
	.quad	script_66
	.quad	script_67
	.quad	script_68
	.quad	script_69
	.quad	script_70
	.quad	script_71
	.quad	script_72
	.quad	script_73
	.quad	script_74
	.quad	script_75
	.quad	script_76
	.quad	script_77
	.quad	script_78
	.quad	script_79
	.quad	script_80
	.quad	script_81
	.quad	script_82
	.quad	script_83
	.quad	script_84
	.quad	script_85
	.quad	script_86
	.quad	script_87
	.section	.rodata
.LC285:
	.string	"script %d"
	.align 8
.LC286:
	.string	"Running script %d (order=%d, blocking=%d)"
	.text
	.type	test_script, @function
test_script:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	movl	-84(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L1170
	cmpl	$0, -4(%rbp)
	je	.L1170
	movl	$1, %eax
	jmp	.L1172
.L1170:
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	leaq	.LC285(%rip), %rdx
	leaq	-80(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	-12(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %edi
	movl	-4(%rbp), %esi
	leaq	.LC286(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$5888, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	scripts(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %edx
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	call	run_script
.L1172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	test_script, .-test_script
	.section	.data.rel.local,"aw"
	.align 32
	.type	dyn_frame_types_script, @object
	.size	dyn_frame_types_script, 432
dyn_frame_types_script:
	.long	42
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	script_21_inject_plain
	.zero	16
	.long	43
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.long	2
	.zero	4
	.quad	.LC144
	.quad	0
	.quad	0
	.quad	0
	.zero	32
	.long	3
	.zero	4
	.quad	0
	.quad	1
	.quad	0
	.quad	0
	.zero	32
	.long	22
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	7
	.zero	24
	.long	0
	.zero	68
	.section	.rodata
	.align 32
	.type	forbidden_frame_types, @object
	.size	forbidden_frame_types, 960
forbidden_frame_types:
	.quad	1
	.quad	4611686018427387903
	.quad	7
	.quad	3
	.quad	4611686018427387903
	.quad	7
	.quad	5
	.quad	4611686018427387903
	.quad	7
	.quad	1
	.quad	8
	.quad	10
	.quad	1
	.quad	4
	.quad	10
	.quad	1
	.quad	5
	.quad	10
	.quad	1
	.quad	7
	.quad	10
	.quad	1
	.quad	16
	.quad	10
	.quad	1
	.quad	17
	.quad	10
	.quad	1
	.quad	18
	.quad	10
	.quad	1
	.quad	19
	.quad	10
	.quad	1
	.quad	20
	.quad	10
	.quad	1
	.quad	21
	.quad	10
	.quad	1
	.quad	22
	.quad	10
	.quad	1
	.quad	23
	.quad	10
	.quad	1
	.quad	24
	.quad	10
	.quad	1
	.quad	25
	.quad	10
	.quad	1
	.quad	26
	.quad	10
	.quad	1
	.quad	27
	.quad	10
	.quad	1
	.quad	29
	.quad	10
	.quad	1
	.quad	30
	.quad	10
	.quad	3
	.quad	8
	.quad	10
	.quad	3
	.quad	4
	.quad	10
	.quad	3
	.quad	5
	.quad	10
	.quad	3
	.quad	7
	.quad	10
	.quad	3
	.quad	16
	.quad	10
	.quad	3
	.quad	17
	.quad	10
	.quad	3
	.quad	18
	.quad	10
	.quad	3
	.quad	19
	.quad	10
	.quad	3
	.quad	20
	.quad	10
	.quad	3
	.quad	21
	.quad	10
	.quad	3
	.quad	22
	.quad	10
	.quad	3
	.quad	23
	.quad	10
	.quad	3
	.quad	24
	.quad	10
	.quad	3
	.quad	25
	.quad	10
	.quad	3
	.quad	26
	.quad	10
	.quad	3
	.quad	27
	.quad	10
	.quad	3
	.quad	29
	.quad	10
	.quad	3
	.quad	30
	.quad	10
	.quad	5
	.quad	25
	.quad	10
.LC287:
	.string	"dyn script %d"
	.text
	.type	test_dyn_frame_types, @function
test_dyn_frame_types:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -84(%rbp)
	leaq	dyn_frame_types_script(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L1174
.L1177:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$43, %eax
	jne	.L1175
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	forbidden_frame_types(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+forbidden_frame_types(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, 40(%rcx)
	jmp	.L1176
.L1175:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$22, %eax
	jne	.L1176
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+forbidden_frame_types(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, 40(%rcx)
.L1176:
	addq	$1, -8(%rbp)
.L1174:
	cmpq	$5, -8(%rbp)
	jbe	.L1177
	movl	-84(%rbp), %edx
	leaq	.LC287(%rip), %rsi
	leaq	-80(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$64, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-80(%rbp), %rax
	leaq	dyn_frame_types_script(%rip), %rdi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	run_script
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	test_dyn_frame_types, .-test_dyn_frame_types
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB763:
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
.LFE763:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC288:
	.string	"Error parsing test options\n"
	.align 8
.LC289:
	.string	"certfile = test_get_argument(0)"
	.align 8
.LC290:
	.string	"keyfile = test_get_argument(1)"
.LC291:
	.string	"test_dyn_frame_types"
.LC292:
	.string	"test_script"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L1182
	leaq	.LC288(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5986, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L1183
.L1182:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, certfile(%rip)
	movq	certfile(%rip), %rax
	leaq	.LC289(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$5990, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L1184
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, keyfile(%rip)
	movq	keyfile(%rip), %rax
	leaq	.LC290(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$5991, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L1185
.L1184:
	movl	$0, %eax
	jmp	.L1183
.L1185:
	leaq	test_dyn_frame_types(%rip), %rsi
	leaq	.LC291(%rip), %rax
	movl	$1, %ecx
	movl	$40, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_script(%rip), %rsi
	leaq	.LC292(%rip), %rax
	movl	$1, %ecx
	movl	$348, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L1183:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	nz_timeout.2, @object
	.size	nz_timeout.2, 16
nz_timeout.2:
	.quad	0
	.quad	1
	.align 16
	.type	timeout.1, @object
	.size	timeout.1, 16
timeout.1:
	.zero	16
	.align 8
.LC293:
	.string	"Usage: %s [options] certfile privkeyfile\n"
.LC294:
	.string	"Valid options are:\n"
.LC295:
	.string	"help"
.LC296:
	.string	"Display this summary"
.LC297:
	.string	"list"
	.align 8
.LC298:
	.string	"Display the list of tests available"
.LC299:
	.string	"test"
	.align 8
.LC300:
	.string	"Run a single test by id or name"
.LC301:
	.string	"iter"
	.align 8
.LC302:
	.string	"Run a single iteration of a test"
.LC303:
	.string	"indent"
	.align 8
.LC304:
	.string	"Number of tabs added to output"
.LC305:
	.string	"seed"
	.align 8
.LC306:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC293
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC294
	.quad	.LC295
	.long	500
	.long	45
	.quad	.LC296
	.quad	.LC297
	.long	501
	.long	45
	.quad	.LC298
	.quad	.LC299
	.long	502
	.long	115
	.quad	.LC300
	.quad	.LC301
	.long	503
	.long	110
	.quad	.LC302
	.quad	.LC303
	.long	504
	.long	112
	.quad	.LC304
	.quad	.LC305
	.long	505
	.long	110
	.quad	.LC306
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
