	.file	"drbg_ctr.c"
	.text
	.type	inc_128, @function
inc_128:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$84, %rax
	movq	%rax, -16(%rbp)
	movl	$16, -4(%rbp)
	movl	$1, -8(%rbp)
.L2:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -8(%rbp)
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
	shrl	$8, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L2
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	inc_128, .-inc_128
	.type	ctr_XOR, @function
ctr_XOR:
.LFB362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L14
	cmpq	$0, -40(%rbp)
	je	.L14
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rdx
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -16(%rbp)
	cmpq	$32, -16(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L15
	movq	$0, -8(%rbp)
	jmp	.L8
.L9:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$52, %rax
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addq	$52, %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L8:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L9
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L16
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$16, -16(%rbp)
	jbe	.L11
	movq	$16, -16(%rbp)
.L11:
	movq	$0, -8(%rbp)
	jmp	.L12
.L13:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$84, %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	addq	$84, %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L12:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L13
	jmp	.L3
.L14:
	nop
	jmp	.L3
.L15:
	nop
	jmp	.L3
.L16:
	nop
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	ctr_XOR, .-ctr_XOR
	.type	ctr_BCC_block, @function
ctr_BCC_block:
.LFB363:
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
	movl	$16, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L18
.L19:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L19
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-44(%rbp), %edi
	movq	-32(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L20
	movl	-8(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	je	.L21
.L20:
	movl	$0, %eax
	jmp	.L23
.L21:
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	ctr_BCC_block, .-ctr_BCC_block
	.type	ctr_BCC_blocks, @function
ctr_BCC_blocks:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movb	$2, -17(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	-80(%rbp), %rax
	addq	$16, %rax
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$16, %rax
	je	.L25
	leaq	-80(%rbp), %rax
	addq	$32, %rax
	movq	-96(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movb	$3, -17(%rbp)
.L25:
	movzbl	-17(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	leaq	128(%rax), %rsi
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ctr_BCC_block
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	ctr_BCC_blocks, .-ctr_BCC_blocks
	.type	ctr_BCC_init, @function
ctr_BCC_init:
.LFB365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	subq	$-128, %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$16, %rax
	jne	.L28
	movb	$2, -1(%rbp)
	jmp	.L29
.L28:
	movb	$3, -1(%rbp)
.L29:
	movb	$1, -45(%rbp)
	movb	$2, -29(%rbp)
	movzbl	-1(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	leaq	128(%rax), %rsi
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ctr_BCC_block
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	ctr_BCC_init, .-ctr_BCC_init
	.type	ctr_BCC_update, @function
ctr_BCC_update:
.LFB366:
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
	cmpq	$0, -32(%rbp)
	je	.L32
	cmpq	$0, -40(%rbp)
	jne	.L33
.L32:
	movl	$1, %eax
	jmp	.L34
.L33:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	$16, %edx
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L37
	movq	-24(%rbp), %rax
	leaq	100(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	leaq	100(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ctr_BCC_blocks
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L34
.L36:
	movq	-24(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	subq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -32(%rbp)
	jmp	.L37
.L39:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ctr_BCC_blocks
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L34
.L38:
	addq	$16, -32(%rbp)
	subq	$16, -40(%rbp)
.L37:
	cmpq	$15, -40(%rbp)
	ja	.L39
	cmpq	$0, -40(%rbp)
	je	.L40
	movq	-24(%rbp), %rax
	leaq	100(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 120(%rax)
.L40:
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	ctr_BCC_update, .-ctr_BCC_update
	.type	ctr_BCC_final, @function
ctr_BCC_final:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	$16, %edx
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	100(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	leaq	100(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ctr_BCC_blocks
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ctr_BCC_final, .-ctr_BCC_final
	.type	ctr_df, @function
ctr_df:
.LFB368:
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
	movq	-40(%rbp), %rax
	addq	$100, %rax
	movq	%rax, -8(%rbp)
	movl	$16, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ctr_BCC_init
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L59
.L45:
	cmpq	$0, -48(%rbp)
	jne	.L47
	movq	$0, -56(%rbp)
.L47:
	cmpq	$0, -64(%rbp)
	jne	.L48
	movq	$0, -72(%rbp)
.L48:
	cmpq	$0, -80(%rbp)
	jne	.L49
	movq	$0, 16(%rbp)
.L49:
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	leal	16(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	$8, 120(%rax)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ctr_BCC_update
	testl	%eax, %eax
	je	.L50
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ctr_BCC_update
	testl	%eax, %eax
	je	.L50
	movq	16(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ctr_BCC_update
	testl	%eax, %eax
	je	.L50
	leaq	c80.5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ctr_BCC_update
	testl	%eax, %eax
	je	.L50
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ctr_BCC_final
	testl	%eax, %eax
	jne	.L51
.L50:
	movl	$0, %eax
	jmp	.L59
.L51:
	movq	-40(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$-1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L59
.L52:
	movq	-40(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	leaq	128(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-20(%rbp), %rdx
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L53
	movl	-20(%rbp), %eax
	cmpl	$16, %eax
	je	.L54
.L53:
	movl	$0, %eax
	jmp	.L59
.L54:
	movq	-40(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-40(%rbp), %rax
	subq	$-128, %rax
	leaq	16(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-20(%rbp), %rdx
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L55
	movl	-20(%rbp), %eax
	cmpl	$16, %eax
	je	.L56
.L55:
	movl	$0, %eax
	jmp	.L59
.L56:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$16, %rax
	je	.L57
	movq	-40(%rbp), %rax
	subq	$-128, %rax
	leaq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	subq	$-128, %rax
	leaq	32(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-20(%rbp), %rdx
	movl	$16, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L58
	movl	-20(%rbp), %eax
	cmpl	$16, %eax
	je	.L57
.L58:
	movl	$0, %eax
	jmp	.L59
.L57:
	movl	$1, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ctr_df, .-ctr_df
	.type	ctr_update, @function
ctr_update:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movq	-152(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$16, -36(%rbp)
	movq	-32(%rbp), %rax
	addq	$84, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inc_128
	movq	-32(%rbp), %rax
	leaq	84(%rax), %rdx
	leaq	-96(%rbp), %rax
	addq	$16, %rax
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$16, %rax
	jne	.L61
	movb	$32, -17(%rbp)
	jmp	.L62
.L61:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inc_128
	movq	-32(%rbp), %rax
	leaq	84(%rax), %rdx
	leaq	-96(%rbp), %rax
	addq	$32, %rax
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movb	$48, -17(%rbp)
.L62:
	movzbl	-17(%rbp), %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L63
	movzbl	-17(%rbp), %edx
	movl	-36(%rbp), %eax
	cmpl	%eax, %edx
	je	.L64
.L63:
	movl	$0, %eax
	jmp	.L72
.L64:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	52(%rax), %rcx
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-144(%rbp), %rdx
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	84(%rdx), %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L66
	cmpq	$0, -160(%rbp)
	jne	.L67
	cmpq	$0, -192(%rbp)
	jne	.L67
	cmpq	$0, -176(%rbp)
	je	.L68
.L67:
	movq	-176(%rbp), %r8
	movq	16(%rbp), %rdi
	movq	-192(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	-184(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ctr_df
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L68
	movl	$0, %eax
	jmp	.L72
.L68:
	cmpq	$0, -168(%rbp)
	je	.L69
	movq	-152(%rbp), %rax
	movq	232(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ctr_XOR
	jmp	.L69
.L66:
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ctr_XOR
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ctr_XOR
.L69:
	movq	-32(%rbp), %rax
	leaq	52(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$-1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	je	.L70
	movq	-32(%rbp), %rax
	leaq	52(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	$-1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L71
.L70:
	movl	$0, %eax
	jmp	.L72
.L71:
	movl	$1, %eax
.L72:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	ctr_update, .-ctr_update
	.type	drbg_ctr_instantiate, @function
drbg_ctr_instantiate:
.LFB370:
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
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L74
	movl	$0, %eax
	jmp	.L75
.L74:
	movq	-8(%rbp), %rax
	addq	$52, %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	addq	$84, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	leaq	52(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$-1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L75
.L76:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	inc_128
	movq	-48(%rbp), %r8
	movq	16(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ctr_update
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L75
.L77:
	movl	$1, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	drbg_ctr_instantiate, .-drbg_ctr_instantiate
	.type	drbg_ctr_instantiate_wrapper, @function
drbg_ctr_instantiate_wrapper:
.LFB371:
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
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L85
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	drbg_ctr_set_ctx_params_locked
	testl	%eax, %eax
	je	.L85
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_prov_drbg_instantiate@PLT
	movl	%eax, -4(%rbp)
	jmp	.L83
.L85:
	nop
.L83:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L84:
	movl	-4(%rbp), %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	drbg_ctr_instantiate_wrapper, .-drbg_ctr_instantiate_wrapper
	.type	drbg_ctr_reseed, @function
drbg_ctr_reseed:
.LFB372:
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
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L87
	movl	$0, %eax
	jmp	.L88
.L87:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	inc_128
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ctr_update
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L89
	movl	$0, %eax
	jmp	.L88
.L89:
	movl	$1, %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	drbg_ctr_reseed, .-drbg_ctr_reseed
	.type	drbg_ctr_reseed_wrapper, @function
drbg_ctr_reseed_wrapper:
.LFB373:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_prov_drbg_reseed@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	drbg_ctr_reseed_wrapper, .-drbg_ctr_reseed_wrapper
	.type	ctr96_inc, @function
ctr96_inc:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$12, -4(%rbp)
	movl	$1, -8(%rbp)
.L93:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -8(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
	shrl	$8, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L93
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	ctr96_inc, .-ctr96_inc
	.type	drbg_ctr_generate, @function
drbg_ctr_generate:
.LFB375:
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
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L95
	cmpq	$0, -72(%rbp)
	je	.L95
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	inc_128
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ctr_update
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L109
.L96:
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L99
	movq	$0, -64(%rbp)
	movq	$1, -72(%rbp)
	jmp	.L99
.L95:
	movq	$0, -72(%rbp)
.L99:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	inc_128
	cmpq	$0, -56(%rbp)
	jne	.L100
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	inc_128
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ctr_update
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L109
.L101:
	movl	$1, %eax
	jmp	.L109
.L100:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L107:
	movq	-16(%rbp), %rax
	leaq	84(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$-1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L102
	movl	$0, %eax
	jmp	.L109
.L102:
	movq	-56(%rbp), %rax
	movl	$1073741824, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	addl	$15, %eax
	leal	15(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$4, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	addq	$84, %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
#APP
# 440 "../providers/implementations/rands/drbg_ctr.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jnb	.L103
	cmpl	$0, -4(%rbp)
	je	.L104
	movl	-4(%rbp), %eax
	subl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	sall	$4, %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
.L104:
	movq	-16(%rbp), %rax
	addq	$84, %rax
	movq	%rax, %rdi
	call	ctr96_inc
.L103:
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
#APP
# 450 "../providers/implementations/rands/drbg_ctr.c" 1
	bswapl %eax
# 0 "" 2
#NO_APP
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rdx
	addq	$84, %rdx
	addq	$12, %rdx
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %edi
	movq	-48(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_CipherUpdate@PLT
	testl	%eax, %eax
	je	.L105
	movl	-32(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	je	.L106
.L105:
	movl	$0, %eax
	jmp	.L109
.L106:
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, -48(%rbp)
	movl	-8(%rbp), %eax
	cltq
	subq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L107
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ctr_update
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L108
	movl	$0, %eax
	jmp	.L109
.L108:
	movl	$1, %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	drbg_ctr_generate, .-drbg_ctr_generate
	.type	drbg_ctr_generate_wrapper, @function
drbg_ctr_generate_wrapper:
.LFB376:
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
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %r8
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_prov_drbg_generate@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	drbg_ctr_generate_wrapper, .-drbg_ctr_generate_wrapper
	.type	drbg_ctr_uninstantiate, @function
drbg_ctr_uninstantiate:
.LFB377:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$52, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	addq	$84, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	addq	$100, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	subq	$-128, %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_drbg_uninstantiate@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	drbg_ctr_uninstantiate, .-drbg_ctr_uninstantiate
	.type	drbg_ctr_uninstantiate_wrapper, @function
drbg_ctr_uninstantiate_wrapper:
.LFB378:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	drbg_ctr_uninstantiate
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L117:
	movl	-12(%rbp), %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	drbg_ctr_uninstantiate_wrapper, .-drbg_ctr_uninstantiate_wrapper
	.type	drbg_ctr_verify_zeroization, @function
drbg_ctr_verify_zeroization:
.LFB379:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L119
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L119
	movl	$0, %eax
	jmp	.L120
.L119:
	movq	$0, -16(%rbp)
	jmp	.L121
.L124:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$52, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L136
	addq	$1, -16(%rbp)
.L121:
	cmpq	$31, -16(%rbp)
	jbe	.L124
	movq	$0, -24(%rbp)
	jmp	.L125
.L127:
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$84, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L137
	addq	$1, -24(%rbp)
.L125:
	cmpq	$15, -24(%rbp)
	jbe	.L127
	movq	$0, -32(%rbp)
	jmp	.L128
.L130:
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addq	$100, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L138
	addq	$1, -32(%rbp)
.L128:
	cmpq	$15, -32(%rbp)
	jbe	.L130
	movq	$0, -40(%rbp)
	jmp	.L131
.L133:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	subq	$-128, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L139
	addq	$1, -40(%rbp)
.L131:
	cmpq	$47, -40(%rbp)
	jbe	.L133
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L140
	movl	$1, -4(%rbp)
	jmp	.L123
.L136:
	nop
	jmp	.L123
.L137:
	nop
	jmp	.L123
.L138:
	nop
	jmp	.L123
.L139:
	nop
	jmp	.L123
.L140:
	nop
.L123:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L135
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L135:
	movl	-4(%rbp), %eax
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	drbg_ctr_verify_zeroization, .-drbg_ctr_verify_zeroization
	.type	drbg_ctr_init_lengths, @function
drbg_ctr_init_lengths:
.LFB380:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	$65536, 136(%rax)
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L142
	movq	-40(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-40(%rbp), %rax
	movq	$2147483647, 152(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-40(%rbp), %rax
	movq	$2147483647, 168(%rax)
	movq	-40(%rbp), %rax
	movq	$2147483647, 176(%rax)
	movq	-40(%rbp), %rax
	movq	$2147483647, 184(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L143
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 160(%rax)
	jmp	.L143
.L142:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L144
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L145
.L144:
	movq	$2147483647, -8(%rbp)
.L145:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 144(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 152(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 176(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 184(%rax)
.L143:
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	drbg_ctr_init_lengths, .-drbg_ctr_init_lengths
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/rands/drbg_ctr.c"
	.text
	.type	drbg_ctr_init, @function
drbg_ctr_init:
.LFB381:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L148
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$566, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L149
.L148:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	cltq
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L150
	call	EVP_CIPHER_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L150:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L151
	call	EVP_CIPHER_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L151:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L152
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L153
.L152:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$575, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L154
.L153:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	je	.L155
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L156
.L155:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$583, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$208, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L154
.L156:
	movq	-16(%rbp), %rax
	leal	0(,%rax,8), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 128(%rax)
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L157
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L158
	call	EVP_CIPHER_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L158:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L159
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$602, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L154
.L159:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	df_key.3(%rip), %rdx
	movl	$1, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L157
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$608, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$205, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L154
.L157:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	drbg_ctr_init_lengths
	jmp	.L149
.L154:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	drbg_ctr_init, .-drbg_ctr_init
	.type	drbg_ctr_new, @function
drbg_ctr_new:
.LFB382:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$625, %edx
	movq	%rax, %rsi
	movl	$176, %edi
	call	CRYPTO_secure_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L161
	movl	$0, %eax
	jmp	.L162
.L161:
	movq	-8(%rbp), %rax
	movl	$1, 48(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 248(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	drbg_ctr_init_lengths
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	drbg_ctr_new, .-drbg_ctr_new
	.type	drbg_ctr_new_wrapper, @function
drbg_ctr_new_wrapper:
.LFB383:
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
	leaq	drbg_ctr_instantiate(%rip), %r9
	leaq	drbg_ctr_free(%rip), %r8
	leaq	drbg_ctr_new(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	leaq	drbg_ctr_generate(%rip), %rdi
	pushq	%rdi
	leaq	drbg_ctr_reseed(%rip), %rdi
	pushq	%rdi
	leaq	drbg_ctr_uninstantiate(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_rand_drbg_new@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	drbg_ctr_new_wrapper, .-drbg_ctr_new_wrapper
	.type	drbg_ctr_free, @function
drbg_ctr_free:
.LFB384:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L166
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L166
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$655, %ecx
	movl	$176, %esi
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
.L166:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_drbg_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	drbg_ctr_free, .-drbg_ctr_free
	.section	.rodata
.LC1:
	.string	"use_derivation_function"
.LC2:
	.string	"cipher"
	.text
	.type	drbg_ctr_get_ctx_params, @function
drbg_ctr_get_ctx_params:
.LFB385:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_get_ctx_params_no_lock@PLT
	testl	%eax, %eax
	jne	.L168
	movl	$0, %eax
	jmp	.L177
.L168:
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	je	.L170
	movl	$1, %eax
	jmp	.L177
.L170:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L171
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L171
	movl	$0, %eax
	jmp	.L177
.L171:
	leaq	.LC1(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L172
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	je	.L178
.L172:
	leaq	.LC2(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L174
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L179
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	je	.L179
.L174:
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_get_ctx_params@PLT
	movl	%eax, -4(%rbp)
	jmp	.L173
.L178:
	nop
	jmp	.L173
.L179:
	nop
.L173:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L176
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L176:
	movl	-4(%rbp), %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE385:
	.size	drbg_ctr_get_ctx_params, .-drbg_ctr_get_ctx_params
	.type	drbg_ctr_gettable_ctx_params, @function
drbg_ctr_gettable_ctx_params:
.LFB386:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	drbg_ctr_gettable_ctx_params, .-drbg_ctr_gettable_ctx_params
	.section	.rodata
.LC3:
	.string	"properties"
.LC4:
	.string	"CTR"
	.text
	.type	drbg_ctr_set_ctx_params_locked, @function
drbg_ctr_set_ctx_params_locked:
.LFB387:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L183
	leaq	-84(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L183
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 48(%rax)
	movl	$1, -12(%rbp)
.L183:
	leaq	.LC3(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L184
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L185
	movl	$0, %eax
	jmp	.L195
.L185:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L184:
	leaq	.LC2(%rip), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L187
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$3, -64(%rbp)
	movq	$3, -72(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L188
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L189
.L188:
	movl	$0, %eax
	jmp	.L195
.L189:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	subq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L190
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$741, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$206, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L195
.L190:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	$744, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L191
	movl	$0, %eax
	jmp	.L195
.L191:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	subq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	$4342597, (%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	leaq	.LC0(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$751, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L192
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L193
.L192:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$753, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$207, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L195
.L193:
	movl	$1, -12(%rbp)
.L187:
	cmpl	$0, -12(%rbp)
	je	.L194
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	drbg_ctr_init
	testl	%eax, %eax
	jne	.L194
	movl	$0, %eax
	jmp	.L195
.L194:
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_drbg_set_ctx_params@PLT
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	drbg_ctr_set_ctx_params_locked, .-drbg_ctr_set_ctx_params_locked
	.type	drbg_ctr_set_ctx_params, @function
drbg_ctr_set_ctx_params:
.LFB388:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L197
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L197
	movl	$0, %eax
	jmp	.L198
.L197:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	drbg_ctr_set_ctx_params_locked
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L199
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L199:
	movl	-12(%rbp), %eax
.L198:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	drbg_ctr_set_ctx_params, .-drbg_ctr_set_ctx_params
	.type	drbg_ctr_settable_ctx_params, @function
drbg_ctr_settable_ctx_params:
.LFB389:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	drbg_ctr_settable_ctx_params, .-drbg_ctr_settable_ctx_params
	.globl	ossl_drbg_ctr_functions
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_drbg_ctr_functions, @object
	.size	ossl_drbg_ctr_functions, 272
ossl_drbg_ctr_functions:
	.long	1
	.zero	4
	.quad	drbg_ctr_new_wrapper
	.long	2
	.zero	4
	.quad	drbg_ctr_free
	.long	3
	.zero	4
	.quad	drbg_ctr_instantiate_wrapper
	.long	4
	.zero	4
	.quad	drbg_ctr_uninstantiate_wrapper
	.long	5
	.zero	4
	.quad	drbg_ctr_generate_wrapper
	.long	6
	.zero	4
	.quad	drbg_ctr_reseed_wrapper
	.long	8
	.zero	4
	.quad	ossl_drbg_enable_locking
	.long	9
	.zero	4
	.quad	ossl_drbg_lock
	.long	10
	.zero	4
	.quad	ossl_drbg_unlock
	.long	13
	.zero	4
	.quad	drbg_ctr_settable_ctx_params
	.long	16
	.zero	4
	.quad	drbg_ctr_set_ctx_params
	.long	12
	.zero	4
	.quad	drbg_ctr_gettable_ctx_params
	.long	15
	.zero	4
	.quad	drbg_ctr_get_ctx_params
	.long	17
	.zero	4
	.quad	drbg_ctr_verify_zeroization
	.long	18
	.zero	4
	.quad	ossl_drbg_get_seed
	.long	19
	.zero	4
	.quad	ossl_drbg_clear_seed
	.long	0
	.zero	4
	.quad	0
	.data
	.type	c80.5, @object
	.size	c80.5, 1
c80.5:
	.byte	-128
	.section	.rodata
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"drbg_ctr_init"
	.align 32
	.type	df_key.3, @object
	.size	df_key.3, 32
df_key.3:
	.base64	"AAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8="
.LC5:
	.string	"state"
.LC6:
	.string	"strength"
.LC7:
	.string	"max_request"
.LC8:
	.string	"min_entropylen"
.LC9:
	.string	"max_entropylen"
.LC10:
	.string	"min_noncelen"
.LC11:
	.string	"max_noncelen"
.LC12:
	.string	"max_perslen"
.LC13:
	.string	"max_adinlen"
.LC14:
	.string	"reseed_counter"
.LC15:
	.string	"reseed_time"
.LC16:
	.string	"reseed_requests"
.LC17:
	.string	"reseed_time_interval"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params.2, @object
	.size	known_gettable_ctx_params.2, 640
known_gettable_ctx_params.2:
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC5
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC6
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC7
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC8
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC9
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC10
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC11
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC12
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC13
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC14
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC15
	.long	1
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	.LC16
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC17
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 31
__func__.1:
	.string	"drbg_ctr_set_ctx_params_locked"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.0, @object
	.size	known_settable_ctx_params.0, 240
known_settable_ctx_params.0:
	.quad	.LC3
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC16
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC17
	.long	2
	.zero	4
	.quad	0
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
