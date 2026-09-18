	.file	"bn_mul.c"
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
	.globl	bn_sub_part_words
	.type	bn_sub_part_words, @function
bn_sub_part_words:
.LFB161:
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
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	movq	%rax, -8(%rbp)
	cmpl	$0, -64(%rbp)
	jne	.L6
	movq	-8(%rbp), %rax
	jmp	.L7
.L6:
	movl	-60(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -40(%rbp)
	movl	-60(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -48(%rbp)
	movl	-60(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rax, -56(%rbp)
	cmpl	$0, -64(%rbp)
	jns	.L8
.L18:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	negq	%rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -24(%rbp)
	je	.L9
	movq	$1, -8(%rbp)
.L9:
	addl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jns	.L41
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	negq	%rax
	movq	-40(%rbp), %rdx
	addq	$8, %rdx
	subq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	cmpq	$0, -24(%rbp)
	je	.L12
	movq	$1, -8(%rbp)
.L12:
	addl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jns	.L42
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	negq	%rax
	movq	-40(%rbp), %rdx
	addq	$16, %rdx
	subq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	cmpq	$0, -24(%rbp)
	je	.L14
	movq	$1, -8(%rbp)
.L14:
	addl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jns	.L43
	movq	-56(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	negq	%rax
	movq	-40(%rbp), %rdx
	addq	$24, %rdx
	subq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	cmpq	$0, -24(%rbp)
	je	.L16
	movq	$1, -8(%rbp)
.L16:
	addl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jns	.L44
	addq	$32, -56(%rbp)
	addq	$32, -40(%rbp)
	jmp	.L18
.L8:
	movl	-64(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L20
.L30:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -24(%rbp)
	je	.L21
	movq	$0, -8(%rbp)
.L21:
	subl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L45
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	cmpq	$0, -24(%rbp)
	je	.L24
	movq	$0, -8(%rbp)
.L24:
	subl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L46
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	cmpq	$0, -24(%rbp)
	je	.L26
	movq	$0, -8(%rbp)
.L26:
	subl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L47
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	cmpq	$0, -24(%rbp)
	je	.L28
	movq	$0, -8(%rbp)
.L28:
	subl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L48
	movl	-64(%rbp), %eax
	movl	%eax, -12(%rbp)
	addq	$32, -48(%rbp)
	addq	$32, -40(%rbp)
.L20:
	cmpq	$0, -8(%rbp)
	jne	.L30
	jmp	.L23
.L45:
	nop
	jmp	.L23
.L46:
	nop
	jmp	.L23
.L47:
	nop
	jmp	.L23
.L48:
	nop
.L23:
	cmpl	$0, -64(%rbp)
	jle	.L31
	movl	-12(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.L31
	movl	-12(%rbp), %eax
	subl	-64(%rbp), %eax
	cmpl	$3, %eax
	je	.L32
	cmpl	$3, %eax
	jg	.L33
	cmpl	$1, %eax
	je	.L34
	cmpl	$2, %eax
	je	.L35
	jmp	.L33
.L34:
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	-40(%rbp), %rdx
	addq	$8, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	subl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L49
.L35:
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	-40(%rbp), %rdx
	addq	$16, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	subl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L50
.L32:
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	-40(%rbp), %rdx
	addq	$24, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	subl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jmp	.L33
.L49:
	nop
	jmp	.L33
.L50:
	nop
.L33:
	addq	$32, -48(%rbp)
	addq	$32, -40(%rbp)
.L31:
	cmpl	$0, -64(%rbp)
	jle	.L19
.L40:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	subl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L51
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	-40(%rbp), %rdx
	addq	$8, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	subl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L52
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	-40(%rbp), %rdx
	addq	$16, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	subl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L53
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	-40(%rbp), %rdx
	addq	$24, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	subl	$1, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jle	.L54
	addq	$32, -48(%rbp)
	addq	$32, -40(%rbp)
	jmp	.L40
.L41:
	nop
	jmp	.L19
.L42:
	nop
	jmp	.L19
.L43:
	nop
	jmp	.L19
.L44:
	nop
	jmp	.L19
.L51:
	nop
	jmp	.L19
.L52:
	nop
	jmp	.L19
.L53:
	nop
	jmp	.L19
.L54:
	nop
.L19:
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	bn_sub_part_words, .-bn_sub_part_words
	.globl	bn_mul_recursive
	.type	bn_mul_recursive, @function
bn_mul_recursive:
.LFB162:
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
	movl	%r9d, -100(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	-96(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
	cmpl	$8, -92(%rbp)
	jne	.L56
	cmpl	$0, -96(%rbp)
	jne	.L56
	cmpl	$0, -100(%rbp)
	jne	.L56
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_mul_comba8@PLT
	jmp	.L55
.L56:
	cmpl	$15, -92(%rbp)
	jg	.L58
	movl	-92(%rbp), %edx
	movl	-100(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	bn_mul_normal@PLT
	movl	-96(%rbp), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	jns	.L80
	movl	-96(%rbp), %edx
	movl	-100(%rbp), %eax
	addl	%edx, %eax
	negl	%eax
	cltq
	leaq	0(,%rax,8), %rdx
	movl	-92(%rbp), %eax
	leal	(%rax,%rax), %ecx
	movl	-96(%rbp), %eax
	addl	%eax, %ecx
	movl	-100(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L80
.L58:
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-32(%rbp), %edx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	bn_cmp_part_words@PLT
	movl	%eax, -4(%rbp)
	movl	-36(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-36(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	call	bn_cmp_part_words@PLT
	movl	%eax, -40(%rbp)
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	cmpl	$4, %eax
	je	.L60
	cmpl	$4, %eax
	jg	.L61
	cmpl	$3, %eax
	je	.L62
	cmpl	$3, %eax
	jg	.L61
	cmpl	$2, %eax
	je	.L63
	cmpl	$2, %eax
	jg	.L61
	cmpl	$1, %eax
	jg	.L61
	cmpl	$-1, %eax
	jge	.L64
	cmpl	$-2, %eax
	je	.L65
	cmpl	$-2, %eax
	jg	.L61
	cmpl	$-4, %eax
	je	.L66
	cmpl	$-3, %eax
	je	.L67
	jmp	.L61
.L66:
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-32(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	bn_sub_part_words@PLT
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-36(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	bn_sub_part_words@PLT
	jmp	.L61
.L67:
	movl	$1, -12(%rbp)
	jmp	.L61
.L65:
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-32(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	bn_sub_part_words@PLT
	movl	-36(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-36(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	bn_sub_part_words@PLT
	movl	$1, -8(%rbp)
	jmp	.L61
.L64:
	movl	$1, -12(%rbp)
	jmp	.L61
.L63:
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-32(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	16(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	bn_sub_part_words@PLT
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-36(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	bn_sub_part_words@PLT
	movl	$1, -8(%rbp)
	jmp	.L61
.L62:
	movl	$1, -12(%rbp)
	jmp	.L61
.L60:
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-32(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	16(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	bn_sub_part_words@PLT
	movl	-36(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-36(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	bn_sub_part_words@PLT
	nop
.L61:
	cmpl	$4, -28(%rbp)
	jne	.L68
	cmpl	$0, -96(%rbp)
	jne	.L68
	cmpl	$0, -100(%rbp)
	jne	.L68
	cmpl	$0, -12(%rbp)
	jne	.L69
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	16(%rbp), %rax
	addq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	bn_mul_comba4@PLT
	jmp	.L70
.L69:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L70:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_mul_comba4@PLT
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-80(%rbp), %rax
	addq	%rax, %rcx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_mul_comba4@PLT
	jmp	.L71
.L68:
	cmpl	$8, -28(%rbp)
	jne	.L72
	cmpl	$0, -96(%rbp)
	jne	.L72
	cmpl	$0, -100(%rbp)
	jne	.L72
	cmpl	$0, -12(%rbp)
	jne	.L73
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	16(%rbp), %rax
	addq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	bn_mul_comba8@PLT
	jmp	.L74
.L73:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L74:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_mul_comba8@PLT
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-80(%rbp), %rax
	addq	%rax, %rcx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_mul_comba8@PLT
	jmp	.L71
.L72:
	movl	-92(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L75
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-28(%rbp), %edx
	movq	16(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	bn_mul_recursive.localalias
	addq	$16, %rsp
	jmp	.L76
.L75:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	16(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L76:
	movl	-28(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	bn_mul_recursive.localalias
	addq	$16, %rsp
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-80(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movl	-100(%rbp), %r8d
	movl	-96(%rbp), %ecx
	movl	-28(%rbp), %eax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	%r8d, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	call	bn_mul_recursive.localalias
	addq	$16, %rsp
.L71:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-92(%rbp), %edx
	movq	-72(%rbp), %rsi
	movq	16(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	bn_add_words@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L77
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-92(%rbp), %edx
	movq	16(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	bn_sub_words@PLT
	subl	%eax, -4(%rbp)
	jmp	.L78
.L77:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-92(%rbp), %edx
	movq	16(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	bn_add_words@PLT
	addl	%eax, -4(%rbp)
.L78:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	call	bn_add_words@PLT
	addl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L55
	movl	-28(%rbp), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
	cltq
	cmpq	%rax, -56(%rbp)
	jnb	.L55
.L79:
	addq	$8, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -56(%rbp)
	je	.L79
	jmp	.L55
.L80:
	nop
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	bn_mul_recursive, .-bn_mul_recursive
	.set	bn_mul_recursive.localalias,bn_mul_recursive
	.globl	bn_mul_part_recursive
	.type	bn_mul_part_recursive, @function
bn_mul_part_recursive:
.LFB163:
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
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movl	-76(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -28(%rbp)
	cmpl	$7, -76(%rbp)
	jg	.L82
	movl	-76(%rbp), %edx
	movl	-84(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %eax
	leal	(%rdx,%rax), %edi
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	bn_mul_normal@PLT
	jmp	.L81
.L82:
	movl	-76(%rbp), %eax
	subl	-80(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-80(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	bn_cmp_part_words@PLT
	movl	%eax, -12(%rbp)
	movl	-84(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-84(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	call	bn_cmp_part_words@PLT
	movl	%eax, -32(%rbp)
	movl	$0, -16(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	cmpl	$4, %eax
	jg	.L84
	cmpl	$3, %eax
	jge	.L85
	cmpl	$2, %eax
	jg	.L84
	cmpl	$-1, %eax
	jge	.L86
	cmpl	$-4, %eax
	je	.L87
	cmpl	$-4, %eax
	jl	.L84
	addl	$3, %eax
	cmpl	$1, %eax
	ja	.L84
	jmp	.L104
.L87:
	movl	-80(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, %edi
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-80(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	bn_sub_part_words@PLT
	movl	-76(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-84(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	bn_sub_part_words@PLT
	jmp	.L84
.L104:
	movl	-80(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, %edi
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-80(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movq	16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	bn_sub_part_words@PLT
	movl	-84(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-84(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	bn_sub_part_words@PLT
	movl	$1, -16(%rbp)
	jmp	.L84
.L86:
	movl	-76(%rbp), %eax
	subl	-80(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-80(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	16(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	bn_sub_part_words@PLT
	movl	-76(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-84(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	bn_sub_part_words@PLT
	movl	$1, -16(%rbp)
	jmp	.L84
.L85:
	movl	-76(%rbp), %eax
	subl	-80(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-80(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	16(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	bn_sub_part_words@PLT
	movl	-84(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-84(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	bn_sub_part_words@PLT
	nop
.L84:
	cmpl	$8, -76(%rbp)
	jne	.L89
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	16(%rbp), %rax
	addq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	bn_mul_comba8@PLT
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_mul_comba8@PLT
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movl	-84(%rbp), %ecx
	movl	-80(%rbp), %eax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%eax, %edx
	call	bn_mul_normal@PLT
	movl	-28(%rbp), %eax
	subl	-80(%rbp), %eax
	subl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movl	-28(%rbp), %ecx
	movl	-80(%rbp), %eax
	addl	%eax, %ecx
	movl	-84(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L90
.L89:
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-76(%rbp), %edx
	movq	16(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	bn_mul_recursive@PLT
	addq	$16, %rsp
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	bn_mul_recursive@PLT
	addq	$16, %rsp
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jle	.L91
	movl	-80(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L92
.L91:
	movl	-84(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L92:
	cmpl	$0, -8(%rbp)
	jne	.L93
	movl	-84(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %r8d
	movl	-80(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-64(%rbp), %rax
	addq	%rax, %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdi
	movq	-56(%rbp), %rax
	addq	%rax, %rdi
	movl	-4(%rbp), %eax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	%r8d, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	call	bn_mul_recursive@PLT
	addq	$16, %rsp
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	movl	-28(%rbp), %edx
	subl	%eax, %edx
	movslq	%edx, %rax
	leaq	0(,%rax,8), %rdx
	movl	-4(%rbp), %eax
	leal	(%rax,%rax), %ecx
	movl	-28(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L90
.L93:
	cmpl	$0, -8(%rbp)
	jle	.L94
	movl	-84(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %r8d
	movl	-80(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-64(%rbp), %rax
	addq	%rax, %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdi
	movq	-56(%rbp), %rax
	addq	%rax, %rdi
	movl	-4(%rbp), %eax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	%r8d, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	call	bn_mul_part_recursive.localalias
	addq	$16, %rsp
	movl	-28(%rbp), %eax
	subl	-80(%rbp), %eax
	subl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movl	-28(%rbp), %ecx
	movl	-80(%rbp), %eax
	addl	%eax, %ecx
	movl	-84(%rbp), %eax
	addl	%ecx, %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L90
.L94:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpl	$15, -80(%rbp)
	jg	.L100
	cmpl	$15, -84(%rbp)
	jg	.L100
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-64(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movl	-84(%rbp), %ecx
	movl	-80(%rbp), %eax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	%eax, %edx
	call	bn_mul_normal@PLT
	jmp	.L90
.L100:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L96
	movl	-4(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.L97
.L96:
	movl	-84(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %r8d
	movl	-80(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-64(%rbp), %rax
	addq	%rax, %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdi
	movq	-56(%rbp), %rax
	addq	%rax, %rdi
	movl	-4(%rbp), %eax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	%r8d, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	call	bn_mul_part_recursive.localalias
	addq	$16, %rsp
	jmp	.L90
.L97:
	movl	-4(%rbp), %eax
	cmpl	-80(%rbp), %eax
	je	.L98
	movl	-4(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.L100
.L98:
	movl	-84(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %r8d
	movl	-80(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-64(%rbp), %rax
	addq	%rax, %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdi
	movq	-56(%rbp), %rax
	addq	%rax, %rdi
	movl	-4(%rbp), %eax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	%r8d, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	call	bn_mul_recursive@PLT
	addq	$16, %rsp
.L90:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-28(%rbp), %edx
	movq	-56(%rbp), %rsi
	movq	16(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	bn_add_words@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L101
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-28(%rbp), %edx
	movq	16(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	call	bn_sub_words@PLT
	subl	%eax, -12(%rbp)
	jmp	.L102
.L101:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-28(%rbp), %edx
	movq	16(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	bn_add_words@PLT
	addl	%eax, -12(%rbp)
.L102:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	16(%rbp), %rax
	addq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	call	bn_add_words@PLT
	addl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L81
	movl	-76(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, -48(%rbp)
	jnb	.L81
.L103:
	addq	$8, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -48(%rbp)
	je	.L103
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	bn_mul_part_recursive, .-bn_mul_part_recursive
	.set	bn_mul_part_recursive.localalias,bn_mul_part_recursive
	.globl	bn_mul_low_recursive
	.type	bn_mul_low_recursive, @function
bn_mul_low_recursive:
.LFB164:
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
	movq	%r8, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	bn_mul_recursive@PLT
	addq	$16, %rsp
	cmpl	$31, -4(%rbp)
	jle	.L106
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	bn_mul_low_recursive.localalias
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	bn_add_words@PLT
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-4(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_low_recursive.localalias
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	bn_add_words@PLT
	jmp	.L108
.L106:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	bn_mul_low_normal@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	bn_mul_low_normal@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	bn_add_words@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	bn_add_words@PLT
.L108:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	bn_mul_low_recursive, .-bn_mul_low_recursive
	.set	bn_mul_low_recursive.localalias,bn_mul_low_recursive
	.globl	BN_mul
	.type	BN_mul, @function
BN_mul:
.LFB165:
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
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_mul_fixed_top@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_mul, .-BN_mul
	.globl	bn_mul_fixed_top
	.type	bn_mul_fixed_top, @function
bn_mul_fixed_top:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L112
	cmpl	$0, -40(%rbp)
	jne	.L113
.L112:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L114
.L113:
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L115
	movq	-72(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L116
.L115:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L119
	jmp	.L118
.L116:
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.L119:
	movl	-36(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.L120
	cmpl	$8, -36(%rbp)
	jne	.L120
	movq	-16(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L136
	movq	-16(%rbp), %rax
	movl	$16, 8(%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_mul_comba8@PLT
	jmp	.L122
.L120:
	cmpl	$15, -36(%rbp)
	jle	.L123
	cmpl	$15, -40(%rbp)
	jle	.L123
	cmpl	$-1, -48(%rbp)
	jl	.L123
	cmpl	$1, -48(%rbp)
	jg	.L123
	cmpl	$0, -48(%rbp)
	js	.L124
	movl	-36(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	BN_num_bits_word@PLT
	movl	%eax, -20(%rbp)
.L124:
	cmpl	$-1, -48(%rbp)
	jne	.L125
	movl	-40(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	BN_num_bits_word@PLT
	movl	%eax, -20(%rbp)
.L125:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -52(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L137
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.L127
	movl	-40(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L128
.L127:
	movl	-52(%rbp), %eax
	leal	0(,%rax,4), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L138
	movl	-52(%rbp), %eax
	leal	0(,%rax,4), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L139
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	-40(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %r9d
	movl	-36(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %r8d
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %ecx
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	bn_mul_part_recursive@PLT
	addq	$16, %rsp
	jmp	.L131
.L128:
	movl	-52(%rbp), %eax
	leal	(%rax,%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L140
	movl	-52(%rbp), %eax
	leal	(%rax,%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L141
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	-40(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %r9d
	movl	-36(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %r8d
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %ecx
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	bn_mul_recursive@PLT
	addq	$16, %rsp
.L131:
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 8(%rax)
	jmp	.L122
.L123:
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L142
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edi
	movl	-36(%rbp), %edx
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	bn_mul_normal@PLT
.L122:
	movq	-80(%rbp), %rax
	movl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	xorl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-72(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L135
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L143
.L135:
	movl	$1, -4(%rbp)
	jmp	.L118
.L136:
	nop
	jmp	.L118
.L137:
	nop
	jmp	.L118
.L138:
	nop
	jmp	.L118
.L139:
	nop
	jmp	.L118
.L140:
	nop
	jmp	.L118
.L141:
	nop
	jmp	.L118
.L142:
	nop
	jmp	.L118
.L143:
	nop
.L118:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	bn_mul_fixed_top, .-bn_mul_fixed_top
	.globl	bn_mul_normal
	.type	bn_mul_normal, @function
bn_mul_normal:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -72(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.L145
	movl	-68(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
.L145:
	movl	-68(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -72(%rbp)
	jg	.L146
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	bn_mul_words@PLT
	jmp	.L144
.L146:
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bn_mul_words@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
.L152:
	subl	$1, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jle	.L153
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	call	bn_mul_add_words@PLT
	movq	%rax, (%rbx)
	subl	$1, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jle	.L154
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	leaq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rbx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	call	bn_mul_add_words@PLT
	movq	%rax, (%rbx)
	subl	$1, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jle	.L155
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	leaq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rbx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	call	bn_mul_add_words@PLT
	movq	%rax, (%rbx)
	subl	$1, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jle	.L156
	movq	-80(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rbx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	call	bn_mul_add_words@PLT
	movq	%rax, (%rbx)
	addq	$32, -24(%rbp)
	addq	$32, -56(%rbp)
	addq	$32, -80(%rbp)
	jmp	.L152
.L153:
	nop
	jmp	.L144
.L154:
	nop
	jmp	.L144
.L155:
	nop
	jmp	.L144
.L156:
	nop
.L144:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	bn_mul_normal, .-bn_mul_normal
	.globl	bn_mul_low_normal
	.type	bn_mul_low_normal, @function
bn_mul_low_normal:
.LFB168:
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_mul_words@PLT
.L163:
	subl	$1, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L164
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdi
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	bn_mul_add_words@PLT
	subl	$1, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L165
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdi
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	bn_mul_add_words@PLT
	subl	$1, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L166
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdi
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	bn_mul_add_words@PLT
	subl	$1, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L167
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdi
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	bn_mul_add_words@PLT
	addq	$32, -8(%rbp)
	addq	$32, -24(%rbp)
	jmp	.L163
.L164:
	nop
	jmp	.L157
.L165:
	nop
	jmp	.L157
.L166:
	nop
	jmp	.L157
.L167:
	nop
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	bn_mul_low_normal, .-bn_mul_low_normal
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
