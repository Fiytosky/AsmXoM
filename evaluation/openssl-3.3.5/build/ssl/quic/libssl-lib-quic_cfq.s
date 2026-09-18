	.file	"quic_cfq.c"
	.text
	.globl	ossl_quic_cfq_item_get_frame_type
	.type	ossl_quic_cfq_item_get_frame_type, @function
ossl_quic_cfq_item_get_frame_type:
.LFB485:
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
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	ossl_quic_cfq_item_get_frame_type, .-ossl_quic_cfq_item_get_frame_type
	.globl	ossl_quic_cfq_item_get_encoded
	.type	ossl_quic_cfq_item_get_encoded, @function
ossl_quic_cfq_item_get_encoded:
.LFB486:
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
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	ossl_quic_cfq_item_get_encoded, .-ossl_quic_cfq_item_get_encoded
	.globl	ossl_quic_cfq_item_get_encoded_len
	.type	ossl_quic_cfq_item_get_encoded_len, @function
ossl_quic_cfq_item_get_encoded_len:
.LFB487:
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
	movq	64(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	ossl_quic_cfq_item_get_encoded_len, .-ossl_quic_cfq_item_get_encoded_len
	.globl	ossl_quic_cfq_item_get_state
	.type	ossl_quic_cfq_item_get_state, @function
ossl_quic_cfq_item_get_state:
.LFB488:
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
	movl	84(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	ossl_quic_cfq_item_get_state, .-ossl_quic_cfq_item_get_state
	.globl	ossl_quic_cfq_item_get_pn_space
	.type	ossl_quic_cfq_item_get_pn_space, @function
ossl_quic_cfq_item_get_pn_space:
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
	movl	76(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	ossl_quic_cfq_item_get_pn_space, .-ossl_quic_cfq_item_get_pn_space
	.globl	ossl_quic_cfq_item_is_unreliable
	.type	ossl_quic_cfq_item_is_unreliable, @function
ossl_quic_cfq_item_is_unreliable:
.LFB490:
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
	movl	80(%rax), %eax
	andl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	ossl_quic_cfq_item_is_unreliable, .-ossl_quic_cfq_item_is_unreliable
	.type	compare, @function
compare:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	76(%rax), %edx
	movq	-16(%rbp), %rax
	movl	76(%rax), %eax
	cmpl	%eax, %edx
	jnb	.L14
	movl	$-1, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	movq	-16(%rbp), %rdx
	movl	76(%rdx), %edx
	cmpl	%eax, %edx
	jnb	.L16
	movl	$1, %eax
	jmp	.L15
.L16:
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	movq	-16(%rbp), %rdx
	movl	72(%rdx), %edx
	cmpl	%eax, %edx
	jnb	.L17
	movl	$-1, %eax
	jmp	.L15
.L17:
	movq	-8(%rbp), %rax
	movl	72(%rax), %edx
	movq	-16(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	%eax, %edx
	jnb	.L18
	movl	$1, %eax
	jmp	.L15
.L18:
	movl	$0, %eax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	compare, .-compare
	.type	list_remove, @function
list_remove:
.LFB492:
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
	cmpq	%rax, -16(%rbp)
	jne	.L20
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L20:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L21
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L21:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L22:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 16(%rax)
.L23:
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	list_remove, .-list_remove
	.type	list_insert_head, @function
list_insert_head:
.LFB493:
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
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L25:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L27:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	list_insert_head, .-list_insert_head
	.type	list_insert_tail, @function
list_insert_tail:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L29:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L31
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L31:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	list_insert_tail, .-list_insert_tail
	.type	list_insert_after, @function
list_insert_after:
.LFB495:
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
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L33:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L35
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L35:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	list_insert_after, .-list_insert_after
	.type	list_insert_sorted, @function
list_insert_sorted:
.LFB496:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L36
.L41:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L39:
	cmpq	$0, -8(%rbp)
	je	.L40
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	js	.L41
.L40:
	cmpq	$0, -8(%rbp)
	jne	.L42
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_insert_tail
	jmp	.L36
.L42:
	cmpq	$0, -16(%rbp)
	jne	.L43
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_insert_head
	jmp	.L36
.L43:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	list_insert_after
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	list_insert_sorted, .-list_insert_sorted
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_cfq.c"
	.text
	.globl	ossl_quic_cfq_new
	.type	ossl_quic_cfq_new, @function
ossl_quic_cfq_new:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$171, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-8(%rbp), %rax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	ossl_quic_cfq_new, .-ossl_quic_cfq_new
	.type	clear_item, @function
clear_item:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-8(%rbp), %rax
	movq	40(%rax), %r8
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
.L48:
	movq	-8(%rbp), %rax
	movl	$-1, 84(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	clear_item, .-clear_item
	.type	free_list_items, @function
free_list_items:
.LFB499:
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
	movq	%rax, -8(%rbp)
	jmp	.L50
.L51:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clear_item
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$199, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L50:
	cmpq	$0, -8(%rbp)
	jne	.L51
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	free_list_items, .-free_list_items
	.globl	ossl_quic_cfq_free
	.type	ossl_quic_cfq_free, @function
ossl_quic_cfq_free:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L55
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_list_items
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	free_list_items
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	free_list_items
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$211, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L52
.L55:
	nop
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	ossl_quic_cfq_free, .-ossl_quic_cfq_free
	.type	cfq_get_free, @function
cfq_get_free:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L57
	movq	-8(%rbp), %rax
	jmp	.L58
.L57:
	leaq	.LC0(%rip), %rax
	movl	$221, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L59
	movl	$0, %eax
	jmp	.L58
.L59:
	movq	-8(%rbp), %rax
	movl	$-1, 84(%rax)
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	list_insert_tail
	movq	-8(%rbp), %rax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	cfq_get_free, .-cfq_get_free
	.globl	ossl_quic_cfq_add_frame
	.type	ossl_quic_cfq_add_frame, @function
ossl_quic_cfq_add_frame:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	cfq_get_free
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 76(%rax)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 84(%rax)
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 80(%rax)
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	list_remove
	movq	-24(%rbp), %rax
	leaq	compare(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	list_insert_sorted
	movq	-8(%rbp), %rax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	ossl_quic_cfq_add_frame, .-ossl_quic_cfq_add_frame
	.globl	ossl_quic_cfq_mark_tx
	.type	ossl_quic_cfq_mark_tx, @function
ossl_quic_cfq_mark_tx:
.LFB503:
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
	movq	-8(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	je	.L64
	cmpl	$1, %eax
	je	.L68
	jmp	.L67
.L64:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_remove
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	list_insert_tail
	movq	-8(%rbp), %rax
	movl	$1, 84(%rax)
	jmp	.L67
.L68:
	nop
.L67:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	ossl_quic_cfq_mark_tx, .-ossl_quic_cfq_mark_tx
	.globl	ossl_quic_cfq_mark_lost
	.type	ossl_quic_cfq_mark_lost, @function
ossl_quic_cfq_mark_lost:
.LFB504:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_cfq_item_is_unreliable@PLT
	testl	%eax, %eax
	je	.L70
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_cfq_release@PLT
	jmp	.L69
.L70:
	movq	-8(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	je	.L72
	cmpl	$1, %eax
	je	.L73
	jmp	.L69
.L72:
	cmpl	$-1, -36(%rbp)
	je	.L77
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	%eax, -36(%rbp)
	je	.L77
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_remove
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 72(%rax)
	movq	-24(%rbp), %rax
	leaq	compare(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	list_insert_sorted
	jmp	.L77
.L73:
	cmpl	$-1, -36(%rbp)
	je	.L76
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 72(%rax)
.L76:
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	list_remove
	movq	-24(%rbp), %rax
	leaq	compare(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	list_insert_sorted
	movq	-8(%rbp), %rax
	movl	$0, 84(%rax)
	jmp	.L69
.L77:
	nop
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	ossl_quic_cfq_mark_lost, .-ossl_quic_cfq_mark_lost
	.globl	ossl_quic_cfq_release
	.type	ossl_quic_cfq_release, @function
ossl_quic_cfq_release:
.LFB505:
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
	movq	-8(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	je	.L79
	cmpl	$1, %eax
	je	.L80
	jmp	.L82
.L79:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	list_remove
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	list_insert_tail
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clear_item
	jmp	.L82
.L80:
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	list_remove
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	list_insert_tail
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clear_item
	nop
.L82:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	ossl_quic_cfq_release, .-ossl_quic_cfq_release
	.globl	ossl_quic_cfq_get_priority_head
	.type	ossl_quic_cfq_get_priority_head, @function
ossl_quic_cfq_get_priority_head:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L84
.L86:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L84:
	cmpq	$0, -8(%rbp)
	je	.L85
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L86
.L85:
	cmpq	$0, -8(%rbp)
	jne	.L87
	movl	$0, %eax
	jmp	.L88
.L87:
	movq	-8(%rbp), %rax
.L88:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	ossl_quic_cfq_get_priority_head, .-ossl_quic_cfq_get_priority_head
	.globl	ossl_quic_cfq_item_get_priority_next
	.type	ossl_quic_cfq_item_get_priority_next, @function
ossl_quic_cfq_item_get_priority_next:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L92
.L94:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L92:
	cmpq	$0, -8(%rbp)
	je	.L93
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L94
.L93:
	cmpq	$0, -8(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L91
.L95:
	movq	-8(%rbp), %rax
.L91:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	ossl_quic_cfq_item_get_priority_next, .-ossl_quic_cfq_item_get_priority_next
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
