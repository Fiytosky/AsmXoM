	.file	"quic_record_tx.c"
	.text
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
	je	.L2
	cmpl	$5, -4(%rbp)
	ja	.L3
	cmpl	$3, -4(%rbp)
	je	.L4
	cmpl	$3, -4(%rbp)
	ja	.L3
	cmpl	$1, -4(%rbp)
	je	.L5
	cmpl	$2, -4(%rbp)
	je	.L6
	jmp	.L3
.L5:
	movl	$0, %eax
	jmp	.L7
.L4:
	movl	$1, %eax
	jmp	.L7
.L6:
	movl	$2, %eax
	jmp	.L7
.L2:
	movl	$3, %eax
	jmp	.L7
.L3:
	movl	$4, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	ossl_quic_pkt_type_to_enc_level, .-ossl_quic_pkt_type_to_enc_level
	.type	ossl_quic_pkt_type_is_encrypted, @function
ossl_quic_pkt_type_is_encrypted:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$4, -4(%rbp)
	je	.L9
	cmpl	$6, -4(%rbp)
	jne	.L10
.L9:
	movl	$0, %eax
	jmp	.L11
.L10:
	movl	$1, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	ossl_quic_pkt_type_is_encrypted, .-ossl_quic_pkt_type_is_encrypted
	.type	ossl_quic_pkt_type_has_pn, @function
ossl_quic_pkt_type_has_pn:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_is_encrypted
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	ossl_quic_pkt_type_has_pn, .-ossl_quic_pkt_type_has_pn
	.type	ossl_quic_pkt_type_can_share_dgram, @function
ossl_quic_pkt_type_can_share_dgram:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_is_encrypted
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	ossl_quic_pkt_type_can_share_dgram, .-ossl_quic_pkt_type_can_share_dgram
	.type	ossl_quic_pkt_type_must_be_last, @function
ossl_quic_pkt_type_must_be_last:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_can_share_dgram
	testl	%eax, %eax
	je	.L17
	cmpl	$5, -4(%rbp)
	jne	.L18
.L17:
	movl	$1, %eax
	jmp	.L20
.L18:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	ossl_quic_pkt_type_must_be_last, .-ossl_quic_pkt_type_must_be_last
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB612:
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
.LFE612:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB613:
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
.LFE613:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB662:
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
.LFE662:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB663:
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
.LFE663:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB678:
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
.LFE678:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB679:
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
.LFE679:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	ossl_list_txe_init_elem, @function
ossl_list_txe_init_elem:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ossl_list_txe_init_elem, .-ossl_list_txe_init_elem
	.type	ossl_list_txe_head, @function
ossl_list_txe_head:
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
	.size	ossl_list_txe_head, .-ossl_list_txe_head
	.type	ossl_list_txe_next, @function
ossl_list_txe_next:
.LFB735:
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
.LFE735:
	.size	ossl_list_txe_next, .-ossl_list_txe_next
	.type	ossl_list_txe_prev, @function
ossl_list_txe_prev:
.LFB736:
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
.LFE736:
	.size	ossl_list_txe_prev, .-ossl_list_txe_prev
	.type	ossl_list_txe_remove, @function
ossl_list_txe_remove:
.LFB737:
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
	jne	.L41
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L41:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L42
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L42:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
.L43:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L44:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	ossl_list_txe_remove, .-ossl_list_txe_remove
	.type	ossl_list_txe_insert_head, @function
ossl_list_txe_insert_head:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L46:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L47
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L47:
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
.LFE738:
	.size	ossl_list_txe_insert_head, .-ossl_list_txe_insert_head
	.type	ossl_list_txe_insert_tail, @function
ossl_list_txe_insert_tail:
.LFB739:
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
	je	.L49
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L49:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L50
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L50:
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
.LFE739:
	.size	ossl_list_txe_insert_tail, .-ossl_list_txe_insert_tail
	.type	ossl_list_txe_insert_after, @function
ossl_list_txe_insert_after:
.LFB741:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L52:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L53
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L53:
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
.LFE741:
	.size	ossl_list_txe_insert_after, .-ossl_list_txe_insert_after
	.type	txe_data, @function
txe_data:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$256, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	txe_data, .-txe_data
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_record_tx.c"
	.text
	.globl	ossl_qtx_new
	.type	ossl_qtx_new, @function
