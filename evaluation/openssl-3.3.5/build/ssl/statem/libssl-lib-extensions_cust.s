	.file	"extensions_cust.c"
	.text
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
	.type	custom_ext_add_old_cb_wrap, @function
custom_ext_add_old_cb_wrap:
.LFB729:
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
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movl	$1, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	8(%rax), %r10
	movq	-8(%rbp), %rax
	movq	(%rax), %r8
	movq	24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	custom_ext_add_old_cb_wrap, .-custom_ext_add_old_cb_wrap
	.type	custom_ext_free_old_cb_wrap, @function
custom_ext_free_old_cb_wrap:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-8(%rbp), %rax
	movq	16(%rax), %r8
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L16
.L19:
	nop
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	custom_ext_free_old_cb_wrap, .-custom_ext_free_old_cb_wrap
	.type	custom_ext_parse_old_cb_wrap, @function
custom_ext_parse_old_cb_wrap:
.LFB731:
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
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	movl	$1, %eax
	jmp	.L22
.L21:
	movq	-8(%rbp), %rax
	movq	8(%rax), %r10
	movq	-8(%rbp), %rax
	movq	(%rax), %r8
	movq	24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	custom_ext_parse_old_cb_wrap, .-custom_ext_parse_old_cb_wrap
	.globl	custom_ext_find
	.type	custom_ext_find, @function
custom_ext_find:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L24
.L29:
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -32(%rbp)
	jne	.L25
	cmpl	$2, -28(%rbp)
	je	.L26
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L26
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$2, %eax
	jne	.L25
.L26:
	cmpq	$0, -40(%rbp)
	je	.L27
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L27:
	movq	-16(%rbp), %rax
	jmp	.L28
.L25:
	addq	$1, -8(%rbp)
	addq	$56, -16(%rbp)
.L24:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L29
	movl	$0, %eax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	custom_ext_find, .-custom_ext_find
	.globl	custom_ext_init
	.type	custom_ext_init, @function
custom_ext_init:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L31
.L32:
	movq	-16(%rbp), %rax
	movl	$0, 12(%rax)
	addq	$1, -8(%rbp)
	addq	$56, -16(%rbp)
.L31:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L32
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	custom_ext_init, .-custom_ext_init
	.section	.rodata
	.align 8
.LC0:
	.string	"../ssl/statem/extensions_cust.c"
	.text
	.globl	custom_ext_parse
	.type	custom_ext_parse, @function
custom_ext_parse:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movl	$0, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	subq	$-128, %rax
	movq	%rax, -16(%rbp)
	movl	$2, -4(%rbp)
	movl	-44(%rbp), %eax
	andl	$384, %eax
	testl	%eax, %eax
	je	.L34
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L34:
	movl	-48(%rbp), %edx
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	custom_ext_find@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L35
	movl	$1, %eax
	jmp	.L42
.L35:
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	extension_is_relevant@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$1, %eax
	jmp	.L42
.L37:
	movl	-44(%rbp), %eax
	andl	$1792, %eax
	testl	%eax, %eax
	je	.L38
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$143, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movl	$110, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L42
.L38:
	movl	-44(%rbp), %eax
	andl	$16512, %eax
	testl	%eax, %eax
	je	.L39
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L39:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	movl	$1, %eax
	jmp	.L42
.L40:
	movq	-24(%rbp), %rax
	movq	40(%rax), %r10
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	-72(%rbp), %r9
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rcx
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	subq	$8, %rsp
	pushq	%rdi
	leaq	-28(%rbp), %rdi
	pushq	%rdi
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	testl	%eax, %eax
	jg	.L41
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$110, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L42
.L41:
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	custom_ext_parse, .-custom_ext_parse
	.globl	custom_ext_add
	.type	custom_ext_add, @function
custom_ext_add:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	%r9d, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	2056(%rax), %rax
	subq	$-128, %rax
	movq	%rax, -16(%rbp)
	movl	-76(%rbp), %eax
	andl	$32768, %eax
	shrl	$15, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L44
