	.file	"md5_sha1.c"
	.text
	.globl	ossl_md5_sha1_init
	.type	ossl_md5_sha1_init, @function
ossl_md5_sha1_init:
.LFB320:
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
	call	MD5_Init@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	addq	$92, %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	ossl_md5_sha1_init, .-ossl_md5_sha1_init
	.globl	ossl_md5_sha1_update
	.type	ossl_md5_sha1_update, @function
ossl_md5_sha1_update:
.LFB321:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MD5_Update@PLT
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	leaq	92(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA1_Update@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	ossl_md5_sha1_update, .-ossl_md5_sha1_update
	.globl	ossl_md5_sha1_final
	.type	ossl_md5_sha1_final, @function
ossl_md5_sha1_final:
.LFB322:
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
	call	MD5_Final@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-16(%rbp), %rax
	leaq	92(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	ossl_md5_sha1_final, .-ossl_md5_sha1_final
	.globl	ossl_md5_sha1_ctrl
	.type	ossl_md5_sha1_ctrl, @function
ossl_md5_sha1_ctrl:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	%edx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	cmpl	$29, -108(%rbp)
	je	.L11
	movl	$-2, %eax
	jmp	.L26
.L11:
	cmpq	$0, -104(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L26
.L13:
	cmpl	$48, -112(%rbp)
	je	.L14
	movl	$0, %eax
	jmp	.L26
.L14:
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_md5_sha1_update@PLT
	testl	%eax, %eax
	jg	.L15
	movl	$0, %eax
	jmp	.L26
.L15:
	leaq	-48(%rbp), %rax
	movl	$48, %edx
	movl	$54, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-104(%rbp), %rax
	leaq	-48(%rbp), %rcx
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MD5_Update@PLT
	testl	%eax, %eax
	jne	.L16
	movl	$0, %eax
	jmp	.L26
.L16:
	movq	-104(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD5_Final@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L26
.L17:
	movq	-104(%rbp), %rax
	leaq	92(%rax), %rcx
	leaq	-48(%rbp), %rax
	movl	$40, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA1_Update@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L26
.L18:
	movq	-104(%rbp), %rax
	leaq	92(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L26
.L19:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_md5_sha1_init@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L26
.L20:
	movl	-112(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_md5_sha1_update@PLT
	testl	%eax, %eax
	jg	.L21
	movl	$0, %eax
	jmp	.L26
.L21:
	leaq	-48(%rbp), %rax
	movl	$48, %edx
	movl	$92, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-104(%rbp), %rax
	leaq	-48(%rbp), %rcx
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MD5_Update@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L26
.L22:
	movq	-104(%rbp), %rax
	leaq	-64(%rbp), %rcx
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MD5_Update@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
	jmp	.L26
.L23:
	movq	-104(%rbp), %rax
	leaq	92(%rax), %rcx
	leaq	-48(%rbp), %rax
	movl	$40, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA1_Update@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$0, %eax
	jmp	.L26
.L24:
	movq	-104(%rbp), %rax
	leaq	92(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$20, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	SHA1_Update@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	leaq	-64(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-96(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	ossl_md5_sha1_ctrl, .-ossl_md5_sha1_ctrl
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
