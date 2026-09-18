	.file	"quic_demux.c"
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
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB496:
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
.LFE496:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_quic_urxe_data, @function
ossl_quic_urxe_data:
.LFB513:
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
.LFE513:
	.size	ossl_quic_urxe_data, .-ossl_quic_urxe_data
	.type	ossl_list_urxe_init_elem, @function
ossl_list_urxe_init_elem:
.LFB516:
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
.LFE516:
	.size	ossl_list_urxe_init_elem, .-ossl_list_urxe_init_elem
	.type	ossl_list_urxe_num, @function
ossl_list_urxe_num:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	ossl_list_urxe_num, .-ossl_list_urxe_num
	.type	ossl_list_urxe_head, @function
ossl_list_urxe_head:
.LFB519:
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
.LFE519:
	.size	ossl_list_urxe_head, .-ossl_list_urxe_head
	.type	ossl_list_urxe_next, @function
ossl_list_urxe_next:
.LFB521:
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
.LFE521:
	.size	ossl_list_urxe_next, .-ossl_list_urxe_next
	.type	ossl_list_urxe_prev, @function
ossl_list_urxe_prev:
.LFB522:
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
.LFE522:
	.size	ossl_list_urxe_prev, .-ossl_list_urxe_prev
	.type	ossl_list_urxe_remove, @function
ossl_list_urxe_remove:
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
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L17
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L17:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L18
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L18:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
.L19:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L20:
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
.LFE523:
	.size	ossl_list_urxe_remove, .-ossl_list_urxe_remove
	.type	ossl_list_urxe_insert_head, @function
ossl_list_urxe_insert_head:
.LFB524:
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
	je	.L22
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L22:
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
	jne	.L23
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L23:
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
.LFE524:
	.size	ossl_list_urxe_insert_head, .-ossl_list_urxe_insert_head
	.type	ossl_list_urxe_insert_tail, @function
ossl_list_urxe_insert_tail:
.LFB525:
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
	je	.L25
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L25:
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
	jne	.L26
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L26:
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
.LFE525:
	.size	ossl_list_urxe_insert_tail, .-ossl_list_urxe_insert_tail
	.type	ossl_list_urxe_insert_after, @function
ossl_list_urxe_insert_after:
.LFB527:
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
	je	.L28
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L28:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L29
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
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
.LFE527:
	.size	ossl_list_urxe_insert_after, .-ossl_list_urxe_insert_after
	.section	.rodata
.LC0:
	.string	"../ssl/quic/quic_demux.c"
	.text
	.globl	ossl_quic_demux_new
	.type	ossl_quic_demux_new, @function
ossl_quic_demux_new:
.LFB601:
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
	leaq	.LC0(%rip), %rax
	movl	$78, %edx
	movq	%rax, %rsi
	movl	$120, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$1500, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 40(%rax)
	cmpq	$0, -24(%rbp)
	je	.L33
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$82, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L33
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$84, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L33
	movq	-8(%rbp), %rax
	movb	$1, 112(%rax)
.L33:
	movq	-8(%rbp), %rax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	ossl_quic_demux_new, .-ossl_quic_demux_new
	.type	demux_free_urxl, @function
demux_free_urxl:
.LFB602:
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
	call	ossl_list_urxe_head
	movq	%rax, -8(%rbp)
	jmp	.L35
.L36:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_next
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_urxe_remove
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$104, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L35:
	cmpq	$0, -8(%rbp)
	jne	.L36
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	demux_free_urxl, .-demux_free_urxl
	.globl	ossl_quic_demux_free
	.type	ossl_quic_demux_free, @function
ossl_quic_demux_free:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	demux_free_urxl
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	demux_free_urxl
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$117, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L37
.L40:
	nop
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	ossl_quic_demux_free, .-ossl_quic_demux_free
	.globl	ossl_quic_demux_set_bio
	.type	ossl_quic_demux_set_bio, @function
ossl_quic_demux_set_bio:
.LFB604:
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
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L43
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$41, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1199, -4(%rbp)
	jbe	.L43
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_quic_demux_set_mtu@PLT
.L43:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	ossl_quic_demux_set_bio, .-ossl_quic_demux_set_bio
	.globl	ossl_quic_demux_set_mtu
	.type	ossl_quic_demux_set_mtu, @function
ossl_quic_demux_set_mtu:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$1199, -12(%rbp)
	ja	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L46:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	ossl_quic_demux_set_mtu, .-ossl_quic_demux_set_mtu
	.globl	ossl_quic_demux_set_default_handler
	.type	ossl_quic_demux_set_default_handler, @function
ossl_quic_demux_set_default_handler:
.LFB606:
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
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	ossl_quic_demux_set_default_handler, .-ossl_quic_demux_set_default_handler
	.type	demux_alloc_urxe, @function
