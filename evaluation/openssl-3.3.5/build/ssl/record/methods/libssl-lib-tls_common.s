	.file	"tls_common.c"
	.text
	.type	packet_forward, @function
packet_forward:
.LFB496:
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
.LFE496:
	.size	packet_forward, .-packet_forward
	.type	PACKET_remaining, @function
PACKET_remaining:
.LFB497:
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
.LFE497:
	.size	PACKET_remaining, .-PACKET_remaining
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB500:
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
	jns	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	PACKET_peek_net_2, @function
PACKET_peek_net_2:
.LFB505:
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
	ja	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
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
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	PACKET_peek_net_2, .-PACKET_peek_net_2
	.type	PACKET_get_net_2, @function
PACKET_get_net_2:
.LFB506:
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
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	PACKET_get_net_2, .-PACKET_get_net_2
	.type	PACKET_get_net_2_len, @function
PACKET_get_net_2_len:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L14
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L14:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	PACKET_get_net_2_len, .-PACKET_get_net_2_len
	.type	PACKET_peek_1, @function
PACKET_peek_1:
.LFB516:
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
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PACKET_peek_1, .-PACKET_peek_1
	.type	PACKET_get_1, @function
PACKET_get_1:
.LFB517:
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
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	packet_forward
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PACKET_get_1, .-PACKET_get_1
	.type	OSSL_FUNC_rlayer_skip_early_data, @function
OSSL_FUNC_rlayer_skip_early_data:
.LFB596:
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
.LFE596:
	.size	OSSL_FUNC_rlayer_skip_early_data, .-OSSL_FUNC_rlayer_skip_early_data
	.type	OSSL_FUNC_rlayer_msg_callback, @function
OSSL_FUNC_rlayer_msg_callback:
.LFB597:
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
.LFE597:
	.size	OSSL_FUNC_rlayer_msg_callback, .-OSSL_FUNC_rlayer_msg_callback
	.type	OSSL_FUNC_rlayer_security, @function
OSSL_FUNC_rlayer_security:
.LFB598:
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
.LFE598:
	.size	OSSL_FUNC_rlayer_security, .-OSSL_FUNC_rlayer_security
	.type	OSSL_FUNC_rlayer_padding, @function
OSSL_FUNC_rlayer_padding:
.LFB599:
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
.LFE599:
	.size	OSSL_FUNC_rlayer_padding, .-OSSL_FUNC_rlayer_padding
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
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
.LFE617:
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
	.section	.rodata
	.align 8
.LC0:
	.string	"../ssl/record/methods/tls_common.c"
	.text
	.globl	ossl_tls_buffer_release
	.type	ossl_tls_buffer_release, @function
ossl_tls_buffer_release:
.LFB729:
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
	leaq	.LC0(%rip), %rcx
	movl	$28, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ossl_tls_buffer_release, .-ossl_tls_buffer_release
	.type	TLS_RL_RECORD_release, @function
TLS_RL_RECORD_release:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L44
.L45:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$37, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, 48(%rax)
	addq	$1, -8(%rbp)
.L44:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L45
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	TLS_RL_RECORD_release, .-TLS_RL_RECORD_release
	.globl	ossl_tls_rl_record_set_seq_num
	.type	ossl_tls_rl_record_set_seq_num, @function
