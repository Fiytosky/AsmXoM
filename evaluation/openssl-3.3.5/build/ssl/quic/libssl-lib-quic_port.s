	.file	"quic_port.c"
	.text
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB494:
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
.LFE494:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB497:
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
.LFE497:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_min, @function
ossl_time_min:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L6
	movq	-8(%rbp), %rax
	jmp	.L8
.L6:
	movq	-16(%rbp), %rax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	ossl_time_min, .-ossl_time_min
	.type	ossl_quic_tick_result_merge_into, @function
ossl_quic_tick_result_merge_into:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L11
.L10:
	movl	$1, %eax
	jmp	.L12
.L11:
	movl	$0, %eax
.L12:
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %eax
	testb	%al, %al
	jne	.L13
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	testb	%al, %al
	je	.L14
.L13:
	movl	$1, %eax
	jmp	.L15
.L14:
	movl	$0, %eax
.L15:
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, 1(%rax)
	movq	-16(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_min
	movq	%rax, 8(%rbx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	ossl_quic_tick_result_merge_into, .-ossl_quic_tick_result_merge_into
	.type	ossl_quic_urxe_data, @function
ossl_quic_urxe_data:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$296, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	ossl_quic_urxe_data, .-ossl_quic_urxe_data
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
	jns	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB628:
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
.LFE628:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB629:
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
.LFE629:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB690:
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
.LFE690:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB691:
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
.LFE691:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB706:
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
.LFE706:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB707:
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
.LFE707:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	ossl_list_ch_head, @function
ossl_list_ch_head:
.LFB733:
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
.LFE733:
	.size	ossl_list_ch_head, .-ossl_list_ch_head
	.type	ossl_list_ch_next, @function
ossl_list_ch_next:
.LFB735:
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
.LFE735:
	.size	ossl_list_ch_next, .-ossl_list_ch_next
	.type	ossl_list_port_remove, @function
ossl_list_port_remove:
.LFB750:
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
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L38
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L38:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L39
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L39:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L40:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 16(%rax)
.L41:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	ossl_list_port_remove, .-ossl_list_port_remove
	.type	ossl_list_port_insert_tail, @function
ossl_list_port_insert_tail:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L43:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L44:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	ossl_list_port_insert_tail, .-ossl_list_port_insert_tail
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_port.c"
	.text
	.globl	ossl_quic_port_new
	.type	ossl_quic_port_new, @function
ossl_quic_port_new:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$39, %edx
	movq	%rax, %rsi
	movl	$120, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	114(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 114(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	port_init
	testl	%eax, %eax
	jne	.L48
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L47
.L48:
	movq	-8(%rbp), %rax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	ossl_quic_port_new, .-ossl_quic_port_new
	.globl	ossl_quic_port_free
	.type	ossl_quic_port_free, @function
ossl_quic_port_free:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	port_cleanup
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L49
.L52:
	nop
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	ossl_quic_port_free, .-ossl_quic_port_free
	.type	port_init, @function
port_init:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	114(%rax), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	cltq
	andl	$8, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L62
	call	OSSL_ERR_STATE_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-24(%rbp), %rdx
	leaq	get_time(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_quic_demux_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	port_default_packet_handler(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_demux_set_default_handler@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_srtm_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_lcidm_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, 112(%rax)
	movq	-24(%rbp), %rax
	movb	$8, 113(%rax)
	movq	-24(%rbp), %rax
	movzbl	114(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 114(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_port_insert_tail
	movq	-24(%rbp), %rax
	movzbl	114(%rax), %edx
	orl	$16, %edx
	movb	%dl, 114(%rax)
	movl	$1, %eax
	jmp	.L61
.L62:
	nop
	jmp	.L56
.L63:
	nop
	jmp	.L56
.L64:
	nop
	jmp	.L56
.L65:
	nop
	jmp	.L56
.L66:
	nop
.L56:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	port_cleanup
	movl	$0, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	port_init, .-port_init
	.type	port_cleanup, @function
port_cleanup:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_demux_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_srtm_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_lcidm_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movzbl	114(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L69
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	104(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_port_remove
	movq	-8(%rbp), %rax
	movzbl	114(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 114(%rax)
.L69:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	port_cleanup, .-port_cleanup
	.type	port_transition_failed, @function
port_transition_failed:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	114(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L73
	movq	-8(%rbp), %rax
	movzbl	114(%rax), %edx
	orl	$1, %edx
	movb	%dl, 114(%rax)
	jmp	.L70
.L73:
	nop
.L70:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	port_transition_failed, .-port_transition_failed
	.globl	ossl_quic_port_is_running
	.type	ossl_quic_port_is_running, @function
ossl_quic_port_is_running:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	114(%rax), %eax
	andl	$1, %eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	ossl_quic_port_is_running, .-ossl_quic_port_is_running
	.globl	ossl_quic_port_get0_engine
	.type	ossl_quic_port_get0_engine, @function
ossl_quic_port_get0_engine:
.LFB761:
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
.LFE761:
	.size	ossl_quic_port_get0_engine, .-ossl_quic_port_get0_engine
	.globl	ossl_quic_port_get0_reactor
	.type	ossl_quic_port_get0_reactor, @function
ossl_quic_port_get0_reactor:
.LFB762:
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
	call	ossl_quic_engine_get0_reactor@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	ossl_quic_port_get0_reactor, .-ossl_quic_port_get0_reactor
	.globl	ossl_quic_port_get0_demux
	.type	ossl_quic_port_get0_demux, @function
ossl_quic_port_get0_demux:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	ossl_quic_port_get0_demux, .-ossl_quic_port_get0_demux
	.globl	ossl_quic_port_get0_mutex
	.type	ossl_quic_port_get0_mutex, @function
ossl_quic_port_get0_mutex:
.LFB764:
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
	call	ossl_quic_engine_get0_mutex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	ossl_quic_port_get0_mutex, .-ossl_quic_port_get0_mutex
	.globl	ossl_quic_port_get_time
	.type	ossl_quic_port_get_time, @function
ossl_quic_port_get_time:
.LFB765:
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
	call	ossl_quic_engine_get_time@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	ossl_quic_port_get_time, .-ossl_quic_port_get_time
	.type	get_time, @function
get_time:
.LFB766:
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
	call	ossl_quic_port_get_time@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	get_time, .-get_time
	.globl	ossl_quic_port_get_rx_short_dcid_len
	.type	ossl_quic_port_get_rx_short_dcid_len, @function
ossl_quic_port_get_rx_short_dcid_len:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	112(%rax), %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	ossl_quic_port_get_rx_short_dcid_len, .-ossl_quic_port_get_rx_short_dcid_len
	.globl	ossl_quic_port_get_tx_init_dcid_len
	.type	ossl_quic_port_get_tx_init_dcid_len, @function
ossl_quic_port_get_tx_init_dcid_len:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	113(%rax), %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	ossl_quic_port_get_tx_init_dcid_len, .-ossl_quic_port_get_tx_init_dcid_len
	.type	validate_poll_descriptor, @function
validate_poll_descriptor:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L93
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jns	.L93
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L93:
	movl	$1, %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	validate_poll_descriptor, .-validate_poll_descriptor
	.globl	ossl_quic_port_get_net_rbio
	.type	ossl_quic_port_get_net_rbio, @function
ossl_quic_port_get_net_rbio:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	ossl_quic_port_get_net_rbio, .-ossl_quic_port_get_net_rbio
	.globl	ossl_quic_port_get_net_wbio
	.type	ossl_quic_port_get_net_wbio, @function
ossl_quic_port_get_net_wbio:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	ossl_quic_port_get_net_wbio, .-ossl_quic_port_get_net_wbio
	.type	port_update_poll_desc, @function
port_update_poll_desc:
.LFB772:
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
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L100
	cmpl	$0, -36(%rbp)
	jne	.L101
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_get_rpoll_descriptor@PLT
	testl	%eax, %eax
	je	.L100
.L101:
	cmpl	$0, -36(%rbp)
	je	.L102
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_get_wpoll_descriptor@PLT
	testl	%eax, %eax
	jne	.L102
.L100:
	movl	$0, -16(%rbp)
.L102:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	validate_poll_descriptor
	testl	%eax, %eax
	jne	.L103
	movl	$0, %eax
	jmp	.L107
.L103:
	cmpl	$0, -36(%rbp)
	je	.L105
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	40(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_reactor_set_poll_w@PLT
	jmp	.L106
.L105:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	40(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_reactor_set_poll_r@PLT
.L106:
	movl	$1, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	port_update_poll_desc, .-port_update_poll_desc
	.globl	ossl_quic_port_update_poll_descriptors
	.type	ossl_quic_port_update_poll_descriptors, @function
ossl_quic_port_update_poll_descriptors:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	port_update_poll_desc
	testl	%eax, %eax
	jne	.L109
	movl	$0, -4(%rbp)
.L109:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	port_update_poll_desc
	testl	%eax, %eax
	jne	.L110
	movl	$0, -4(%rbp)
.L110:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	ossl_quic_port_update_poll_descriptors, .-ossl_quic_port_update_poll_descriptors
	.globl	ossl_quic_port_set_net_rbio
	.type	ossl_quic_port_set_net_rbio, @function
ossl_quic_port_set_net_rbio:
.LFB774:
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
	movq	32(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L113
	movl	$1, %eax
	jmp	.L114
.L113:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	port_update_poll_desc
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L114
.L115:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_demux_set_bio@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	ossl_quic_port_set_net_rbio, .-ossl_quic_port_set_net_rbio
	.globl	ossl_quic_port_set_net_wbio
	.type	ossl_quic_port_set_net_wbio, @function
ossl_quic_port_set_net_wbio:
.LFB775:
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
	movq	40(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L117
	movl	$1, %eax
	jmp	.L118
.L117:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	port_update_poll_desc
	testl	%eax, %eax
	jne	.L119
	movl	$0, %eax
	jmp	.L118
.L119:
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_list_ch_head
	movq	%rax, -8(%rbp)
	jmp	.L120
.L121:
	movq	-8(%rbp), %rax
	movq	1024(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qtx_set_bio@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_ch_next
	movq	%rax, -8(%rbp)
.L120:
	cmpq	$0, -8(%rbp)
	jne	.L121
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	ossl_quic_port_set_net_wbio, .-ossl_quic_port_set_net_wbio
	.type	port_new_handshake_layer, @function
port_new_handshake_layer:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	call	TLS_method@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_ssl_connection_new_int@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L123
	cmpq	$0, -16(%rbp)
	je	.L124
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L125
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L126
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L127
.L126:
	movq	$0, -8(%rbp)
	jmp	.L127
.L125:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L127
.L124:
	movq	$0, -8(%rbp)
.L127:
	cmpq	$0, -8(%rbp)
	jne	.L128
.L123:
	movl	$0, %eax
	jmp	.L129
.L128:
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	orb	$32, %ah
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 288(%rax)
	movq	-8(%rbp), %rax
	movq	2360(%rax), %rax
	movabsq	$16633559941, %rdx
	andq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 2360(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 2836(%rax)
	movq	-16(%rbp), %rax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	port_new_handshake_layer, .-port_new_handshake_layer
	.type	port_make_channel, @function
port_make_channel:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L131
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	port_new_handshake_layer
	jmp	.L132
.L131:
	movq	-80(%rbp), %rax
.L132:
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L133
	movl	$0, %eax
	jmp	.L137
.L133:
	movl	$1, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	1696(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L135
	cmpq	$0, -80(%rbp)
	jne	.L136
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
.L136:
	movl	$0, %eax
	jmp	.L137
.L135:
	movq	-8(%rbp), %rax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	port_make_channel, .-port_make_channel
	.globl	ossl_quic_port_create_outgoing
	.type	ossl_quic_port_create_outgoing, @function
ossl_quic_port_create_outgoing:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	port_make_channel
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	ossl_quic_port_create_outgoing, .-ossl_quic_port_create_outgoing
	.globl	ossl_quic_port_create_incoming
	.type	ossl_quic_port_create_incoming, @function
ossl_quic_port_create_incoming:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	port_make_channel
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-24(%rbp), %rax
	movzbl	114(%rax), %edx
	orl	$8, %edx
	movb	%dl, 114(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	ossl_quic_port_create_incoming, .-ossl_quic_port_create_incoming
	.globl	ossl_quic_port_subtick
	.type	ossl_quic_port_subtick, @function
ossl_quic_port_subtick:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	movb	$0, 1(%rax)
	movq	-64(%rbp), %rbx
	call	ossl_time_infinite
	movq	%rax, 8(%rbx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movzbl	128(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L147
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_is_running@PLT
	testl	%eax, %eax
	je	.L144
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	port_rx_pre
.L144:
	movq	-56(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_list_ch_head
	movq	%rax, -24(%rbp)
	jmp	.L145
.L146:
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	-68(%rbp), %edx
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_subtick@PLT
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tick_result_merge_into
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_ch_next
	movq	%rax, -24(%rbp)
.L145:
	cmpq	$0, -24(%rbp)
	jne	.L146
.L147:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	ossl_quic_port_subtick, .-ossl_quic_port_subtick
	.type	port_rx_pre, @function
port_rx_pre:
.LFB781:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	114(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	jne	.L149
	movq	-24(%rbp), %rax
	movzbl	114(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L151
.L149:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_demux_pump@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-2, -4(%rbp)
	jne	.L148
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_port_raise_net_error@PLT
	jmp	.L148
.L151:
	nop
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	port_rx_pre, .-port_rx_pre
	.type	port_on_new_conn, @function
port_on_new_conn:
.LFB782:
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
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L152
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_on_new_conn@PLT
	testl	%eax, %eax
	je	.L155
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	jmp	.L152
.L155:
	nop
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	port_on_new_conn, .-port_on_new_conn
	.type	port_try_handle_stateless_reset, @function
port_try_handle_stateless_reset:
.LFB783:
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
	movq	%rax, %rdi
	call	ossl_quic_urxe_data
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$20, %rax
	jbe	.L157
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	jne	.L158
.L157:
	movl	$0, %eax
	jmp	.L163
.L158:
	movq	$0, -8(%rbp)
.L162:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-16(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_quic_srtm_lookup@PLT
	testl	%eax, %eax
	je	.L165
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_on_stateless_reset@PLT
	addq	$1, -8(%rbp)
	jmp	.L162
.L165:
	nop
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	port_try_handle_stateless_reset, .-port_try_handle_stateless_reset
	.type	port_default_packet_handler, @function
port_default_packet_handler:
.LFB784:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_port_is_running@PLT
	testl	%eax, %eax
	je	.L181
	movq	-168(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	port_try_handle_stateless_reset
	testl	%eax, %eax
	jne	.L182
	cmpq	$0, -184(%rbp)
	je	.L170
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	leaq	-152(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_lcidm_lookup@PLT
	testl	%eax, %eax
	je	.L170
	movq	-152(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_channel_inject@PLT
	jmp	.L166
.L170:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L183
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$1199, %rax
	jbe	.L184
	movq	-168(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_urxe_data
	movq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	je	.L185
	leaq	-144(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_pkt_hdr@PLT
	testl	%eax, %eax
	je	.L186
	movl	-140(%rbp), %eax
	cmpl	$1, %eax
	jne	.L187
	nop
	movzbl	-144(%rbp), %eax
	cmpb	$1, %al
	jne	.L188
	movq	-168(%rbp), %rax
	leaq	56(%rax), %rsi
	leaq	-160(%rbp), %rdi
	leaq	-144(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-144(%rbp), %rax
	leaq	29(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	port_on_new_conn
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	je	.L189
	movq	-160(%rbp), %rax
	movq	1032(%rax), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_inject_urxe@PLT
	jmp	.L189
.L181:
	nop
	jmp	.L168
.L182:
	nop
	jmp	.L168
.L183:
	nop
	jmp	.L168
.L184:
	nop
	jmp	.L168
.L185:
	nop
	jmp	.L168
.L186:
	nop
	jmp	.L168
.L187:
	nop
	jmp	.L168
.L188:
	nop
.L168:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_demux_release_urxe@PLT
	jmp	.L166
.L189:
	nop
.L166:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	port_default_packet_handler, .-port_default_packet_handler
	.section	.rodata
	.align 8
.LC1:
	.string	"port failed due to network BIO I/O error"
	.text
	.globl	ossl_quic_port_raise_net_error
	.type	ossl_quic_port_raise_net_error, @function
ossl_quic_port_raise_net_error:
.LFB785:
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
	call	ossl_quic_port_is_running@PLT
	testl	%eax, %eax
	je	.L197
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$596, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movl	$387, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_save@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	port_transition_failed
	cmpq	$0, -32(%rbp)
	je	.L193
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_net_error@PLT
.L193:
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_list_ch_head
	movq	%rax, -8(%rbp)
	jmp	.L194
.L196:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L195
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_channel_raise_net_error@PLT
.L195:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_ch_next
	movq	%rax, -8(%rbp)
.L194:
	cmpq	$0, -8(%rbp)
	jne	.L196
	jmp	.L190
.L197:
	nop
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	ossl_quic_port_raise_net_error, .-ossl_quic_port_raise_net_error
	.globl	ossl_quic_port_restore_err_state
	.type	ossl_quic_port_restore_err_state, @function
ossl_quic_port_restore_err_state:
.LFB786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ERR_clear_error@PLT
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_restore@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	ossl_quic_port_restore_err_state, .-ossl_quic_port_restore_err_state
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"validate_poll_descriptor"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 31
__func__.0:
	.string	"ossl_quic_port_raise_net_error"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
