	.file	"quic_rcidm.c"
	.text
	.type	ossl_quic_conn_id_eq, @function
ossl_quic_conn_id_eq:
.LFB512:
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
	jne	.L2
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	jbe	.L3
.L2:
	movl	$0, %eax
	jmp	.L4
.L3:
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
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	ossl_quic_conn_id_eq, .-ossl_quic_conn_id_eq
	.type	ossl_pqueue_RCID_new, @function
ossl_pqueue_RCID_new:
.LFB563:
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
	call	ossl_pqueue_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	ossl_pqueue_RCID_new, .-ossl_pqueue_RCID_new
	.type	ossl_pqueue_RCID_free, @function
ossl_pqueue_RCID_free:
.LFB564:
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
	call	ossl_pqueue_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	ossl_pqueue_RCID_free, .-ossl_pqueue_RCID_free
	.type	ossl_pqueue_RCID_num, @function
ossl_pqueue_RCID_num:
.LFB567:
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
	call	ossl_pqueue_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	ossl_pqueue_RCID_num, .-ossl_pqueue_RCID_num
	.type	ossl_pqueue_RCID_push, @function
ossl_pqueue_RCID_push:
.LFB568:
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
	call	ossl_pqueue_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	ossl_pqueue_RCID_push, .-ossl_pqueue_RCID_push
	.type	ossl_pqueue_RCID_peek, @function
ossl_pqueue_RCID_peek:
.LFB569:
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
	call	ossl_pqueue_peek@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	ossl_pqueue_RCID_peek, .-ossl_pqueue_RCID_peek
	.type	ossl_pqueue_RCID_pop, @function
ossl_pqueue_RCID_pop:
.LFB570:
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
	call	ossl_pqueue_pop@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	ossl_pqueue_RCID_pop, .-ossl_pqueue_RCID_pop
	.type	ossl_pqueue_RCID_remove, @function
ossl_pqueue_RCID_remove:
.LFB571:
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
	call	ossl_pqueue_remove@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	ossl_pqueue_RCID_remove, .-ossl_pqueue_RCID_remove
	.type	ossl_list_retiring_head, @function
ossl_list_retiring_head:
.LFB576:
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
.LFE576:
	.size	ossl_list_retiring_head, .-ossl_list_retiring_head
	.type	ossl_list_retiring_next, @function
ossl_list_retiring_next:
.LFB578:
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
.LFE578:
	.size	ossl_list_retiring_next, .-ossl_list_retiring_next
	.type	ossl_list_retiring_remove, @function
ossl_list_retiring_remove:
.LFB580:
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
	jne	.L23
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L23:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L24
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L24:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
.L25:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L26:
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
.LFE580:
	.size	ossl_list_retiring_remove, .-ossl_list_retiring_remove
	.type	ossl_list_retiring_insert_tail, @function
ossl_list_retiring_insert_tail:
.LFB582:
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
	je	.L28
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L28:
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
	jne	.L29
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L29:
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
.LFE582:
	.size	ossl_list_retiring_insert_tail, .-ossl_list_retiring_insert_tail
	.type	rcidm_check_rcid, @function
rcidm_check_rcid:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	rcidm_check_rcid, .-rcidm_check_rcid
	.type	rcid_cmp, @function
rcid_cmp:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L32
	movl	$-1, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L34
	movl	$1, %eax
	jmp	.L33
.L34:
	movl	$0, %eax
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	rcid_cmp, .-rcid_cmp
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_rcidm.c"
	.text
	.globl	ossl_quic_rcidm_new
	.type	ossl_quic_rcidm_new, @function
