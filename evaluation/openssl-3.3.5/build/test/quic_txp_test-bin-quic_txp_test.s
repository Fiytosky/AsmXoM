	.file	"quic_txp_test.c"
	.text
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB31:
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
.LFE31:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB34:
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
.LFE34:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	ossl_quic_conn_id_eq, @function
ossl_quic_conn_id_eq:
.LFB523:
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
	jne	.L7
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jbe	.L8
.L7:
	movl	$0, %eax
	jmp	.L9
.L8:
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
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	ossl_quic_conn_id_eq, .-ossl_quic_conn_id_eq
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
.LFB614:
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
	jne	.L13
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
.L13:
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
	je	.L14
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
	je	.L14
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
	je	.L14
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
	je	.L14
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
	je	.L14
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
	je	.L14
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
	je	.L14
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
	je	.L14
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
	je	.L14
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
	je	.L14
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
	je	.L14
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
	je	.L14
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
	je	.L14
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
	jne	.L15
.L14:
	movl	$0, -4(%rbp)
.L15:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L16
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
	jne	.L16
	movl	$0, -4(%rbp)
.L16:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$44, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L18
.L17:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$45, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L19
.L18:
	movl	$0, -4(%rbp)
.L19:
	cmpl	$0, -52(%rbp)
	je	.L20
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
	jne	.L20
	movl	$0, -4(%rbp)
.L20:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	cmp_pkt_hdr, .-cmp_pkt_hdr
	.section	.rodata
	.align 16
	.type	scid_1, @object
	.size	scid_1, 21
scid_1:
	.byte	1
	.string	"_"
	.zero	18
	.align 16
	.type	dcid_1, @object
	.size	dcid_1, 21
dcid_1:
	.byte	8
	.base64	"oaKjpKWmp6gA"
	.zero	11
	.align 16
	.type	cid_1, @object
	.size	cid_1, 21
cid_1:
	.byte	8
	.base64	"sbKztLW2t7gA"
	.zero	11
	.align 16
	.type	reset_token_1, @object
	.size	reset_token_1, 16
reset_token_1:
	.base64	"mYh3ZlVEMyIRqrvM3e7/Eg=="
	.align 32
	.type	secret_1, @object
	.size	secret_1, 32
secret_1:
	.string	"\001"
	.zero	30
	.text
	.type	fake_now, @function
fake_now:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_now@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	fake_now, .-fake_now
	.type	helper_cleanup, @function
