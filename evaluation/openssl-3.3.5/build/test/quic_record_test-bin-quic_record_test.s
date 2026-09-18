	.file	"quic_record_test.c"
	.text
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB484:
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
	jns	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	ossl_quic_conn_id_eq, @function
ossl_quic_conn_id_eq:
.LFB530:
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
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L5
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jbe	.L6
.L5:
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	ossl_quic_conn_id_eq, .-ossl_quic_conn_id_eq
	.type	ossl_quic_pkt_type_to_enc_level, @function
ossl_quic_pkt_type_to_enc_level:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$5, -4(%rbp)
	je	.L9
	cmpl	$5, -4(%rbp)
	ja	.L10
	cmpl	$3, -4(%rbp)
	je	.L11
	cmpl	$3, -4(%rbp)
	ja	.L10
	cmpl	$1, -4(%rbp)
	je	.L12
	cmpl	$2, -4(%rbp)
	je	.L13
	jmp	.L10
.L12:
	movl	$0, %eax
	jmp	.L14
.L11:
	movl	$1, %eax
	jmp	.L14
.L13:
	movl	$2, %eax
	jmp	.L14
.L9:
	movl	$3, %eax
	jmp	.L14
.L10:
	movl	$4, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	ossl_quic_pkt_type_to_enc_level, .-ossl_quic_pkt_type_to_enc_level
	.type	safe_mul_time, @function
safe_mul_time:
.LFB541:
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
	mulq	-32(%rbp)
	jno	.L16
	movl	$1, %ecx
.L16:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L18
	movq	-8(%rbp), %rax
	jmp	.L20
.L18:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	safe_mul_time, .-safe_mul_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB548:
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
.LFE548:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB551:
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
.LFE551:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_multiply, @function
ossl_time_multiply:
.LFB562:
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
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mul_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L26
	call	ossl_time_infinite
	jmp	.L28
.L26:
	movq	-8(%rbp), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	ossl_time_multiply, .-ossl_time_multiply
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
	.section	.rodata
.LC0:
	.string	"b->type"
.LC1:
	.string	"a->type"
	.align 8
.LC2:
	.string	"../test/quic_record_test_util.h"
.LC3:
	.string	"b->spin_bit"
.LC4:
	.string	"a->spin_bit"
.LC5:
	.string	"b->key_phase"
.LC6:
	.string	"a->key_phase"
.LC7:
	.string	"b->pn_len"
.LC8:
	.string	"a->pn_len"
.LC9:
	.string	"b->partial"
.LC10:
	.string	"a->partial"
.LC11:
	.string	"b->fixed"
.LC12:
	.string	"a->fixed"
.LC13:
	.string	"b->unused"
.LC14:
	.string	"a->unused"
.LC15:
	.string	"b->reserved"
.LC16:
	.string	"a->reserved"
.LC17:
	.string	"b->version"
.LC18:
	.string	"a->version"
	.align 8
.LC19:
	.string	"ossl_quic_conn_id_eq(&a->dst_conn_id, &b->dst_conn_id)"
	.align 8
.LC20:
	.string	"ossl_quic_conn_id_eq(&a->src_conn_id, &b->src_conn_id)"
.LC21:
	.string	"b->pn"
.LC22:
	.string	"a->pn"
.LC23:
	.string	"b->token_len"
.LC24:
	.string	"a->token_len"
.LC25:
	.string	"b->len"
.LC26:
	.string	"a->len"
.LC27:
	.string	"b->token"
.LC28:
	.string	"a->token"
.LC29:
	.string	"b_data"
.LC30:
	.string	"a->data"
	.text
	.type	cmp_pkt_hdr, @function
