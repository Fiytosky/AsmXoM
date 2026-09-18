	.file	"quic_record_rx.c"
	.text
	.type	packet_forward, @function
packet_forward:
.LFB480:
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
.LFE480:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB481:
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
.LFE481:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_data, @function
PACKET_data:
.LFB483:
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
.LFE483:
	.size	PACKET_data, .-PACKET_data
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
	jns	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_forward, @function
PACKET_forward:
.LFB513:
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
	jnb	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	PACKET_forward, .-PACKET_forward
	.type	ossl_quic_enc_level_to_pn_space, @function
ossl_quic_enc_level_to_pn_space:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$3, -4(%rbp)
	ja	.L13
	cmpl	$2, -4(%rbp)
	jnb	.L14
	cmpl	$0, -4(%rbp)
	je	.L15
	cmpl	$1, -4(%rbp)
	je	.L16
	jmp	.L13
.L15:
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$1, %eax
	jmp	.L17
.L14:
	movl	$2, %eax
	jmp	.L17
.L13:
	movl	$2, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	ossl_quic_enc_level_to_pn_space, .-ossl_quic_enc_level_to_pn_space
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
	jne	.L19
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jbe	.L20
.L19:
	movl	$0, %eax
	jmp	.L21
.L20:
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
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	ossl_quic_conn_id_eq, .-ossl_quic_conn_id_eq
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
	je	.L23
	cmpl	$6, -4(%rbp)
	jne	.L24
.L23:
	movl	$0, %eax
	jmp	.L25
.L24:
	movl	$1, %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	ossl_quic_pkt_type_is_encrypted, .-ossl_quic_pkt_type_is_encrypted
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
	.type	ossl_quic_urxe_data, @function
ossl_quic_urxe_data:
.LFB567:
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
.LFE567:
	.size	ossl_quic_urxe_data, .-ossl_quic_urxe_data
	.type	ossl_list_urxe_is_empty, @function
ossl_list_urxe_is_empty:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	ossl_list_urxe_is_empty, .-ossl_list_urxe_is_empty
	.type	ossl_list_urxe_head, @function
ossl_list_urxe_head:
.LFB573:
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
.LFE573:
	.size	ossl_list_urxe_head, .-ossl_list_urxe_head
	.type	ossl_list_urxe_next, @function
ossl_list_urxe_next:
.LFB575:
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
.LFE575:
	.size	ossl_list_urxe_next, .-ossl_list_urxe_next
	.type	ossl_list_urxe_remove, @function
ossl_list_urxe_remove:
.LFB577:
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
	jne	.L37
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L37:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L38
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L38:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
.L39:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L40:
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
.LFE577:
	.size	ossl_list_urxe_remove, .-ossl_list_urxe_remove
	.type	ossl_list_urxe_insert_tail, @function
ossl_list_urxe_insert_tail:
.LFB579:
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
	je	.L42
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L42:
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
	jne	.L43
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L43:
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
.LFE579:
	.size	ossl_list_urxe_insert_tail, .-ossl_list_urxe_insert_tail
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB635:
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
.LFE635:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB636:
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
.LFE636:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB651:
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
.LFE651:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB652:
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
.LFE652:
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
	.type	pkt_mark, @function
pkt_mark:
.LFB729:
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
	movq	-16(%rbp), %rdx
	movl	$1, %esi
	movl	%edx, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rdx
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	pkt_mark, .-pkt_mark
	.type	pkt_is_marked, @function
pkt_is_marked:
.LFB730:
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
	movq	-16(%rbp), %rdx
	movl	%edx, %ecx
	shrq	%cl, %rax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	pkt_is_marked, .-pkt_is_marked
	.type	ossl_list_rxe_init_elem, @function
ossl_list_rxe_init_elem:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	ossl_list_rxe_init_elem, .-ossl_list_rxe_init_elem
	.type	ossl_list_rxe_is_empty, @function
ossl_list_rxe_is_empty:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ossl_list_rxe_is_empty, .-ossl_list_rxe_is_empty
	.type	ossl_list_rxe_head, @function
ossl_list_rxe_head:
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
	.size	ossl_list_rxe_head, .-ossl_list_rxe_head
	.type	ossl_list_rxe_next, @function
ossl_list_rxe_next:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	ossl_list_rxe_next, .-ossl_list_rxe_next
	.type	ossl_list_rxe_prev, @function
ossl_list_rxe_prev:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	ossl_list_rxe_prev, .-ossl_list_rxe_prev
	.type	ossl_list_rxe_remove, @function
ossl_list_rxe_remove:
.LFB739:
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
	jne	.L69
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L69:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L70
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L70:
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rdx, 72(%rax)
.L71:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, 80(%rax)
.L72:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$72, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	ossl_list_rxe_remove, .-ossl_list_rxe_remove
	.type	ossl_list_rxe_insert_head, @function
ossl_list_rxe_insert_head:
.LFB740:
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
	je	.L74
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 80(%rax)
.L74:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L75
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L75:
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
.LFE740:
	.size	ossl_list_rxe_insert_head, .-ossl_list_rxe_insert_head
	.type	ossl_list_rxe_insert_tail, @function
ossl_list_rxe_insert_tail:
.LFB741:
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
	je	.L77
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
.L77:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L78
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L78:
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
	.size	ossl_list_rxe_insert_tail, .-ossl_list_rxe_insert_tail
	.type	ossl_list_rxe_insert_after, @function
ossl_list_rxe_insert_after:
.LFB743:
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
	movq	%rdx, 80(%rax)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 80(%rax)
.L80:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L81
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L81:
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
.LFE743:
	.size	ossl_list_rxe_insert_after, .-ossl_list_rxe_insert_after
	.type	rxe_data, @function
