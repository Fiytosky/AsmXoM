	.file	"sha1dgst.c"
	.text
	.globl	SHA1_Update
	.type	SHA1_Update, @function
SHA1_Update:
.LFB320:
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
	movl	20(%rax), %eax
	movq	-56(%rbp), %rdx
	sall	$3, %edx
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jnb	.L4
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 24(%rax)
.L4:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	movq	-56(%rbp), %rdx
	shrq	$29, %rdx
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-40(%rbp), %rax
	movl	92(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L5
	movq	-40(%rbp), %rax
	addq	$28, %rax
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
	call	sha1_block_data_order@PLT
	movl	$64, %eax
	subq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 92(%rax)
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
	movl	92(%rax), %eax
	movq	-56(%rbp), %rdx
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 92(%rax)
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
	call	sha1_block_data_order@PLT
	salq	$6, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, -56(%rbp)
.L8:
	cmpq	$0, -56(%rbp)
	je	.L9
	movq	-40(%rbp), %rax
	addq	$28, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 92(%rax)
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
.LFE320:
	.size	SHA1_Update, .-SHA1_Update
	.globl	SHA1_Transform
	.type	SHA1_Transform, @function
SHA1_Transform:
.LFB321:
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
	call	sha1_block_data_order@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	SHA1_Transform, .-SHA1_Transform
	.globl	SHA1_Final
	.type	SHA1_Final, @function
SHA1_Final:
.LFB322:
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
	addq	$28, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	92(%rax), %eax
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
	call	sha1_block_data_order@PLT
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
	movl	24(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
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
	shrl	$8, %eax
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
	subq	$64, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sha1_block_data_order@PLT
	movq	-48(%rbp), %rax
	movl	$0, 92(%rax)
	movq	-16(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$24, %rax
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
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$24, %rax
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
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$24, %rax
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
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$24, %rax
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
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$24, %rax
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
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	SHA1_Final, .-SHA1_Final
	.globl	SHA1_Init
	.type	SHA1_Init, @function
SHA1_Init:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$96, %edx
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
	movq	-8(%rbp), %rax
	movl	$-1009589776, 16(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	SHA1_Init, .-SHA1_Init
	.globl	ossl_sha1_ctrl
	.type	ossl_sha1_ctrl, @function
ossl_sha1_ctrl:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movq	%rcx, -104(%rbp)
	cmpl	$29, -92(%rbp)
	je	.L17
	movl	$-2, %eax
	jmp	.L28
.L17:
	cmpq	$0, -88(%rbp)
	jne	.L19
	movl	$0, %eax
	jmp	.L28
.L19:
	cmpl	$48, -96(%rbp)
	je	.L20
	movl	$0, %eax
	jmp	.L28
.L20:
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA1_Update@PLT
	testl	%eax, %eax
	jg	.L21
	movl	$0, %eax
	jmp	.L28
.L21:
	leaq	-48(%rbp), %rax
	movl	$40, %edx
	movl	$54, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA1_Update@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L28
.L22:
	movq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L28
.L23:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$0, %eax
	jmp	.L28
.L24:
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA1_Update@PLT
	testl	%eax, %eax
	jg	.L25
	movl	$0, %eax
	jmp	.L28
.L25:
	leaq	-48(%rbp), %rax
	movl	$40, %edx
	movl	$92, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA1_Update@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L28
.L26:
	leaq	-80(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA1_Update@PLT
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	leaq	-80(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	ossl_sha1_ctrl, .-ossl_sha1_ctrl
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