ossl_qtx_new:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$1199, %rax
	ja	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	leaq	.LC0(%rip), %rax
	movl	$120, %edx
	movq	%rax, %rsi
	movl	$1024, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L59
	movl	$0, %eax
	jmp	.L58
.L59:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 848(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 872(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 856(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 864(%rax)
	movq	-8(%rbp), %rax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	ossl_qtx_new, .-ossl_qtx_new
	.type	qtx_cleanup_txl, @function
qtx_cleanup_txl:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_txe_head
	movq	%rax, -8(%rbp)
	jmp	.L61
.L62:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_txe_next
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$140, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L61:
	cmpq	$0, -8(%rbp)
	jne	.L62
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	qtx_cleanup_txl, .-qtx_cleanup_txl
	.globl	ossl_qtx_free
	.type	ossl_qtx_free, @function
ossl_qtx_free:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L68
	movq	-24(%rbp), %rax
	addq	$904, %rax
	movq	%rax, %rdi
	call	qtx_cleanup_txl
	movq	-24(%rbp), %rax
	addq	$880, %rax
	movq	%rax, %rdi
	call	qtx_cleanup_txl
	movq	-24(%rbp), %rax
	movq	944(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$155, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -4(%rbp)
	jmp	.L66
.L67:
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ossl_qrl_enc_level_set_discard@PLT
	addl	$1, -4(%rbp)
.L66:
	cmpl	$3, -4(%rbp)
	jbe	.L67
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$161, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L63
.L68:
	nop
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	ossl_qtx_free, .-ossl_qtx_free
	.globl	ossl_qtx_set_mutator
	.type	ossl_qtx_set_mutator, @function
ossl_qtx_set_mutator:
.LFB746:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 976(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 984(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 992(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	ossl_qtx_set_mutator, .-ossl_qtx_set_mutator
	.globl	ossl_qtx_set_qlog_cb
	.type	ossl_qtx_set_qlog_cb, @function
ossl_qtx_set_qlog_cb:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 856(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 864(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	ossl_qtx_set_qlog_cb, .-ossl_qtx_set_qlog_cb
	.globl	ossl_qtx_provide_secret
	.type	ossl_qtx_provide_secret, @function
ossl_qtx_provide_secret:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	cmpl	$3, -12(%rbp)
	jbe	.L72
	movl	$0, %eax
	jmp	.L73
.L72:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	16(%rcx), %rdi
	movq	-24(%rbp), %r8
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %ecx
	pushq	$1
	pushq	$0
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%r8, %r9
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	ossl_qrl_enc_level_set_provide_secret@PLT
	addq	$32, %rsp
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	ossl_qtx_provide_secret, .-ossl_qtx_provide_secret
	.globl	ossl_qtx_discard_enc_level
	.type	ossl_qtx_discard_enc_level, @function
ossl_qtx_discard_enc_level:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$3, -12(%rbp)
	jbe	.L75
	movl	$0, %eax
	jmp	.L76
.L75:
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ossl_qrl_enc_level_set_discard@PLT
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	ossl_qtx_discard_enc_level, .-ossl_qtx_discard_enc_level
	.globl	ossl_qtx_is_enc_level_provisioned
	.type	ossl_qtx_is_enc_level_provisioned, @function
ossl_qtx_is_enc_level_provisioned:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movl	-12(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	ossl_qtx_is_enc_level_provisioned, .-ossl_qtx_is_enc_level_provisioned
	.type	qtx_alloc_txe, @function
qtx_alloc_txe:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$-258, -24(%rbp)
	jbe	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	movq	-24(%rbp), %rax
	addq	$256, %rax
	leaq	.LC0(%rip), %rcx
	movl	$224, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L82
	movl	$0, %eax
	jmp	.L81
.L82:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_txe_init_elem
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	qtx_alloc_txe, .-qtx_alloc_txe
	.type	qtx_ensure_free_txe, @function
qtx_ensure_free_txe:
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
	movq	-24(%rbp), %rax
	addq	$880, %rax
	movq	%rax, %rdi
	call	ossl_list_txe_head
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L84
	movq	-8(%rbp), %rax
	jmp	.L85
.L84:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qtx_alloc_txe
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L86
	movl	$0, %eax
	jmp	.L85
.L86:
	movq	-24(%rbp), %rax
	leaq	880(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_txe_insert_tail
	movq	-8(%rbp), %rax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	qtx_ensure_free_txe, .-qtx_ensure_free_txe
	.type	qtx_resize_txe, @function
qtx_resize_txe:
.LFB753:
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
	cmpq	$0, -40(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	cmpq	$-258, -48(%rbp)
	jbe	.L90
	movl	$0, %eax
	jmp	.L89
.L90:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_txe_prev
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_txe_remove
	movq	-48(%rbp), %rax
	leaq	256(%rax), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$281, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L91
	cmpq	$0, -8(%rbp)
	jne	.L92
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_txe_insert_head
	jmp	.L93
.L92:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_list_txe_insert_after
.L93:
	movl	$0, %eax
	jmp	.L89
.L91:
	cmpq	$0, -8(%rbp)
	jne	.L94
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_txe_insert_head
	jmp	.L95
.L94:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_list_txe_insert_after
.L95:
	movq	-24(%rbp), %rax
	movq	944(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L96
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 944(%rax)
.L96:
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	qtx_resize_txe, .-qtx_resize_txe
	.type	qtx_reserve_txe, @function
qtx_reserve_txe:
.LFB754:
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
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L98
	movq	-24(%rbp), %rax
	jmp	.L99
.L98:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qtx_resize_txe
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	qtx_reserve_txe, .-qtx_reserve_txe
	.type	qtx_pending_to_free, @function
qtx_pending_to_free:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$904, %rax
	movq	%rax, %rdi
	call	ossl_list_txe_head
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	904(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_txe_remove
	movq	-24(%rbp), %rax
	movq	928(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 928(%rax)
	movq	-24(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 936(%rax)
	movq	-24(%rbp), %rax
	leaq	880(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_txe_insert_tail
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	qtx_pending_to_free, .-qtx_pending_to_free
	.type	qtx_add_to_pending, @function
qtx_add_to_pending:
.LFB756:
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
	leaq	904(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_txe_insert_tail
	movq	-8(%rbp), %rax
	movq	928(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 928(%rax)
	movq	-8(%rbp), %rax
	movq	936(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 936(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	qtx_add_to_pending, .-qtx_add_to_pending
	.type	iovec_total_bytes, @function
iovec_total_bytes:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L103
.L104:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	addq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
.L103:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L104
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	iovec_total_bytes, .-iovec_total_bytes
	.type	iovec_cur_init, @function
iovec_cur_init:
.LFB758:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	iovec_total_bytes
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	iovec_cur_init, .-iovec_cur_init
	.type	iovec_cur_get_buffer, @function
iovec_cur_get_buffer:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L108
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L109
.L108:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L110
	movl	$0, %eax
	jmp	.L109
.L110:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L111
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.L111:
	cmpq	$0, -8(%rbp)
	je	.L112
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	jmp	.L109
.L112:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.L108
.L109:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	iovec_cur_get_buffer, .-iovec_cur_get_buffer
	.globl	ossl_qtx_calculate_ciphertext_payload_len
	.type	ossl_qtx_calculate_ciphertext_payload_len, @function
ossl_qtx_calculate_ciphertext_payload_len:
.LFB760:
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
	leaq	16(%rax), %rcx
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L114
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L115
.L114:
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_cipher_tag_len@PLT
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	ossl_qtx_calculate_ciphertext_payload_len, .-ossl_qtx_calculate_ciphertext_payload_len
	.globl	ossl_qtx_calculate_plaintext_payload_len
	.type	ossl_qtx_calculate_plaintext_payload_len, @function
ossl_qtx_calculate_plaintext_payload_len:
.LFB761:
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
	leaq	16(%rax), %rcx
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L117
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L118
.L117:
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_cipher_tag_len@PLT
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L119
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L118
.L119:
	movq	-40(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	ossl_qtx_calculate_plaintext_payload_len, .-ossl_qtx_calculate_plaintext_payload_len
	.type	qtx_write_hdr, @function
qtx_write_hdr:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	$0, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	txe_data
	movq	-104(%rbp), %rdx
	movq	16(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-8(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L126
.L121:
	movq	-96(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %esi
	movq	-112(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_pkt_hdr@PLT
	testl	%eax, %eax
	je	.L123
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	testl	%eax, %eax
	jne	.L124
.L123:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	movl	$0, %eax
	jmp	.L126
.L124:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	movq	-88(%rbp), %rax
	movq	1000(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-88(%rbp), %rax
	movq	1000(%rax), %r10
	movq	-88(%rbp), %rax
	movq	1008(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	1016(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$513, %edx
	movl	$1, %esi
	movl	$1, %edi
	call	*%r10
	addq	$16, %rsp
.L125:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	qtx_write_hdr, .-qtx_write_hdr
	.type	qtx_encrypt_into_txe, @function
qtx_encrypt_into_txe:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movq	-104(%rbp), %rax
	leaq	16(%rax), %rcx
	movl	-124(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$502, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L128:
	movq	-32(%rbp), %rax
	movq	88(%rax), %rbx
	movq	-32(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_max_pkt@PLT
	cmpq	%rax, %rbx
	jb	.L130
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$511, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$395, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L130:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L131
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$522, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L131:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -44(%rbp)
	cmpl	$7, -44(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L132
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$529, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L132:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	106(%rax), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	$0, -24(%rbp)
	jmp	.L133
.L134:
	movl	-44(%rbp), %eax
	cltq
	subq	-24(%rbp), %rax
	subq	$1, %rax
	movzbl	-80(%rbp,%rax), %esi
	movq	-24(%rbp), %rax
	sall	$3, %eax
	movq	-136(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	cltq
	subq	-24(%rbp), %rax
	subq	$1, %rax
	xorl	%esi, %edx
	movb	%dl, -80(%rbp,%rax)
	addq	$1, -24(%rbp)
.L133:
	cmpq	$7, -24(%rbp)
	jbe	.L134
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	cmpl	$1, %eax
	je	.L135
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$539, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L135:
	movq	16(%rbp), %rax
	movl	%eax, %esi
	movq	-144(%rbp), %rcx
	leaq	-60(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	cmpl	$1, %eax
	je	.L136
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$545, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L136:
	leaq	-88(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	iovec_cur_get_buffer
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L137
	leaq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	cmpl	$1, %eax
	jne	.L138
	jmp	.L144
.L137:
	movq	-56(%rbp), %rax
	movl	%eax, %r12d
	movq	-88(%rbp), %rbx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	txe_data
	movq	-120(%rbp), %rdx
	movq	16(%rdx), %rdx
	leaq	(%rax,%rdx), %rsi
	leaq	-60(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%r12d, %r8d
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	cmpl	$1, %eax
	je	.L140
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$560, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L140:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L136
.L138:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$575, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L144:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	txe_data
	movq	-120(%rbp), %rdx
	movq	16(%rdx), %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	cmpl	$1, %eax
	je	.L141
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$581, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L141:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_hdr_protector_encrypt@PLT
	testl	%eax, %eax
	jne	.L142
	movl	$0, %eax
	jmp	.L143
.L142:
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 88(%rax)
	movl	$1, %eax
.L143:
	subq	$-128, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	qtx_encrypt_into_txe, .-qtx_encrypt_into_txe
	.type	qtx_write, @function
qtx_write:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movl	%ecx, -220(%rbp)
	movq	%r8, -232(%rbp)
	movq	%r9, -240(%rbp)
	movq	$0, -40(%rbp)
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_is_encrypted
	testl	%eax, %eax
	jne	.L146
	movl	$0, -24(%rbp)
	movq	$7, -32(%rbp)
	jmp	.L147
.L146:
	movl	$1, -24(%rbp)
	movq	$21, -32(%rbp)
	movq	-200(%rbp), %rax
	leaq	16(%rax), %rcx
	movl	-220(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L147
	movl	$0, %eax
	jmp	.L164
.L147:
	movq	-216(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-216(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L149
	movl	$-2, -20(%rbp)
	jmp	.L150
.L149:
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$5, %al
	jne	.L151
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	andl	$1, %eax
	movq	-232(%rbp), %rdx
	andl	$1, %eax
	leal	(%rax,%rax), %ecx
	movzbl	1(%rdx), %eax
	andl	$-3, %eax
	orl	%ecx, %eax
	movb	%al, 1(%rdx)
.L151:
	movq	16(%rbp), %rdx
	movq	-240(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	iovec_cur_init
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L152
	movl	$-1, -20(%rbp)
	jmp	.L150
.L152:
	cmpl	$0, -24(%rbp)
	je	.L153
	movq	-112(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	movl	-220(%rbp), %esi
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qtx_calculate_ciphertext_payload_len@PLT
	jmp	.L154
.L153:
	movq	-112(%rbp), %rax
	movq	%rax, -104(%rbp)
.L154:
	movq	-232(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-104(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-232(%rbp), %rax
	movzbl	8(%rax), %eax
	movzbl	%al, %eax
	movq	-232(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_get_encoded_pkt_hdr_len@PLT
	cltq
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L155
	movl	$-1, -20(%rbp)
	jmp	.L150
.L155:
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	%rax, -56(%rbp)
	jnb	.L156
	movl	$-2, -20(%rbp)
	jmp	.L150
.L156:
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_has_pn
	testl	%eax, %eax
	je	.L157
	movq	-232(%rbp), %rax
	movzbl	1(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %edx
	movq	-232(%rbp), %rax
	leaq	50(%rax), %rcx
	movq	-208(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_wire_encode_pkt_hdr_pn@PLT
	testl	%eax, %eax
	jne	.L157
	movl	$-1, -20(%rbp)
	jmp	.L150
.L157:
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	txe_data
	movq	-216(%rbp), %rdx
	movq	16(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	leaq	-176(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-232(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	qtx_write_hdr
	testl	%eax, %eax
	jne	.L158
	movl	$-1, -20(%rbp)
	jmp	.L150
.L158:
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	txe_data
	movq	-216(%rbp), %rdx
	movq	16(%rdx), %rdx
	addq	%rdx, %rax
	subq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L159
.L162:
	leaq	-184(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	iovec_cur_get_buffer
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L165
	movq	-184(%rbp), %rbx
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	txe_data
	movq	-216(%rbp), %rdx
	movq	16(%rdx), %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-216(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L162
.L159:
	movq	-208(%rbp), %rax
	movq	40(%rax), %r8
	movq	-80(%rbp), %r9
	movl	-220(%rbp), %ecx
	movq	-216(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	movq	-200(%rbp), %rax
	leaq	-176(%rbp), %rdi
	pushq	%rdi
	pushq	-88(%rbp)
	movq	%rax, %rdi
	call	qtx_encrypt_into_txe
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L163
	movl	$-1, -20(%rbp)
	jmp	.L150
.L165:
	nop
.L163:
	movl	$1, %eax
	jmp	.L164
.L150:
	movq	-216(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	-20(%rbp), %eax
.L164:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	qtx_write, .-qtx_write
	.type	qtx_ensure_cons, @function
qtx_ensure_cons:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	944(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L167
	movq	-8(%rbp), %rax
	jmp	.L168
.L167:
	movq	-24(%rbp), %rax
	movq	872(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtx_ensure_free_txe
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L169
	movl	$0, %eax
	jmp	.L168
.L169:
	movq	-24(%rbp), %rax
	leaq	880(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_txe_remove
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 944(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 952(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	qtx_ensure_cons, .-qtx_ensure_cons
	.type	qtx_get_qlog, @function
qtx_get_qlog:
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
	movq	856(%rax), %rax
	testq	%rax, %rax
	jne	.L171
	movl	$0, %eax
	jmp	.L172
.L171:
	movq	-8(%rbp), %rax
	movq	856(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	864(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	qtx_get_qlog, .-qtx_get_qlog
	.type	qtx_mutate_write, @function
qtx_mutate_write:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	-88(%rbp), %rax
	movq	976(%rax), %rax
	testq	%rax, %rax
	je	.L174
	movq	-88(%rbp), %rax
	movq	976(%rax), %r10
	movq	-88(%rbp), %rax
	movq	992(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %r9
	leaq	-72(%rbp), %r8
	leaq	-64(%rbp), %rcx
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L175
	movl	$-1, %eax
	jmp	.L179
.L174:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
.L175:
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %r9
	movq	-64(%rbp), %r8
	movl	-108(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	qtx_write
	addq	$16, %rsp
	movl	%eax, -52(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.L177
	movq	-88(%rbp), %rax
	movq	968(%rax), %r15
	movq	-80(%rbp), %r14
	movq	-72(%rbp), %r13
	movq	-96(%rbp), %rax
	movq	40(%rax), %r12
	movq	-64(%rbp), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	qtx_get_qlog
	movq	%r15, %r9
	movq	%r14, %r8
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ossl_qlog_event_transport_packet_sent@PLT
.L177:
	movq	-88(%rbp), %rax
	movq	984(%rax), %rax
	testq	%rax, %rax
	je	.L178
	movq	-88(%rbp), %rax
	movq	984(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	992(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
.L178:
	movl	-52(%rbp), %eax
.L179:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	qtx_mutate_write, .-qtx_mutate_write
	.type	addr_eq, @function
addr_eq:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L181
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	jne	.L182
.L181:
	cmpq	$0, -16(%rbp)
	je	.L183
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	je	.L183
.L182:
	cmpq	$0, -8(%rbp)
	je	.L184
	cmpq	$0, -16(%rbp)
	je	.L184
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$112, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L184
.L183:
	movl	$1, %eax
	jmp	.L186
.L184:
	movl	$0, %eax
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	addr_eq, .-addr_eq
	.globl	ossl_qtx_write_pkt
	.type	ossl_qtx_write_pkt, @function
ossl_qtx_write_pkt:
.LFB769:
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
	movl	48(%rax), %eax
	andl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L188
	movl	$0, %eax
	jmp	.L189
.L188:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_to_enc_level
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_can_share_dgram
	testl	%eax, %eax
	jne	.L190
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qtx_finish_dgram@PLT
	jmp	.L191
.L190:
	cmpl	$3, -12(%rbp)
	ja	.L192
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ossl_qrl_enc_level_set_have_el@PLT
	cmpl	$1, %eax
	je	.L191
.L192:
	movl	$0, %eax
	jmp	.L189
.L191:
	movq	-40(%rbp), %rax
	movq	944(%rax), %rax
	testq	%rax, %rax
	je	.L193
	movq	-40(%rbp), %rax
	movq	944(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L193
	movl	$1, %eax
	jmp	.L194
.L193:
	movl	$0, %eax
.L194:
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L208
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	944(%rdx), %rdx
	addq	$32, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	addr_eq
	testl	%eax, %eax
	je	.L196
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	944(%rdx), %rdx
	addq	$144, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	addr_eq
	testl	%eax, %eax
	jne	.L208
.L196:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qtx_finish_dgram@PLT
	movl	$0, -8(%rbp)
.L208:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	qtx_ensure_cons
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L197
	movl	$0, %eax
	jmp	.L189
.L197:
	movq	-40(%rbp), %rax
	movq	872(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	qtx_reserve_txe
	testq	%rax, %rax
	jne	.L198
	movl	$0, %eax
	jmp	.L189
.L198:
	cmpl	$0, -8(%rbp)
	jne	.L199
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L200
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_ADDR_copy@PLT
	testl	%eax, %eax
	jne	.L201
	movl	$0, %eax
	jmp	.L189
.L200:
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
.L201:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L202
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$144, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_ADDR_copy@PLT
	testl	%eax, %eax
	jne	.L199
	movl	$0, %eax
	jmp	.L189
.L202:
	movq	-24(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
.L199:
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	qtx_mutate_write
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L213
	cmpl	$-2, -28(%rbp)
	jne	.L205
	cmpl	$0, -8(%rbp)
	je	.L206
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qtx_finish_dgram@PLT
	movl	$0, -8(%rbp)
	jmp	.L208
.L206:
	movl	$0, %eax
	jmp	.L189
.L205:
	movl	$0, %eax
	jmp	.L189
.L213:
	nop
	movq	-40(%rbp), %rax
	movq	952(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 952(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_must_be_last
	testl	%eax, %eax
	je	.L209
	movl	$0, -4(%rbp)
.L209:
	cmpl	$0, -4(%rbp)
	jne	.L210
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qtx_finish_dgram@PLT
.L210:
	movl	$1, %eax
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	ossl_qtx_write_pkt, .-ossl_qtx_write_pkt
	.globl	ossl_qtx_finish_dgram
	.type	ossl_qtx_finish_dgram, @function
ossl_qtx_finish_dgram:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	944(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L219
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L217
	movq	-24(%rbp), %rax
	leaq	880(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_txe_insert_tail
	jmp	.L218
.L217:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qtx_add_to_pending
.L218:
	movq	-24(%rbp), %rax
	movq	$0, 944(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 952(%rax)
	movq	-24(%rbp), %rax
	movq	968(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 968(%rax)
	jmp	.L214
.L219:
	nop
.L214:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	ossl_qtx_finish_dgram, .-ossl_qtx_finish_dgram
	.type	txe_to_msg, @function
txe_to_msg:
.LFB771:
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
	call	txe_data
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	je	.L221
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	jmp	.L222
.L221:
	movl	$0, %edx
.L222:
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	je	.L223
	movq	-8(%rbp), %rax
	leaq	144(%rax), %rdx
	jmp	.L224
.L223:
	movl	$0, %edx
.L224:
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	txe_to_msg, .-txe_to_msg
	.globl	ossl_qtx_flush_net
	.type	ossl_qtx_flush_net, @function
ossl_qtx_flush_net:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1344, %rsp
	movq	%rdi, -1336(%rbp)
	movq	$0, -16(%rbp)
	movq	-1336(%rbp), %rax
	addq	$904, %rax
	movq	%rax, %rdi
	call	ossl_list_txe_head
	testq	%rax, %rax
	jne	.L226
	movl	$1, %eax
	jmp	.L242
.L226:
	movq	-1336(%rbp), %rax
	movq	848(%rax), %rax
	testq	%rax, %rax
	jne	.L228
	movl	$-2, %eax
	jmp	.L242
.L228:
	movq	-1336(%rbp), %rax
	addq	$904, %rax
	movq	%rax, %rdi
	call	ossl_list_txe_head
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L229
.L231:
	leaq	-1312(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txe_to_msg
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_txe_next
	movq	%rax, -24(%rbp)
	addq	$1, -8(%rbp)
.L229:
	cmpq	$0, -24(%rbp)
	je	.L230
	cmpq	$31, -8(%rbp)
	jbe	.L231
.L230:
	cmpq	$0, -8(%rbp)
	je	.L243
	call	ERR_set_mark@PLT
	movq	-1336(%rbp), %rax
	movq	848(%rax), %rax
	leaq	-1320(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	-1312(%rbp), %rsi
	movq	%rcx, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L234
	movq	-1320(%rbp), %rax
	testq	%rax, %rax
	jne	.L234
	call	ERR_clear_last_mark@PLT
	jmp	.L233
.L234:
	cmpl	$0, -28(%rbp)
	jne	.L235
	call	ERR_peek_last_error@PLT
	movl	%eax, %edi
	call	BIO_err_is_non_fatal@PLT
	testl	%eax, %eax
	je	.L236
	call	ERR_pop_to_mark@PLT
	jmp	.L233
.L236:
	call	ERR_clear_last_mark@PLT
	movl	$-2, %eax
	jmp	.L242
.L235:
	call	ERR_clear_last_mark@PLT
	movq	$0, -8(%rbp)
	jmp	.L237
.L239:
	movq	-1336(%rbp), %rax
	movq	1000(%rax), %rax
	testq	%rax, %rax
	je	.L238
	movq	-1336(%rbp), %rax
	movq	1000(%rax), %r10
	movq	-1336(%rbp), %rax
	movq	1008(%rax), %rcx
	movq	-1336(%rbp), %rax
	movq	1016(%rax), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1304, %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1312, %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$512, %edx
	movl	$1, %esi
	movl	$1, %edi
	call	*%r10
	addq	$16, %rsp
.L238:
	movq	-1336(%rbp), %rax
	movq	%rax, %rdi
	call	qtx_pending_to_free
	addq	$1, -8(%rbp)
.L237:
	movq	-1320(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L239
	movq	-1320(%rbp), %rax
	addq	%rax, -16(%rbp)
	jmp	.L228
.L243:
	nop
.L233:
	cmpq	$0, -16(%rbp)
	je	.L240
	movl	$1, %eax
	jmp	.L242
.L240:
	movl	$-1, %eax
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	ossl_qtx_flush_net, .-ossl_qtx_flush_net
	.globl	ossl_qtx_pop_net
	.type	ossl_qtx_pop_net, @function
ossl_qtx_pop_net:
.LFB773:
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
	addq	$904, %rax
	movq	%rax, %rdi
	call	ossl_list_txe_head
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L245
	movl	$0, %eax
	jmp	.L246
.L245:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	txe_to_msg
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	qtx_pending_to_free
	movl	$1, %eax
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	ossl_qtx_pop_net, .-ossl_qtx_pop_net
	.globl	ossl_qtx_set_bio
	.type	ossl_qtx_set_bio, @function
ossl_qtx_set_bio:
.LFB774:
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
	movq	%rdx, 848(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	ossl_qtx_set_bio, .-ossl_qtx_set_bio
	.globl	ossl_qtx_set_mdpl
	.type	ossl_qtx_set_mdpl, @function
ossl_qtx_set_mdpl:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$1199, -16(%rbp)
	ja	.L249
	movl	$0, %eax
	jmp	.L250
.L249:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 872(%rax)
	movl	$1, %eax
.L250:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	ossl_qtx_set_mdpl, .-ossl_qtx_set_mdpl
	.globl	ossl_qtx_get_mdpl
	.type	ossl_qtx_get_mdpl, @function
ossl_qtx_get_mdpl:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	872(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	ossl_qtx_get_mdpl, .-ossl_qtx_get_mdpl
	.globl	ossl_qtx_get_queue_len_datagrams
	.type	ossl_qtx_get_queue_len_datagrams, @function
ossl_qtx_get_queue_len_datagrams:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	928(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	ossl_qtx_get_queue_len_datagrams, .-ossl_qtx_get_queue_len_datagrams
	.globl	ossl_qtx_get_queue_len_bytes
	.type	ossl_qtx_get_queue_len_bytes, @function
ossl_qtx_get_queue_len_bytes:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	936(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	ossl_qtx_get_queue_len_bytes, .-ossl_qtx_get_queue_len_bytes
	.globl	ossl_qtx_get_cur_dgram_len_bytes
	.type	ossl_qtx_get_cur_dgram_len_bytes, @function
ossl_qtx_get_cur_dgram_len_bytes:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	944(%rax), %rax
	testq	%rax, %rax
	je	.L258
	movq	-8(%rbp), %rax
	movq	944(%rax), %rax
	movq	16(%rax), %rax
	jmp	.L260
.L258:
	movl	$0, %eax
.L260:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	ossl_qtx_get_cur_dgram_len_bytes, .-ossl_qtx_get_cur_dgram_len_bytes
	.globl	ossl_qtx_get_unflushed_pkt_count
	.type	ossl_qtx_get_unflushed_pkt_count, @function
ossl_qtx_get_unflushed_pkt_count:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	952(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	ossl_qtx_get_unflushed_pkt_count, .-ossl_qtx_get_unflushed_pkt_count
	.globl	ossl_qtx_trigger_key_update
	.type	ossl_qtx_trigger_key_update, @function
ossl_qtx_trigger_key_update:
.LFB781:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_key_update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	ossl_qtx_trigger_key_update, .-ossl_qtx_trigger_key_update
	.globl	ossl_qtx_get_cur_epoch_pkt_count
	.type	ossl_qtx_get_cur_epoch_pkt_count, @function
ossl_qtx_get_cur_epoch_pkt_count:
.LFB782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L266
	movq	$-1, %rax
	jmp	.L267
.L266:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	ossl_qtx_get_cur_epoch_pkt_count, .-ossl_qtx_get_cur_epoch_pkt_count
	.globl	ossl_qtx_get_max_epoch_pkt_count
	.type	ossl_qtx_get_max_epoch_pkt_count, @function
ossl_qtx_get_max_epoch_pkt_count:
.LFB783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rcx
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L269
	movq	$-1, %rax
	jmp	.L270
.L269:
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_max_pkt@PLT
.L270:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	ossl_qtx_get_max_epoch_pkt_count, .-ossl_qtx_get_max_epoch_pkt_count
	.globl	ossl_qtx_set_msg_callback
	.type	ossl_qtx_set_msg_callback, @function
ossl_qtx_set_msg_callback:
.LFB784:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 1000(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 1016(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	ossl_qtx_set_msg_callback, .-ossl_qtx_set_msg_callback
	.globl	ossl_qtx_set_msg_callback_arg
	.type	ossl_qtx_set_msg_callback_arg, @function
ossl_qtx_set_msg_callback_arg:
.LFB785:
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
	movq	%rdx, 1008(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	ossl_qtx_set_msg_callback_arg, .-ossl_qtx_set_msg_callback_arg
	.globl	ossl_qtx_get_key_epoch
	.type	ossl_qtx_get_key_epoch, @function
ossl_qtx_get_key_epoch:
.LFB786:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L274
	movl	$0, %eax
	jmp	.L275
.L274:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	ossl_qtx_get_key_epoch, .-ossl_qtx_get_key_epoch
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"qtx_encrypt_into_txe"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
