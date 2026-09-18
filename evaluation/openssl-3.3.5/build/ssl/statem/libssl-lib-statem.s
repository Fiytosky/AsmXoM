	.file	"statem.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	PACKET_buf_init, @function
PACKET_buf_init:
.LFB544:
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
	jns	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	PACKET_buf_init, .-PACKET_buf_init
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB641:
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
.LFE641:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB642:
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
.LFE642:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB657:
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
.LFE657:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB658:
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
.LFE658:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.globl	SSL_get_state
	.type	SSL_get_state, @function
SSL_get_state:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L17
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L18
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L19
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L20
.L19:
	movq	$0, -8(%rbp)
	jmp	.L20
.L18:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L20
.L17:
	movq	$0, -8(%rbp)
.L20:
	cmpq	$0, -8(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	SSL_get_state, .-SSL_get_state
	.globl	SSL_in_init
	.type	SSL_in_init, @function
SSL_in_init:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L24
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L25
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L26
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L27
.L26:
	movq	$0, -8(%rbp)
	jmp	.L27
.L25:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L27
.L24:
	movq	$0, -8(%rbp)
.L27:
	cmpq	$0, -8(%rbp)
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-8(%rbp), %rax
	movl	180(%rax), %eax
.L29:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	SSL_in_init, .-SSL_in_init
	.globl	SSL_is_init_finished
	.type	SSL_is_init_finished, @function
SSL_is_init_finished:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L32
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L33
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L34
.L33:
	movq	$0, -8(%rbp)
	jmp	.L34
.L32:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L34
.L31:
	movq	$0, -8(%rbp)
.L34:
	cmpq	$0, -8(%rbp)
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-8(%rbp), %rax
	movl	180(%rax), %eax
	testl	%eax, %eax
	jne	.L37
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$1, %eax
	jne	.L37
	movl	$1, %eax
	jmp	.L36
.L37:
	movl	$0, %eax
.L36:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	SSL_is_init_finished, .-SSL_is_init_finished
	.globl	SSL_in_before
	.type	SSL_in_before, @function
SSL_in_before:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L40
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L41
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L42
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L43
.L42:
	movq	$0, -8(%rbp)
	jmp	.L43
.L41:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L43
.L40:
	movq	$0, -8(%rbp)
.L43:
	cmpq	$0, -8(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	testl	%eax, %eax
	jne	.L46
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	testl	%eax, %eax
	jne	.L46
	movl	$1, %eax
	jmp	.L45
.L46:
	movl	$0, %eax
.L45:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	SSL_in_before, .-SSL_in_before
	.globl	ossl_statem_get_state
	.type	ossl_statem_get_state, @function
ossl_statem_get_state:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L49
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	jmp	.L51
.L49:
	movl	$0, %eax
.L51:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ossl_statem_get_state, .-ossl_statem_get_state
	.globl	ossl_statem_clear
	.type	ossl_statem_clear, @function
ossl_statem_clear:
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
	movl	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 172(%rax)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	movq	-8(%rbp), %rax
	movl	$0, 196(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	ossl_statem_clear, .-ossl_statem_clear
	.globl	ossl_statem_set_renegotiate
	.type	ossl_statem_set_renegotiate, @function
ossl_statem_set_renegotiate:
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
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	movq	-8(%rbp), %rax
	movl	$21, 176(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	ossl_statem_set_renegotiate, .-ossl_statem_set_renegotiate
	.globl	ossl_statem_send_fatal
	.type	ossl_statem_send_fatal, @function
ossl_statem_send_fatal:
.LFB736:
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
	movl	180(%rax), %eax
	testl	%eax, %eax
	je	.L55
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$1, %eax
	je	.L57
.L55:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	movq	-8(%rbp), %rax
	movl	$1, 152(%rax)
	cmpl	$-1, -12(%rbp)
	je	.L54
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ssl3_send_alert@PLT
	jmp	.L54
.L57:
	nop
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	ossl_statem_send_fatal, .-ossl_statem_send_fatal
	.globl	ossl_statem_fatal
	.type	ossl_statem_fatal, @function
ossl_statem_fatal:
.LFB737:
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
	je	.L60
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L60:
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
	movl	-220(%rbp), %edx
	movq	-216(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_statem_send_fatal@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	ossl_statem_fatal, .-ossl_statem_fatal
	.globl	ossl_statem_in_error
	.type	ossl_statem_in_error, @function
ossl_statem_in_error:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$1, %eax
	jne	.L62
	movl	$1, %eax
	jmp	.L63
.L62:
	movl	$0, %eax
.L63:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	ossl_statem_in_error, .-ossl_statem_in_error
	.globl	ossl_statem_set_in_init
	.type	ossl_statem_set_in_init, @function
ossl_statem_set_in_init:
.LFB739:
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
	movl	-12(%rbp), %edx
	movl	%edx, 180(%rax)
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-8(%rbp), %rax
	movq	3032(%rax), %rax
	movq	128(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	3048(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
.L66:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	ossl_statem_set_in_init, .-ossl_statem_set_in_init
	.globl	ossl_statem_get_in_handshake
	.type	ossl_statem_get_in_handshake, @function
ossl_statem_get_in_handshake:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	188(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	ossl_statem_get_in_handshake, .-ossl_statem_get_in_handshake
	.globl	ossl_statem_set_in_handshake
	.type	ossl_statem_set_in_handshake, @function
ossl_statem_set_in_handshake:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L70
	movq	-8(%rbp), %rax
	movl	188(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 188(%rax)
	jmp	.L72
.L70:
	movq	-8(%rbp), %rax
	movl	188(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 188(%rax)
.L72:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	ossl_statem_set_in_handshake, .-ossl_statem_set_in_handshake
	.globl	ossl_statem_skip_early_data
	.type	ossl_statem_skip_early_data, @function
ossl_statem_skip_early_data:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	2688(%rax), %eax
	cmpl	$1, %eax
	je	.L74
	movl	$0, %eax
	jmp	.L75
.L74:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L76
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$50, %eax
	jne	.L76
	movq	-8(%rbp), %rax
	movl	2136(%rax), %eax
	cmpl	$2, %eax
	jne	.L77
.L76:
	movl	$0, %eax
	jmp	.L75
.L77:
	movl	$1, %eax
.L75:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	ossl_statem_skip_early_data, .-ossl_statem_skip_early_data
	.globl	ossl_statem_check_finish_init
	.type	ossl_statem_check_finish_init, @function
ossl_statem_check_finish_init:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L79
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$51, %eax
	je	.L80
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$50, %eax
	jne	.L86
.L80:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$3, %eax
	jne	.L86
	movq	-8(%rbp), %rax
	movl	$7, 240(%rax)
	jmp	.L86
.L79:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L82
	cmpl	$0, -12(%rbp)
	je	.L83
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$51, %eax
	je	.L84
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$50, %eax
	jne	.L83
.L84:
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$4, %eax
	jne	.L85
.L83:
	cmpl	$0, -12(%rbp)
	jne	.L86
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$50, %eax
	jne	.L86
.L85:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	cmpl	$0, -12(%rbp)
	je	.L86
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$3, %eax
	jne	.L86
	movq	-8(%rbp), %rax
	movl	$7, 240(%rax)
	jmp	.L86
.L82:
	movq	-8(%rbp), %rax
	movl	240(%rax), %eax
	cmpl	$12, %eax
	jne	.L86
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$50, %eax
	jne	.L86
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
.L86:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	ossl_statem_check_finish_init, .-ossl_statem_check_finish_init
	.globl	ossl_statem_set_hello_verify_done
	.type	ossl_statem_set_hello_verify_done, @function
ossl_statem_set_hello_verify_done:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_statem_set_in_init@PLT
	movq	-8(%rbp), %rax
	movl	$22, 172(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	ossl_statem_set_hello_verify_done, .-ossl_statem_set_hello_verify_done
	.globl	ossl_statem_connect
	.type	ossl_statem_connect, @function
ossl_statem_connect:
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
	je	.L89
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L90
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L91
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L92
.L91:
	movq	$0, -8(%rbp)
	jmp	.L92
.L90:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L92
.L89:
	movq	$0, -8(%rbp)
.L92:
	cmpq	$0, -8(%rbp)
	jne	.L93
	movl	$-1, %eax
	jmp	.L94
.L93:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	state_machine
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	ossl_statem_connect, .-ossl_statem_connect
	.globl	ossl_statem_accept
	.type	ossl_statem_accept, @function
ossl_statem_accept:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L96
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L97
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L98
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L99
.L98:
	movq	$0, -8(%rbp)
	jmp	.L99
.L97:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L99
.L96:
	movq	$0, -8(%rbp)
.L99:
	cmpq	$0, -8(%rbp)
	jne	.L100
	movl	$-1, %eax
	jmp	.L101
.L100:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	state_machine
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	ossl_statem_accept, .-ossl_statem_accept
	.type	get_callback, @function
get_callback:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	2280(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-24(%rbp), %rax
	movq	2280(%rax), %rax
	jmp	.L104
.L103:
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	jmp	.L104
.L105:
	movl	$0, %eax
.L104:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	get_callback, .-get_callback
	.section	.rodata
.LC0:
	.string	"../ssl/statem/statem.c"
	.text
	.type	state_machine, @function
state_machine:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -32(%rbp)
	movl	$-1, -12(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L107
	movl	$-1, %eax
	jmp	.L108
.L107:
	call	ERR_clear_error@PLT
	call	__errno_location@PLT
	movl	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	get_callback
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	36(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	je	.L109
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_before@PLT
	testl	%eax, %eax
	je	.L110
.L109:
	movq	-72(%rbp), %rax
	movq	288(%rax), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	jne	.L110
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_clear@PLT
	testl	%eax, %eax
	jne	.L110
	movl	$-1, %eax
	jmp	.L108
.L110:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L111
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L129
.L111:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L113
	movq	-32(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 24(%rax)
.L113:
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	%edx, 120(%rax)
	cmpq	$0, -24(%rbp)
	je	.L114
	movq	-72(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-72(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L115
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L115
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L114
.L115:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	*%rcx
.L114:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L116
	movq	-72(%rbp), %rax
	movl	72(%rax), %eax
	andl	$65280, %eax
	cmpl	$65024, %eax
	je	.L117
	cmpl	$0, -76(%rbp)
	jne	.L118
	movq	-72(%rbp), %rax
	movl	72(%rax), %eax
	andl	$65280, %eax
	cmpl	$256, %eax
	je	.L117
.L118:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$415, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L119
.L116:
	movq	-72(%rbp), %rax
	movl	72(%rax), %eax
	sarl	$8, %eax
	cmpl	$3, %eax
	je	.L117
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$420, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L119
.L117:
	movq	-72(%rbp), %rax
	movl	72(%rax), %edx
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	ssl_security@PLT
	testl	%eax, %eax
	jne	.L120
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$426, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L119
.L120:
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L121
	call	BUF_MEM_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$432, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L119
.L122:
	movq	-8(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	jne	.L123
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$436, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L119
.L123:
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 248(%rax)
	movq	$0, -8(%rbp)
.L121:
	movq	-72(%rbp), %rax
	movq	$0, 264(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 376(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_init_wbio_buffer@PLT
	testl	%eax, %eax
	jne	.L124
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$458, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L119
.L124:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_before@PLT
	testl	%eax, %eax
	jne	.L125
	movq	-72(%rbp), %rax
	movl	2824(%rax), %eax
	testl	%eax, %eax
	je	.L126
.L125:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	tls_setup_handshake@PLT
	testl	%eax, %eax
	je	.L141
	movq	-72(%rbp), %rax
	movq	544(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-72(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	jne	.L126
.L128:
	movq	-32(%rbp), %rax
	movl	$1, 32(%rax)
.L126:
	movq	-32(%rbp), %rax
	movl	$3, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	init_write_state_machine
	jmp	.L129
.L138:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L130
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	read_state_machine
	movl	%eax, -52(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.L142
	movq	-32(%rbp), %rax
	movl	$3, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	init_write_state_machine
	jmp	.L129
.L130:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L132
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	write_state_machine
	movl	%eax, -52(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.L133
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	init_read_state_machine
	jmp	.L129
.L133:
	cmpl	$2, -52(%rbp)
	jne	.L143
	movq	-32(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L129
.L132:
	movq	-72(%rbp), %rax
	movl	180(%rax), %eax
	testl	%eax, %eax
	je	.L135
	movq	-72(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$1, %eax
	jne	.L135
	movl	$1, %eax
	jmp	.L136
.L135:
	movl	$0, %eax
.L136:
	cltq
	testq	%rax, %rax
	jne	.L137
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$500, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$256, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L137:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$501, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L119
.L129:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L138
	movl	$1, -12(%rbp)
	jmp	.L119
.L141:
	nop
	jmp	.L119
.L142:
	nop
	jmp	.L119
.L143:
	nop
.L119:
	movq	-32(%rbp), %rax
	movl	36(%rax), %eax
	leal	-1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	cmpq	$0, -24(%rbp)
	je	.L139
	cmpl	$0, -76(%rbp)
	je	.L140
	movl	-12(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	$8194, %esi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L139
.L140:
	movl	-12(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	$4098, %esi
	movq	%rax, %rdi
	call	*%rcx
.L139:
	movl	-12(%rbp), %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	state_machine, .-state_machine
	.type	init_read_state_machine, @function
init_read_state_machine:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	init_read_state_machine, .-init_read_state_machine
	.type	grow_init_buf, @function
grow_init_buf:
.LFB750:
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
	movq	256(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movq	-32(%rbp), %rax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow_clean@PLT
	testq	%rax, %rax
	jne	.L146
	movl	$0, %eax
	jmp	.L147
.L146:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L148
	movl	$0, %eax
	jmp	.L147
.L148:
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 256(%rax)
	movl	$1, %eax
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	grow_init_buf, .-grow_init_buf
	.type	read_state_machine, @function
read_state_machine:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	-120(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -64(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	get_callback
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L150
	movq	ossl_statem_server_read_transition@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	ossl_statem_server_process_message@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	ossl_statem_server_max_message_size@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	ossl_statem_server_post_process_message@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	.L151
.L150:
	movq	ossl_statem_client_read_transition@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	ossl_statem_client_process_message@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	ossl_statem_client_max_message_size@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	ossl_statem_client_post_process_message@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
.L151:
	movq	-64(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L188
	movq	-120(%rbp), %rax
	movl	$1, 2392(%rax)
	movq	-64(%rbp), %rax
	movl	$0, 32(%rax)
.L188:
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	$2, %eax
	je	.L153
	cmpl	$2, %eax
	ja	.L154
	testl	%eax, %eax
	je	.L155
	cmpl	$1, %eax
	je	.L156
	jmp	.L154
.L155:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L157
	leaq	-84(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls_get_message@PLT
	movl	%eax, -20(%rbp)
	jmp	.L158
.L157:
	leaq	-84(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_get_message_header@PLT
	movl	%eax, -20(%rbp)
.L158:
	cmpl	$0, -20(%rbp)
	jne	.L159
	movl	$0, %eax
	jmp	.L189
.L159:
	cmpq	$0, -72(%rbp)
	je	.L161
	movq	-120(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L162
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	$1, %edx
	movl	$8193, %esi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L161
.L162:
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	$1, %edx
	movl	$4097, %esi
	movq	%rax, %rdi
	call	*%rcx
.L161:
	movl	-84(%rbp), %edx
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L163
	movl	$0, %eax
	jmp	.L189
.L163:
	movq	-120(%rbp), %rax
	movq	688(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	cmpq	%rbx, %rax
	jnb	.L164
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$648, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$152, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L189
.L164:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L165
	movq	-120(%rbp), %rax
	movq	688(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movq	-120(%rbp), %rax
	movq	688(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	grow_init_buf
	testl	%eax, %eax
	jne	.L165
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$658, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$524295, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L189
.L165:
	movq	-64(%rbp), %rax
	movl	$1, 12(%rax)
.L156:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L166
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dtls_get_message_body@PLT
	movl	%eax, -20(%rbp)
	jmp	.L167
.L166:
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	tls_get_message_body@PLT
	movl	%eax, -20(%rbp)
.L167:
	cmpl	$0, -20(%rbp)
	jne	.L168
	movl	$0, %eax
	jmp	.L189
.L168:
	movq	-120(%rbp), %rax
	movl	$0, 2392(%rax)
	movq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	256(%rax), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PACKET_buf_init
	testl	%eax, %eax
	jne	.L169
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$682, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L189
.L169:
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -20(%rbp)
	movq	-120(%rbp), %rax
	movq	$0, 264(%rax)
	cmpl	$2, -20(%rbp)
	je	.L170
	cmpl	$2, -20(%rbp)
	jg	.L171
	cmpl	$0, -20(%rbp)
	je	.L172
	cmpl	$1, -20(%rbp)
	je	.L173
	jmp	.L171
.L172:
	movq	-120(%rbp), %rax
	movl	180(%rax), %eax
	testl	%eax, %eax
	je	.L174
	movq	-120(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$1, %eax
	jne	.L174
	movl	$1, %eax
	jmp	.L175
.L174:
	movl	$0, %eax
.L175:
	cltq
	testq	%rax, %rax
	jne	.L176
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$692, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$256, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L176:
	movl	$0, %eax
	jmp	.L189
.L173:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L177
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_stop_timer@PLT
.L177:
	movl	$1, %eax
	jmp	.L189
.L170:
	movq	-64(%rbp), %rax
	movl	$2, 12(%rax)
	movq	-64(%rbp), %rax
	movl	$3, 16(%rax)
	jmp	.L178
.L171:
	movq	-64(%rbp), %rax
	movl	$0, 12(%rax)
	nop
.L178:
	jmp	.L179
.L153:
	movq	-64(%rbp), %rax
	movl	16(%rax), %edx
	movq	-120(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movq	-64(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$5, %eax
	ja	.L190
	cmpl	$3, %eax
	jnb	.L181
	cmpl	$2, %eax
	je	.L182
	cmpl	$2, %eax
	ja	.L190
	testl	%eax, %eax
	je	.L183
	cmpl	$1, %eax
	je	.L184
	jmp	.L190
.L183:
	movq	-120(%rbp), %rax
	movl	180(%rax), %eax
	testl	%eax, %eax
	je	.L185
	movq	-120(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$1, %eax
	jne	.L185
	movl	$1, %eax
	jmp	.L186
.L185:
	movl	$0, %eax
.L186:
	cltq
	testq	%rax, %rax
	jne	.L181
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$716, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$256, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L181:
	movl	$0, %eax
	jmp	.L189
.L182:
	movq	-64(%rbp), %rax
	movl	$0, 12(%rax)
	nop
	jmp	.L190
.L184:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L187
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_stop_timer@PLT
.L187:
	movl	$1, %eax
	jmp	.L189
.L154:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$737, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L189
.L190:
	nop
.L179:
	jmp	.L188
.L189:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	read_state_machine, .-read_state_machine
	.type	statem_do_write, @function
statem_do_write:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$18, %eax
	je	.L192
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$39, %eax
	jne	.L193
.L192:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L194
	movq	-24(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	dtls1_do_write@PLT
	jmp	.L195
.L194:
	movq	-24(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	ssl3_do_write@PLT
	jmp	.L195
.L193:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	statem_do_write, .-statem_do_write
	.type	init_write_state_machine, @function
init_write_state_machine:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	init_write_state_machine, .-init_write_state_machine
	.type	write_state_machine, @function
write_state_machine:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	-152(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	get_callback
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L198
	movq	ossl_statem_server_write_transition@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	ossl_statem_server_pre_work@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	ossl_statem_server_post_work@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	ossl_statem_server_construct_message@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L241
.L198:
	movq	ossl_statem_client_write_transition@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	ossl_statem_client_pre_work@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	ossl_statem_client_post_work@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	ossl_statem_client_construct_message@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
.L241:
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$3, %eax
	je	.L200
	cmpl	$3, %eax
	ja	.L201
	cmpl	$2, %eax
	je	.L202
	cmpl	$2, %eax
	ja	.L201
	testl	%eax, %eax
	je	.L203
	cmpl	$1, %eax
	je	.L204
	jmp	.L201
.L203:
	cmpq	$0, -48(%rbp)
	je	.L205
	movq	-152(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L206
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$1, %edx
	movl	$8193, %esi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L205
.L206:
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$1, %edx
	movl	$4097, %esi
	movq	%rax, %rdi
	call	*%rcx
.L205:
	movq	-152(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	cmpl	$2, %eax
	je	.L207
	cmpl	$2, %eax
	ja	.L243
	testl	%eax, %eax
	je	.L209
	cmpl	$1, %eax
	jne	.L243
	movq	-40(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-40(%rbp), %rax
	movl	$3, 8(%rax)
	nop
	jmp	.L243
.L207:
	movl	$1, %eax
	jmp	.L242
.L209:
	movq	-152(%rbp), %rax
	movl	180(%rax), %eax
	testl	%eax, %eax
	je	.L211
	movq	-152(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$1, %eax
	jne	.L211
	movl	$1, %eax
	jmp	.L212
.L211:
	movl	$0, %eax
.L212:
	cltq
	testq	%rax, %rax
	jne	.L213
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$854, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$256, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L213:
	movl	$0, %eax
	jmp	.L242
.L204:
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movq	-40(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	ja	.L215
	cmpl	$3, %eax
	jnb	.L216
	cmpl	$2, %eax
	je	.L217
	cmpl	$2, %eax
	ja	.L215
	testl	%eax, %eax
	je	.L218
	cmpl	$1, %eax
	je	.L219
	jmp	.L215
.L218:
	movq	-152(%rbp), %rax
	movl	180(%rax), %eax
	testl	%eax, %eax
	je	.L220
	movq	-152(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$1, %eax
	jne	.L220
	movl	$1, %eax
	jmp	.L221
.L220:
	movl	$0, %eax
.L221:
	cltq
	testq	%rax, %rax
	jne	.L216
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$862, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$256, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L216:
	movl	$0, %eax
	jmp	.L242
.L217:
	movq	-40(%rbp), %rax
	movl	$2, 4(%rax)
	jmp	.L215
.L219:
	movl	$2, %eax
	jmp	.L242
.L215:
	leaq	-76(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L222
	movl	$0, %eax
	jmp	.L242
.L222:
	movl	-76(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L223
	movq	-40(%rbp), %rax
	movl	$3, 4(%rax)
	movq	-40(%rbp), %rax
	movl	$3, 8(%rax)
	jmp	.L214
.L223:
	movq	-152(%rbp), %rax
	movq	248(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init@PLT
	testl	%eax, %eax
	je	.L224
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	88(%rax), %r8
	movl	-76(%rbp), %edx
	leaq	-144(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L225
.L224:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$889, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L242
.L225:
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L226
	movq	-72(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L227
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movq	-152(%rbp), %rax
	movl	180(%rax), %eax
	testl	%eax, %eax
	je	.L228
	movq	-152(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$1, %eax
	jne	.L228
	movl	$1, %eax
	jmp	.L229
.L228:
	movl	$0, %eax
.L229:
	cltq
	testq	%rax, %rax
	jne	.L230
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$898, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$256, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L230:
	movl	$0, %eax
	jmp	.L242
.L227:
	cmpl	$2, -60(%rbp)
	jne	.L226
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movq	-40(%rbp), %rax
	movl	$3, 4(%rax)
	movq	-40(%rbp), %rax
	movl	$3, 8(%rax)
	jmp	.L214
.L226:
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movq	96(%rax), %r8
	movl	-76(%rbp), %edx
	leaq	-144(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L231
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	jne	.L202
.L231:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$914, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L242
.L202:
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L232
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L232
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	dtls1_start_timer@PLT
.L232:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	statem_do_write
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jg	.L233
	movl	$0, %eax
	jmp	.L242
.L233:
	movq	-40(%rbp), %rax
	movl	$3, 4(%rax)
	movq	-40(%rbp), %rax
	movl	$3, 8(%rax)
.L200:
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-152(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movq	-40(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	ja	.L244
	cmpl	$3, %eax
	jnb	.L235
	cmpl	$2, %eax
	je	.L236
	cmpl	$2, %eax
	ja	.L244
	testl	%eax, %eax
	je	.L237
	cmpl	$1, %eax
	je	.L238
	jmp	.L244
.L237:
	movq	-152(%rbp), %rax
	movl	180(%rax), %eax
	testl	%eax, %eax
	je	.L239
	movq	-152(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$1, %eax
	jne	.L239
	movl	$1, %eax
	jmp	.L240
.L239:
	movl	$0, %eax
.L240:
	cltq
	testq	%rax, %rax
	jne	.L235
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$935, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$256, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L235:
	movl	$0, %eax
	jmp	.L242
.L236:
	movq	-40(%rbp), %rax
	movl	$0, 4(%rax)
	nop
	jmp	.L244
.L238:
	movl	$2, %eax
	jmp	.L242
.L201:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$952, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L242
.L243:
	nop
	jmp	.L241
.L244:
	nop
.L214:
	jmp	.L241
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	write_state_machine, .-write_state_machine
	.globl	statem_flush
	.type	statem_flush, @function
statem_flush:
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
	movl	$2, 104(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L246
	movl	$0, %eax
	jmp	.L247
.L246:
	movq	-8(%rbp), %rax
	movl	$1, 104(%rax)
	movl	$1, %eax
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	statem_flush, .-statem_flush
	.globl	ossl_statem_app_data_allowed
	.type	ossl_statem_app_data_allowed, @function
ossl_statem_app_data_allowed:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L249
	movl	$0, %eax
	jmp	.L250
.L249:
	movq	-24(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	je	.L251
	movq	-24(%rbp), %rax
	movl	400(%rax), %eax
	testl	%eax, %eax
	jne	.L252
.L251:
	movl	$0, %eax
	jmp	.L250
.L252:
	movq	-24(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L253
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L254
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$22, %eax
	jne	.L255
.L254:
	movl	$1, %eax
	jmp	.L250
.L253:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$13, %eax
	jne	.L255
	movl	$1, %eax
	jmp	.L250
.L255:
	movl	$0, %eax
.L250:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	ossl_statem_app_data_allowed, .-ossl_statem_app_data_allowed
	.globl	ossl_statem_export_allowed
	.type	ossl_statem_export_allowed, @function
ossl_statem_export_allowed:
.LFB757:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1080(%rax), %rax
	testq	%rax, %rax
	je	.L257
	movq	-8(%rbp), %rax
	movl	172(%rax), %eax
	cmpl	$40, %eax
	je	.L257
	movl	$1, %eax
	jmp	.L259
.L257:
	movl	$0, %eax
.L259:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	ossl_statem_export_allowed, .-ossl_statem_export_allowed
	.globl	ossl_statem_export_early_allowed
	.type	ossl_statem_export_early_allowed, @function
ossl_statem_export_early_allowed:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	2688(%rax), %eax
	cmpl	$2, %eax
	je	.L261
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	jne	.L262
	movq	-8(%rbp), %rax
	movl	2688(%rax), %eax
	testl	%eax, %eax
	je	.L262
.L261:
	movl	$1, %eax
	jmp	.L264
.L262:
	movl	$0, %eax
.L264:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	ossl_statem_export_early_allowed, .-ossl_statem_export_early_allowed
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 14
__func__.2:
	.string	"state_machine"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 19
__func__.1:
	.string	"read_state_machine"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"write_state_machine"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