helper_cleanup:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	1088(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_pkt_release@PLT
	movq	-24(%rbp), %rax
	movq	$0, 1088(%rax)
	movl	$0, -12(%rbp)
	jmp	.L25
.L26:
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ackm_on_pkt_space_discarded@PLT
	addl	$1, -12(%rbp)
.L25:
	cmpl	$2, -12(%rbp)
	jbe	.L26
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_free@PLT
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qtx_free@PLT
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_txpim_free@PLT
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_free@PLT
	movq	-24(%rbp), %rax
	movq	832(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-24(%rbp), %rax
	movq	840(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L27:
	movq	-24(%rbp), %rax
	movzbl	992(%rax), %eax
	testb	%al, %al
	je	.L28
	movq	-24(%rbp), %rax
	addq	$792, %rax
	movq	%rax, %rdi
	call	ossl_statm_destroy@PLT
.L28:
	movq	-24(%rbp), %rax
	movzbl	993(%rax), %eax
	testb	%al, %al
	je	.L29
	movq	-24(%rbp), %rax
	addq	$848, %rax
	movq	%rax, %rdi
	call	ossl_quic_stream_map_cleanup@PLT
.L29:
	movq	$0, -8(%rbp)
	jmp	.L30
.L31:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$34, %rdx
	movq	16(%rax,%rdx,8), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_free@PLT
	addq	$1, -8(%rbp)
.L30:
	cmpq	$2, -8(%rbp)
	jbe	.L31
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_free@PLT
	movq	-24(%rbp), %rax
	movq	1008(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_free@PLT
	movq	-24(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_demux_free@PLT
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	helper_cleanup, .-helper_cleanup
	.type	demux_default_handler, @function
demux_default_handler:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L36
	leaq	dcid_1(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rax
	movq	1008(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_inject_urxe@PLT
	jmp	.L32
.L36:
	nop
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	demux_default_handler, .-demux_default_handler
	.section	.rodata
	.align 8
.LC31:
	.string	"BIO_new_bio_dgram_pair(&h->bio1, 0, &h->bio2, 0)"
.LC32:
	.string	"../test/quic_txp_test.c"
	.align 8
.LC33:
	.string	"h->args.qtx = ossl_qtx_new(&h->qtx_args)"
	.align 8
.LC34:
	.string	"h->args.txpim = ossl_quic_txpim_new()"
	.align 8
.LC35:
	.string	"h->args.cfq = ossl_quic_cfq_new()"
	.align 8
.LC36:
	.string	"ossl_quic_txfc_init(&h->conn_txfc, NULL)"
	.align 8
.LC37:
	.string	"ossl_quic_rxfc_init(&h->conn_rxfc, NULL, 2 * 1024 * 1024, 10 * 1024 * 1024, fake_now, NULL)"
	.align 8
.LC38:
	.string	"ossl_quic_rxfc_init(&h->stream_rxfc, &h->conn_rxfc, 1 * 1024 * 1024, 5 * 1024 * 1024, fake_now, NULL)"
	.align 8
.LC39:
	.string	"ossl_quic_rxfc_init(&h->max_streams_bidi_rxfc, NULL, 100, 100, fake_now, NULL)"
	.align 8
.LC40:
	.string	"ossl_quic_rxfc_init(&h->max_streams_uni_rxfc, NULL, 100, 100, fake_now, NULL)"
.LC41:
	.string	"ossl_statm_init(&h->statm)"
	.align 8
.LC42:
	.string	"h->cc_data = h->cc_method->new(fake_now, NULL)"
	.align 8
.LC43:
	.string	"h->args.ackm = ossl_ackm_new(fake_now, NULL, &h->statm, h->cc_method, h->cc_data, 0)"
	.align 8
.LC44:
	.string	"ossl_quic_stream_map_init(&h->qsm, NULL, NULL, &h->max_streams_bidi_rxfc, &h->max_streams_uni_rxfc, 0)"
	.align 8
.LC45:
	.string	"h->args.crypto[i] = ossl_quic_sstream_new(4096)"
	.align 8
.LC46:
	.string	"h->txp = ossl_quic_tx_packetiser_new(&h->args)"
	.align 8
.LC47:
	.string	"h->demux = ossl_quic_demux_new(h->bio2, 8, fake_now, NULL)"
	.align 8
.LC48:
	.string	"h->qrx = ossl_qrx_new(&h->qrx_args)"
	.text
	.type	helper_init, @function
helper_init:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$1432, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	leaq	368(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$360, %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_bio_dgram_pair@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$130, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 328(%rax)
	movq	-24(%rbp), %rax
	movq	$1200, 336(%rax)
	movq	-24(%rbp), %rax
	addq	$312, %rax
	movq	%rax, %rdi
	call	ossl_qtx_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 168(%rdx)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$136, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	call	ossl_quic_txpim_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$139, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	call	ossl_quic_cfq_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 184(%rdx)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$142, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L62
	movq	-24(%rbp), %rax
	addq	$376, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_txfc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$145, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L63
	movq	-24(%rbp), %rax
	addq	$408, %rax
	leaq	fake_now(%rip), %rdx
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$10485760, %ecx
	movl	$2097152, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$148, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L64
	movq	-24(%rbp), %rax
	leaq	408(%rax), %rsi
	movq	-24(%rbp), %rax
	addq	$504, %rax
	leaq	fake_now(%rip), %rdx
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$5242880, %ecx
	movl	$1048576, %edx
	movq	%rax, %rdi
	call	ossl_quic_rxfc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$155, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L65
	movq	-24(%rbp), %rax
	addq	$600, %rax
	leaq	fake_now(%rip), %rdx
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$100, %ecx
	movl	$100, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$162, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L66
	movq	-24(%rbp), %rax
	addq	$696, %rax
	leaq	fake_now(%rip), %rdx
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$100, %ecx
	movl	$100, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rxfc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$168, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L47
	movq	-24(%rbp), %rax
	addq	$792, %rax
	movq	%rax, %rdi
	call	ossl_statm_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$173, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L67
.L47:
	movq	-24(%rbp), %rax
	movb	$1, 992(%rax)
	movq	-24(%rbp), %rax
	movq	ossl_cc_dummy_method@GOTPCREL(%rip), %rdx
	movq	%rdx, 840(%rax)
	movq	-24(%rbp), %rax
	movq	840(%rax), %rax
	movq	(%rax), %rax
	leaq	fake_now(%rip), %rdx
	movl	$0, %esi
	movq	%rdx, %rdi
	call	*%rax
	movq	-24(%rbp), %rdx
	movq	%rax, 832(%rdx)
	movq	-24(%rbp), %rax
	movq	832(%rax), %rax
	leaq	.LC42(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$179, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L68
	movq	-24(%rbp), %rax
	movq	832(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	840(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$792, %rdx
	leaq	fake_now(%rip), %rdi
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %esi
	call	ossl_ackm_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 192(%rdx)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$182, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	movq	-24(%rbp), %rax
	leaq	696(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	600(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$848, %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$189, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movq	-24(%rbp), %rax
	movb	$1, 993(%rax)
	movq	$0, -16(%rbp)
	jmp	.L51
.L53:
	movl	$4096, %edi
	call	ossl_quic_sstream_new@PLT
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	addq	$34, %rcx
	movq	%rax, 16(%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$34, %rdx
	movq	16(%rax,%rdx,8), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$198, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L71
	addq	$1, -16(%rbp)
.L51:
	cmpq	$2, -16(%rbp)
	jbe	.L53
	movq	-24(%rbp), %rax
	movb	$1, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$95, 9(%rax)
	movq	$0, 17(%rax)
	movl	$0, 25(%rax)
	movq	-24(%rbp), %rax
	movb	$8, 29(%rax)
	movq	-24(%rbp), %rax
	movabsq	$-6293878723864976735, %rsi
	movl	$0, %edi
	movq	%rsi, 30(%rax)
	movq	%rdi, 38(%rax)
	movl	$0, 46(%rax)
	movq	-24(%rbp), %rax
	leaq	848(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-24(%rbp), %rax
	leaq	376(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 208(%rax)
	movq	-24(%rbp), %rax
	leaq	408(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-24(%rbp), %rax
	leaq	600(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 224(%rax)
	movq	-24(%rbp), %rax
	leaq	696(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-24(%rbp), %rax
	movq	840(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 240(%rax)
	movq	-24(%rbp), %rax
	movq	832(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-24(%rbp), %rax
	leaq	fake_now(%rip), %rdx
	movq	%rdx, 256(%rax)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$212, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L72
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	leaq	fake_now(%rip), %rdx
	movl	$0, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_quic_demux_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 1000(%rdx)
	movq	-24(%rbp), %rax
	movq	1000(%rax), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$215, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	movq	-24(%rbp), %rax
	movq	1000(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	demux_default_handler(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_demux_set_default_handler@PLT
	movq	-24(%rbp), %rax
	movq	1000(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 1032(%rax)
	movq	-24(%rbp), %rax
	movq	$8, 1040(%rax)
	movq	-24(%rbp), %rax
	movq	$32, 1048(%rax)
	movq	-24(%rbp), %rax
	addq	$1016, %rax
	movq	%rax, %rdi
	call	ossl_qrx_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 1008(%rdx)
	movq	-24(%rbp), %rax
	movq	1008(%rax), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$225, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	movq	-24(%rbp), %rax
	movq	1008(%rax), %rax
	movq	%rax, %rdi
	call	ossl_qrx_allow_1rtt_processing@PLT
	movl	$1, -4(%rbp)
	jmp	.L39
.L59:
	nop
	jmp	.L39
.L60:
	nop
	jmp	.L39
.L61:
	nop
	jmp	.L39
.L62:
	nop
	jmp	.L39
.L63:
	nop
	jmp	.L39
.L64:
	nop
	jmp	.L39
.L65:
	nop
	jmp	.L39
.L66:
	nop
	jmp	.L39
.L67:
	nop
	jmp	.L39
.L68:
	nop
	jmp	.L39
.L69:
	nop
	jmp	.L39
.L70:
	nop
	jmp	.L39
.L71:
	nop
	jmp	.L39
.L72:
	nop
	jmp	.L39
.L73:
	nop
	jmp	.L39
.L74:
	nop
.L39:
	cmpl	$0, -4(%rbp)
	jne	.L57
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	helper_cleanup
.L57:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	helper_init, .-helper_init
	.type	schedule_handshake_done, @function
schedule_handshake_done:
.LFB619:
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
	call	ossl_quic_tx_packetiser_schedule_handshake_done@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	schedule_handshake_done, .-schedule_handshake_done
	.type	schedule_ack_eliciting_app, @function
schedule_ack_eliciting_app:
.LFB620:
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
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_schedule_ack_eliciting@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	schedule_ack_eliciting_app, .-schedule_ack_eliciting_app
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	script_1, @object
	.size	script_1, 576
script_1:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	schedule_handshake_done
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	32
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	30
	.zero	32
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.align 32
	.type	script_2, @object
	.size	script_2, 576
script_2:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	schedule_ack_eliciting_app
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	32
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	1
	.zero	32
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.section	.rodata
	.align 8
.LC49:
	.string	"ossl_quic_rxfc_on_rx_stream_frame(&h->stream_rxfc, cwm, 0)"
	.align 8
.LC50:
	.string	"ossl_quic_rxfc_on_retire(&h->stream_rxfc, cwm, ossl_ticks2time(OSSL_TIME_MS))"
	.text
	.type	schedule_max_data, @function
schedule_max_data:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$504, %rax
	movq	%rax, %rdi
	call	ossl_quic_rxfc_get_cwm@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	504(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_rxfc_on_rx_stream_frame@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$374, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L80
	movl	$1000000, %edi
	call	ossl_ticks2time
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	leaq	504(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_rxfc_on_retire@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$375, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L81
.L80:
	movl	$0, %eax
	jmp	.L82
.L81:
	movl	$1, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	schedule_max_data, .-schedule_max_data
	.section	.data.rel.ro.local
	.align 32
	.type	script_3, @object
	.size	script_3, 576
script_3:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	schedule_max_data
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	40
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	16
	.zero	32
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.text
	.type	free_buf_mem, @function
free_buf_mem:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	free_buf_mem, .-free_buf_mem
	.section	.rodata
.LC51:
	.string	"buf_mem = BUF_MEM_new()"
.LC52:
	.string	"WPACKET_init(&wpkt, buf_mem)"
	.align 8
.LC53:
	.string	"ossl_quic_wire_encode_frame_new_conn_id(&wpkt, &ncid)"
	.align 8
.LC54:
	.string	"WPACKET_get_total_written(&wpkt, &l)"
	.align 8
.LC55:
	.string	"cfq_item = ossl_quic_cfq_add_frame(h->args.cfq, 1, QUIC_PN_SPACE_APP, OSSL_QUIC_FRAME_TYPE_NEW_CONN_ID, 0, (unsigned char *)buf_mem->data, l, free_buf_mem, buf_mem)"
	.text
	.type	schedule_cfq_new_conn_id, @function
schedule_cfq_new_conn_id:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movq	%xmm0, -96(%rbp)
	movq	$2345, -144(%rbp)
	movq	$1234, -136(%rbp)
	movb	$8, -128(%rbp)
	movabsq	$-5136435958455749967, %rax
	movl	$0, %edx
	movq	%rax, -127(%rbp)
	movq	%rdx, -119(%rbp)
	movl	$0, -111(%rbp)
	movq	reset_token_1(%rip), %rax
	movq	8+reset_token_1(%rip), %rdx
	movq	%rax, -107(%rbp)
	movq	%rdx, -99(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$419, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L93
	movq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$422, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	leaq	-144(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_new_conn_id@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$425, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L88
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	jmp	.L86
.L88:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$432, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-152(%rbp), %rax
	movq	184(%rax), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	leaq	free_buf_mem(%rip), %rcx
	pushq	%rcx
	pushq	%rdx
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$24, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_add_frame@PLT
	addq	$32, %rsp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$435, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L96
	movl	$1, -4(%rbp)
	jmp	.L86
.L93:
	nop
	jmp	.L86
.L94:
	nop
	jmp	.L86
.L95:
	nop
	jmp	.L86
.L96:
	nop
.L86:
	cmpl	$0, -4(%rbp)
	jne	.L91
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
.L91:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	schedule_cfq_new_conn_id, .-schedule_cfq_new_conn_id
	.section	.rodata
.LC56:
	.string	"2345"
.LC57:
	.string	"h->frame.new_conn_id.seq_num"
.LC58:
	.string	"1234"
	.align 8
.LC59:
	.string	"h->frame.new_conn_id.retire_prior_to"
.LC60:
	.string	"&cid_1"
.LC61:
	.string	"&h->frame.new_conn_id.conn_id"
.LC62:
	.string	"reset_token_1"
	.align 8
.LC63:
	.string	"&h->frame.new_conn_id.stateless_reset.token"
	.text
	.type	check_cfq_new_conn_id, @function
check_cfq_new_conn_id:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1120(%rax), %rsi
	leaq	.LC56(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$2345, %r9d
	movq	%rsi, %r8
	movl	$452, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L98
	movq	-8(%rbp), %rax
	movq	1128(%rax), %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1234, %r9d
	movq	%rsi, %r8
	movl	$453, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L98
	movq	-8(%rbp), %rax
	leaq	1136(%rax), %rdi
	leaq	.LC60(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	$21
	leaq	cid_1(%rip), %rsi
	pushq	%rsi
	movl	$21, %r9d
	movq	%rdi, %r8
	movl	$454, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L98
	movq	-8(%rbp), %rax
	leaq	1157(%rax), %rdi
	leaq	.LC62(%rip), %rcx
	leaq	.LC63(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	$16
	leaq	reset_token_1(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$456, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L99
.L98:
	movl	$0, %eax
	jmp	.L100
.L99:
	movl	$1, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	check_cfq_new_conn_id, .-check_cfq_new_conn_id
	.section	.data.rel.ro.local
	.align 32
	.type	script_4, @object
	.size	script_4, 624
script_4:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	schedule_cfq_new_conn_id
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	128
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	24
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	check_cfq_new_conn_id
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.section	.rodata
	.type	token_1, @object
	.size	token_1, 6
token_1:
	.base64	"EBESExQV"
	.align 8
.LC64:
	.string	"ossl_quic_wire_encode_frame_new_token(&wpkt, token_1, sizeof(token_1))"
	.align 8
.LC65:
	.string	"cfq_item = ossl_quic_cfq_add_frame(h->args.cfq, 1, QUIC_PN_SPACE_APP, OSSL_QUIC_FRAME_TYPE_NEW_TOKEN, 0, (unsigned char *)buf_mem->data, l, free_buf_mem, buf_mem)"
	.text
	.type	schedule_cfq_new_token, @function
schedule_cfq_new_token:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -88(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC51(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$494, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L110
	movq	-16(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC52(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$497, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L111
	leaq	token_1(%rip), %rcx
	leaq	-80(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_frame_new_token@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$500, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L105
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	jmp	.L103
.L105:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$508, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	184(%rax), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	leaq	free_buf_mem(%rip), %rcx
	pushq	%rcx
	pushq	%rdx
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$7, %ecx
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_quic_cfq_add_frame@PLT
	addq	$32, %rsp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC65(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$511, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L113
	movl	$1, -4(%rbp)
	jmp	.L103
.L110:
	nop
	jmp	.L103
.L111:
	nop
	jmp	.L103
.L112:
	nop
	jmp	.L103
.L113:
	nop
.L103:
	cmpl	$0, -4(%rbp)
	jne	.L108
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
.L108:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	schedule_cfq_new_token, .-schedule_cfq_new_token
	.section	.rodata
.LC66:
	.string	"token_1"
.LC67:
	.string	"h->frame.new_token.token"
	.text
	.type	check_cfq_new_token, @function
check_cfq_new_token:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1128(%rax), %r8
	movq	-8(%rbp), %rax
	movq	1120(%rax), %rdi
	leaq	.LC66(%rip), %rcx
	leaq	.LC67(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	$6
	leaq	token_1(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$528, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L116
.L115:
	movl	$1, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	check_cfq_new_token, .-check_cfq_new_token
	.section	.data.rel.ro.local
	.align 32
	.type	script_5, @object
	.size	script_5, 624
script_5:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	schedule_cfq_new_token
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	512
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	7
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	check_cfq_new_token
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.section	.rodata
	.align 8
.LC68:
	.string	"ossl_ackm_on_rx_packet(h->args.ackm, &rx_pkt)"
	.text
	.type	schedule_ack, @function
schedule_ack:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L118
.L121:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, %edi
	call	fake_now
	movq	%rax, -24(%rbp)
	movzbl	-16(%rbp), %eax
	andl	$-4, %eax
	orl	$2, %eax
	movb	%al, -16(%rbp)
	movzbl	-16(%rbp), %eax
	orl	$4, %eax
	movb	%al, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	192(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ackm_on_rx_packet@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$566, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L119
	movl	$0, %eax
	jmp	.L122
.L119:
	addq	$1, -8(%rbp)
.L118:
	cmpq	$4, -8(%rbp)
	jbe	.L121
	movl	$1, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	schedule_ack, .-schedule_ack
	.section	.data.rel.ro.local
	.align 32
	.type	script_6, @object
	.size	script_6, 576
script_6:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	schedule_ack
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	512
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	2
	.zero	32
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.align 32
	.type	script_7, @object
	.size	script_7, 720
script_7:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	schedule_cfq_new_token
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	schedule_ack
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	512
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	2
	.zero	32
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	7
	.zero	32
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.section	.rodata
	.align 8
	.type	crypto_1, @object
	.size	crypto_1, 9
crypto_1:
	.base64	"AQIDBAUGBwgJ"
	.section	.data.rel.ro.local
	.align 32
	.type	script_8, @object
	.size	script_8, 576
script_8:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	14
	.zero	4
	.quad	2
	.quad	0
	.quad	crypto_1
	.quad	9
	.zero	8
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	512
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	6
	.zero	32
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.section	.rodata
	.align 8
	.type	stream_9, @object
	.size	stream_9, 8
stream_9:
	.ascii	"z{|}~\177z{"
.LC69:
	.string	"stream_9"
.LC70:
	.string	"h->frame.stream.data"
	.text
	.type	check_stream_9, @function
check_stream_9:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1136(%rax), %r8
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rdi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	$8
	leaq	stream_9(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$635, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L125
.L124:
	movl	$1, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	check_stream_9, .-check_stream_9
	.section	.data.rel.ro.local
	.align 32
	.type	script_9, @object
	.size	script_9, 864
script_9:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	22
	.zero	44
	.long	2
	.zero	44
	.long	15
	.zero	4
	.quad	42
	.zero	32
	.long	16
	.zero	4
	.quad	42
	.quad	0
	.quad	stream_9
	.quad	8
	.zero	8
	.long	2
	.zero	44
	.long	20
	.zero	4
	.quad	1000
	.zero	32
	.long	21
	.zero	4
	.quad	1000
	.quad	42
	.zero	24
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	512
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	8
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	check_stream_9
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.section	.rodata
	.align 32
	.type	stream_10a, @object
	.size	stream_10a, 1300
stream_10a:
	.base64	"QA22DSVf3bkFeajjeTKypzBtKfa6UL6Dy1bs1seAhKIv68Q3QETv2Hi7koAiM8DOM1t1jKUaeiqpiK/2OuJeYFJt738qmqoXDhJRgggvD1v/9Xx8iQT7p4BO2hKJAUqBhHgVqRIoaUol5Ytpwp+2WUnjU5DvybhA3WJfmWjSCnfe8xE5f5OLgWk2p3akEFZR5UU6QklsxqC0E0ZZDkhgyf9wEI1q+VuUwp5JGVbywf8IP54mjplxxCWxTsx+X/BOJaIvP2iqz70ZGRySoLa4MrELkQWp+BpLdAn5V9AcOBAFVNhOEmfMQ6OBqToSV+dLDuVR+V/URnOieLcAJGk1"
	.base64	"EB64p0qbvPwEbxqwTxLJKzuUhRuOuqz9ECJokBcTRBgvMzcaicAsFFmyr8Br3Cjh6cEMtICQuR9FtGOaDvoz9XU6T8OMcNvXv/a4f8zlhbauJWAYW/FRGoXBf/O+toI449L/isTbCOaW1T0fxRI1RXVdF07huMnwRZULA8uFR6/HiLbBLLib5otR1S5xusmpN14cLAPwx8HTcqpNGdZRZBLrOetF6bSECLZsxz7wiGTCkbelhmaD1dNBJLIcmhgQDqXJ780GzqivIlIlC5k96SbaqUfRS6ZM/ICvallLNaSTOVv6kZ3fnTz7U8oYGeTalUdaN1nX0uR1RQ0Df6Cp"
	.base64	"oHEGsZ1Gvc9Ki3PBRVwAYf3RpKI+qr5y8XoadohcnnRtKjT890Eo6KNDTUMdbDaxRXFaPNMoROSbv1QWw5lsQtggtiBfbry6iF4vpdGCXJLQef3MYUnQc5LmmOOAevlWYzMZ2lQT8CGoFfa3Q3wcHrGJjc4gVIGAtY+bsQmS2yVvMCkIGgUI9IOLHi395LJ2yE3zpklfLJl4vQfvyNm1cDsKy72g6hX70W5hg8uQ0KOBKNzVhK5VKBOextj0Z9YN1Gms9jWVmUQmcjZV+UKmGwCTABkvcNMWZk6Au7aEoSwJ+0HfY95iPtCo2AwDBqmCF5zSqdVvzMDyXbG6+C43"
	.base64	"i+Zdnxv7UwqWvmkxGY9EG8JCfmUSHVIe4sCGcIjl9oddA0sSPC2vCfVPgi4uvgfojVduwOv5N6yJAbfGUhyG5bwfvd6iQrZzhW8GNlZAK+oWjPR7ZWrKPFZoAeOcu7lFVM0TdK2AQLzQdLQx5MrV+E8IW8QVGlE7xkDI6nYwlbd2pNog23Uc9IckKVTGWQzw7fU9zpUjMEmRp3sitddxsGDh8IR0Di+oeTW5A7Us3GBIEtkUWlhdlcZH/a8JwmelCa7/S9VsLx0zMcvbz/X2vJCyFdQ0694Ojz3qpJspivlKrDgeRrItomHFmV6FNoWwsWvEBmjHm1S5yJ3zGuBn"
	.base64	"Dk1cE1SkYmJvrg6GouAxx3Khu4c+YZa3U/k0y/1sZyVzYXVPqzcI7zVaA+UIQ+zctSwf5uvGBgvtrXT0Ve/gLoMA2zLe6eQv9SBtckf0aKZ/PmpaIXYxl6DGfQP3J0VadQPBXJQrN59Gj8OnUOTnI/cgoo5L/XqnilR7Mu8Ogrn5FGJoMp5VwNjHQZxnlb/DhnRwZEQjd3mCIxz0oQXTmInefbNb7zjSB7xaaaPkN5tT/wRr2dgyifeCd8/m//QVVJFllknXCqTzVSvBSMF+Vmkn9NFHH96GFWcEnUEf6OEj5Fa5207khGxjOa1EbU4ozfas7MKtzcPtA2Nd7x1A"
	.base64	"jZoCZ0tVtf51tlM0HXsmI/65IdPgoBqF5Q=="
	.align 32
	.type	stream_10b, @object
	.size	stream_10b, 1300
stream_10b:
	.base64	"GADX+xLa22jrOE32skV0TMznp8EmhD3ffcXp1DGiUTiV4mgRndFSte924D0RUNeywX0SrwJSlwPzLlTfoEB2UoIjPL0gbQpvgfxBnS6nLHic2FawMTXIU+/5QxfAjCyPSmjon70/8hi45lXqKjc+rLB11HUSguwhuc7lwWJJ1fHK1DJ2NF8+ybNU5NCpfQxkSAp0OAPQIKzjWD1Lp0asV2MSF8uW7ck5ZN7/xrJALPkdppQqFk1/IpGL/oN3AmhiJ3cu6c68IOj7+E4XB+GqKbdQz7BqzwHsv/+1nwBkgLum5KIe5PijDcdlRbcBM4A3ERY0wQbF08RwYnXYo7qE"
	.base64	"n4Gf2gGDQoQFaWiwdHMPaDnTEcVVPvK39KbtC1C+RPhnSEZecQfPyoq8pDzSSoAuT8U7YcF+k57gBfsQ6FP/Fl4Y4J85v6qAbbefUZGg9s6t7VYVuRJXYKauVG428+AF2D5tCDbJeWRRY5Koob9VJoB1RDMz+7fs+cYB+dWT/LdDojgNF3Vn7MmY1iXmue1hpO4s2ie9/4YeRWT+zwybe3Vf8eC6d4wDj7Q6tpzamoPL6cs/9BCZW+EZj2uVUOZ4yTW2h9ieFzCWcKMEaRyibNSISEQUlNTJTeOCfmLwChhN0NZjo9/qKPQAdXB4CHA//4SGcupPFYwXYF+hUKD8"
	.base64	"b4pG/AGNfNxpatN0aXZ33eScSR5vfTEU2ennF2aCG/EP4rrSKNFvSMesCE7ulGaZNBZdla7jWXl/jp/j2//cTbC/+fM+7M9QPS26lB8aq6T0Z0N+uWUgE7HZiEokE4SGrisMbH7UJW6qjQxUmd4drIxcc5TZdctaVD3r/8GVU7U59+Xxd9FCgkuwqxko/1Moh0bGbwUGpgyXk2g44WHt+JATo2/yCDfXBSU0Q1dy/WzCGSbnUDC4bQlxg3XUESUpxu6yURwcni0JuXMrv9rIHivlPx5j6cBtBDpIYajGFo1pwGcMO8QFNqEwYpJNRDFmRtrvD077eGqpW/hWJnQW"
	.base64	"qxeTPDa7or+turH+xJ91Rx6ZfjLo1Gyk+NLkslG7stfOlK9/5iwTrtIpMHv9JWH56DUtGsmBpf7O9hfF+4x5Z6hfXDG8/PNr0w3gYquGwxdaupeGj2XWvQyh+3983MuUMAsEVMQxocoexfC2CNcuoZBBztnvOlgBGnMYrdwgJZUa/mHxWDKLQ1nWIdupjlTmIc/Ta1kpmz5sf+IpcozRPpqEmLDzIDA0cadb8Cbh9HZlydfkuSVIwn6mCw0FaKGWYQtMLxrjVnGJSGbY0Gk3et/b7a2CqkAlRz51pg71L6dOl6JfAZlIOmMYIGFy5M9LO5k24fO/ritroZSgFZTW"
	.base64	"4LpxooWgjF5Y4t5rCGiQgnGN/RKiSYdw7ioI4iav64U10g79K2/A/kG71wqjjYvsRJ9GWU2sBB7eEHsXCrDMJgypPF/Y5lLT/QtmdQaEI2QrgGj5y80EB/fgB7TGoAjQdhZ32EjwRU7i8ojND719tr5Onl1sRyY0lPvFT1y1tfyZNHHl4TYM0pW4kzxdLXFVC5ZOnweaOJrMJLWsBYscYdTy354R431kL+UT1ArpMiaokyFZ80FICr1Zj/hyq9NljtyqDMABNrf1hCeamIlzOutVFck94fjq9hEo4ICTzLrh8YG8pDC8mOiejRd+t7Enb8+cDR0B6kXAkNpT9t7f"
	.base64	"EqEjPZKJd6cq50Uk3fIXEMpuFLJ3CMQYzQ=="
	.local	stream_10a_off
	.comm	stream_10a_off,8,8
	.local	stream_10b_off
	.comm	stream_10b_off,8,8
.LC71:
	.string	"1150"
.LC72:
	.string	"h->frame.stream.len"
.LC73:
	.string	"1200"
.LC74:
	.string	"stream_10a"
	.text
	.type	check_stream_10a, @function
check_stream_10a:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	leaq	.LC71(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1150, %r9d
	movq	%rsi, %r8
	movl	$899, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L127
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	leaq	.LC73(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1200, %r9d
	movq	%rsi, %r8
	movl	$900, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	jne	.L128
.L127:
	movl	$0, %eax
	jmp	.L129
.L128:
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	1136(%rax), %r8
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rdi
	leaq	.LC74(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rsi
	leaq	stream_10a(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$903, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L130
	movl	$0, %eax
	jmp	.L129
.L130:
	movq	-8(%rbp), %rax
	movq	1128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, stream_10a_off(%rip)
	movl	$1, %eax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	check_stream_10a, .-check_stream_10a
	.section	.rodata
.LC75:
	.string	"stream_10b"
	.text
	.type	check_stream_10b, @function
check_stream_10b:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	leaq	.LC71(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1150, %r9d
	movq	%rsi, %r8
	movl	$913, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L132
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	leaq	.LC73(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1200, %r9d
	movq	%rsi, %r8
	movl	$914, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	jne	.L133
.L132:
	movl	$0, %eax
	jmp	.L134
.L133:
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	1136(%rax), %r8
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rdi
	leaq	.LC75(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rsi
	leaq	stream_10b(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$917, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L135
	movl	$0, %eax
	jmp	.L134
.L135:
	movq	-8(%rbp), %rax
	movq	1128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, stream_10b_off(%rip)
	movl	$1, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	check_stream_10b, .-check_stream_10b
	.section	.rodata
.LC76:
	.string	"5"
.LC77:
	.string	"200"
.LC78:
	.string	"stream_10a + stream_10a_off"
	.text
	.type	check_stream_10c, @function
check_stream_10c:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	leaq	.LC76(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$5, %r9d
	movq	%rsi, %r8
	movl	$927, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L137
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	leaq	.LC77(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$200, %r9d
	movq	%rsi, %r8
	movl	$928, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	jne	.L138
.L137:
	movl	$0, %eax
	jmp	.L139
.L138:
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	movq	stream_10a_off(%rip), %rax
	leaq	stream_10a(%rip), %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-8(%rbp), %rax
	movq	1136(%rax), %r9
	movq	-8(%rbp), %rax
	movq	1144(%rax), %r8
	leaq	.LC78(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rsi
	pushq	%rdi
	movl	$931, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L140
	movl	$0, %eax
	jmp	.L139
.L140:
	movl	$1, %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	check_stream_10c, .-check_stream_10c
	.section	.rodata
.LC79:
	.string	"stream_10b + stream_10b_off"
	.text
	.type	check_stream_10d, @function
check_stream_10d:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	leaq	.LC76(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$5, %r9d
	movq	%rsi, %r8
	movl	$940, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	je	.L142
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	leaq	.LC77(%rip), %rcx
	leaq	.LC72(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$200, %r9d
	movq	%rsi, %r8
	movl	$941, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	jne	.L143
.L142:
	movl	$0, %eax
	jmp	.L144
.L143:
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	movq	stream_10b_off(%rip), %rax
	leaq	stream_10b(%rip), %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-8(%rbp), %rax
	movq	1136(%rax), %r9
	movq	-8(%rbp), %rax
	movq	1144(%rax), %r8
	leaq	.LC79(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rsi
	pushq	%rdi
	movl	$944, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L145
	movl	$0, %eax
	jmp	.L144
.L145:
	movl	$1, %eax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	check_stream_10d, .-check_stream_10d
	.section	.data.rel.ro.local
	.align 32
	.type	script_10, @object
	.size	script_10, 1776
script_10:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	22
	.zero	44
	.long	2
	.zero	44
	.long	15
	.zero	4
	.quad	42
	.zero	32
	.long	15
	.zero	4
	.quad	43
	.zero	32
	.long	20
	.zero	4
	.quad	10000
	.zero	32
	.long	21
	.zero	4
	.quad	5000
	.quad	42
	.zero	24
	.long	21
	.zero	4
	.quad	5000
	.quad	43
	.zero	24
	.long	16
	.zero	4
	.quad	42
	.quad	0
	.quad	stream_10a
	.quad	1300
	.zero	8
	.long	16
	.zero	4
	.quad	43
	.quad	0
	.quad	stream_10b
	.quad	1300
	.zero	8
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	1100
	.quad	1200
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	8
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	check_stream_10a
	.long	11
	.zero	44
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	1100
	.quad	1200
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	8
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	check_stream_10b
	.long	11
	.zero	44
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	200
	.quad	500
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	14
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	check_stream_10c
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	12
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	check_stream_10d
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.align 32
	.type	script_11, @object
	.size	script_11, 576
script_11:
	.long	12
	.zero	4
	.quad	0
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	crypto_1
	.quad	9
	.zero	8
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	1200
	.quad	1200
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	6
	.zero	32
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.section	.rodata
.LC80:
	.string	"42"
	.align 8
.LC81:
	.string	"h->frame.stop_sending.stream_id"
.LC82:
	.string	"4568"
	.align 8
.LC83:
	.string	"h->frame.stop_sending.app_error_code"
	.text
	.type	check_stream_12, @function
check_stream_12:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1120(%rax), %rsi
	leaq	.LC80(%rip), %rcx
	leaq	.LC81(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$42, %r9d
	movq	%rsi, %r8
	movl	$1018, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L147
	movq	-8(%rbp), %rax
	movq	1128(%rax), %rsi
	leaq	.LC82(%rip), %rcx
	leaq	.LC83(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$4568, %r9d
	movq	%rsi, %r8
	movl	$1019, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L148
.L147:
	movl	$0, %eax
	jmp	.L149
.L148:
	movl	$1, %eax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	check_stream_12, .-check_stream_12
	.section	.data.rel.ro.local
	.align 32
	.type	script_12, @object
	.size	script_12, 720
script_12:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	22
	.zero	44
	.long	2
	.zero	44
	.long	15
	.zero	4
	.quad	42
	.zero	32
	.long	18
	.zero	4
	.quad	42
	.quad	4568
	.zero	24
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	128
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	5
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	check_stream_12
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.section	.rodata
	.align 8
	.type	stream_13, @object
	.size	stream_13, 8
stream_13:
	.ascii	"z{|}~\177z{"
	.align 8
.LC84:
	.string	"h->frame.reset_stream.stream_id"
	.align 8
.LC85:
	.string	"h->frame.reset_stream.app_error_code"
.LC86:
	.string	"0"
	.align 8
.LC87:
	.string	"h->frame.reset_stream.final_size"
	.text
	.type	check_stream_13, @function
check_stream_13:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1120(%rax), %rsi
	leaq	.LC80(%rip), %rcx
	leaq	.LC84(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$42, %r9d
	movq	%rsi, %r8
	movl	$1050, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L151
	movq	-8(%rbp), %rax
	movq	1128(%rax), %rsi
	leaq	.LC82(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$4568, %r9d
	movq	%rsi, %r8
	movl	$1051, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L151
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	leaq	.LC86(%rip), %rcx
	leaq	.LC87(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1052, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L152
.L151:
	movl	$0, %eax
	jmp	.L153
.L152:
	movl	$1, %eax
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	check_stream_13, .-check_stream_13
	.section	.data.rel.ro.local
	.align 32
	.type	script_13, @object
	.size	script_13, 912
script_13:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	22
	.zero	44
	.long	2
	.zero	44
	.long	15
	.zero	4
	.quad	42
	.zero	32
	.long	20
	.zero	4
	.quad	8
	.zero	32
	.long	21
	.zero	4
	.quad	8
	.quad	42
	.zero	24
	.long	16
	.zero	4
	.quad	42
	.quad	0
	.quad	stream_13
	.quad	8
	.zero	8
	.long	19
	.zero	4
	.quad	42
	.quad	4568
	.zero	24
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	128
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	4
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	check_stream_13
	.long	10
	.zero	44
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.section	.rodata
.LC88:
	.string	"Reason string"
	.align 8
.LC89:
	.string	"ossl_quic_tx_packetiser_schedule_conn_close(h->txp, &f)"
	.text
	.type	gen_conn_close, @function
gen_conn_close:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	movq	$2345, -40(%rbp)
	movq	$30, -32(%rbp)
	leaq	.LC88(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_schedule_conn_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1090, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L155
	movl	$0, %eax
	jmp	.L157
.L155:
	movl	$1, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	gen_conn_close, .-gen_conn_close
	.section	.rodata
.LC90:
	.string	"h->frame.conn_close.is_app"
	.align 8
.LC91:
	.string	"OSSL_QUIC_FRAME_TYPE_HANDSHAKE_DONE"
	.align 8
.LC92:
	.string	"h->frame.conn_close.frame_type"
	.align 8
.LC93:
	.string	"h->frame.conn_close.error_code"
.LC94:
	.string	"\"Reason string\""
.LC95:
	.string	"h->frame.conn_close.reason"
	.text
	.type	check_14, @function
check_14:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1120(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %esi
	leaq	.LC86(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1098, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L159
	movq	-8(%rbp), %rax
	movq	1136(%rax), %rsi
	leaq	.LC91(%rip), %rcx
	leaq	.LC92(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$30, %r9d
	movq	%rsi, %r8
	movl	$1099, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L159
	movq	-8(%rbp), %rax
	movq	1128(%rax), %rsi
	leaq	.LC56(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$2345, %r9d
	movq	%rsi, %r8
	movl	$1101, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	je	.L159
	movq	-8(%rbp), %rax
	movq	1152(%rax), %r8
	movq	-8(%rbp), %rax
	movq	1144(%rax), %rdi
	leaq	.LC94(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	$13
	leaq	.LC88(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$1102, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L160
.L159:
	movl	$0, %eax
	jmp	.L161
.L160:
	movl	$1, %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	check_14, .-check_14
	.section	.data.rel.ro.local
	.align 32
	.type	script_14, @object
	.size	script_14, 624
script_14:
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	22
	.zero	44
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gen_conn_close
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	512
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	28
	.zero	32
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	check_14
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	0
	.zero	44
	.text
	.type	gen_probe_initial, @function
gen_probe_initial:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get0_probe_request@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	gen_probe_initial, .-gen_probe_initial
	.section	.data.rel.ro.local
	.align 32
	.type	script_15, @object
	.size	script_15, 576
script_15:
	.long	12
	.zero	4
	.quad	0
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gen_probe_initial
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	1200
	.quad	1200
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	1
	.zero	32
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.text
	.type	gen_probe_handshake, @function
gen_probe_handshake:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get0_probe_request@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	gen_probe_handshake, .-gen_probe_handshake
	.section	.data.rel.ro.local
	.align 32
	.type	script_16, @object
	.size	script_16, 624
script_16:
	.long	13
	.zero	4
	.quad	0
	.zero	32
	.long	12
	.zero	4
	.quad	1
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gen_probe_handshake
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	512
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	1
	.zero	32
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.text
	.type	gen_probe_1rtt, @function
gen_probe_1rtt:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ackm_get0_probe_request@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	gen_probe_1rtt, .-gen_probe_1rtt
	.section	.data.rel.ro.local
	.align 32
	.type	script_17, @object
	.size	script_17, 672
script_17:
	.long	13
	.zero	4
	.quad	0
	.zero	32
	.long	13
	.zero	4
	.quad	1
	.zero	32
	.long	12
	.zero	4
	.quad	3
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gen_probe_1rtt
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	21
	.quad	512
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	1
	.zero	32
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.section	.rodata
	.align 32
	.type	big_token, @object
	.size	big_token, 1950
big_token:
	.zero	1950
	.align 8
.LC96:
	.string	"ossl_quic_tx_packetiser_set_initial_token(h->txp, big_token, sizeof(big_token), NULL, NULL)"
.LC97:
	.string	"i"
	.text
	.type	try_big_token, @function
try_big_token:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	big_token(%rip), %rsi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1950, %edx
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_initial_token@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC96(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1220, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L169
	movl	$0, %eax
	jmp	.L170
.L169:
	movq	$1949, -8(%rbp)
.L174:
	movq	-8(%rbp), %rsi
	leaq	.LC86(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1232, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L171
	movl	$0, %eax
	jmp	.L170
.L171:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	big_token(%rip), %rsi
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_set_initial_token@PLT
	testl	%eax, %eax
	jne	.L176
	subq	$1, -8(%rbp)
	jmp	.L174
.L176:
	nop
	movl	$1, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	try_big_token, .-try_big_token
	.section	.data.rel.ro.local
	.align 32
	.type	script_18, @object
	.size	script_18, 672
script_18:
	.long	12
	.zero	4
	.quad	0
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	try_big_token
	.long	2
	.zero	44
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	crypto_1
	.quad	9
	.zero	8
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	1200
	.quad	1200
	.zero	24
	.long	10
	.zero	44
	.long	6
	.zero	4
	.quad	6
	.zero	32
	.long	11
	.zero	44
	.long	4
	.zero	44
	.long	2
	.zero	44
	.long	0
	.zero	44
	.align 32
	.type	scripts, @object
	.size	scripts, 144
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
	.text
	.type	skip_padding, @function
skip_padding:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	1096(%rax), %rcx
	leaq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	testl	%eax, %eax
	je	.L181
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L177
	movq	-24(%rbp), %rax
	addq	$1096, %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_padding@PLT
	jmp	.L177
.L181:
	nop
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	skip_padding, .-skip_padding
	.section	.rodata
	.align 8
.LC98:
	.string	"ossl_quic_tx_packetiser_generate(h.txp, &status)"
.LC99:
	.string	"status.sent_pkt"
	.align 8
.LC100:
	.string	"ossl_qrx_read_pkt(h.qrx, &h.qrx_pkt)"
	.align 8
.LC101:
	.string	"PACKET_buf_init(&h.pkt, h.qrx_pkt->hdr->data, h.qrx_pkt->hdr->len)"
.LC102:
	.string	"(size_t)op->arg0"
.LC103:
	.string	"h.qrx_pkt->datagram_len"
.LC104:
	.string	"(size_t)op->arg1"
.LC105:
	.string	"op->arg0"
.LC106:
	.string	"h.frame_type"
.LC107:
	.string	"op->buf"
.LC108:
	.string	"h.qrx_pkt->hdr->token"
	.align 8
.LC109:
	.string	"cmp_pkt_hdr(h.qrx_pkt->hdr, op->buf, NULL, 0, 0)"
.LC110:
	.string	"op->check_func(&h)"
	.align 8
.LC111:
	.string	"ossl_quic_wire_decode_frame_handshake_done(&h.pkt)"
	.align 8
.LC112:
	.string	"ossl_quic_wire_decode_frame_ping(&h.pkt)"
	.align 8
.LC113:
	.string	"ossl_quic_wire_decode_frame_max_data(&h.pkt, &h.frame.max_data)"
	.align 8
.LC114:
	.string	"ossl_quic_wire_decode_frame_new_conn_id(&h.pkt, &h.frame.new_conn_id)"
	.align 8
.LC115:
	.string	"ossl_quic_wire_decode_frame_new_token(&h.pkt, &h.frame.new_token.token, &h.frame.new_token.token_len)"
	.align 8
.LC116:
	.string	"ossl_quic_wire_decode_frame_ack(&h.pkt, h.args.ack_delay_exponent, &h.frame.ack, NULL)"
	.align 8
.LC117:
	.string	"ossl_quic_wire_decode_frame_crypto(&h.pkt, 0, &h.frame.crypto)"
	.align 8
.LC118:
	.string	"ossl_quic_wire_decode_frame_stream(&h.pkt, 0, &h.frame.stream)"
	.align 8
.LC119:
	.string	"ossl_quic_wire_decode_frame_stop_sending(&h.pkt, &h.frame.stop_sending)"
	.align 8
.LC120:
	.string	"ossl_quic_wire_decode_frame_reset_stream(&h.pkt, &h.frame.reset_stream)"
	.align 8
.LC121:
	.string	"ossl_quic_wire_decode_frame_conn_close(&h.pkt, &h.frame.conn_close)"
.LC122:
	.string	"unknown frame type"
.LC123:
	.string	"PACKET_remaining(&h.pkt)"
	.align 8
.LC124:
	.string	"ossl_qtx_provide_secret(h.args.qtx, (uint32_t)op->arg0, (uint32_t)op->arg1, NULL, op->buf, op->buf_len)"
	.align 8
.LC125:
	.string	"ossl_qrx_provide_secret(h.qrx, (uint32_t)op->arg0, (uint32_t)op->arg1, NULL, op->buf, op->buf_len)"
	.align 8
.LC126:
	.string	"ossl_quic_tx_packetiser_discard_enc_level(h.txp, (uint32_t)op->arg0)"
	.align 8
.LC127:
	.string	"ossl_quic_sstream_append(h.args.crypto[op->arg0], op->buf, op->buf_len, &consumed)"
.LC128:
	.string	"op->buf_len"
.LC129:
	.string	"consumed"
	.align 8
.LC130:
	.string	"s = ossl_quic_stream_map_alloc(h.args.qsm, op->arg0, QUIC_STREAM_DIR_BIDI)"
	.align 8
.LC131:
	.string	"s->sstream = ossl_quic_sstream_new(512 * 1024)"
	.align 8
.LC132:
	.string	"ossl_quic_txfc_init(&s->txfc, &h.conn_txfc)"
	.align 8
.LC133:
	.string	"ossl_quic_rxfc_init(&s->rxfc, &h.conn_rxfc, 1 * 1024 * 1024, 16 * 1024 * 1024, fake_now, NULL)"
	.align 8
.LC134:
	.string	"s->rstream = ossl_quic_rstream_new(&s->rxfc, NULL, 1024)"
	.align 8
.LC135:
	.string	"s = ossl_quic_stream_map_get_by_id(h.args.qsm, op->arg0)"
	.align 8
.LC136:
	.string	"ossl_quic_sstream_append(s->sstream, op->buf, op->buf_len, &consumed)"
	.align 8
.LC137:
	.string	"ossl_quic_stream_map_stop_sending_recv_part(h.args.qsm, s, op->arg1)"
.LC138:
	.string	"s->active"
	.align 8
.LC139:
	.string	"ossl_quic_stream_map_reset_stream_send_part(h.args.qsm, s, op->arg1)"
	.align 8
.LC140:
	.string	"ossl_quic_txfc_bump_cwm(h.args.conn_txfc, op->arg0)"
	.align 8
.LC141:
	.string	"s = ossl_quic_stream_map_get_by_id(h.args.qsm, op->arg1)"
	.align 8
.LC142:
	.string	"ossl_quic_txfc_bump_cwm(&s->txfc, op->arg0)"
.LC143:
	.string	"bad opcode"
.LC144:
	.string	"script %d failed at op %zu"
	.text
	.type	run_script, @function
run_script:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1568, %rsp
	movl	%edi, -1556(%rbp)
	movq	%rsi, -1568(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	helper_init
	testl	%eax, %eax
	je	.L276
	movl	$1, -8(%rbp)
	movq	-1568(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L185
.L271:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$23, %eax
	je	.L277
	cmpl	$23, %eax
	ja	.L187
	cmpl	$22, %eax
	je	.L188
	cmpl	$22, %eax
	ja	.L187
	cmpl	$21, %eax
	je	.L189
	cmpl	$21, %eax
	ja	.L187
	cmpl	$20, %eax
	je	.L190
	cmpl	$20, %eax
	ja	.L187
	cmpl	$19, %eax
	je	.L191
	cmpl	$19, %eax
	ja	.L187
	cmpl	$18, %eax
	je	.L192
	cmpl	$18, %eax
	ja	.L187
	cmpl	$17, %eax
	je	.L193
	cmpl	$17, %eax
	ja	.L187
	cmpl	$16, %eax
	je	.L194
	cmpl	$16, %eax
	ja	.L187
	cmpl	$15, %eax
	je	.L195
	cmpl	$15, %eax
	ja	.L187
	cmpl	$14, %eax
	je	.L196
	cmpl	$14, %eax
	ja	.L187
	cmpl	$13, %eax
	je	.L197
	cmpl	$13, %eax
	ja	.L187
	cmpl	$12, %eax
	je	.L198
	cmpl	$12, %eax
	ja	.L187
	cmpl	$11, %eax
	je	.L199
	cmpl	$11, %eax
	ja	.L187
	cmpl	$10, %eax
	je	.L200
	cmpl	$10, %eax
	ja	.L187
	cmpl	$9, %eax
	je	.L201
	cmpl	$9, %eax
	ja	.L187
	cmpl	$8, %eax
	je	.L202
	cmpl	$8, %eax
	ja	.L187
	cmpl	$7, %eax
	je	.L203
	cmpl	$7, %eax
	ja	.L187
	cmpl	$6, %eax
	je	.L204
	cmpl	$6, %eax
	ja	.L187
	cmpl	$5, %eax
	je	.L205
	cmpl	$5, %eax
	ja	.L187
	cmpl	$4, %eax
	je	.L206
	cmpl	$4, %eax
	ja	.L187
	cmpl	$3, %eax
	je	.L207
	cmpl	$3, %eax
	ja	.L187
	cmpl	$1, %eax
	je	.L208
	cmpl	$2, %eax
	je	.L209
	jmp	.L187
.L208:
	movq	-1536(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_generate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC98(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1307, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L210
	movq	-88(%rbp), %rsi
	leaq	.LC86(%rip), %rcx
	leaq	.LC99(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1308, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L278
.L210:
	movq	-1368(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qtx_finish_dgram@PLT
	movq	-1368(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qtx_flush_net@PLT
	jmp	.L211
.L209:
	movq	-1536(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_generate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC98(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1315, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L279
	movq	-88(%rbp), %rsi
	leaq	.LC86(%rip), %rcx
	leaq	.LC99(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1316, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L279
	jmp	.L184
.L207:
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_demux_pump@PLT
	movq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qrx_pkt_release@PLT
	movq	$0, -448(%rbp)
	movq	-528(%rbp), %rax
	leaq	-1536(%rbp), %rdx
	addq	$1088, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_read_pkt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC100(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1324, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L280
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rdx
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rax
	leaq	-1536(%rbp), %rcx
	addq	$1096, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC101(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1326, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L281
	movq	$-1, -424(%rbp)
	jmp	.L211
.L206:
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_demux_pump@PLT
	movq	-528(%rbp), %rax
	leaq	-1536(%rbp), %rdx
	addq	$1088, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_qrx_read_pkt@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC100(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1334, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L282
	movq	$-1, -424(%rbp)
	jmp	.L211
.L205:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-448(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC102(%rip), %rcx
	leaq	.LC103(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1339, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	testl	%eax, %eax
	je	.L283
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-448(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC104(%rip), %rcx
	leaq	.LC103(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1340, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	testl	%eax, %eax
	jne	.L284
	jmp	.L283
.L204:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-424(%rbp), %rsi
	leaq	.LC105(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1344, %esi
	movq	%rax, %rdi
	call	test_uint64_t_eq@PLT
	testl	%eax, %eax
	jne	.L285
	jmp	.L184
.L203:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %r9
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %r8
	leaq	.LC107(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	leaq	.LC32(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$1348, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L286
	jmp	.L184
.L202:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-448(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	cmp_pkt_hdr
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC109(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1353, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L287
	jmp	.L184
.L201:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC110(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1358, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L288
	jmp	.L184
.L200:
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	skip_padding
	leaq	-1536(%rbp), %rax
	leaq	1112(%rax), %rcx
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_peek_frame_header@PLT
	testl	%eax, %eax
	jne	.L222
	movq	$-1, -424(%rbp)
	jmp	.L211
.L222:
	movq	-424(%rbp), %rax
	cmpq	$30, %rax
	je	.L223
	cmpq	$30, %rax
	ja	.L224
	cmpq	$29, %rax
	ja	.L224
	cmpq	$28, %rax
	jnb	.L225
	cmpq	$24, %rax
	je	.L226
	cmpq	$24, %rax
	ja	.L224
	cmpq	$16, %rax
	je	.L227
	cmpq	$16, %rax
	ja	.L224
	cmpq	$15, %rax
	ja	.L224
	cmpq	$8, %rax
	jnb	.L228
	cmpq	$7, %rax
	je	.L229
	cmpq	$7, %rax
	ja	.L224
	cmpq	$6, %rax
	je	.L230
	cmpq	$6, %rax
	ja	.L224
	cmpq	$5, %rax
	je	.L231
	cmpq	$5, %rax
	ja	.L224
	cmpq	$4, %rax
	je	.L232
	cmpq	$4, %rax
	ja	.L224
	cmpq	$1, %rax
	je	.L233
	testq	%rax, %rax
	je	.L224
	subq	$2, %rax
	cmpq	$1, %rax
	ja	.L224
	jmp	.L275
.L223:
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_handshake_done@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC111(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1370, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L289
	jmp	.L184
.L233:
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_ping@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1374, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L290
	jmp	.L184
.L227:
	leaq	-1536(%rbp), %rax
	leaq	1120(%rax), %rdx
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_max_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC113(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1378, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L291
	jmp	.L184
.L226:
	leaq	-1536(%rbp), %rax
	leaq	1120(%rax), %rdx
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_new_conn_id@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC114(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1383, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L292
	jmp	.L184
.L229:
	leaq	-1536(%rbp), %rax
	leaq	1128(%rax), %rdx
	leaq	-1536(%rbp), %rax
	leaq	1120(%rax), %rcx
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_new_token@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1388, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L293
	jmp	.L184
.L275:
	leaq	-1536(%rbp), %rax
	addq	$1176, %rax
	movq	%rax, -416(%rbp)
	movq	$16, -408(%rbp)
	movl	-1372(%rbp), %eax
	leaq	-1536(%rbp), %rdx
	addq	$1120, %rdx
	leaq	-1536(%rbp), %rcx
	leaq	1096(%rcx), %rdi
	movl	$0, %ecx
	movl	%eax, %esi
	call	ossl_quic_wire_decode_frame_ack@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC116(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1397, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L294
	jmp	.L184
.L230:
	leaq	-1536(%rbp), %rax
	leaq	1120(%rax), %rdx
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_crypto@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1404, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L295
	jmp	.L184
.L228:
	leaq	-1536(%rbp), %rax
	leaq	1120(%rax), %rdx
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stream@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC118(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1416, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L296
	jmp	.L184
.L231:
	leaq	-1536(%rbp), %rax
	leaq	1120(%rax), %rdx
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_stop_sending@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1421, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L297
	jmp	.L184
.L232:
	leaq	-1536(%rbp), %rax
	leaq	1120(%rax), %rdx
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_reset_stream@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC120(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1427, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L298
	jmp	.L184
.L225:
	leaq	-1536(%rbp), %rax
	leaq	1120(%rax), %rdx
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_frame_conn_close@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC121(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1434, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L299
	jmp	.L184
.L224:
	leaq	.LC122(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1440, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L184
.L289:
	nop
	jmp	.L211
.L290:
	nop
	jmp	.L211
.L291:
	nop
	jmp	.L211
.L292:
	nop
	jmp	.L211
.L293:
	nop
	jmp	.L211
.L294:
	nop
	jmp	.L211
.L295:
	nop
	jmp	.L211
.L296:
	nop
	jmp	.L211
.L297:
	nop
	jmp	.L211
.L298:
	nop
	jmp	.L211
.L299:
	nop
	jmp	.L211
.L199:
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	skip_padding
	leaq	-1536(%rbp), %rax
	addq	$1096, %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rsi
	leaq	.LC86(%rip), %rcx
	leaq	.LC123(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$1446, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L300
	jmp	.L184
.L198:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %esi
	movq	-1368(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	ossl_qtx_provide_secret@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC124(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1450, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L301
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %esi
	movq	-528(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	ossl_qrx_provide_secret@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC125(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1455, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L302
	jmp	.L184
.L197:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	-1536(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_discard_enc_level@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC126(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1462, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L303
	jmp	.L184
.L196:
	movq	$0, -1544(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	addq	$34, %rax
	movq	-1520(%rbp,%rax,8), %rax
	leaq	-1544(%rbp), %rcx
	movq	%rax, %rdi
	call	ossl_quic_sstream_append@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC127(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1475, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L304
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-1544(%rbp), %rsi
	leaq	.LC128(%rip), %rcx
	leaq	.LC129(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1480, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L305
	jmp	.L184
.L195:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-1336(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_alloc@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC130(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1488, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L306
	movl	$524288, %edi
	call	ossl_quic_sstream_new@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-72(%rbp), %rax
	movq	112(%rax), %rax
	leaq	.LC131(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1492, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L255
	movq	-72(%rbp), %rax
	subq	$-128, %rax
	leaq	-1536(%rbp), %rdx
	addq	$376, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txfc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC132(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1493, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L255
	movq	-72(%rbp), %rax
	addq	$160, %rax
	leaq	fake_now(%rip), %rcx
	leaq	-1536(%rbp), %rdx
	leaq	408(%rdx), %rsi
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$16777216, %ecx
	movl	$1048576, %edx
	movq	%rax, %rdi
	call	ossl_quic_rxfc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC133(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1494, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L255
	movq	-72(%rbp), %rax
	addq	$160, %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_quic_rstream_new@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rax
	leaq	.LC134(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1498, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L307
.L255:
	movq	-72(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_free@PLT
	movq	-1336(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_release@PLT
	jmp	.L184
.L194:
	movq	$0, -1552(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-1336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC135(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1511, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L308
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	112(%rax), %rax
	leaq	-1552(%rbp), %rcx
	movq	%rax, %rdi
	call	ossl_quic_sstream_append@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC136(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1515, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L309
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-1552(%rbp), %rsi
	leaq	.LC128(%rip), %rcx
	leaq	.LC129(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1519, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L310
	movq	-1336(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	jmp	.L211
.L193:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-1336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC135(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1529, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L311
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_quic_sstream_fin@PLT
	jmp	.L211
.L192:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-1336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC135(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1540, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L312
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-1336(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_stop_sending_recv_part@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC137(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1544, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L313
	movq	-1336(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	movq	-48(%rbp), %rax
	movzbl	259(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movl	%eax, %ecx
	leaq	.LC138(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1550, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L314
	jmp	.L184
.L191:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-1336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC135(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1558, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L315
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-1336(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_reset_stream_send_part@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC139(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1562, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L316
	movq	-1336(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	movq	-40(%rbp), %rax
	movzbl	259(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movl	%eax, %ecx
	leaq	.LC138(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1568, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L317
	jmp	.L184
.L190:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-1328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC140(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1573, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L318
	jmp	.L184
.L189:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-1336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_get_by_id@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC141(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1581, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L319
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	subq	$-128, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_quic_txfc_bump_cwm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC142(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movl	%eax, %ecx
	movl	$1585, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L320
	movq	-1336(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_stream_map_update_state@PLT
	jmp	.L211
.L188:
	movq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_tx_packetiser_notify_handshake_complete@PLT
	jmp	.L211
.L187:
	leaq	.LC143(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movl	$1597, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L184
.L277:
	nop
	jmp	.L211
.L279:
	nop
	jmp	.L211
.L284:
	nop
	jmp	.L211
.L285:
	nop
	jmp	.L211
.L286:
	nop
	jmp	.L211
.L287:
	nop
	jmp	.L211
.L288:
	nop
	jmp	.L211
.L300:
	nop
	jmp	.L211
.L302:
	nop
	jmp	.L211
.L303:
	nop
	jmp	.L211
.L305:
	nop
	jmp	.L211
.L307:
	nop
	jmp	.L211
.L314:
	nop
	jmp	.L211
.L317:
	nop
	jmp	.L211
.L318:
	nop
.L211:
	addq	$48, -16(%rbp)
	addq	$1, -24(%rbp)
.L185:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L271
	movl	$1, -4(%rbp)
	jmp	.L184
.L276:
	nop
	jmp	.L184
.L278:
	nop
	jmp	.L184
.L280:
	nop
	jmp	.L184
.L281:
	nop
	jmp	.L184
.L282:
	nop
	jmp	.L184
.L283:
	nop
	jmp	.L184
.L301:
	nop
	jmp	.L184
.L304:
	nop
	jmp	.L184
.L306:
	nop
	jmp	.L184
.L308:
	nop
	jmp	.L184
.L309:
	nop
	jmp	.L184
.L310:
	nop
	jmp	.L184
.L311:
	nop
	jmp	.L184
.L312:
	nop
	jmp	.L184
.L313:
	nop
	jmp	.L184
.L315:
	nop
	jmp	.L184
.L316:
	nop
	jmp	.L184
.L319:
	nop
	jmp	.L184
.L320:
	nop
.L184:
	cmpl	$0, -4(%rbp)
	jne	.L272
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rsi
	movl	-1556(%rbp), %eax
	leal	1(%rax), %ecx
	leaq	.LC144(%rip), %rdx
	leaq	.LC32(%rip), %rax
	movq	%rsi, %r8
	movl	$1605, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
.L272:
	cmpl	$0, -8(%rbp)
	je	.L273
	leaq	-1536(%rbp), %rax
	movq	%rax, %rdi
	call	helper_cleanup
.L273:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	run_script, .-run_script
	.type	test_script, @function
test_script:
.LFB643:
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
	leaq	scripts(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	run_script
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	test_script, .-test_script
	.section	.rodata
	.align 32
	.type	dyn_script_1_crypto_1a, @object
	.size	dyn_script_1_crypto_1a, 1200
dyn_script_1_crypto_1a:
	.zero	1200
	.type	dyn_script_1_crypto_1b, @object
	.size	dyn_script_1_crypto_1b, 1
dyn_script_1_crypto_1b:
	.zero	1
	.text
	.type	check_is_initial, @function
check_is_initial:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1088(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	check_is_initial, .-check_is_initial
	.type	check_is_handshake, @function
check_is_handshake:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1088(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	check_is_handshake, .-check_is_handshake
	.section	.data.rel.local,"aw"
	.align 32
	.type	dyn_script_1, @object
	.size	dyn_script_1, 576
dyn_script_1:
	.long	12
	.zero	4
	.quad	0
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	12
	.zero	4
	.quad	1
	.quad	1
	.quad	secret_1
	.quad	32
	.zero	8
	.long	2
	.zero	44
	.long	14
	.zero	4
	.quad	0
	.quad	0
	.quad	dyn_script_1_crypto_1a
	.quad	1200
	.zero	8
	.long	14
	.zero	4
	.quad	1
	.quad	0
	.quad	dyn_script_1_crypto_1b
	.quad	1
	.zero	8
	.long	1
	.zero	44
	.long	3
	.zero	44
	.long	5
	.zero	4
	.quad	1200
	.quad	1200
	.zero	24
	.long	9
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	check_is_initial
	.long	23
	.zero	44
	.long	23
	.zero	44
	.long	0
	.zero	44
	.section	.rodata
	.align 8
	.type	dyn_script_1_crypto_idx, @object
	.size	dyn_script_1_crypto_idx, 8
dyn_script_1_crypto_idx:
	.quad	3
	.align 8
	.type	dyn_script_1_pkt_idx, @object
	.size	dyn_script_1_pkt_idx, 8
dyn_script_1_pkt_idx:
	.quad	9
	.align 8
	.type	dyn_script_1_check_idx, @object
	.size	dyn_script_1_check_idx, 8
dyn_script_1_check_idx:
	.quad	10
	.align 8
	.type	dyn_script_1_start_from, @object
	.size	dyn_script_1_start_from, 8
dyn_script_1_start_from:
	.quad	1000
	.align 8
.LC145:
	.string	"failed dyn script 1 with target size %zu"
	.text
	.type	test_dyn_script_1, @function
test_dyn_script_1:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movl	$1000, %edx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpq	$1115, -8(%rbp)
	setbe	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	$3, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	32+dyn_script_1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	cmpl	$0, -12(%rbp)
	je	.L328
	movl	$9, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dyn_script_1(%rip), %rax
	movl	$3, (%rdx,%rax)
	movl	$10, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dyn_script_1(%rip), %rax
	movl	$9, (%rdx,%rax)
	movl	$10, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	40+dyn_script_1(%rip), %rax
	leaq	check_is_handshake(%rip), %rdx
	movq	%rdx, (%rcx,%rax)
	jmp	.L329
.L328:
	movl	$9, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dyn_script_1(%rip), %rax
	movl	$4, (%rdx,%rax)
	movl	$10, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	dyn_script_1(%rip), %rax
	movl	$23, (%rdx,%rax)
.L329:
	leaq	dyn_script_1(%rip), %rdx
	movl	-20(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	run_script
	testl	%eax, %eax
	jne	.L330
	movq	-8(%rbp), %rax
	leaq	.LC145(%rip), %rdx
	leaq	.LC32(%rip), %rdi
	movq	%rax, %rcx
	movl	$1690, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L331
.L330:
	movl	$1, %eax
.L331:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	test_dyn_script_1, .-test_dyn_script_1
	.section	.rodata
.LC146:
	.string	"test_script"
.LC147:
	.string	"test_dyn_script_1"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_script(%rip), %rsi
	leaq	.LC146(%rip), %rax
	movl	$1, %ecx
	movl	$18, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1000, %eax
	movl	%eax, %edx
	movl	$1201, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	leaq	test_dyn_script_1(%rip), %rsi
	leaq	.LC147(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
