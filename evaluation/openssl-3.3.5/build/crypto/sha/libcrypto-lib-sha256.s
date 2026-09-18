	.file	"sha256.c"
	.text
	.globl	SHA224_Init
	.type	SHA224_Init, @function
SHA224_Init:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$112, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	$-1056596264, (%rax)
	movq	-8(%rbp), %rax
	movl	$914150663, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$812702999, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$-150054599, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$-4191439, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$1750603025, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$1694076839, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$-1090891868, 28(%rax)
	movq	-8(%rbp), %rax
	movl	$28, 108(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	SHA224_Init, .-SHA224_Init
	.globl	SHA256_Init
	.type	SHA256_Init, @function
SHA256_Init:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$112, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	$1779033703, (%rax)
	movq	-8(%rbp), %rax
	movl	$-1150833019, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$1013904242, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$-1521486534, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$1359893119, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$-1694144372, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$528734635, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$1541459225, 28(%rax)
	movq	-8(%rbp), %rax
	movl	$32, 108(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	SHA256_Init, .-SHA256_Init
	.globl	ossl_sha256_192_init
	.type	ossl_sha256_192_init, @function
ossl_sha256_192_init:
.LFB32:
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
	call	SHA256_Init@PLT
	movq	-8(%rbp), %rax
	movl	$24, 108(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	ossl_sha256_192_init, .-ossl_sha256_192_init
	.globl	SHA224_Update
	.type	SHA224_Update, @function
SHA224_Update:
.LFB33:
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
	call	SHA256_Update@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	SHA224_Update, .-SHA224_Update
	.globl	SHA224_Final
	.type	SHA224_Final, @function
SHA224_Final:
.LFB34:
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
	call	SHA256_Final@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	SHA224_Final, .-SHA224_Final
	.globl	SHA256_Update
	.type	SHA256_Update, @function
SHA256_Update:
.LFB35:
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
	jne	.L12
	movl	$1, %eax
	jmp	.L13
.L12:
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	movq	-56(%rbp), %rdx
	sall	$3, %edx
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jnb	.L14
	movq	-40(%rbp), %rax
	movl	36(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 36(%rax)
.L14:
	movq	-40(%rbp), %rax
	movl	36(%rax), %eax
	movq	-56(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 32(%rax)
	movq	-40(%rbp), %rax
	movl	104(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L15
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -32(%rbp)
	cmpq	$63, -56(%rbp)
	ja	.L16
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$63, %rax
	jbe	.L17
.L16:
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
	call	sha256_block_data_order@PLT
	movl	$64, %eax
	subq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 104(%rax)
	movq	-32(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L15
.L17:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movl	104(%rax), %eax
	movq	-56(%rbp), %rdx
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 104(%rax)
	movl	$1, %eax
	jmp	.L13
.L15:
	movq	-56(%rbp), %rax
	shrq	$6, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L18
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_block_data_order@PLT
	salq	$6, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
.L18:
	cmpq	$0, -56(%rbp)
	je	.L19
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 104(%rax)
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L19:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	SHA256_Update, .-SHA256_Update
	.globl	SHA256_Transform
	.type	SHA256_Transform, @function
SHA256_Transform:
.LFB36:
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
	call	sha256_block_data_order@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	SHA256_Transform, .-SHA256_Transform
	.globl	SHA256_Final
	.type	SHA256_Final, @function
SHA256_Final:
.LFB37:
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
	addq	$40, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	104(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$-128, (%rax)
	addq	$1, -8(%rbp)
	cmpq	$56, -8(%rbp)
	jbe	.L22
	movl	$64, %eax
	subq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_block_data_order@PLT
.L22:
	movl	$56, %eax
	subq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	addq	$56, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	36(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	36(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	36(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	subq	$64, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha256_block_data_order@PLT
	movq	-48(%rbp), %rax
	movl	$0, 104(%rax)
	movq	-24(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-48(%rbp), %rax
	movl	108(%rax), %eax
	cmpl	$32, %eax
	je	.L23
	cmpl	$32, %eax
	ja	.L24
	cmpl	$24, %eax
	je	.L25
	cmpl	$28, %eax
	je	.L26
	jmp	.L24
.L25:
	movl	$0, -12(%rbp)
	jmp	.L27
.L28:
	movq	-48(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %eax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movb	%dl, (%rax)
	addl	$1, -12(%rbp)
.L27:
	cmpl	$5, -12(%rbp)
	jbe	.L28
	jmp	.L29
.L26:
	movl	$0, -12(%rbp)
	jmp	.L30
.L31:
	movq	-48(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %eax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movb	%dl, (%rax)
	addl	$1, -12(%rbp)
.L30:
	cmpl	$6, -12(%rbp)
	jbe	.L31
	jmp	.L29
.L23:
	movl	$0, -12(%rbp)
	jmp	.L32
.L33:
	movq	-48(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %eax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movb	%dl, (%rax)
	addl	$1, -12(%rbp)
.L32:
	cmpl	$7, -12(%rbp)
	jbe	.L33
	jmp	.L29
.L24:
	movq	-48(%rbp), %rax
	movl	108(%rax), %eax
	cmpl	$32, %eax
	jbe	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movl	$0, -12(%rbp)
	jmp	.L36
.L37:
	movq	-48(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %eax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movb	%dl, (%rax)
	addl	$1, -12(%rbp)
.L36:
	movq	-48(%rbp), %rax
	movl	108(%rax), %eax
	shrl	$2, %eax
	cmpl	%eax, -12(%rbp)
	jb	.L37
	nop
.L29:
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	SHA256_Final, .-SHA256_Final
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
