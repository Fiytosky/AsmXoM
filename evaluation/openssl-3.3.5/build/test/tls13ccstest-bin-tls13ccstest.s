	.file	"tls13ccstest.c"
	.text
	.type	packet_forward, @function
packet_forward:
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
.LFE524:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB525:
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
.LFE525:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_data, @function
PACKET_data:
.LFB527:
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
.LFE527:
	.size	PACKET_data, .-PACKET_data
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB528:
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
.LFE528:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_peek_net_2, @function
PACKET_peek_net_2:
.LFB533:
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
	cmpq	$1, %rax
	ja	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PACKET_peek_net_2, .-PACKET_peek_net_2
	.type	PACKET_get_net_2, @function
PACKET_get_net_2:
.LFB534:
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
	call	PACKET_peek_net_2
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_peek_net_3, @function
PACKET_peek_net_3:
.LFB536:
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
	cmpq	$2, %rax
	ja	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$8, %rax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	PACKET_peek_net_3, .-PACKET_peek_net_3
	.type	PACKET_get_net_3, @function
PACKET_get_net_3:
.LFB537:
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
	call	PACKET_peek_net_3
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	PACKET_get_net_3, .-PACKET_get_net_3
	.type	PACKET_peek_1, @function
PACKET_peek_1:
.LFB544:
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
	testq	%rax, %rax
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	PACKET_peek_1, .-PACKET_peek_1
	.type	PACKET_get_1, @function
PACKET_get_1:
.LFB545:
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
	call	PACKET_peek_1
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	PACKET_get_1, .-PACKET_get_1
	.type	PACKET_peek_bytes, @function
PACKET_peek_bytes:
.LFB549:
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
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-24(%rbp), %rax
	jnb	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	PACKET_peek_bytes, .-PACKET_peek_bytes
	.type	PACKET_get_bytes, @function
PACKET_get_bytes:
.LFB550:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_peek_bytes
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	PACKET_get_bytes, .-PACKET_get_bytes
	.type	PACKET_peek_copy_bytes, @function
PACKET_peek_copy_bytes:
.LFB551:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	cmpq	-24(%rbp), %rax
	jnb	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	PACKET_peek_copy_bytes, .-PACKET_peek_copy_bytes
	.type	PACKET_copy_bytes, @function
PACKET_copy_bytes:
.LFB552:
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
	call	PACKET_peek_copy_bytes
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	PACKET_copy_bytes, .-PACKET_copy_bytes
	.type	PACKET_forward, @function
PACKET_forward:
.LFB557:
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
	jnb	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	PACKET_forward, .-PACKET_forward
	.type	PACKET_get_length_prefixed_1, @function
PACKET_get_length_prefixed_1:
.LFB558:
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
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L43
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L44
.L43:
	movl	$0, %eax
	jmp	.L46
.L44:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	PACKET_get_length_prefixed_1, .-PACKET_get_length_prefixed_1
	.type	PACKET_get_length_prefixed_2, @function