rxe_data:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$464, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	rxe_data, .-rxe_data
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_record_rx.c"
	.text
	.globl	ossl_qrx_new
	.type	ossl_qrx_new, @function
ossl_qrx_new:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L86
.L85:
	movl	$0, %eax
	jmp	.L87
.L86:
	leaq	.LC0(%rip), %rax
	movl	$184, %edx
	movq	%rax, %rsi
	movl	$1088, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L87
.L88:
	movq	$0, -8(%rbp)
	jmp	.L89
.L90:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$4, %rdx
	movq	8(%rax,%rdx,8), %rdx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$18, %rcx
	movq	%rdx, (%rax,%rcx,8)
	addq	$1, -8(%rbp)
.L89:
	cmpq	$2, -8(%rbp)
	jbe	.L90
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movzbl	64(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, 1056(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	ossl_qrx_new, .-ossl_qrx_new
	.type	qrx_cleanup_rxl, @function
qrx_cleanup_rxl:
.LFB746:
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
	call	ossl_list_rxe_head
	movq	%rax, -8(%rbp)
	jmp	.L92
.L93:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_rxe_next
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_rxe_remove
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$207, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L92:
	cmpq	$0, -8(%rbp)
	jne	.L93
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	qrx_cleanup_rxl, .-qrx_cleanup_rxl
	.type	qrx_cleanup_urxl, @function
qrx_cleanup_urxl:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_head
	movq	%rax, -8(%rbp)
	jmp	.L95
.L96:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_next
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_urxe_remove
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_demux_release_urxe@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L95:
	cmpq	$0, -8(%rbp)
	jne	.L96
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	qrx_cleanup_urxl, .-qrx_cleanup_urxl
	.globl	ossl_qrx_free
	.type	ossl_qrx_free, @function
ossl_qrx_free:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L102
	movq	-24(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	call	qrx_cleanup_rxl
	movq	-24(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	qrx_cleanup_rxl
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qrx_cleanup_urxl
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qrx_cleanup_urxl
	movl	$0, -4(%rbp)
	jmp	.L100
.L101:
	movq	-24(%rbp), %rax
	leaq	168(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ossl_qrl_enc_level_set_discard@PLT
	addl	$1, -4(%rbp)
.L100:
	cmpl	$3, -4(%rbp)
	jbe	.L101
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$239, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L97
.L102:
	nop
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	ossl_qrx_free, .-ossl_qrx_free
	.globl	ossl_qrx_inject_urxe
	.type	ossl_qrx_inject_urxe, @function
ossl_qrx_inject_urxe:
.LFB749:
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
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 288(%rax)
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_insert_tail
	movq	-8(%rbp), %rax
	movq	1064(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-8(%rbp), %rax
	movq	1064(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	1072(%rdx), %rcx
	movq	-8(%rbp), %rdx
	movq	1080(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rsi
	movq	-16(%rbp), %rdx
	addq	$296, %rdx
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$512, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	*%rax
	addq	$16, %rsp
.L105:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	ossl_qrx_inject_urxe, .-ossl_qrx_inject_urxe
	.type	qrx_requeue_deferred, @function
qrx_requeue_deferred:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L107
.L108:
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_remove
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_insert_tail
.L107:
	movq	-24(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_head
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L108
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	qrx_requeue_deferred, .-qrx_requeue_deferred
	.globl	ossl_qrx_provide_secret
	.type	ossl_qrx_provide_secret, @function
ossl_qrx_provide_secret:
.LFB751:
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
	jbe	.L110
	movl	$0, %eax
	jmp	.L111
.L110:
	movq	-8(%rbp), %rax
	movzbl	1056(%rax), %eax
	movzbl	%al, %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	168(%rcx), %rdi
	movq	-24(%rbp), %r9
	movl	-16(%rbp), %r8d
	movl	-12(%rbp), %ecx
	pushq	$0
	pushq	%rsi
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%rax, %rsi
	call	ossl_qrl_enc_level_set_provide_secret@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L112
	movl	$0, %eax
	jmp	.L111
.L112:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qrx_requeue_deferred
	movl	$1, %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	ossl_qrx_provide_secret, .-ossl_qrx_provide_secret
	.globl	ossl_qrx_discard_enc_level
	.type	ossl_qrx_discard_enc_level, @function
ossl_qrx_discard_enc_level:
.LFB752:
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
	jbe	.L114
	movl	$0, %eax
	jmp	.L115
.L114:
	movq	-8(%rbp), %rax
	leaq	168(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ossl_qrl_enc_level_set_discard@PLT
	movl	$1, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	ossl_qrx_discard_enc_level, .-ossl_qrx_discard_enc_level
	.globl	ossl_qrx_processed_read_pending
	.type	ossl_qrx_processed_read_pending, @function
ossl_qrx_processed_read_pending:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	ossl_list_rxe_is_empty
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	ossl_qrx_processed_read_pending, .-ossl_qrx_processed_read_pending
	.globl	ossl_qrx_unprocessed_read_pending
	.type	ossl_qrx_unprocessed_read_pending, @function
ossl_qrx_unprocessed_read_pending:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_is_empty
	testl	%eax, %eax
	je	.L119
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_is_empty
	testl	%eax, %eax
	jne	.L120
.L119:
	movl	$1, %eax
	jmp	.L122
.L120:
	movl	$0, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	ossl_qrx_unprocessed_read_pending, .-ossl_qrx_unprocessed_read_pending
	.type	qrx_pop_pending_rxe, @function
qrx_pop_pending_rxe:
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
	addq	$120, %rax
	movq	%rax, %rdi
	call	ossl_list_rxe_head
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L124
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-24(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_rxe_remove
	movq	-8(%rbp), %rax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	qrx_pop_pending_rxe, .-qrx_pop_pending_rxe
	.type	qrx_alloc_rxe, @function
qrx_alloc_rxe:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$-466, -24(%rbp)
	jbe	.L127
	movl	$0, %eax
	jmp	.L128
.L127:
	movq	-24(%rbp), %rax
	addq	$464, %rax
	leaq	.LC0(%rip), %rcx
	movl	$336, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L129
	movl	$0, %eax
	jmp	.L128
.L129:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_rxe_init_elem
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	qrx_alloc_rxe, .-qrx_alloc_rxe
	.type	qrx_ensure_free_rxe, @function
qrx_ensure_free_rxe:
.LFB757:
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
	addq	$96, %rax
	movq	%rax, %rdi
	call	ossl_list_rxe_head
	testq	%rax, %rax
	je	.L131
	movq	-24(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	call	ossl_list_rxe_head
	jmp	.L132
.L131:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	qrx_alloc_rxe
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L133
	movl	$0, %eax
	jmp	.L132
.L133:
	movq	-24(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_rxe_insert_tail
	movq	-8(%rbp), %rax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	qrx_ensure_free_rxe, .-qrx_ensure_free_rxe
	.type	qrx_resize_rxe, @function
qrx_resize_rxe:
.LFB758:
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
	cmpq	$0, -32(%rbp)
	jne	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	cmpq	$-466, -40(%rbp)
	jbe	.L137
	movl	$0, %eax
	jmp	.L136
.L137:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_rxe_prev
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_rxe_remove
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L138
	movl	$0, %eax
	jmp	.L136
.L138:
	movq	-40(%rbp), %rax
	leaq	464(%rax), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$397, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L139
	cmpq	$0, -8(%rbp)
	jne	.L140
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_rxe_insert_head
	jmp	.L141
.L140:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_list_rxe_insert_after
.L141:
	movl	$0, %eax
	jmp	.L136
.L139:
	cmpq	$0, -8(%rbp)
	jne	.L142
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_rxe_insert_head
	jmp	.L143
.L142:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_list_rxe_insert_after
.L143:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-16(%rbp), %rax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	qrx_resize_rxe, .-qrx_resize_rxe
	.type	qrx_reserve_rxe, @function
qrx_reserve_rxe:
.LFB759:
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
	movq	96(%rax), %rax
	cmpq	-24(%rbp), %rax
	jb	.L145
	movq	-16(%rbp), %rax
	jmp	.L146
.L145:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	qrx_resize_rxe
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	qrx_reserve_rxe, .-qrx_reserve_rxe
	.type	qrx_recycle_rxe, @function
qrx_recycle_rxe:
.LFB760:
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
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	leaq	96(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_rxe_insert_tail
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	qrx_recycle_rxe, .-qrx_recycle_rxe
	.type	qrx_relocate_buffer, @function
qrx_relocate_buffer:
.LFB761:
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
	cmpq	$0, -56(%rbp)
	jne	.L149
	movl	$1, %eax
	jmp	.L150
.L149:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	$96, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	qrx_reserve_rxe
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L151
	movl	$0, %eax
	jmp	.L150
.L151:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rxe_data
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	qrx_relocate_buffer, .-qrx_relocate_buffer
	.type	qrx_determine_enc_level, @function
qrx_determine_enc_level:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$5, %eax
	je	.L153
	cmpl	$5, %eax
	jg	.L154
	cmpl	$3, %eax
	je	.L155
	cmpl	$3, %eax
	jg	.L154
	cmpl	$1, %eax
	je	.L156
	cmpl	$2, %eax
	je	.L157
	jmp	.L154
.L156:
	movl	$0, %eax
	jmp	.L158
.L155:
	movl	$1, %eax
	jmp	.L158
.L157:
	movl	$2, %eax
	jmp	.L158
.L153:
	movl	$3, %eax
	jmp	.L158
.L154:
	movl	$0, %eax
.L158:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	qrx_determine_enc_level, .-qrx_determine_enc_level
	.type	rxe_determine_pn_space, @function
rxe_determine_pn_space:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rdi
	call	qrx_determine_enc_level
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ossl_quic_enc_level_to_pn_space
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	rxe_determine_pn_space, .-rxe_determine_pn_space
	.type	qrx_validate_hdr_early, @function
qrx_validate_hdr_early:
.LFB764:
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
	movl	116(%rax), %eax
	cmpl	$1, %eax
	je	.L162
	movq	-16(%rbp), %rax
	movl	116(%rax), %eax
	testl	%eax, %eax
	je	.L162
	movl	$0, %eax
	jmp	.L163
.L162:
	movq	-16(%rbp), %rax
	movzbl	112(%rax), %eax
	cmpb	$2, %al
	jne	.L164
	movl	$0, %eax
	jmp	.L163
.L164:
	cmpq	$0, -24(%rbp)
	je	.L165
	movq	-16(%rbp), %rax
	movzbl	112(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_can_share_dgram
	testl	%eax, %eax
	jne	.L165
	movl	$0, %eax
	jmp	.L163
.L165:
	cmpq	$0, -24(%rbp)
	je	.L166
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$19, %al
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L167
	movq	-16(%rbp), %rax
	leaq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	jne	.L166
.L167:
	movl	$0, %eax
	jmp	.L163
.L166:
	movl	$1, %eax
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	qrx_validate_hdr_early, .-qrx_validate_hdr_early
	.type	qrx_validate_hdr, @function
qrx_validate_hdr:
.LFB765:
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
	movq	%rax, %rdi
	call	rxe_determine_pn_space
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	leaq	200(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$18, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-32(%rbp), %rax
	movzbl	113(%rax), %eax
	shrb	$2, %al
	andl	$15, %eax
	movzbl	%al, %eax
	movq	-32(%rbp), %rsi
	leaq	162(%rsi), %rdi
	movq	%rax, %rsi
	call	ossl_quic_wire_decode_pkt_hdr_pn@PLT
	testl	%eax, %eax
	jne	.L169
	movl	$0, %eax
	jmp	.L170
.L169:
	movl	$1, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	qrx_validate_hdr, .-qrx_validate_hdr
	.type	qrx_validate_hdr_late, @function
qrx_validate_hdr_late:
.LFB766:
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
	movq	%rax, %rdi
	call	rxe_determine_pn_space
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	1024(%rax), %rax
	testq	%rax, %rax
	je	.L172
	movq	-24(%rbp), %rax
	movq	1024(%rax), %r8
	movq	-24(%rbp), %rax
	movq	1032(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	200(%rax), %rax
	movl	-4(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L172
	movl	$0, %eax
	jmp	.L173
.L172:
	movl	$1, %eax
.L173:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	qrx_validate_hdr_late, .-qrx_validate_hdr_late
	.type	qrx_get_cipher_ctx_idx, @function
qrx_get_cipher_ctx_idx:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, %eax
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movb	%al, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$3, -36(%rbp)
	je	.L175
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L176
.L175:
	cmpb	$1, -40(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L177
	movq	$-1, %rax
	jmp	.L176
.L177:
	movq	-32(%rbp), %rax
	movzbl	104(%rax), %eax
	cmpb	$3, %al
	jne	.L178
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	andl	$1, %eax
	movq	%rax, -8(%rbp)
	jmp	.L179
.L178:
	movzbl	-40(%rbp), %eax
	movq	%rax, -8(%rbp)
.L179:
	movq	-32(%rbp), %rax
	movzbl	104(%rax), %eax
	movzbl	%al, %eax
	cmpl	$3, %eax
	je	.L180
	cmpl	$3, %eax
	jg	.L181
	cmpl	$1, %eax
	je	.L182
	cmpl	$2, %eax
	je	.L183
	jmp	.L181
.L182:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	andl	$1, %eax
	movq	%rax, %rcx
	movzbl	-40(%rbp), %eax
	xorq	%rcx, %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L181
.L183:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	andl	$1, %eax
	movl	%eax, %edx
	movzbl	-40(%rbp), %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	subq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L181
.L180:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	nop
.L181:
	movq	-8(%rbp), %rax
.L176:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	qrx_get_cipher_ctx_idx, .-qrx_get_cipher_ctx_idx
	.type	qrx_decrypt_pkt_body, @function
qrx_decrypt_pkt_body:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movl	40(%rbp), %eax
	movb	%al, -132(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-88(%rbp), %rax
	leaq	168(%rax), %rcx
	movl	32(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$2147483647, -112(%rbp)
	ja	.L185
	cmpq	$2147483647, 16(%rbp)
	jbe	.L186
.L185:
	movl	$0, %eax
	jmp	.L201
.L186:
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L188
	movl	$0, %eax
	jmp	.L201
.L188:
	movq	-32(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %eax
	cmpq	-112(%rbp), %rax
	jb	.L189
	movl	$0, %eax
	jmp	.L201
.L189:
	movq	-88(%rbp), %rax
	movq	1008(%rax), %rbx
	movq	-32(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_max_forged_pkt@PLT
	cmpq	%rax, %rbx
	jb	.L190
	movl	$0, %eax
	jmp	.L201
.L190:
	movzbl	-132(%rbp), %ecx
	leaq	-64(%rbp), %r8
	movq	48(%rbp), %rdi
	movl	32(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	qrx_get_cipher_ctx_idx
	movq	%rax, -40(%rbp)
	cmpq	$1, -40(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L191
	movl	$0, %eax
	jmp	.L201
.L191:
	movl	-64(%rbp), %eax
	testl	%eax, %eax
	je	.L192
	movq	-88(%rbp), %rax
	movq	1016(%rax), %rax
	cmpq	%rax, 24(%rbp)
	jb	.L192
	movl	$0, %eax
	jmp	.L201
.L192:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	$6, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -52(%rbp)
	cmpl	$7, -52(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L193
	movl	$0, %eax
	jmp	.L201
.L193:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	$6, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	leaq	10(%rax), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	$0, -24(%rbp)
	jmp	.L194
.L195:
	movl	-52(%rbp), %eax
	cltq
	subq	-24(%rbp), %rax
	subq	$1, %rax
	movzbl	-80(%rbp,%rax), %esi
	movq	-24(%rbp), %rax
	sall	$3, %eax
	movq	24(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	cltq
	subq	-24(%rbp), %rax
	subq	$1, %rax
	xorl	%esi, %edx
	movb	%dl, -80(%rbp,%rax)
	addq	$1, -24(%rbp)
.L194:
	cmpq	$7, -24(%rbp)
	jbe	.L195
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	cmpl	$1, %eax
	je	.L196
	movl	$0, %eax
	jmp	.L201
.L196:
	movq	-32(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rax
	subq	%rcx, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	cmpl	$1, %eax
	je	.L197
	movl	$0, %eax
	jmp	.L201
.L197:
	movq	16(%rbp), %rax
	movl	%eax, %esi
	movq	-128(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%esi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	cmpl	$1, %eax
	je	.L198
	movl	$0, %eax
	jmp	.L201
.L198:
	movq	-112(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	100(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %edi
	movq	-104(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	cmpl	$1, %eax
	je	.L199
	movl	$0, %eax
	jmp	.L201
.L199:
	leaq	-60(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherFinal_ex@PLT
	cmpl	$1, %eax
	je	.L200
	movq	-88(%rbp), %rax
	movq	1008(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 1008(%rax)
	movl	$0, %eax
	jmp	.L201
.L200:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L201:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	qrx_decrypt_pkt_body, .-qrx_decrypt_pkt_body
	.type	ignore_res, @function
ignore_res:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	ignore_res, .-ignore_res
	.type	qrx_key_update_initiated, @function
qrx_key_update_initiated:
.LFB770:
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
	addq	$168, %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_key_update@PLT
	testl	%eax, %eax
	je	.L206
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 1016(%rax)
	movq	-8(%rbp), %rax
	movq	1040(%rax), %rax
	testq	%rax, %rax
	je	.L203
	movq	-8(%rbp), %rax
	movq	1040(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	1048(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L203
.L206:
	nop
.L203:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	qrx_key_update_initiated, .-qrx_key_update_initiated
	.type	qrx_process_pkt, @function
qrx_process_pkt:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movq	%r9, -224(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -112(%rbp)
	movq	-200(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -48(%rbp)
	movb	$0, -49(%rbp)
	movb	$0, -25(%rbp)
	movq	$0, -64(%rbp)
	movq	$-1, -168(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qrx_ensure_free_rxe
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L208
	movl	$0, %eax
	jmp	.L238
.L208:
	movq	-192(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	pkt_is_marked
	testl	%eax, %eax
	je	.L210
	movb	$1, -25(%rbp)
.L210:
	movq	-192(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	pkt_is_marked
	testl	%eax, %eax
	sete	%al
	movb	%al, -49(%rbp)
	movq	-96(%rbp), %rax
	leaq	112(%rax), %rdi
	movsbl	-49(%rbp), %edx
	movq	-184(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	-160(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdi, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_pkt_hdr@PLT
	testl	%eax, %eax
	je	.L239
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.L213
	movq	-96(%rbp), %rsi
	movq	-216(%rbp), %rcx
	movq	120(%rsi), %rax
	movq	128(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	133(%rsi), %rax
	movq	%rax, 13(%rcx)
.L213:
	cmpb	$0, -25(%rbp)
	jne	.L240
	cmpq	$0, -208(%rbp)
	je	.L215
	movq	-216(%rbp), %rax
	jmp	.L216
.L215:
	movl	$0, %eax
.L216:
	movq	-96(%rbp), %rsi
	movq	-184(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	qrx_validate_hdr_early
	testl	%eax, %eax
	je	.L240
	movq	-96(%rbp), %rax
	movzbl	112(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	ossl_quic_pkt_type_is_encrypted
	testl	%eax, %eax
	jne	.L218
	movq	-96(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	-184(%rbp), %rcx
	addq	$96, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	qrx_reserve_rxe
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L241
	movq	-96(%rbp), %rax
	movq	184(%rax), %r12
	movq	-96(%rbp), %rax
	movq	192(%rax), %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	rxe_data
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-192(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	pkt_mark
	movq	-96(%rbp), %rax
	movq	-96(%rbp), %rbx
	movq	%rax, %rdi
	call	rxe_data
	movq	%rax, 192(%rbx)
	movq	-96(%rbp), %rax
	movq	$-1, 200(%rax)
	movq	-96(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	184(%rdx), %rdx
	movq	%rdx, 88(%rax)
	movq	-96(%rbp), %rax
	movq	-224(%rbp), %rdx
	movq	%rdx, 440(%rax)
	movq	-96(%rbp), %rax
	movq	$0, 448(%rax)
	movq	-96(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	56(%rdx), %rcx
	movq	64(%rdx), %rbx
	movq	%rcx, 208(%rax)
	movq	%rbx, 216(%rax)
	movq	72(%rdx), %rcx
	movq	80(%rdx), %rbx
	movq	%rcx, 224(%rax)
	movq	%rbx, 232(%rax)
	movq	88(%rdx), %rcx
	movq	96(%rdx), %rbx
	movq	%rcx, 240(%rax)
	movq	%rbx, 248(%rax)
	movq	104(%rdx), %rcx
	movq	112(%rdx), %rbx
	movq	%rcx, 256(%rax)
	movq	%rbx, 264(%rax)
	movq	120(%rdx), %rcx
	movq	128(%rdx), %rbx
	movq	%rcx, 272(%rax)
	movq	%rbx, 280(%rax)
	movq	136(%rdx), %rcx
	movq	144(%rdx), %rbx
	movq	%rcx, 288(%rax)
	movq	%rbx, 296(%rax)
	movq	152(%rdx), %rcx
	movq	160(%rdx), %rbx
	movq	%rcx, 304(%rax)
	movq	%rbx, 312(%rax)
	movq	-96(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	168(%rdx), %rcx
	movq	176(%rdx), %rbx
	movq	%rcx, 320(%rax)
	movq	%rbx, 328(%rax)
	movq	184(%rdx), %rcx
	movq	192(%rdx), %rbx
	movq	%rcx, 336(%rax)
	movq	%rbx, 344(%rax)
	movq	200(%rdx), %rcx
	movq	208(%rdx), %rbx
	movq	%rcx, 352(%rax)
	movq	%rbx, 360(%rax)
	movq	216(%rdx), %rcx
	movq	224(%rdx), %rbx
	movq	%rcx, 368(%rax)
	movq	%rbx, 376(%rax)
	movq	232(%rdx), %rcx
	movq	240(%rdx), %rbx
	movq	%rcx, 384(%rax)
	movq	%rbx, 392(%rax)
	movq	248(%rdx), %rcx
	movq	256(%rdx), %rbx
	movq	%rcx, 400(%rax)
	movq	%rbx, 408(%rax)
	movq	264(%rdx), %rcx
	movq	272(%rdx), %rbx
	movq	%rcx, 416(%rax)
	movq	%rbx, 424(%rax)
	movq	-96(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	280(%rdx), %rdx
	movq	%rdx, 432(%rax)
	movq	-96(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, 456(%rax)
	movq	-96(%rbp), %rax
	movq	-184(%rbp), %rdx
	addq	$96, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_rxe_remove
	movq	-96(%rbp), %rax
	movq	-184(%rbp), %rdx
	addq	$120, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_rxe_insert_tail
	movl	$0, %eax
	jmp	.L238
.L218:
	movq	-96(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rdi
	call	qrx_determine_enc_level
	movl	%eax, -68(%rbp)
	movq	-184(%rbp), %rax
	leaq	168(%rax), %rdx
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	ossl_qrl_enc_level_set_have_el@PLT
	testl	%eax, %eax
	je	.L242
	cmpl	$1, %eax
	jne	.L243
	cmpl	$3, -68(%rbp)
	jne	.L244
	movq	-184(%rbp), %rax
	movzbl	1057(%rax), %eax
	testb	%al, %al
	je	.L245
.L244:
	nop
	movq	$0, -104(%rbp)
	movq	-96(%rbp), %rax
	movzbl	112(%rax), %eax
	cmpb	$1, %al
	jne	.L225
	movq	-96(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-96(%rbp), %rax
	movq	176(%rax), %rdi
	leaq	-176(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	qrx_relocate_buffer
	testl	%eax, %eax
	je	.L246
	movq	-96(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, 168(%rax)
.L225:
	movq	-200(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-184(%rbp), %rax
	leaq	168(%rax), %rcx
	movl	-68(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -64(%rbp)
	cmpb	$0, -49(%rbp)
	je	.L227
	movq	-64(%rbp), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_hdr_protector_decrypt@PLT
	testl	%eax, %eax
	je	.L247
	movq	-192(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	pkt_mark
	movq	-96(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-200(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_quic_wire_decode_pkt_hdr@PLT
	cmpl	$1, %eax
	jne	.L248
.L227:
	movq	-96(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qrx_validate_hdr
	testl	%eax, %eax
	je	.L249
	movq	-184(%rbp), %rax
	movq	1064(%rax), %rax
	testq	%rax, %rax
	je	.L230
	movq	-184(%rbp), %rax
	movq	1064(%rax), %r10
	movq	-184(%rbp), %rax
	movq	1072(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	1080(%rax), %rcx
	movq	-24(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	-96(%rbp), %rax
	movq	184(%rax), %rax
	subq	%rax, %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	movq	%rcx, %r9
	movq	%rsi, %r8
	movq	%rax, %rcx
	movl	$513, %edx
	movl	$1, %esi
	movl	$0, %edi
	call	*%r10
	addq	$16, %rsp
.L230:
	movq	-96(%rbp), %rax
	movq	192(%rax), %rax
	subq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	-184(%rbp), %rcx
	addq	$96, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	qrx_reserve_rxe
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L231
	movq	$0, -24(%rbp)
	jmp	.L212
.L231:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	rxe_data
	movq	-104(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movzbl	113(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %r8d
	movq	-96(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	184(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-48(%rbp), %r11
	leaq	-112(%rbp), %r10
	movq	-80(%rbp), %rsi
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	leaq	-168(%rbp), %r9
	pushq	%r9
	pushq	%r8
	movl	-68(%rbp), %r8d
	pushq	%r8
	pushq	%rdi
	pushq	-40(%rbp)
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	qrx_decrypt_pkt_body
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L250
	movq	-96(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qrx_validate_hdr_late
	testl	%eax, %eax
	je	.L251
	movq	-96(%rbp), %rax
	movzbl	112(%rax), %eax
	cmpb	$5, %al
	jne	.L234
	movq	-96(%rbp), %rax
	movzbl	113(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edx
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	andl	$1, %eax
	cmpq	%rax, %rdx
	je	.L234
	movq	-96(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qrx_key_update_initiated
.L234:
	movq	-192(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	pkt_mark
	movq	-96(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 192(%rax)
	movq	-96(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 184(%rax)
	movq	-96(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-96(%rbp), %rax
	movq	-224(%rbp), %rdx
	movq	%rdx, 440(%rax)
	movq	-96(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 448(%rax)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	rxe_determine_pn_space
	movl	%eax, -84(%rbp)
	movq	-96(%rbp), %rax
	movq	200(%rax), %rax
	movq	-184(%rbp), %rdx
	movl	-84(%rbp), %ecx
	addq	$18, %rcx
	movq	(%rdx,%rcx,8), %rdx
	cmpq	%rax, %rdx
	jnb	.L235
	movq	-96(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-184(%rbp), %rax
	movl	-84(%rbp), %ecx
	addq	$18, %rcx
	movq	%rdx, (%rax,%rcx,8)
.L235:
	movq	-96(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	56(%rdx), %rcx
	movq	64(%rdx), %rbx
	movq	%rcx, 208(%rax)
	movq	%rbx, 216(%rax)
	movq	72(%rdx), %rcx
	movq	80(%rdx), %rbx
	movq	%rcx, 224(%rax)
	movq	%rbx, 232(%rax)
	movq	88(%rdx), %rcx
	movq	96(%rdx), %rbx
	movq	%rcx, 240(%rax)
	movq	%rbx, 248(%rax)
	movq	104(%rdx), %rcx
	movq	112(%rdx), %rbx
	movq	%rcx, 256(%rax)
	movq	%rbx, 264(%rax)
	movq	120(%rdx), %rcx
	movq	128(%rdx), %rbx
	movq	%rcx, 272(%rax)
	movq	%rbx, 280(%rax)
	movq	136(%rdx), %rcx
	movq	144(%rdx), %rbx
	movq	%rcx, 288(%rax)
	movq	%rbx, 296(%rax)
	movq	152(%rdx), %rcx
	movq	160(%rdx), %rbx
	movq	%rcx, 304(%rax)
	movq	%rbx, 312(%rax)
	movq	-96(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	168(%rdx), %rcx
	movq	176(%rdx), %rbx
	movq	%rcx, 320(%rax)
	movq	%rbx, 328(%rax)
	movq	184(%rdx), %rcx
	movq	192(%rdx), %rbx
	movq	%rcx, 336(%rax)
	movq	%rbx, 344(%rax)
	movq	200(%rdx), %rcx
	movq	208(%rdx), %rbx
	movq	%rcx, 352(%rax)
	movq	%rbx, 360(%rax)
	movq	216(%rdx), %rcx
	movq	224(%rdx), %rbx
	movq	%rcx, 368(%rax)
	movq	%rbx, 376(%rax)
	movq	232(%rdx), %rcx
	movq	240(%rdx), %rbx
	movq	%rcx, 384(%rax)
	movq	%rbx, 392(%rax)
	movq	248(%rdx), %rcx
	movq	256(%rdx), %rbx
	movq	%rcx, 400(%rax)
	movq	%rbx, 408(%rax)
	movq	264(%rdx), %rcx
	movq	272(%rdx), %rbx
	movq	%rcx, 416(%rax)
	movq	%rbx, 424(%rax)
	movq	-96(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	280(%rdx), %rdx
	movq	%rdx, 432(%rax)
	movq	-96(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, 456(%rax)
	movq	-96(%rbp), %rax
	movq	-184(%rbp), %rdx
	addq	$96, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_rxe_remove
	movq	-96(%rbp), %rax
	movq	-184(%rbp), %rdx
	addq	$120, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_rxe_insert_tail
	movl	$0, %eax
	jmp	.L238
.L242:
	nop
	jmp	.L223
.L245:
	nop
.L223:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	movl	%eax, %edi
	call	ignore_res
	movl	$1, %eax
	jmp	.L238
.L239:
	nop
	jmp	.L212
.L240:
	nop
	jmp	.L212
.L241:
	nop
	jmp	.L212
.L243:
	nop
	jmp	.L212
.L246:
	nop
	jmp	.L212
.L247:
	nop
	jmp	.L212
.L248:
	nop
	jmp	.L212
.L249:
	nop
	jmp	.L212
.L250:
	nop
	jmp	.L212
.L251:
	nop
.L212:
	cmpq	$0, -24(%rbp)
	je	.L236
	movq	-192(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	pkt_mark
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	movl	%eax, %edi
	call	ignore_res
	jmp	.L237
.L236:
	movq	-192(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	pkt_mark
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_forward
	movl	%eax, %edi
	call	ignore_res
.L237:
	movl	$0, %eax
.L238:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	qrx_process_pkt, .-qrx_process_pkt
	.type	qrx_process_datagram, @function
qrx_process_datagram:
.LFB772:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movq	%xmm0, -51(%rbp)
	movb	$-1, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	1000(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 1000(%rax)
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L255
	movl	$0, %eax
	jmp	.L259
.L258:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	$6, %rax
	jbe	.L256
	cmpq	$63, -16(%rbp)
	ja	.L256
	movq	-96(%rbp), %r8
	leaq	-64(%rbp), %rdi
	movq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	qrx_process_pkt
	testl	%eax, %eax
	je	.L257
	movl	$1, -4(%rbp)
.L257:
	addq	$1, -16(%rbp)
.L255:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L258
.L256:
	movl	-4(%rbp), %eax
.L259:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	qrx_process_datagram, .-qrx_process_datagram
	.type	qrx_process_one_urxe, @function
qrx_process_one_urxe:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_head
	cmpq	%rax, -48(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L261
	movl	$0, %eax
	jmp	.L262
.L261:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_urxe_data
	movq	%rax, %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	qrx_process_datagram
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_remove
	cmpl	$0, -20(%rbp)
	jle	.L263
	movq	-48(%rbp), %rax
	movzbl	288(%rax), %eax
	testb	%al, %al
	jne	.L264
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L263
.L264:
	movq	-40(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_insert_tail
	movq	-48(%rbp), %rax
	movzbl	288(%rax), %eax
	testb	%al, %al
	jne	.L266
	movq	-48(%rbp), %rax
	movb	$1, 288(%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L266
.L263:
	movq	-48(%rbp), %rax
	movzbl	288(%rax), %eax
	testb	%al, %al
	je	.L267
	movq	-48(%rbp), %rax
	movb	$0, 288(%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
.L267:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_demux_release_urxe@PLT
.L266:
	movl	$1, %eax
.L262:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	qrx_process_one_urxe, .-qrx_process_one_urxe
	.type	qrx_process_pending_urxl, @function
qrx_process_pending_urxl:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L269
.L271:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qrx_process_one_urxe
	testl	%eax, %eax
	jne	.L269
	movl	$0, %eax
	jmp	.L270
.L269:
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_head
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L271
	movl	$1, %eax
.L270:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	qrx_process_pending_urxl, .-qrx_process_pending_urxl
	.globl	ossl_qrx_read_pkt
	.type	ossl_qrx_read_pkt, @function
ossl_qrx_read_pkt:
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
	movq	%rax, %rdi
	call	ossl_qrx_processed_read_pending@PLT
	testl	%eax, %eax
	jne	.L273
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	qrx_process_pending_urxl
	testl	%eax, %eax
	jne	.L274
	movl	$0, %eax
	jmp	.L275
.L274:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_qrx_processed_read_pending@PLT
	testl	%eax, %eax
	jne	.L273
	movl	$0, %eax
	jmp	.L275
.L273:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	qrx_pop_pending_rxe
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L276
	movl	$0, %eax
	jmp	.L275
.L276:
	movq	-8(%rbp), %rax
	movq	$1, 104(%rax)
	movq	-8(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	432(%rdx), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	440(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	addq	$208, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	je	.L277
	movq	-8(%rbp), %rax
	leaq	208(%rax), %rdx
	jmp	.L278
.L277:
	movl	$0, %edx
.L278:
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$320, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	testl	%eax, %eax
	je	.L279
	movq	-8(%rbp), %rax
	leaq	320(%rax), %rdx
	jmp	.L280
.L279:
	movl	$0, %edx
.L280:
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	448(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	ossl_qrx_read_pkt, .-ossl_qrx_read_pkt
	.globl	ossl_qrx_pkt_release
	.type	ossl_qrx_pkt_release, @function
ossl_qrx_pkt_release:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L284
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L281
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	qrx_recycle_rxe
	jmp	.L281
.L284:
	nop
.L281:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	ossl_qrx_pkt_release, .-ossl_qrx_pkt_release
	.globl	ossl_qrx_pkt_up_ref
	.type	ossl_qrx_pkt_up_ref, @function
ossl_qrx_pkt_up_ref:
.LFB777:
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
	movq	104(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 104(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	ossl_qrx_pkt_up_ref, .-ossl_qrx_pkt_up_ref
	.globl	ossl_qrx_get_bytes_received
	.type	ossl_qrx_get_bytes_received, @function
ossl_qrx_get_bytes_received:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L287
	movq	-24(%rbp), %rax
	movq	$0, 1000(%rax)
.L287:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	ossl_qrx_get_bytes_received, .-ossl_qrx_get_bytes_received
	.globl	ossl_qrx_set_late_validation_cb
	.type	ossl_qrx_set_late_validation_cb, @function
ossl_qrx_set_late_validation_cb:
.LFB779:
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
	movq	%rdx, 1024(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 1032(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	ossl_qrx_set_late_validation_cb, .-ossl_qrx_set_late_validation_cb
	.globl	ossl_qrx_set_key_update_cb
	.type	ossl_qrx_set_key_update_cb, @function
ossl_qrx_set_key_update_cb:
.LFB780:
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
	movq	%rdx, 1040(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 1048(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	ossl_qrx_set_key_update_cb, .-ossl_qrx_set_key_update_cb
	.globl	ossl_qrx_get_key_epoch
	.type	ossl_qrx_get_key_epoch, @function
ossl_qrx_get_key_epoch:
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
	addq	$168, %rax
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L294
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	jmp	.L296
.L294:
	movq	$-1, %rax
.L296:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	ossl_qrx_get_key_epoch, .-ossl_qrx_get_key_epoch
	.globl	ossl_qrx_key_update_timeout
	.type	ossl_qrx_key_update_timeout, @function
ossl_qrx_key_update_timeout:
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
	addq	$168, %rax
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L298
	movl	$0, %eax
	jmp	.L299
.L298:
	movq	-8(%rbp), %rax
	movzbl	104(%rax), %eax
	cmpb	$2, %al
	jne	.L300
	movq	-24(%rbp), %rax
	addq	$168, %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_key_update_done@PLT
	testl	%eax, %eax
	jne	.L300
	movl	$0, %eax
	jmp	.L299
.L300:
	cmpl	$0, -28(%rbp)
	je	.L301
	movq	-8(%rbp), %rax
	movzbl	104(%rax), %eax
	cmpb	$3, %al
	jne	.L301
	movq	-24(%rbp), %rax
	addq	$168, %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_qrl_enc_level_set_key_cooldown_done@PLT
	testl	%eax, %eax
	jne	.L301
	movl	$0, %eax
	jmp	.L299
.L301:
	movl	$1, %eax
.L299:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	ossl_qrx_key_update_timeout, .-ossl_qrx_key_update_timeout
	.globl	ossl_qrx_get_cur_forged_pkt_count
	.type	ossl_qrx_get_cur_forged_pkt_count, @function
ossl_qrx_get_cur_forged_pkt_count:
.LFB783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1008(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	ossl_qrx_get_cur_forged_pkt_count, .-ossl_qrx_get_cur_forged_pkt_count
	.globl	ossl_qrx_get_max_forged_pkt_count
	.type	ossl_qrx_get_max_forged_pkt_count, @function
ossl_qrx_get_max_forged_pkt_count:
.LFB784:
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
	leaq	168(%rax), %rcx
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	ossl_qrl_enc_level_set_get@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L305
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	movl	%eax, %edi
	call	ossl_qrl_get_suite_max_forged_pkt@PLT
	jmp	.L307
.L305:
	movq	$-1, %rax
.L307:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	ossl_qrx_get_max_forged_pkt_count, .-ossl_qrx_get_max_forged_pkt_count
	.globl	ossl_qrx_allow_1rtt_processing
	.type	ossl_qrx_allow_1rtt_processing, @function
ossl_qrx_allow_1rtt_processing:
.LFB785:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	1057(%rax), %eax
	testb	%al, %al
	jne	.L311
	movq	-8(%rbp), %rax
	movb	$1, 1057(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	qrx_requeue_deferred
	jmp	.L308
.L311:
	nop
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	ossl_qrx_allow_1rtt_processing, .-ossl_qrx_allow_1rtt_processing
	.globl	ossl_qrx_set_msg_callback
	.type	ossl_qrx_set_msg_callback, @function
ossl_qrx_set_msg_callback:
.LFB786:
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
	movq	%rdx, 1064(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 1080(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	ossl_qrx_set_msg_callback, .-ossl_qrx_set_msg_callback
	.globl	ossl_qrx_set_msg_callback_arg
	.type	ossl_qrx_set_msg_callback_arg, @function
ossl_qrx_set_msg_callback_arg:
.LFB787:
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
	movq	%rdx, 1072(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	ossl_qrx_set_msg_callback_arg, .-ossl_qrx_set_msg_callback_arg
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