ossl_quic_rcidm_new:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$285, %edx
	movq	%rax, %rsi
	movl	$144, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	leaq	rcid_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_RCID_new
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$289, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L37
.L38:
	cmpq	$0, -24(%rbp)
	je	.L39
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 21(%rcx)
	movq	%rdx, 29(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 34(%rcx)
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %edx
	orl	$8, %edx
	movb	%dl, 136(%rax)
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rcidm_update
	movq	-8(%rbp), %rax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	ossl_quic_rcidm_new, .-ossl_quic_rcidm_new
	.globl	ossl_quic_rcidm_free
	.type	ossl_quic_rcidm_free, @function
ossl_quic_rcidm_free:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L49
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$309, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L43
.L44:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$311, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L43:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_RCID_pop
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L44
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdi
	call	ossl_list_retiring_head
	movq	%rax, -8(%rbp)
	jmp	.L45
.L48:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$314, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L45:
	cmpq	$0, -8(%rbp)
	je	.L46
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_retiring_next
	movq	%rax, -16(%rbp)
	jmp	.L48
.L46:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_RCID_free
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$317, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L40
.L49:
	nop
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	ossl_quic_rcidm_free, .-ossl_quic_rcidm_free
	.type	rcidm_set_preferred_rcid, @function
rcidm_set_preferred_rcid:
.LFB589:
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
	jne	.L51
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %edx
	orl	$1, %edx
	movb	%dl, 136(%rax)
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 136(%rax)
	jmp	.L50
.L51:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_quic_conn_id_eq
	testl	%eax, %eax
	jne	.L54
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 13(%rcx)
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %edx
	orl	$1, %edx
	movb	%dl, 136(%rax)
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %edx
	orl	$2, %edx
	movb	%dl, 136(%rax)
	jmp	.L50
.L54:
	nop
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	rcidm_set_preferred_rcid, .-rcidm_set_preferred_rcid
	.type	rcidm_create_rcid, @function
rcidm_create_rcid:
.LFB590:
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
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L56
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$20, %al
	ja	.L56
	movabsq	$4611686018427387903, %rax
	cmpq	-32(%rbp), %rax
	jb	.L56
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_RCID_num
	movq	-24(%rbp), %rdx
	movq	128(%rdx), %rdx
	addq	%rdx, %rax
	testq	%rax, %rax
	jns	.L57
.L56:
	movl	$0, %eax
	jmp	.L58
.L57:
	leaq	.LC0(%rip), %rax
	movl	$353, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L59
	movl	$0, %eax
	jmp	.L58
.L59:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 29(%rcx)
	movl	-44(%rbp), %eax
	andl	$3, %eax
	movq	-8(%rbp), %rdx
	andl	$3, %eax
	leal	0(,%rax,4), %ecx
	movzbl	56(%rdx), %eax
	andl	$-13, %eax
	orl	%ecx, %eax
	movb	%al, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L60
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %edx
	andl	$-4, %edx
	movb	%dl, 56(%rax)
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_RCID_push
	testl	%eax, %eax
	jne	.L61
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$364, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L58
.L60:
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %edx
	andl	$-4, %edx
	orl	$2, %edx
	movb	%dl, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 48(%rax)
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_retiring_insert_tail
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 128(%rax)
.L61:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rcidm_check_rcid
	movq	-8(%rbp), %rax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	rcidm_create_rcid, .-rcidm_create_rcid
	.type	rcidm_transition_rcid, @function
rcidm_transition_rcid:
.LFB591:
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
	movzbl	56(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rcidm_check_rcid
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.L70
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L65
	cmpl	$1, -36(%rbp)
	jne	.L65
	movq	-24(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rcidm_transition_rcid
.L65:
	cmpl	$0, -4(%rbp)
	jne	.L66
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_RCID_remove
	movq	-32(%rbp), %rax
	movq	$-1, 48(%rax)
.L66:
	movl	-36(%rbp), %eax
	andl	$3, %eax
	movq	-32(%rbp), %rdx
	andl	$3, %eax
	movl	%eax, %ecx
	movzbl	56(%rdx), %eax
	andl	$-4, %eax
	orl	%ecx, %eax
	movb	%al, 56(%rdx)
	cmpl	$1, -36(%rbp)
	jne	.L67
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 96(%rax)
	jmp	.L68
.L67:
	cmpl	$2, -36(%rbp)
	jne	.L68
	cmpl	$1, -4(%rbp)
	jne	.L69
	movq	-24(%rbp), %rax
	movq	$0, 96(%rax)
.L69:
	movq	-24(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_retiring_insert_tail
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 128(%rax)
.L68:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rcidm_check_rcid
	jmp	.L62
.L70:
	nop
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	rcidm_transition_rcid, .-rcidm_transition_rcid
	.type	rcidm_free_rcid, @function
rcidm_free_rcid:
.LFB592:
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
	je	.L79
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rcidm_check_rcid
	movq	-16(%rbp), %rax
	movzbl	56(%rax), %eax
	andl	$3, %eax
	movzbl	%al, %eax
	cmpl	$2, %eax
	je	.L74
	cmpl	$2, %eax
	jg	.L80
	testl	%eax, %eax
	je	.L76
	cmpl	$1, %eax
	je	.L77
	jmp	.L80
.L76:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_RCID_remove
	jmp	.L78
.L77:
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	jmp	.L78
.L74:
	movq	-8(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_retiring_remove
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 128(%rax)
	jmp	.L78
.L80:
	nop
.L78:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$437, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L71
.L79:
	nop
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	rcidm_free_rcid, .-rcidm_free_rcid
	.type	rcidm_handle_retire_prior_to, @function
rcidm_handle_retire_prior_to:
.LFB593:
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
	movq	80(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L88
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L85
	movq	-24(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rcidm_transition_rcid
	jmp	.L85
.L87:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rcidm_transition_rcid
.L85:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_RCID_peek
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L86
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L87
.L86:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 80(%rax)
	jmp	.L81
.L88:
	nop
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	rcidm_handle_retire_prior_to, .-rcidm_handle_retire_prior_to
	.type	rcidm_roll, @function
rcidm_roll:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_RCID_peek
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L93
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rcidm_transition_rcid
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	movzbl	136(%rax), %edx
	andl	$-65, %edx
	movb	%dl, 136(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	$9999, %rax
	jbe	.L92
	movq	-24(%rbp), %rax
	movq	64(%rax), %rcx
	movabsq	$3777893186295716171, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	imulq	$10000, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	jmp	.L89
.L92:
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	jmp	.L89
.L93:
	nop
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	rcidm_roll, .-rcidm_roll
	.type	rcidm_update, @function
rcidm_update:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L95
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_RCID_peek
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L95
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rcidm_transition_rcid
.L95:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rcidm_check_rcid
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rcidm_set_preferred_rcid
	jmp	.L94
.L96:
	movq	-24(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L98
	movq	-24(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L98
	movq	-24(%rbp), %rax
	leaq	42(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rcidm_set_preferred_rcid
	jmp	.L94
.L98:
	movq	-24(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L99
	movq	-24(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L99
	movq	-24(%rbp), %rax
	leaq	21(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rcidm_set_preferred_rcid
	jmp	.L94
.L99:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	rcidm_set_preferred_rcid
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	rcidm_update, .-rcidm_update
	.type	rcidm_should_roll, @function
rcidm_should_roll:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L101
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	$9999, %rax
	ja	.L102
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	je	.L101
.L102:
	movl	$1, %eax
	jmp	.L104
.L101:
	movl	$0, %eax
.L104:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	rcidm_should_roll, .-rcidm_should_roll
	.type	rcidm_tick, @function
rcidm_tick:
.LFB597:
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
	call	rcidm_should_roll
	testl	%eax, %eax
	je	.L106
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rcidm_roll
.L106:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rcidm_update
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	rcidm_tick, .-rcidm_tick
	.globl	ossl_quic_rcidm_on_handshake_complete
	.type	ossl_quic_rcidm_on_handshake_complete, @function
ossl_quic_rcidm_on_handshake_complete:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	jne	.L110
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %edx
	orl	$4, %edx
	movb	%dl, 136(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rcidm_tick
	jmp	.L107
.L110:
	nop
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	ossl_quic_rcidm_on_handshake_complete, .-ossl_quic_rcidm_on_handshake_complete
	.globl	ossl_quic_rcidm_on_packet_sent
	.type	ossl_quic_rcidm_on_packet_sent, @function
ossl_quic_rcidm_on_packet_sent:
.LFB599:
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
	je	.L114
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rcidm_tick
	jmp	.L111
.L114:
	nop
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	ossl_quic_rcidm_on_packet_sent, .-ossl_quic_rcidm_on_packet_sent
	.globl	ossl_quic_rcidm_request_roll
	.type	ossl_quic_rcidm_request_roll, @function
ossl_quic_rcidm_request_roll:
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
	movzbl	136(%rax), %edx
	orl	$64, %edx
	movb	%dl, 136(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rcidm_tick
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	ossl_quic_rcidm_request_roll, .-ossl_quic_rcidm_request_roll
	.globl	ossl_quic_rcidm_add_from_initial
	.type	ossl_quic_rcidm_add_from_initial, @function
ossl_quic_rcidm_add_from_initial:
.LFB601:
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
	movzbl	136(%rax), %eax
	andl	$32, %eax
	testb	%al, %al
	jne	.L117
	movq	-24(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L118
.L117:
	movl	$0, %eax
	jmp	.L119
.L118:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	rcidm_create_rcid
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L120
	movl	$0, %eax
	jmp	.L119
.L120:
	movq	-24(%rbp), %rax
	movzbl	136(%rax), %edx
	orl	$32, %edx
	movb	%dl, 136(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rcidm_tick
	movl	$1, %eax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	ossl_quic_rcidm_add_from_initial, .-ossl_quic_rcidm_add_from_initial
	.globl	ossl_quic_rcidm_add_from_server_retry
	.type	ossl_quic_rcidm_add_from_server_retry, @function
ossl_quic_rcidm_add_from_server_retry:
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
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L122
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L123
.L122:
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, 42(%rcx)
	movq	%rdx, 50(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 55(%rcx)
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %edx
	orl	$16, %edx
	movb	%dl, 136(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rcidm_tick
	movl	$1, %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	ossl_quic_rcidm_add_from_server_retry, .-ossl_quic_rcidm_add_from_server_retry
	.globl	ossl_quic_rcidm_add_from_ncid
	.type	ossl_quic_rcidm_add_from_ncid, @function
ossl_quic_rcidm_add_from_ncid:
.LFB603:
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
	leaq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	$2, %ecx
	movq	%rax, %rdi
	call	rcidm_create_rcid
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L126
	movl	$0, %eax
	jmp	.L127
.L126:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rcidm_handle_retire_prior_to
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rcidm_tick
	movl	$1, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	ossl_quic_rcidm_add_from_ncid, .-ossl_quic_rcidm_add_from_ncid
	.type	rcidm_get_retire, @function
rcidm_get_retire:
.LFB604:
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
	addq	$104, %rax
	movq	%rax, %rdi
	call	ossl_list_retiring_head
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L129
	movl	$0, %eax
	jmp	.L130
.L129:
	cmpq	$0, -32(%rbp)
	je	.L131
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L131:
	cmpl	$0, -36(%rbp)
	jne	.L132
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rcidm_free_rcid
.L132:
	movl	$1, %eax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	rcidm_get_retire, .-rcidm_get_retire
	.globl	ossl_quic_rcidm_pop_retire_seq_num
	.type	ossl_quic_rcidm_pop_retire_seq_num, @function
ossl_quic_rcidm_pop_retire_seq_num:
.LFB605:
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
	call	rcidm_get_retire
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	ossl_quic_rcidm_pop_retire_seq_num, .-ossl_quic_rcidm_pop_retire_seq_num
	.globl	ossl_quic_rcidm_peek_retire_seq_num
	.type	ossl_quic_rcidm_peek_retire_seq_num, @function
ossl_quic_rcidm_peek_retire_seq_num:
.LFB606:
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
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rcidm_get_retire
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	ossl_quic_rcidm_peek_retire_seq_num, .-ossl_quic_rcidm_peek_retire_seq_num
	.globl	ossl_quic_rcidm_get_preferred_tx_dcid
	.type	ossl_quic_rcidm_get_preferred_tx_dcid, @function
ossl_quic_rcidm_get_preferred_tx_dcid:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L138
	movl	$0, %eax
	jmp	.L139
.L138:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	13(%rsi), %rax
	movq	%rax, 13(%rcx)
	movl	$1, %eax
.L139:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	ossl_quic_rcidm_get_preferred_tx_dcid, .-ossl_quic_rcidm_get_preferred_tx_dcid
	.globl	ossl_quic_rcidm_get_preferred_tx_dcid_changed
	.type	ossl_quic_rcidm_get_preferred_tx_dcid_changed, @function
ossl_quic_rcidm_get_preferred_tx_dcid_changed:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movzbl	136(%rax), %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L141
	movq	-24(%rbp), %rax
	movzbl	136(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 136(%rax)
.L141:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	ossl_quic_rcidm_get_preferred_tx_dcid_changed, .-ossl_quic_rcidm_get_preferred_tx_dcid_changed
	.globl	ossl_quic_rcidm_get_num_active
	.type	ossl_quic_rcidm_get_num_active, @function
ossl_quic_rcidm_get_num_active:
.LFB609:
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
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_RCID_num
	movq	-24(%rbp), %rdx
	movq	96(%rdx), %rdx
	testq	%rdx, %rdx
	je	.L144
	movl	$1, %edx
	jmp	.L145
.L144:
	movl	$0, %edx
.L145:
	leaq	(%rdx,%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_rcidm_get_num_retiring@PLT
	addq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	ossl_quic_rcidm_get_num_active, .-ossl_quic_rcidm_get_num_active
	.globl	ossl_quic_rcidm_get_num_retiring
	.type	ossl_quic_rcidm_get_num_retiring, @function
ossl_quic_rcidm_get_num_retiring:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	ossl_quic_rcidm_get_num_retiring, .-ossl_quic_rcidm_get_num_retiring
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
