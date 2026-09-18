	.file	"cts128.c"
	.text
	.globl	CRYPTO_cts128_encrypt_block
	.type	CRYPTO_cts128_encrypt_block, @function
CRYPTO_cts128_encrypt_block:
.LFB30:
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
	cmpq	$16, -40(%rbp)
	ja	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-40(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movq	$16, -8(%rbp)
.L4:
	movq	-8(%rbp), %rax
	subq	%rax, -40(%rbp)
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_cbc128_encrypt@PLT
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L5
.L6:
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L5:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L6
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-32(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	CRYPTO_cts128_encrypt_block, .-CRYPTO_cts128_encrypt_block
	.globl	CRYPTO_nistcts128_encrypt_block
	.type	CRYPTO_nistcts128_encrypt_block, @function
CRYPTO_nistcts128_encrypt_block:
.LFB31:
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
	cmpq	$15, -40(%rbp)
	ja	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-40(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -40(%rbp)
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_cbc128_encrypt@PLT
	cmpq	$0, -16(%rbp)
	jne	.L10
	movq	-40(%rbp), %rax
	jmp	.L9
.L10:
	movq	-40(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L11
.L12:
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L11:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L12
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-16(%rbp), %rax
	leaq	-16(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	CRYPTO_nistcts128_encrypt_block, .-CRYPTO_nistcts128_encrypt_block
	.globl	CRYPTO_cts128_encrypt
	.type	CRYPTO_cts128_encrypt, @function
CRYPTO_cts128_encrypt:
.LFB32:
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
	cmpq	$16, -56(%rbp)
	ja	.L14
	movl	$0, %eax
	jmp	.L17
.L14:
	movq	-56(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movq	$16, -8(%rbp)
.L16:
	movq	-8(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %r10
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	-56(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	addq	%rax, -48(%rbp)
	leaq	-32(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-48(%rbp), %rax
	leaq	-16(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-48(%rbp), %rax
	leaq	-16(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	-80(%rbp), %r10
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	*%r10
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	CRYPTO_cts128_encrypt, .-CRYPTO_cts128_encrypt
	.globl	CRYPTO_nistcts128_encrypt
	.type	CRYPTO_nistcts128_encrypt, @function
CRYPTO_nistcts128_encrypt:
.LFB33:
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
	cmpq	$15, -56(%rbp)
	ja	.L19
	movl	$0, %eax
	jmp	.L22
.L19:
	movq	-56(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %r10
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	cmpq	$0, -8(%rbp)
	jne	.L21
	movq	-56(%rbp), %rax
	jmp	.L22
.L21:
	movq	-56(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	addq	%rax, -48(%rbp)
	leaq	-32(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	leaq	-16(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	-80(%rbp), %r10
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	*%r10
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	CRYPTO_nistcts128_encrypt, .-CRYPTO_nistcts128_encrypt
	.globl	CRYPTO_cts128_decrypt_block
	.type	CRYPTO_cts128_decrypt_block, @function
CRYPTO_cts128_decrypt_block:
.LFB34:
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
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	cmpq	$16, -88(%rbp)
	ja	.L24
	movl	$0, %eax
	jmp	.L32
.L24:
	movq	-88(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L26
	movq	$16, -8(%rbp)
.L26:
	movq	-88(%rbp), %rax
	subq	-8(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L27
	movq	-112(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_cbc128_decrypt@PLT
	movq	-88(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	addq	%rax, -80(%rbp)
.L27:
	leaq	-64(%rbp), %rax
	addq	$16, %rax
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-112(%rbp), %r8
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%r8
	leaq	-64(%rbp), %rax
	addq	$16, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	-112(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	$0, -16(%rbp)
	jmp	.L28
.L29:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-104(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movq	-104(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-17(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -16(%rbp)
.L28:
	cmpq	$15, -16(%rbp)
	jbe	.L29
	addq	$16, -8(%rbp)
	jmp	.L30
.L31:
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L30:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L31
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$16, %rax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	CRYPTO_cts128_decrypt_block, .-CRYPTO_cts128_decrypt_block
	.globl	CRYPTO_nistcts128_decrypt_block
	.type	CRYPTO_nistcts128_decrypt_block, @function
CRYPTO_nistcts128_decrypt_block:
.LFB35:
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
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	cmpq	$15, -88(%rbp)
	ja	.L34
	movl	$0, %eax
	jmp	.L42
.L34:
	movq	-88(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L36
	movq	-112(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_cbc128_decrypt@PLT
	movq	-88(%rbp), %rax
	jmp	.L42
.L36:
	movq	-88(%rbp), %rax
	subq	-16(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L37
	movq	-112(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_cbc128_decrypt@PLT
	movq	-88(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	addq	%rax, -80(%rbp)
.L37:
	leaq	-64(%rbp), %rax
	addq	$16, %rax
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	-96(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rax, %rsi
	call	*%rcx
	leaq	-64(%rbp), %rax
	addq	$16, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	-112(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	$0, -8(%rbp)
	jmp	.L38
.L39:
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-104(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	-104(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-17(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -8(%rbp)
.L38:
	cmpq	$15, -8(%rbp)
	jbe	.L39
	addq	$16, -16(%rbp)
	jmp	.L40
.L41:
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-8(%rbp), %rax
	subq	$16, %rax
	movzbl	-64(%rbp,%rax), %ecx
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L40:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L41
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$16, %rax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	CRYPTO_nistcts128_decrypt_block, .-CRYPTO_nistcts128_decrypt_block
	.globl	CRYPTO_cts128_decrypt
	.type	CRYPTO_cts128_decrypt, @function
CRYPTO_cts128_decrypt:
.LFB36:
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
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	cmpq	$16, -72(%rbp)
	ja	.L44
	movl	$0, %eax
	jmp	.L48
.L44:
	movq	-72(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L46
	movq	$16, -8(%rbp)
.L46:
	movq	-72(%rbp), %rax
	subq	-8(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L47
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %r10
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	-72(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	addq	%rax, -64(%rbp)
.L47:
	leaq	-48(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-48(%rbp), %rax
	addq	$16, %rax
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %r10
	movl	$0, %r9d
	movq	%rax, %r8
	movq	%rdx, %rcx
	movl	$16, %edx
	call	*%r10
	movq	-56(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	-96(%rbp), %r10
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	*%r10
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$16, %rax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	CRYPTO_cts128_decrypt, .-CRYPTO_cts128_decrypt
	.globl	CRYPTO_nistcts128_decrypt
	.type	CRYPTO_nistcts128_decrypt, @function
CRYPTO_nistcts128_decrypt:
.LFB37:
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
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	cmpq	$15, -72(%rbp)
	ja	.L50
	movl	$0, %eax
	jmp	.L54
.L50:
	movq	-72(%rbp), %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L52
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %r10
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	-72(%rbp), %rax
	jmp	.L54
.L52:
	movq	-72(%rbp), %rax
	subq	-8(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L53
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %r10
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	-72(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	addq	%rax, -64(%rbp)
.L53:
	leaq	-48(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-48(%rbp), %rax
	addq	$16, %rax
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-96(%rbp), %r10
	movl	$0, %r9d
	movq	%rax, %r8
	movq	%rdx, %rcx
	movl	$16, %edx
	call	*%r10
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	-96(%rbp), %r10
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	*%r10
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$16, %rax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	CRYPTO_nistcts128_decrypt, .-CRYPTO_nistcts128_decrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
