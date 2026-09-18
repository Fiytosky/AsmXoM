	.file	"cipher_chacha20_hw.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	chacha20_initkey, @function
chacha20_initkey:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L6
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-4(%rbp), %edx
	leaq	1(%rdx), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movl	-4(%rbp), %eax
	leaq	2(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	-4(%rbp), %eax
	leaq	3(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	shrl	$2, %eax
	movl	%eax, %esi
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movl	%esi, %edx
	addq	$48, %rdx
	movl	%ecx, (%rax,%rdx,4)
	addl	$4, -4(%rbp)
.L7:
	cmpl	$31, -4(%rbp)
	jbe	.L8
.L6:
	movq	-16(%rbp), %rax
	movl	$0, 304(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	chacha20_initkey, .-chacha20_initkey
	.type	chacha20_initiv, @function
chacha20_initiv:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L11
	movl	$0, -4(%rbp)
	jmp	.L12
.L13:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %ecx
	addq	$1, %rcx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%edx, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	addq	$2, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	addq	$3, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	shrl	$2, %eax
	movl	%eax, %esi
	orl	%edx, %ecx
	movq	-16(%rbp), %rax
	movl	%esi, %edx
	addq	$56, %rdx
	movl	%ecx, (%rax,%rdx,4)
	addl	$4, -4(%rbp)
.L12:
	cmpl	$15, -4(%rbp)
	jbe	.L13
.L11:
	movq	-16(%rbp), %rax
	movl	$0, 304(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	chacha20_initiv, .-chacha20_initiv
	.type	chacha20_cipher, @function
chacha20_cipher:
.LFB404:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	304(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L16
	jmp	.L17
.L19:
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %esi
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %eax
	movzbl	240(%rdx,%rax), %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	subq	$1, -64(%rbp)
.L17:
	cmpq	$0, -64(%rbp)
	je	.L18
	cmpl	$63, -4(%rbp)
	jbe	.L19
.L18:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 304(%rax)
	cmpq	$0, -64(%rbp)
	jne	.L20
	movl	$1, %eax
	jmp	.L21
.L20:
	cmpl	$64, -4(%rbp)
	jne	.L16
	movq	-24(%rbp), %rax
	movl	$0, 304(%rax)
	movq	-24(%rbp), %rax
	movl	224(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 224(%rax)
	movq	-24(%rbp), %rax
	movl	224(%rax), %eax
	testl	%eax, %eax
	jne	.L16
	movq	-24(%rbp), %rax
	movl	228(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 228(%rax)
.L16:
	movq	-64(%rbp), %rax
	andl	$63, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	subq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	224(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L22
.L25:
	movq	-64(%rbp), %rax
	shrq	$6, %rax
	movq	%rax, -16(%rbp)
	cmpq	$268435456, -16(%rbp)
	jbe	.L23
	movq	$268435456, -16(%rbp)
.L23:
	movq	-16(%rbp), %rax
	addl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpq	-16(%rbp), %rax
	jnb	.L24
	movl	-8(%rbp), %eax
	subq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
.L24:
	salq	$6, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	224(%rax), %rdi
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
	movq	-16(%rbp), %rax
	subq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 224(%rax)
	cmpl	$0, -8(%rbp)
	jne	.L22
	movq	-24(%rbp), %rax
	movl	228(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 228(%rax)
.L22:
	cmpq	$63, -64(%rbp)
	ja	.L25
	cmpl	$0, -28(%rbp)
	je	.L26
	movq	-24(%rbp), %rax
	addq	$240, %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	leaq	224(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	240(%rax), %rsi
	movq	-24(%rbp), %rax
	addq	$240, %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
	movl	$0, -4(%rbp)
	jmp	.L27
.L28:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	240(%rdx,%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L27:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L28
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 304(%rax)
.L26:
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	chacha20_cipher, .-chacha20_cipher
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	chacha20_hw, @object
	.size	chacha20_hw, 32
chacha20_hw:
	.quad	chacha20_initkey
	.quad	chacha20_cipher
	.zero	8
	.quad	chacha20_initiv
	.text
	.globl	ossl_prov_cipher_hw_chacha20
	.type	ossl_prov_cipher_hw_chacha20, @function
ossl_prov_cipher_hw_chacha20:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	chacha20_hw(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_prov_cipher_hw_chacha20, .-ossl_prov_cipher_hw_chacha20
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
