	.file	"a_time.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB411:
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
.LFE411:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB412:
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
.LFE412:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	ASN1_TIME_it
	.type	ASN1_TIME_it, @function
ASN1_TIME_it:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	ASN1_TIME_it, .-ASN1_TIME_it
	.globl	d2i_ASN1_TIME
	.type	d2i_ASN1_TIME, @function
d2i_ASN1_TIME:
.LFB509:
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
	call	ASN1_TIME_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	d2i_ASN1_TIME, .-d2i_ASN1_TIME
	.globl	i2d_ASN1_TIME
	.type	i2d_ASN1_TIME, @function
i2d_ASN1_TIME:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_TIME_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	i2d_ASN1_TIME, .-i2d_ASN1_TIME
	.globl	ASN1_TIME_new
	.type	ASN1_TIME_new, @function
ASN1_TIME_new:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASN1_TIME_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	ASN1_TIME_new, .-ASN1_TIME_new
	.globl	ASN1_TIME_free
	.type	ASN1_TIME_free, @function
ASN1_TIME_free:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_TIME_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	ASN1_TIME_free, .-ASN1_TIME_free
	.globl	ASN1_TIME_dup
	.type	ASN1_TIME_dup, @function
ASN1_TIME_dup:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_TIME_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	ASN1_TIME_dup, .-ASN1_TIME_dup
	.type	is_utc, @function
is_utc:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$49, -4(%rbp)
	jle	.L17
	cmpl	$149, -4(%rbp)
	jg	.L17
	movl	$1, %eax
	jmp	.L18
.L17:
	movl	$0, %eax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	is_utc, .-is_utc
	.type	leap_year, @function
