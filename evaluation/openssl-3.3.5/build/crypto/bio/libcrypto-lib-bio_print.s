	.file	"bio_print.c"
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
	.type	_dopr, @function
_dopr:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, -40(%rbp)
	movl	$-1, -32(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L6
.L137:
	cmpb	$0, -1(%rbp)
	je	.L7
	cmpq	$0, -96(%rbp)
	jne	.L8
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	cmpq	%rax, %rdx
	jb	.L8
.L7:
	movl	$7, -36(%rbp)
.L8:
	cmpl	$7, -36(%rbp)
	je	.L6
	cmpl	$7, -36(%rbp)
	jg	.L152
	cmpl	$6, -36(%rbp)
	je	.L11
	cmpl	$6, -36(%rbp)
	jg	.L152
	cmpl	$5, -36(%rbp)
	je	.L12
	cmpl	$5, -36(%rbp)
	jg	.L152
	cmpl	$4, -36(%rbp)
	je	.L13
	cmpl	$4, -36(%rbp)
	jg	.L152
	cmpl	$3, -36(%rbp)
	je	.L14
	cmpl	$3, -36(%rbp)
	jg	.L152
	cmpl	$2, -36(%rbp)
	je	.L15
	cmpl	$2, -36(%rbp)
	jg	.L152
	cmpl	$0, -36(%rbp)
	je	.L16
	cmpl	$1, -36(%rbp)
	je	.L17
	jmp	.L10
.L16:
	cmpb	$37, -1(%rbp)
	jne	.L18
	movl	$1, -36(%rbp)
	jmp	.L19
.L18:
	movsbl	-1(%rbp), %edi
	movq	-104(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L140
.L19:
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L6
.L17:
	movsbl	-1(%rbp), %eax
	cmpl	$48, %eax
	je	.L21
	cmpl	$48, %eax
	jg	.L22
	cmpl	$45, %eax
	je	.L23
	cmpl	$45, %eax
	jg	.L22
	cmpl	$43, %eax
	je	.L24
	cmpl	$43, %eax
	jg	.L22
	cmpl	$32, %eax
	je	.L25
	cmpl	$35, %eax
	je	.L26
	jmp	.L22
.L23:
	orl	$1, -40(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L27
.L24:
	orl	$2, -40(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L27
.L25:
	orl	$4, -40(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L27
.L26:
	orl	$8, -40(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L27
.L21:
	orl	$16, -40(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L27
.L22:
	movl	$2, -36(%rbp)
	nop
.L27:
	jmp	.L6
.L15:
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	je	.L28
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movsbl	-1(%rbp), %eax
	subl	$48, %eax
	addl	%edx, %eax
	movl	%eax, -28(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L6
.L28:
	cmpb	$42, -1(%rbp)
	jne	.L30
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L31
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L32
.L31:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L32:
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movl	$3, -36(%rbp)
	jmp	.L6
.L30:
	movl	$3, -36(%rbp)
	jmp	.L6
.L14:
	cmpb	$46, -1(%rbp)
	jne	.L33
	movl	$4, -36(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L6
.L33:
	movl	$5, -36(%rbp)
	jmp	.L6
.L13:
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	je	.L35
	cmpl	$0, -32(%rbp)
	jns	.L36
	movl	$0, -32(%rbp)
.L36:
	movl	-32(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movsbl	-1(%rbp), %eax
	subl	$48, %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L6
.L35:
	cmpb	$42, -1(%rbp)
	jne	.L38
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L39
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L40
.L39:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L40:
	movl	(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movl	$5, -36(%rbp)
	jmp	.L6
.L38:
	movl	$5, -36(%rbp)
	jmp	.L6
.L12:
	movsbl	-1(%rbp), %eax
	cmpl	$122, %eax
	je	.L41
	cmpl	$122, %eax
	jg	.L141
	cmpl	$113, %eax
	je	.L43
	cmpl	$113, %eax
	jg	.L141
	cmpl	$108, %eax
	je	.L44
	cmpl	$108, %eax
	jg	.L141
	cmpl	$106, %eax
	je	.L43
	cmpl	$106, %eax
	jg	.L141
	cmpl	$76, %eax
	je	.L45
	cmpl	$104, %eax
	jne	.L141
	movl	$1, -44(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L46
.L44:
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$108, %al
	jne	.L47
	movl	$4, -44(%rbp)
	addq	$1, -128(%rbp)
	jmp	.L48
.L47:
	movl	$2, -44(%rbp)
.L48:
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L46
.L43:
	movl	$4, -44(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L46
.L45:
	movl	$3, -44(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L46
.L41:
	movl	$5, -44(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	jmp	.L46
.L141:
	nop
.L46:
	movl	$6, -36(%rbp)
	jmp	.L6
.L11:
	movsbl	-1(%rbp), %eax
	cmpl	$120, %eax
	je	.L49
	cmpl	$120, %eax
	jg	.L142
	cmpl	$119, %eax
	je	.L51
	cmpl	$119, %eax
	jg	.L142
	cmpl	$117, %eax
	je	.L49
	cmpl	$117, %eax
	jg	.L142
	cmpl	$115, %eax
	je	.L52
	cmpl	$115, %eax
	jg	.L142
	cmpl	$112, %eax
	je	.L53
	cmpl	$112, %eax
	jg	.L142
	cmpl	$111, %eax
	je	.L49
	cmpl	$111, %eax
	jg	.L142
	cmpl	$110, %eax
	je	.L54
	cmpl	$110, %eax
	jg	.L142
	cmpl	$105, %eax
	je	.L55
	cmpl	$105, %eax
	jg	.L142
	cmpl	$103, %eax
	je	.L56
	cmpl	$103, %eax
	jg	.L142
	cmpl	$102, %eax
	je	.L57
	cmpl	$102, %eax
	jg	.L142
	cmpl	$101, %eax
	je	.L58
	cmpl	$101, %eax
	jg	.L142
	cmpl	$100, %eax
	je	.L55
	cmpl	$100, %eax
	jg	.L142
	cmpl	$99, %eax
	je	.L59
	cmpl	$99, %eax
	jg	.L142
	cmpl	$88, %eax
	je	.L60
	cmpl	$88, %eax
	jg	.L142
	cmpl	$71, %eax
	je	.L61
	cmpl	$71, %eax
	jg	.L142
	cmpl	$37, %eax
	je	.L62
	cmpl	$69, %eax
	je	.L63
	jmp	.L142
.L55:
	cmpl	$5, -44(%rbp)
	je	.L64
	cmpl	$5, -44(%rbp)
	jg	.L65
	cmpl	$4, -44(%rbp)
	je	.L66
	cmpl	$4, -44(%rbp)
	jg	.L65
	cmpl	$1, -44(%rbp)
	je	.L67
	cmpl	$2, -44(%rbp)
	je	.L68
	jmp	.L65
.L67:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L69
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L70
.L69:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L70:
	movl	(%rax), %eax
	movswq	%ax, %rax
	movq	%rax, -16(%rbp)
	jmp	.L71
.L68:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L72
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L73
.L72:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L73:
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L71
.L66:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L74
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L75
.L74:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L75:
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L71
.L64:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L76
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L77
.L76:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L77:
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L71
.L65:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L78
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L79
.L78:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L79:
	movl	(%rax), %eax
	cltq
	movq	%rax, -16(%rbp)
	nop
.L71:
	movq	-16(%rbp), %r8
	movq	-104(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	movl	-40(%rbp), %edi
	pushq	%rdi
	movl	-32(%rbp), %edi
	pushq	%rdi
	movl	-28(%rbp), %edi
	pushq	%rdi
	movl	$10, %r9d
	movq	%rax, %rdi
	call	fmtint
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L143
	movl	$0, %eax
	jmp	.L140
.L60:
	orl	$32, -40(%rbp)
.L49:
	orl	$64, -40(%rbp)
	cmpl	$5, -44(%rbp)
	je	.L82
	cmpl	$5, -44(%rbp)
	jg	.L83
	cmpl	$4, -44(%rbp)
	je	.L84
	cmpl	$4, -44(%rbp)
	jg	.L83
	cmpl	$1, -44(%rbp)
	je	.L85
	cmpl	$2, -44(%rbp)
	je	.L86
	jmp	.L83
.L85:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L87
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L88
.L87:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L88:
	movl	(%rax), %eax
	movzwl	%ax, %eax
	movq	%rax, -16(%rbp)
	jmp	.L89
.L86:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L90
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L91
.L90:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L91:
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L89
.L84:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L92
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L93
.L92:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L93:
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L89
.L82:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L94
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L95
.L94:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L95:
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L89
.L83:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L96
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L97
.L96:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L97:
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -16(%rbp)
	nop
.L89:
	cmpb	$111, -1(%rbp)
	je	.L98
	cmpb	$117, -1(%rbp)
	jne	.L99
	movl	$10, %r8d
	jmp	.L100
.L99:
	movl	$16, %r8d
	jmp	.L100
.L98:
	movl	$8, %r8d
.L100:
	movq	-16(%rbp), %r10
	movq	-104(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	movl	-40(%rbp), %edi
	pushq	%rdi
	movl	-32(%rbp), %edi
	pushq	%rdi
	movl	-28(%rbp), %edi
	pushq	%rdi
	movl	%r8d, %r9d
	movq	%r10, %r8
	movq	%rax, %rdi
	call	fmtint
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L144
	movl	$0, %eax
	jmp	.L140
.L57:
	cmpl	$3, -44(%rbp)
	jne	.L102
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L103
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L104
.L103:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L104:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.L105
.L102:
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L106
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L107
.L106:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L107:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
.L105:
	movl	-32(%rbp), %r9d
	movl	-28(%rbp), %r10d
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	pushq	$0
	movl	-40(%rbp), %r8d
	pushq	%r8
	movl	%r10d, %r8d
	movq	%rdi, %xmm0
	movq	%rax, %rdi
	call	fmtfp
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L145
	movl	$0, %eax
	jmp	.L140
.L63:
	orl	$32, -40(%rbp)
.L58:
	cmpl	$3, -44(%rbp)
	jne	.L109
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L110
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L111
.L110:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L111:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.L112
.L109:
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L113
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L114
.L113:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L114:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
.L112:
	movl	-32(%rbp), %r9d
	movl	-28(%rbp), %r10d
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	pushq	$1
	movl	-40(%rbp), %r8d
	pushq	%r8
	movl	%r10d, %r8d
	movq	%rdi, %xmm0
	movq	%rax, %rdi
	call	fmtfp
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L146
	movl	$0, %eax
	jmp	.L140
.L61:
	orl	$32, -40(%rbp)
.L56:
	cmpl	$3, -44(%rbp)
	jne	.L116
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L117
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L118
.L117:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L118:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.L119
.L116:
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L120
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L121
.L120:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L121:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
.L119:
	movl	-32(%rbp), %r9d
	movl	-28(%rbp), %r10d
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	pushq	$2
	movl	-40(%rbp), %r8d
	pushq	%r8
	movl	%r10d, %r8d
	movq	%rdi, %xmm0
	movq	%rax, %rdi
	call	fmtfp
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L147
	movl	$0, %eax
	jmp	.L140
.L59:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L123
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L124
.L123:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L124:
	movl	(%rax), %edi
	movq	-104(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L148
	movl	$0, %eax
	jmp	.L140
.L52:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L126
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L127
.L126:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L127:
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -32(%rbp)
	jns	.L128
	cmpq	$0, -96(%rbp)
	je	.L129
	movl	$2147483647, -32(%rbp)
	jmp	.L128
.L129:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -32(%rbp)
.L128:
	movl	-40(%rbp), %r9d
	movq	-56(%rbp), %r8
	movq	-104(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	-32(%rbp), %edi
	pushq	%rdi
	movl	-28(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	fmtstr
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L149
	movl	$0, %eax
	jmp	.L140
.L53:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L131
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L132
.L131:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L132:
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-40(%rbp), %eax
	orl	$8, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %r8
	movq	-104(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movl	-32(%rbp), %edi
	pushq	%rdi
	movl	-28(%rbp), %edi
	pushq	%rdi
	movl	$16, %r9d
	movq	%rax, %rdi
	call	fmtint
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L150
	movl	$0, %eax
	jmp	.L140
.L54:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L134
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	16(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	16(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L135
.L134:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	16(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L135:
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L81
.L62:
	movsbl	-1(%rbp), %edi
	movq	-104(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L151
	movl	$0, %eax
	jmp	.L140
.L51:
	addq	$1, -128(%rbp)
	jmp	.L81
.L142:
	nop
	jmp	.L81
.L143:
	nop
	jmp	.L81
.L144:
	nop
	jmp	.L81
.L145:
	nop
	jmp	.L81
.L146:
	nop
	jmp	.L81
.L147:
	nop
	jmp	.L81
.L148:
	nop
	jmp	.L81
.L149:
	nop
	jmp	.L81
.L150:
	nop
	jmp	.L81
.L151:
	nop
.L81:
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	$-1, -32(%rbp)
	jmp	.L6
.L10:
.L152:
	nop
.L6:
	cmpl	$7, -36(%rbp)
	jne	.L137
	cmpq	$0, -96(%rbp)
	jne	.L138
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	movl	%edx, (%rax)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L138
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
.L138:
	movq	-104(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L139
	movl	$0, %eax
	jmp	.L140
.L139:
	movq	-72(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	_dopr, .-_dopr
	.section	.rodata
.LC0:
	.string	"<NULL>"
	.text
	.type	fmtstr, @function
fmtstr:
.LFB161:
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
	movl	%r9d, -76(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L154
	leaq	.LC0(%rip), %rax
	movq	%rax, -72(%rbp)
.L154:
	cmpl	$0, 24(%rbp)
	js	.L155
	movl	24(%rbp), %eax
	cltq
	jmp	.L156
.L155:
	movq	$-1, %rax
.L156:
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_strnlen@PLT
	movq	%rax, -16(%rbp)
	movl	16(%rbp), %eax
	movq	-16(%rbp), %rdx
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, 16(%rbp)
	js	.L157
	cmpl	$0, -4(%rbp)
	jns	.L158
.L157:
	movl	$0, -4(%rbp)
.L158:
	cmpl	$0, 24(%rbp)
	js	.L159
	movl	$2147483647, %eax
	subl	-4(%rbp), %eax
	cmpl	%eax, 24(%rbp)
	jge	.L160
	movl	-4(%rbp), %eax
	addl	%eax, 24(%rbp)
	jmp	.L159
.L160:
	movl	$2147483647, 24(%rbp)
.L159:
	movl	-76(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L162
	negl	-4(%rbp)
	jmp	.L162
.L166:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$32, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L163
	movl	$0, %eax
	jmp	.L164
.L163:
	subl	$1, -4(%rbp)
	addl	$1, -20(%rbp)
.L162:
	cmpl	$0, -4(%rbp)
	jle	.L167
	cmpl	$0, 24(%rbp)
	js	.L166
	movl	-20(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L166
	jmp	.L167
.L170:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %edi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L168
	movl	$0, %eax
	jmp	.L164
.L168:
	subq	$1, -16(%rbp)
	addl	$1, -20(%rbp)
.L167:
	cmpq	$0, -16(%rbp)
	je	.L171
	cmpl	$0, 24(%rbp)
	js	.L170
	movl	-20(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L170
	jmp	.L171
.L174:
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$32, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L172
	movl	$0, %eax
	jmp	.L164
.L172:
	addl	$1, -4(%rbp)
	addl	$1, -20(%rbp)
.L171:
	cmpl	$0, -4(%rbp)
	jns	.L173
	cmpl	$0, 24(%rbp)
	js	.L174
	movl	-20(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L174
.L173:
	movl	$1, %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	fmtstr, .-fmtstr
	.section	.rodata
.LC1:
	.string	""
.LC2:
	.string	"0"
.LC3:
	.string	"0x"
.LC4:
	.string	"0123456789ABCDEF"
.LC5:
	.string	"0123456789abcdef"
	.text
	.type	fmtint, @function
fmtint:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	%r9d, -140(%rbp)
	movl	$0, -20(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	cmpl	$0, 24(%rbp)
	jns	.L176
	movl	$0, 24(%rbp)
.L176:
	movq	-136(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	32(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L177
	cmpq	$0, -136(%rbp)
	jns	.L178
	movl	$45, -20(%rbp)
	movq	-136(%rbp), %rax
	negq	%rax
	movq	%rax, -40(%rbp)
	jmp	.L177
.L178:
	movl	32(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L179
	movl	$43, -20(%rbp)
	jmp	.L177
.L179:
	movl	32(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L177
	movl	$32, -20(%rbp)
.L177:
	movl	32(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L180
	cmpl	$8, -140(%rbp)
	jne	.L181
	leaq	.LC2(%rip), %rax
	movq	%rax, -32(%rbp)
.L181:
	cmpl	$16, -140(%rbp)
	jne	.L180
	leaq	.LC3(%rip), %rax
	movq	%rax, -32(%rbp)
.L180:
	movl	32(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L186
	movl	$1, -56(%rbp)
.L186:
	cmpl	$0, -56(%rbp)
	je	.L183
	leaq	.LC4(%rip), %rcx
	jmp	.L184
.L183:
	leaq	.LC5(%rip), %rcx
.L184:
	movl	-140(%rbp), %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rax
	addq	%rax, %rcx
	movl	-44(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -44(%rbp)
	movzbl	(%rcx), %edx
	cltq
	movb	%dl, -96(%rbp,%rax)
	movl	-140(%rbp), %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	%rbx
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L185
	cmpl	$25, -44(%rbp)
	jle	.L186
.L185:
	cmpl	$26, -44(%rbp)
	jne	.L187
	subl	$1, -44(%rbp)
.L187:
	movl	-44(%rbp), %eax
	cltq
	movb	$0, -96(%rbp,%rax)
	movl	24(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	24(%rbp), %edx
	movl	-44(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	16(%rbp), %edx
	subl	%eax, %edx
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	%ebx, %eax
	subl	%edx, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L188
	movl	$0, -52(%rbp)
.L188:
	cmpl	$0, -48(%rbp)
	jns	.L189
	movl	$0, -48(%rbp)
.L189:
	movl	32(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L190
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	$0, -48(%rbp)
.L190:
	movl	32(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L192
	negl	-48(%rbp)
	jmp	.L192
.L195:
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$32, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L193
	movl	$0, %eax
	jmp	.L209
.L193:
	subl	$1, -48(%rbp)
.L192:
	cmpl	$0, -48(%rbp)
	jg	.L195
	cmpl	$0, -20(%rbp)
	je	.L197
	movl	-20(%rbp), %edi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L197
	movl	$0, %eax
	jmp	.L209
.L199:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L198
	movl	$0, %eax
	jmp	.L209
.L198:
	addq	$1, -32(%rbp)
.L197:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L199
	cmpl	$0, -52(%rbp)
	jle	.L204
	jmp	.L201
.L203:
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$48, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L202
	movl	$0, %eax
	jmp	.L209
.L202:
	subl	$1, -52(%rbp)
.L201:
	cmpl	$0, -52(%rbp)
	jg	.L203
	jmp	.L204
.L205:
	subl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	movsbl	%al, %edi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L204
	movl	$0, %eax
	jmp	.L209
.L204:
	cmpl	$0, -44(%rbp)
	jg	.L205
	jmp	.L206
.L208:
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	$32, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L207
	movl	$0, %eax
	jmp	.L209
.L207:
	addl	$1, -48(%rbp)
.L206:
	cmpl	$0, -48(%rbp)
	js	.L208
	movl	$1, %eax
.L209:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	fmtint, .-fmtint
	.type	abs_val, @function
abs_val:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-24(%rbp), %xmm0
	jbe	.L211
	movsd	-24(%rbp), %xmm0
	movq	.LC7(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.L211:
	movsd	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L213
	movsd	-8(%rbp), %xmm0
	movsd	.LC8(%rip), %xmm1
	divsd	%xmm1, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jp	.L213
	ucomisd	-8(%rbp), %xmm0
	jne	.L213
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L216
.L213:
	movsd	-8(%rbp), %xmm0
	ucomisd	-8(%rbp), %xmm0
	jnp	.L216
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.L216:
	movsd	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	abs_val, .-abs_val
	.type	pow_10, @function
pow_10:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L224
.L225:
	movsd	-8(%rbp), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	subl	$1, -20(%rbp)
.L224:
	cmpl	$0, -20(%rbp)
	jne	.L225
	movsd	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	pow_10, .-pow_10
	.type	roundv, @function
roundv:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-8(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	comisd	.LC11(%rip), %xmm0
	jb	.L228
	addq	$1, -8(%rbp)
.L228:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	roundv, .-roundv
	.section	.rodata
.LC15:
	.string	"0123456789"
	.text
	.type	fmtfp, @function
fmtfp:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movsd	%xmm0, -232(%rbp)
	movl	%r8d, -236(%rbp)
	movl	%r9d, -240(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -56(%rbp)
	cmpl	$0, -240(%rbp)
	jns	.L233
	movl	$6, -240(%rbp)
.L233:
	pxor	%xmm0, %xmm0
	comisd	-232(%rbp), %xmm0
	jbe	.L328
	movl	$45, -4(%rbp)
	jmp	.L236
.L328:
	movl	16(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L237
	movl	$43, -4(%rbp)
	jmp	.L236
.L237:
	movl	16(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L236
	movl	$32, -4(%rbp)
.L236:
	movq	-232(%rbp), %rax
	movq	%rax, %xmm0
	call	abs_val
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jp	.L238
	pxor	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jne	.L238
	pxor	%xmm0, %xmm0
	ucomisd	-232(%rbp), %xmm0
	jp	.L323
	pxor	%xmm0, %xmm0
	ucomisd	-232(%rbp), %xmm0
	je	.L238
.L323:
	movl	$63, -4(%rbp)
.L238:
	cmpl	$2, 24(%rbp)
	jne	.L241
	pxor	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jp	.L242
	pxor	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jne	.L242
	movl	$0, -76(%rbp)
	jmp	.L251
.L242:
	movsd	.LC12(%rip), %xmm0
	comisd	-16(%rbp), %xmm0
	jbe	.L329
	movl	$1, -76(%rbp)
	jmp	.L251
.L329:
	cmpl	$0, -240(%rbp)
	jne	.L247
	movsd	-16(%rbp), %xmm0
	comisd	.LC10(%rip), %xmm0
	jnb	.L248
.L247:
	cmpl	$0, -240(%rbp)
	jle	.L249
	movl	-240(%rbp), %eax
	movl	%eax, %edi
	call	pow_10
	movsd	-16(%rbp), %xmm1
	comisd	%xmm0, %xmm1
	jb	.L249
.L248:
	movl	$1, -76(%rbp)
	jmp	.L251
.L249:
	movl	$0, -76(%rbp)
	jmp	.L251
.L241:
	movl	24(%rbp), %eax
	movl	%eax, -76(%rbp)
.L251:
	cmpl	$0, 24(%rbp)
	je	.L252
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jp	.L255
	pxor	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	je	.L253
	jmp	.L255
.L256:
	movsd	-24(%rbp), %xmm1
	movsd	.LC10(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	subq	$1, -56(%rbp)
.L255:
	movsd	.LC9(%rip), %xmm0
	comisd	-24(%rbp), %xmm0
	ja	.L256
	jmp	.L257
.L258:
	movsd	-24(%rbp), %xmm0
	movsd	.LC10(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	addq	$1, -56(%rbp)
.L257:
	movsd	-24(%rbp), %xmm0
	comisd	.LC10(%rip), %xmm0
	ja	.L258
.L253:
	cmpl	$2, 24(%rbp)
	jne	.L259
	cmpl	$0, -240(%rbp)
	jne	.L260
	movl	$1, -240(%rbp)
.L260:
	cmpl	$0, -76(%rbp)
	jne	.L261
	movl	-240(%rbp), %eax
	movq	-56(%rbp), %rdx
	subl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	jns	.L259
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	movl	$0, %eax
	jmp	.L320
.L261:
	subl	$1, -240(%rbp)
.L259:
	cmpl	$1, -76(%rbp)
	jne	.L252
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.L252:
	movsd	-16(%rbp), %xmm0
	comisd	.LC13(%rip), %xmm0
	jb	.L330
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	movl	$0, %eax
	jmp	.L320
.L330:
	movsd	-16(%rbp), %xmm0
	comisd	.LC14(%rip), %xmm0
	jnb	.L265
	movsd	-16(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	jmp	.L266
.L265:
	movsd	-16(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, -64(%rbp)
.L266:
	movq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpl	$9, -240(%rbp)
	jle	.L267
	movl	$9, -240(%rbp)
.L267:
	movl	-240(%rbp), %eax
	movl	%eax, %edi
	call	pow_10
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	roundv
	movq	%rax, -96(%rbp)
	movl	-240(%rbp), %eax
	movl	%eax, %edi
	call	pow_10
	movapd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	js	.L268
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L269
.L268:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L269:
	movsd	-16(%rbp), %xmm2
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	roundv
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jb	.L272
	addq	$1, -64(%rbp)
	movq	-96(%rbp), %rax
	subq	%rax, -72(%rbp)
.L272:
	movq	-64(%rbp), %rcx
	movabsq	$-3689348814741910323, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movl	-28(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -28(%rbp)
	leaq	.LC15(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	cltq
	movb	%dl, -128(%rbp,%rax)
	movq	-64(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L271
	cmpl	$19, -28(%rbp)
	jle	.L272
.L271:
	cmpl	$20, -28(%rbp)
	jne	.L273
	subl	$1, -28(%rbp)
.L273:
	movl	-28(%rbp), %eax
	cltq
	movb	$0, -128(%rbp,%rax)
	jmp	.L274
.L278:
	cmpl	$2, 24(%rbp)
	jne	.L275
	cmpl	$0, -32(%rbp)
	jne	.L275
	movq	-72(%rbp), %rcx
	movabsq	$-3689348814741910323, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	testq	%rdx, %rdx
	jne	.L275
	subl	$1, -240(%rbp)
	movq	-72(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, -72(%rbp)
	movl	-32(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jge	.L331
	jmp	.L274
.L275:
	movq	-72(%rbp), %rcx
	movabsq	$-3689348814741910323, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movl	-32(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -32(%rbp)
	leaq	.LC15(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	cltq
	movb	%dl, -160(%rbp,%rax)
	movq	-72(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, -72(%rbp)
.L274:
	movl	-32(%rbp), %eax
	cmpl	-240(%rbp), %eax
	jl	.L278
	jmp	.L277
.L331:
	nop
.L277:
	movl	-32(%rbp), %eax
	cltq
	movb	$0, -160(%rbp,%rax)
	cmpl	$1, -76(%rbp)
	jne	.L279
	cmpq	$0, -56(%rbp)
	jns	.L280
	movq	-56(%rbp), %rax
	negl	%eax
	movl	%eax, -80(%rbp)
	jmp	.L283
.L280:
	movq	-56(%rbp), %rax
	movl	%eax, -80(%rbp)
.L283:
	movl	-80(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-36(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movslq	%edx, %rdx
	leaq	.LC15(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	cltq
	movb	%dl, -192(%rbp,%rax)
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$2, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	jle	.L282
	cmpl	$19, -36(%rbp)
	jle	.L283
.L282:
	cmpl	$0, -80(%rbp)
	jle	.L284
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	movl	$0, %eax
	jmp	.L320
.L284:
	cmpl	$1, -36(%rbp)
	jne	.L279
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	cltq
	movb	$48, -192(%rbp,%rax)
.L279:
	movl	-236(%rbp), %eax
	subl	-28(%rbp), %eax
	subl	-240(%rbp), %eax
	movl	%eax, %edx
	cmpl	$0, -240(%rbp)
	setg	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, -40(%rbp)
	cmpl	$1, -76(%rbp)
	jne	.L285
	movl	-36(%rbp), %eax
	addl	$2, %eax
	subl	%eax, -40(%rbp)
.L285:
	movl	-240(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L286
	movl	$0, -44(%rbp)
.L286:
	cmpl	$0, -40(%rbp)
	jns	.L287
	movl	$0, -40(%rbp)
.L287:
	movl	16(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L288
	negl	-40(%rbp)
.L288:
	movl	16(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L295
	cmpl	$0, -40(%rbp)
	jle	.L295
	cmpl	$0, -4(%rbp)
	je	.L292
	movl	-4(%rbp), %edi
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L291
	movl	$0, %eax
	jmp	.L320
.L291:
	subl	$1, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L292
.L294:
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$48, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L293
	movl	$0, %eax
	jmp	.L320
.L293:
	subl	$1, -40(%rbp)
.L292:
	cmpl	$0, -40(%rbp)
	jg	.L294
	jmp	.L295
.L297:
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$32, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L296
	movl	$0, %eax
	jmp	.L320
.L296:
	subl	$1, -40(%rbp)
.L295:
	cmpl	$0, -40(%rbp)
	jg	.L297
	cmpl	$0, -4(%rbp)
	je	.L299
	movl	-4(%rbp), %edi
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L299
	movl	$0, %eax
	jmp	.L320
.L300:
	subl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	movzbl	-128(%rbp,%rax), %eax
	movsbl	%al, %edi
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L299
	movl	$0, %eax
	jmp	.L320
.L299:
	cmpl	$0, -28(%rbp)
	jg	.L300
	cmpl	$0, -240(%rbp)
	jg	.L301
	movl	16(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L306
.L301:
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$46, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L304
	movl	$0, %eax
	jmp	.L320
.L305:
	subl	$1, -32(%rbp)
	movl	-32(%rbp), %eax
	cltq
	movzbl	-160(%rbp,%rax), %eax
	movsbl	%al, %edi
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L304
	movl	$0, %eax
	jmp	.L320
.L304:
	cmpl	$0, -32(%rbp)
	jg	.L305
	jmp	.L306
.L308:
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$48, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L307
	movl	$0, %eax
	jmp	.L320
.L307:
	subl	$1, -44(%rbp)
.L306:
	cmpl	$0, -44(%rbp)
	jg	.L308
	cmpl	$1, -76(%rbp)
	jne	.L317
	movl	16(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L310
	movb	$101, -81(%rbp)
	jmp	.L311
.L310:
	movb	$69, -81(%rbp)
.L311:
	movsbl	-81(%rbp), %edi
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L312
	movl	$0, %eax
	jmp	.L320
.L312:
	cmpq	$0, -56(%rbp)
	jns	.L313
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$45, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L315
	movl	$0, %eax
	jmp	.L320
.L313:
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$43, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L315
	movl	$0, %eax
	jmp	.L320
.L316:
	subl	$1, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	movzbl	-192(%rbp,%rax), %eax
	movsbl	%al, %edi
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L315
	movl	$0, %eax
	jmp	.L320
.L315:
	cmpl	$0, -36(%rbp)
	jg	.L316
	jmp	.L317
.L319:
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$32, %r8d
	movq	%rax, %rdi
	call	doapr_outch
	testl	%eax, %eax
	jne	.L318
	movl	$0, %eax
	jmp	.L320
.L318:
	addl	$1, -40(%rbp)
.L317:
	cmpl	$0, -40(%rbp)
	js	.L319
	movl	$1, %eax
.L320:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	fmtfp, .-fmtfp
	.section	.rodata
.LC16:
	.string	"../crypto/bio/bio_print.c"
	.text
	.type	doapr_outch, @function
doapr_outch:
.LFB167:
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
	movl	%r8d, -52(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L333
	cmpq	$0, -32(%rbp)
	je	.L334
.L333:
	movl	$1, %eax
	jmp	.L335
.L334:
	movl	$0, %eax
.L335:
	cltq
	testq	%rax, %rax
	jne	.L336
	movl	$0, %eax
	jmp	.L337
.L336:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rdx
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L338
	movl	$0, %eax
	jmp	.L337
.L338:
	cmpq	$0, -32(%rbp)
	je	.L339
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L339
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$2147482623, %rax
	jbe	.L340
	movl	$0, %eax
	jmp	.L337
.L340:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	1024(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L341
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rcx
	movl	$855, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L342
	movl	$0, %eax
	jmp	.L337
.L342:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L343
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L344
	movl	$0, %eax
	jmp	.L337
.L344:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L343:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L339
.L341:
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	movl	$866, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L345
	movl	$0, %eax
	jmp	.L337
.L345:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L339:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L346
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L347
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	addq	%rsi, %rax
	movl	-52(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L346
.L347:
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	addq	%rsi, %rax
	movl	-52(%rbp), %edx
	movb	%dl, (%rax)
.L346:
	movl	$1, %eax
.L337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	doapr_outch, .-doapr_outch
	.globl	BIO_printf
	.type	BIO_printf, @function
BIO_printf:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L351
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L351:
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_vprintf@PLT
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BIO_printf, .-BIO_printf
	.globl	BIO_vprintf
	.type	BIO_vprintf, @function
BIO_vprintf:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2128, %rsp
	movq	%rdi, -2104(%rbp)
	movq	%rsi, -2112(%rbp)
	movq	%rdx, -2120(%rbp)
	leaq	-2064(%rbp), %rax
	movq	%rax, -2072(%rbp)
	movq	$2048, -2080(%rbp)
	movq	$0, -2088(%rbp)
	movq	$0, -2088(%rbp)
	movq	-2112(%rbp), %r8
	leaq	-2092(%rbp), %rdi
	leaq	-16(%rbp), %rcx
	leaq	-2080(%rbp), %rdx
	leaq	-2088(%rbp), %rsi
	leaq	-2072(%rbp), %rax
	subq	$8, %rsp
	pushq	-2120(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_dopr
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L353
	movq	-2088(%rbp), %rax
	leaq	.LC16(%rip), %rcx
	movl	$913, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$-1, %eax
	jmp	.L357
.L353:
	movq	-2088(%rbp), %rax
	testq	%rax, %rax
	je	.L355
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-2088(%rbp), %rcx
	movq	-2104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -4(%rbp)
	movq	-2088(%rbp), %rax
	leaq	.LC16(%rip), %rcx
	movl	$918, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L356
.L355:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	leaq	-2064(%rbp), %rcx
	movq	-2104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -4(%rbp)
.L356:
	movl	-4(%rbp), %eax
.L357:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	BIO_vprintf, .-BIO_vprintf
	.globl	BIO_snprintf
	.type	BIO_snprintf, @function
BIO_snprintf:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L361
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L361:
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_vsnprintf@PLT
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	BIO_snprintf, .-BIO_snprintf
	.globl	BIO_vsnprintf
	.type	BIO_vsnprintf, @function
BIO_vsnprintf:
.LFB171:
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
	movq	-40(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	leaq	-8(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	_dopr
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L363
	movl	$-1, %eax
	jmp	.L368
.L363:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L365
	movl	$-1, %eax
	jmp	.L368
.L365:
	movq	-8(%rbp), %rax
	cmpq	$2147483647, %rax
	ja	.L366
	movq	-8(%rbp), %rax
	jmp	.L368
.L366:
	movl	$-1, %eax
.L368:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BIO_vsnprintf, .-BIO_vsnprintf
	.section	.rodata
	.align 16
.LC7:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC8:
	.long	0
	.long	1073741824
	.align 8
.LC9:
	.long	0
	.long	1072693248
	.align 8
.LC10:
	.long	0
	.long	1076101120
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 8
.LC12:
	.long	-350469331
	.long	1058682594
	.align 8
.LC13:
	.long	0
	.long	1139802112
	.align 8
.LC14:
	.long	0
	.long	1138753536
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