demux_alloc_urxe:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$-298, -24(%rbp)
	jbe	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	-24(%rbp), %rax
	addq	$296, %rax
	leaq	.LC0(%rip), %rcx
	movl	$162, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L51
	movl	$0, %eax
	jmp	.L50
.L51:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_init_elem
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	demux_alloc_urxe, .-demux_alloc_urxe
	.type	demux_resize_urxe, @function
demux_resize_urxe:
.LFB608:
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
	movzbl	289(%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L53
	movl	$0, %eax
	jmp	.L54
.L53:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_prev
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_remove
	movq	-40(%rbp), %rax
	leaq	296(%rax), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$184, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L55
	cmpq	$0, -8(%rbp)
	jne	.L56
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_insert_head
	jmp	.L57
.L56:
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_list_urxe_insert_after
.L57:
	movl	$0, %eax
	jmp	.L54
.L55:
	cmpq	$0, -8(%rbp)
	jne	.L58
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_insert_head
	jmp	.L59
.L58:
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_list_urxe_insert_after
.L59:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	demux_resize_urxe, .-demux_resize_urxe
	.type	demux_reserve_urxe, @function
demux_reserve_urxe:
.LFB609:
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
	movq	24(%rax), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L61
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	demux_resize_urxe
	jmp	.L63
.L61:
	movq	-16(%rbp), %rax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	demux_reserve_urxe, .-demux_reserve_urxe
	.type	demux_ensure_free_urxe, @function
demux_ensure_free_urxe:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	.L65
.L68:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	demux_alloc_urxe
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_insert_tail
	movq	-8(%rbp), %rax
	movb	$0, 289(%rax)
.L65:
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_num
	cmpq	-32(%rbp), %rax
	jb	.L68
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	demux_ensure_free_urxe, .-demux_ensure_free_urxe
	.type	demux_recv, @function
demux_recv:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1344, %rsp
	movq	%rdi, -1336(%rbp)
	movq	-1336(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_head
	movq	%rax, -16(%rbp)
	movq	-1336(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	movl	$-1, %eax
	jmp	.L86
.L70:
	movq	$0, -8(%rbp)
	jmp	.L72
.L79:
	cmpq	$0, -16(%rbp)
	jne	.L73
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L87
	movl	$-2, %eax
	jmp	.L86
.L73:
	movq	-1336(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-1336(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	demux_reserve_urxe
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L76
	movl	$-2, %eax
	jmp	.L86
.L76:
	leaq	-1312(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_urxe_data
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1312, %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1304, %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	leaq	56(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1296, %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
	movq	-1336(%rbp), %rax
	movzbl	112(%rax), %eax
	testb	%al, %al
	je	.L77
	movq	-16(%rbp), %rax
	leaq	168(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1288, %rax
	movq	%rcx, (%rax)
	jmp	.L78
.L77:
	movq	-16(%rbp), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
.L78:
	addq	$1, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_next
	movq	%rax, -16(%rbp)
.L72:
	cmpq	$31, -8(%rbp)
	jbe	.L79
	jmp	.L75
.L87:
	nop
.L75:
	call	ERR_set_mark@PLT
	movq	-1336(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1320(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	-1312(%rbp), %rsi
	movq	%rcx, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_recvmmsg@PLT
	testl	%eax, %eax
	jne	.L80
	call	ERR_peek_last_error@PLT
	movl	%eax, %edi
	call	BIO_err_is_non_fatal@PLT
	testl	%eax, %eax
	je	.L81
	call	ERR_pop_to_mark@PLT
	movl	$-1, %eax
	jmp	.L86
.L81:
	call	ERR_clear_last_mark@PLT
	movl	$-2, %eax
	jmp	.L86
.L80:
	call	ERR_clear_last_mark@PLT
	movq	-1336(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-1336(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-1336(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -1328(%rbp)
	jmp	.L83
.L82:
	call	ossl_time_zero
	movq	%rax, -1328(%rbp)
.L83:
	movq	-1336(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_head
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L84
.L85:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_next
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1304, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-1328(%rbp), %rdx
	movq	%rdx, 280(%rax)
	movq	-1336(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-1336(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-16(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-1336(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_remove
	movq	-1336(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_insert_tail
	movq	-16(%rbp), %rax
	movb	$1, 289(%rax)
	addq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L84:
	movq	-1320(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L85
	movl	$1, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	demux_recv, .-demux_recv
	.type	demux_identify_conn_id, @function
demux_identify_conn_id:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %r12
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_urxe_data
	movq	%rax, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	ossl_quic_wire_get_pkt_hdr_dst_conn_id@PLT
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	demux_identify_conn_id, .-demux_identify_conn_id
	.type	demux_process_pending_urxe, @function
demux_process_pending_urxe:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_head
	cmpq	%rax, -48(%rbp)
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L91
	movl	$0, %eax
	jmp	.L97
.L91:
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	demux_identify_conn_id
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_remove
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L93
	movq	-48(%rbp), %rax
	movb	$2, 289(%rax)
	movq	-40(%rbp), %rax
	movq	48(%rax), %r8
	cmpl	$0, -4(%rbp)
	je	.L94
	leaq	-32(%rbp), %rax
	jmp	.L95
.L94:
	movl	$0, %eax
.L95:
	movq	-40(%rbp), %rdx
	movq	56(%rdx), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	*%r8
	jmp	.L96
.L93:
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_insert_tail
	movq	-48(%rbp), %rax
	movb	$0, 289(%rax)
.L96:
	movl	$1, %eax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	demux_process_pending_urxe, .-demux_process_pending_urxe
	.type	demux_process_pending_urxl, @function
demux_process_pending_urxl:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L99
.L101:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	demux_process_pending_urxe
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L99
	movl	-12(%rbp), %eax
	jmp	.L100
.L99:
	movq	-24(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_head
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L101
	movl	$1, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	demux_process_pending_urxl, .-demux_process_pending_urxl
	.globl	ossl_quic_demux_pump
	.type	ossl_quic_demux_pump, @function
ossl_quic_demux_pump:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_head
	testq	%rax, %rax
	jne	.L103
	movq	-24(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	demux_ensure_free_urxe
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L104
	movl	$-2, %eax
	jmp	.L105
.L104:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	demux_recv
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L103
	movl	-4(%rbp), %eax
	jmp	.L105
.L103:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	demux_process_pending_urxl
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L106
	movl	$-2, %eax
	jmp	.L105
.L106:
	movl	$1, %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	ossl_quic_demux_pump, .-ossl_quic_demux_pump
	.globl	ossl_quic_demux_inject
	.type	ossl_quic_demux_inject, @function
ossl_quic_demux_inject:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	demux_ensure_free_urxe
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	je	.L108
	movl	$0, %eax
	jmp	.L109
.L108:
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_head
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	demux_reserve_urxe
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L110
	movl	$0, %eax
	jmp	.L109
.L110:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_quic_urxe_data
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpq	$0, -64(%rbp)
	je	.L111
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, 56(%rax)
	movq	%rbx, 64(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 72(%rax)
	movq	%rbx, 80(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 88(%rax)
	movq	%rbx, 96(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 104(%rax)
	movq	%rbx, 112(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 120(%rax)
	movq	%rbx, 128(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 136(%rax)
	movq	%rbx, 144(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 152(%rax)
	movq	%rbx, 160(%rax)
	jmp	.L112
.L111:
	movq	-32(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
.L112:
	cmpq	$0, -72(%rbp)
	je	.L113
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, 168(%rax)
	movq	%rbx, 176(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 184(%rax)
	movq	%rbx, 192(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 200(%rax)
	movq	%rbx, 208(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 216(%rax)
	movq	%rbx, 224(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 232(%rax)
	movq	%rbx, 240(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 248(%rax)
	movq	%rbx, 256(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 264(%rax)
	movq	%rbx, 272(%rax)
	jmp	.L114
.L113:
	movq	-32(%rbp), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	call	BIO_ADDR_clear@PLT
.L114:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rbx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, 280(%rbx)
	jmp	.L116
.L115:
	movq	-32(%rbp), %rbx
	call	ossl_time_zero
	movq	%rax, 280(%rbx)
.L116:
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_remove
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-32(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-40(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_insert_tail
	movq	-32(%rbp), %rax
	movb	$1, 289(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	demux_process_pending_urxl
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
.L109:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	ossl_quic_demux_inject, .-ossl_quic_demux_inject
	.globl	ossl_quic_demux_release_urxe
	.type	ossl_quic_demux_release_urxe, @function
ossl_quic_demux_release_urxe:
.LFB617:
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
	leaq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_insert_tail
	movq	-16(%rbp), %rax
	movb	$0, 289(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	ossl_quic_demux_release_urxe, .-ossl_quic_demux_release_urxe
	.globl	ossl_quic_demux_reinject_urxe
	.type	ossl_quic_demux_reinject_urxe, @function
ossl_quic_demux_reinject_urxe:
.LFB618:
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
	leaq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_urxe_insert_head
	movq	-16(%rbp), %rax
	movb	$1, 289(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	ossl_quic_demux_reinject_urxe, .-ossl_quic_demux_reinject_urxe
	.globl	ossl_quic_demux_has_pending
	.type	ossl_quic_demux_has_pending, @function
ossl_quic_demux_has_pending:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	ossl_list_urxe_head
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	ossl_quic_demux_has_pending, .-ossl_quic_demux_has_pending
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