ossl_tls_rl_record_set_seq_num:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	leaq	58(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ossl_tls_rl_record_set_seq_num, .-ossl_tls_rl_record_set_seq_num
	.globl	ossl_rlayer_fatal
	.type	ossl_rlayer_fatal, @function
ossl_rlayer_fatal:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movl	%edx, -224(%rbp)
	movq	%rcx, -232(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L49
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L49:
	movl	$32, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movl	-224(%rbp), %eax
	movl	%eax, %esi
	movl	$20, %edi
	call	ERR_vset_error@PLT
	movq	-216(%rbp), %rax
	movl	-220(%rbp), %edx
	movl	%edx, 4104(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	ossl_rlayer_fatal, .-ossl_rlayer_fatal
	.section	.rodata
.LC1:
	.string	"tls-version"
.LC2:
	.string	"tls-mac-size"
	.text
	.globl	ossl_set_tls_provider_parameters
	.type	ossl_set_tls_provider_parameters, @function
ossl_set_tls_provider_parameters:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -168(%rbp)
	movl	$-1, -20(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2097152, %eax
	testq	%rax, %rax
	jne	.L51
	movq	-184(%rbp), %rax
	movl	4256(%rax), %eax
	testl	%eax, %eax
	jne	.L51
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -20(%rbp)
.L51:
	cmpl	$0, -20(%rbp)
	js	.L52
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, -168(%rbp)
.L52:
	movq	-184(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-256(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-256(%rbp), %rax
	leaq	-168(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-160(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L55
.L53:
	movl	$1, %eax
.L55:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ossl_set_tls_provider_parameters, .-ossl_set_tls_provider_parameters
	.globl	ssl3_cbc_record_digest_supported
	.type	ssl3_cbc_record_digest_supported, @function
ssl3_cbc_record_digest_supported:
.LFB734:
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
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$675, %eax
	jg	.L57
	cmpl	$672, %eax
	jge	.L58
	cmpl	$4, %eax
	je	.L58
	cmpl	$64, %eax
	jne	.L57
.L58:
	movl	$1, %eax
	jmp	.L59
.L57:
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	ssl3_cbc_record_digest_supported, .-ssl3_cbc_record_digest_supported
	.type	tls_allow_compression, @function
tls_allow_compression:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	andl	$131072, %eax
	testq	%rax, %rax
	je	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-8(%rbp), %rax
	movq	4384(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-8(%rbp), %rax
	movq	4384(%rax), %r9
	movq	-8(%rbp), %rax
	movq	4360(%rax), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$15, %esi
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L64
.L63:
	movl	$1, %eax
	jmp	.L62
.L64:
	movl	$0, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	tls_allow_compression, .-tls_allow_compression
	.type	tls_release_write_buffer_int, @function
tls_release_write_buffer_int:
.LFB736:
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
	movq	1688(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L67
.L70:
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L68
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	jmp	.L69
.L68:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$136, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L69:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	subq	$1, -8(%rbp)
.L67:
	movq	-8(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L70
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	tls_release_write_buffer_int, .-tls_release_write_buffer_int
	.globl	tls_setup_write_buffer
	.type	tls_setup_write_buffer, @function
tls_setup_write_buffer:
.LFB737:
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
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L72
	cmpq	$1, -96(%rbp)
	jbe	.L73
	cmpq	$0, -112(%rbp)
	jne	.L73
.L72:
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L74
	movq	$14, -16(%rbp)
	jmp	.L75
.L74:
	movq	$5, -16(%rbp)
.L75:
	movq	-88(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$772, %eax
	jne	.L76
	movq	$1, -40(%rbp)
.L76:
	movq	$7, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	4136(%rax), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movl	4164(%rax), %eax
	movl	%eax, %eax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	addq	$80, %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	tls_allow_compression
	testl	%eax, %eax
	je	.L77
	addq	$1024, -32(%rbp)
.L77:
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	jne	.L73
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addq	$80, %rax
	movq	%rax, -32(%rbp)
.L73:
	movq	-88(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -64(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L78
.L86:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L79
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L80
.L79:
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
.L80:
	cmpq	$0, -48(%rbp)
	jne	.L81
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.L81:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -48(%rbp)
	je	.L82
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$190, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
.L82:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L83
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$196, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L83
	movq	-88(%rbp), %rax
	movq	1688(%rax), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L84
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 1688(%rax)
.L84:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$205, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L85
.L83:
	movq	-72(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	addq	$1, -24(%rbp)
.L78:
	movq	-24(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L86
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_release_write_buffer_int
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 1688(%rax)
	movl	$1, %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	tls_setup_write_buffer, .-tls_setup_write_buffer
	.type	tls_release_write_buffer, @function
tls_release_write_buffer:
.LFB738:
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
	call	tls_release_write_buffer_int
	movq	-8(%rbp), %rax
	movq	$0, 1688(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	tls_release_write_buffer, .-tls_release_write_buffer
	.globl	tls_setup_read_buffer
	.type	tls_setup_read_buffer, @function
tls_setup_read_buffer:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	addq	$1696, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L89
	movq	$13, -16(%rbp)
	jmp	.L90
.L89:
	movq	$5, -16(%rbp)
.L90:
	movq	$7, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L91
	movq	-56(%rbp), %rax
	movl	4164(%rax), %eax
	addl	$320, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	tls_allow_compression
	testl	%eax, %eax
	je	.L92
	addq	$1024, -8(%rbp)
.L92:
	movq	-56(%rbp), %rax
	movq	4400(%rax), %rax
	cmpq	$1, %rax
	jbe	.L93
	movq	-56(%rbp), %rax
	movq	4400(%rax), %rax
	movq	-8(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L93:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L94
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L94:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$261, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$267, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L96
.L95:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L91:
	movl	$1, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	tls_setup_read_buffer, .-tls_setup_read_buffer
	.type	tls_release_read_buffer, @function
tls_release_read_buffer:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$1696, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L98
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L98:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$284, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 4080(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 4088(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	tls_release_read_buffer, .-tls_release_read_buffer
	.globl	tls_default_read_n
	.type	tls_default_read_n, @function
tls_default_read_n:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movl	%r8d, -96(%rbp)
	movq	%r9, -104(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L101
	movl	$-1, %eax
	jmp	.L102
.L101:
	movq	-72(%rbp), %rax
	addq	$1696, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	negq	%rax
	andl	$7, %eax
	movq	%rax, -40(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.L103
	cmpq	$0, -8(%rbp)
	jne	.L104
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L104:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 4080(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4088(%rax)
.L103:
	movq	-72(%rbp), %rax
	movq	4080(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$332, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L102
.L105:
	movq	-72(%rbp), %rax
	movq	4088(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	4080(%rax), %rax
	cmpq	%rax, -64(%rbp)
	je	.L106
	cmpl	$1, -96(%rbp)
	jne	.L106
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	4080(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 4080(%rax)
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 24(%rax)
.L106:
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L107
	cmpq	$0, -8(%rbp)
	jne	.L108
	cmpl	$0, -92(%rbp)
	je	.L108
	movl	$-1, %eax
	jmp	.L102
.L108:
	cmpq	$0, -8(%rbp)
	je	.L107
	movq	-80(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L107
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
.L107:
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L109
	movq	-72(%rbp), %rax
	movq	4088(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 4088(%rax)
	movq	-8(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L102
.L109:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	cmpq	-80(%rbp), %rdx
	jnb	.L110
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$378, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L102
.L110:
	movq	-72(%rbp), %rax
	movl	4108(%rax), %eax
	testl	%eax, %eax
	jne	.L111
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L111
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L112
.L111:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L113
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
.L113:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	cmpq	-88(%rbp), %rdx
	jnb	.L114
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -88(%rbp)
.L112:
	jmp	.L114
.L125:
	movq	$0, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L116
.L115:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
.L116:
	call	__errno_location@PLT
	movl	$0, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L117
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L118
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L119
.L118:
	movq	-32(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L120
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L121
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, 56(%rax)
	jmp	.L114
.L121:
	movl	$0, -20(%rbp)
	jmp	.L119
.L120:
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L122
	movl	$-3, -20(%rbp)
	jmp	.L119
.L122:
	movl	$-2, -20(%rbp)
	jmp	.L119
.L117:
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$427, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$211, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, -20(%rbp)
.L119:
	cmpl	$0, -20(%rbp)
	jg	.L123
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-72(%rbp), %rax
	movl	88(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L124
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L124
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	testq	%rax, %rax
	jne	.L124
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	tls_release_read_buffer
.L124:
	movl	-20(%rbp), %eax
	jmp	.L102
.L123:
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L114
	movq	-80(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L114
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
.L114:
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L125
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-72(%rbp), %rax
	movq	4088(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 4088(%rax)
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	tls_default_read_n, .-tls_default_read_n
	.type	tls_record_app_data_waiting, @function
tls_record_app_data_waiting:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$1696, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L127
	movl	$0, %eax
	jmp	.L128
.L127:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$4, -24(%rbp)
	ja	.L129
	movl	$0, %eax
	jmp	.L128
.L129:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$23, %al
	je	.L130
	movl	$0, %eax
	jmp	.L128
.L130:
	addq	$3, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %eax
	movq	%rax, -32(%rbp)
	addq	$2, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	$5, %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L131
	movl	$0, %eax
	jmp	.L128
.L131:
	movl	$1, %eax
.L128:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	tls_record_app_data_waiting, .-tls_record_app_data_waiting
	.type	rlayer_early_data_count_ok, @function
rlayer_early_data_count_ok:
.LFB743:
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
	movq	-24(%rbp), %rax
	movl	4168(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L133
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$503, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpl	$0, -44(%rbp)
	je	.L134
	movl	$80, %esi
	jmp	.L135
.L134:
	movl	$10, %esi
.L135:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$164, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L136
.L133:
	movq	-40(%rbp), %rax
	addl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	4176(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	cmpq	%rax, %rdx
	jnb	.L137
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpl	$0, -44(%rbp)
	je	.L138
	movl	$80, %esi
	jmp	.L139
.L138:
	movl	$10, %esi
.L139:
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$164, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L136
.L137:
	movq	-24(%rbp), %rax
	movq	4176(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 4176(%rax)
	movl	$1, %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	rlayer_early_data_count_ok, .-rlayer_early_data_count_ok
	.globl	tls_get_more_records
	.type	tls_get_more_records, @function
tls_get_more_records:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movl	$-2, -60(%rbp)
	movq	-296(%rbp), %rax
	addq	$1744, %rax
	movq	%rax, -72(%rbp)
	movq	-296(%rbp), %rax
	addq	$1696, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L141
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	tls_setup_read_buffer@PLT
	testl	%eax, %eax
	jne	.L141
	movl	$-2, %eax
	jmp	.L207
.L141:
	movq	-296(%rbp), %rax
	movq	4400(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L167
	movq	$1, -40(%rbp)
.L167:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-296(%rbp), %rax
	movl	4072(%rax), %eax
	cmpl	$241, %eax
	jne	.L144
	movq	-296(%rbp), %rax
	movq	4088(%rax), %rax
	cmpq	$4, %rax
	ja	.L145
.L144:
	movq	-296(%rbp), %rax
	movq	4408(%rax), %rax
	movq	32(%rax), %r10
	cmpq	$0, -32(%rbp)
	sete	%al
	movzbl	%al, %ecx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-160(%rbp), %rsi
	movq	-296(%rbp), %rax
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	$5, %esi
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jg	.L146
	movl	-92(%rbp), %eax
	jmp	.L207
.L146:
	movq	-296(%rbp), %rax
	movl	$241, 4072(%rax)
	movq	-296(%rbp), %rax
	movq	4080(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-296(%rbp), %rax
	movq	4088(%rax), %rdx
	movq	-104(%rbp), %rcx
	leaq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L148
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$594, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L148:
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, -272(%rbp)
	movq	%rdx, -264(%rbp)
	leaq	-280(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2_len
	testl	%eax, %eax
	je	.L149
	leaq	-284(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	jne	.L150
.L149:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$600, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L150:
	movq	-296(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L151
	movq	-296(%rbp), %rax
	movl	4288(%rax), %eax
	testl	%eax, %eax
	je	.L151
	movq	-280(%rbp), %rax
	andl	$32768, %eax
	testq	%rax, %rax
	je	.L151
	movl	-284(%rbp), %eax
	cmpl	$1, %eax
	jne	.L151
	movq	-88(%rbp), %rax
	movl	$22, 4(%rax)
	movq	-88(%rbp), %rax
	movl	$2, (%rax)
	movq	-280(%rbp), %rax
	andl	$32767, %eax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	$2, %rdx
	cmpq	%rax, %rdx
	jnb	.L153
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$626, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$198, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L151:
	leaq	-284(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_1
	testl	%eax, %eax
	je	.L154
	leaq	-228(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2
	testl	%eax, %eax
	je	.L154
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PACKET_get_net_2_len
	testl	%eax, %eax
	jne	.L155
.L154:
	movq	-296(%rbp), %rax
	movq	4376(%rax), %rax
	testq	%rax, %rax
	je	.L156
	movq	-296(%rbp), %rax
	movq	4376(%rax), %r10
	movq	-296(%rbp), %rax
	movq	4360(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %r9
	movl	$5, %r8d
	movq	%rax, %rcx
	movl	$256, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	*%r10
.L156:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$639, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L155:
	movl	-284(%rbp), %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	-228(%rbp), %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L157
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$652, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$267, %edx
	movl	$70, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L157:
	movq	-296(%rbp), %rax
	movq	4376(%rax), %rax
	testq	%rax, %rax
	je	.L158
	movq	-296(%rbp), %rax
	movq	4376(%rax), %r10
	movq	-296(%rbp), %rax
	movq	4360(%rax), %rdx
	movl	-228(%rbp), %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rax
	movq	%rdx, %r9
	movl	$5, %r8d
	movq	%rax, %rcx
	movl	$256, %edx
	movl	$0, %edi
	call	*%r10
.L158:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	$5, %rdx
	cmpq	%rax, %rdx
	jnb	.L153
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$662, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$198, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L153:
	movq	-296(%rbp), %rax
	movq	4408(%rax), %rax
	movq	48(%rax), %rcx
	movq	-88(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L145
	movl	$-2, %eax
	jmp	.L207
.L145:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L160
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	%rax, -16(%rbp)
	jmp	.L161
.L160:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L161:
	cmpq	$0, -16(%rbp)
	je	.L162
	movq	-296(%rbp), %rax
	movq	4408(%rax), %rax
	movq	32(%rax), %r10
	leaq	-160(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-296(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jg	.L162
	movl	-92(%rbp), %eax
	jmp	.L207
.L162:
	movq	-296(%rbp), %rax
	movl	$240, 4072(%rax)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L163
	movq	-296(%rbp), %rax
	movq	4080(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L164
.L163:
	movq	-296(%rbp), %rax
	movq	4080(%rax), %rax
	leaq	5(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 40(%rax)
.L164:
	movq	-88(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	addq	$1, -32(%rbp)
	movq	-296(%rbp), %rax
	movq	$0, 4088(%rax)
	movq	-296(%rbp), %rax
	movl	$0, 4288(%rax)
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L165
	movq	-88(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	jne	.L165
	movq	-296(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$770, %eax
	je	.L166
	movq	-296(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$771, %eax
	je	.L166
	movq	-296(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$256, %eax
	je	.L166
	movq	-296(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65279, %eax
	je	.L166
	movq	-296(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65277, %eax
	jne	.L165
.L166:
	movq	-296(%rbp), %rax
	movq	4128(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movq	-296(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$8388608, %eax
	testq	%rax, %rax
	je	.L165
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	tls_record_app_data_waiting
	testl	%eax, %eax
	jne	.L167
.L165:
	cmpq	$1, -32(%rbp)
	jne	.L168
	movq	-88(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$20, %eax
	jne	.L168
	movq	-296(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$772, %eax
	jne	.L168
	movq	-296(%rbp), %rax
	movl	4160(%rax), %eax
	testl	%eax, %eax
	je	.L168
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$1, %rax
	jne	.L169
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	je	.L170
.L169:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$747, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$260, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L170:
	movq	-88(%rbp), %rax
	movl	$22, 4(%rax)
	movq	-296(%rbp), %rax
	movq	4112(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 4112(%rax)
	movq	-296(%rbp), %rax
	movq	4112(%rax), %rax
	cmpq	$32, %rax
	jbe	.L171
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$757, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$262, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L171:
	movq	-296(%rbp), %rax
	movq	$0, 4048(%rax)
	movq	-296(%rbp), %rax
	movq	$0, 4056(%rax)
	movq	-296(%rbp), %rax
	movq	$0, 4064(%rax)
	movl	$1, %eax
	jmp	.L207
.L168:
	movq	-296(%rbp), %rax
	movq	4144(%rax), %rax
	testq	%rax, %rax
	je	.L172
	movq	-296(%rbp), %rax
	movq	4144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L172
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	js	.L173
	cmpl	$64, -116(%rbp)
	jg	.L173
	movl	$1, %eax
	jmp	.L174
.L173:
	movl	$0, %eax
.L174:
	cltq
	testq	%rax, %rax
	jne	.L175
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$524294, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L175:
	movl	-116(%rbp), %eax
	cltq
	movq	%rax, -24(%rbp)
.L172:
	movq	-296(%rbp), %rax
	movl	4256(%rax), %eax
	testl	%eax, %eax
	je	.L176
	movq	-296(%rbp), %rax
	movq	4144(%rax), %rax
	testq	%rax, %rax
	je	.L176
	movq	$0, -48(%rbp)
	jmp	.L177
.L181:
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L178
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$792, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$160, %edx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L178:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-296(%rbp), %rax
	movq	4408(%rax), %rax
	movq	16(%rax), %r8
	leaq	-224(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -132(%rbp)
	cmpl	$0, -132(%rbp)
	je	.L179
	movq	-24(%rbp), %rdx
	movq	-128(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L180
.L179:
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$799, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$281, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L180:
	addq	$1, -48(%rbp)
.L177:
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L181
	movq	$0, -24(%rbp)
.L176:
	cmpq	$0, -24(%rbp)
	je	.L182
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	.LC0(%rip), %rcx
	movl	$812, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L182
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$814, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$524303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L207
.L182:
	call	ERR_set_mark@PLT
	movq	-296(%rbp), %rax
	movq	4408(%rax), %rax
	movq	8(%rax), %r10
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-296(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L183
	movq	-296(%rbp), %rax
	movl	4104(%rax), %eax
	cmpl	$-1, %eax
	je	.L184
	call	ERR_clear_last_mark@PLT
	jmp	.L185
.L184:
	cmpq	$1, -32(%rbp)
	jne	.L186
	movq	-296(%rbp), %rax
	movq	4368(%rax), %rax
	testq	%rax, %rax
	je	.L186
	movq	-296(%rbp), %rax
	movq	4368(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	4360(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L186
	call	ERR_pop_to_mark@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$104, %edx
	movq	%rax, %rdi
	call	rlayer_early_data_count_ok
	testl	%eax, %eax
	je	.L208
	movq	-88(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-296(%rbp), %rax
	movq	$0, 4048(%rax)
	movq	-296(%rbp), %rax
	movq	$0, 4056(%rax)
	movq	-296(%rbp), %rax
	movq	$0, 4064(%rax)
	movq	-296(%rbp), %rax
	addq	$4096, %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -60(%rbp)
	jmp	.L185
.L186:
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$866, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$281, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L185
.L183:
	call	ERR_clear_last_mark@PLT
	movq	$0, -144(%rbp)
	movq	-296(%rbp), %rax
	movq	4128(%rax), %rax
	testq	%rax, %rax
	je	.L188
	movq	-296(%rbp), %rax
	movl	4256(%rax), %eax
	testl	%eax, %eax
	jne	.L188
	movq	-296(%rbp), %rax
	movq	4144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	testq	%rax, %rax
	je	.L188
	movq	$0, -48(%rbp)
	jmp	.L189
.L193:
	movq	-48(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-296(%rbp), %rax
	movq	4408(%rax), %rax
	movq	16(%rax), %r8
	leaq	-224(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -132(%rbp)
	cmpl	$0, -132(%rbp)
	je	.L190
	cmpq	$0, -152(%rbp)
	je	.L190
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L190
	movq	-152(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L191
.L190:
	movl	$0, -4(%rbp)
.L191:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$17408, %rdx
	cmpq	%rax, %rdx
	jnb	.L192
	movl	$0, -4(%rbp)
.L192:
	addq	$1, -48(%rbp)
.L189:
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L193
.L188:
	cmpl	$0, -4(%rbp)
	jne	.L194
	movq	-296(%rbp), %rax
	movl	4104(%rax), %eax
	cmpl	$-1, %eax
	jne	.L209
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$913, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$281, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L185
.L194:
	movq	$0, -48(%rbp)
	jmp	.L196
.L201:
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-296(%rbp), %rax
	movq	4408(%rax), %rax
	movq	56(%rax), %rcx
	movq	-88(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L210
	movq	-296(%rbp), %rax
	movl	4164(%rax), %eax
	cmpl	$16384, %eax
	je	.L198
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-296(%rbp), %rdx
	movl	4164(%rdx), %edx
	movl	%edx, %edx
	cmpq	%rax, %rdx
	jnb	.L198
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$938, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$146, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L185
.L198:
	movq	-88(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L199
	movq	-296(%rbp), %rax
	movq	4112(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 4112(%rax)
	movq	-296(%rbp), %rax
	movq	4112(%rax), %rax
	cmpq	$32, %rax
	jbe	.L200
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$954, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$298, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L185
.L199:
	movq	-296(%rbp), %rax
	movq	$0, 4112(%rax)
.L200:
	addq	$1, -48(%rbp)
.L196:
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L201
	movq	-296(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.L202
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	jne	.L202
	movq	-88(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-296(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	rlayer_early_data_count_ok
	testl	%eax, %eax
	je	.L211
.L202:
	movq	-296(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 4048(%rax)
	movq	-296(%rbp), %rax
	movq	$0, 4056(%rax)
	movq	-296(%rbp), %rax
	movq	$0, 4064(%rax)
	movl	$1, -60(%rbp)
	jmp	.L185
.L208:
	nop
	jmp	.L185
.L209:
	nop
	jmp	.L185
.L210:
	nop
	jmp	.L185
.L211:
	nop
.L185:
	cmpq	$0, -56(%rbp)
	je	.L203
	movq	$0, -48(%rbp)
	jmp	.L204
.L206:
	movq	-48(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L205
	movq	-48(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$980, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L205:
	addq	$1, -48(%rbp)
.L204:
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L206
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$982, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L203:
	movl	-60(%rbp), %eax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	tls_get_more_records, .-tls_get_more_records
	.globl	tls_default_validate_record_header
	.type	tls_default_validate_record_header, @function
tls_default_validate_record_header:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$17728, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, %edx
	je	.L213
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$993, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$267, %edx
	movl	$70, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L214
.L213:
	movq	-24(%rbp), %rax
	movq	4152(%rax), %rax
	testq	%rax, %rax
	jne	.L215
	subq	$1024, -8(%rbp)
.L215:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L216
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1007, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$150, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L214
.L216:
	movl	$1, %eax
.L214:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	tls_default_validate_record_header, .-tls_default_validate_record_header
	.globl	tls_do_compress
	.type	tls_do_compress, @function
tls_do_compress:
.LFB746:
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
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addl	$1024, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	4152(%rax), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	COMP_compress_block@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L218
	movl	$0, %eax
	jmp	.L219
.L218:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	tls_do_compress, .-tls_do_compress
	.globl	tls_do_uncompress
	.type	tls_do_uncompress, @function
tls_do_uncompress:
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
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L221
	leaq	.LC0(%rip), %rax
	movl	$1041, %edx
	movq	%rax, %rsi
	movl	$17728, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 48(%rax)
.L221:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L222
	movl	$0, %eax
	jmp	.L223
.L222:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	4152(%rax), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$16384, %edx
	movq	%rax, %rdi
	call	COMP_expand_block@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L224
	movl	$0, %eax
	jmp	.L223
.L224:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	tls_do_uncompress, .-tls_do_uncompress
	.globl	tls_default_post_process_record
	.type	tls_default_post_process_record, @function
tls_default_post_process_record:
.LFB748:
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
	movq	4152(%rax), %rax
	testq	%rax, %rax
	je	.L226
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$17408, %rax
	jbe	.L227
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1064, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$140, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L228
.L227:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_do_uncompress@PLT
	testl	%eax, %eax
	jne	.L226
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1069, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$107, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L228
.L226:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$16384, %rax
	jbe	.L229
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1076, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$146, %edx
	movl	$22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L228
.L229:
	movl	$1, %eax
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	tls_default_post_process_record, .-tls_default_post_process_record
	.globl	tls13_common_post_process_record
	.type	tls13_common_post_process_record, @function
tls13_common_post_process_record:
.LFB749:
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
	movl	4(%rax), %eax
	cmpl	$23, %eax
	je	.L231
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$21, %eax
	je	.L231
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$22, %eax
	je	.L231
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1089, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$443, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L232
.L231:
	movq	-24(%rbp), %rax
	movq	4376(%rax), %rax
	testq	%rax, %rax
	je	.L233
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	movb	%al, -1(%rbp)
	movq	-24(%rbp), %rax
	movq	4376(%rax), %r10
	movq	-24(%rbp), %rax
	movq	4360(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	leaq	-1(%rbp), %rdx
	movq	%rcx, %r9
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$257, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	*%r10
.L233:
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$22, %eax
	je	.L234
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$21, %eax
	jne	.L235
.L234:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L235
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$271, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L232
.L235:
	movl	$1, %eax
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	tls13_common_post_process_record, .-tls13_common_post_process_record
	.globl	tls_read_record
	.type	tls_read_record, @function
tls_read_record:
.LFB750:
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
	jmp	.L237
.L240:
	movq	-24(%rbp), %rax
	movq	4064(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	4048(%rax), %rax
	cmpq	%rax, %rdx
	je	.L238
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1129, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$321, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L239
.L238:
	movq	-24(%rbp), %rax
	movq	4408(%rax), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	.L237
	movl	-12(%rbp), %eax
	jmp	.L239
.L237:
	movq	-24(%rbp), %rax
	movq	4056(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	4048(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L240
	movq	-24(%rbp), %rax
	movq	4056(%rax), %rdx
	leaq	1(%rdx), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 4056(%rax)
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	1744(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L241
	movq	-8(%rbp), %rax
	movzwl	56(%rax), %edx
	movq	16(%rbp), %rax
	movw	%dx, (%rax)
	movq	-8(%rbp), %rax
	addq	$58, %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
.L241:
	movl	$1, %eax
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	tls_read_record, .-tls_read_record
	.globl	tls_release_record
	.type	tls_release_record, @function
tls_release_record:
.LFB751:
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
	movq	4064(%rax), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	1744(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	4064(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	4056(%rax), %rax
	cmpq	%rax, %rdx
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L243
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L244
.L243:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$317, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L245
.L244:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L246
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L245
.L246:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L247
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_cleanse@PLT
.L247:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L248
	movl	$1, %eax
	jmp	.L245
.L248:
	movq	-24(%rbp), %rax
	movq	4064(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 4064(%rax)
	movq	-24(%rbp), %rax
	movq	4056(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	4064(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L249
	movq	-24(%rbp), %rax
	movl	88(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L249
	movq	-24(%rbp), %rax
	movq	1728(%rax), %rax
	testq	%rax, %rax
	jne	.L249
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	tls_release_read_buffer
.L249:
	movl	$1, %eax
.L245:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	tls_release_record, .-tls_release_record
	.section	.rodata
.LC3:
	.string	"options"
.LC4:
	.string	"mode"
.LC5:
	.string	"read_buffer_len"
.LC6:
	.string	"block_padding"
.LC7:
	.string	"read_ahead"
	.text
	.globl	tls_set_options
	.type	tls_set_options, @function
tls_set_options:
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
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L251
	movq	-24(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	jne	.L251
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1200, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$316, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L252
.L251:
	leaq	.LC4(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L253
	movq	-24(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	jne	.L253
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1206, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$316, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L252
.L253:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L254
	leaq	.LC5(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L255
	movq	-24(%rbp), %rax
	leaq	1704(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L255
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1214, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$316, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L252
.L254:
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L255
	movq	-24(%rbp), %rax
	leaq	4184(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	jne	.L255
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1221, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$316, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L252
.L255:
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$3, %eax
	jne	.L256
	leaq	.LC7(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L256
	movq	-24(%rbp), %rax
	leaq	4108(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L256
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1236, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$316, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L252
.L256:
	movl	$1, %eax
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	tls_set_options, .-tls_set_options
	.section	.rodata
.LC8:
	.string	"use_etm"
.LC9:
	.string	"max_frag_len"
.LC10:
	.string	"max_early_data"
.LC11:
	.string	"stream_mac"
.LC12:
	.string	"tlstree"
.LC13:
	.string	"NULL"
.LC14:
	.string	"RC4"
	.text
	.globl	tls_int_new_record_layer
	.type	tls_int_new_record_layer, @function
tls_int_new_record_layer:
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
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$1254, %edx
	movq	%rax, %rsi
	movl	$4416, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	movq	104(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -16(%rbp)
	jne	.L258
	movl	$-2, %eax
	jmp	.L259
.L258:
	movq	-16(%rbp), %rax
	movl	$16384, 4164(%rax)
	cmpq	$0, 72(%rbp)
	je	.L260
	movq	72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L261
.L269:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L262
	movq	-16(%rbp), %rax
	leaq	4256(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L263
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1273, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$316, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L264
.L262:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L265
	movq	-16(%rbp), %rax
	leaq	4164(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	jne	.L263
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1279, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$316, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L264
.L265:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L266
	movq	-16(%rbp), %rax
	leaq	4168(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	jne	.L263
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1285, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$316, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L264
.L266:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L267
	movq	-16(%rbp), %rax
	leaq	4260(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L263
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1291, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$316, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L264
.L267:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L268
	movq	-16(%rbp), %rax
	leaq	4264(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L263
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1297, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$316, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L264
.L268:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1301, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$323, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L264
.L263:
	addq	$40, -8(%rbp)
.L261:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L269
.L260:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 4296(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 4104(%rax)
	movq	-16(%rbp), %rax
	movl	$240, 4072(%rax)
	cmpl	$0, -48(%rbp)
	jne	.L270
	movq	-16(%rbp), %rax
	movl	$1, 4288(%rax)
.L270:
	movq	56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_set1_bio@PLT
	testl	%eax, %eax
	je	.L285
	cmpq	$0, 48(%rbp)
	je	.L272
	movq	48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	je	.L286
.L272:
	movq	-16(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	%rdx, 56(%rax)
	cmpq	$0, 64(%rbp)
	je	.L273
	movq	64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	je	.L287
.L273:
	movq	-16(%rbp), %rax
	movq	64(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	96(%rbp), %rdx
	movq	%rdx, 4360(%rax)
	cmpq	$0, 88(%rbp)
	je	.L274
	jmp	.L275
.L282:
	movq	88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L276
	cmpl	$4, %eax
	jg	.L288
	cmpl	$3, %eax
	je	.L278
	cmpl	$3, %eax
	jg	.L288
	cmpl	$1, %eax
	je	.L279
	cmpl	$2, %eax
	je	.L280
	jmp	.L288
.L279:
	movq	88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rlayer_skip_early_data
	movq	-16(%rbp), %rdx
	movq	%rax, 4368(%rdx)
	jmp	.L281
.L280:
	movq	88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rlayer_msg_callback
	movq	-16(%rbp), %rdx
	movq	%rax, 4376(%rdx)
	jmp	.L281
.L278:
	movq	88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rlayer_security
	movq	-16(%rbp), %rdx
	movq	%rax, 4384(%rdx)
	jmp	.L281
.L276:
	movq	88(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_rlayer_padding
	movq	-16(%rbp), %rdx
	movq	%rax, 4392(%rdx)
.L288:
	nop
.L281:
	addq	$16, 88(%rbp)
.L275:
	movq	88(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L282
.L274:
	movq	80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_set_options@PLT
	testl	%eax, %eax
	jne	.L283
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$316, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L264
.L283:
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	jne	.L284
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$769, %eax
	jg	.L284
	leaq	.LC13(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	jne	.L284
	leaq	.LC14(%rip), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	jne	.L284
	movq	-16(%rbp), %rax
	movl	$1, 4120(%rax)
.L284:
	movq	104(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L259
.L285:
	nop
	jmp	.L264
.L286:
	nop
	jmp	.L264
.L287:
	nop
.L264:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	tls_int_free
	movl	$-2, %eax
.L259:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	tls_int_new_record_layer, .-tls_int_new_record_layer
	.type	tls_new_record_layer, @function
tls_new_record_layer:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	16(%rbp), %eax
	movw	%ax, -52(%rbp)
	movl	-48(%rbp), %r8d
	movl	-44(%rbp), %edi
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	pushq	216(%rbp)
	pushq	200(%rbp)
	pushq	192(%rbp)
	pushq	184(%rbp)
	pushq	176(%rbp)
	pushq	152(%rbp)
	pushq	144(%rbp)
	pushq	136(%rbp)
	pushq	120(%rbp)
	pushq	112(%rbp)
	pushq	96(%rbp)
	pushq	88(%rbp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	tls_int_new_record_layer@PLT
	addq	$96, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L290
	movl	-4(%rbp), %eax
	jmp	.L291
.L290:
	cmpl	$65536, -36(%rbp)
	je	.L292
	cmpl	$65536, -36(%rbp)
	jg	.L293
	cmpl	$772, -36(%rbp)
	je	.L294
	cmpl	$772, -36(%rbp)
	jg	.L293
	cmpl	$768, -36(%rbp)
	je	.L295
	cmpl	$768, -36(%rbp)
	jl	.L293
	movl	-36(%rbp), %eax
	subl	$769, %eax
	cmpl	$2, %eax
	ja	.L293
	jmp	.L300
.L292:
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	tls_any_funcs@GOTPCREL(%rip), %rdx
	movq	%rdx, 4408(%rax)
	jmp	.L297
.L294:
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	tls_1_3_funcs@GOTPCREL(%rip), %rdx
	movq	%rdx, 4408(%rax)
	jmp	.L297
.L300:
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	tls_1_funcs@GOTPCREL(%rip), %rdx
	movq	%rdx, 4408(%rax)
	jmp	.L297
.L295:
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	ssl_3_0_funcs@GOTPCREL(%rip), %rdx
	movq	%rdx, 4408(%rax)
	jmp	.L297
.L293:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1421, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, -4(%rbp)
	jmp	.L298
.L297:
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	4408(%rax), %rax
	movq	(%rax), %r10
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rbp), %r9
	movq	56(%rbp), %r8
	movq	48(%rbp), %rcx
	movq	40(%rbp), %rdx
	movl	-48(%rbp), %esi
	subq	$8, %rsp
	pushq	120(%rbp)
	pushq	112(%rbp)
	movl	104(%rbp), %edi
	pushq	%rdi
	pushq	96(%rbp)
	pushq	88(%rbp)
	pushq	80(%rbp)
	pushq	72(%rbp)
	movq	%rax, %rdi
	call	*%r10
	addq	$64, %rsp
	movl	%eax, -4(%rbp)
.L298:
	cmpl	$1, -4(%rbp)
	je	.L299
	movq	216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	tls_int_free
	movq	216(%rbp), %rax
	movq	$0, (%rax)
.L299:
	movl	-4(%rbp), %eax
.L291:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	tls_new_record_layer, .-tls_new_record_layer
	.type	tls_int_free, @function
tls_int_free:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	addq	$1696, %rax
	movq	%rax, %rdi
	call	ossl_tls_buffer_release@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_release_write_buffer
	movq	-8(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	4144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	4152(%rax), %rax
	movq	%rax, %rdi
	call	COMP_CTX_free@PLT
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$768, %eax
	jne	.L302
	movq	-8(%rbp), %rax
	addq	$4192, %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L302:
	movq	-8(%rbp), %rax
	addq	$1744, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	TLS_RL_RECORD_release
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1458, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	tls_int_free, .-tls_int_free
	.globl	tls_free
	.type	tls_free, @function
tls_free:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L304
	movl	$1, %eax
	jmp	.L307
.L304:
	movq	-40(%rbp), %rax
	addq	$1696, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L306
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	movl	%eax, -4(%rbp)
.L306:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tls_int_free
	movl	-4(%rbp), %eax
.L307:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	tls_free, .-tls_free
	.globl	tls_unprocessed_read_pending
	.type	tls_unprocessed_read_pending, @function
tls_unprocessed_read_pending:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1728(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	tls_unprocessed_read_pending, .-tls_unprocessed_read_pending
	.globl	tls_processed_read_pending
	.type	tls_processed_read_pending, @function
tls_processed_read_pending:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	4056(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	4048(%rax), %rax
	cmpq	%rax, %rdx
	setb	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	tls_processed_read_pending, .-tls_processed_read_pending
	.globl	tls_app_data_pending
	.type	tls_app_data_pending, @function
tls_app_data_pending:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	4056(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L313
.L316:
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$1748, %rax
	movl	(%rax), %eax
	cmpl	$23, %eax
	je	.L314
	movq	-16(%rbp), %rax
	jmp	.L315
.L314:
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$1752, %rax
	movq	(%rax), %rax
	addq	%rax, -16(%rbp)
	addq	$1, -8(%rbp)
.L313:
	movq	-24(%rbp), %rax
	movq	4048(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L316
	movq	-16(%rbp), %rax
.L315:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	tls_app_data_pending, .-tls_app_data_pending
	.globl	tls_get_max_records_default
	.type	tls_get_max_records_default, @function
tls_get_max_records_default:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movb	%al, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	4400(%rax), %rax
	testq	%rax, %rax
	je	.L318
	movq	-24(%rbp), %rax
	movq	4128(%rax), %rax
	testq	%rax, %rax
	je	.L318
	movq	-24(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$8388608, %eax
	testq	%rax, %rax
	je	.L318
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$770, %eax
	je	.L319
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$771, %eax
	je	.L319
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$256, %eax
	je	.L319
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65279, %eax
	je	.L319
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65277, %eax
	jne	.L318
.L319:
	cmpq	$0, -40(%rbp)
	jne	.L320
	movl	$1, %eax
	jmp	.L321
.L320:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	4400(%rax), %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	jmp	.L321
.L318:
	movl	$1, %eax
.L321:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	tls_get_max_records_default, .-tls_get_max_records_default
	.globl	tls_get_max_records
	.type	tls_get_max_records, @function
tls_get_max_records:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	4408(%rax), %rax
	movq	64(%rax), %r9
	movzbl	-12(%rbp), %esi
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	tls_get_max_records, .-tls_get_max_records
	.globl	tls_allocate_write_buffers_default
	.type	tls_allocate_write_buffers_default, @function
tls_allocate_write_buffers_default:
.LFB762:
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
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	tls_setup_write_buffer@PLT
	testl	%eax, %eax
	jne	.L325
	movl	$0, %eax
	jmp	.L326
.L325:
	movl	$1, %eax
.L326:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	tls_allocate_write_buffers_default, .-tls_allocate_write_buffers_default
	.globl	tls_initialise_write_packets_default
	.type	tls_initialise_write_packets_default, @function
tls_initialise_write_packets_default:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L328
.L334:
	movq	-8(%rbp), %rax
	imulq	$56, %rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L329
	movl	$13, %eax
	jmp	.L330
.L329:
	movl	$5, %eax
.L330:
	addq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	negq	%rax
	andl	$7, %eax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	WPACKET_init_static_len@PLT
	testl	%eax, %eax
	jne	.L331
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1580, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L332
.L331:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L333
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1585, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L332
.L333:
	addq	$1, -8(%rbp)
.L328:
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L334
	movl	$1, %eax
.L332:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	tls_initialise_write_packets_default, .-tls_initialise_write_packets_default
	.globl	tls_prepare_record_header_default
	.type	tls_prepare_record_header_default, @function
tls_prepare_record_header_default:
.LFB764:
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
	movl	%ecx, %eax
	movq	%r8, -56(%rbp)
	movb	%al, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	4152(%rax), %rax
	testq	%rax, %rax
	je	.L336
	addq	$1024, -8(%rbp)
.L336:
	movzbl	-44(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L337
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L337
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L337
	movq	-24(%rbp), %rax
	movq	4136(%rax), %rax
	testq	%rax, %rax
	je	.L338
	movq	-24(%rbp), %rax
	movq	4136(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L337
.L338:
	cmpq	$0, -8(%rbp)
	je	.L339
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	jne	.L339
.L337:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1615, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L340
.L339:
	movl	$1, %eax
.L340:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	tls_prepare_record_header_default, .-tls_prepare_record_header_default
	.globl	tls_prepare_for_encryption_default
	.type	tls_prepare_for_encryption_default, @function
tls_prepare_for_encryption_default:
.LFB765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	4256(%rax), %eax
	testl	%eax, %eax
	jne	.L342
	cmpq	$0, -48(%rbp)
	je	.L342
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L343
	movq	-40(%rbp), %rax
	movq	4408(%rax), %rax
	movq	16(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L342
.L343:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1641, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L348
.L342:
	movl	$80, %eax
	subq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_reserve_bytes@PLT
	testl	%eax, %eax
	je	.L346
	leaq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	jne	.L347
.L346:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1659, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L348
.L347:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	-16(%rbp), %rdx
	negq	%rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L348:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	tls_prepare_for_encryption_default, .-tls_prepare_for_encryption_default
	.globl	tls_post_encryption_processing_default
	.type	tls_post_encryption_processing_default, @function
tls_post_encryption_processing_default:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L350
	movq	$13, -8(%rbp)
	jmp	.L351
.L350:
	movq	$5, -8(%rbp)
.L351:
	leaq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	je	.L352
	movq	-24(%rbp), %rax
	subq	-64(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L352
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L352
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L353
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L353
.L352:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1693, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L362
.L353:
	movq	-56(%rbp), %rax
	movl	4256(%rax), %eax
	testl	%eax, %eax
	je	.L355
	cmpq	$0, -64(%rbp)
	je	.L355
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	je	.L356
	movq	-56(%rbp), %rax
	movq	4408(%rax), %rax
	movq	16(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L357
.L356:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1701, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L362
.L357:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
.L355:
	leaq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_length@PLT
	testl	%eax, %eax
	je	.L358
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L359
.L358:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1710, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L362
.L359:
	movq	-56(%rbp), %rax
	movq	4376(%rax), %rax
	testq	%rax, %rax
	je	.L360
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	-32(%rbp), %rdx
	negq	%rdx
	subq	-8(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	4376(%rax), %r10
	movq	-56(%rbp), %rax
	movq	4360(%rax), %rsi
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$256, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	*%r10
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$772, %eax
	jne	.L360
	movq	-56(%rbp), %rax
	movq	4128(%rax), %rax
	testq	%rax, %rax
	je	.L360
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -41(%rbp)
	movq	-56(%rbp), %rax
	movq	4376(%rax), %r10
	movq	-56(%rbp), %rax
	movq	4360(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	leaq	-41(%rbp), %rdx
	movq	%rcx, %r9
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$257, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	*%r10
.L360:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	jne	.L361
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1730, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L362
.L361:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L362:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	tls_post_encryption_processing_default, .-tls_post_encryption_processing_default
	.globl	tls_write_records_default
	.type	tls_write_records_default, @function
tls_write_records_default:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4384, %rsp
	movq	%rdi, -4360(%rbp)
	movq	%rsi, -4368(%rbp)
	movq	%rdx, -4376(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -4296(%rbp)
	movq	$0, -4304(%rbp)
	movq	-4360(%rbp), %rax
	movq	4144(%rax), %rax
	testq	%rax, %rax
	je	.L364
	movq	-4360(%rbp), %rax
	movq	4144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	testq	%rax, %rax
	je	.L364
	movq	-4360(%rbp), %rax
	movq	4144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L364
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1756, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4360(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L365
.L364:
	movq	-4360(%rbp), %rax
	movq	4408(%rax), %rax
	movq	80(%rax), %r8
	leaq	-4304(%rbp), %rcx
	movq	-4376(%rbp), %rdx
	movq	-4368(%rbp), %rsi
	movq	-4360(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L394
	movq	-4360(%rbp), %rax
	movq	4408(%rax), %rax
	movq	88(%rax), %r10
	movq	-4360(%rbp), %rax
	leaq	96(%rax), %r9
	leaq	-1904(%rbp), %r8
	leaq	-4336(%rbp), %rcx
	movq	-4376(%rbp), %rdx
	movq	-4368(%rbp), %rsi
	movq	-4360(%rbp), %rax
	subq	$8, %rsp
	leaq	-4296(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L395
	leaq	-4288(%rbp), %rax
	movl	$2376, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	$0, -16(%rbp)
	jmp	.L368
.L381:
	movq	$0, -4344(%rbp)
	leaq	-1904(%rbp), %rdx
	movq	-16(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	leaq	-4288(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-4304(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L369
	leaq	-4336(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L370
.L369:
	movq	-4304(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4368(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L370:
	movq	-4360(%rbp), %rax
	movq	4408(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L371
	movq	-4360(%rbp), %rax
	movq	4408(%rax), %rax
	movq	96(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-4360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movb	%al, -25(%rbp)
	jmp	.L372
.L371:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
.L372:
	movzbl	-25(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-4360(%rbp), %rax
	movq	4408(%rax), %rax
	movq	104(%rax), %r9
	movzbl	-25(%rbp), %ecx
	leaq	-4344(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-4360(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L396
	movq	-4344(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-4360(%rbp), %rax
	movq	4152(%rax), %rax
	testq	%rax, %rax
	je	.L375
	movq	-48(%rbp), %rdx
	movq	-4360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_do_compress@PLT
	testl	%eax, %eax
	je	.L376
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_allocate_bytes@PLT
	testl	%eax, %eax
	jne	.L377
.L376:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1816, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4360(%rbp), %rax
	movl	$0, %ecx
	movl	$141, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L365
.L375:
	movq	-4344(%rbp), %rax
	testq	%rax, %rax
	je	.L377
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	jne	.L378
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1821, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4360(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L365
.L378:
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$4256, %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$4248, %rax
	movq	%rcx, (%rax)
.L377:
	movq	-4360(%rbp), %rax
	movq	4408(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L379
	movq	-4360(%rbp), %rax
	movq	4408(%rax), %rax
	movq	112(%rax), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-4360(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L397
.L379:
	movq	-4360(%rbp), %rax
	movq	4408(%rax), %rax
	movq	120(%rax), %r8
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-4360(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L398
	addq	$1, -16(%rbp)
.L368:
	movq	-4304(%rbp), %rdx
	movq	-4376(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L381
	movq	-4304(%rbp), %rax
	testq	%rax, %rax
	je	.L382
	movq	-4360(%rbp), %rax
	movq	4408(%rax), %rax
	movq	8(%rax), %r10
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-4288(%rbp), %rsi
	movq	-4360(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	jg	.L382
	movq	-4360(%rbp), %rax
	movl	4104(%rax), %eax
	cmpl	$-1, %eax
	jne	.L399
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1843, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4360(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L399
.L382:
	movq	-4360(%rbp), %rax
	movq	4408(%rax), %rax
	movq	8(%rax), %r10
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-4304(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	-4288(%rbp), %rax
	leaq	(%rax,%rdx), %rsi
	movq	-4376(%rbp), %rdx
	movq	-4360(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	jg	.L384
	movq	-4360(%rbp), %rax
	movl	4104(%rax), %eax
	cmpl	$-1, %eax
	jne	.L400
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1851, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-4360(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	jmp	.L400
.L384:
	movq	$0, -16(%rbp)
	jmp	.L386
.L390:
	leaq	-1904(%rbp), %rdx
	movq	-16(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	leaq	-4288(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-4304(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L387
	leaq	-4336(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L388
.L387:
	movq	-4304(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-4368(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L388:
	movq	-4360(%rbp), %rax
	movq	4408(%rax), %rax
	movq	128(%rax), %r9
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-4360(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L401
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-4360(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	subq	$-128, %rax
	movq	%rcx, (%rax)
	addq	$1, -16(%rbp)
.L386:
	movq	-4304(%rbp), %rdx
	movq	-4376(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -16(%rbp)
	jb	.L390
	movl	$1, -8(%rbp)
	jmp	.L365
.L394:
	nop
	jmp	.L365
.L395:
	nop
	jmp	.L365
.L396:
	nop
	jmp	.L365
.L397:
	nop
	jmp	.L365
.L398:
	nop
	jmp	.L365
.L399:
	nop
	jmp	.L365
.L400:
	nop
	jmp	.L365
.L401:
	nop
.L365:
	movq	$0, -16(%rbp)
	jmp	.L391
.L392:
	leaq	-1904(%rbp), %rdx
	movq	-16(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	addq	$1, -16(%rbp)
.L391:
	movq	-4296(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L392
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	tls_write_records_default, .-tls_write_records_default
	.globl	tls_write_records
	.type	tls_write_records, @function
tls_write_records:
.LFB768:
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
	movq	1680(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	1688(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L403
	movq	-8(%rbp), %rax
	movq	1680(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	subq	$-128, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L404
.L403:
	movl	$1, %eax
	jmp	.L405
.L404:
	movl	$0, %eax
.L405:
	cltq
	testq	%rax, %rax
	jne	.L406
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1884, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$786689, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, %eax
	jmp	.L407
.L406:
	movq	-8(%rbp), %rax
	movq	4408(%rax), %rax
	movq	72(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L408
	movl	$-2, %eax
	jmp	.L407
.L408:
	movq	-8(%rbp), %rax
	movq	$0, 1680(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_retry_write_records@PLT
.L407:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	tls_write_records, .-tls_write_records
	.globl	tls_retry_write_records
	.type	tls_retry_write_records, @function
tls_retry_write_records:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	1680(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	1688(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L410
	movl	$1, %eax
	jmp	.L411
.L410:
	movq	-40(%rbp), %rax
	movq	1680(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	96(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	call	__errno_location@PLT
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L412
	movq	-40(%rbp), %rax
	movq	4408(%rax), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L413
	movq	-40(%rbp), %rax
	movq	4408(%rax), %rax
	movq	136(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -8(%rbp)
	cmpl	$1, -8(%rbp)
	je	.L413
	movl	-8(%rbp), %eax
	jmp	.L411
.L413:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L414
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L415
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L415
	movl	$0, -8(%rbp)
	jmp	.L417
.L415:
	movl	$1, -8(%rbp)
	jmp	.L417
.L414:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L418
	movl	$0, -8(%rbp)
	jmp	.L417
.L418:
	movl	$-2, -8(%rbp)
	jmp	.L417
.L412:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1934, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$128, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-2, -8(%rbp)
	movl	$-1, -4(%rbp)
.L417:
	cmpl	$0, -4(%rbp)
	js	.L419
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L419
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	1680(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 1680(%rax)
	movq	-40(%rbp), %rax
	movq	1680(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	1688(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L425
	movq	-40(%rbp), %rax
	movq	1680(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	1688(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L422
	movq	-40(%rbp), %rax
	movl	88(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L422
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tls_release_write_buffer
.L422:
	movl	$1, %eax
	jmp	.L411
.L419:
	cmpl	$0, -4(%rbp)
	jg	.L423
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L424
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-40(%rbp), %rax
	movq	1680(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 1680(%rax)
	movq	-40(%rbp), %rax
	movq	1680(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	1688(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L424
	movq	-40(%rbp), %rax
	movl	88(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L424
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	tls_release_write_buffer
.L424:
	movl	-8(%rbp), %eax
	jmp	.L411
.L423:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L410
.L425:
	nop
	jmp	.L410
.L411:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	tls_retry_write_records, .-tls_retry_write_records
	.globl	tls_get_alert_code
	.type	tls_get_alert_code, @function
tls_get_alert_code:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4104(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	tls_get_alert_code, .-tls_get_alert_code
	.globl	tls_set1_bio
	.type	tls_set1_bio, @function
tls_set1_bio:
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
	cmpq	$0, -16(%rbp)
	je	.L429
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	testl	%eax, %eax
	jne	.L429
	movl	$0, %eax
	jmp	.L430
.L429:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$1, %eax
.L430:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	tls_set1_bio, .-tls_set1_bio
	.globl	tls_default_set_protocol_version
	.type	tls_default_set_protocol_version, @function
tls_default_set_protocol_version:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -12(%rbp)
	je	.L432
	movl	$0, %eax
	jmp	.L433
.L432:
	movl	$1, %eax
.L433:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	tls_default_set_protocol_version, .-tls_default_set_protocol_version
	.globl	tls_set_protocol_version
	.type	tls_set_protocol_version, @function
tls_set_protocol_version:
.LFB773:
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
	movq	4408(%rax), %rax
	movq	24(%rax), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	tls_set_protocol_version, .-tls_set_protocol_version
	.globl	tls_set_plain_alerts
	.type	tls_set_plain_alerts, @function
tls_set_plain_alerts:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 4284(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	tls_set_plain_alerts, .-tls_set_plain_alerts
	.globl	tls_set_first_handshake
	.type	tls_set_first_handshake, @function
tls_set_first_handshake:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 4160(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	tls_set_first_handshake, .-tls_set_first_handshake
	.globl	tls_set_max_pipelines
	.type	tls_set_max_pipelines, @function
tls_set_max_pipelines:
.LFB776:
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
	movq	%rdx, 4400(%rax)
	cmpq	$1, -16(%rbp)
	jbe	.L440
	movq	-8(%rbp), %rax
	movl	$1, 4108(%rax)
.L440:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	tls_set_max_pipelines, .-tls_set_max_pipelines
	.section	.rodata
.LC15:
	.string	"RH"
.LC16:
	.string	"read header"
.LC17:
	.string	"RB"
.LC18:
	.string	"read body"
.LC19:
	.string	"unknown"
	.text
	.globl	tls_get_state
	.type	tls_get_state, @function
tls_get_state:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	4072(%rax), %eax
	cmpl	$240, %eax
	je	.L442
	cmpl	$241, %eax
	je	.L443
	jmp	.L448
.L442:
	leaq	.LC15(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L445
.L443:
	leaq	.LC17(%rip), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC18(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L445
.L448:
	leaq	.LC19(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L445:
	cmpq	$0, -32(%rbp)
	je	.L446
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L446:
	cmpq	$0, -40(%rbp)
	je	.L449
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L449:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	tls_get_state, .-tls_get_state
	.globl	tls_get_compression
	.type	tls_get_compression, @function
tls_get_compression:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	4152(%rax), %rax
	testq	%rax, %rax
	je	.L451
	movq	-8(%rbp), %rax
	movq	4152(%rax), %rax
	movq	%rax, %rdi
	call	COMP_CTX_get_method@PLT
	jmp	.L453
.L451:
	movl	$0, %eax
.L453:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	tls_get_compression, .-tls_get_compression
	.globl	tls_set_max_frag_len
	.type	tls_set_max_frag_len, @function
tls_set_max_frag_len:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4164(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	tls_set_max_frag_len, .-tls_set_max_frag_len
	.globl	tls_increment_sequence_ctr
	.type	tls_increment_sequence_ctr, @function
tls_increment_sequence_ctr:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$8, -4(%rbp)
	jmp	.L456
.L459:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movzbl	4096(%rcx,%rdx), %edx
	leal	1(%rdx), %ecx
	movq	-24(%rbp), %rdx
	cltq
	movb	%cl, 4096(%rdx,%rax)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movq	-24(%rbp), %rdx
	cltq
	movzbl	4096(%rdx,%rax), %eax
	testb	%al, %al
	jne	.L462
	subl	$1, -4(%rbp)
.L456:
	cmpl	$0, -4(%rbp)
	jg	.L459
	jmp	.L458
.L462:
	nop
.L458:
	cmpl	$0, -4(%rbp)
	jne	.L460
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2078, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$327, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$0, %eax
	jmp	.L461
.L460:
	movl	$1, %eax
.L461:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	tls_increment_sequence_ctr, .-tls_increment_sequence_ctr
	.globl	tls_alloc_buffers
	.type	tls_alloc_buffers, @function
tls_alloc_buffers:
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
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jne	.L464
	movq	-8(%rbp), %rax
	movq	1680(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	1688(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L465
	movl	$1, %eax
	jmp	.L466
.L465:
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	tls_setup_write_buffer@PLT
	testl	%eax, %eax
	jne	.L467
	movl	$0, %eax
	jmp	.L466
.L467:
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movl	$1, %eax
	jmp	.L466
.L464:
	movq	-8(%rbp), %rax
	movq	4056(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	4048(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L468
	movq	-8(%rbp), %rax
	movq	1728(%rax), %rax
	testq	%rax, %rax
	je	.L469
.L468:
	movl	$1, %eax
	jmp	.L466
.L469:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_setup_read_buffer@PLT
.L466:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	tls_alloc_buffers, .-tls_alloc_buffers
	.globl	tls_free_buffers
	.type	tls_free_buffers, @function
tls_free_buffers:
.LFB782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jne	.L471
	movq	-8(%rbp), %rax
	movq	1680(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	1688(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L472
	movq	-8(%rbp), %rax
	movq	1680(%rax), %rax
	testq	%rax, %rax
	jne	.L473
	movq	-8(%rbp), %rax
	movq	1688(%rax), %rax
	cmpq	$1, %rax
	jne	.L473
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L472
.L473:
	movl	$0, %eax
	jmp	.L474
.L472:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_release_write_buffer
	movl	$1, %eax
	jmp	.L474
.L471:
	movq	-8(%rbp), %rax
	movq	4056(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	4048(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L475
	movq	-8(%rbp), %rax
	movq	4056(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	4064(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L475
	movq	-8(%rbp), %rax
	movq	1728(%rax), %rax
	testq	%rax, %rax
	jne	.L475
	movq	-8(%rbp), %rax
	movl	4072(%rax), %eax
	cmpl	$241, %eax
	jne	.L476
.L475:
	movl	$0, %eax
	jmp	.L474
.L476:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_release_read_buffer
.L474:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	tls_free_buffers, .-tls_free_buffers
	.globl	ossl_tls_record_method
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_tls_record_method, @object
	.size	ossl_tls_record_method, 200
ossl_tls_record_method:
	.quad	tls_new_record_layer
	.quad	tls_free
	.quad	tls_unprocessed_read_pending
	.quad	tls_processed_read_pending
	.quad	tls_app_data_pending
	.quad	tls_get_max_records
	.quad	tls_write_records
	.quad	tls_retry_write_records
	.quad	tls_read_record
	.quad	tls_release_record
	.quad	tls_get_alert_code
	.quad	tls_set1_bio
	.quad	tls_set_protocol_version
	.quad	tls_set_plain_alerts
	.quad	tls_set_first_handshake
	.quad	tls_set_max_pipelines
	.quad	0
	.quad	tls_get_state
	.quad	tls_set_options
	.quad	tls_get_compression
	.quad	tls_set_max_frag_len
	.quad	0
	.quad	tls_increment_sequence_ctr
	.quad	tls_alloc_buffers
	.quad	tls_free_buffers
	.section	.rodata
	.align 32
	.type	__func__.21, @object
	.size	__func__.21, 33
__func__.21:
	.string	"ossl_set_tls_provider_parameters"
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 23
__func__.20:
	.string	"tls_setup_write_buffer"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 22
__func__.19:
	.string	"tls_setup_read_buffer"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 19
__func__.18:
	.string	"tls_default_read_n"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 27
__func__.17:
	.string	"rlayer_early_data_count_ok"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 21
__func__.16:
	.string	"tls_get_more_records"
	.align 32
	.type	__func__.15, @object
	.size	__func__.15, 35
__func__.15:
	.string	"tls_default_validate_record_header"
	.align 32
	.type	__func__.14, @object
	.size	__func__.14, 32
__func__.14:
	.string	"tls_default_post_process_record"
	.align 32
	.type	__func__.13, @object
	.size	__func__.13, 33
__func__.13:
	.string	"tls13_common_post_process_record"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 16
__func__.12:
	.string	"tls_read_record"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 19
__func__.11:
	.string	"tls_release_record"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 16
__func__.10:
	.string	"tls_set_options"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 25
__func__.9:
	.string	"tls_int_new_record_layer"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 21
__func__.8:
	.string	"tls_new_record_layer"
	.align 32
	.type	__func__.7, @object
	.size	__func__.7, 37
__func__.7:
	.string	"tls_initialise_write_packets_default"
	.align 32
	.type	__func__.6, @object
	.size	__func__.6, 34
__func__.6:
	.string	"tls_prepare_record_header_default"
	.align 32
	.type	__func__.5, @object
	.size	__func__.5, 35
__func__.5:
	.string	"tls_prepare_for_encryption_default"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 39
__func__.4:
	.string	"tls_post_encryption_processing_default"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 26
__func__.3:
	.string	"tls_write_records_default"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"tls_write_records"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 24
__func__.1:
	.string	"tls_retry_write_records"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 27
__func__.0:
	.string	"tls_increment_sequence_ctr"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
