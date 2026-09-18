	.file	"ssl_conf.c"
	.text
	.type	ossl_check_X509_NAME_sk_type, @function
ossl_check_X509_NAME_sk_type:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	ossl_check_X509_NAME_sk_type, .-ossl_check_X509_NAME_sk_type
	.type	ossl_check_X509_NAME_freefunc_type, @function
ossl_check_X509_NAME_freefunc_type:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	ossl_check_X509_NAME_freefunc_type, .-ossl_check_X509_NAME_freefunc_type
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
	.type	ssl_set_option, @function
ssl_set_option:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L20
	xorl	$1, -32(%rbp)
.L20:
	movl	-28(%rbp), %eax
	andl	$3840, %eax
	cmpl	$512, %eax
	je	.L21
	cmpl	$512, %eax
	ja	.L29
	testl	%eax, %eax
	je	.L23
	cmpl	$256, %eax
	jne	.L29
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L21:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L23:
	cmpl	$0, -32(%rbp)
	je	.L25
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	orq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L17
.L25:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	notq	%rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	andq	%rcx, %rdx
	movq	%rdx, (%rax)
	jmp	.L17
.L24:
	cmpl	$0, -32(%rbp)
	je	.L27
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-40(%rbp), %rdx
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L17
.L27:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-40(%rbp), %rdx
	notl	%edx
	andl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L17
.L28:
	nop
	jmp	.L17
.L29:
	nop
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ssl_set_option, .-ssl_set_option
	.type	ssl_match_option, @function
ssl_match_option:
.LFB730:
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
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	andl	%edx, %eax
	andl	$12, %eax
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	cmpl	$-1, -28(%rbp)
	jne	.L33
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L34
	movl	$0, %eax
	jmp	.L32
.L33:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L35
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	je	.L34
.L35:
	movl	$0, %eax
	jmp	.L32
.L34:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	12(%rax), %esi
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_set_option
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	ssl_match_option, .-ssl_match_option
	.type	ssl_set_option_list, @function