PACKET_get_length_prefixed_2:
.LFB560:
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
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-4(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L48
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L49
.L48:
	movl	$0, %eax
	jmp	.L51
.L49:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	PACKET_get_length_prefixed_2, .-PACKET_get_length_prefixed_2
	.type	PACKET_get_length_prefixed_3, @function
PACKET_get_length_prefixed_3:
.LFB562:
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
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_3
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_bytes
	testl	%eax, %eax
	jne	.L54
.L53:
	movl	$0, %eax
	jmp	.L56
.L54:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	PACKET_get_length_prefixed_3, .-PACKET_get_length_prefixed_3
	.local	cert
	.comm	cert,8,8
	.local	privkey
	.comm	privkey,8,8
	.local	s_to_c_fbio
	.comm	s_to_c_fbio,8,8
	.local	c_to_s_fbio
	.comm	c_to_s_fbio,8,8
	.local	chseen
	.comm	chseen,4,4
	.local	shseen
	.comm	shseen,4,4
	.local	sccsseen
	.comm	sccsseen,4,4
	.local	ccsaftersh
	.comm	ccsaftersh,4,4
	.local	ccsbeforesh
	.comm	ccsbeforesh,4,4
	.local	sappdataseen
	.comm	sappdataseen,4,4
	.local	cappdataseen
	.comm	cappdataseen,4,4
	.local	badccs
	.comm	badccs,4,4
	.local	badvers
	.comm	badvers,4,4
	.local	badsessid
	.comm	badsessid,4,4
	.local	chsessid
	.comm	chsessid,32,32
	.local	chsessidlen
	.comm	chsessidlen,8,8
	.local	method_watchccs
	.comm	method_watchccs,8,8
	.section	.rodata
.LC0:
	.string	"Watch CCS filter"
	.text
	.type	bio_f_watchccs_filter, @function
bio_f_watchccs_filter:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	method_watchccs(%rip), %rax
	testq	%rax, %rax
	jne	.L58
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movl	$640, %edi
	call	BIO_meth_new@PLT
	movq	%rax, method_watchccs(%rip)
	movq	method_watchccs(%rip), %rax
	testq	%rax, %rax
	je	.L59
	movq	method_watchccs(%rip), %rax
	leaq	watchccs_write(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_write@PLT
	testl	%eax, %eax
	je	.L59
	movq	method_watchccs(%rip), %rax
	leaq	watchccs_read(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_read@PLT
	testl	%eax, %eax
	je	.L59
	movq	method_watchccs(%rip), %rax
	leaq	watchccs_puts(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_puts@PLT
	testl	%eax, %eax
	je	.L59
	movq	method_watchccs(%rip), %rax
	leaq	watchccs_gets(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_gets@PLT
	testl	%eax, %eax
	je	.L59
	movq	method_watchccs(%rip), %rax
	leaq	watchccs_ctrl(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_ctrl@PLT
	testl	%eax, %eax
	je	.L59
	movq	method_watchccs(%rip), %rax
	leaq	watchccs_new(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_create@PLT
	testl	%eax, %eax
	je	.L59
	movq	method_watchccs(%rip), %rax
	leaq	watchccs_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_meth_set_destroy@PLT
	testl	%eax, %eax
	jne	.L58
.L59:
	movl	$0, %eax
	jmp	.L60
.L58:
	movq	method_watchccs(%rip), %rax
.L60:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	bio_f_watchccs_filter, .-bio_f_watchccs_filter
	.type	watchccs_new, @function
watchccs_new:
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
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	watchccs_new, .-watchccs_new
	.type	watchccs_free, @function
watchccs_free:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	watchccs_free, .-watchccs_free
	.type	watchccs_read, @function
watchccs_read:
.LFB566:
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
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	cmpq	$0, -16(%rbp)
	jne	.L68
	movl	$0, %eax
	jmp	.L67
.L68:
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L69
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L69
	movq	-24(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L69:
	movl	-4(%rbp), %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	watchccs_read, .-watchccs_read
	.type	watchccs_write, @function
watchccs_write:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movl	$0, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, -132(%rbp)
	jg	.L71
	movl	$0, %eax
	jmp	.L101
.L71:
	cmpq	$0, -32(%rbp)
	jne	.L73
	movl	$0, %eax
	jmp	.L101
.L73:
	movq	-120(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	-128(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L101
.L99:
	leaq	-100(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L76
	leaq	-104(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L76
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_2
	testl	%eax, %eax
	jne	.L77
.L76:
	movl	$0, %eax
	jmp	.L101
.L77:
	movl	$771, -20(%rbp)
	movl	-100(%rbp), %eax
	cmpl	$22, %eax
	jne	.L78
	leaq	-108(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L79
	leaq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_3
	testl	%eax, %eax
	jne	.L80
.L79:
	movl	$0, %eax
	jmp	.L101
.L80:
	movl	-108(%rbp), %eax
	cmpl	$1, %eax
	jne	.L81
	movl	chseen(%rip), %eax
	addl	$1, %eax
	movl	%eax, chseen(%rip)
	leaq	-80(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L82
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L83
.L82:
	movl	$0, %eax
	jmp	.L101
.L83:
	movl	chseen(%rip), %eax
	cmpl	$1, %eax
	jne	.L84
	movl	$769, -20(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, chsessidlen(%rip)
	movq	chsessidlen(%rip), %rdx
	leaq	chsessid(%rip), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_copy_bytes
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L101
.L84:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	chsessidlen(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L86
	movq	chsessidlen(%rip), %rax
	testq	%rax, %rax
	je	.L85
	movq	chsessidlen(%rip), %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	leaq	chsessid(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L85
.L86:
	movl	$1, badsessid(%rip)
	jmp	.L85
.L81:
	movl	-108(%rbp), %eax
	cmpl	$2, %eax
	jne	.L85
	movl	shseen(%rip), %eax
	addl	$1, %eax
	movl	%eax, shseen(%rip)
	leaq	-80(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	PACKET_forward
	testl	%eax, %eax
	je	.L87
	leaq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_length_prefixed_1
	testl	%eax, %eax
	jne	.L88
.L87:
	movl	$0, %eax
	jmp	.L101
.L88:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	movq	%rax, %rdx
	movq	chsessidlen(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L89
	movq	chsessidlen(%rip), %rax
	testq	%rax, %rax
	je	.L85
	movq	chsessidlen(%rip), %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_data
	movq	%rax, %rcx
	leaq	chsessid(%rip), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L85
.L89:
	movl	$1, badsessid(%rip)
	jmp	.L85
.L78:
	movl	-100(%rbp), %eax
	cmpl	$20, %eax
	jne	.L90
	movq	s_to_c_fbio(%rip), %rax
	cmpq	%rax, -120(%rbp)
	jne	.L91
	movl	sappdataseen(%rip), %eax
	testl	%eax, %eax
	jne	.L92
	movl	chseen(%rip), %eax
	cmpl	$1, %eax
	jne	.L92
	movl	shseen(%rip), %eax
	cmpl	$1, %eax
	jne	.L92
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	jne	.L92
	movl	$1, sccsseen(%rip)
	jmp	.L85
.L92:
	movl	$1, badccs(%rip)
	jmp	.L85
.L91:
	movl	cappdataseen(%rip), %eax
	testl	%eax, %eax
	jne	.L94
	movl	shseen(%rip), %eax
	cmpl	$1, %eax
	jne	.L95
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	jne	.L95
	movl	$1, ccsaftersh(%rip)
	jmp	.L85
.L95:
	movl	shseen(%rip), %eax
	testl	%eax, %eax
	jne	.L97
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	jne	.L97
	movl	$1, ccsbeforesh(%rip)
	jmp	.L85
.L97:
	movl	$1, badccs(%rip)
	jmp	.L85
.L94:
	movl	$1, badccs(%rip)
	jmp	.L85
.L90:
	movl	-100(%rbp), %eax
	cmpl	$23, %eax
	jne	.L85
	movq	s_to_c_fbio(%rip), %rax
	cmpq	%rax, -120(%rbp)
	jne	.L98
	movl	$1, sappdataseen(%rip)
	jmp	.L85
.L98:
	movl	$1, cappdataseen(%rip)
.L85:
	movl	-104(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	je	.L75
	movl	$1, badvers(%rip)
.L75:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PACKET_remaining
	testq	%rax, %rax
	jne	.L99
	movl	-132(%rbp), %edx
	movq	-128(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jg	.L100
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L100
	movq	-120(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L100:
	movl	-24(%rbp), %eax
.L101:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	watchccs_write, .-watchccs_write
	.type	watchccs_ctrl, @function
watchccs_ctrl:
.LFB568:
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
	jne	.L103
	movl	$0, %eax
	jmp	.L104
.L103:
	cmpl	$12, -28(%rbp)
	jne	.L105
	movq	$0, -8(%rbp)
	jmp	.L106
.L105:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	nop
.L106:
	movq	-8(%rbp), %rax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	watchccs_ctrl, .-watchccs_ctrl
	.type	watchccs_gets, @function
watchccs_gets:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	watchccs_gets, .-watchccs_gets
	.type	watchccs_puts, @function
watchccs_puts:
.LFB570:
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
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	watchccs_write
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	watchccs_puts, .-watchccs_puts
	.section	.rodata
	.align 8
.LC1:
	.string	"create_ssl_ctx_pair(NULL, TLS_server_method(), TLS_client_method(), TLS1_VERSION, 0, &sctx, &cctx, cert, privkey)"
.LC2:
	.string	"../test/tls13ccstest.c"
	.align 8
.LC3:
	.string	"SSL_CTX_set_max_early_data(sctx, SSL3_RT_MAX_PLAIN_LENGTH)"
.LC4:
	.string	"Invalid test value"
	.align 8
.LC5:
	.string	"create_ssl_objects(sctx, cctx, &sssl, &cssl, NULL, NULL)"
	.align 8
.LC6:
	.string	"create_ssl_connection(sssl, cssl, SSL_ERROR_NONE)"
.LC7:
	.string	"sess"
.LC8:
	.string	"P-384"
	.align 8
.LC9:
	.string	"SSL_CTX_set1_groups_list(sctx, \"P-384\")"
.LC10:
	.string	"s_to_c_fbio"
.LC11:
	.string	"c_to_s_fbio"
	.align 8
.LC12:
	.string	"create_ssl_objects(sctx, cctx, &sssl, &cssl, s_to_c_fbio, c_to_s_fbio)"
.LC13:
	.string	"SSL_set_session(cssl, sess)"
	.align 8
.LC14:
	.string	"SSL_write_early_data(cssl, msg, strlen(msg), &written)"
.LC15:
	.string	"SSL_READ_EARLY_DATA_SUCCESS"
	.align 8
.LC16:
	.string	"SSL_read_early_data(sssl, buf, sizeof(buf), &readbytes)"
.LC17:
	.string	"0"
.LC18:
	.string	"SSL_connect(cssl)"
.LC19:
	.string	"SSL_READ_EARLY_DATA_FINISH"
.LC20:
	.string	"badccs"
.LC21:
	.string	"badvers"
.LC22:
	.string	"badsessid"
.LC23:
	.string	"sccsseen"
.LC24:
	.string	"ccsaftersh"
.LC25:
	.string	"ccsbeforesh"
.LC26:
	.string	"chsessidlen"
	.text
	.type	test_tls13ccs, @function
test_tls13ccs:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -196(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -36(%rbp)
	movabsq	$7017769825249097028, %rax
	movq	%rax, -91(%rbp)
	movl	$6386785, -84(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, ccsbeforesh(%rip)
	movl	ccsbeforesh(%rip), %eax
	movl	%eax, ccsaftersh(%rip)
	movl	ccsaftersh(%rip), %eax
	movl	%eax, sccsseen(%rip)
	movl	sccsseen(%rip), %eax
	movl	%eax, shseen(%rip)
	movl	shseen(%rip), %eax
	movl	%eax, chseen(%rip)
	movl	$0, badsessid(%rip)
	movl	badsessid(%rip), %eax
	movl	%eax, badvers(%rip)
	movl	badvers(%rip), %eax
	movl	%eax, badccs(%rip)
	movl	badccs(%rip), %eax
	movl	%eax, cappdataseen(%rip)
	movl	cappdataseen(%rip), %eax
	movl	%eax, sappdataseen(%rip)
	movq	$0, chsessidlen(%rip)
	movq	privkey(%rip), %r12
	movq	cert(%rip), %rbx
	call	TLS_client_method@PLT
	movq	%rax, %r13
	call	TLS_server_method@PLT
	movq	%rax, %rsi
	leaq	-56(%rbp), %rdx
	subq	$8, %rsp
	pushq	%r12
	pushq	%rbx
	leaq	-64(%rbp), %rax
	pushq	%rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$769, %ecx
	movq	%r13, %rdx
	movl	$0, %edi
	call	create_ssl_ctx_pair@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L176
	movq	-56(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	SSL_CTX_set_max_early_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$260, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L176
	cmpl	$11, -196(%rbp)
	je	.L115
	cmpl	$11, -196(%rbp)
	jg	.L116
	cmpl	$10, -196(%rbp)
	je	.L117
	cmpl	$10, -196(%rbp)
	jg	.L116
	cmpl	$9, -196(%rbp)
	je	.L177
	cmpl	$9, -196(%rbp)
	jg	.L116
	cmpl	$8, -196(%rbp)
	je	.L115
	cmpl	$8, -196(%rbp)
	jg	.L116
	cmpl	$7, -196(%rbp)
	je	.L117
	cmpl	$7, -196(%rbp)
	jg	.L116
	cmpl	$6, -196(%rbp)
	je	.L177
	cmpl	$6, -196(%rbp)
	jg	.L116
	cmpl	$5, -196(%rbp)
	je	.L115
	cmpl	$5, -196(%rbp)
	jg	.L116
	cmpl	$4, -196(%rbp)
	je	.L117
	cmpl	$4, -196(%rbp)
	jg	.L116
	cmpl	$3, -196(%rbp)
	je	.L177
	cmpl	$3, -196(%rbp)
	jg	.L116
	cmpl	$2, -196(%rbp)
	je	.L115
	cmpl	$2, -196(%rbp)
	jg	.L116
	cmpl	$0, -196(%rbp)
	je	.L177
	cmpl	$1, -196(%rbp)
	jne	.L116
.L117:
	movq	-64(%rbp), %rax
	movl	$1048576, %esi
	movq	%rax, %rdi
	call	SSL_CTX_clear_options@PLT
	jmp	.L119
.L115:
	movq	-56(%rbp), %rax
	movl	$1048576, %esi
	movq	%rax, %rdi
	call	SSL_CTX_clear_options@PLT
	jmp	.L119
.L116:
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$297, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L114
.L177:
	nop
.L119:
	cmpl	$5, -196(%rbp)
	jle	.L120
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	-80(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L178
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$304, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L178
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get1_session@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$307, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L179
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_shutdown@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	$0, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
.L120:
	cmpl	$2, -196(%rbp)
	jle	.L124
	cmpl	$5, -196(%rbp)
	jle	.L125
.L124:
	cmpl	$8, -196(%rbp)
	jle	.L126
.L125:
	movq	-56(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$92, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$324, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L180
.L126:
	call	bio_f_watchccs_filter
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, s_to_c_fbio(%rip)
	call	bio_f_watchccs_filter
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, c_to_s_fbio(%rip)
	movq	s_to_c_fbio(%rip), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$331, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L127
	movq	c_to_s_fbio(%rip), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$332, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L128
.L127:
	movq	s_to_c_fbio(%rip), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	c_to_s_fbio(%rip), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L114
.L128:
	movq	c_to_s_fbio(%rip), %r8
	movq	s_to_c_fbio(%rip), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	-80(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	create_ssl_objects@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$339, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L181
	cmpl	$5, -196(%rbp)
	jle	.L130
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_session@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$345, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L182
	movq	-80(%rbp), %rax
	leaq	-184(%rbp), %rdx
	leaq	-91(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	SSL_write_early_data@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$346, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L182
	cmpl	$8, -196(%rbp)
	jg	.L132
	movq	-72(%rbp), %rax
	leaq	-192(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$80, %edx
	movq	%rax, %rdi
	call	SSL_read_early_data@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$349, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L182
.L132:
	cmpl	$8, -196(%rbp)
	jg	.L133
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$354, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L134
	jmp	.L114
.L133:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_connect@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$357, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L183
.L134:
	movq	-72(%rbp), %rax
	leaq	-192(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$80, %edx
	movq	%rax, %rdi
	call	SSL_read_early_data@PLT
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$360, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L184
.L130:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	create_ssl_connection@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$367, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L185
	movl	badccs(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$375, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L186
	movl	badvers(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$375, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L186
	movl	badsessid(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$375, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L186
	cmpl	$11, -196(%rbp)
	je	.L138
	cmpl	$11, -196(%rbp)
	jg	.L139
	cmpl	$10, -196(%rbp)
	je	.L140
	cmpl	$10, -196(%rbp)
	jg	.L139
	cmpl	$9, -196(%rbp)
	je	.L141
	cmpl	$9, -196(%rbp)
	jg	.L139
	cmpl	$8, -196(%rbp)
	je	.L142
	cmpl	$8, -196(%rbp)
	jg	.L139
	cmpl	$7, -196(%rbp)
	je	.L143
	cmpl	$7, -196(%rbp)
	jg	.L139
	cmpl	$6, -196(%rbp)
	je	.L144
	cmpl	$6, -196(%rbp)
	jg	.L139
	cmpl	$5, -196(%rbp)
	je	.L145
	cmpl	$5, -196(%rbp)
	jg	.L139
	cmpl	$4, -196(%rbp)
	je	.L146
	cmpl	$4, -196(%rbp)
	jg	.L139
	cmpl	$3, -196(%rbp)
	je	.L147
	cmpl	$3, -196(%rbp)
	jg	.L139
	cmpl	$2, -196(%rbp)
	je	.L148
	cmpl	$2, -196(%rbp)
	jg	.L139
	cmpl	$0, -196(%rbp)
	je	.L149
	cmpl	$1, -196(%rbp)
	je	.L150
	jmp	.L139
.L149:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$380, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L187
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$381, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L187
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$382, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L187
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$383, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L188
	jmp	.L187
.L150:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$388, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L189
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$389, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L189
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$390, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L189
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$391, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L190
	jmp	.L189
.L148:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$396, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L191
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$397, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L191
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$398, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L191
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$399, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L192
	jmp	.L191
.L147:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$404, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L193
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$405, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L193
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$406, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L193
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$407, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L194
	jmp	.L193
.L146:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$412, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L195
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$413, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L195
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$414, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L195
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$415, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L196
	jmp	.L195
.L145:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$420, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L197
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$421, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L197
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$422, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L197
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$423, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L198
	jmp	.L197
.L144:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$428, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L199
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$429, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L199
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$430, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L199
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$431, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L200
	jmp	.L199
.L143:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$436, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L201
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$437, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L201
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$438, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L201
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$439, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L202
	jmp	.L201
.L142:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$444, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L203
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$445, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L203
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$446, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L203
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$447, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L204
	jmp	.L203
.L141:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$452, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L205
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$453, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L205
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$454, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L205
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$455, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	jne	.L206
	jmp	.L205
.L140:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$460, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L207
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$461, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L207
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$462, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L207
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$463, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L208
	jmp	.L207
.L138:
	movl	sccsseen(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$468, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L209
	movl	ccsaftersh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$469, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L209
	movl	ccsbeforesh(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$470, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L209
	movq	chsessidlen(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$471, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L209
	jmp	.L139
.L188:
	nop
	jmp	.L139
.L190:
	nop
	jmp	.L139
.L192:
	nop
	jmp	.L139
.L194:
	nop
	jmp	.L139
.L196:
	nop
	jmp	.L139
.L198:
	nop
	jmp	.L139
.L200:
	nop
	jmp	.L139
.L202:
	nop
	jmp	.L139
.L204:
	nop
	jmp	.L139
.L206:
	nop
	jmp	.L139
.L208:
	nop
.L139:
	movl	$1, -36(%rbp)
	jmp	.L114
.L176:
	nop
	jmp	.L114
.L178:
	nop
	jmp	.L114
.L179:
	nop
	jmp	.L114
.L180:
	nop
	jmp	.L114
.L181:
	nop
	jmp	.L114
.L182:
	nop
	jmp	.L114
.L183:
	nop
	jmp	.L114
.L184:
	nop
	jmp	.L114
.L185:
	nop
	jmp	.L114
.L186:
	nop
	jmp	.L114
.L187:
	nop
	jmp	.L114
.L189:
	nop
	jmp	.L114
.L191:
	nop
	jmp	.L114
.L193:
	nop
	jmp	.L114
.L195:
	nop
	jmp	.L114
.L197:
	nop
	jmp	.L114
.L199:
	nop
	jmp	.L114
.L201:
	nop
	jmp	.L114
.L203:
	nop
	jmp	.L114
.L205:
	nop
	jmp	.L114
.L207:
	nop
	jmp	.L114
.L209:
	nop
.L114:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	movl	-36(%rbp), %eax
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	test_tls13ccs, .-test_tls13ccs
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB572:
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
.LFE572:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC27:
	.string	"Error parsing test options\n"
.LC28:
	.string	"cert = test_get_argument(0)"
	.align 8
.LC29:
	.string	"privkey = test_get_argument(1)"
.LC30:
	.string	"test_tls13ccs"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L213
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$492, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L214
.L213:
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, cert(%rip)
	movq	cert(%rip), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$496, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L215
	movl	$1, %edi
	call	test_get_argument@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$497, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L216
.L215:
	movl	$0, %eax
	jmp	.L214
.L216:
	leaq	test_tls13ccs(%rip), %rsi
	leaq	.LC30(%rip), %rax
	movl	$1, %ecx
	movl	$12, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L214:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	method_watchccs(%rip), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 8
.LC31:
	.string	"Usage: %s [options] certfile privkeyfile\n"
.LC32:
	.string	"Valid options are:\n"
.LC33:
	.string	"help"
.LC34:
	.string	"Display this summary"
.LC35:
	.string	"list"
	.align 8
.LC36:
	.string	"Display the list of tests available"
.LC37:
	.string	"test"
	.align 8
.LC38:
	.string	"Run a single test by id or name"
.LC39:
	.string	"iter"
	.align 8
.LC40:
	.string	"Run a single iteration of a test"
.LC41:
	.string	"indent"
	.align 8
.LC42:
	.string	"Number of tabs added to output"
.LC43:
	.string	"seed"
	.align 8
.LC44:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC31
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	500
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	501
	.long	45
	.quad	.LC36
	.quad	.LC37
	.long	502
	.long	115
	.quad	.LC38
	.quad	.LC39
	.long	503
	.long	110
	.quad	.LC40
	.quad	.LC41
	.long	504
	.long	112
	.quad	.LC42
	.quad	.LC43
	.long	505
	.long	110
	.quad	.LC44
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
