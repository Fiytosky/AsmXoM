	.file	"md5_dgst.c"
	.text
	.globl	MD5_Update
	.type	MD5_Update, @function
MD5_Update:
.LFB30:
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
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	movq	-56(%rbp), %rdx
	sall	$3, %edx
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jnb	.L4
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 20(%rax)
.L4:
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	movq	-56(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rax
	movl	88(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L5
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	cmpq	$63, -56(%rbp)
	ja	.L6
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$63, %rax
	jbe	.L7
.L6:
	movl	$64, %eax
	subq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_md5_block_asm_data_order@PLT
	movl	$64, %eax
	subq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-32(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L5
.L7:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movl	88(%rax), %eax
	movq	-56(%rbp), %rdx
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 88(%rax)
	movl	$1, %eax
	jmp	.L3
.L5:
	movq	-56(%rbp), %rax
	shrq	$6, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L8
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_md5_block_asm_data_order@PLT
	salq	$6, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
.L8:
	cmpq	$0, -56(%rbp)
	je	.L9
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 88(%rax)
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L9:
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	MD5_Update, .-MD5_Update
	.globl	MD5_Transform
	.type	MD5_Transform, @function
MD5_Transform:
.LFB31:
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
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_md5_block_asm_data_order@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	MD5_Transform, .-MD5_Transform
	.globl	MD5_Final
	.type	MD5_Final, @function
MD5_Final:
.LFB32:
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
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	88(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$-128, (%rax)
	addq	$1, -8(%rbp)
	cmpq	$56, -8(%rbp)
	jbe	.L12
	movl	$64, %eax
	subq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_md5_block_asm_data_order@PLT
.L12:
	movl	$56, %eax
	subq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	addq	$56, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	subq	$64, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_md5_block_asm_data_order@PLT
	movq	-48(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-16(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	MD5_Final, .-MD5_Final
	.globl	MD5_Init
	.type	MD5_Init, @function
MD5_Init:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$92, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	$1732584193, (%rax)
	movq	-8(%rbp), %rax
	movl	$-271733879, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$-1732584194, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$271733878, 12(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	MD5_Init, .-MD5_Init
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