cmp_pkt_hdr:
.LFB643:
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
	movl	%r8d, -52(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L34
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
.L34:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$24, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$25, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$26, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$27, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$6, %al
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$28, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$7, %al
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$7, %al
	movzbl	%al, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$29, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %eax
	andl	$15, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %eax
	andl	$15, %eax
	movzbl	%al, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$30, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %eax
	shrb	$4, %al
	andl	$3, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %eax
	shrb	$4, %al
	andl	$3, %eax
	movzbl	%al, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$31, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movl	4(%rax), %edi
	movq	-24(%rbp), %rax
	movl	4(%rax), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$33, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	leaq	29(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$29, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$34, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	leaq	50(%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	50(%rax), %rdi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$4
	pushq	%rsi
	movl	$4, %r9d
	movq	%rdi, %r8
	movl	$35, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$36, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	72(%rax), %rsi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$37, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L36
.L35:
	movl	$0, -4(%rbp)
.L36:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	64(%rax), %r9
	movq	-24(%rbp), %rax
	movq	56(%rax), %r8
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$41, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L37
	movl	$0, -4(%rbp)
.L37:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$44, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L39
.L38:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$45, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L40
.L39:
	movl	$0, -4(%rbp)
.L40:
	cmpl	$0, -52(%rbp)
	je	.L41
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	80(%rax), %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$48, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L41
	movl	$0, -4(%rbp)
.L41:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	cmp_pkt_hdr, .-cmp_pkt_hdr
	.section	.rodata
	.align 16
	.type	empty_conn_id, @object
	.size	empty_conn_id, 21
empty_conn_id:
	.zero	21
	.align 32
	.type	rx_script_1_in, @object
	.size	rx_script_1_in, 135
rx_script_1_in:
	.base64	"zwAAAAEACPBnpVAqQmK1AEB1wNlaSCzQmRzSWwqsQGpYFrY5QQDzehxpeXVUeAuzjMWpn17eTPc8PsJJOhg5s9vLo/bqRsW3aE3zVI593rnDv5xzzD873tdLViv7GfuEAi+O9M3ZN5XXfQbtu3qvL1iJGFCrvco9IDmMJ2RWy8QhWEB90HTu"
	.align 32
	.type	rx_script_1_body, @object
	.size	rx_script_1_body, 99
rx_script_1_body:
	.base64	"AgAAAAAGAEBaAgAAVgMD7vzn97N7odFjLpZneCXd9zmIz8eYJd9WbcVDC5oEWhIAEwEAAC4AMwAkAB0AIJ08lA2JaQuE0IpgmTwUTspoTRCBKHyDTVMRvPMrudoaACsAAgME"
	.align 16
	.type	rx_script_1_dcid, @object
	.size	rx_script_1_dcid, 21
rx_script_1_dcid:
	.byte	8
	.base64	"g5TI8D5RVwgA"
	.zero	11
	.align 32
	.type	rx_script_1_expect_hdr, @object
	.size	rx_script_1_expect_hdr, 88
rx_script_1_expect_hdr:
	.byte	1
	.byte	136
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.base64	"AAEAAA=="
	.zero	2
	.quad	0
	.quad	0
	.quad	99
	.quad	0
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	rx_script_1, @object
	.size	rx_script_1, 512
rx_script_1:
	.byte	1
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	2
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	6
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	rx_script_1_dcid
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_1_in
	.quad	135
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_1_body
	.quad	99
	.quad	rx_script_1_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.zero	63
	.section	.rodata
	.align 16
	.type	rx_script_2_in, @object
	.size	rx_script_2_in, 21
rx_script_2_in:
	.base64	"TP5BiWVeXNVcQfaQgFddeZnCWlv7"
	.align 32
	.type	rx_script_2_secret, @object
	.size	rx_script_2_secret, 32
rx_script_2_secret:
	.base64	"msMSp/h3Ro6+aUInSK0AoVRD8YIDoH1gYPaI8w8hYys="
	.type	rx_script_2_body, @object
	.size	rx_script_2_body, 1
rx_script_2_body:
	.ascii	"\001"
	.align 32
	.type	rx_script_2_expect_hdr, @object
	.size	rx_script_2_expect_hdr, 88
rx_script_2_expect_hdr:
	.byte	5
	.byte	140
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	0
	.zero	2
	.zero	18
	.base64	"AL/0AA=="
	.zero	2
	.quad	0
	.quad	0
	.quad	1
	.quad	0
	.section	.data.rel.ro.local
	.align 32
	.type	rx_script_2, @object
	.size	rx_script_2, 512
rx_script_2:
	.byte	14
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	2
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	654360560
	.quad	0
	.quad	0
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_2_secret
	.quad	32
	.quad	0
	.long	3
	.long	3
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_2_in
	.quad	21
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_2_body
	.quad	1
	.quad	rx_script_2_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.zero	63
	.section	.rodata
	.align 16
	.type	rx_script_3_in, @object
	.size	rx_script_3_in, 27
rx_script_3_in:
	.base64	"xwAAAAAADDU8G5fK+JkROa15HwAAAAGqmjqa"
	.align 32
	.type	rx_script_3_expect_hdr, @object
	.size	rx_script_3_expect_hdr, 88
rx_script_3_expect_hdr:
	.byte	6
	.byte	128
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	12
	.base64	"NTwbl8r4mRE5rXkfAA=="
	.zero	7
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	8
	.quad	0
	.align 8
	.type	rx_script_3_body, @object
	.size	rx_script_3_body, 8
rx_script_3_body:
	.base64	"AAAAAaqaOpo="
	.section	.data.rel.ro.local
	.align 32
	.type	rx_script_3, @object
	.size	rx_script_3, 320
rx_script_3:
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_3_in
	.quad	27
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_3_body
	.quad	8
	.quad	rx_script_3_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.zero	63
	.section	.rodata
	.align 32
	.type	rx_script_4_in, @object
	.size	rx_script_4_in, 125
rx_script_4_in:
	.base64	"8AAAAAEABK0VP672i26j3EA4xqWZHKl35h1PCTYSJgBWCyl9Xto5xmFXaRX/kzmV8Ffx5TYIrdJ1qWgp7aoDDl+svSYHlU5IYSbF4mxgv6hvUbsd95iVOyxQeczeJ4REm7JKlE1NPbwAnWmtRYkESMoE9jpiwTidgrNFYkw="
	.align 32
	.type	rx_script_4_expect_hdr, @object
	.size	rx_script_4_expect_hdr, 88
rx_script_4_expect_hdr:
	.byte	4
	.byte	128
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	4
	.base64	"rRU/rgA="
	.zero	15
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	114
	.quad	0
	.align 32
	.type	rx_script_4_body, @object
	.size	rx_script_4_body, 114
rx_script_4_body:
	.base64	"9otuo9xAOMalmRypd+YdTwk2EiYAVgspfV7aOcZhV2kV/5M5lfBX8eU2CK3SdaloKe2qAw5frL0mB5VOSGEmxeJsYL+ob1G7HfeYlTssUHnM3ieERJuySpRNTT28AJ1prUWJBEjKBPY6YsE4nYKzRWJM"
	.section	.data.rel.ro.local
	.align 32
	.type	rx_script_4, @object
	.size	rx_script_4, 320
rx_script_4:
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_4_in
	.quad	125
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_4_body
	.quad	114
	.quad	rx_script_4_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.zero	63
	.section	.rodata
	.align 16
	.type	rx_script_5_c2s_init_dcid, @object
	.size	rx_script_5_c2s_init_dcid, 21
rx_script_5_c2s_init_dcid:
	.byte	4
	.base64	"rRU/rgA="
	.zero	15
	.align 32
	.type	rx_script_5_handshake_secret, @object
	.size	rx_script_5_handshake_secret, 32
rx_script_5_handshake_secret:
	.base64	"XsZKTQ1AQzvVveAZcUdW81k6psk+3IEex3Kdg9iPiHc="
	.align 32
	.type	rx_script_5_1rtt_secret, @object
	.size	rx_script_5_1rtt_secret, 32
rx_script_5_1rtt_secret:
	.base64	"U/IblKdl93b7Bieq0j/gmrvPmW8TLGo3lfPaIcvLpSY="
	.align 32
	.type	rx_script_5_in, @object
	.size	rx_script_5_in, 1252
rx_script_5_in:
	.base64	"xAAAAAEABIPQCicAQdLjqyI1NBLPICsWrwjU4JSLHmLfMWHM+fpmTxhhB8sT0/m/4o4ljdHfWJwFIPnyASDpOcOAd+ykV89XjN1ogpH+caD6Vkzy5yvQwNqB4jm18A/ZB9VnCQLw/3SwoNk6frZXgkcYZu3iGE3CXJ8FCRgkDj89+RWLCP0l6cm3jBh78zdY8PCsM1U/ObxiA4rA1sxJR+uFtnLX+NwBMuwbTjhuLMWA8kNK9eWi+HanqFcyZ3Lrgqw+wBVnrDIZGArvIKHor6wzh0xVBZt48DrOAigGhGGXrIePJecbowIITC7vvU+C5zdsJ2+FtLx5OEWAitov"
	.base64	"ERGsnPOTwUkblBJ3B9y/wv2L9vFmHH8Hvx+uJ2xm6aNkepZ4Rf5LjG9/A0c81/djklhbY4MDBcNdNmJjXs/+Cin668ivzjEHaglBwC2YcAU7Qfx9YeBBfRNBUVK0eNVGUTvxzcwuSTCLKtLmabVrevS70fhK6FMQRoWNZo4r6F2rfv5aec/FDDCemAKzptX6JajIwdlRYFdd/nWXBdq7xmq+XKVlChIzHN/uCKkTEyjOYVnRTsd0/WTeCM7aP+ytyeH5H3T2hjdqoMgLG5SYhoE7/EdsyT48MMWesjJH9Qxv5gAAAAEABIPQCidCnJxVVdRQAhpXhCLNAeVCGx4G"
	.base64	"8YbikPicPaJ83ivJLs2oT1ogypa2EUvIcTK1xxppfx43SfsIzoNfAm2Kj+dd4TQxIlNTMssEIc68pRvdTdUc1l2IKVoZcWrC+re0fdFyk498tTYb6vPx127TkZZiTcbst7C3m5WLFI0aDbY+7P47UeoaBRQSkw5+5qLFIodl+F08VRjL6e8jQ/7oDbIPxfSz3gzqpEiOvx/HmVOMwT269I6OAlL2H88dqrPLCMLhcGh0eKkwZ7or6jVjR/8pcynG6AipHo8oQaQkVCZfQnexKz1lZ2CnIw2n9NbpTlhDnzyed2HlBE9zyRB50No7xhmTn0g7djihckl9hn/oG6lb"
	.base64	"wEegnD9lYHZZryAtQKaASVqPCfj2l8G94Z+bokx7iKy+SxEo12fmra/QrQEppErEuC5CeSSe1TSuRfELOEp2+1CimclbbcC3VdiNSd0buOwQV54ztBAWGaxpohkb0HdF60lcxXy+S0oiXD0ObuVLNgZjA5er7dzqZMJwtn41+xNmN6M/KBZs59TmyiYPGd0CrsHPGH1W5lLzN7WGnR1Vs5UZGaVElYHtAhjxhVd4KMSauuheIo3BeyqKyLndgrJ7nz31JypIU8egcA6dYarirSjytPxWa4nn+VHJ6dOKjH6G3bovOb8mYiPWmG0+ctcb4WKUNeIYGUa4LLWPj7Bb"
	.base64	"dnt+uMa36U6dMGgDHhlzxT4k4pVgGyeTfBfCxqO9vXDGYFnIXNeaxCmsD6oNqZKjldcPb3SZm8HTaG2sgi0yQZ4M9zFZTJMcO3Fpz8XKK9/nqv0dcQF+HHBiIGH4NcFx5wINiETZAMXMY+TwhqfQ/sy3HfwhYVQV6oFewDH6v325O6IeQnMFPNshWU9jX2hHozylJ175jezqbAkYQIDun29zXEnj7LdYBWaPo1I3oSIfxpLWWQSZy0TvZgUt0IUku+Oh0b73VK1l9NRZVIdOIk8GB6eKFInRP9Pkb3GPmtI7YQq6mjFWxw=="
	.align 32
	.type	rx_script_5a_expect_hdr, @object
	.size	rx_script_5a_expect_hdr, 88
rx_script_5a_expect_hdr:
	.byte	1
	.byte	136
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	4
	.base64	"g9AKJwA="
	.zero	15
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	448
	.quad	0
	.align 32
	.type	rx_script_5a_body, @object
	.size	rx_script_5a_body, 448
rx_script_5a_body:
	.string	"\002\003"
	.zero	351
	.base64	"BgBAWgIAAFYDA+LSCjuixNIpyOi6IzGILHHrukJflOkKkDUxHsrt+IqNABMBAAAuACsAAgMEADMAJAAdACCWC0swZjp1AUrcKnUfznownQDKILTga4EjGAsgH1SGHQ=="
	.align 32
	.type	rx_script_5b_expect_hdr, @object
	.size	rx_script_5b_expect_hdr, 88
rx_script_5b_expect_hdr:
	.byte	3
	.byte	136
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	4
	.base64	"g9AKJwA="
	.zero	15
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	650
	.quad	0
	.align 32
	.type	rx_script_5b_body, @object
	.size	rx_script_5b_body, 650
rx_script_5b_body:
	.base64	"BgBChggAAH0AewAQAAgABgVkdW1teQA5AGtLIAsb4R/QeMBpcpzi9wUEgAgAAAYEgAgAAAcEgAgAAAQEgAwAAAgCQGQJAkBkAQSAAHUwAwJFrAsBGgwAAhBBlEGNDftge9zMopw+pd+NAAgtcYo4393gAw4BBA8Eg9AKJxAErRU/riABAAsAAY8AAAGLAAGGMIIBgjCCASmgAwIBAgIUCnMPhhjywzAB0sDBYlIT8ZwTObUwCgYIKoZIzj0EAwIwFzEVMBMGA1UEAwwMbWFwYWt0LmxvY2FsMB4XDTIyMDgwMjEyMDAxOFoXDTIyMDkwMTEyMDAxOFowFzEVMBMG"
	.base64	"A1UEAwwMbWFwYWt0LmxvY2FsMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEZ/TTjxVt7oXMKnf8C4+fz6mVXVvNt4u6MQpzYsXQDgeQrjhDec5eM60xv58qVoOlJBarDPFkvuSTtYnWBeT3e6NTMFEwHQYDVR0OBBYEFAJkD1VpFJEZ7fka6R2lWtBIlp9gMB8GA1UdIwQYMBaAFAJkD1VpFJEZ7fka6R2lWtBIlp9gMA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwIDRwAwRAIgCoKSbtPGZtnTdf9xO2FGIQDmIV2chullQE/rcE8srQACIAjCB10W/FQ0"
	.base64	"K7QYZ0SByalnLs6hAp875WEWC1D2oVCUAAAPAABKBAMARjBEAiB9VxcURgmVcAlF6J5ch1XZCMZeR3Nescnvy+V/zLAovAIgXeQrg9l4dUXzIis462jlcV3Lw2izDn1eHcIbimKASD4UAAAgN81Vyj9L8JX45P5Zq7zBjww/QVn2ltt1rueGGpKnUwo="
	.align 32
	.type	rx_script_5c_expect_hdr, @object
	.size	rx_script_5c_expect_hdr, 88
rx_script_5c_expect_hdr:
	.byte	5
	.byte	136
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	0
	.zero	2
	.zero	18
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	72
	.quad	0
	.align 32
	.type	rx_script_5c_body, @object
	.size	rx_script_5c_body, 72
rx_script_5c_body:
	.base64	"GAMABJLsqtZH2ItWO19n5rm5ynLK8kl9GAIABKlum4QmQwDHVXFnLlLdR/0GUTMIGAEABDbVHwZOv7TJ75cemjyrHvy3kMMa"
	.section	.data.rel.ro.local
	.align 32
	.type	rx_script_5, @object
	.size	rx_script_5, 2944
rx_script_5:
	.byte	14
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	6
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	rx_script_5_c2s_init_dcid
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_5_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5a_body
	.quad	448
	.quad	rx_script_5a_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_5_handshake_secret
	.quad	32
	.quad	0
	.long	1
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5b_body
	.quad	650
	.quad	rx_script_5b_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_5_1rtt_secret
	.quad	32
	.quad	0
	.long	3
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5c_body
	.quad	72
	.quad	rx_script_5c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_5_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5b_body
	.quad	650
	.quad	rx_script_5b_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5c_body
	.quad	72
	.quad	rx_script_5c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_5_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5c_body
	.quad	72
	.quad	rx_script_5c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_5_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5c_body
	.quad	72
	.quad	rx_script_5c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_5_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	1
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_5_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	6
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	rx_script_5_c2s_init_dcid
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5a_body
	.quad	448
	.quad	rx_script_5a_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_5_handshake_secret
	.quad	32
	.quad	0
	.long	1
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5b_body
	.quad	650
	.quad	rx_script_5b_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_5_1rtt_secret
	.quad	32
	.quad	0
	.long	3
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5c_body
	.quad	72
	.quad	rx_script_5c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_5_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.zero	63
	.section	.rodata
	.align 16
	.type	rx_script_6_c2s_init_dcid, @object
	.size	rx_script_6_c2s_init_dcid, 21
rx_script_6_c2s_init_dcid:
	.byte	4
	.base64	"rIiVvQA="
	.zero	15
	.align 32
	.type	rx_script_6_handshake_secret, @object
	.size	rx_script_6_handshake_secret, 48
rx_script_6_handshake_secret:
	.base64	"0UGw9g2LvehbqP/XGJojexNcHpAdCJXMxY5zTgJvPLYmd41TxWKftfCI++UUcavm"
	.align 32
	.type	rx_script_6_1rtt_secret, @object
	.size	rx_script_6_1rtt_secret, 48
rx_script_6_1rtt_secret:
	.base64	"LWud1Dmg5/8X4stcDUr2P/T+/OUi+vVbwLIYu5JNNepnpufBkBDJFEb1lVeLkIhd"
	.align 32
	.type	rx_script_6_in, @object
	.size	rx_script_6_in, 1252
rx_script_6_in:
	.base64	"xQAAAAEABDb0dS0AQb6p4oM5lY+PjKmvECk9/FZKHEvJSLGvNtWslb/9LE1wLlt8Il9f7hCP+wtfnX5oL5QL2+3v+k7G1efv4Hg83OnY6FZx1+dsf12qelIdlXqAcDjAi6EvCRbS7KMjckU8vYzauzdajbIAfmcMoDLdgAdxsJUhvB69YwoQ50tuLoU6ZfcGbn6PZYyxk+kN6Ebnz6fSixUj7MPsRNpiFTU0L2J3yB+DIgDlwIm4l9I3AuqiNb8Z8Lodt6o2uxFgw0Uf5RjeTAEjLRd43UyKHhvU2lZDE6RP/dWSagVfFGOFffExuCcLprVQyosOoQ35xOpqbktt"
	.base64	"30noMvaFxCkmMvteqFVrZ+mqNTOQ2CpxC2pIxKOL4OcAPe4wcIS9ozyeo1xpq1V74uWGE8uTP8s+bcnCECsAmz8UTgQnwK4dSIk69KzgBQfJdG4hAekm/bSyKtpy2r9jnTevkAXWicemgU4qMOMFiJ/Quo3EIVJaeuGt04jCGK1MsWZzG/LRuUOqxGbNQvqA7KF8RQJTRdUH1HASGwgFbpkK01uZa2XEwAQbdfKGmQlKUHAAepOq5vQDKQakMG1SvWDRftYHwEEBEj4WlOoAAAABAAQ29HUtQrA6xTuOTAFya/q7rfmeIbHQAfHUZ40s7gRgSuLkxokBrjwf9+b3"
	.base64	"rCbPPG0d/RECUXO14bJEQjIP9T1VLR8CKVE128d6NEvsYEmikBHvWqkc99khaBwrxlfesQsx7e8Wugi54tnQ2B/EMuhFKobk069yTzABcRWbqVU19zl+alkYT+bftQ3C57KhpqOc8A1ZBUmV+sxy18CELsQc1KDjbFqMlE03Ghxok1/lmSfGBqofKRfFjD1TpwU6RFOG7VaZTOJ7Oh5dbax4HvpVWG5y7vkzZH+TPP4Yl2sCdJANuonAIgoKN0wodKc6RHRC//HSjQzB7ZiYjqhrlWqGC7SVWDQSsMD4LVtAUYAHkTF30wal5R/i+JLkIyvwTKmlbG+vr7+Xz0by"
	.base64	"jWEOc83F3tpQgmFtsaK+a5nNW5mPZqsReMzbZpjKGZL0Ba7m8+fwMCgxdP/iszpPeecqn+NBsojIj3dXQmXbB/ZfuDQX440iW4iUYJcyPYpRnbWs15mWI23Jq2FBj3Ib+ITZV4hoPXNfsRhcOjXSxbcpx5XdIcB4SfMk4ExcMgi3AENwWpUjkfW3YYVvs6RrBZ05o7EcYcWl55rpXarKEdhLpJwYTistdcESIORmpVlnS8xSLfqqpOn8edf/Az7supc3UsFXMY5XDFSSnCVc+p+lNhjQqvM7W1m9M159dHyv6VSAxLShJJ4jDb9OD6+lFss7+jOlaKZkSC9e+mRO"
	.base64	"4ydPE+Y39rljS9xJPF6eBuqso99sSfuhAU9vdB/TJqGSPuBz1jtnE1Muy7yD0G4oscvZZuAzWUXTE8JI1Z6IunV7sf5v7N7/FFl1vxp0R8XY6Bs8htcfmRHTKf1dIn4DeO1iDr5tdfSobschdsWgDKpYeH5u/B4qHN3leAi92+qPiqW/k/4PA6HIZJ9KSD4oudth+Is67yZp8lfGhCVrd76MQzLzmtGFFLyJO5zz/AChOsPEHt/QEXDZAnrU74ZnsR5d43+CFFKliomnmHUvigDzvUkmTQzHOOeRhckhahzEow7Y/rElGg=="
	.align 32
	.type	rx_script_6a_expect_hdr, @object
	.size	rx_script_6a_expect_hdr, 88
rx_script_6a_expect_hdr:
	.byte	1
	.byte	136
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	4
	.string	"6\364u-"
	.zero	15
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	428
	.quad	0
	.align 32
	.type	rx_script_6a_body, @object
	.size	rx_script_6a_body, 428
rx_script_6a_body:
	.string	"\002\003"
	.zero	331
	.base64	"BgBAWgIAAFYDA8NF6Lj5fJ9dz2Yl5JEOsFoUzq/qgxLeaNkx8iMROhXLABMCAAAuACsAAgMEADMAJAAdACCr08afNtNSk4fukgGi1ppeYUPMSsx6zYOy2a3RFNyEYQ=="
	.align 32
	.type	rx_script_6b_expect_hdr, @object
	.size	rx_script_6b_expect_hdr, 88
rx_script_6b_expect_hdr:
	.byte	3
	.byte	136
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	4
	.string	"6\364u-"
	.zero	15
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	670
	.quad	0
	.align 32
	.type	rx_script_6b_body, @object
	.size	rx_script_6b_body, 670
rx_script_6b_body:
	.base64	"BgBCmggAAIAAfgAQAAgABgVkdW1teQA5AG5H+gVa4OxK8wUEgAgAAAYEgAgAAAcEgAgAAAQEgAwAAAgCQGQJAkBkAQSAAHUwAwJFrAsBGgwAAhA1132LxbGJsVwjdFD9R/7SABGWOCfeffsrOFblKrhr+qregQ4BBA8ENvR1LRAErIiVvSABAAsAAY8AAAGLAAGGMIIBgjCCASmgAwIBAgIUCnMPhhjywzAB0sDBYlIT8ZwTObUwCgYIKoZIzj0EAwIwFzEVMBMGA1UEAwwMbWFwYWt0LmxvY2FsMB4XDTIyMDgwMjEyMDAxOFoXDTIyMDkwMTEyMDAxOFowFzEV"
	.base64	"MBMGA1UEAwwMbWFwYWt0LmxvY2FsMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEZ/TTjxVt7oXMKnf8C4+fz6mVXVvNt4u6MQpzYsXQDgeQrjhDec5eM60xv58qVoOlJBarDPFkvuSTtYnWBeT3e6NTMFEwHQYDVR0OBBYEFAJkD1VpFJEZ7fka6R2lWtBIlp9gMB8GA1UdIwQYMBaAFAJkD1VpFJEZ7fka6R2lWtBIlp9gMA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwIDRwAwRAIgCoKSbtPGZtnTdf9xO2FGIQDmIV2chullQE/rcE8srQACIAjCB10W"
	.base64	"/FQ0K7QYZ0SByalnLs6hAp875WEWC1D2oVCUAAAPAABLBAMARzBFAiB4nuBqer3DhD0lalkjl1JkTrafzNPXqSlEdW1Q/CLe0wIhAOUo1lrR7ErMILTqFfuOc6hru0JwkAhudG9aBbU57gEEFAAAMP+fsh3LT/x6rPR1JINfjaM+ne9DZ4ldVcfOgKvDx3THspEnzthexE6WGWgtvm9J+g=="
	.align 32
	.type	rx_script_6c_expect_hdr, @object
	.size	rx_script_6c_expect_hdr, 88
rx_script_6c_expect_hdr:
	.byte	5
	.byte	136
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	0
	.zero	2
	.zero	18
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	72
	.quad	0
	.align 32
	.type	rx_script_6c_body, @object
	.size	rx_script_6c_body, 72
rx_script_6c_body:
	.base64	"GAMABPKUScM0ofQPy7gDBB/Iabk71caTGAIABJpP7FLe0si3HAzzTkbwbFQ0Gw2YGAEABOMznlkAacOs/FgOpPTzIxvWjlsI"
	.section	.data.rel.ro.local
	.align 32
	.type	rx_script_6, @object
	.size	rx_script_6, 2624
rx_script_6:
	.byte	14
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	6
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	rx_script_6_c2s_init_dcid
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_6_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_6a_body
	.quad	428
	.quad	rx_script_6a_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_6_handshake_secret
	.quad	48
	.quad	0
	.long	1
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_6b_body
	.quad	670
	.quad	rx_script_6b_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_6_1rtt_secret
	.quad	48
	.quad	0
	.long	3
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_6c_body
	.quad	72
	.quad	rx_script_6c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_6_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_6b_body
	.quad	670
	.quad	rx_script_6b_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_6c_body
	.quad	72
	.quad	rx_script_6c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_6_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_6c_body
	.quad	72
	.quad	rx_script_6c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_6_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_6c_body
	.quad	72
	.quad	rx_script_6c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_6_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	1
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_6_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	6
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	rx_script_6_c2s_init_dcid
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_6a_body
	.quad	428
	.quad	rx_script_6a_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_6_handshake_secret
	.quad	48
	.quad	0
	.long	1
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_6b_body
	.quad	670
	.quad	rx_script_6b_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_6_1rtt_secret
	.quad	48
	.quad	0
	.long	3
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_6c_body
	.quad	72
	.quad	rx_script_6c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.zero	63
	.section	.rodata
	.align 16
	.type	rx_script_7_c2s_init_dcid, @object
	.size	rx_script_7_c2s_init_dcid, 21
rx_script_7_c2s_init_dcid:
	.byte	4
	.base64	"+l3WgAA="
	.zero	15
	.align 32
	.type	rx_script_7_handshake_secret, @object
	.size	rx_script_7_handshake_secret, 32
rx_script_7_handshake_secret:
	.base64	"hUSkAkZbKpKAcf0RiXOE6z4NiU9x3JzdVXeeeXvr+oY="
	.align 32
	.type	rx_script_7_1rtt_secret, @object
	.size	rx_script_7_1rtt_secret, 32
rx_script_7_1rtt_secret:
	.base64	"Sne2Dv2Qyr/AGmSfwAPTjcVBBFCxW3Tn45kM33RhNeY="
	.align 32
	.type	rx_script_7_in, @object
	.size	rx_script_7_in, 1252
rx_script_7_in:
	.base64	"wgAAAAEABANFDHoAQcs84IUFwk0P82JRBDP6taMCvVwiDB3aBvHX4MhWsD3BSYzCiFoO1Wdy7Mx6K0YXSUsoaolx/TGaoZdk4r+gbfZ2gyjE1TmHInwRmlNmtCfxq29JQz+aI9NTBugU/cBnH4gqqK5fBQrrZnKMRsxUIV4U/mjH92BntacN9OH/YOMROJKQwkgov/OFJ/6/QiYaTnjx8IgWG2RfZgILRT042QnV/8JoAizEP2BuL39D9xo3zODgS5bBsYscfG6A45KbhocfmmpiGPSGwj4zo79Dlm7/lK9tI1xC7ee5LDOwxj1EAAujOajrjIEamSC9+vP08BHY"
	.base64	"QTGN3A0ApjFAxsatdJNiHFXOX4xbPMslXr/tuzyXS2LguvGwML81iX4lYVSGUhGGkMP1raCWMLLwpnk5HFFCoQBvVX3c0HzPAYgD1y1lK0DuuhDYDIUUt02efXzefw0OOz3j02PC7cdBrwWFh0ZVfr4UW5iubmcaZcbP4ShQa7T2umO88dekly1NBCaW7AzUrmrKfmXFQ374d2HQLOU3CrN6jCqh3Cnb7Mrc/t040hOflG1bh/MVqOXpZR1Pkhv0pqTWIvwmGzWkHIiffeCaiQ9swdpuRc50sf/rAAAAAQAEA0UMekKjQyn/2888F8/cQjpZiNsT7wk98iTz68qw"
	.base64	"4aRnZGWAX3MpaSm6A3ciyKjVIfKiMH+GOordkjOmVyE53TS0OadvChS6njs6akvF2kSCylKGaIoMXusegUM6WSwmY6OJkoDpdcLbuVhtq/0h4DV5LlZ7+7N6BTMPE+XvBEFphZEkzrUhjQoT2q6GLyUfnHCKqgXrMJNQwTmrmYoxwcFeOc9kP59cpaGIsl8jy3bl8y2g7a3PMAVE3KWBsX94DU2Wo8vLRc9fIriTKxbgHFM0djt7eKFGQENLDhz9zwHxLO7QvZ9E0tcT+WWC9ULsn11RWnvyObumGVxzlWVbZC/aUNACND81wdYxO88/gY3gQP1tMmik8k46SkIs"
	.base64	"By0nozTnJ4eAdsCgcgXyiIHjMgB2jSRcly3WuDT4HBptxz/PVq7sJnRTac16lymrEn11+I1bwHcgtmoLzphQykdCHl3DJFpHSDugnkPpjRgj2m+M2tA+2zf//H4XvkL921GxpP2aICckFwRwtiGHiOnaY8vLHa9KRnaIofhIbAa0YhpnGLAdWGr+H/FI/8uk0agSH0WUL1WAagbMe7DMuAZSFuNufrBC/Tt+CkJ7c68s873lcowWstd6Ebaf0WnBGuAmJhPidfV0rj/uHgljWjAZpVlIkJtGVthva3aCMscpdi4ytiOZ65JdxEyh6SY3mn1MFpwY6cD/SHmxewse"
	.base64	"b7F3pdLGmqn80Q9p8+BJcFeAhqc/VKhg++QGoxO5L6c3gAxDrC+ubmIrU+T+WNeLltzm04a41kJbaANIP83uOYvEUzCHSCoBnW+ONnVz73c6gthMDn+zjxbREM8vo99lupF59pNgCOXbcwJ6Cw7MOx8ILVE+h0jT03XCKKPzAt6Ppr2zGaDbSFEDX5i+XE8zFnWYZwQWYeMAt51cU0wmkJKODsCcbYusFW2JdC/nhONGRozBIXxEpQApyvIRGOAEQFXSp+WdIqIqbAOHo6P69WzXfa4/KAGuBhFpZ5BXWtDr3ay9fzOGuw=="
	.align 32
	.type	rx_script_7a_expect_hdr, @object
	.size	rx_script_7a_expect_hdr, 88
rx_script_7a_expect_hdr:
	.byte	1
	.byte	136
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	4
	.string	"\003E\fz"
	.zero	15
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	441
	.quad	0
	.align 32
	.type	rx_script_7a_body, @object
	.size	rx_script_7a_body, 441
rx_script_7a_body:
	.string	"\002\003"
	.zero	344
	.base64	"BgBAWgIAAFYDA9X7aoEc26JcETHaFSiXlIP9nZEOh3FGZLTZnr2oSDK/ABMDAAAuACsAAgMEADMAJAAdACDvu0bptPZUxAdx3FDVaUC8hX/5SBTj1gipC/2+8VchNA=="
	.align 32
	.type	rx_script_7b_expect_hdr, @object
	.size	rx_script_7b_expect_hdr, 88
rx_script_7b_expect_hdr:
	.byte	3
	.byte	136
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	4
	.string	"\003E\fz"
	.zero	15
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	657
	.quad	0
	.align 32
	.type	rx_script_7b_body, @object
	.size	rx_script_7b_body, 657
rx_script_7b_body:
	.base64	"BgBCjQgAAIIAgAAQAAgABgVkdW1teQA5AHBGCg3cWfBOsiysaWrJd6mZBQSACAAABgSACAAABwSACAAABASADAAACAJAZAkCQGQBBIAAdTADAkWsCwEaDAACEELw7QkHW9lasjldcyxXH1AAC+A+89aRb5zMMfelDgEEDwQDRQx6EAT6XdaAIAEACwABjwAAAYsAAYYwggGCMIIBKaADAgECAhQKcw+GGPLDMAHSwMFiUhPxnBM5tTAKBggqhkjOPQQDAjAXMRUwEwYDVQQDDAxtYXBha3QubG9jYWwwHhcNMjIwODAyMTIwMDE4WhcNMjIwOTAxMTIwMDE4WjAX"
	.base64	"MRUwEwYDVQQDDAxtYXBha3QubG9jYWwwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAARn9NOPFW3uhcwqd/wLj5/PqZVdW823i7oxCnNixdAOB5CuOEN5zl4zrTG/nypWg6UkFqsM8WS+5JO1idYF5Pd7o1MwUTAdBgNVHQ4EFgQUAmQPVWkUkRnt+RrpHaVa0EiWn2AwHwYDVR0jBBgwFoAUAmQPVWkUkRnt+RrpHaVa0EiWn2AwDwYDVR0TAQH/BAUwAwEB/zAKBggqhkjOPQQDAgNHADBEAiAKgpJu08Zm2dN1/3E7YUYhAOYhXZyG6WVAT+twTyytAAIgCMIH"
	.base64	"XRb8VDQrtBhnRIHJqWcuzqECnzvlYRYLUPahUJQAAA8AAEwEAwBIMEYCIQCqGGGT37t55zR+LmETjKAz+zPK/NJFsMeJPfHWVJQFtgIhAO9stvIAsjKx8z9Z9cgYvjm7J/hnrMtjpCn7jogP5el+FAAAIPwsTKd3JHkpqIIaTVidguIJNmMOC1VRgJNA2kEzCBAs"
	.align 32
	.type	rx_script_7c_expect_hdr, @object
	.size	rx_script_7c_expect_hdr, 88
rx_script_7c_expect_hdr:
	.byte	5
	.byte	136
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	0
	.zero	2
	.zero	18
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	72
	.quad	0
	.align 32
	.type	rx_script_7c_body, @object
	.size	rx_script_7c_body, 72
rx_script_7c_body:
	.base64	"GAMABPd1cqL9F9SCjulbzu3siLlzvzafGAIABF9DluQV3FZrZ0w2suJ33G65LA15GAEABMuDSvSNe2mQrw3SOKTxlP9jJNN6"
	.section	.data.rel.ro.local
	.align 32
	.type	rx_script_7, @object
	.size	rx_script_7, 2624
rx_script_7:
	.byte	14
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	6
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	rx_script_7_c2s_init_dcid
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_7_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_7a_body
	.quad	441
	.quad	rx_script_7a_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_7_handshake_secret
	.quad	32
	.quad	0
	.long	1
	.long	3
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_7b_body
	.quad	657
	.quad	rx_script_7b_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_7_1rtt_secret
	.quad	32
	.quad	0
	.long	3
	.long	3
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_7c_body
	.quad	72
	.quad	rx_script_7c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_7_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_7b_body
	.quad	657
	.quad	rx_script_7b_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_7c_body
	.quad	72
	.quad	rx_script_7c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_7_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_7c_body
	.quad	72
	.quad	rx_script_7c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_7_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_7c_body
	.quad	72
	.quad	rx_script_7c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	7
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	3
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_7_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	1
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_7_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	6
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	rx_script_7_c2s_init_dcid
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_7a_body
	.quad	441
	.quad	rx_script_7a_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_7_handshake_secret
	.quad	32
	.quad	0
	.long	1
	.long	3
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_7b_body
	.quad	657
	.quad	rx_script_7b_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_7_1rtt_secret
	.quad	32
	.quad	0
	.long	3
	.long	3
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_7c_body
	.quad	72
	.quad	rx_script_7c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.zero	63
	.section	.rodata
	.align 32
	.type	rx_script_8_1rtt_secret, @object
	.size	rx_script_8_1rtt_secret, 32
rx_script_8_1rtt_secret:
	.base64	"Xx9H6sOyznP7op+sw6D+m/PA3l0zERxw3bQGzN996Zo="
	.align 32
	.type	rx_script_8a_in, @object
	.size	rx_script_8a_in, 54
rx_script_8a_in:
	.base64	"Ucv0P2h7qCu5+n3kayBI0TzLS++x/V4bGYOpR2LBbu8nw5uPP84RaPVzDfLc4CgoeaY5w7nT"
	.align 32
	.type	rx_script_8a_expect_hdr, @object
	.size	rx_script_8a_expect_hdr, 88
rx_script_8a_expect_hdr:
	.byte	5
	.byte	136
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	0
	.zero	2
	.zero	18
	.base64	"AAQA"
	.zero	1
	.zero	2
	.quad	0
	.quad	0
	.quad	35
	.quad	0
	.align 32
	.type	rx_script_8a_body, @object
	.size	rx_script_8a_body, 35
rx_script_8a_body:
	.base64	"AgMGAAMMABtJJ20gaGF2aW5nIGEgd29uZGVyZnVsIHRpbWU="
	.align 32
	.type	rx_script_8b_in, @object
	.size	rx_script_8b_in, 54
rx_script_8b_in:
	.base64	"UiGOomqcgyRIrmAewqWR+uXyBRQ3BGqorgZY14VI1zuFnlqzRokbS24d0fy3R9pqZEuO8mkW"
	.align 32
	.type	rx_script_8b_expect_hdr, @object
	.size	rx_script_8b_expect_hdr, 88
rx_script_8b_expect_hdr:
	.byte	5
	.byte	138
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	0
	.zero	2
	.zero	18
	.base64	"AAUA"
	.zero	1
	.zero	2
	.quad	0
	.quad	0
	.quad	35
	.quad	0
	.align 32
	.type	rx_script_8b_body, @object
	.size	rx_script_8b_body, 35
rx_script_8b_body:
	.base64	"AgQDAAAMADZJJ20gaGF2aW5nIGEgd29uZGVyZnVsIHRpbWU="
	.align 32
	.type	rx_script_8c_in, @object
	.size	rx_script_8c_in, 48
rx_script_8c_in:
	.base64	"W5jWPG+UIF78WzpKZRqabABStgybB/lvvD20V+AVdP526h8jriJit5CUiTibW0ft"
	.align 32
	.type	rx_script_8c_expect_hdr, @object
	.size	rx_script_8c_expect_hdr, 88
rx_script_8c_expect_hdr:
	.byte	5
	.byte	136
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	0
	.zero	2
	.zero	18
	.base64	"AAMA"
	.zero	1
	.zero	2
	.quad	0
	.quad	0
	.quad	29
	.quad	0
	.align 16
	.type	rx_script_8c_body, @object
	.size	rx_script_8c_body, 29
rx_script_8c_body:
	.string	"\b"
	.ascii	"I'm having a wonderful time"
	.align 32
	.type	rx_script_8d_in, @object
	.size	rx_script_8d_in, 55
rx_script_8d_in:
	.base64	"VZggRVMFKTBCKQLypyfWsLcwrUXYc9fjZe7ZNTMDOjULWae8IzfCXhOIGHmUbBXjHw3Rw/pA/w=="
	.align 32
	.type	rx_script_8d_expect_hdr, @object
	.size	rx_script_8d_expect_hdr, 88
rx_script_8d_expect_hdr:
	.byte	5
	.byte	138
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	0
	.zero	2
	.zero	18
	.base64	"AAYA"
	.zero	1
	.zero	2
	.quad	0
	.quad	0
	.quad	36
	.quad	0
	.align 32
	.type	rx_script_8d_body, @object
	.size	rx_script_8d_body, 36
rx_script_8d_body:
	.base64	"AgUDAAAMAEBRSSdtIGhhdmluZyBhIHdvbmRlcmZ1bCB0aW1l"
	.align 32
	.type	rx_script_8e_in, @object
	.size	rx_script_8e_in, 55
rx_script_8e_in:
	.base64	"VXYlHA1wTCvFfXt3ZAMns12DnjUFENKkXIPWlBIYxbMPCrGKgp/WqatAwQXoG3SqjtaLpaN3eQ=="
	.align 32
	.type	rx_script_8e_expect_hdr, @object
	.size	rx_script_8e_expect_hdr, 88
rx_script_8e_expect_hdr:
	.byte	5
	.byte	136
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	0
	.zero	2
	.zero	18
	.base64	"AAoA"
	.zero	1
	.zero	2
	.quad	0
	.quad	0
	.quad	36
	.quad	0
	.align 32
	.type	rx_script_8e_body, @object
	.size	rx_script_8e_body, 36
rx_script_8e_body:
	.base64	"AgkEAAAMAEC9SSdtIGhhdmluZyBhIHdvbmRlcmZ1bCB0aW1l"
	.align 16
	.type	rx_script_8f_in, @object
	.size	rx_script_8f_in, 25
rx_script_8f_in:
	.base64	"SE32Qoah+mlrGkXyzfaS4eYaSTfXEK4JvQ=="
	.align 32
	.type	rx_script_8f_expect_hdr, @object
	.size	rx_script_8f_expect_hdr, 88
rx_script_8f_expect_hdr:
	.byte	5
	.byte	138
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	0
	.zero	2
	.zero	18
	.base64	"AA8A"
	.zero	1
	.zero	2
	.quad	0
	.quad	0
	.quad	6
	.quad	0
	.type	rx_script_8f_body, @object
	.size	rx_script_8f_body, 6
rx_script_8f_body:
	.base64	"Ag5MVAAC"
	.section	.data.rel.ro.local
	.align 32
	.type	rx_script_8, @object
	.size	rx_script_8, 3456
rx_script_8:
	.byte	14
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_8a_in
	.quad	54
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_8_1rtt_secret
	.quad	32
	.quad	0
	.long	3
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_8a_body
	.quad	35
	.quad	rx_script_8a_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	10
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	13
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_8b_in
	.quad	54
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_8b_body
	.quad	35
	.quad	rx_script_8b_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	10
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	1
	.quad	0
	.zero	8
	.byte	13
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	1
	.quad	0
	.zero	8
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_8c_in
	.quad	48
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_8c_body
	.quad	29
	.quad	rx_script_8c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	10
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	1
	.quad	0
	.zero	8
	.byte	13
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_8d_in
	.quad	55
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_8d_body
	.quad	36
	.quad	rx_script_8d_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	10
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	1
	.quad	0
	.zero	8
	.byte	13
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	1
	.quad	0
	.zero	8
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_8c_in
	.quad	48
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_8c_body
	.quad	29
	.quad	rx_script_8c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	10
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	1
	.quad	0
	.zero	8
	.byte	13
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	11
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_8c_in
	.quad	48
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	10
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	1
	.quad	0
	.zero	8
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_8e_in
	.quad	55
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	10
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	1
	.quad	0
	.zero	8
	.byte	11
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_8e_in
	.quad	55
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_8e_body
	.quad	36
	.quad	rx_script_8e_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	10
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	2
	.quad	0
	.zero	8
	.byte	13
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	2
	.quad	0
	.zero	8
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_8d_in
	.quad	55
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_8d_body
	.quad	36
	.quad	rx_script_8d_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	10
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	2
	.quad	0
	.zero	8
	.byte	13
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	1
	.quad	0
	.zero	8
	.byte	11
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_8f_in
	.quad	25
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_8f_body
	.quad	6
	.quad	rx_script_8f_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	10
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	3
	.quad	0
	.zero	8
	.byte	13
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	3
	.quad	0
	.zero	8
	.byte	0
	.zero	63
	.align 32
	.type	rx_script_9, @object
	.size	rx_script_9, 896
rx_script_9:
	.byte	3
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	empty_conn_id
	.quad	0
	.byte	6
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	rx_script_5_c2s_init_dcid
	.quad	0
	.byte	4
	.byte	0
	.zero	6
	.quad	rx_script_5_in
	.quad	1252
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5a_body
	.quad	448
	.quad	rx_script_5a_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_5_handshake_secret
	.quad	32
	.quad	0
	.long	1
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5b_body
	.quad	650
	.quad	rx_script_5b_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	5
	.byte	0
	.zero	6
	.quad	rx_script_5_1rtt_secret
	.quad	32
	.quad	0
	.long	3
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	14
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.zero	8
	.byte	8
	.byte	0
	.zero	6
	.quad	rx_script_5c_body
	.quad	72
	.quad	rx_script_5c_expect_hdr
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	9
	.byte	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.byte	0
	.zero	63
	.section	.data.rel.local,"aw"
	.align 32
	.type	rx_scripts, @object
	.size	rx_scripts, 72
rx_scripts:
	.quad	rx_script_1
	.quad	rx_script_2
	.quad	rx_script_3
	.quad	rx_script_4
	.quad	rx_script_5
	.quad	rx_script_6
	.quad	rx_script_7
	.quad	rx_script_8
	.quad	rx_script_9
	.text
	.type	rx_state_teardown, @function
rx_state_teardown:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
.L44:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
.L45:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.L46:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_demux_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.L48:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	rx_state_teardown, .-rx_state_teardown
	.local	time_counter
	.comm	time_counter,8,8
	.type	expected_time, @function
expected_time:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1000000, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_multiply
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	expected_time, .-expected_time
	.type	fake_time, @function
fake_time:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	time_counter(%rip), %rax
	addq	$1, %rax
	movq	%rax, time_counter(%rip)
	movq	time_counter(%rip), %rax
	movq	%rax, %rdi
	call	expected_time
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	fake_time, .-fake_time
	.type	demux_default_handler, @function
demux_default_handler:
.LFB647:
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
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L57
	movq	-8(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	je	.L57
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_inject_urxe@PLT
	jmp	.L53
.L57:
	nop
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	demux_default_handler, .-demux_default_handler
	.section	.rodata
	.align 8
.LC31:
	.string	"s->demux = ossl_quic_demux_new(NULL, s->args.short_conn_id_len, fake_time, NULL)"
.LC32:
	.string	"../test/quic_record_test.c"
	.align 8
.LC33:
	.string	"s->qrx = ossl_qrx_new(&s->args)"
	.text
	.type	rx_state_ensure, @function
rx_state_ensure:
.LFB648:
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
	jne	.L59
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	fake_time(%rip), %rdx
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_quic_demux_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1779, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L59
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$32, 48(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L61
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_qrx_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1790, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L61
	movl	$0, %eax
	jmp	.L60
.L61:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	demux_default_handler(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_demux_set_default_handler@PLT
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L62
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_allow_1rtt_processing@PLT
.L62:
	movl	$1, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	rx_state_ensure, .-rx_state_ensure
	.section	.rodata
.LC34:
	.string	"rx_state_ensure(&s)"
	.align 8
.LC35:
	.string	"ossl_qrx_provide_secret(s.qrx, op->enc_level, op->suite_id, NULL, op->buf, op->buf_len)"
	.align 8
.LC36:
	.string	"ossl_quic_provide_initial_secret(NULL, NULL, op->dcid, 0, s.qrx, NULL)"
	.align 8
.LC37:
	.string	"ossl_qrx_discard_enc_level(s.qrx, op->enc_level)"
	.align 8
.LC38:
	.string	"ossl_quic_demux_inject(s.demux, op->buf, op->buf_len, NULL, NULL)"
	.align 8
.LC39:
	.string	"ossl_qrx_read_pkt(s.qrx, &pkt)"
.LC40:
	.string	"pkt"
.LC41:
	.string	"pkt->hdr"
.LC42:
	.string	"op->buf"
.LC43:
	.string	"pkt->hdr->data"
	.align 8
.LC44:
	.string	"cmp_pkt_hdr(pkt->hdr, op->hdr, op->buf, op->buf_len, 1)"
.LC45:
	.string	"op->largest_pn"
.LC46:
	.string	"ossl_qrx_get_key_epoch(s.qrx)"
.LC47:
	.string	"last_key_epoch"
	.align 8
.LC48:
	.string	"ossl_qrx_key_update_timeout(s.qrx, op->enc_level)"
.LC49:
	.string	"assertion failed: 0"
	.text
	.type	rx_run_script, @function
rx_run_script:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)
	movl	$0, -20(%rbp)
	leaq	-192(%rbp), %rdx
	movl	$0, %eax
	movl	$17, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	$0, -200(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$-1, -48(%rbp)
	jmp	.L64
.L108:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$14, %eax
	je	.L65
	cmpl	$14, %eax
	jg	.L66
	cmpl	$13, %eax
	je	.L67
	cmpl	$13, %eax
	jg	.L66
	cmpl	$12, %eax
	je	.L68
	cmpl	$12, %eax
	jg	.L66
	cmpl	$11, %eax
	je	.L69
	cmpl	$11, %eax
	jg	.L66
	cmpl	$10, %eax
	je	.L70
	cmpl	$10, %eax
	jg	.L66
	cmpl	$9, %eax
	je	.L71
	cmpl	$9, %eax
	jg	.L66
	cmpl	$8, %eax
	je	.L72
	cmpl	$8, %eax
	jg	.L66
	cmpl	$7, %eax
	je	.L73
	cmpl	$7, %eax
	jg	.L66
	cmpl	$6, %eax
	je	.L74
	cmpl	$6, %eax
	jg	.L66
	cmpl	$5, %eax
	je	.L75
	cmpl	$5, %eax
	jg	.L66
	cmpl	$4, %eax
	je	.L76
	cmpl	$4, %eax
	jg	.L66
	cmpl	$3, %eax
	je	.L77
	cmpl	$3, %eax
	jg	.L66
	cmpl	$1, %eax
	je	.L78
	cmpl	$2, %eax
	je	.L79
	jmp	.L66
.L78:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_teardown
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -152(%rbp)
	jmp	.L80
.L79:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_teardown
	movq	$0, -32(%rbp)
	jmp	.L81
.L82:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$6, %rdx
	movq	%rax, -184(%rbp,%rdx,8)
	addq	$1, -32(%rbp)
.L81:
	cmpq	$2, -32(%rbp)
	jbe	.L82
	jmp	.L80
.L77:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1822, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L110
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	13(%rcx), %rax
	movq	%rax, -75(%rbp)
	jmp	.L80
.L75:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1827, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L111
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	36(%rax), %edx
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	movq	-184(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_qrx_provide_secret@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1829, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L112
	jmp	.L84
.L74:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1836, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L113
	movq	-184(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_quic_provide_initial_secret@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1838, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L114
	jmp	.L84
.L73:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1844, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L115
	movq	-40(%rbp), %rax
	movl	32(%rax), %edx
	movq	-184(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qrx_discard_enc_level@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1846, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L116
	jmp	.L84
.L76:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1850, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L117
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-192(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_quic_demux_inject@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1852, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L118
	jmp	.L84
.L72:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1858, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L119
	movq	-184(%rbp), %rax
	leaq	-200(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_read_pkt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1861, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L120
	movq	-200(%rbp), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1864, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC41(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1864, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %r9
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %r8
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$1867, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L122
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	cmp_pkt_hdr
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1871, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L123
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qrx_pkt_release@PLT
	movq	$0, -200(%rbp)
	jmp	.L80
.L71:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1881, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-184(%rbp), %rax
	leaq	-200(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_read_pkt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1884, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L125
	jmp	.L84
.L70:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1889, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	movq	-40(%rbp), %rax
	movq	40(%rax), %rbx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qrx_get_key_epoch@PLT
	movq	%rax, %rsi
	leaq	.LC45(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$1892, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L127
	jmp	.L84
.L67:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1898, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L128
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC45(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1901, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L129
	jmp	.L84
.L69:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1906, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L130
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qrx_key_update_timeout@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC48(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1909, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L131
	jmp	.L84
.L68:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_teardown
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	movb	%al, -112(%rbp)
	jmp	.L80
.L65:
	movl	$1, -64(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1921, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L132
	jmp	.L84
.L66:
	leaq	.LC32(%rip), %rcx
	leaq	.LC49(%rip), %rax
	movl	$1926, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L112:
	nop
	jmp	.L80
.L114:
	nop
	jmp	.L80
.L116:
	nop
	jmp	.L80
.L118:
	nop
	jmp	.L80
.L125:
	nop
	jmp	.L80
.L127:
	nop
	jmp	.L80
.L129:
	nop
	jmp	.L80
.L131:
	nop
	jmp	.L80
.L132:
	nop
.L80:
	addq	$64, -40(%rbp)
.L64:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L108
	movl	$1, -20(%rbp)
	jmp	.L84
.L110:
	nop
	jmp	.L84
.L111:
	nop
	jmp	.L84
.L113:
	nop
	jmp	.L84
.L115:
	nop
	jmp	.L84
.L117:
	nop
	jmp	.L84
.L119:
	nop
	jmp	.L84
.L120:
	nop
	jmp	.L84
.L121:
	nop
	jmp	.L84
.L122:
	nop
	jmp	.L84
.L123:
	nop
	jmp	.L84
.L124:
	nop
	jmp	.L84
.L126:
	nop
	jmp	.L84
.L128:
	nop
	jmp	.L84
.L130:
	nop
.L84:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qrx_pkt_release@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	rx_state_teardown
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	rx_run_script, .-rx_run_script
	.type	test_rx_script, @function
test_rx_script:
.LFB650:
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
	leaq	rx_scripts(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	rx_run_script
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	test_rx_script, .-test_rx_script
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_1_expected, @object
	.size	pkt_hdr_test_1_expected, 38
pkt_hdr_test_1_expected:
	.base64	"wQAAAAEACPBnpVAqQmK1ABUzRBAREhMUFRYXGBkaGxwdHh8gISI="
	.align 16
	.type	pkt_hdr_test_1_payload, @object
	.size	pkt_hdr_test_1_payload, 19
pkt_hdr_test_1_payload:
	.base64	"EBESExQVFhcYGRobHB0eHyAhIg=="
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_1, @object
	.size	pkt_hdr_test_1, 152
pkt_hdr_test_1:
	.byte	1
	.byte	136
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.string	"3D"
	.zero	1
	.zero	2
	.quad	0
	.quad	0
	.quad	19
	.quad	0
	.quad	pkt_hdr_test_1_expected
	.quad	38
	.quad	pkt_hdr_test_1_payload
	.quad	19
	.quad	0
	.quad	38
	.quad	17
	.quad	21
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_2_expected, @object
	.size	pkt_hdr_test_2_expected, 45
pkt_hdr_test_2_expected:
	.base64	"wQAAAAEACPBnpVAqQmK1B5CRkpOUlZYVM0QQERITFBUWFxgZGhscHR4fICEi"
	.align 16
	.type	pkt_hdr_test_2_payload, @object
	.size	pkt_hdr_test_2_payload, 19
pkt_hdr_test_2_payload:
	.base64	"EBESExQVFhcYGRobHB0eHyAhIg=="
	.type	pkt_hdr_test_2_token, @object
	.size	pkt_hdr_test_2_token, 7
pkt_hdr_test_2_token:
	.base64	"kJGSk5SVlg=="
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_2, @object
	.size	pkt_hdr_test_2, 152
pkt_hdr_test_2:
	.byte	1
	.byte	136
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.string	"3D"
	.zero	1
	.zero	2
	.quad	pkt_hdr_test_2_token
	.quad	7
	.quad	19
	.quad	0
	.quad	pkt_hdr_test_2_expected
	.quad	45
	.quad	pkt_hdr_test_2_payload
	.quad	19
	.quad	0
	.quad	45
	.quad	24
	.quad	28
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_3_expected, @object
	.size	pkt_hdr_test_3_expected, 47
pkt_hdr_test_3_expected:
	.base64	"wQAAAAEDcHFyCPBnpVAqQmK1BpGSk5SVlhUzRBAREhMUFRYXGBkaGxwdHh8gISI="
	.align 16
	.type	pkt_hdr_test_3_payload, @object
	.size	pkt_hdr_test_3_payload, 19
pkt_hdr_test_3_payload:
	.base64	"EBESExQVFhcYGRobHB0eHyAhIg=="
	.type	pkt_hdr_test_3_token, @object
	.size	pkt_hdr_test_3_token, 6
pkt_hdr_test_3_token:
	.base64	"kZKTlJWW"
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_3, @object
	.size	pkt_hdr_test_3, 152
pkt_hdr_test_3:
	.byte	1
	.byte	136
	.byte	0
	.zero	1
	.long	1
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.string	"3D"
	.zero	1
	.zero	2
	.quad	pkt_hdr_test_3_token
	.quad	6
	.quad	19
	.quad	0
	.quad	pkt_hdr_test_3_expected
	.quad	47
	.quad	pkt_hdr_test_3_payload
	.quad	19
	.quad	0
	.quad	47
	.quad	26
	.quad	30
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_4_expected, @object
	.size	pkt_hdr_test_4_expected, 39
pkt_hdr_test_4_expected:
	.base64	"0AAAAAEDcHFyCPBnpVAqQmK1FDMQERITFBUWFxgZGhscHR4fICEi"
	.align 16
	.type	pkt_hdr_test_4_payload, @object
	.size	pkt_hdr_test_4_payload, 19
pkt_hdr_test_4_payload:
	.base64	"EBESExQVFhcYGRobHB0eHyAhIg=="
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_4, @object
	.size	pkt_hdr_test_4, 152
pkt_hdr_test_4:
	.byte	2
	.byte	132
	.byte	0
	.zero	1
	.long	1
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.string	"3"
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	19
	.quad	0
	.quad	pkt_hdr_test_4_expected
	.quad	39
	.quad	pkt_hdr_test_4_payload
	.quad	19
	.quad	0
	.quad	39
	.quad	19
	.quad	23
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_5_expected, @object
	.size	pkt_hdr_test_5_expected, 39
pkt_hdr_test_5_expected:
	.base64	"4AAAAAEDcHFyCPBnpVAqQmK1FDMQERITFBUWFxgZGhscHR4fICEi"
	.align 16
	.type	pkt_hdr_test_5_payload, @object
	.size	pkt_hdr_test_5_payload, 19
pkt_hdr_test_5_payload:
	.base64	"EBESExQVFhcYGRobHB0eHyAhIg=="
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_5, @object
	.size	pkt_hdr_test_5, 152
pkt_hdr_test_5:
	.byte	3
	.byte	132
	.byte	0
	.zero	1
	.long	1
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.string	"3"
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	19
	.quad	0
	.quad	pkt_hdr_test_5_expected
	.quad	39
	.quad	pkt_hdr_test_5_payload
	.quad	19
	.quad	0
	.quad	39
	.quad	19
	.quad	23
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_6_expected, @object
	.size	pkt_hdr_test_6_expected, 42
pkt_hdr_test_6_expected:
	.base64	"8AAAAAEDcHFyCPBnpVAqQmK1QEFCQ0RFRkdgYWJjZGVmZ2hpamtsbW5v"
	.align 16
	.type	pkt_hdr_test_6_payload, @object
	.size	pkt_hdr_test_6_payload, 24
pkt_hdr_test_6_payload:
	.ascii	"@ABCDEFG`abcdefghijklmno"
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_6, @object
	.size	pkt_hdr_test_6, 152
pkt_hdr_test_6:
	.byte	4
	.byte	128
	.byte	0
	.zero	1
	.long	1
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	24
	.quad	0
	.quad	pkt_hdr_test_6_expected
	.quad	42
	.quad	pkt_hdr_test_6_payload
	.quad	24
	.quad	0
	.quad	21
	.quad	-1
	.quad	-1
	.section	.rodata
	.align 16
	.type	pkt_hdr_test_7_expected, @object
	.size	pkt_hdr_test_7_expected, 25
pkt_hdr_test_7_expected:
	.base64	"QnBxclBRUpCRkpOUlZaXmJmam5ydnp+goQ=="
	.align 16
	.type	pkt_hdr_test_7_payload, @object
	.size	pkt_hdr_test_7_payload, 18
pkt_hdr_test_7_payload:
	.base64	"kJGSk5SVlpeYmZqbnJ2en6Ch"
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_7, @object
	.size	pkt_hdr_test_7, 152
pkt_hdr_test_7:
	.byte	5
	.byte	140
	.byte	0
	.zero	1
	.long	0
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	0
	.zero	2
	.zero	18
	.string	"PQR"
	.zero	2
	.quad	0
	.quad	0
	.quad	18
	.quad	0
	.quad	pkt_hdr_test_7_expected
	.quad	25
	.quad	pkt_hdr_test_7_payload
	.quad	18
	.quad	3
	.quad	21
	.quad	4
	.quad	8
	.section	.rodata
	.align 16
	.type	pkt_hdr_test_8_expected, @object
	.size	pkt_hdr_test_8_expected, 25
pkt_hdr_test_8_expected:
	.base64	"YnBxclBRUpCRkpOUlZaXmJmam5ydnp+goQ=="
	.align 16
	.type	pkt_hdr_test_8_payload, @object
	.size	pkt_hdr_test_8_payload, 18
pkt_hdr_test_8_payload:
	.base64	"kJGSk5SVlpeYmZqbnJ2en6Ch"
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_8, @object
	.size	pkt_hdr_test_8, 152
pkt_hdr_test_8:
	.byte	5
	.byte	141
	.byte	0
	.zero	1
	.long	0
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	0
	.zero	2
	.zero	18
	.string	"PQR"
	.zero	2
	.quad	0
	.quad	0
	.quad	18
	.quad	0
	.quad	pkt_hdr_test_8_expected
	.quad	25
	.quad	pkt_hdr_test_8_payload
	.quad	18
	.quad	3
	.quad	21
	.quad	4
	.quad	8
	.section	.rodata
	.align 16
	.type	pkt_hdr_test_9_expected, @object
	.size	pkt_hdr_test_9_expected, 25
pkt_hdr_test_9_expected:
	.base64	"RnBxclBRUpCRkpOUlZaXmJmam5ydnp+goQ=="
	.align 16
	.type	pkt_hdr_test_9_payload, @object
	.size	pkt_hdr_test_9_payload, 18
pkt_hdr_test_9_payload:
	.base64	"kJGSk5SVlpeYmZqbnJ2en6Ch"
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_9, @object
	.size	pkt_hdr_test_9, 152
pkt_hdr_test_9:
	.byte	5
	.byte	142
	.byte	0
	.zero	1
	.long	0
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	0
	.zero	2
	.zero	18
	.string	"PQR"
	.zero	2
	.quad	0
	.quad	0
	.quad	18
	.quad	0
	.quad	pkt_hdr_test_9_expected
	.quad	25
	.quad	pkt_hdr_test_9_payload
	.quad	18
	.quad	3
	.quad	21
	.quad	4
	.quad	8
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_10_expected, @object
	.size	pkt_hdr_test_10_expected, 42
pkt_hdr_test_10_expected:
	.base64	"4wAAAAEDcHFyCPBnpVAqQmK1FzNEVWYQERITFBUWFxgZGhscHR4fICEi"
	.align 16
	.type	pkt_hdr_test_10_payload, @object
	.size	pkt_hdr_test_10_payload, 19
pkt_hdr_test_10_payload:
	.base64	"EBESExQVFhcYGRobHB0eHyAhIg=="
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_10, @object
	.size	pkt_hdr_test_10, 152
pkt_hdr_test_10:
	.byte	3
	.byte	144
	.byte	0
	.zero	1
	.long	1
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.ascii	"3DUf"
	.zero	2
	.quad	0
	.quad	0
	.quad	19
	.quad	0
	.quad	pkt_hdr_test_10_expected
	.quad	42
	.quad	pkt_hdr_test_10_payload
	.quad	19
	.quad	0
	.quad	42
	.quad	19
	.quad	23
	.section	.rodata
	.align 16
	.type	pkt_hdr_test_11_expected, @object
	.size	pkt_hdr_test_11_expected, 26
pkt_hdr_test_11_expected:
	.base64	"Q3BxclBRUlOQkZKTlJWWl5iZmpucnZ6foKE="
	.align 16
	.type	pkt_hdr_test_11_payload, @object
	.size	pkt_hdr_test_11_payload, 18
pkt_hdr_test_11_payload:
	.base64	"kJGSk5SVlpeYmZqbnJ2en6Ch"
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_11, @object
	.size	pkt_hdr_test_11, 152
pkt_hdr_test_11:
	.byte	5
	.byte	144
	.byte	0
	.zero	1
	.long	0
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	0
	.zero	2
	.zero	18
	.ascii	"PQRS"
	.zero	2
	.quad	0
	.quad	0
	.quad	18
	.quad	0
	.quad	pkt_hdr_test_11_expected
	.quad	26
	.quad	pkt_hdr_test_11_payload
	.quad	18
	.quad	3
	.quad	21
	.quad	4
	.quad	8
	.section	.rodata
	.align 16
	.type	pkt_hdr_test_12_expected, @object
	.size	pkt_hdr_test_12_expected, 16
pkt_hdr_test_12_expected:
	.base64	"wAAAAAADcHFyAoGCESIzRA=="
	.type	pkt_hdr_test_12_payload, @object
	.size	pkt_hdr_test_12_payload, 4
pkt_hdr_test_12_payload:
	.ascii	"\021\"3D"
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_12, @object
	.size	pkt_hdr_test_12, 152
pkt_hdr_test_12:
	.byte	6
	.byte	128
	.byte	0
	.zero	1
	.long	0
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	2
	.base64	"gYIA"
	.zero	17
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	4
	.quad	0
	.quad	pkt_hdr_test_12_expected
	.quad	16
	.quad	pkt_hdr_test_12_payload
	.quad	4
	.quad	0
	.quad	12
	.quad	-1
	.quad	-1
	.section	.rodata
	.align 16
	.type	pkt_hdr_test_13_expected, @object
	.size	pkt_hdr_test_13_expected, 16
pkt_hdr_test_13_expected:
	.base64	"gAAAAAADcHFyAoGCESIzRA=="
	.type	pkt_hdr_test_13_payload, @object
	.size	pkt_hdr_test_13_payload, 4
pkt_hdr_test_13_payload:
	.ascii	"\021\"3D"
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_13, @object
	.size	pkt_hdr_test_13, 152
pkt_hdr_test_13:
	.byte	6
	.byte	0
	.byte	0
	.zero	1
	.long	0
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	2
	.base64	"gYIA"
	.zero	17
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	4
	.quad	0
	.quad	pkt_hdr_test_13_expected
	.quad	16
	.quad	pkt_hdr_test_13_payload
	.quad	4
	.quad	0
	.quad	12
	.quad	-1
	.quad	-1
	.section	.rodata
	.align 16
	.type	pkt_hdr_test_14_expected, @object
	.size	pkt_hdr_test_14_expected, 25
pkt_hdr_test_14_expected:
	.base64	"AnBxclBRUpCRkpOUlZaXmJmam5ydnp+goQ=="
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_14, @object
	.size	pkt_hdr_test_14, 152
pkt_hdr_test_14:
	.byte	0
	.zero	87
	.quad	pkt_hdr_test_14_expected
	.quad	25
	.quad	0
	.quad	0
	.quad	3
	.quad	-1
	.quad	4
	.quad	8
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_15_expected, @object
	.size	pkt_hdr_test_15_expected, 39
pkt_hdr_test_15_expected:
	.base64	"oAAAAAEDcHFyCPBnpVAqQmK1FDMQERITFBUWFxgZGhscHR4fICEi"
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_15, @object
	.size	pkt_hdr_test_15, 152
pkt_hdr_test_15:
	.byte	0
	.zero	87
	.quad	pkt_hdr_test_15_expected
	.quad	39
	.quad	0
	.quad	0
	.quad	0
	.quad	-1
	.quad	19
	.quad	23
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_16_expected, @object
	.size	pkt_hdr_test_16_expected, 39
pkt_hdr_test_16_expected:
	.base64	"4AAAAAIDcHFyCPBnpVAqQmK1FDMQERITFBUWFxgZGhscHR4fICEi"
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_16, @object
	.size	pkt_hdr_test_16, 152
pkt_hdr_test_16:
	.byte	0
	.zero	87
	.quad	pkt_hdr_test_16_expected
	.quad	39
	.quad	0
	.quad	0
	.quad	0
	.quad	-1
	.quad	19
	.quad	23
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_17_expected, @object
	.size	pkt_hdr_test_17_expected, 38
pkt_hdr_test_17_expected:
	.base64	"zQAAAAEACPBnpVAqQmK1ABUzRBAREhMUFRYXGBkaGxwdHh8gISI="
	.align 16
	.type	pkt_hdr_test_17_payload, @object
	.size	pkt_hdr_test_17_payload, 19
pkt_hdr_test_17_payload:
	.base64	"EBESExQVFhcYGRobHB0eHyAhIg=="
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_17, @object
	.size	pkt_hdr_test_17, 152
pkt_hdr_test_17:
	.byte	1
	.byte	136
	.byte	48
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.string	"3D"
	.zero	1
	.zero	2
	.quad	0
	.quad	0
	.quad	19
	.quad	0
	.quad	pkt_hdr_test_17_expected
	.quad	38
	.quad	pkt_hdr_test_17_payload
	.quad	19
	.quad	0
	.quad	38
	.quad	17
	.quad	21
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_18_expected, @object
	.size	pkt_hdr_test_18_expected, 39
pkt_hdr_test_18_expected:
	.base64	"2AAAAAEDcHFyCPBnpVAqQmK1FDMQERITFBUWFxgZGhscHR4fICEi"
	.align 16
	.type	pkt_hdr_test_18_payload, @object
	.size	pkt_hdr_test_18_payload, 19
pkt_hdr_test_18_payload:
	.base64	"EBESExQVFhcYGRobHB0eHyAhIg=="
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_18, @object
	.size	pkt_hdr_test_18, 152
pkt_hdr_test_18:
	.byte	2
	.byte	132
	.byte	32
	.zero	1
	.long	1
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.string	"3"
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	19
	.quad	0
	.quad	pkt_hdr_test_18_expected
	.quad	39
	.quad	pkt_hdr_test_18_payload
	.quad	19
	.quad	0
	.quad	39
	.quad	19
	.quad	23
	.section	.rodata
	.align 32
	.type	pkt_hdr_test_19_expected, @object
	.size	pkt_hdr_test_19_expected, 39
pkt_hdr_test_19_expected:
	.base64	"5AAAAAEDcHFyCPBnpVAqQmK1FDMQERITFBUWFxgZGhscHR4fICEi"
	.align 16
	.type	pkt_hdr_test_19_payload, @object
	.size	pkt_hdr_test_19_payload, 19
pkt_hdr_test_19_payload:
	.base64	"EBESExQVFhcYGRobHB0eHyAhIg=="
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_19, @object
	.size	pkt_hdr_test_19, 152
pkt_hdr_test_19:
	.byte	3
	.byte	132
	.byte	16
	.zero	1
	.long	1
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.string	"3"
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	19
	.quad	0
	.quad	pkt_hdr_test_19_expected
	.quad	39
	.quad	pkt_hdr_test_19_payload
	.quad	19
	.quad	0
	.quad	39
	.quad	19
	.quad	23
	.section	.rodata
	.align 16
	.type	pkt_hdr_test_20_expected, @object
	.size	pkt_hdr_test_20_expected, 25
pkt_hdr_test_20_expected:
	.base64	"WnBxclBRUpCRkpOUlZaXmJmam5ydnp+goQ=="
	.align 16
	.type	pkt_hdr_test_20_payload, @object
	.size	pkt_hdr_test_20_payload, 18
pkt_hdr_test_20_payload:
	.base64	"kJGSk5SVlpeYmZqbnJ2en6Ch"
	.section	.data.rel.ro.local
	.align 32
	.type	pkt_hdr_test_20, @object
	.size	pkt_hdr_test_20, 152
pkt_hdr_test_20:
	.byte	5
	.byte	140
	.byte	48
	.zero	1
	.long	0
	.byte	3
	.string	"pqr"
	.zero	16
	.byte	0
	.zero	2
	.zero	18
	.string	"PQR"
	.zero	2
	.quad	0
	.quad	0
	.quad	18
	.quad	0
	.quad	pkt_hdr_test_20_expected
	.quad	25
	.quad	pkt_hdr_test_20_payload
	.quad	18
	.quad	3
	.quad	21
	.quad	4
	.quad	8
	.align 32
	.type	pkt_hdr_tests, @object
	.size	pkt_hdr_tests, 160
pkt_hdr_tests:
	.quad	pkt_hdr_test_1
	.quad	pkt_hdr_test_2
	.quad	pkt_hdr_test_3
	.quad	pkt_hdr_test_4
	.quad	pkt_hdr_test_5
	.quad	pkt_hdr_test_6
	.quad	pkt_hdr_test_7
	.quad	pkt_hdr_test_8
	.quad	pkt_hdr_test_9
	.quad	pkt_hdr_test_10
	.quad	pkt_hdr_test_11
	.quad	pkt_hdr_test_12
	.quad	pkt_hdr_test_13
	.quad	pkt_hdr_test_14
	.quad	pkt_hdr_test_15
	.quad	pkt_hdr_test_16
	.quad	pkt_hdr_test_17
	.quad	pkt_hdr_test_18
	.quad	pkt_hdr_test_19
	.quad	pkt_hdr_test_20
	.local	counts_u
	.comm	counts_u,444,32
	.local	counts_c
	.comm	counts_c,444,32
	.section	.rodata
	.align 8
.LC50:
	.string	"buf = OPENSSL_malloc(TEST_PKT_BUF_LEN)"
	.align 8
.LC51:
	.string	"WPACKET_init_static_len(&wpkt, buf, TEST_PKT_BUF_LEN, 0)"
	.align 8
.LC52:
	.string	"PACKET_buf_init(&pkt, t->expected, trunc_len)"
.LC53:
	.string	"!expect_fail"
	.align 8
.LC54:
	.string	"ossl_quic_wire_decode_pkt_hdr(&pkt, t->short_conn_id_len, 0, 0, &hdr, &ptrs)"
	.align 8
.LC55:
	.string	"cmp_pkt_hdr(&hdr, &t->hdr, t->payload, t->payload_len, 1)"
.LC56:
	.string	"t->expected"
.LC57:
	.string	"ptrs.raw_start"
.LC58:
	.string	"ptrs.raw_pn"
.LC59:
	.string	"t->expected + t->pn_offset"
	.align 8
.LC60:
	.string	"t->expected + t->sample_offset"
.LC61:
	.string	"ptrs.raw_sample"
	.align 8
.LC62:
	.string	"t->expected_len - t->sample_offset"
.LC63:
	.string	"ptrs.raw_sample_len"
	.align 8
.LC64:
	.string	"ossl_quic_wire_encode_pkt_hdr(&wpkt, t->short_conn_id_len, &hdr, &wptrs)"
	.align 8
.LC65:
	.string	"WPACKET_memcpy(&wpkt, t->payload, t->payload_len)"
	.align 8
.LC66:
	.string	"WPACKET_get_total_written(&wpkt, &l)"
.LC67:
	.string	"buf"
	.align 8
.LC68:
	.string	"ossl_quic_hdr_protector_init(&hpr, NULL, NULL, hpr_cipher_id, hpr_key, hpr_key_len)"
.LC69:
	.string	"hbuf"
	.align 8
.LC70:
	.string	"ossl_quic_hdr_protector_encrypt(&hpr, &ptrs)"
	.align 8
.LC71:
	.string	"assertion failed: jrel + j < OSSL_NELEM(counts_u[cipher])"
.LC72:
	.string	"0"
.LC73:
	.string	"d & rej_mask"
	.align 8
.LC74:
	.string	"ossl_quic_hdr_protector_decrypt(&hpr, &ptrs)"
	.text
	.type	test_wire_pkt_hdr_actual, @function
test_wire_pkt_hdr_actual:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$440, %rsp
	.cfi_offset 3, -24
	movl	%edi, -420(%rbp)
	movl	%esi, -424(%rbp)
	movl	%edx, -428(%rbp)
	movq	%rcx, -440(%rbp)
	movl	$0, -20(%rbp)
	movl	-420(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	pkt_hdr_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -96(%rbp)
	leaq	-192(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -208(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -240(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -336(%rbp)
	movaps	%xmm0, -320(%rbp)
	movaps	%xmm0, -304(%rbp)
	movq	%xmm0, -288(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -344(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -384(%rbp)
	movaps	%xmm0, -368(%rbp)
	movq	%xmm0, -352(%rbp)
	movabsq	$506097522914230528, %rax
	movl	$0, %edx
	movq	%rax, -416(%rbp)
	movq	%rdx, -408(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -392(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -440(%rbp)
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -100(%rbp)
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	%rax, -440(%rbp)
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	movl	-420(%rbp), %eax
	movb	%al, -408(%rbp)
	movl	-424(%rbp), %eax
	movb	%al, -407(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L136
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	-440(%rbp), %rax
	jnb	.L136
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	jne	.L136
	movq	-96(%rbp), %rax
	movq	128(%rax), %rax
	movq	-440(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L136
	movl	$1, -76(%rbp)
.L136:
	cmpl	$2, -428(%rbp)
	je	.L137
	cmpl	$2, -428(%rbp)
	jg	.L177
	cmpl	$0, -428(%rbp)
	je	.L139
	cmpl	$1, -428(%rbp)
	je	.L140
	jmp	.L177
.L139:
	movl	$1, -56(%rbp)
	movl	$16, -60(%rbp)
	jmp	.L141
.L140:
	movl	$2, -56(%rbp)
	movl	$32, -60(%rbp)
	jmp	.L141
.L137:
	movl	$3, -56(%rbp)
	movl	$32, -60(%rbp)
	nop
.L141:
	leaq	.LC32(%rip), %rax
	movl	$2801, %edx
	movq	%rax, %rsi
	movl	$20000, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$2801, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L178
	movq	-32(%rbp), %rsi
	leaq	-336(%rbp), %rax
	movl	$0, %ecx
	movl	$20000, %edx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$2804, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L179
	movq	-96(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-440(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$2807, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L180
	cmpl	$0, -76(%rbp)
	sete	%al
	movzbl	%al, %ebx
	movq	-96(%rbp), %rax
	movq	120(%rax), %rsi
	leaq	-224(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_pkt_hdr@PLT
	movl	%eax, %esi
	leaq	.LC53(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$2810, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L181
	cmpl	$0, -76(%rbp)
	jne	.L147
	cmpl	$0, -100(%rbp)
	jne	.L147
	movq	-96(%rbp), %rax
	movq	112(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-96(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	cmp_pkt_hdr
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC55(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$2816, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L182
	movq	-96(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-224(%rbp), %rsi
	leaq	.LC56(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2819, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L183
	movq	-96(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$-1, %rax
	jne	.L150
	movq	-200(%rbp), %rax
	leaq	.LC58(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$2823, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L151
	jmp	.L142
.L150:
	movq	-96(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	136(%rax), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-200(%rbp), %rsi
	leaq	.LC59(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2826, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L184
.L151:
	movq	-96(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	$-1, %rax
	je	.L152
	movq	-96(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	144(%rax), %rax
	leaq	(%rdx,%rax), %rdi
	movq	-216(%rbp), %rsi
	leaq	.LC60(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2831, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L185
	movq	-96(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	-208(%rbp), %rsi
	leaq	.LC62(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$2833, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L186
.L152:
	movq	-96(%rbp), %rax
	movq	120(%rax), %rsi
	leaq	-256(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_pkt_hdr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$2838, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L187
	movq	-96(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	104(%rax), %rcx
	leaq	-336(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC65(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$2841, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L188
	leaq	-344(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$2844, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L189
	movq	-96(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-344(%rbp), %r9
	movq	-32(%rbp), %r8
	leaq	.LC56(%rip), %rcx
	leaq	.LC67(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$2847, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L190
	movq	-96(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	$-1, %rax
	je	.L147
	movl	-60(%rbp), %eax
	movslq	%eax, %rsi
	movl	-56(%rbp), %edx
	leaq	-416(%rbp), %rcx
	leaq	-384(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_hdr_protector_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$2852, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L191
	movl	$1, -52(%rbp)
	movq	-96(%rbp), %rax
	movq	96(%rax), %rax
	leaq	.LC32(%rip), %rcx
	movl	$2864, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC69(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$2865, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L192
	movq	-96(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-200(%rbp), %rdx
	movq	-224(%rbp), %rax
	subq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -200(%rbp)
	movq	-216(%rbp), %rdx
	movq	-224(%rbp), %rax
	subq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -216(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-224(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_hdr_protector_encrypt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$2874, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L193
	movq	$0, -40(%rbp)
	jmp	.L161
.L173:
	movq	-96(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%ecx, %eax
	movb	%al, -101(%rbp)
	movb	$-1, -77(%rbp)
	movq	$0, -88(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L162
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L163
	movb	$-32, -77(%rbp)
	jmp	.L164
.L163:
	movb	$-16, -77(%rbp)
	jmp	.L164
.L162:
	movq	-96(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L164
	movq	-96(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %eax
	addq	%rdx, %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L164
	movb	$0, -77(%rbp)
	movq	-96(%rbp), %rax
	movq	136(%rax), %rax
	movq	-40(%rbp), %rdx
	subq	%rax, %rdx
	leaq	0(,%rdx,8), %rax
	addq	$5, %rax
	movq	%rax, -88(%rbp)
.L164:
	cmpb	$-1, -77(%rbp)
	je	.L165
	movq	$0, -48(%rbp)
	jmp	.L166
.L171:
	movzbl	-77(%rbp), %eax
	movq	-48(%rbp), %rdx
	movl	%edx, %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L194
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$36, %rax
	jbe	.L169
	leaq	.LC32(%rip), %rcx
	leaq	.LC71(%rip), %rax
	movl	$2899, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L169:
	movzbl	-101(%rbp), %eax
	movq	-48(%rbp), %rdx
	movl	%edx, %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L170
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-428(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	counts_c(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %esi
	movl	-428(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	counts_c(%rip), %rax
	movl	%esi, (%rdx,%rax)
	jmp	.L168
.L170:
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-428(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	counts_u(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %esi
	movl	-428(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	counts_u(%rip), %rax
	movl	%esi, (%rdx,%rax)
	jmp	.L168
.L194:
	nop
.L168:
	addq	$1, -48(%rbp)
.L166:
	cmpq	$7, -48(%rbp)
	jbe	.L171
.L165:
	movzbl	-101(%rbp), %eax
	andb	-77(%rbp), %al
	movzbl	%al, %esi
	leaq	.LC72(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2907, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L195
	addq	$1, -40(%rbp)
.L161:
	movq	-96(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L173
	leaq	-224(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_hdr_protector_decrypt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC74(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$2912, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L196
	movq	-96(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-96(%rbp), %rax
	movq	96(%rax), %r9
	movq	-72(%rbp), %r8
	leaq	.LC56(%rip), %rcx
	leaq	.LC69(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$2915, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L197
.L147:
	movl	$1, -20(%rbp)
	jmp	.L142
.L177:
	nop
	jmp	.L142
.L178:
	nop
	jmp	.L142
.L179:
	nop
	jmp	.L142
.L180:
	nop
	jmp	.L142
.L181:
	nop
	jmp	.L142
.L182:
	nop
	jmp	.L142
.L183:
	nop
	jmp	.L142
.L184:
	nop
	jmp	.L142
.L185:
	nop
	jmp	.L142
.L186:
	nop
	jmp	.L142
.L187:
	nop
	jmp	.L142
.L188:
	nop
	jmp	.L142
.L189:
	nop
	jmp	.L142
.L190:
	nop
	jmp	.L142
.L191:
	nop
	jmp	.L142
.L192:
	nop
	jmp	.L142
.L193:
	nop
	jmp	.L142
.L195:
	nop
	jmp	.L142
.L196:
	nop
	jmp	.L142
.L197:
	nop
.L142:
	cmpl	$0, -52(%rbp)
	je	.L175
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_hdr_protector_cleanup@PLT
.L175:
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	leaq	.LC32(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$2925, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC32(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$2926, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	test_wire_pkt_hdr_actual, .-test_wire_pkt_hdr_actual
	.section	.rodata
	.align 8
.LC75:
	.string	"test_wire_pkt_hdr_actual(tidx, repeat, cipher, t->expected_len)"
	.align 8
.LC76:
	.string	"test_wire_pkt_hdr_actual(tidx, repeat, cipher, i)"
	.text
	.type	test_wire_pkt_hdr_inner, @function
test_wire_pkt_hdr_inner:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	$0, -4(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	pkt_hdr_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rcx
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	test_wire_pkt_hdr_actual
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC75(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$2937, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L205
	movq	$0, -16(%rbp)
	jmp	.L201
.L203:
	movq	-16(%rbp), %rcx
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	test_wire_pkt_hdr_actual
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$2943, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L206
	addq	$1, -16(%rbp)
.L201:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L203
	movl	$1, -4(%rbp)
	jmp	.L200
.L205:
	nop
	jmp	.L200
.L206:
	nop
.L200:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	test_wire_pkt_hdr_inner, .-test_wire_pkt_hdr_inner
	.section	.rodata
.LC77:
	.string	"counts_u[cipher][i]"
.LC78:
	.string	"counts_c[cipher][i]"
	.text
	.type	test_hdr_prot_stats, @function
test_hdr_prot_stats:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L208
.L214:
	movq	$0, -16(%rbp)
	jmp	.L209
.L213:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	counts_u(%rip), %rax
	movl	(%rdx,%rax), %esi
	leaq	.LC72(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2964, %esi
	movq	%rax, %rdi
	call	test_uint_gt@PLT
	testl	%eax, %eax
	je	.L216
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	leaq	counts_c(%rip), %rax
	movl	(%rdx,%rax), %esi
	leaq	.LC72(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$2966, %esi
	movq	%rax, %rdi
	call	test_uint_gt@PLT
	testl	%eax, %eax
	je	.L217
	addq	$1, -16(%rbp)
.L209:
	cmpq	$36, -16(%rbp)
	jbe	.L213
	addq	$1, -24(%rbp)
.L208:
	cmpq	$2, -24(%rbp)
	jbe	.L214
	movl	$1, -4(%rbp)
	jmp	.L211
.L216:
	nop
	jmp	.L211
.L217:
	nop
.L211:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	test_hdr_prot_stats, .-test_hdr_prot_stats
	.type	test_wire_pkt_hdr, @function
test_wire_pkt_hdr:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$240, -20(%rbp)
	jne	.L219
	call	test_hdr_prot_stats
	jmp	.L220
.L219:
	movl	-20(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%eax, %edx
	andl	$3, %edx
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movl	-20(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-12(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	test_wire_pkt_hdr_inner
.L220:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	test_wire_pkt_hdr, .-test_wire_pkt_hdr
	.section	.rodata
	.align 32
	.type	tx_script_1_body, @object
	.size	tx_script_1_body, 1162
tx_script_1_body:
	.base64	"BgBA8QEAAO0DA+v4+lbxKTm5WEo4lkcuxAu4Y8/T6GgE/jpH8GoraUhMAAAEEwETAgEAAMAAAAAQAA4AAAtleGFtcGxlLmNvbf8BAAEAAAoACAAGAB0AFwAYABAABwAFBGFscG4ABQAFAQAAAAAAMwAmACQAHQAgk3Cyycqkf7q69FWf7bp1PeFx+nH1DxzhXUPplOx010gAKwADAgMEAA0AEAAOBAMFAwYDAgMIBAgFCAYALQACAQEAHAACQAEAOQAyBAj//////////wUEgAD//wcEgAD//wgBEAEEgAB1MAkBEA8Ig5TI8D5RVwgGBIAA//8="
	.zero	917
	.align 32
	.type	tx_script_1_dgram, @object
	.size	tx_script_1_dgram, 1200
tx_script_1_dgram:
	.base64	"wAAAAAEIg5TI8D5RVwgAAESee5rsNNGxyY3XaJ+47BHSQrEj3JvYurk2tH2S7DVsC6t99ZdtJ81En2MwAJnzmRwmDsTGDRezH4QpFXuzWhKCpkOo0iYsrWdQDK245zeMjrdTnsTUkF/tG+4fyKr7oXx1Dix6zgHmAF+A/LffYhIwyDcRs5ND+gKM6n9/tf+J6sIwgkmgIlIVXiNHtj1YxUV6/YTQXf/9sgOShEroEhVGgunPAS+QIabwvhfd0MIITc4l/5sGzeU10Pkgotsb82LCPlltEaT1ps85SIOKOuxOFdr4UApu9p7E4/62sdmOYQrIt+w/r2rXYLe60dtL"
	.base64	"o0heipTcJQrj/bQe0V+2qOXroPw91gvI4wxcQoflOAXbBZrgZI2y9kJk7V45vi4g2C31ZtqN1ZmMyr2uBTBgrmx7Q3joRtKfN+17TqnsXYLnlht/JakyOFH2gdWCNjql+Jk39aZyWL9jrW8aCx2W29T63fzvxSZrpmEXIjlckGVWvlKv4/VlY2rRsX1Qi3PYdD7rUkviKz3LwsdGjVQRnHRoRJoT2OO5WBGhmPNJHePn/pQrMwQHq/gqTtfBsxFmOsaYkPQVcBWFPZHpIwN8InozzdXsKByj95xEVGudkMoA8GTJnj3ZeRHTn+nF0LI6IpojTLNhhsSBnoucWSdy"
	.base64	"ZjIpHWpBghHMKWLiD+R/6z7fMw8sYDqdSMD8tWmdv+WJZCXFusSu6C5XqFqvTiUT5PBXlrB7ou5H2AUG+NLCXlD9FN5x5sQYVZMC+Tmw4avVdvJ5xLLg/rhcHyj/GPWIkf/vEy7vL6CTRq7jPCjrEw/yj1t2aVMzQRMhGZbSABGhmOP8Qz+fJUEBCuF8G/ICWA9gR0cvs2hX/oQ7GfWYQAndwyQEToR6T0oKs09xlZXeNyUtYjU2XpuEOSsGEIU0nXMgOkoT6W9UMuwP1KHuZazN1eOQTfVMHaUQsP8g3MDHf8ssDg62BcsFBNuHYyzz2LTa5ucFdp0d41QnASPL"
	.base64	"EUUO/GCsR2g9e40PgRNlVl/ZjEyOuTa8q40Gn8M72AGwOt6i4fvFqkY9CMoZiW0r9ZoHG4UebCOQUhcvKWv7XnJAR5CiGBAU87lKTpfRF7Q4EwNozDnbstGYBlrjmGVHkmzSFi9Aop8MPIdFwPUPujhS5WbURXXCnTmgPwzachmEtvRAWR81XhLUOf8VCqt2E0mdvUmtq8hnbu8COxW2W/xcoGlIEJ8j81DbghI1NeuKdDO9q8uQknGm7Ly1i5NqiM1Ojy5v9YABdfETJT2PqcqIhcL1UuZX3GA/JS4ajjCPdvC+eeL7j11fu+LjDsrdIgcjyMCuqAeM38s4aCY/"
	.base64	"+PCUAFTaSHgYk6fkmtWv9K8wDNgEprYnmrP/OvtkSRyFGUqrdg1YpgZlT59EAOizhZE1b79kJayibchSRCWf8rGcQbn5bzyp7B3eQ02n0tOSuQXd89H5r5PRr1lQvUk/WqcxtAVt8xvSZ7a5CgeYMar1eb4KOQExN6rG1AT1GM/UaEBkfni/5wbKTPXpxUU+n3z9K4tMjRaaROVciNSpp/lHQkHiIa9EhgAYqwhWly4ZTNk0"
	.data
	.align 32
	.type	tx_script_1_hdr, @object
	.size	tx_script_1_hdr, 88
tx_script_1_hdr:
	.byte	1
	.byte	16
	.byte	0
	.zero	1
	.long	1
	.byte	8
	.base64	"g5TI8D5RVwgA"
	.zero	11
	.byte	0
	.zero	2
	.zero	18
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	5555
	.quad	0
	.section	.data.rel.ro.local
	.align 16
	.type	tx_script_1_iovec, @object
	.size	tx_script_1_iovec, 16
tx_script_1_iovec:
	.quad	tx_script_1_body
	.quad	1162
	.align 32
	.type	tx_script_1_pkt, @object
	.size	tx_script_1_pkt, 56
tx_script_1_pkt:
	.quad	tx_script_1_hdr
	.quad	tx_script_1_iovec
	.quad	1
	.quad	0
	.quad	0
	.quad	2
	.long	0
	.zero	4
	.align 32
	.type	tx_script_1, @object
	.size	tx_script_1, 192
tx_script_1:
	.byte	3
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	tx_script_1_hdr+8
	.byte	1
	.zero	7
	.quad	0
	.quad	0
	.quad	tx_script_1_pkt
	.long	0
	.long	0
	.quad	0
	.byte	5
	.zero	7
	.quad	tx_script_1_dgram
	.quad	1200
	.quad	0
	.long	0
	.long	0
	.quad	0
	.byte	0
	.zero	47
	.section	.rodata
	.align 32
	.type	tx_script_2_body, @object
	.size	tx_script_2_body, 99
tx_script_2_body:
	.base64	"AgAAAAAGAEBaAgAAVgMD7vzn97N7odFjLpZneCXd9zmIz8eYJd9WbcVDC5oEWhIAEwEAAC4AMwAkAB0AIJ08lA2JaQuE0IpgmTwUTspoTRCBKHyDTVMRvPMrudoaACsAAgME"
	.align 32
	.type	tx_script_2_dgram, @object
	.size	tx_script_2_dgram, 135
tx_script_2_dgram:
	.base64	"zwAAAAEACPBnpVAqQmK1AEB1wNlaSCzQmRzSWwqsQGpYFrY5QQDzehxpeXVUeAuzjMWpn17eTPc8PsJJOhg5s9vLo/bqRsW3aE3zVI593rnDv5xzzD873tdLViv7GfuEAi+O9M3ZN5XXfQbtu3qvL1iJGFCrvco9IDmMJ2RWy8QhWEB90HTu"
	.data
	.align 32
	.type	tx_script_2_hdr, @object
	.size	tx_script_2_hdr, 88
tx_script_2_hdr:
	.byte	1
	.byte	8
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	8
	.base64	"8GelUCpCYrUA"
	.zero	11
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	5555
	.quad	0
	.section	.data.rel.ro.local
	.align 16
	.type	tx_script_2_iovec, @object
	.size	tx_script_2_iovec, 16
tx_script_2_iovec:
	.quad	tx_script_2_body
	.quad	99
	.align 32
	.type	tx_script_2_pkt, @object
	.size	tx_script_2_pkt, 56
tx_script_2_pkt:
	.quad	tx_script_2_hdr
	.quad	tx_script_2_iovec
	.quad	1
	.quad	0
	.quad	0
	.quad	1
	.long	0
	.zero	4
	.align 32
	.type	tx_script_2, @object
	.size	tx_script_2, 192
tx_script_2:
	.byte	3
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	1
	.quad	tx_script_1_hdr+8
	.byte	1
	.zero	7
	.quad	0
	.quad	0
	.quad	tx_script_2_pkt
	.long	0
	.long	0
	.quad	0
	.byte	5
	.zero	7
	.quad	tx_script_2_dgram
	.quad	135
	.quad	0
	.long	0
	.long	0
	.quad	0
	.byte	0
	.zero	47
	.section	.rodata
	.type	tx_script_3_body, @object
	.size	tx_script_3_body, 1
tx_script_3_body:
	.ascii	"\001"
	.align 16
	.type	tx_script_3_dgram, @object
	.size	tx_script_3_dgram, 21
tx_script_3_dgram:
	.base64	"TP5BiWVeXNVcQfaQgFddeZnCWlv7"
	.align 32
	.type	tx_script_3_secret, @object
	.size	tx_script_3_secret, 32
tx_script_3_secret:
	.base64	"msMSp/h3Ro6+aUInSK0AoVRD8YIDoH1gYPaI8w8hYys="
	.data
	.align 32
	.type	tx_script_3_hdr, @object
	.size	tx_script_3_hdr, 88
tx_script_3_hdr:
	.byte	5
	.byte	12
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	0
	.zero	2
	.zero	18
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	5555
	.quad	0
	.section	.data.rel.ro.local
	.align 16
	.type	tx_script_3_iovec, @object
	.size	tx_script_3_iovec, 16
tx_script_3_iovec:
	.quad	tx_script_3_body
	.quad	1
	.align 32
	.type	tx_script_3_pkt, @object
	.size	tx_script_3_pkt, 56
tx_script_3_pkt:
	.quad	tx_script_3_hdr
	.quad	tx_script_3_iovec
	.quad	1
	.quad	0
	.quad	0
	.quad	654360564
	.long	0
	.zero	4
	.align 32
	.type	tx_script_3, @object
	.size	tx_script_3, 192
tx_script_3:
	.byte	2
	.zero	7
	.quad	tx_script_3_secret
	.quad	32
	.quad	0
	.long	3
	.long	3
	.quad	0
	.byte	1
	.zero	7
	.quad	0
	.quad	0
	.quad	tx_script_3_pkt
	.long	0
	.long	0
	.quad	0
	.byte	5
	.zero	7
	.quad	tx_script_3_dgram
	.quad	21
	.quad	0
	.long	0
	.long	0
	.quad	0
	.byte	0
	.zero	47
	.section	.rodata
	.align 32
	.type	tx_script_4_secret, @object
	.size	tx_script_4_secret, 32
tx_script_4_secret:
	.base64	"cILARWFN/gR2pk7wOOZj2d1KdRaooAZa8lb9hHj99l4="
	.align 32
	.type	tx_script_4a_body, @object
	.size	tx_script_4a_body, 35
tx_script_4a_body:
	.base64	"AgMJAAMMADZJJ20gaGF2aW5nIGEgd29uZGVyZnVsIHRpbWU="
	.align 32
	.type	tx_script_4a_dgram, @object
	.size	tx_script_4a_dgram, 58
tx_script_4a_dgram:
	.base64	"R25OvUl+vRUc0T7IzUOHa4Tb6waLiq437ZzrvM8NPPChb+7SfAdu0b5AatRTOJ5jtd41CbJ4lOQrNw=="
	.data
	.align 32
	.type	tx_script_4a_hdr, @object
	.size	tx_script_4a_hdr, 88
tx_script_4a_hdr:
	.byte	5
	.byte	8
	.byte	0
	.zero	1
	.long	0
	.byte	4
	.string	"nN\275I"
	.zero	15
	.byte	0
	.zero	2
	.zero	18
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	5555
	.quad	0
	.section	.data.rel.ro.local
	.align 16
	.type	tx_script_4a_iovec, @object
	.size	tx_script_4a_iovec, 16
tx_script_4a_iovec:
	.quad	tx_script_4a_body
	.quad	35
	.align 32
	.type	tx_script_4a_pkt, @object
	.size	tx_script_4a_pkt, 56
tx_script_4a_pkt:
	.quad	tx_script_4a_hdr
	.quad	tx_script_4a_iovec
	.quad	1
	.quad	0
	.quad	0
	.quad	4
	.long	0
	.zero	4
	.section	.rodata
	.align 32
	.type	tx_script_4b_body, @object
	.size	tx_script_4b_body, 36
tx_script_4b_body:
	.base64	"AgQHAAAMAEBRSSdtIGhhdmluZyBhIHdvbmRlcmZ1bCB0aW1l"
	.align 32
	.type	tx_script_4b_dgram, @object
	.size	tx_script_4b_dgram, 59
tx_script_4b_dgram:
	.base64	"WG5OvUmkQzPqETps9SDvVY0l4jsOjOoX/Ct6q/o9B9qnfMdHggJGQE8BrbKdl9v8nEtGsVp/CxKvSd8="
	.data
	.align 32
	.type	tx_script_4b_hdr, @object
	.size	tx_script_4b_hdr, 88
tx_script_4b_hdr:
	.byte	5
	.byte	10
	.byte	0
	.zero	1
	.long	0
	.byte	4
	.string	"nN\275I"
	.zero	15
	.byte	0
	.zero	2
	.zero	18
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	5555
	.quad	0
	.section	.data.rel.ro.local
	.align 16
	.type	tx_script_4b_iovec, @object
	.size	tx_script_4b_iovec, 16
tx_script_4b_iovec:
	.quad	tx_script_4b_body
	.quad	36
	.align 32
	.type	tx_script_4b_pkt, @object
	.size	tx_script_4b_pkt, 56
tx_script_4b_pkt:
	.quad	tx_script_4b_hdr
	.quad	tx_script_4b_iovec
	.quad	1
	.quad	0
	.quad	0
	.quad	5
	.long	0
	.zero	4
	.section	.rodata
	.align 32
	.type	tx_script_4c_body, @object
	.size	tx_script_4c_body, 36
tx_script_4c_body:
	.base64	"AgkOAAAMAEDYSSdtIGhhdmluZyBhIHdvbmRlcmZ1bCB0aW1l"
	.align 32
	.type	tx_script_4c_dgram, @object
	.size	tx_script_4c_dgram, 59
tx_script_4c_dgram:
	.base64	"SW5OvUlN2YW6Jvtog5uUNH3BegW3OEMh4uwrwYF0Ldokur2ZadJW+q4pJLKq2r2CgPG7av2u2g4Jzwk="
	.data
	.align 32
	.type	tx_script_4c_hdr, @object
	.size	tx_script_4c_hdr, 88
tx_script_4c_hdr:
	.byte	5
	.byte	8
	.byte	0
	.zero	1
	.long	0
	.byte	4
	.string	"nN\275I"
	.zero	15
	.byte	0
	.zero	2
	.zero	18
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	5555
	.quad	0
	.section	.data.rel.ro.local
	.align 16
	.type	tx_script_4c_iovec, @object
	.size	tx_script_4c_iovec, 16
tx_script_4c_iovec:
	.quad	tx_script_4c_body
	.quad	36
	.align 32
	.type	tx_script_4c_pkt, @object
	.size	tx_script_4c_pkt, 56
tx_script_4c_pkt:
	.quad	tx_script_4c_hdr
	.quad	tx_script_4c_iovec
	.quad	1
	.quad	0
	.quad	0
	.quad	10
	.long	0
	.zero	4
	.align 32
	.type	tx_script_4, @object
	.size	tx_script_4, 480
tx_script_4:
	.byte	2
	.zero	7
	.quad	tx_script_4_secret
	.quad	32
	.quad	0
	.long	3
	.long	1
	.quad	0
	.byte	1
	.zero	7
	.quad	0
	.quad	0
	.quad	tx_script_4a_pkt
	.long	0
	.long	0
	.quad	0
	.byte	5
	.zero	7
	.quad	tx_script_4a_dgram
	.quad	58
	.quad	0
	.long	0
	.long	0
	.quad	0
	.byte	7
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.byte	1
	.zero	7
	.quad	0
	.quad	0
	.quad	tx_script_4b_pkt
	.long	0
	.long	0
	.quad	0
	.byte	5
	.zero	7
	.quad	tx_script_4b_dgram
	.quad	59
	.quad	0
	.long	0
	.long	0
	.quad	0
	.byte	7
	.zero	7
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	0
	.byte	1
	.zero	7
	.quad	0
	.quad	0
	.quad	tx_script_4c_pkt
	.long	0
	.long	0
	.quad	0
	.byte	5
	.zero	7
	.quad	tx_script_4c_dgram
	.quad	59
	.quad	0
	.long	0
	.long	0
	.quad	0
	.byte	0
	.zero	47
	.section	.rodata
	.align 32
	.type	tx_script_5_body, @object
	.size	tx_script_5_body, 116
tx_script_5_body:
	.base64	"kufG2AllclXl4nME8wdbIZ9Qy7x5xXdaKUNlSfBuwcA66MrSRGndIzGTUgL3Qgd4oYFhnDkHGGluT9ygvkvl8unSpKc0VV7z+JxJjwzIsnVLTS/+BVrdS+YUtNLAk24OhEFNMUOOq83OJETCIOHiyK6jjU4="
	.align 32
	.type	tx_script_5_dgram, @object
	.size	tx_script_5_dgram, 127
tx_script_5_dgram:
	.base64	"8AAAAAEABKkgzMKS58bYCWVyVeXicwTzB1shn1DLvHnFd1opQ2VJ8G7BwDroytJEad0jMZNSAvdCB3ihgWGcOQcYaW5P3KC+S+Xy6dKkpzRVXvP4nEmPDMiydUtNL/4FWt1L5hS00sCTbg6EQU0xQ46rzc4kRMIg4eLIrqONTg=="
	.data
	.align 32
	.type	tx_script_5_hdr, @object
	.size	tx_script_5_hdr, 88
tx_script_5_hdr:
	.byte	4
	.byte	0
	.byte	0
	.zero	1
	.long	1
	.byte	0
	.zero	2
	.zero	18
	.byte	4
	.base64	"qSDMwgA="
	.zero	15
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	5555
	.quad	0
	.section	.data.rel.ro.local
	.align 16
	.type	tx_script_5_iovec, @object
	.size	tx_script_5_iovec, 16
tx_script_5_iovec:
	.quad	tx_script_5_body
	.quad	116
	.align 32
	.type	tx_script_5_pkt, @object
	.size	tx_script_5_pkt, 56
tx_script_5_pkt:
	.quad	tx_script_5_hdr
	.quad	tx_script_5_iovec
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.align 32
	.type	tx_script_5, @object
	.size	tx_script_5, 144
tx_script_5:
	.byte	1
	.zero	7
	.quad	0
	.quad	0
	.quad	tx_script_5_pkt
	.long	0
	.long	0
	.quad	0
	.byte	5
	.zero	7
	.quad	tx_script_5_dgram
	.quad	127
	.quad	0
	.long	0
	.long	0
	.quad	0
	.byte	0
	.zero	47
	.section	.rodata
	.align 8
	.type	tx_script_6_body, @object
	.size	tx_script_6_body, 8
tx_script_6_body:
	.base64	"AAAAAaqaOpo="
	.align 16
	.type	tx_script_6_dgram, @object
	.size	tx_script_6_dgram, 27
tx_script_6_dgram:
	.base64	"gAAAAAAADDU8G5fK+JkROa15HwAAAAGqmjqa"
	.data
	.align 32
	.type	tx_script_6_hdr, @object
	.size	tx_script_6_hdr, 88
tx_script_6_hdr:
	.byte	6
	.byte	0
	.byte	0
	.zero	1
	.long	0
	.byte	0
	.zero	2
	.zero	18
	.byte	12
	.base64	"NTwbl8r4mRE5rXkfAA=="
	.zero	7
	.zero	2
	.zero	2
	.zero	2
	.quad	0
	.quad	0
	.quad	5555
	.quad	0
	.section	.data.rel.ro.local
	.align 16
	.type	tx_script_6_iovec, @object
	.size	tx_script_6_iovec, 16
tx_script_6_iovec:
	.quad	tx_script_6_body
	.quad	8
	.align 32
	.type	tx_script_6_pkt, @object
	.size	tx_script_6_pkt, 56
tx_script_6_pkt:
	.quad	tx_script_6_hdr
	.quad	tx_script_6_iovec
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.align 32
	.type	tx_script_6, @object
	.size	tx_script_6, 144
tx_script_6:
	.byte	1
	.zero	7
	.quad	0
	.quad	0
	.quad	tx_script_6_pkt
	.long	0
	.long	0
	.quad	0
	.byte	5
	.zero	7
	.quad	tx_script_6_dgram
	.quad	27
	.quad	0
	.long	0
	.long	0
	.quad	0
	.byte	0
	.zero	47
	.align 32
	.type	tx_scripts, @object
	.size	tx_scripts, 48
tx_scripts:
	.quad	tx_script_1
	.quad	tx_script_2
	.quad	tx_script_3
	.quad	tx_script_4
	.quad	tx_script_5
	.quad	tx_script_6
	.section	.rodata
.LC79:
	.string	"qtx = ossl_qtx_new(&args)"
	.align 8
.LC80:
	.string	"ossl_qtx_provide_secret(qtx, op->enc_level, op->suite_id, NULL, op->buf, op->buf_len)"
	.align 8
.LC81:
	.string	"ossl_quic_provide_initial_secret(NULL, NULL, op->dcid, (int)op->suite_id, NULL, qtx)"
	.align 8
.LC82:
	.string	"ossl_qtx_discard_enc_level(qtx, op->enc_level)"
.LC83:
	.string	"UINT64_MAX"
.LC84:
	.string	"max_value"
.LC85:
	.string	"old_value"
	.align 8
.LC86:
	.string	"ossl_qtx_write_pkt(qtx, op->pkt)"
.LC87:
	.string	"new_value"
.LC88:
	.string	"old_value + 1"
.LC89:
	.string	"ossl_qtx_pop_net(qtx, &msg)"
.LC90:
	.string	"msg.data"
	.align 8
.LC91:
	.string	"ossl_qtx_trigger_key_update(qtx)"
	.text
	.type	tx_run_script, @function
tx_run_script:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movl	$0, -4(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movq	%xmm0, -64(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movq	$1472, -120(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qtx_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC79(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$3620, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L247
	jmp	.L224
.L244:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$7, %eax
	je	.L225
	cmpl	$7, %eax
	jg	.L226
	cmpl	$6, %eax
	je	.L227
	cmpl	$6, %eax
	jg	.L226
	cmpl	$5, %eax
	je	.L228
	cmpl	$5, %eax
	jg	.L226
	cmpl	$4, %eax
	je	.L229
	cmpl	$4, %eax
	jg	.L226
	cmpl	$3, %eax
	je	.L230
	cmpl	$3, %eax
	jg	.L226
	cmpl	$1, %eax
	je	.L231
	cmpl	$2, %eax
	jne	.L226
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	36(%rax), %edx
	movq	-16(%rbp), %rax
	movl	32(%rax), %esi
	movq	-32(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_qtx_provide_secret@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC80(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$3626, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L248
	jmp	.L223
.L230:
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %r9
	movl	$0, %r8d
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_quic_provide_initial_secret@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$3632, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L249
	jmp	.L223
.L229:
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qtx_discard_enc_level@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC82(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$3639, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L250
	jmp	.L223
.L231:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_to_enc_level
	movl	%eax, -36(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$3, -36(%rbp)
	ja	.L236
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qtx_get_max_epoch_pkt_count@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	leaq	.LC83(%rip), %rcx
	leaq	.LC84(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$3651, %esi
	movq	%rax, %rdi
	call	test_uint64_t_lt@PLT
	testl	%eax, %eax
	je	.L251
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qtx_get_cur_epoch_pkt_count@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	leaq	.LC83(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$3655, %esi
	movq	%rax, %rdi
	call	test_uint64_t_lt@PLT
	testl	%eax, %eax
	je	.L252
.L236:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qtx_write_pkt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC86(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$3659, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L253
	cmpl	$3, -36(%rbp)
	ja	.L254
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_qtx_get_cur_epoch_pkt_count@PLT
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC87(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$3664, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L254
	jmp	.L223
.L228:
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qtx_pop_net@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$3670, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L255
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-88(%rbp), %r9
	movq	-96(%rbp), %r8
	leaq	.LC42(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$3673, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L256
	jmp	.L223
.L227:
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qtx_pop_net@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$3678, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L257
	jmp	.L223
.L225:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qtx_trigger_key_update@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC91(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$3682, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L258
	jmp	.L223
.L226:
	leaq	.LC32(%rip), %rcx
	leaq	.LC49(%rip), %rax
	movl	$3686, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L248:
	nop
	jmp	.L233
.L249:
	nop
	jmp	.L233
.L250:
	nop
	jmp	.L233
.L254:
	nop
	jmp	.L233
.L256:
	nop
	jmp	.L233
.L257:
	nop
	jmp	.L233
.L258:
	nop
.L233:
	addq	$48, -16(%rbp)
.L224:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L244
	movl	$1, -4(%rbp)
	jmp	.L223
.L247:
	nop
	jmp	.L223
.L251:
	nop
	jmp	.L223
.L252:
	nop
	jmp	.L223
.L253:
	nop
	jmp	.L223
.L255:
	nop
.L223:
	cmpq	$0, -32(%rbp)
	je	.L245
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qtx_free@PLT
.L245:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	tx_run_script, .-tx_run_script
	.type	test_tx_script, @function
test_tx_script:
.LFB656:
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
	leaq	tx_scripts(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	tx_run_script
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	test_tx_script, .-test_tx_script
	.section	.rodata
.LC92:
	.string	"test_rx_script"
.LC93:
	.string	"test_wire_pkt_hdr"
.LC94:
	.string	"test_tx_script"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_rx_script(%rip), %rsi
	leaq	.LC92(%rip), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_wire_pkt_hdr(%rip), %rsi
	leaq	.LC93(%rip), %rax
	movl	$1, %ecx
	movl	$241, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_tx_script(%rip), %rsi
	leaq	.LC94(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
