	.file	"pktsplitbio.c"
	.text
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB514:
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
.LFE514:
	.size	PACKET_remaining, .-PACKET_remaining
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
.LFE517:
	.size	PACKET_buf_init, .-PACKET_buf_init
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
	.type	pkt_split_dgram_ctrl, @function
pkt_split_dgram_ctrl:
.LFB643:
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
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	cmpl	$12, -28(%rbp)
	jne	.L13
	movq	$0, -8(%rbp)
	jmp	.L14
.L13:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	nop
.L14:
	movq	-8(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	pkt_split_dgram_ctrl, .-pkt_split_dgram_ctrl
	.type	pkt_split_dgram_sendmmsg, @function
pkt_split_dgram_sendmmsg:
.LFB644:
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
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	pkt_split_dgram_sendmmsg, .-pkt_split_dgram_sendmmsg
	.section	.rodata
.LC0:
	.string	"next"
.LC1:
	.string	"../test/helpers/pktsplitbio.c"
.LC2:
	.string	"data_len"
.LC3:
	.string	"msg[i].data_len"
	.text
	.type	pkt_split_dgram_recvmmsg, @function
pkt_split_dgram_recvmmsg:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movq	%r9, -224(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$57, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	$0, -8(%rbp)
	jmp	.L21
.L24:
	cmpq	$0, -8(%rbp)
	jne	.L22
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L23
.L22:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$70, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L20
.L23:
	addq	$1, -8(%rbp)
.L21:
	movq	-8(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jb	.L24
	movq	-224(%rbp), %r8
	movq	-216(%rbp), %rdi
	movq	-208(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BIO_recvmmsg@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L20
.L25:
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-208(%rbp), %rax
	jne	.L26
	movl	$1, %eax
	jmp	.L20
.L26:
	movq	$0, -8(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L27
.L35:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L20
.L28:
	leaq	-176(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_pkt_hdr@PLT
	cmpl	$1, %eax
	je	.L30
	movl	$0, %eax
	jmp	.L20
.L30:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L31
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L32
.L34:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	movq	-192(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bio_msg_copy@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L20
.L33:
	subq	$1, -16(%rbp)
.L32:
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L34
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-192(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	addq	$1, -32(%rbp)
.L31:
	addq	$1, -8(%rbp)
	addq	$40, -40(%rbp)
.L27:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L35
	movq	-224(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	pkt_split_dgram_recvmmsg, .-pkt_split_dgram_recvmmsg
	.local	method_pkt_split_dgram
	.comm	method_pkt_split_dgram,8,8
	.section	.rodata
	.align 8
.LC4:
	.string	"Packet splitting datagram filter"
	.text
	.globl	bio_f_pkt_split_dgram_filter
	.type	bio_f_pkt_split_dgram_filter, @function
bio_f_pkt_split_dgram_filter:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	method_pkt_split_dgram(%rip), %rax
	testq	%rax, %rax
	jne	.L37
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$641, %edi
	call	BIO_meth_new@PLT
	movq	%rax, method_pkt_split_dgram(%rip)
	movq	method_pkt_split_dgram(%rip), %rax
	testq	%rax, %rax
	je	.L38
	movq	method_pkt_split_dgram(%rip), %rax
	leaq	pkt_split_dgram_ctrl(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_ctrl@PLT
	testl	%eax, %eax
	je	.L38
	movq	method_pkt_split_dgram(%rip), %rax
	leaq	pkt_split_dgram_sendmmsg(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_sendmmsg@PLT
	testl	%eax, %eax
	je	.L38
	movq	method_pkt_split_dgram(%rip), %rax
	leaq	pkt_split_dgram_recvmmsg(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_recvmmsg@PLT
	testl	%eax, %eax
	jne	.L37
.L38:
	movl	$0, %eax
	jmp	.L39
.L37:
	movq	method_pkt_split_dgram(%rip), %rax
.L39:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	bio_f_pkt_split_dgram_filter, .-bio_f_pkt_split_dgram_filter
	.globl	bio_f_pkt_split_dgram_filter_free
	.type	bio_f_pkt_split_dgram_filter_free, @function
bio_f_pkt_split_dgram_filter_free:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	method_pkt_split_dgram(%rip), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	bio_f_pkt_split_dgram_filter_free, .-bio_f_pkt_split_dgram_filter_free
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
