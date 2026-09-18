	.file	"argon2.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB414:
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
.LFE414:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB415:
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
.LFE415:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	load64, @function
load64:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	salq	$8, %rdx
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$16, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$24, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$32, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$40, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$48, %rax
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	salq	$56, %rax
	orq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	load64, .-load64
	.type	store32, @function
store32:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movl	-12(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movl	-12(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movl	-12(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	store32, .-store32
	.type	store64, @function
store64:
.LFB487:
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
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$40, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$48, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	shrq	$56, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	store64, .-store64
	.type	rotr64, @function
rotr64:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %ecx
	rorq	%cl, %rdx
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	rotr64, .-rotr64
	.type	mul_lower, @function
mul_lower:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$4294967295, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	andq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	andq	-8(%rbp), %rax
	imulq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	mul_lower, .-mul_lower
	.type	init_block_value, @function
init_block_value:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movzbl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$1024, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	init_block_value, .-init_block_value
	.type	copy_block, @function
copy_block:
.LFB491:
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
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	copy_block, .-copy_block
	.type	xor_block, @function
xor_block:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L16
.L17:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rcx
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	xorq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -4(%rbp)
.L16:
	cmpl	$127, -4(%rbp)
	jle	.L17
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	xor_block, .-xor_block
	.type	load_block, @function
load_block:
.LFB493:
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
	jmp	.L19
.L20:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	load64
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	%rax, (%rdx,%rcx,8)
	addl	$1, -4(%rbp)
.L19:
	cmpl	$127, -4(%rbp)
	jbe	.L20
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	load_block, .-load_block
	.type	store_block, @function
store_block:
.LFB494:
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
	jmp	.L22
.L23:
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movl	-4(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store64
	addl	$1, -4(%rbp)
.L22:
	cmpl	$127, -4(%rbp)
	jbe	.L23
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	store_block, .-store_block
	.type	fill_first_blocks, @function
fill_first_blocks:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1056, %rsp
	movq	%rdi, -1048(%rbp)
	movq	%rsi, -1056(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L25
.L26:
	movq	-1048(%rbp), %rax
	addq	$64, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	store32
	movq	-1048(%rbp), %rax
	leaq	68(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	store32
	movq	-1056(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-1056(%rbp), %rax
	movq	136(%rax), %rax
	movq	-1048(%rbp), %rcx
	leaq	-1040(%rbp), %rdx
	movl	$72, %r9d
	movq	%rcx, %r8
	movl	$1024, %ecx
	movq	%rax, %rdi
	call	blake2b_long
	movq	-1056(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-1056(%rbp), %rax
	movl	124(%rax), %eax
	imull	-4(%rbp), %eax
	movl	%eax, %eax
	salq	$10, %rax
	addq	%rax, %rdx
	leaq	-1040(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	load_block
	movq	-1048(%rbp), %rax
	addq	$64, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	store32
	movq	-1056(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-1056(%rbp), %rax
	movq	136(%rax), %rax
	movq	-1048(%rbp), %rcx
	leaq	-1040(%rbp), %rdx
	movl	$72, %r9d
	movq	%rcx, %r8
	movl	$1024, %ecx
	movq	%rax, %rdi
	call	blake2b_long
	movq	-1056(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-1056(%rbp), %rax
	movl	124(%rax), %eax
	imull	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	salq	$10, %rax
	addq	%rax, %rdx
	leaq	-1040(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	load_block
	addl	$1, -4(%rbp)
.L25:
	movq	-1056(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L26
	leaq	-1040(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	fill_first_blocks, .-fill_first_blocks
	.type	fill_block, @function
fill_block:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$2120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -2104(%rbp)
	movq	%rsi, -2112(%rbp)
	movq	%rdx, -2120(%rbp)
	movl	%ecx, -2124(%rbp)
	movq	-2112(%rbp), %rdx
	leaq	-1072(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	copy_block
	movq	-2104(%rbp), %rdx
	leaq	-1072(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xor_block
	leaq	-1072(%rbp), %rdx
	leaq	-2096(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	copy_block
	cmpl	$0, -2124(%rbp)
	je	.L28
	movq	-2120(%rbp), %rdx
	leaq	-2096(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xor_block
.L28:
	movl	$0, -20(%rbp)
	jmp	.L29
.L30:
	movl	-20(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	leaq	-1072(%rbp), %rax
	movl	%edx, %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	addq	%rax, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	96(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	32(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	addq	%rax, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	96(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	32(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	104(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	40(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	104(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	40(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	112(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	48(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	112(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	48(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	120(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	56(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	120(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	56(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	addq	%rax, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	120(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	40(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	addq	%rax, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	120(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$120, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$80, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	40(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	96(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	48(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	96(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$96, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$88, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	48(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	104(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	56(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	104(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	56(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	112(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	32(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	112(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	addq	$112, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-40(%rbp), %rdx
	leaq	32(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	addl	$1, -20(%rbp)
.L29:
	cmpl	$7, -20(%rbp)
	jbe	.L30
	movl	$0, -20(%rbp)
	jmp	.L31
.L32:
	movl	-20(%rbp), %eax
	leal	(%rax,%rax), %edx
	leaq	-1072(%rbp), %rax
	movl	%edx, %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	addq	%rax, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	768(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	256(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	addq	%rax, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	768(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	256(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	776(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	264(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	776(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	264(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	896(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	384(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	896(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	384(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	904(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	392(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	904(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	392(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	addq	%rax, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	904(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	264(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	addq	%rax, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	904(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$904, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$264, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$640, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	264(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	768(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	384(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	768(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$768, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$384, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$648, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	384(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	776(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	392(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	$-128, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	776(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$776, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$392, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$512, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	392(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	896(%rdx), %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	256(%rdx), %rbx
	movl	$24, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$136, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	896(%rdx), %rbx
	movl	$16, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	addq	$896, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mul_lower
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	addq	%rbx, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$256, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$520, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	-32(%rbp), %rdx
	leaq	256(%rdx), %rbx
	movl	$63, %esi
	movq	%rax, %rdi
	call	rotr64
	movq	%rax, (%rbx)
	addl	$1, -20(%rbp)
.L31:
	cmpl	$7, -20(%rbp)
	jbe	.L32
	leaq	-2096(%rbp), %rdx
	movq	-2120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	copy_block
	leaq	-1072(%rbp), %rdx
	movq	-2120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xor_block
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	fill_block, .-fill_block
	.type	next_addresses, @function
next_addresses:
.LFB497:
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
	movq	48(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	fill_block
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	fill_block
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	next_addresses, .-next_addresses
	.type	data_indep_addressing, @function
data_indep_addressing:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, %eax
	movb	%al, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	$1, %eax
	je	.L35
	cmpl	$2, %eax
	je	.L36
	jmp	.L41
.L35:
	movl	$1, %eax
	jmp	.L38
.L36:
	cmpl	$0, -12(%rbp)
	jne	.L39
	cmpb	$1, -16(%rbp)
	ja	.L39
	movl	$1, %eax
	jmp	.L38
.L39:
	movl	$0, %eax
	jmp	.L38
.L41:
	movl	$0, %eax
.L38:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	data_indep_addressing, .-data_indep_addressing
	.type	index_alpha, @function
index_alpha:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, %eax
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movb	%al, -48(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L43
	cmpb	$0, -48(%rbp)
	jne	.L44
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L49
.L44:
	cmpl	$0, -60(%rbp)
	je	.L46
	movzbl	-48(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	imull	%eax, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L49
.L46:
	movzbl	-48(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	imull	%edx, %eax
	cmpl	$0, -52(%rbp)
	jne	.L47
	movl	$-1, %edx
	jmp	.L48
.L47:
	movl	$0, %edx
.L48:
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	jmp	.L49
.L43:
	cmpl	$0, -60(%rbp)
	je	.L50
	movq	-40(%rbp), %rax
	movl	124(%rax), %edx
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	subl	%eax, %edx
	movl	-52(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L51
.L50:
	movq	-40(%rbp), %rax
	movl	124(%rax), %edx
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	subl	%eax, %edx
	cmpl	$0, -52(%rbp)
	jne	.L52
	movl	$-1, %eax
	jmp	.L53
.L52:
	movl	$0, %eax
.L53:
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
.L51:
	cmpb	$3, -48(%rbp)
	je	.L56
	movzbl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	120(%rax), %eax
	imull	%edx, %eax
	movl	%eax, -8(%rbp)
.L56:
	nop
.L49:
	movl	-56(%rbp), %eax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	imulq	%rax, %rax
	shrq	$32, %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	imulq	-16(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	index_alpha, .-index_alpha
	.type	fill_segment, @function
fill_segment:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$3168, %rsp
	movq	%rdi, -3144(%rbp)
	movl	%esi, -3148(%rbp)
	movl	%edx, -3152(%rbp)
	movl	%ecx, %eax
	movb	%al, -3156(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	leaq	-2112(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpq	$0, -3144(%rbp)
	je	.L73
	movzbl	-3156(%rbp), %edx
	movl	-3148(%rbp), %ecx
	movq	-3144(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	data_indep_addressing
	testl	%eax, %eax
	je	.L60
	leaq	-3136(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	init_block_value
	leaq	-2112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	init_block_value
	movl	-3148(%rbp), %eax
	movq	%rax, -2112(%rbp)
	movl	-3152(%rbp), %eax
	movq	%rax, -2104(%rbp)
	movzbl	-3156(%rbp), %eax
	movq	%rax, -2096(%rbp)
	movq	-3144(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -2088(%rbp)
	movq	-3144(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -2080(%rbp)
	movq	-3144(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -2072(%rbp)
.L60:
	movl	$0, -24(%rbp)
	cmpl	$0, -3148(%rbp)
	jne	.L61
	cmpb	$0, -3156(%rbp)
	jne	.L61
	movl	$2, -24(%rbp)
	movzbl	-3156(%rbp), %edx
	movl	-3148(%rbp), %ecx
	movq	-3144(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	data_indep_addressing
	testl	%eax, %eax
	je	.L61
	leaq	-3136(%rbp), %rdx
	leaq	-2112(%rbp), %rcx
	leaq	-1088(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	next_addresses
.L61:
	movq	-3144(%rbp), %rax
	movl	124(%rax), %eax
	imull	-3152(%rbp), %eax
	movl	%eax, %ecx
	movzbl	-3156(%rbp), %edx
	movq	-3144(%rbp), %rax
	movl	120(%rax), %eax
	imull	%edx, %eax
	leal	(%rcx,%rax), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -32(%rbp)
	movq	-3144(%rbp), %rax
	movl	124(%rax), %esi
	movl	-32(%rbp), %eax
	movl	$0, %edx
	divl	%esi
	movl	%edx, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.L62
	movq	-3144(%rbp), %rax
	movl	124(%rax), %edx
	movl	-32(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L63
.L62:
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
.L63:
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L64
.L72:
	movq	-3144(%rbp), %rax
	movl	124(%rax), %esi
	movl	-32(%rbp), %eax
	movl	$0, %edx
	divl	%esi
	movl	%edx, %ecx
	movl	%ecx, %eax
	cmpl	$1, %eax
	jne	.L65
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
.L65:
	movzbl	-3156(%rbp), %edx
	movl	-3148(%rbp), %ecx
	movq	-3144(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	data_indep_addressing
	testl	%eax, %eax
	je	.L66
	movl	-28(%rbp), %eax
	andl	$127, %eax
	testl	%eax, %eax
	jne	.L67
	leaq	-3136(%rbp), %rdx
	leaq	-2112(%rbp), %rcx
	leaq	-1088(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	next_addresses
.L67:
	movl	-28(%rbp), %eax
	andl	$127, %eax
	movl	%eax, %eax
	movq	-1088(%rbp,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.L68
.L66:
	movq	-3144(%rbp), %rax
	movq	104(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$10, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L68:
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-3144(%rbp), %rax
	movl	84(%rax), %eax
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -16(%rbp)
	cmpl	$0, -3148(%rbp)
	jne	.L69
	cmpb	$0, -3156(%rbp)
	jne	.L69
	movl	-3152(%rbp), %eax
	movq	%rax, -16(%rbp)
.L69:
	movl	-3152(%rbp), %eax
	cmpq	%rax, -16(%rbp)
	sete	%al
	movzbl	%al, %edi
	movq	-8(%rbp), %rax
	movl	%eax, %r8d
	movzbl	-3156(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-3148(%rbp), %esi
	movq	-3144(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	index_alpha
	movl	%eax, %eax
	movq	%rax, -56(%rbp)
	movq	-3144(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-3144(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, %eax
	imulq	-16(%rbp), %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	salq	$10, %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-3144(%rbp), %rax
	movq	104(%rax), %rax
	movl	-32(%rbp), %edx
	salq	$10, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-3144(%rbp), %rax
	movl	92(%rax), %eax
	cmpl	$16, %eax
	jne	.L70
	movq	-3144(%rbp), %rax
	movq	104(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$10, %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	call	fill_block
	jmp	.L71
.L70:
	cmpl	$0, -3148(%rbp)
	setne	%al
	movzbl	%al, %ecx
	movq	-3144(%rbp), %rax
	movq	104(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$10, %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	call	fill_block
.L71:
	addl	$1, -28(%rbp)
	addl	$1, -32(%rbp)
	addl	$1, -20(%rbp)
.L64:
	movq	-3144(%rbp), %rax
	movl	120(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jb	.L72
	jmp	.L57
.L73:
	nop
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	fill_segment, .-fill_segment
	.type	fill_segment_thr, @function
fill_segment_thr:
.LFB501:
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
	movzbl	8(%rax), %eax
	movzbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	fill_segment
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	fill_segment_thr, .-fill_segment_thr
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/kdfs/argon2.c"
	.text
	.type	fill_mem_blocks_mt, @function
fill_mem_blocks_mt:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	84(%rax), %eax
	movl	%eax, %eax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$567, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	84(%rax), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movl	$568, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L102
	cmpq	$0, -48(%rbp)
	je	.L102
	movl	$0, -20(%rbp)
	jmp	.L80
.L98:
	movl	$0, -24(%rbp)
	jmp	.L81
.L97:
	movl	$0, -28(%rbp)
	jmp	.L82
.L92:
	movq	-72(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jb	.L83
	movq	-72(%rbp), %rax
	movl	88(%rax), %eax
	movl	-28(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_crypto_thread_join@PLT
	testl	%eax, %eax
	je	.L103
	movq	-72(%rbp), %rax
	movl	88(%rax), %eax
	movl	-28(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_clean@PLT
	testl	%eax, %eax
	je	.L104
	movl	-28(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
.L83:
	movl	-20(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %eax
	movb	%al, -56(%rbp)
	movl	$0, -52(%rbp)
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, 16(%rdx)
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	-28(%rbp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	movl	-28(%rbp), %ecx
	leaq	0(,%rcx,8), %rsi
	movq	-40(%rbp), %rcx
	leaq	(%rsi,%rcx), %rbx
	leaq	fill_segment_thr(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_thread_start@PLT
	movq	%rax, (%rbx)
	movl	-28(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L87
	movl	$0, -32(%rbp)
	jmp	.L88
.L91:
	movl	-32(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_crypto_thread_join@PLT
	testl	%eax, %eax
	je	.L105
	movl	-32(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_clean@PLT
	testl	%eax, %eax
	je	.L106
	movl	-32(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -32(%rbp)
.L88:
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L91
	jmp	.L79
.L87:
	addl	$1, -28(%rbp)
.L82:
	movq	-72(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jb	.L92
	movq	-72(%rbp), %rax
	movl	84(%rax), %edx
	movq	-72(%rbp), %rax
	movl	88(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -28(%rbp)
	jmp	.L93
.L96:
	movl	-28(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_crypto_thread_join@PLT
	testl	%eax, %eax
	je	.L107
	movl	-28(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_clean@PLT
	testl	%eax, %eax
	je	.L108
	movl	-28(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -28(%rbp)
.L93:
	movq	-72(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jb	.L96
	addl	$1, -24(%rbp)
.L81:
	cmpl	$3, -24(%rbp)
	jbe	.L97
	addl	$1, -20(%rbp)
.L80:
	movq	-72(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jb	.L98
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$615, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$616, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L99
.L102:
	nop
	jmp	.L79
.L103:
	nop
	jmp	.L79
.L104:
	nop
	jmp	.L79
.L105:
	nop
	jmp	.L79
.L106:
	nop
	jmp	.L79
.L107:
	nop
	jmp	.L79
.L108:
	nop
.L79:
	cmpq	$0, -48(%rbp)
	je	.L100
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$622, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L100:
	cmpq	$0, -40(%rbp)
	je	.L101
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$624, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L101:
	movl	$0, %eax
.L99:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	fill_mem_blocks_mt, .-fill_mem_blocks_mt
	.type	fill_mem_blocks_st, @function
fill_mem_blocks_st:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L110
.L115:
	movl	$0, -8(%rbp)
	jmp	.L111
.L114:
	movl	$0, -12(%rbp)
	jmp	.L112
.L113:
	movl	-8(%rbp), %eax
	movzbl	%al, %ecx
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fill_segment
	addl	$1, -12(%rbp)
.L112:
	movq	-24(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jb	.L113
	addl	$1, -8(%rbp)
.L111:
	cmpl	$3, -8(%rbp)
	jbe	.L114
	addl	$1, -4(%rbp)
.L110:
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L115
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	fill_mem_blocks_st, .-fill_mem_blocks_st
	.type	fill_memory_blocks, @function
fill_memory_blocks:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	$1, %eax
	jne	.L118
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fill_mem_blocks_st
	jmp	.L120
.L118:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fill_mem_blocks_mt
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	fill_memory_blocks, .-fill_memory_blocks
	.type	initial_hash, @function
initial_hash:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L140
	cmpq	$0, -56(%rbp)
	je	.L140
	movq	-64(%rbp), %rax
	movl	84(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-64(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-64(%rbp), %rax
	movl	76(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	movl	92(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -24(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L141
	movq	-64(%rbp), %rax
	movq	136(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	cmpl	$1, %eax
	jne	.L141
	movl	$0, -16(%rbp)
	jmp	.L128
.L130:
	movl	-16(%rbp), %eax
	movl	%eax, %eax
	movl	-48(%rbp,%rax,4), %edx
	leaq	-12(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	store32
	leaq	-12(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	cmpl	$1, %eax
	jne	.L142
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.L128:
	movl	-16(%rbp), %eax
	cmpl	$6, %eax
	jbe	.L130
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	cmpl	$1, %eax
	jne	.L143
	movq	-64(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L131
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-64(%rbp), %rax
	movl	$0, 24(%rax)
.L131:
	movq	-64(%rbp), %rax
	movl	40(%rax), %edx
	leaq	-12(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	store32
	leaq	-12(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	cmpl	$1, %eax
	jne	.L144
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-64(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	cmpl	$1, %eax
	jne	.L145
.L134:
	movq	-64(%rbp), %rax
	movl	56(%rax), %edx
	leaq	-12(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	store32
	leaq	-12(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	cmpl	$1, %eax
	jne	.L146
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-64(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	cmpl	$1, %eax
	jne	.L147
	movq	-64(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L136
	movq	-64(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-64(%rbp), %rax
	movl	$0, 56(%rax)
.L136:
	movq	-64(%rbp), %rax
	movl	72(%rax), %edx
	leaq	-12(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	store32
	leaq	-12(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	cmpl	$1, %eax
	jne	.L148
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L139
	movq	-64(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	cmpl	$1, %eax
	jne	.L149
.L139:
	movl	$64, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	cmpl	$1, %eax
	jmp	.L127
.L141:
	nop
	jmp	.L127
.L142:
	nop
	jmp	.L127
.L143:
	nop
	jmp	.L127
.L144:
	nop
	jmp	.L127
.L145:
	nop
	jmp	.L127
.L146:
	nop
	jmp	.L127
.L147:
	nop
	jmp	.L127
.L148:
	nop
	jmp	.L127
.L149:
	nop
.L127:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	jmp	.L121
.L140:
	nop
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	initial_hash, .-initial_hash
	.section	.rodata
	.align 8
.LC1:
	.string	"cannot allocate required memory"
	.text
	.type	initialize, @function
initialize:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L151
	movl	$0, %eax
	jmp	.L156
.L151:
	movq	-88(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	je	.L153
	movq	-88(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, %eax
	salq	$10, %rax
	leaq	.LC0(%rip), %rcx
	movl	$736, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_zalloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 104(%rax)
	jmp	.L154
.L153:
	movq	-88(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, %eax
	salq	$10, %rax
	leaq	.LC0(%rip), %rcx
	movl	$739, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 104(%rax)
.L154:
	movq	-88(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L155
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$743, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movl	$235, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L156
.L155:
	movq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	initial_hash
	leaq	-80(%rbp), %rax
	addq	$64, %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fill_first_blocks
	leaq	-80(%rbp), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	initialize, .-initialize
	.type	finalize, @function
finalize:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2080, %rsp
	movq	%rdi, -2072(%rbp)
	movq	%rsi, -2080(%rbp)
	cmpq	$0, -2072(%rbp)
	je	.L164
	movq	-2072(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-2072(%rbp), %rax
	movl	124(%rax), %eax
	movl	%eax, %eax
	salq	$10, %rax
	subq	$1024, %rax
	addq	%rax, %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	copy_block
	movl	$1, -4(%rbp)
	jmp	.L160
.L161:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movq	-2072(%rbp), %rax
	movl	124(%rax), %eax
	imull	%edx, %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	movq	-2072(%rbp), %rax
	movq	104(%rax), %rax
	movl	-8(%rbp), %edx
	salq	$10, %rdx
	addq	%rax, %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	xor_block
	addl	$1, -4(%rbp)
.L160:
	movq	-2072(%rbp), %rax
	movl	84(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L161
	leaq	-1040(%rbp), %rdx
	leaq	-2064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_block
	movq	-2072(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edi
	movq	-2072(%rbp), %rax
	movq	144(%rax), %rsi
	movq	-2072(%rbp), %rax
	movq	136(%rax), %rax
	leaq	-2064(%rbp), %rcx
	movq	-2080(%rbp), %rdx
	movl	$1024, %r9d
	movq	%rcx, %r8
	movq	%rdi, %rcx
	movq	%rax, %rdi
	call	blake2b_long
	leaq	-1040(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-2064(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-2072(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	je	.L162
	movq	-2072(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, %eax
	salq	$10, %rax
	movq	%rax, %rsi
	movq	-2072(%rbp), %rax
	movq	104(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$783, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	jmp	.L157
.L162:
	movq	-2072(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, %eax
	salq	$10, %rax
	movq	%rax, %rsi
	movq	-2072(%rbp), %rax
	movq	104(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$786, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L157
.L164:
	nop
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	finalize, .-finalize
	.section	.rodata
.LC2:
	.string	"key"
.LC3:
	.string	"size"
	.text
	.type	blake2b_mac, @function
blake2b_mac:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movq	%r9, -224(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L171
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-160(%rax), %rbx
	leaq	-272(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	-224(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-160(%rax), %rbx
	leaq	-272(%rbp), %rax
	leaq	-200(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-160(%rax), %rbx
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-240(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-176(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	cmpl	$1, %eax
	jne	.L168
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	cmpl	$1, %eax
	jne	.L168
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	cmpl	$1, %eax
	jne	.L168
	movq	-200(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	cmpl	$1, %eax
	jne	.L168
	movl	$1, %eax
	jmp	.L169
.L168:
	movl	$0, %eax
.L169:
	movl	%eax, -20(%rbp)
	jmp	.L167
.L171:
	nop
.L167:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	blake2b_mac, .-blake2b_mac
	.type	blake2b_md, @function
blake2b_md:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L173
	movl	$0, %eax
	jmp	.L177
.L173:
	leaq	-192(%rbp), %rax
	leaq	-120(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex2@PLT
	cmpl	$1, %eax
	jne	.L175
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	cmpl	$1, %eax
	jne	.L175
	movq	-112(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	cmpl	$1, %eax
	jne	.L175
	movl	$1, %eax
	jmp	.L176
.L175:
	movl	$0, %eax
.L176:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	blake2b_md, .-blake2b_md
	.type	blake2b, @function
blake2b:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L179
	cmpq	$0, -32(%rbp)
	jne	.L180
.L179:
	movl	$0, %eax
	jmp	.L181
.L180:
	cmpq	$0, 16(%rbp)
	je	.L182
	cmpq	$0, 24(%rbp)
	jne	.L183
.L182:
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	blake2b_md
	jmp	.L181
.L183:
	movq	16(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	blake2b_mac
	addq	$16, %rsp
.L181:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	blake2b, .-blake2b
	.type	blake2b_long, @function
blake2b_long:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -288(%rbp)
	movq	%r8, -296(%rbp)
	movq	%r9, -304(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -148(%rbp)
	cmpq	$0, -280(%rbp)
	je	.L185
	cmpq	$0, -288(%rbp)
	jne	.L186
.L185:
	movl	$0, %eax
	jmp	.L200
.L186:
	movq	-288(%rbp), %rax
	movl	%eax, %edx
	leaq	-148(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	store32
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L188
	movl	$0, %eax
	jmp	.L200
.L188:
	movq	-288(%rbp), %rax
	movl	$64, %edx
	cmpq	%rdx, %rax
	cmova	%rdx, %rax
	movq	%rax, -248(%rbp)
	leaq	-352(%rbp), %rax
	leaq	-248(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-240(%rbp), %rdx
	movq	-264(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex2@PLT
	cmpl	$1, %eax
	jne	.L189
	leaq	-148(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	cmpl	$1, %eax
	jne	.L189
	movq	-304(%rbp), %rdx
	movq	-296(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	cmpl	$1, %eax
	jne	.L189
	cmpq	$64, -288(%rbp)
	jbe	.L190
	leaq	-80(%rbp), %rax
	jmp	.L191
.L190:
	movq	-280(%rbp), %rax
.L191:
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_DigestFinal_ex@PLT
	cmpl	$1, %eax
	jne	.L189
	movl	$1, %eax
	jmp	.L192
.L189:
	movl	$0, %eax
.L192:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L201
	cmpq	$64, -288(%rbp)
	jbe	.L195
	leaq	-80(%rbp), %rcx
	movq	-280(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	addq	$32, -280(%rbp)
	movq	-288(%rbp), %rax
	subl	$32, %eax
	movl	%eax, -8(%rbp)
	jmp	.L196
.L198:
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-144(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-272(%rbp), %rsi
	movq	-264(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	$64, %r9d
	movq	%rcx, %r8
	movl	$64, %ecx
	movq	%rax, %rdi
	call	blake2b
	addq	$16, %rsp
	cmpl	$1, %eax
	jne	.L202
	leaq	-80(%rbp), %rcx
	movq	-280(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	addq	$32, -280(%rbp)
	subl	$32, -8(%rbp)
.L196:
	cmpl	$64, -8(%rbp)
	ja	.L198
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movl	-8(%rbp), %ecx
	leaq	-144(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	-272(%rbp), %rsi
	movq	-264(%rbp), %rax
	pushq	$0
	pushq	$0
	movl	$64, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	blake2b
	addq	$16, %rsp
	cmpl	$1, %eax
	jne	.L203
	movl	-8(%rbp), %edx
	leaq	-80(%rbp), %rcx
	movq	-280(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L195:
	movl	$1, -4(%rbp)
	jmp	.L194
.L201:
	nop
	jmp	.L194
.L202:
	nop
	jmp	.L194
.L203:
	nop
.L194:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	blake2b_long, .-blake2b_long
	.type	kdf_argon2_init, @function
kdf_argon2_init:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$160, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	-24(%rbp), %rax
	movl	$64, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$3, 76(%rax)
	movq	-24(%rbp), %rax
	movl	$8, 80(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 84(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 88(%rax)
	movq	-24(%rbp), %rax
	movl	$19, 92(%rax)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 100(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	kdf_argon2_init, .-kdf_argon2_init
	.type	kdf_argon2d_new, @function
kdf_argon2d_new:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L206
	movl	$0, %eax
	jmp	.L207
.L206:
	leaq	.LC0(%rip), %rax
	movl	$935, %edx
	movq	%rax, %rsi
	movl	$160, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L208
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$937, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L207
.L208:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 128(%rdx)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	kdf_argon2_init
	movq	-8(%rbp), %rax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	kdf_argon2d_new, .-kdf_argon2d_new
	.type	kdf_argon2i_new, @function
kdf_argon2i_new:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L210
	movl	$0, %eax
	jmp	.L211
.L210:
	leaq	.LC0(%rip), %rax
	movl	$954, %edx
	movq	%rax, %rsi
	movl	$160, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L212
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$956, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L211
.L212:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 128(%rdx)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	kdf_argon2_init
	movq	-8(%rbp), %rax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	kdf_argon2i_new, .-kdf_argon2i_new
	.type	kdf_argon2id_new, @function
kdf_argon2id_new:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L214
	movl	$0, %eax
	jmp	.L215
.L214:
	leaq	.LC0(%rip), %rax
	movl	$973, %edx
	movq	%rax, %rsi
	movl	$160, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L216
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$975, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L215
.L216:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 128(%rdx)
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	kdf_argon2_init
	movq	-8(%rbp), %rax
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	kdf_argon2id_new, .-kdf_argon2id_new
	.type	kdf_argon2_free, @function
kdf_argon2_free:
.LFB516:
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
	je	.L224
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L220
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$993, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L220:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L221
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$996, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L221:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L222
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$999, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L222:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L223
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1002, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L223:
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1007, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movl	$160, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1011, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L217
.L224:
	nop
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	kdf_argon2_free, .-kdf_argon2_free
	.section	.rodata
.LC4:
	.string	"blake2bmac"
.LC5:
	.string	"cannot fetch blake2bmac"
.LC6:
	.string	"blake2b512"
.LC7:
	.string	"cannot fetch blake2b512"
.LC8:
	.string	"invalid Argon2 type"
	.align 8
.LC9:
	.string	"requested %u threads, available: %u"
	.align 8
.LC10:
	.string	"requested more threads (%u) than lanes (%u)"
	.align 8
.LC11:
	.string	"m_cost must be greater or equal than 8 times the number of lanes"
	.text
	.type	kdf_argon2_derive, @function
kdf_argon2_derive:
.LFB517:
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
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L226
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_argon2_set_ctx_params
	testl	%eax, %eax
	jne	.L227
.L226:
	movl	$0, %eax
	jmp	.L228
.L227:
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L229
	movq	-32(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_fetch@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 144(%rdx)
.L229:
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L230
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1028, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdx
	movl	$150, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L230:
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L231
	movq	-32(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 136(%rdx)
.L231:
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L232
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1036, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdx
	movl	$129, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L232:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L233
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L234
.L233:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1042, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L234:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -72(%rbp)
	je	.L235
	leaq	.LC3(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	testq	%rax, %rax
	je	.L236
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1048, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L236:
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_out_length
	testl	%eax, %eax
	jne	.L235
	movl	$0, %eax
	jmp	.L228
.L235:
	movq	-32(%rbp), %rax
	movl	100(%rax), %eax
	cmpl	$2, %eax
	jbe	.L246
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1061, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L246:
	nop
	movq	-32(%rbp), %rax
	movl	88(%rax), %eax
	cmpl	$1, %eax
	jbe	.L239
	movq	-32(%rbp), %rax
	movl	88(%rax), %eax
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	ossl_get_avail_threads@PLT
	cmpq	%rbx, %rax
	jnb	.L240
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1073, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	ossl_get_avail_threads@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	88(%rax), %eax
	leaq	.LC9(%rip), %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$234, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L240:
	movq	-32(%rbp), %rax
	movl	88(%rax), %eax
	movq	-32(%rbp), %rdx
	movl	84(%rdx), %edx
	cmpl	%eax, %edx
	jnb	.L239
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1080, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movl	84(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	88(%rax), %eax
	leaq	.LC10(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$234, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L239:
	movq	-32(%rbp), %rax
	movl	80(%rax), %edx
	movq	-32(%rbp), %rax
	movl	84(%rax), %eax
	sall	$3, %eax
	cmpl	%eax, %edx
	jnb	.L241
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1088, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdx
	movl	$235, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L241:
	movq	-32(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movl	84(%rax), %eax
	sall	$3, %eax
	cmpl	%eax, -20(%rbp)
	jnb	.L242
	movq	-32(%rbp), %rax
	movl	84(%rax), %eax
	sall	$3, %eax
	movl	%eax, -20(%rbp)
.L242:
	movq	-32(%rbp), %rax
	movl	84(%rax), %eax
	leal	0(,%rax,4), %ebx
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	%ebx
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	84(%rax), %eax
	imull	-36(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 116(%rax)
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 120(%rax)
	movq	-32(%rbp), %rax
	movl	76(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 112(%rax)
	movl	-36(%rbp), %eax
	leal	0(,%rax,4), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 124(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	initialize
	cmpl	$1, %eax
	je	.L243
	movl	$0, %eax
	jmp	.L228
.L243:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fill_memory_blocks
	cmpl	$1, %eax
	je	.L244
	movl	$0, %eax
	jmp	.L228
.L244:
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	finalize
	movl	$1, %eax
.L228:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	kdf_argon2_derive, .-kdf_argon2_derive
	.type	kdf_argon2_reset, @function
kdf_argon2_reset:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1131, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L248
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1134, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L248:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L249
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1137, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L249:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L250
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1140, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L250:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L251
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1143, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L251:
	movq	-8(%rbp), %rax
	movl	$160, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kdf_argon2_init
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	kdf_argon2_reset, .-kdf_argon2_reset
	.section	.rodata
.LC12:
	.string	"min threads: %u"
.LC13:
	.string	"max threads: %u"
	.text
	.type	kdf_argon2_ctx_set_threads, @function
kdf_argon2_ctx_set_threads:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L253
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1153, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC12(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdx
	movl	$234, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L253:
	cmpl	$16777215, -12(%rbp)
	jbe	.L255
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC13(%rip), %rax
	movl	$16777215, %ecx
	movq	%rax, %rdx
	movl	$234, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L255:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 88(%rax)
	movl	$1, %eax
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	kdf_argon2_ctx_set_threads, .-kdf_argon2_ctx_set_threads
	.section	.rodata
.LC14:
	.string	"max lanes: %u"
.LC15:
	.string	"min lanes: %u"
	.text
	.type	kdf_argon2_ctx_set_lanes, @function
kdf_argon2_ctx_set_lanes:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$16777215, -12(%rbp)
	jbe	.L257
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC14(%rip), %rax
	movl	$16777215, %ecx
	movq	%rax, %rdx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L258
.L257:
	cmpl	$0, -12(%rbp)
	jne	.L259
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1177, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC15(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdx
	movl	$104, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L258
.L259:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 84(%rax)
	movl	$1, %eax
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	kdf_argon2_ctx_set_lanes, .-kdf_argon2_ctx_set_lanes
	.section	.rodata
.LC16:
	.string	"min: %u"
	.text
	.type	kdf_argon2_ctx_set_t_cost, @function
kdf_argon2_ctx_set_t_cost:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L261
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC16(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdx
	movl	$123, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L262
.L261:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 76(%rax)
	movl	$1, %eax
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	kdf_argon2_ctx_set_t_cost, .-kdf_argon2_ctx_set_t_cost
	.type	kdf_argon2_ctx_set_m_cost, @function
kdf_argon2_ctx_set_m_cost:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$7, -12(%rbp)
	ja	.L264
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1205, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC16(%rip), %rax
	movl	$8, %ecx
	movq	%rax, %rdx
	movl	$235, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L265
.L264:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 80(%rax)
	movl	$1, %eax
.L265:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	kdf_argon2_ctx_set_m_cost, .-kdf_argon2_ctx_set_m_cost
	.type	kdf_argon2_ctx_set_out_length, @function
kdf_argon2_ctx_set_out_length:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$3, -12(%rbp)
	ja	.L267
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1223, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC16(%rip), %rax
	movl	$4, %ecx
	movq	%rax, %rdx
	movl	$217, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L268
.L267:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	$1, %eax
.L268:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	kdf_argon2_ctx_set_out_length, .-kdf_argon2_ctx_set_out_length
	.type	kdf_argon2_ctx_set_secret, @function
kdf_argon2_ctx_set_secret:
.LFB524:
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
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L270
	movl	$0, %eax
	jmp	.L275
.L270:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L272
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1240, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 56(%rax)
.L272:
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rsi
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L273
	movl	$0, %eax
	jmp	.L275
.L273:
	movq	-8(%rbp), %rax
	movl	$4294967295, %edx
	cmpq	%rax, %rdx
	jnb	.L274
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1249, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 56(%rax)
	movl	$0, %eax
	jmp	.L275
.L274:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 56(%rax)
	movl	$1, %eax
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	kdf_argon2_ctx_set_secret, .-kdf_argon2_ctx_set_secret
	.section	.rodata
.LC17:
	.string	"max: %u"
	.text
	.type	kdf_argon2_ctx_set_pwd, @function
kdf_argon2_ctx_set_pwd:
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
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L277
	movl	$0, %eax
	jmp	.L283
.L277:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L279
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1267, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
.L279:
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rsi
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L280
	movl	$0, %eax
	jmp	.L283
.L280:
	movq	-8(%rbp), %rax
	movl	$4294967295, %edx
	cmpq	%rax, %rdx
	jnb	.L281
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1276, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC17(%rip), %rax
	movl	$-1, %ecx
	movq	%rax, %rdx
	movl	$112, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L282:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1285, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movl	$0, %eax
	jmp	.L283
.L281:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movl	$1, %eax
.L283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	kdf_argon2_ctx_set_pwd, .-kdf_argon2_ctx_set_pwd
	.type	kdf_argon2_ctx_set_salt, @function
kdf_argon2_ctx_set_salt:
.LFB526:
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
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L285
	movl	$0, %eax
	jmp	.L292
.L285:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L287
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1299, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
.L287:
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rsi
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L288
	movl	$0, %eax
	jmp	.L292
.L288:
	movq	-8(%rbp), %rax
	cmpq	$7, %rax
	ja	.L289
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1308, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC16(%rip), %rax
	movl	$8, %ecx
	movq	%rax, %rdx
	movl	$112, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L290
.L289:
	movq	-8(%rbp), %rax
	movl	$4294967295, %edx
	cmpq	%rax, %rdx
	jnb	.L291
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1314, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC17(%rip), %rax
	movl	$-1, %ecx
	movq	%rax, %rdx
	movl	$112, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L290
.L291:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	movl	$1, %eax
	jmp	.L292
.L290:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1323, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
	movl	$0, %eax
.L292:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	kdf_argon2_ctx_set_salt, .-kdf_argon2_ctx_set_salt
	.type	kdf_argon2_ctx_set_ad, @function
kdf_argon2_ctx_set_ad:
.LFB527:
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
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L294
	movl	$0, %eax
	jmp	.L299
.L294:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L296
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$1337, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 72(%rax)
.L296:
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rsi
	leaq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L297
	movl	$0, %eax
	jmp	.L299
.L297:
	movq	-8(%rbp), %rax
	movl	$4294967295, %edx
	cmpq	%rax, %rdx
	jnb	.L298
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1346, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 72(%rax)
	movl	$0, %eax
	jmp	.L299
.L298:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 72(%rax)
	movl	$1, %eax
.L299:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	kdf_argon2_ctx_set_ad, .-kdf_argon2_ctx_set_ad
	.type	kdf_argon2_ctx_set_flag_early_clean, @function
kdf_argon2_ctx_set_flag_early_clean:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	kdf_argon2_ctx_set_flag_early_clean, .-kdf_argon2_ctx_set_flag_early_clean
	.section	.rodata
.LC18:
	.string	"invalid Argon2 version"
	.text
	.type	kdf_argon2_ctx_set_version, @function
kdf_argon2_ctx_set_version:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$16, -12(%rbp)
	je	.L302
	cmpl	$19, -12(%rbp)
	jne	.L303
.L302:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 92(%rax)
	movl	$1, %eax
	jmp	.L304
.L303:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1369, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	movl	$125, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L304:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	kdf_argon2_ctx_set_version, .-kdf_argon2_ctx_set_version
	.type	set_property_query, @function
set_property_query:
.LFB530:
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
	movq	152(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1377, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	cmpq	$0, -16(%rbp)
	je	.L306
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1380, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 152(%rdx)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L306
	movl	$0, %eax
	jmp	.L307
.L306:
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
	movl	$1, %eax
.L307:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	set_property_query, .-set_property_query
	.section	.rodata
.LC19:
	.string	"pass"
.LC20:
	.string	"salt"
.LC21:
	.string	"secret"
.LC22:
	.string	"ad"
.LC23:
	.string	"iter"
.LC24:
	.string	"threads"
.LC25:
	.string	"lanes"
.LC26:
	.string	"memcost"
.LC27:
	.string	"early_clean"
.LC28:
	.string	"version"
.LC29:
	.string	"properties"
	.text
	.type	kdf_argon2_set_ctx_params, @function
kdf_argon2_set_ctx_params:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L309
	movl	$1, %eax
	jmp	.L331
.L309:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC19(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L311
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_pwd
	testl	%eax, %eax
	jne	.L311
	movl	$0, %eax
	jmp	.L331
.L311:
	leaq	.LC20(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L312
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_salt
	testl	%eax, %eax
	jne	.L312
	movl	$0, %eax
	jmp	.L331
.L312:
	leaq	.LC21(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L313
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_secret
	testl	%eax, %eax
	jne	.L313
	movl	$0, %eax
	jmp	.L331
.L313:
	leaq	.LC22(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L314
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_ad
	testl	%eax, %eax
	jne	.L314
	movl	$0, %eax
	jmp	.L331
.L314:
	leaq	.LC3(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L315
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	jne	.L316
	movl	$0, %eax
	jmp	.L331
.L316:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_out_length
	testl	%eax, %eax
	jne	.L315
	movl	$0, %eax
	jmp	.L331
.L315:
	leaq	.LC23(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L317
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	jne	.L318
	movl	$0, %eax
	jmp	.L331
.L318:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_t_cost
	testl	%eax, %eax
	jne	.L317
	movl	$0, %eax
	jmp	.L331
.L317:
	leaq	.LC24(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L319
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	jne	.L320
	movl	$0, %eax
	jmp	.L331
.L320:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_threads
	testl	%eax, %eax
	jne	.L319
	movl	$0, %eax
	jmp	.L331
.L319:
	leaq	.LC25(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L321
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	jne	.L322
	movl	$0, %eax
	jmp	.L331
.L322:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_lanes
	testl	%eax, %eax
	jne	.L321
	movl	$0, %eax
	jmp	.L331
.L321:
	leaq	.LC26(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L323
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	jne	.L324
	movl	$0, %eax
	jmp	.L331
.L324:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_m_cost
	testl	%eax, %eax
	jne	.L323
	movl	$0, %eax
	jmp	.L331
.L323:
	leaq	.LC27(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L325
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	jne	.L326
	movl	$0, %eax
	jmp	.L331
.L326:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_flag_early_clean
.L325:
	leaq	.LC28(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L327
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	jne	.L328
	movl	$0, %eax
	jmp	.L331
.L328:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	kdf_argon2_ctx_set_version
	testl	%eax, %eax
	jne	.L327
	movl	$0, %eax
	jmp	.L331
.L327:
	leaq	.LC29(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L329
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L330
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_property_query
	testl	%eax, %eax
	jne	.L329
.L330:
	movl	$0, %eax
	jmp	.L331
.L329:
	movl	$1, %eax
.L331:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	kdf_argon2_set_ctx_params, .-kdf_argon2_set_ctx_params
	.type	kdf_argon2_settable_ctx_params, @function
kdf_argon2_settable_ctx_params:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_settable_ctx_params.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	kdf_argon2_settable_ctx_params, .-kdf_argon2_settable_ctx_params
	.type	kdf_argon2_get_ctx_params, @function
kdf_argon2_get_ctx_params:
.LFB533:
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
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L335
	movq	-8(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_size_t@PLT
	jmp	.L336
.L335:
	movl	$-2, %eax
.L336:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	kdf_argon2_get_ctx_params, .-kdf_argon2_get_ctx_params
	.type	kdf_argon2_gettable_ctx_params, @function
kdf_argon2_gettable_ctx_params:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	kdf_argon2_gettable_ctx_params, .-kdf_argon2_gettable_ctx_params
	.globl	ossl_kdf_argon2i_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_kdf_argon2i_functions, @object
	.size	ossl_kdf_argon2i_functions, 144
ossl_kdf_argon2i_functions:
	.long	1
	.zero	4
	.quad	kdf_argon2i_new
	.long	3
	.zero	4
	.quad	kdf_argon2_free
	.long	4
	.zero	4
	.quad	kdf_argon2_reset
	.long	5
	.zero	4
	.quad	kdf_argon2_derive
	.long	8
	.zero	4
	.quad	kdf_argon2_settable_ctx_params
	.long	11
	.zero	4
	.quad	kdf_argon2_set_ctx_params
	.long	7
	.zero	4
	.quad	kdf_argon2_gettable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_argon2_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_kdf_argon2d_functions
	.align 32
	.type	ossl_kdf_argon2d_functions, @object
	.size	ossl_kdf_argon2d_functions, 144
ossl_kdf_argon2d_functions:
	.long	1
	.zero	4
	.quad	kdf_argon2d_new
	.long	3
	.zero	4
	.quad	kdf_argon2_free
	.long	4
	.zero	4
	.quad	kdf_argon2_reset
	.long	5
	.zero	4
	.quad	kdf_argon2_derive
	.long	8
	.zero	4
	.quad	kdf_argon2_settable_ctx_params
	.long	11
	.zero	4
	.quad	kdf_argon2_set_ctx_params
	.long	7
	.zero	4
	.quad	kdf_argon2_gettable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_argon2_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_kdf_argon2id_functions
	.align 32
	.type	ossl_kdf_argon2id_functions, @object
	.size	ossl_kdf_argon2id_functions, 144
ossl_kdf_argon2id_functions:
	.long	1
	.zero	4
	.quad	kdf_argon2id_new
	.long	3
	.zero	4
	.quad	kdf_argon2_free
	.long	4
	.zero	4
	.quad	kdf_argon2_reset
	.long	5
	.zero	4
	.quad	kdf_argon2_derive
	.long	8
	.zero	4
	.quad	kdf_argon2_settable_ctx_params
	.long	11
	.zero	4
	.quad	kdf_argon2_set_ctx_params
	.long	7
	.zero	4
	.quad	kdf_argon2_gettable_ctx_params
	.long	10
	.zero	4
	.quad	kdf_argon2_get_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 11
__func__.14:
	.string	"initialize"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 16
__func__.13:
	.string	"kdf_argon2d_new"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 16
__func__.12:
	.string	"kdf_argon2i_new"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 17
__func__.11:
	.string	"kdf_argon2id_new"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 18
__func__.10:
	.string	"kdf_argon2_derive"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 27
__func__.9:
	.string	"kdf_argon2_ctx_set_threads"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 25
__func__.8:
	.string	"kdf_argon2_ctx_set_lanes"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 26
__func__.7:
	.string	"kdf_argon2_ctx_set_t_cost"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 26
__func__.6:
	.string	"kdf_argon2_ctx_set_m_cost"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 30
__func__.5:
	.string	"kdf_argon2_ctx_set_out_length"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 23
__func__.4:
	.string	"kdf_argon2_ctx_set_pwd"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 24
__func__.3:
	.string	"kdf_argon2_ctx_set_salt"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 27
__func__.2:
	.string	"kdf_argon2_ctx_set_version"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.1, @object
	.size	known_settable_ctx_params.1, 520
known_settable_ctx_params.1:
	.quad	.LC19
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC20
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC21
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC22
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC23
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC24
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC25
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC26
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC27
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC28
	.long	2
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC29
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	known_gettable_ctx_params.0, @object
	.size	known_gettable_ctx_params.0, 80
known_gettable_ctx_params.0:
	.quad	.LC3
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