.L65:
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-76(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	8(%rax), %esi
	movl	-80(%rbp), %ecx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	should_add_extension@PLT
	testl	%eax, %eax
	je	.L67
	movl	-76(%rbp), %eax
	andl	$73472, %eax
	testl	%eax, %eax
	je	.L47
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L68
.L47:
	movl	-76(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L48
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L69
.L48:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-32(%rbp), %rax
	movq	16(%rax), %r10
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-76(%rbp), %edx
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %esi
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	-96(%rbp), %r9
	leaq	-56(%rbp), %r8
	leaq	-48(%rbp), %rcx
	subq	$8, %rsp
	pushq	%rdi
	leaq	-40(%rbp), %rdi
	pushq	%rdi
	pushq	-104(%rbp)
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L50
	cmpl	$0, -20(%rbp)
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$217, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-40(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$234, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L51:
	movl	$0, %eax
	jmp	.L66
.L50:
	cmpl	$0, -36(%rbp)
	je	.L70
.L49:
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %ecx
	movq	-88(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_put_bytes__@PLT
	testl	%eax, %eax
	je	.L53
	movq	-88(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	WPACKET_start_sub_packet_len__@PLT
	testl	%eax, %eax
	je	.L53
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L54
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_memcpy@PLT
	testl	%eax, %eax
	je	.L53
.L54:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_close@PLT
	testl	%eax, %eax
	jne	.L55
.L53:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-32(%rbp), %rax
	movq	24(%rax), %r9
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rcx
	movl	-76(%rbp), %edx
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %esi
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L56:
	cmpl	$0, -20(%rbp)
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$232, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L57:
	movl	$0, %eax
	jmp	.L66
.L55:
	movl	-76(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L58
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	xorl	$1, %eax
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L59
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L60
	movq	-32(%rbp), %rax
	movq	24(%rax), %r9
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rcx
	movl	-76(%rbp), %edx
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %esi
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L60:
	cmpl	$0, -20(%rbp)
	jne	.L61
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$244, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
.L61:
	movl	$0, %eax
	jmp	.L66
.L59:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
.L58:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-32(%rbp), %rax
	movq	24(%rax), %r9
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rcx
	movl	-76(%rbp), %edx
	movq	-32(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %esi
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L63
.L67:
	nop
	jmp	.L63
.L68:
	nop
	jmp	.L63
.L69:
	nop
	jmp	.L63
.L70:
	nop
.L63:
	addq	$1, -8(%rbp)
.L44:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L65
	movl	$1, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	custom_ext_add, .-custom_ext_add
	.globl	custom_exts_copy_flags
	.type	custom_exts_copy_flags, @function
custom_exts_copy_flags:
.LFB736:
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
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L72
.L75:
	movq	-16(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %esi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	custom_ext_find@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L77
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L74
.L77:
	nop
.L74:
	addq	$1, -8(%rbp)
	addq	$56, -16(%rbp)
.L72:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L75
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	custom_exts_copy_flags, .-custom_exts_copy_flags
	.globl	custom_exts_copy
	.type	custom_exts_copy, @function
custom_exts_copy:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	imulq	$56, %rax, %rsi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$289, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L80
	movl	$0, %eax
	jmp	.L81
.L80:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	$0, -8(%rbp)
	jmp	.L82
.L87:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	custom_ext_add_old_cb_wrap(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L89
	cmpl	$0, -12(%rbp)
	je	.L85
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 48(%rax)
	jmp	.L84
.L85:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$313, %ecx
	movl	$24, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$315, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L86
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L84
.L86:
	movl	$1, -12(%rbp)
	jmp	.L84
.L89:
	nop
.L84:
	addq	$1, -8(%rbp)
.L82:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L87
.L79:
	cmpl	$0, -12(%rbp)
	je	.L88
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	custom_exts_free@PLT
	movl	$0, %eax
	jmp	.L81
.L88:
	movl	$1, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	custom_exts_copy, .-custom_exts_copy
	.globl	custom_exts_free
	.type	custom_exts_free, @function
custom_exts_free:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L91
.L94:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	custom_ext_add_old_cb_wrap(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L95
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$341, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$342, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L93
.L95:
	nop
.L93:
	addq	$1, -8(%rbp)
	addq	$56, -16(%rbp)
.L91:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L94
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$344, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	custom_exts_free, .-custom_exts_free
	.globl	SSL_CTX_has_client_custom_ext
	.type	SSL_CTX_has_client_custom_ext, @function
SSL_CTX_has_client_custom_ext:
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
	movq	344(%rax), %rax
	leaq	128(%rax), %rdi
	movl	-12(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %edx
	movl	$0, %esi
	call	custom_ext_find@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	SSL_CTX_has_client_custom_ext, .-SSL_CTX_has_client_custom_ext
	.globl	ossl_tls_add_custom_ext_intern
	.type	ossl_tls_add_custom_ext_intern, @function
ossl_tls_add_custom_ext_intern:
.LFB740:
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
	movq	%r9, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L99
	cmpq	$0, 16(%rbp)
	je	.L99
	movl	$0, %eax
	jmp	.L100
.L99:
	cmpq	$0, -32(%rbp)
	jne	.L101
	movq	-24(%rbp), %rax
	movq	344(%rax), %rax
	subq	$-128, %rax
	movq	%rax, -32(%rbp)
.L101:
	cmpl	$18, -40(%rbp)
	jne	.L102
	movl	-44(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L102
	cmpq	$0, -24(%rbp)
	je	.L102
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_ct_is_enabled@PLT
	testl	%eax, %eax
	je	.L102
	movl	$0, %eax
	jmp	.L100
.L102:
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	SSL_extension_supported@PLT
	testl	%eax, %eax
	je	.L103
	cmpl	$18, -40(%rbp)
	je	.L103
	movl	$0, %eax
	jmp	.L100
.L103:
	cmpl	$65535, -40(%rbp)
	jbe	.L104
	movl	$0, %eax
	jmp	.L100
.L104:
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	custom_ext_find@PLT
	testq	%rax, %rax
	je	.L105
	movl	$0, %eax
	jmp	.L100
.L105:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	imulq	$56, %rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$404, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L106
	movl	$0, %eax
	jmp	.L100
.L106:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	imulq	$56, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movw	%dx, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	ossl_tls_add_custom_ext_intern, .-ossl_tls_add_custom_ext_intern
	.type	add_old_custom_ext, @function
add_old_custom_ext:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$433, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$435, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L108
	cmpq	$0, -16(%rbp)
	jne	.L109
.L108:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$439, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$440, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L110
.L109:
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leaq	custom_ext_add_old_cb_wrap(%rip), %r8
	movl	-52(%rbp), %edi
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	pushq	-16(%rbp)
	leaq	custom_ext_parse_old_cb_wrap(%rip), %rsi
	pushq	%rsi
	pushq	-8(%rbp)
	leaq	custom_ext_free_old_cb_wrap(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_tls_add_custom_ext_intern@PLT
	addq	$32, %rsp
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L111
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$459, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$460, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L111:
	movl	-20(%rbp), %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	add_old_custom_ext, .-add_old_custom_ext
	.globl	SSL_CTX_add_client_custom_ext
	.type	SSL_CTX_add_client_custom_ext, @function
SSL_CTX_add_client_custom_ext:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$464, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	add_old_custom_ext
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	SSL_CTX_add_client_custom_ext, .-SSL_CTX_add_client_custom_ext
	.globl	SSL_CTX_add_server_custom_ext
	.type	SSL_CTX_add_server_custom_ext, @function
SSL_CTX_add_server_custom_ext:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$464, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	add_old_custom_ext
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	SSL_CTX_add_server_custom_ext, .-SSL_CTX_add_server_custom_ext
	.globl	SSL_CTX_add_custom_ext
	.type	SSL_CTX_add_custom_ext, @function
SSL_CTX_add_custom_ext:
.LFB744:
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
	movq	-24(%rbp), %rsi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_tls_add_custom_ext_intern@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	SSL_CTX_add_custom_ext, .-SSL_CTX_add_custom_ext
	.globl	SSL_extension_supported
	.type	SSL_extension_supported, @function
SSL_extension_supported:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$65281, -4(%rbp)
	je	.L119
	cmpl	$65281, -4(%rbp)
	ja	.L120
	cmpl	$13172, -4(%rbp)
	je	.L119
	cmpl	$13172, -4(%rbp)
	ja	.L120
	cmpl	$51, -4(%rbp)
	je	.L119
	cmpl	$51, -4(%rbp)
	ja	.L120
	cmpl	$49, -4(%rbp)
	je	.L119
	cmpl	$49, -4(%rbp)
	ja	.L120
	cmpl	$47, -4(%rbp)
	je	.L119
	cmpl	$47, -4(%rbp)
	ja	.L120
	cmpl	$45, -4(%rbp)
	ja	.L120
	cmpl	$41, -4(%rbp)
	jnb	.L119
	cmpl	$35, -4(%rbp)
	je	.L119
	cmpl	$35, -4(%rbp)
	ja	.L120
	cmpl	$27, -4(%rbp)
	je	.L119
	cmpl	$27, -4(%rbp)
	ja	.L120
	cmpl	$23, -4(%rbp)
	ja	.L120
	cmpl	$18, -4(%rbp)
	jnb	.L119
	cmpl	$16, -4(%rbp)
	je	.L119
	cmpl	$16, -4(%rbp)
	ja	.L120
	cmpl	$14, -4(%rbp)
	ja	.L120
	cmpl	$10, -4(%rbp)
	jnb	.L119
	cmpl	$1, -4(%rbp)
	jbe	.L119
	cmpl	$5, -4(%rbp)
	jne	.L120
.L119:
	movl	$1, %eax
	jmp	.L121
.L120:
	movl	$0, %eax
.L121:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	SSL_extension_supported, .-SSL_extension_supported
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"custom_ext_parse"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"custom_ext_add"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