ssl_set_option_list:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -20(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	cmpl	$-1, -44(%rbp)
	je	.L39
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L40
	addq	$1, -40(%rbp)
	subl	$1, -44(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L39
.L40:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L39
	addq	$1, -40(%rbp)
	subl	$1, -44(%rbp)
	movl	$0, -20(%rbp)
.L39:
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L41
.L43:
	movl	-20(%rbp), %edi
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ssl_match_option
	testl	%eax, %eax
	je	.L42
	movl	$1, %eax
	jmp	.L38
.L42:
	addq	$1, -8(%rbp)
	addq	$24, -16(%rbp)
.L41:
	movq	-32(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L43
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	ssl_set_option_list, .-ssl_set_option_list
	.type	cmd_SignatureAlgorithms, @function
cmd_SignatureAlgorithms:
.LFB732:
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
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$98, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -4(%rbp)
	jmp	.L46
.L45:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$98, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, -4(%rbp)
.L46:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	cmd_SignatureAlgorithms, .-cmd_SignatureAlgorithms
	.type	cmd_ClientSignatureAlgorithms, @function
cmd_ClientSignatureAlgorithms:
.LFB733:
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
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$102, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -4(%rbp)
	jmp	.L50
.L49:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$102, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, -4(%rbp)
.L50:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	cmd_ClientSignatureAlgorithms, .-cmd_ClientSignatureAlgorithms
	.type	cmd_Groups, @function
cmd_Groups:
.LFB734:
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
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$92, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -4(%rbp)
	jmp	.L54
.L53:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$92, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, -4(%rbp)
.L54:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	cmd_Groups, .-cmd_Groups
	.type	cmd_Curves, @function
cmd_Curves:
.LFB735:
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
	call	cmd_Groups
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	cmd_Curves, .-cmd_Curves
	.section	.rodata
.LC0:
	.string	"+automatic"
.LC1:
	.string	"automatic"
.LC2:
	.string	"auto"
	.text
	.type	cmd_ECDHParameters, @function
cmd_ECDHParameters:
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
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L59
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L60
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L59
.L60:
	movl	$1, %eax
	jmp	.L61
.L59:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L62
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L62
	movl	$1, %eax
	jmp	.L61
.L62:
	movq	-32(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L63
	movl	$0, %eax
	jmp	.L61
.L63:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$92, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, -4(%rbp)
	jmp	.L65
.L64:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$92, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -4(%rbp)
.L65:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	cmd_ECDHParameters, .-cmd_ECDHParameters
	.type	cmd_CipherString, @function
cmd_CipherString:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cipher_list@PLT
	movl	%eax, -4(%rbp)
.L67:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_cipher_list@PLT
	movl	%eax, -4(%rbp)
.L68:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	cmd_CipherString, .-cmd_CipherString
	.type	cmd_Ciphersuites, @function
cmd_Ciphersuites:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_ciphersuites@PLT
	movl	%eax, -4(%rbp)
.L71:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_ciphersuites@PLT
	movl	%eax, -4(%rbp)
.L72:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	cmd_Ciphersuites, .-cmd_Ciphersuites
	.type	cmd_Protocol, @function
cmd_Protocol:
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
	leaq	ssl_protocol_list.5(%rip), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$9, 104(%rax)
	movq	-8(%rbp), %rcx
	leaq	ssl_set_option_list(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	CONF_parse_list@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	cmd_Protocol, .-cmd_Protocol
	.type	protocol_from_string, @function
protocol_from_string:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$8, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L77
.L80:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	versions.4(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L78
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+versions.4(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L79
.L78:
	addq	$1, -8(%rbp)
.L77:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L80
	movl	$-1, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	protocol_from_string, .-protocol_from_string
	.type	min_max_proto, @function
min_max_proto:
.LFB741:
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
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L83
.L82:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L83
.L84:
	movl	$0, %eax
	jmp	.L85
.L83:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	protocol_from_string
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L86
	movl	$0, %eax
	jmp	.L85
.L86:
	movq	-40(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ssl_set_version_bound@PLT
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	min_max_proto, .-min_max_proto
	.type	cmd_MinProtocol, @function
cmd_MinProtocol:
.LFB742:
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
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	min_max_proto
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	cmd_MinProtocol, .-cmd_MinProtocol
	.type	cmd_MaxProtocol, @function
cmd_MaxProtocol:
.LFB743:
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
	movq	88(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	min_max_proto
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	cmd_MaxProtocol, .-cmd_MaxProtocol
	.type	cmd_Options, @function
cmd_Options:
.LFB744:
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
	jne	.L92
	movl	$-3, %eax
	jmp	.L93
.L92:
	movq	-8(%rbp), %rax
	leaq	ssl_option_list.3(%rip), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$26, 104(%rax)
	movq	-8(%rbp), %rcx
	leaq	ssl_set_option_list(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	CONF_parse_list@PLT
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	cmd_Options, .-cmd_Options
	.type	cmd_VerifyMode, @function
cmd_VerifyMode:
.LFB745:
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
	jne	.L95
	movl	$-3, %eax
	jmp	.L96
.L95:
	movq	-8(%rbp), %rax
	leaq	ssl_vfy_list.2(%rip), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$6, 104(%rax)
	movq	-8(%rbp), %rcx
	leaq	ssl_set_option_list(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	CONF_parse_list@PLT
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	cmd_VerifyMode, .-cmd_VerifyMode
	.section	.rodata
.LC3:
	.string	"../ssl/ssl_conf.c"
	.text
	.type	cmd_Certificate, @function
cmd_Certificate:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$1, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_certificate_chain_file@PLT
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	344(%rax), %rax
	movq	%rax, -16(%rbp)
.L98:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L99
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L100
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L101
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L102
.L101:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L103
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L102
.L103:
	movq	$0, -24(%rbp)
	jmp	.L102
.L100:
	movq	$0, -24(%rbp)
.L102:
	cmpq	$0, -24(%rbp)
	je	.L104
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate_chain_file@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L99
.L104:
	movl	$0, -4(%rbp)
.L99:
	cmpl	$0, -4(%rbp)
	jle	.L105
	cmpq	$0, -16(%rbp)
	je	.L105
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L105
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	sarq	$3, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L106
	movl	$0, -4(%rbp)
	jmp	.L105
.L106:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rcx
	sarq	$3, %rcx
	movabsq	$-3689348814741910323, %rax
	imulq	%rcx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$463, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$464, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L105
	movl	$0, -4(%rbp)
.L105:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	cmd_Certificate, .-cmd_Certificate
	.type	cmd_PrivateKey, @function
cmd_PrivateKey:
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
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L109
	movl	$-2, %eax
	jmp	.L110
.L109:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_PrivateKey_file@PLT
	movl	%eax, -4(%rbp)
.L111:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L112
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey_file@PLT
	movl	%eax, -4(%rbp)
.L112:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	cmd_PrivateKey, .-cmd_PrivateKey
	.type	cmd_ServerInfoFile, @function
cmd_ServerInfoFile:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L114
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_serverinfo_file@PLT
	movl	%eax, -4(%rbp)
.L114:
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	cmd_ServerInfoFile, .-cmd_ServerInfoFile
	.type	do_store, @function
do_store:
.LFB749:
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
	movl	%r8d, -84(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	344(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L118
.L117:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L119
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L121
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L122
.L121:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L123
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L122
.L123:
	movq	$0, -48(%rbp)
	jmp	.L122
.L120:
	movq	$0, -48(%rbp)
.L122:
	cmpq	$0, -48(%rbp)
	jne	.L124
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-48(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L118
.L119:
	movl	$1, %eax
	jmp	.L125
.L118:
	cmpq	$0, -24(%rbp)
	je	.L126
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	1096(%rax), %rax
	movq	%rax, -40(%rbp)
.L126:
	cmpl	$0, -84(%rbp)
	je	.L127
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movq	%rax, -16(%rbp)
	jmp	.L128
.L127:
	movq	-8(%rbp), %rax
	addq	$112, %rax
	movq	%rax, -16(%rbp)
.L128:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L129
	call	X509_STORE_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L129
	movl	$0, %eax
	jmp	.L125
.L129:
	cmpq	$0, -64(%rbp)
	je	.L130
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_file_ex@PLT
	testl	%eax, %eax
	jne	.L130
	movl	$0, %eax
	jmp	.L125
.L130:
	cmpq	$0, -72(%rbp)
	je	.L131
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_path@PLT
	testl	%eax, %eax
	jne	.L131
	movl	$0, %eax
	jmp	.L125
.L131:
	cmpq	$0, -80(%rbp)
	je	.L132
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_store_ex@PLT
	testl	%eax, %eax
	jne	.L132
	movl	$0, %eax
	jmp	.L125
.L132:
	movl	$1, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	do_store, .-do_store
	.type	cmd_ChainCAPath, @function
cmd_ChainCAPath:
.LFB750:
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
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_store
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	cmd_ChainCAPath, .-cmd_ChainCAPath
	.type	cmd_ChainCAFile, @function
cmd_ChainCAFile:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	do_store
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	cmd_ChainCAFile, .-cmd_ChainCAFile
	.type	cmd_ChainCAStore, @function
cmd_ChainCAStore:
.LFB752:
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
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_store
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	cmd_ChainCAStore, .-cmd_ChainCAStore
	.type	cmd_VerifyCAPath, @function
cmd_VerifyCAPath:
.LFB753:
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
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_store
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	cmd_VerifyCAPath, .-cmd_VerifyCAPath
	.type	cmd_VerifyCAFile, @function
cmd_VerifyCAFile:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	do_store
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	cmd_VerifyCAFile, .-cmd_VerifyCAFile
	.type	cmd_VerifyCAStore, @function
cmd_VerifyCAStore:
.LFB755:
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
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	do_store
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	cmd_VerifyCAStore, .-cmd_VerifyCAStore
	.type	cmd_RequestCAFile, @function
cmd_RequestCAFile:
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
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L146
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 112(%rdx)
.L146:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L147
	movl	$0, %eax
	jmp	.L148
.L147:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_file_cert_subjects_to_stack@PLT
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	cmd_RequestCAFile, .-cmd_RequestCAFile
	.type	cmd_ClientCAFile, @function
cmd_ClientCAFile:
.LFB757:
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
	call	cmd_RequestCAFile
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	cmd_ClientCAFile, .-cmd_ClientCAFile
	.type	cmd_RequestCAPath, @function
cmd_RequestCAPath:
.LFB758:
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
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L152
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 112(%rdx)
.L152:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L153
	movl	$0, %eax
	jmp	.L154
.L153:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_dir_cert_subjects_to_stack@PLT
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	cmd_RequestCAPath, .-cmd_RequestCAPath
	.type	cmd_ClientCAPath, @function
cmd_ClientCAPath:
.LFB759:
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
	call	cmd_RequestCAPath
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	cmd_ClientCAPath, .-cmd_ClientCAPath
	.type	cmd_RequestCAStore, @function
cmd_RequestCAStore:
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
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L158
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 112(%rdx)
.L158:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L159
	movl	$0, %eax
	jmp	.L160
.L159:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_add_store_cert_subjects_to_stack@PLT
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	cmd_RequestCAStore, .-cmd_RequestCAStore
	.type	cmd_ClientCAStore, @function
cmd_ClientCAStore:
.LFB761:
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
	call	cmd_RequestCAStore
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	cmd_ClientCAStore, .-cmd_ClientCAStore
	.section	.rodata
.LC4:
	.string	"DH"
.LC5:
	.string	"PEM"
	.text
	.type	cmd_DHParameters, @function
cmd_DHParameters:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L164
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L165
.L164:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L165:
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L166
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L167
.L166:
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L179
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jle	.L180
	movq	-16(%rbp), %rax
	movq	1096(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	leaq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdi, %r9
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_new_for_pkey@PLT
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L181
	call	ERR_set_mark@PLT
	nop
.L173:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_bio@PLT
	testl	%eax, %eax
	jne	.L172
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L172
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L173
.L172:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L174
	call	ERR_clear_last_mark@PLT
	jmp	.L169
.L174:
	call	ERR_pop_to_mark@PLT
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L175
	jmp	.L176
.L167:
	movl	$1, %eax
	jmp	.L178
.L175:
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set0_tmp_dh_pkey@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L176
	movq	$0, -40(%rbp)
.L176:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L182
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_tmp_dh_pkey@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L182
	movq	$0, -40(%rbp)
	jmp	.L169
.L179:
	nop
	jmp	.L169
.L180:
	nop
	jmp	.L169
.L181:
	nop
	jmp	.L169
.L182:
	nop
.L169:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	cmd_DHParameters, .-cmd_DHParameters
	.type	cmd_RecordPadding, @function
cmd_RecordPadding:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	js	.L184
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L185
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_block_padding@PLT
	movl	%eax, -4(%rbp)
.L185:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L184
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_block_padding@PLT
	movl	%eax, -4(%rbp)
.L184:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	cmd_RecordPadding, .-cmd_RecordPadding
	.type	cmd_NumTickets, @function
cmd_NumTickets:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	js	.L188
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L189
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_num_tickets@PLT
	movl	%eax, -4(%rbp)
.L189:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L188
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_num_tickets@PLT
	movl	%eax, -4(%rbp)
.L188:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	cmd_NumTickets, .-cmd_NumTickets
	.section	.rodata
.LC6:
	.string	"no_ssl3"
.LC7:
	.string	"no_tls1"
.LC8:
	.string	"no_tls1_1"
.LC9:
	.string	"no_tls1_2"
.LC10:
	.string	"no_tls1_3"
.LC11:
	.string	"bugs"
.LC12:
	.string	"no_comp"
.LC13:
	.string	"comp"
.LC14:
	.string	"no_tx_cert_comp"
.LC15:
	.string	"tx_cert_comp"
.LC16:
	.string	"no_rx_cert_comp"
.LC17:
	.string	"rx_cert_comp"
.LC18:
	.string	"ecdh_single"
.LC19:
	.string	"no_ticket"
.LC20:
	.string	"serverpref"
.LC21:
	.string	"legacy_renegotiation"
.LC22:
	.string	"client_renegotiation"
.LC23:
	.string	"legacy_server_connect"
.LC24:
	.string	"no_renegotiation"
.LC25:
	.string	"no_resumption_on_reneg"
.LC26:
	.string	"no_legacy_server_connect"
.LC27:
	.string	"allow_no_dhe_kex"
.LC28:
	.string	"prefer_no_dhe_kex"
.LC29:
	.string	"prioritize_chacha"
.LC30:
	.string	"strict"
.LC31:
	.string	"no_middlebox"
.LC32:
	.string	"anti_replay"
.LC33:
	.string	"no_anti_replay"
.LC34:
	.string	"no_etm"
.LC35:
	.string	"no_ems"
.LC36:
	.string	"SignatureAlgorithms"
.LC37:
	.string	"sigalgs"
.LC38:
	.string	"ClientSignatureAlgorithms"
.LC39:
	.string	"client_sigalgs"
.LC40:
	.string	"Curves"
.LC41:
	.string	"curves"
.LC42:
	.string	"Groups"
.LC43:
	.string	"groups"
.LC44:
	.string	"ECDHParameters"
.LC45:
	.string	"named_curve"
.LC46:
	.string	"CipherString"
.LC47:
	.string	"cipher"
.LC48:
	.string	"Ciphersuites"
.LC49:
	.string	"ciphersuites"
.LC50:
	.string	"Protocol"
.LC51:
	.string	"MinProtocol"
.LC52:
	.string	"min_protocol"
.LC53:
	.string	"MaxProtocol"
.LC54:
	.string	"max_protocol"
.LC55:
	.string	"Options"
.LC56:
	.string	"VerifyMode"
.LC57:
	.string	"Certificate"
.LC58:
	.string	"cert"
.LC59:
	.string	"PrivateKey"
.LC60:
	.string	"key"
.LC61:
	.string	"ServerInfoFile"
.LC62:
	.string	"ChainCAPath"
.LC63:
	.string	"chainCApath"
.LC64:
	.string	"ChainCAFile"
.LC65:
	.string	"chainCAfile"
.LC66:
	.string	"ChainCAStore"
.LC67:
	.string	"chainCAstore"
.LC68:
	.string	"VerifyCAPath"
.LC69:
	.string	"verifyCApath"
.LC70:
	.string	"VerifyCAFile"
.LC71:
	.string	"verifyCAfile"
.LC72:
	.string	"VerifyCAStore"
.LC73:
	.string	"verifyCAstore"
.LC74:
	.string	"RequestCAFile"
.LC75:
	.string	"requestCAFile"
.LC76:
	.string	"ClientCAFile"
.LC77:
	.string	"RequestCAPath"
.LC78:
	.string	"ClientCAPath"
.LC79:
	.string	"RequestCAStore"
.LC80:
	.string	"requestCAStore"
.LC81:
	.string	"ClientCAStore"
.LC82:
	.string	"DHParameters"
.LC83:
	.string	"dhparam"
.LC84:
	.string	"RecordPadding"
.LC85:
	.string	"record_padding"
.LC86:
	.string	"NumTickets"
.LC87:
	.string	"num_tickets"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ssl_conf_cmds, @object
	.size	ssl_conf_cmds, 1920
ssl_conf_cmds:
	.quad	0
	.quad	0
	.quad	.LC6
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC7
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC8
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC9
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC10
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC11
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC12
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC13
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC14
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC15
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC16
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC17
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC18
	.value	8
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC19
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC20
	.value	8
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC21
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC22
	.value	8
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC23
	.value	4
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC24
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC25
	.value	8
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC26
	.value	4
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC27
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC28
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC29
	.value	8
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC30
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC31
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC32
	.value	8
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC33
	.value	8
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC34
	.value	0
	.value	4
	.zero	4
	.quad	0
	.quad	0
	.quad	.LC35
	.value	0
	.value	4
	.zero	4
	.quad	cmd_SignatureAlgorithms
	.quad	.LC36
	.quad	.LC37
	.value	0
	.value	1
	.zero	4
	.quad	cmd_ClientSignatureAlgorithms
	.quad	.LC38
	.quad	.LC39
	.value	0
	.value	1
	.zero	4
	.quad	cmd_Curves
	.quad	.LC40
	.quad	.LC41
	.value	0
	.value	1
	.zero	4
	.quad	cmd_Groups
	.quad	.LC42
	.quad	.LC43
	.value	0
	.value	1
	.zero	4
	.quad	cmd_ECDHParameters
	.quad	.LC44
	.quad	.LC45
	.value	8
	.value	1
	.zero	4
	.quad	cmd_CipherString
	.quad	.LC46
	.quad	.LC47
	.value	0
	.value	1
	.zero	4
	.quad	cmd_Ciphersuites
	.quad	.LC48
	.quad	.LC49
	.value	0
	.value	1
	.zero	4
	.quad	cmd_Protocol
	.quad	.LC50
	.quad	0
	.value	0
	.value	1
	.zero	4
	.quad	cmd_MinProtocol
	.quad	.LC51
	.quad	.LC52
	.value	0
	.value	1
	.zero	4
	.quad	cmd_MaxProtocol
	.quad	.LC53
	.quad	.LC54
	.value	0
	.value	1
	.zero	4
	.quad	cmd_Options
	.quad	.LC55
	.quad	0
	.value	0
	.value	1
	.zero	4
	.quad	cmd_VerifyMode
	.quad	.LC56
	.quad	0
	.value	0
	.value	1
	.zero	4
	.quad	cmd_Certificate
	.quad	.LC57
	.quad	.LC58
	.value	32
	.value	2
	.zero	4
	.quad	cmd_PrivateKey
	.quad	.LC59
	.quad	.LC60
	.value	32
	.value	2
	.zero	4
	.quad	cmd_ServerInfoFile
	.quad	.LC61
	.quad	0
	.value	40
	.value	2
	.zero	4
	.quad	cmd_ChainCAPath
	.quad	.LC62
	.quad	.LC63
	.value	32
	.value	3
	.zero	4
	.quad	cmd_ChainCAFile
	.quad	.LC64
	.quad	.LC65
	.value	32
	.value	2
	.zero	4
	.quad	cmd_ChainCAStore
	.quad	.LC66
	.quad	.LC67
	.value	32
	.value	5
	.zero	4
	.quad	cmd_VerifyCAPath
	.quad	.LC68
	.quad	.LC69
	.value	32
	.value	3
	.zero	4
	.quad	cmd_VerifyCAFile
	.quad	.LC70
	.quad	.LC71
	.value	32
	.value	2
	.zero	4
	.quad	cmd_VerifyCAStore
	.quad	.LC72
	.quad	.LC73
	.value	32
	.value	5
	.zero	4
	.quad	cmd_RequestCAFile
	.quad	.LC74
	.quad	.LC75
	.value	32
	.value	2
	.zero	4
	.quad	cmd_ClientCAFile
	.quad	.LC76
	.quad	0
	.value	40
	.value	2
	.zero	4
	.quad	cmd_RequestCAPath
	.quad	.LC77
	.quad	0
	.value	32
	.value	3
	.zero	4
	.quad	cmd_ClientCAPath
	.quad	.LC78
	.quad	0
	.value	40
	.value	3
	.zero	4
	.quad	cmd_RequestCAStore
	.quad	.LC79
	.quad	.LC80
	.value	32
	.value	5
	.zero	4
	.quad	cmd_ClientCAStore
	.quad	.LC81
	.quad	0
	.value	40
	.value	5
	.zero	4
	.quad	cmd_DHParameters
	.quad	.LC82
	.quad	.LC83
	.value	40
	.value	2
	.zero	4
	.quad	cmd_RecordPadding
	.quad	.LC84
	.quad	.LC85
	.value	0
	.value	1
	.zero	4
	.quad	cmd_NumTickets
	.quad	.LC86
	.quad	.LC87
	.value	8
	.value	1
	.zero	4
	.section	.rodata
	.align 32
	.type	ssl_cmd_switches, @object
	.size	ssl_cmd_switches, 480
ssl_cmd_switches:
	.quad	33554432
	.long	0
	.zero	4
	.quad	67108864
	.long	0
	.zero	4
	.quad	268435456
	.long	0
	.zero	4
	.quad	134217728
	.long	0
	.zero	4
	.quad	536870912
	.long	0
	.zero	4
	.quad	2147485776
	.long	0
	.zero	4
	.quad	131072
	.long	0
	.zero	4
	.quad	131072
	.long	1
	.zero	4
	.quad	4294967296
	.long	0
	.zero	4
	.quad	4294967296
	.long	1
	.zero	4
	.quad	8589934592
	.long	0
	.zero	4
	.quad	8589934592
	.long	1
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	16384
	.long	0
	.zero	4
	.quad	4194304
	.long	0
	.zero	4
	.quad	262144
	.long	0
	.zero	4
	.quad	256
	.long	0
	.zero	4
	.quad	4
	.long	0
	.zero	4
	.quad	1073741824
	.long	0
	.zero	4
	.quad	65536
	.long	0
	.zero	4
	.quad	4
	.long	1
	.zero	4
	.quad	1024
	.long	0
	.zero	4
	.quad	34359738368
	.long	0
	.zero	4
	.quad	2097152
	.long	0
	.zero	4
	.quad	1
	.long	256
	.zero	4
	.quad	1048576
	.long	1
	.zero	4
	.quad	16777216
	.long	1
	.zero	4
	.quad	16777216
	.long	0
	.zero	4
	.quad	524288
	.long	0
	.zero	4
	.quad	1
	.long	0
	.zero	4
	.text
	.type	ssl_conf_cmd_skip_prefix, @function
ssl_conf_cmd_skip_prefix:
.LFB765:
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
	je	.L192
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L193
.L192:
	movl	$0, %eax
	jmp	.L194
.L193:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L195
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	cmpq	%rax, %rdx
	jb	.L196
	movl	$0, %eax
	jmp	.L194
.L196:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L197
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L197
	movl	$0, %eax
	jmp	.L194
.L197:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L198
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	je	.L198
	movl	$0, %eax
	jmp	.L194
.L198:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L199
.L195:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L199
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L200
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L201
.L200:
	movl	$0, %eax
	jmp	.L194
.L201:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L199:
	movl	$1, %eax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	ssl_conf_cmd_skip_prefix, .-ssl_conf_cmd_skip_prefix
	.type	ssl_conf_cmd_allowed, @function
ssl_conf_cmd_allowed:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movzwl	24(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L203
	movl	-8(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L203
	movl	$0, %eax
	jmp	.L204
.L203:
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L205
	movl	-8(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L205
	movl	$0, %eax
	jmp	.L204
.L205:
	movl	-4(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L206
	movl	-8(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L206
	movl	$0, %eax
	jmp	.L204
.L206:
	movl	$1, %eax
.L204:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	ssl_conf_cmd_allowed, .-ssl_conf_cmd_allowed
	.type	ssl_conf_cmd_lookup, @function
ssl_conf_cmd_lookup:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L208
	movl	$0, %eax
	jmp	.L209
.L208:
	movq	$0, -16(%rbp)
	leaq	ssl_conf_cmds(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L210
.L213:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_conf_cmd_allowed
	testl	%eax, %eax
	je	.L211
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L212
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L212
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L212
	movq	-8(%rbp), %rax
	jmp	.L209
.L212:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L211
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L211
	movq	-8(%rbp), %rax
	jmp	.L209
.L211:
	addq	$1, -16(%rbp)
	addq	$32, -8(%rbp)
.L210:
	cmpq	$59, -16(%rbp)
	jbe	.L213
	movl	$0, %eax
.L209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	ssl_conf_cmd_lookup, .-ssl_conf_cmd_lookup
	.type	ctrl_switch_option, @function
ctrl_switch_option:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	ssl_conf_cmds(%rip), %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	movq	%rax, -8(%rbp)
	cmpq	$29, -8(%rbp)
	jbe	.L215
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$916, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L216
.L215:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	ssl_cmd_switches(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ssl_set_option
	movl	$1, %eax
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	ctrl_switch_option, .-ctrl_switch_option
	.section	.rodata
.LC88:
	.string	"<EMPTY>"
.LC89:
	.string	"cmd=%s, value=%s"
.LC90:
	.string	"cmd=%s"
	.text
	.globl	SSL_CONF_cmd
	.type	SSL_CONF_cmd, @function
SSL_CONF_cmd:
.LFB769:
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
	testq	%rax, %rax
	jne	.L218
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$929, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$385, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L219
.L218:
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_conf_cmd_skip_prefix
	testl	%eax, %eax
	je	.L230
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_conf_cmd_lookup
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L231
	movl	$-3, -4(%rbp)
	movq	-16(%rbp), %rax
	movzwl	26(%rax), %eax
	cmpw	$4, %ax
	jne	.L222
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ctrl_switch_option
	jmp	.L219
.L222:
	cmpq	$0, -40(%rbp)
	je	.L232
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L225
	movl	$2, %eax
	jmp	.L219
.L225:
	cmpl	$-2, -4(%rbp)
	je	.L233
	movl	$0, -4(%rbp)
	jmp	.L224
.L232:
	nop
	jmp	.L224
.L233:
	nop
.L224:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L226
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$954, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpq	$0, -40(%rbp)
	je	.L227
	movq	-40(%rbp), %rax
	jmp	.L228
.L227:
	leaq	.LC88(%rip), %rax
.L228:
	movq	-32(%rbp), %rdx
	leaq	.LC89(%rip), %rsi
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$384, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L226:
	movl	-4(%rbp), %eax
	jmp	.L219
.L230:
	nop
	jmp	.L221
.L231:
	nop
.L221:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L229
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$962, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	leaq	.LC90(%rip), %rdx
	movq	%rax, %rcx
	movl	$386, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L229:
	movl	$-2, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	SSL_CONF_cmd, .-SSL_CONF_cmd
	.globl	SSL_CONF_cmd_argv
	.type	SSL_CONF_cmd_argv, @function
SSL_CONF_cmd_argv:
.LFB770:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L235
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L235
	movl	$0, %eax
	jmp	.L236
.L235:
	cmpq	$0, -48(%rbp)
	je	.L237
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L238
.L237:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L238:
	cmpq	$0, -8(%rbp)
	jne	.L239
	movl	$0, %eax
	jmp	.L236
.L239:
	cmpq	$0, -48(%rbp)
	je	.L240
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L241
.L240:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L242
.L241:
	movq	$0, -16(%rbp)
.L242:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andl	$-3, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_cmd@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L243
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -48(%rbp)
	je	.L244
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
.L244:
	movl	-20(%rbp), %eax
	jmp	.L236
.L243:
	cmpl	$-2, -20(%rbp)
	jne	.L245
	movl	$0, %eax
	jmp	.L236
.L245:
	cmpl	$0, -20(%rbp)
	jne	.L246
	movl	$-1, %eax
	jmp	.L236
.L246:
	movl	-20(%rbp), %eax
.L236:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	SSL_CONF_cmd_argv, .-SSL_CONF_cmd_argv
	.globl	SSL_CONF_cmd_value_type
	.type	SSL_CONF_cmd_value_type, @function
SSL_CONF_cmd_value_type:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_conf_cmd_skip_prefix
	testl	%eax, %eax
	je	.L248
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_conf_cmd_lookup
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L248
	movq	-8(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	jmp	.L249
.L248:
	movl	$0, %eax
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	SSL_CONF_cmd_value_type, .-SSL_CONF_cmd_value_type
	.globl	SSL_CONF_CTX_new
	.type	SSL_CONF_CTX_new, @function
SSL_CONF_CTX_new:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC3(%rip), %rax
	movl	$1014, %edx
	movq	%rax, %rsi
	movl	$120, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	SSL_CONF_CTX_new, .-SSL_CONF_CTX_new
	.globl	SSL_CONF_CTX_finish
	.type	SSL_CONF_CTX_finish, @function
SSL_CONF_CTX_finish:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L253
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	344(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L254
.L253:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L254
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L255
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L256
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L257
.L256:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L258
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L257
.L258:
	movq	$0, -40(%rbp)
	jmp	.L257
.L255:
	movq	$0, -40(%rbp)
.L257:
	cmpq	$0, -40(%rbp)
	je	.L254
	movq	-40(%rbp), %rax
	movq	2056(%rax), %rax
	movq	%rax, -32(%rbp)
.L254:
	cmpq	$0, -32(%rbp)
	je	.L259
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L259
	movq	$0, -24(%rbp)
	jmp	.L260
.L263:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L261
	movq	-32(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L261
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cmd_PrivateKey
	testl	%eax, %eax
	jne	.L261
	movl	$0, %eax
	jmp	.L262
.L261:
	addq	$1, -24(%rbp)
.L260:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L263
.L259:
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L264
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L265
	movq	-56(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set0_CA_list@PLT
	jmp	.L266
.L265:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L267
	movq	-56(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set0_CA_list@PLT
	jmp	.L266
.L267:
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
.L266:
	movq	-56(%rbp), %rax
	movq	$0, 112(%rax)
.L264:
	movl	$1, %eax
.L262:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	SSL_CONF_CTX_finish, .-SSL_CONF_CTX_finish
	.type	free_cert_filename, @function
free_cert_filename:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L269
.L270:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$1063, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addq	$1, -8(%rbp)
.L269:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L270
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$1064, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	free_cert_filename, .-free_cert_filename
	.globl	SSL_CONF_CTX_free
	.type	SSL_CONF_CTX_free, @function
SSL_CONF_CTX_free:
.LFB775:
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
	cmpq	$0, -24(%rbp)
	je	.L273
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_cert_filename
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$1073, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	X509_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1075, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L273:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	SSL_CONF_CTX_free, .-SSL_CONF_CTX_free
	.globl	SSL_CONF_CTX_set_flags
	.type	SSL_CONF_CTX_set_flags, @function
SSL_CONF_CTX_set_flags:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	SSL_CONF_CTX_set_flags, .-SSL_CONF_CTX_set_flags
	.globl	SSL_CONF_CTX_clear_flags
	.type	SSL_CONF_CTX_clear_flags, @function
SSL_CONF_CTX_clear_flags:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	notl	%edx
	andl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	SSL_CONF_CTX_clear_flags, .-SSL_CONF_CTX_clear_flags
	.globl	SSL_CONF_CTX_set1_prefix
	.type	SSL_CONF_CTX_set1_prefix, @function
SSL_CONF_CTX_set1_prefix:
.LFB778:
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
	cmpq	$0, -32(%rbp)
	je	.L279
	leaq	.LC3(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1095, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L279
	movl	$0, %eax
	jmp	.L280
.L279:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$1099, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, -8(%rbp)
	je	.L281
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L282
.L281:
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
.L282:
	movl	$1, %eax
.L280:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	SSL_CONF_CTX_set1_prefix, .-SSL_CONF_CTX_set1_prefix
	.globl	SSL_CONF_CTX_set_ssl
	.type	SSL_CONF_CTX_set_ssl, @function
SSL_CONF_CTX_set_ssl:
.LFB779:
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
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free_cert_filename
	cmpq	$0, -32(%rbp)
	je	.L284
	cmpq	$0, -32(%rbp)
	je	.L285
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L286
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L287
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L288
.L287:
	movq	$0, -8(%rbp)
	jmp	.L288
.L286:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L288
.L285:
	movq	$0, -8(%rbp)
.L288:
	cmpq	$0, -8(%rbp)
	je	.L291
	movq	-8(%rbp), %rax
	leaq	2360(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	leaq	2372(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	leaq	2376(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	2056(%rax), %rax
	leaq	28(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	leaq	2264(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	salq	$3, %rax
	leaq	.LC3(%rip), %rcx
	movl	$1123, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L283
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 56(%rax)
	jmp	.L283
.L284:
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
	jmp	.L283
.L291:
	nop
.L283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	SSL_CONF_CTX_set_ssl, .-SSL_CONF_CTX_set_ssl
	.globl	SSL_CONF_CTX_set_ssl_ctx
	.type	SSL_CONF_CTX_set_ssl_ctx, @function
SSL_CONF_CTX_set_ssl_ctx:
.LFB780:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_cert_filename
	cmpq	$0, -16(%rbp)
	je	.L293
	movq	-16(%rbp), %rax
	leaq	312(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	leaq	324(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-16(%rbp), %rax
	leaq	328(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-16(%rbp), %rax
	movq	344(%rax), %rax
	leaq	28(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-16(%rbp), %rax
	leaq	384(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	1632(%rax), %rax
	addq	$9, %rax
	salq	$3, %rax
	leaq	.LC3(%rip), %rcx
	movl	$1147, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L295
	movq	-16(%rbp), %rax
	movq	1632(%rax), %rax
	leaq	9(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	jmp	.L295
.L293:
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
.L295:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	SSL_CONF_CTX_set_ssl_ctx, .-SSL_CONF_CTX_set_ssl_ctx
	.section	.rodata
.LC91:
	.string	"ALL"
.LC92:
	.string	"SSLv2"
.LC93:
	.string	"SSLv3"
.LC94:
	.string	"TLSv1"
.LC95:
	.string	"TLSv1.1"
.LC96:
	.string	"TLSv1.2"
.LC97:
	.string	"TLSv1.3"
.LC98:
	.string	"DTLSv1"
.LC99:
	.string	"DTLSv1.2"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_protocol_list.5, @object
	.size	ssl_protocol_list.5, 216
ssl_protocol_list.5:
	.quad	.LC91
	.long	3
	.long	13
	.quad	1040187392
	.quad	.LC92
	.long	5
	.long	13
	.quad	0
	.quad	.LC93
	.long	5
	.long	13
	.quad	33554432
	.quad	.LC94
	.long	5
	.long	13
	.quad	67108864
	.quad	.LC95
	.long	7
	.long	13
	.quad	268435456
	.quad	.LC96
	.long	7
	.long	13
	.quad	134217728
	.quad	.LC97
	.long	7
	.long	13
	.quad	536870912
	.quad	.LC98
	.long	6
	.long	13
	.quad	67108864
	.quad	.LC99
	.long	8
	.long	13
	.quad	134217728
	.section	.rodata
.LC100:
	.string	"None"
	.section	.data.rel.ro.local
	.align 32
	.type	versions.4, @object
	.size	versions.4, 128
versions.4:
	.quad	.LC100
	.long	0
	.zero	4
	.quad	.LC93
	.long	768
	.zero	4
	.quad	.LC94
	.long	769
	.zero	4
	.quad	.LC95
	.long	770
	.zero	4
	.quad	.LC96
	.long	771
	.zero	4
	.quad	.LC97
	.long	772
	.zero	4
	.quad	.LC98
	.long	65279
	.zero	4
	.quad	.LC99
	.long	65277
	.zero	4
	.section	.rodata
.LC101:
	.string	"SessionTicket"
.LC102:
	.string	"EmptyFragments"
.LC103:
	.string	"Bugs"
.LC104:
	.string	"Compression"
.LC105:
	.string	"ServerPreference"
.LC106:
	.string	"NoResumptionOnRenegotiation"
.LC107:
	.string	"DHSingle"
.LC108:
	.string	"ECDHSingle"
.LC109:
	.string	"UnsafeLegacyRenegotiation"
.LC110:
	.string	"UnsafeLegacyServerConnect"
.LC111:
	.string	"ClientRenegotiation"
.LC112:
	.string	"EncryptThenMac"
.LC113:
	.string	"NoRenegotiation"
.LC114:
	.string	"AllowNoDHEKEX"
.LC115:
	.string	"PreferNoDHEKEX"
.LC116:
	.string	"PrioritizeChaCha"
.LC117:
	.string	"MiddleboxCompat"
.LC118:
	.string	"AntiReplay"
.LC119:
	.string	"ExtendedMasterSecret"
.LC120:
	.string	"CANames"
.LC121:
	.string	"KTLS"
.LC122:
	.string	"StrictCertCheck"
.LC123:
	.string	"TxCertificateCompression"
.LC124:
	.string	"RxCertificateCompression"
.LC125:
	.string	"KTLSTxZerocopySendfile"
.LC126:
	.string	"IgnoreUnexpectedEOF"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_option_list.3, @object
	.size	ssl_option_list.3, 624
ssl_option_list.3:
	.quad	.LC101
	.long	13
	.long	13
	.quad	16384
	.quad	.LC102
	.long	14
	.long	13
	.quad	2048
	.quad	.LC103
	.long	4
	.long	12
	.quad	2147485776
	.quad	.LC104
	.long	11
	.long	13
	.quad	131072
	.quad	.LC105
	.long	16
	.long	8
	.quad	4194304
	.quad	.LC106
	.long	27
	.long	8
	.quad	65536
	.quad	.LC107
	.long	8
	.long	8
	.quad	0
	.quad	.LC108
	.long	10
	.long	8
	.quad	0
	.quad	.LC109
	.long	25
	.long	12
	.quad	262144
	.quad	.LC110
	.long	25
	.long	12
	.quad	4
	.quad	.LC111
	.long	19
	.long	12
	.quad	256
	.quad	.LC112
	.long	14
	.long	13
	.quad	524288
	.quad	.LC113
	.long	15
	.long	12
	.quad	1073741824
	.quad	.LC114
	.long	13
	.long	12
	.quad	1024
	.quad	.LC115
	.long	14
	.long	12
	.quad	34359738368
	.quad	.LC116
	.long	16
	.long	12
	.quad	2097152
	.quad	.LC117
	.long	15
	.long	12
	.quad	1048576
	.quad	.LC118
	.long	10
	.long	13
	.quad	16777216
	.quad	.LC119
	.long	20
	.long	13
	.quad	1
	.quad	.LC120
	.long	7
	.long	13
	.quad	512
	.quad	.LC121
	.long	4
	.long	12
	.quad	8
	.quad	.LC122
	.long	15
	.long	268
	.quad	1
	.quad	.LC123
	.long	24
	.long	13
	.quad	4294967296
	.quad	.LC124
	.long	24
	.long	13
	.quad	8589934592
	.quad	.LC125
	.long	22
	.long	12
	.quad	17179869184
	.quad	.LC126
	.long	19
	.long	12
	.quad	128
	.section	.rodata
.LC127:
	.string	"Peer"
.LC128:
	.string	"Request"
.LC129:
	.string	"Require"
.LC130:
	.string	"Once"
.LC131:
	.string	"RequestPostHandshake"
.LC132:
	.string	"RequirePostHandshake"
	.section	.data.rel.ro.local
	.align 32
	.type	ssl_vfy_list.2, @object
	.size	ssl_vfy_list.2, 144
ssl_vfy_list.2:
	.quad	.LC127
	.long	4
	.long	516
	.quad	1
	.quad	.LC128
	.long	7
	.long	520
	.quad	1
	.quad	.LC129
	.long	7
	.long	520
	.quad	3
	.quad	.LC130
	.long	4
	.long	520
	.quad	5
	.quad	.LC131
	.long	20
	.long	520
	.quad	9
	.quad	.LC132
	.long	20
	.long	520
	.quad	11
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 19
__func__.1:
	.string	"ctrl_switch_option"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"SSL_CONF_cmd"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