leap_year:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$400, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	je	.L20
	movl	-4(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	sarl	$5, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$100, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	je	.L21
	movl	-4(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L21
.L20:
	movl	$1, %eax
	jmp	.L22
.L21:
	movl	$0, %eax
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	leap_year, .-leap_year
	.type	determine_days, @function
determine_days:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	addl	$1900, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	ydays.4(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	cmpl	$1, -8(%rbp)
	jle	.L24
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	leap_year
	movq	-24(%rbp), %rdx
	movl	28(%rdx), %edx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	addl	$2, -8(%rbp)
	jmp	.L25
.L24:
	addl	$14, -8(%rbp)
	subl	$1, -4(%rbp)
.L25:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	subl	%edx, %ecx
	imull	$100, %ecx, %edx
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	%edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	addl	%eax, %ecx
	movl	-16(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	addl	%eax, %ecx
	movl	-16(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$6, %eax
	movslq	%eax, %rdx
	imulq	$-1840700269, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$2, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sall	$3, %ecx
	subl	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	determine_days, .-determine_days
	.globl	ossl_asn1_time_to_tm
	.type	ossl_asn1_time_to_tm, @function
ossl_asn1_time_to_tm:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	$0, -36(%rbp)
	movl	$6, -40(%rbp)
	movl	$5, -44(%rbp)
	movb	$90, -57(%rbp)
	movb	$48, -58(%rbp)
	movb	$46, -59(%rbp)
	movb	$45, -60(%rbp)
	movb	$43, -61(%rbp)
	movq	-160(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	jne	.L27
	movl	$13, -32(%rbp)
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L28
	movl	$1, -36(%rbp)
	jmp	.L28
.L27:
	movq	-160(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$24, %eax
	jne	.L29
	movl	$7, -40(%rbp)
	movl	$6, -44(%rbp)
	movl	$15, -32(%rbp)
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L28
	movl	$1, -36(%rbp)
	jmp	.L28
.L29:
	movl	$0, %eax
	jmp	.L87
.L28:
	movq	-160(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -28(%rbp)
	leaq	-144(%rbp), %rax
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-68(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L88
	movl	$0, -20(%rbp)
	jmp	.L33
.L60:
	cmpl	$0, -36(%rbp)
	jne	.L34
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.L34
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -57(%rbp)
	je	.L35
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -61(%rbp)
	je	.L35
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -60(%rbp)
	jne	.L34
.L35:
	addl	$1, -20(%rbp)
	jmp	.L36
.L34:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_ascii_isdigit@PLT
	testl	%eax, %eax
	je	.L89
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movsbl	-58(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -84(%rbp)
	addl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.L90
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_ascii_isdigit@PLT
	testl	%eax, %eax
	je	.L91
	movl	-84(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leal	(%rcx,%rax), %edx
	movsbl	-58(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -84(%rbp)
	addl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.L92
	movq	-160(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	jne	.L41
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L42
.L41:
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.L42:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	min.3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -84(%rbp)
	jl	.L93
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	max.2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -84(%rbp)
	jg	.L93
	cmpl	$6, -24(%rbp)
	je	.L45
	cmpl	$6, -24(%rbp)
	jg	.L46
	cmpl	$5, -24(%rbp)
	je	.L47
	cmpl	$5, -24(%rbp)
	jg	.L46
	cmpl	$4, -24(%rbp)
	je	.L48
	cmpl	$4, -24(%rbp)
	jg	.L46
	cmpl	$3, -24(%rbp)
	je	.L49
	cmpl	$3, -24(%rbp)
	jg	.L46
	cmpl	$2, -24(%rbp)
	je	.L50
	cmpl	$2, -24(%rbp)
	jg	.L46
	cmpl	$0, -24(%rbp)
	je	.L51
	cmpl	$1, -24(%rbp)
	je	.L52
	jmp	.L46
.L51:
	movl	-84(%rbp), %eax
	subl	$19, %eax
	imull	$100, %eax, %eax
	movl	%eax, -124(%rbp)
	jmp	.L46
.L52:
	movq	-160(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	jne	.L53
	cmpl	$49, -84(%rbp)
	jg	.L54
	movl	-84(%rbp), %eax
	addl	$100, %eax
	jmp	.L55
.L54:
	movl	-84(%rbp), %eax
.L55:
	movl	%eax, -124(%rbp)
	jmp	.L46
.L53:
	movl	-124(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -124(%rbp)
	jmp	.L46
.L50:
	movl	-84(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.L46
.L49:
	movl	-128(%rbp), %eax
	cmpl	$1, %eax
	jne	.L57
	movl	4+mdays.1(%rip), %ebx
	movl	-124(%rbp), %eax
	addl	$1900, %eax
	movl	%eax, %edi
	call	leap_year
	addl	%ebx, %eax
	movl	%eax, -48(%rbp)
	jmp	.L58
.L57:
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	mdays.1(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -48(%rbp)
.L58:
	movl	-84(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.L94
	movl	-84(%rbp), %eax
	movl	%eax, -132(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	determine_days
	jmp	.L46
.L48:
	movl	-84(%rbp), %eax
	movl	%eax, -136(%rbp)
	jmp	.L46
.L47:
	movl	-84(%rbp), %eax
	movl	%eax, -140(%rbp)
	jmp	.L46
.L45:
	movl	-84(%rbp), %eax
	movl	%eax, -144(%rbp)
	nop
.L46:
	addl	$1, -20(%rbp)
.L33:
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L60
.L36:
	movq	-160(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$24, %eax
	jne	.L61
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -59(%rbp)
	jne	.L61
	cmpl	$0, -36(%rbp)
	jne	.L95
	addl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.L96
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L64
.L66:
	addl	$1, -28(%rbp)
.L64:
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.L65
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_ascii_isdigit@PLT
	testl	%eax, %eax
	jne	.L66
.L65:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L97
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.L98
.L61:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -57(%rbp)
	jne	.L68
	addl	$1, -28(%rbp)
	jmp	.L69
.L68:
	cmpl	$0, -36(%rbp)
	jne	.L99
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -61(%rbp)
	je	.L71
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -60(%rbp)
	jne	.L99
.L71:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -60(%rbp)
	jne	.L72
	movl	$1, -52(%rbp)
	jmp	.L73
.L72:
	movl	$-1, -52(%rbp)
.L73:
	movl	$0, -56(%rbp)
	addl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$4, %eax
	cmpl	%eax, -68(%rbp)
	jne	.L100
	movl	-40(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L75
.L84:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_ascii_isdigit@PLT
	testl	%eax, %eax
	je	.L101
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movsbl	-58(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -84(%rbp)
	addl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_ascii_isdigit@PLT
	testl	%eax, %eax
	je	.L102
	movl	-84(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leal	(%rcx,%rax), %edx
	movsbl	-58(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -84(%rbp)
	movq	-160(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	jne	.L78
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L79
.L78:
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.L79:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	min.3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -84(%rbp)
	jl	.L103
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	max.2(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -84(%rbp)
	jg	.L103
	cmpq	$0, -152(%rbp)
	je	.L82
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	.L83
	movl	-84(%rbp), %eax
	imull	$3600, %eax, %eax
	movl	%eax, -56(%rbp)
	jmp	.L82
.L83:
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jne	.L82
	movl	-84(%rbp), %eax
	imull	$60, %eax, %eax
	addl	%eax, -56(%rbp)
.L82:
	addl	$1, -28(%rbp)
	addl	$1, -20(%rbp)
.L75:
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jle	.L84
	cmpl	$0, -56(%rbp)
	je	.L104
	movl	-56(%rbp), %eax
	imull	-52(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_gmtime_adj@PLT
	testl	%eax, %eax
	je	.L105
.L104:
	nop
.L69:
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jne	.L106
	cmpq	$0, -152(%rbp)
	je	.L86
	movq	-152(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-96(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L86:
	movl	$1, %eax
	jmp	.L87
.L88:
	nop
	jmp	.L32
.L89:
	nop
	jmp	.L32
.L90:
	nop
	jmp	.L32
.L91:
	nop
	jmp	.L32
.L92:
	nop
	jmp	.L32
.L93:
	nop
	jmp	.L32
.L94:
	nop
	jmp	.L32
.L95:
	nop
	jmp	.L32
.L96:
	nop
	jmp	.L32
.L97:
	nop
	jmp	.L32
.L98:
	nop
	jmp	.L32
.L99:
	nop
	jmp	.L32
.L100:
	nop
	jmp	.L32
.L101:
	nop
	jmp	.L32
.L102:
	nop
	jmp	.L32
.L103:
	nop
	jmp	.L32
.L105:
	nop
	jmp	.L32
.L106:
	nop
.L32:
	movl	$0, %eax
.L87:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	ossl_asn1_time_to_tm, .-ossl_asn1_time_to_tm
	.section	.rodata
.LC0:
	.string	"%04d%02d%02d%02d%02d%02dZ"
.LC1:
	.string	"%02d%02d%02d%02d%02d%02dZ"
	.text
	.globl	ossl_asn1_time_from_tm
	.type	ossl_asn1_time_from_tm, @function
ossl_asn1_time_from_tm:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	$0, -8(%rbp)
	movq	$20, -16(%rbp)
	cmpl	$-1, -52(%rbp)
	jne	.L108
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edi
	call	is_utc
	testl	%eax, %eax
	je	.L109
	movl	$23, -52(%rbp)
	jmp	.L110
.L109:
	movl	$24, -52(%rbp)
	jmp	.L110
.L108:
	cmpl	$23, -52(%rbp)
	jne	.L111
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edi
	call	is_utc
	testl	%eax, %eax
	jne	.L110
	jmp	.L112
.L111:
	cmpl	$24, -52(%rbp)
	jne	.L123
.L110:
	cmpq	$0, -40(%rbp)
	jne	.L113
	call	ASN1_STRING_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.L114
.L113:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.L114:
	cmpq	$0, -8(%rbp)
	jne	.L115
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	je	.L124
	movq	-8(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2147483647, %eax
	je	.L125
	cmpl	$24, -52(%rbp)
	jne	.L119
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$2147481747, %eax
	jg	.L126
	movq	-48(%rbp), %rax
	movl	(%rax), %r9d
	movq	-48(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-48(%rbp), %rax
	movl	8(%rax), %edi
	movq	-48(%rbp), %rax
	movl	12(%rax), %r10d
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %r11d
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	leal	1900(%rax), %ecx
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movl	%r10d, %r9d
	movl	%r11d, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$32, %rsp
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	jmp	.L121
.L119:
	movq	-48(%rbp), %rax
	movl	(%rax), %r9d
	movq	-48(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	12(%rax), %r10d
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %r11d
	movq	-48(%rbp), %rax
	movl	20(%rax), %edx
	movslq	%edx, %rax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	sarl	$5, %eax
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%esi, %eax
	imull	$100, %eax, %esi
	movl	%edx, %eax
	subl	%esi, %eax
	leaq	.LC1(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	subq	$8, %rsp
	pushq	%r9
	pushq	%r8
	pushq	%rcx
	movl	%r10d, %r9d
	movl	%r11d, %r8d
	movl	%eax, %ecx
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$32, %rsp
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
.L121:
	movq	-8(%rbp), %rax
	jmp	.L116
.L123:
	nop
	jmp	.L112
.L124:
	nop
	jmp	.L112
.L125:
	nop
	jmp	.L112
.L126:
	nop
.L112:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L122
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
.L122:
	movl	$0, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	ossl_asn1_time_from_tm, .-ossl_asn1_time_from_tm
	.globl	ASN1_TIME_set
	.type	ASN1_TIME_set, @function
ASN1_TIME_set:
.LFB519:
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
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ASN1_TIME_adj@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	ASN1_TIME_set, .-ASN1_TIME_set
	.section	.rodata
.LC2:
	.string	"../crypto/asn1/a_time.c"
	.text
	.globl	ASN1_TIME_adj
	.type	ASN1_TIME_adj, @function
ASN1_TIME_adj:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_gmtime@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L130
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L134
.L130:
	cmpl	$0, -84(%rbp)
	jne	.L132
	cmpq	$0, -96(%rbp)
	je	.L133
.L132:
	movq	-96(%rbp), %rdx
	movl	-84(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OPENSSL_gmtime_adj@PLT
	testl	%eax, %eax
	jne	.L133
	movl	$0, %eax
	jmp	.L134
.L133:
	movq	-8(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_time_from_tm@PLT
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	ASN1_TIME_adj, .-ASN1_TIME_adj
	.globl	ASN1_TIME_check
	.type	ASN1_TIME_check, @function
ASN1_TIME_check:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$24, %eax
	jne	.L136
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_check@PLT
	jmp	.L137
.L136:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$23, %eax
	jne	.L138
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTCTIME_check@PLT
	jmp	.L137
.L138:
	movl	$0, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	ASN1_TIME_check, .-ASN1_TIME_check
	.globl	ASN1_TIME_to_generalizedtime
	.type	ASN1_TIME_to_generalizedtime, @function
ASN1_TIME_to_generalizedtime:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -8(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_to_tm@PLT
	testl	%eax, %eax
	jne	.L140
	movl	$0, %eax
	jmp	.L144
.L140:
	cmpq	$0, -80(%rbp)
	je	.L142
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L142:
	leaq	-64(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_time_from_tm@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L143
	cmpq	$0, -8(%rbp)
	je	.L143
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L143:
	movq	-8(%rbp), %rax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	ASN1_TIME_to_generalizedtime, .-ASN1_TIME_to_generalizedtime
	.globl	ASN1_TIME_set_string
	.type	ASN1_TIME_set_string, @function
ASN1_TIME_set_string:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_UTCTIME_set_string@PLT
	testl	%eax, %eax
	je	.L146
	movl	$1, %eax
	jmp	.L147
.L146:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_set_string@PLT
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	ASN1_TIME_set_string, .-ASN1_TIME_set_string
	.globl	ASN1_TIME_set_string_X509
	.type	ASN1_TIME_set_string_X509, @function
ASN1_TIME_set_string_X509:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	$0, -4(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -32(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$256, -16(%rbp)
	movl	$23, -28(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_check@PLT
	testl	%eax, %eax
	jne	.L149
	movl	$24, -28(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_check@PLT
	testl	%eax, %eax
	je	.L157
.L149:
	cmpq	$0, -104(%rbp)
	je	.L151
	movl	-28(%rbp), %eax
	cmpl	$24, %eax
	jne	.L151
	leaq	-32(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_time_to_tm@PLT
	testl	%eax, %eax
	je	.L158
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	is_utc
	testl	%eax, %eax
	je	.L151
	movl	-32(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	.LC2(%rip), %rcx
	movl	$426, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L159
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$23, -28(%rbp)
.L151:
	cmpq	$0, -104(%rbp)
	je	.L154
	leaq	-32(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_copy@PLT
	testl	%eax, %eax
	je	.L155
.L154:
	movl	$1, -4(%rbp)
.L155:
	movq	-24(%rbp), %rax
	cmpq	%rax, -112(%rbp)
	je	.L160
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movl	$438, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L150
.L157:
	nop
	jmp	.L150
.L158:
	nop
	jmp	.L150
.L159:
	nop
	jmp	.L150
.L160:
	nop
.L150:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	ASN1_TIME_set_string_X509, .-ASN1_TIME_set_string_X509
	.globl	ASN1_TIME_to_tm
	.type	ASN1_TIME_to_tm, @function
ASN1_TIME_to_tm:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L162
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	time@PLT
	movq	-32(%rbp), %rax
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_gmtime@PLT
	testq	%rax, %rax
	je	.L163
	movl	$1, %eax
	jmp	.L165
.L163:
	movl	$0, %eax
	jmp	.L165
.L162:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_time_to_tm@PLT
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	ASN1_TIME_to_tm, .-ASN1_TIME_to_tm
	.globl	ASN1_TIME_diff
	.type	ASN1_TIME_diff, @function
ASN1_TIME_diff:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_to_tm@PLT
	testl	%eax, %eax
	jne	.L167
	movl	$0, %eax
	jmp	.L170
.L167:
	leaq	-128(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_to_tm@PLT
	testl	%eax, %eax
	jne	.L169
	movl	$0, %eax
	jmp	.L170
.L169:
	leaq	-128(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_gmtime_diff@PLT
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	ASN1_TIME_diff, .-ASN1_TIME_diff
	.section	.rodata
	.align 32
	.type	_asn1_mon, @object
	.size	_asn1_mon, 48
_asn1_mon:
	.string	"Jan"
	.string	"Feb"
	.string	"Mar"
	.string	"Apr"
	.string	"May"
	.string	"Jun"
	.string	"Jul"
	.string	"Aug"
	.string	"Sep"
	.string	"Oct"
	.string	"Nov"
	.string	"Dec"
	.text
	.globl	ASN1_TIME_print
	.type	ASN1_TIME_print, @function
ASN1_TIME_print:
.LFB527:
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
	call	ASN1_TIME_print_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	ASN1_TIME_print, .-ASN1_TIME_print
	.globl	ASN1_TIME_print_ex
	.type	ASN1_TIME_print_ex, @function
ASN1_TIME_print_ex:
.LFB528:
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
	call	ossl_asn1_time_print_ex@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	ASN1_TIME_print_ex, .-ASN1_TIME_print_ex
	.section	.rodata
.LC3:
	.string	"Bad time value"
	.align 8
.LC4:
	.string	"%4d-%02d-%02d %02d:%02d:%02d.%.*sZ"
	.align 8
.LC5:
	.string	"%s %2d %02d:%02d:%02d.%.*s %d GMT"
.LC6:
	.string	"%4d-%02d-%02d %02d:%02d:%02dZ"
.LC7:
	.string	"%s %2d %02d:%02d:%02d %d GMT"
	.text
	.globl	ossl_asn1_time_print_ex
	.type	ossl_asn1_time_print_ex, @function
ossl_asn1_time_print_ex:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movb	$46, -13(%rbp)
	movq	-112(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_time_to_tm@PLT
	testl	%eax, %eax
	jne	.L176
	leaq	.LC3(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$14, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	je	.L177
	movl	$-1, %eax
	jmp	.L186
.L177:
	movl	$0, %eax
	jmp	.L186
.L176:
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-112(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$24, %eax
	jne	.L180
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$15, %eax
	jle	.L181
	movq	-32(%rbp), %rax
	addq	$14, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -13(%rbp)
	jne	.L181
	movq	-32(%rbp), %rax
	addq	$15, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L182
.L183:
	addl	$1, -12(%rbp)
.L182:
	movl	-12(%rbp), %eax
	addl	$15, %eax
	cmpl	%eax, -20(%rbp)
	jle	.L181
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_ascii_isdigit@PLT
	testl	%eax, %eax
	jne	.L183
.L181:
	cmpl	$0, -12(%rbp)
	jle	.L180
	movq	-120(%rbp), %rax
	andl	$15, %eax
	cmpq	$1, %rax
	jne	.L184
	movl	-96(%rbp), %r8d
	movl	-92(%rbp), %edi
	movl	-88(%rbp), %r11d
	movl	-84(%rbp), %r10d
	movl	-80(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-76(%rbp), %eax
	leal	1900(%rax), %edx
	leaq	.LC4(%rip), %rsi
	movq	-104(%rbp), %rax
	pushq	-8(%rbp)
	movl	-12(%rbp), %r9d
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movl	%r11d, %r9d
	movl	%r10d, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L186
.L184:
	movl	-76(%rbp), %eax
	leal	1900(%rax), %r8d
	movl	-96(%rbp), %ecx
	movl	-92(%rbp), %r9d
	movl	-88(%rbp), %r10d
	movl	-84(%rbp), %edx
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	_asn1_mon(%rip), %rax
	leaq	(%rsi,%rax), %rdi
	leaq	.LC5(%rip), %rsi
	movq	-104(%rbp), %rax
	pushq	%r8
	pushq	-8(%rbp)
	movl	-12(%rbp), %r8d
	pushq	%r8
	pushq	%rcx
	movl	%r10d, %r8d
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L186
.L180:
	movq	-120(%rbp), %rax
	andl	$15, %eax
	cmpq	$1, %rax
	jne	.L185
	movl	-96(%rbp), %r8d
	movl	-92(%rbp), %edi
	movl	-88(%rbp), %r9d
	movl	-84(%rbp), %r10d
	movl	-80(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-76(%rbp), %eax
	leal	1900(%rax), %edx
	leaq	.LC6(%rip), %rsi
	movq	-104(%rbp), %rax
	pushq	%r8
	pushq	%rdi
	movl	%r10d, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L186
.L185:
	movl	-76(%rbp), %eax
	leal	1900(%rax), %r8d
	movl	-96(%rbp), %ecx
	movl	-92(%rbp), %r9d
	movl	-88(%rbp), %r10d
	movl	-84(%rbp), %edx
	movl	-80(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rsi
	leaq	_asn1_mon(%rip), %rax
	leaq	(%rsi,%rax), %rdi
	leaq	.LC7(%rip), %rsi
	movq	-104(%rbp), %rax
	pushq	%r8
	pushq	%rcx
	movl	%r10d, %r8d
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	ossl_asn1_time_print_ex, .-ossl_asn1_time_print_ex
	.globl	ASN1_TIME_cmp_time_t
	.type	ASN1_TIME_cmp_time_t, @function
ASN1_TIME_cmp_time_t:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_to_tm@PLT
	testl	%eax, %eax
	jne	.L188
	movl	$-2, %eax
	jmp	.L196
.L188:
	leaq	-128(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_gmtime@PLT
	testq	%rax, %rax
	jne	.L190
	movl	$-2, %eax
	jmp	.L196
.L190:
	leaq	-64(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	leaq	-132(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_gmtime_diff@PLT
	testl	%eax, %eax
	jne	.L191
	movl	$-2, %eax
	jmp	.L196
.L191:
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	jg	.L192
	movl	-136(%rbp), %eax
	testl	%eax, %eax
	jle	.L193
.L192:
	movl	$1, %eax
	jmp	.L196
.L193:
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	js	.L194
	movl	-136(%rbp), %eax
	testl	%eax, %eax
	jns	.L195
.L194:
	movl	$-1, %eax
	jmp	.L196
.L195:
	movl	$0, %eax
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	ASN1_TIME_cmp_time_t, .-ASN1_TIME_cmp_time_t
	.globl	ASN1_TIME_normalize
	.type	ASN1_TIME_normalize, @function
ASN1_TIME_normalize:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L198
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_to_tm@PLT
	testl	%eax, %eax
	jne	.L199
.L198:
	movl	$0, %eax
	jmp	.L201
.L199:
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_time_from_tm@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L201:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	ASN1_TIME_normalize, .-ASN1_TIME_normalize
	.globl	ASN1_TIME_compare
	.type	ASN1_TIME_compare, @function
ASN1_TIME_compare:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_diff@PLT
	testl	%eax, %eax
	jne	.L203
	movl	$-2, %eax
	jmp	.L209
.L203:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L205
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jle	.L206
.L205:
	movl	$1, %eax
	jmp	.L209
.L206:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	js	.L207
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jns	.L208
.L207:
	movl	$-1, %eax
	jmp	.L209
.L208:
	movl	$0, %eax
.L209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	ASN1_TIME_compare, .-ASN1_TIME_compare
	.globl	ossl_asn1_string_to_time_t
	.type	ossl_asn1_string_to_time_t, @function
ossl_asn1_string_to_time_t:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	call	ASN1_TIME_new@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_set_string@PLT
	testl	%eax, %eax
	jne	.L211
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	$-1, %rax
	jmp	.L212
.L211:
	leaq	.LC2(%rip), %rax
	movl	$619, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L213
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	$-1, %rax
	jmp	.L212
.L213:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_to_tm@PLT
	testl	%eax, %eax
	jne	.L214
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$625, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	$-1, %rax
	jmp	.L212
.L214:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	mktime@PLT
	movq	%rax, -24(%rbp)
	movq	timezone@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$660, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	ossl_asn1_string_to_time_t, .-ossl_asn1_string_to_time_t
	.section	.rodata
.LC8:
	.string	"ASN1_TIME"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	5
	.zero	7
	.quad	49152
	.quad	0
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC8
	.section	.rodata
	.align 32
	.type	ydays.4, @object
	.size	ydays.4, 48
ydays.4:
	.long	0
	.long	31
	.long	59
	.long	90
	.long	120
	.long	151
	.long	181
	.long	212
	.long	243
	.long	273
	.long	304
	.long	334
	.align 32
	.type	min.3, @object
	.size	min.3, 36
min.3:
	.long	0
	.long	0
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	max.2, @object
	.size	max.2, 36
max.2:
	.long	99
	.long	99
	.long	12
	.long	31
	.long	23
	.long	59
	.long	59
	.long	12
	.long	59
	.align 32
	.type	mdays.1, @object
	.size	mdays.1, 48
mdays.1:
	.long	31
	.long	28
	.long	31
	.long	30
	.long	31
	.long	30
	.long	31
	.long	31
	.long	30
	.long	31
	.long	30
	.long	31
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"ASN1_TIME_adj"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
