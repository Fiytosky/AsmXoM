	.file	"cipher_chacha20_poly1305_hw.c"
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
	.type	chacha_poly1305_tls_init, @function
chacha_poly1305_tls_init:
.LFB402:
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
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$13, -40(%rbp)
	je	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-16(%rbp), %rax
	leaq	780(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$13, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	addq	$780, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L8
	cmpl	$15, -4(%rbp)
	ja	.L9
	movl	$0, %eax
	jmp	.L7
.L9:
	subl	$16, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$11, %rax
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
.L8:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rdx, 832(%rax)
	movq	-16(%rbp), %rax
	movl	752(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 420(%rax)
	movq	-16(%rbp), %rax
	movl	756(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	orl	%eax, %ecx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ecx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%ecx, %eax
	xorl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 424(%rax)
	movq	-16(%rbp), %rax
	movl	760(%rax), %eax
	movq	-32(%rbp), %rdx
	addq	$4, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-32(%rbp), %rcx
	addq	$5, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	orl	%edx, %ecx
	movq	-32(%rbp), %rdx
	addq	$6, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	orl	%edx, %ecx
	movq	-32(%rbp), %rdx
	addq	$7, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	orl	%ecx, %edx
	xorl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 428(%rax)
	movq	-16(%rbp), %rax
	movzbl	816(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 816(%rax)
	movl	$16, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	chacha_poly1305_tls_init, .-chacha_poly1305_tls_init
	.type	chacha_poly1305_tls_iv_set_fixed, @function
chacha_poly1305_tls_iv_set_fixed:
.LFB403:
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
	movq	%rax, -8(%rbp)
	cmpq	$12, -40(%rbp)
	je	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 420(%rax)
	movq	-8(%rbp), %rax
	movl	420(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 752(%rax)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-32(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 424(%rax)
	movq	-8(%rbp), %rax
	movl	424(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 756(%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-32(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 428(%rax)
	movq	-8(%rbp), %rax
	movl	428(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 760(%rax)
	movl	$1, %eax
.L12:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	chacha_poly1305_tls_iv_set_fixed, .-chacha_poly1305_tls_iv_set_fixed
	.type	chacha20_poly1305_initkey, @function
chacha20_poly1305_initkey:
.LFB404:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 800(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 808(%rax)
	movq	-8(%rbp), %rax
	movzbl	816(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 816(%rax)
	movq	-8(%rbp), %rax
	movzbl	816(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 816(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 832(%rax)
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L14
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	ossl_chacha20_einit@PLT
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	leaq	192(%rax), %rdi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	ossl_chacha20_dinit@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	chacha20_poly1305_initkey, .-chacha20_poly1305_initkey
	.type	chacha20_poly1305_initiv, @function
chacha20_poly1305_initiv:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$1, -4(%rbp)
	movq	$12, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 800(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 808(%rax)
	movq	-16(%rbp), %rax
	movzbl	816(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 816(%rax)
	movq	-16(%rbp), %rax
	movzbl	816(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 816(%rax)
	movq	-16(%rbp), %rax
	movq	$-1, 832(%rax)
	movq	-56(%rbp), %rax
	movl	$16, %edx
	subq	-24(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	addq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L17
	movq	-16(%rbp), %rax
	leaq	192(%rax), %rdi
	leaq	-48(%rbp), %rax
	movl	$0, %r9d
	movl	$16, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	call	ossl_chacha20_einit@PLT
	movl	%eax, -4(%rbp)
	jmp	.L18
.L17:
	movq	-16(%rbp), %rax
	leaq	192(%rax), %rdi
	leaq	-48(%rbp), %rax
	movl	$0, %r9d
	movl	$16, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	call	ossl_chacha20_dinit@PLT
	movl	%eax, -4(%rbp)
.L18:
	movq	-16(%rbp), %rax
	movl	420(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 752(%rax)
	movq	-16(%rbp), %rax
	movl	424(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 756(%rax)
	movq	-16(%rbp), %rax
	movl	428(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 760(%rax)
	movq	-56(%rbp), %rax
	movzbl	108(%rax), %edx
	orl	$4, %edx
	movb	%dl, 108(%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	chacha20_poly1305_initiv, .-chacha20_poly1305_initiv
	.section	.rodata
	.align 32
	.type	zero, @object
	.size	zero, 128
zero:
	.zero	128
	.text
	.type	chacha20_poly1305_tls_cipher, @function
chacha20_poly1305_tls_cipher:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -288(%rbp)
	movq	%r8, -296(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$504, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -68(%rbp)
	leaq	-256(%rbp), %rax
	negq	%rax
	andl	$15, %eax
	movq	%rax, %rdx
	leaq	-256(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -24(%rbp)
	cmpq	$64, -64(%rbp)
	ja	.L21
	movq	-48(%rbp), %rax
	movl	$0, 416(%rax)
	movq	-48(%rbp), %rax
	leaq	416(%rax), %rdi
	movq	-48(%rbp), %rax
	leaq	384(%rax), %rcx
	movq	$128, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	zero(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Init@PLT
	movq	-48(%rbp), %rax
	movl	$0, 496(%rax)
	movq	-48(%rbp), %rax
	addq	$780, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	$16, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	$13, 800(%rax)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 808(%rax)
	movq	-264(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L22
	movq	$0, -40(%rbp)
	jmp	.L23
.L24:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-288(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movq	-272(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -40(%rbp)
.L23:
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L24
	jmp	.L25
.L22:
	movq	$0, -40(%rbp)
	jmp	.L26
.L27:
	movq	-288(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -89(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movq	-272(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	xorb	-89(%rbp), %al
	movb	%al, (%rdx)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-89(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -40(%rbp)
.L26:
	movq	-40(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L27
.L25:
	movq	-40(%rbp), %rax
	addq	%rax, -288(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -272(%rbp)
	movq	-40(%rbp), %rax
	negq	%rax
	andl	$15, %eax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	addq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	addq	%rax, -8(%rbp)
	jmp	.L28
.L21:
	movq	-48(%rbp), %rax
	movl	$0, 416(%rax)
	movq	-48(%rbp), %rax
	leaq	416(%rax), %rdi
	movq	-48(%rbp), %rax
	leaq	384(%rax), %rcx
	movq	$64, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	zero(%rip), %rsi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Init@PLT
	movq	-48(%rbp), %rax
	movl	$1, 416(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 496(%rax)
	movq	-48(%rbp), %rax
	leaq	780(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	$13, 800(%rax)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 808(%rax)
	movq	-264(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L29
	movq	-48(%rbp), %rax
	leaq	416(%rax), %rdi
	movq	-48(%rbp), %rax
	leaq	384(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-272(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
	movq	-64(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	jmp	.L30
.L29:
	movq	-64(%rbp), %rdx
	movq	-288(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	movq	-48(%rbp), %rax
	leaq	416(%rax), %rdi
	movq	-48(%rbp), %rax
	leaq	384(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	-272(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
.L30:
	movq	-64(%rbp), %rax
	addq	%rax, -288(%rbp)
	movq	-64(%rbp), %rax
	addq	%rax, -272(%rbp)
	movq	-64(%rbp), %rax
	negq	%rax
	andl	$15, %eax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	leaq	zero(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
.L28:
	cmpl	$0, -68(%rbp)
	je	.L31
	movq	-48(%rbp), %rax
	addq	$800, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L32
.L31:
	movq	-48(%rbp), %rax
	movq	800(%rax), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$40, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$5, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$48, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$6, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$56, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$7, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	808(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$9, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$10, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$11, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$40, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$13, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$48, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$14, %rax
	movb	%dl, (%rax)
	movq	-48(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$56, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$15, %rax
	movb	%dl, (%rax)
.L32:
	addq	$16, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-264(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L33
	movq	-48(%rbp), %rax
	addq	$764, %rax
	jmp	.L34
.L33:
	movq	-24(%rbp), %rax
.L34:
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	Poly1305_Final@PLT
	movq	-48(%rbp), %rax
	movq	$-1, 832(%rax)
	movq	-264(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L35
	movq	-48(%rbp), %rax
	addq	$764, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-272(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L36
.L35:
	movq	-288(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L37
	cmpq	$16, -296(%rbp)
	jbe	.L38
	movq	-296(%rbp), %rax
	leaq	-16(%rax), %rdx
	movl	$16, %eax
	subq	-296(%rbp), %rax
	movq	%rax, %rcx
	movq	-272(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L38:
	movl	$0, %eax
	jmp	.L40
.L37:
	subq	$16, -296(%rbp)
.L36:
	movq	-280(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	chacha20_poly1305_tls_cipher, .-chacha20_poly1305_tls_cipher
	.type	chacha20_poly1305_aead_cipher, @function
chacha20_poly1305_aead_cipher:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$504, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	832(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$1, -44(%rbp)
	movq	-32(%rbp), %rax
	movzbl	816(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L42
	cmpq	$-1, -8(%rbp)
	je	.L43
	cmpq	$0, -96(%rbp)
	je	.L43
	movq	-8(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, -120(%rbp)
	je	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	chacha20_poly1305_tls_cipher
	jmp	.L45
.L43:
	movq	-32(%rbp), %rax
	movl	$0, 416(%rax)
	movq	-32(%rbp), %rax
	leaq	416(%rax), %rcx
	movq	-32(%rbp), %rax
	leaq	384(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$432, %rax
	leaq	zero(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$64, %edx
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
	movq	-32(%rbp), %rax
	leaq	432(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Init@PLT
	movq	-32(%rbp), %rax
	movl	$1, 416(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 496(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 808(%rax)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 800(%rax)
	movq	-32(%rbp), %rax
	movzbl	816(%rax), %edx
	orl	$2, %edx
	movb	%dl, 816(%rax)
	cmpq	$-1, -8(%rbp)
	je	.L42
	movq	-32(%rbp), %rax
	leaq	780(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	movq	-32(%rbp), %rax
	movq	$13, 800(%rax)
	movq	-32(%rbp), %rax
	movzbl	816(%rax), %edx
	orl	$1, %edx
	movb	%dl, 816(%rax)
.L42:
	cmpq	$0, -112(%rbp)
	je	.L46
	cmpq	$0, -96(%rbp)
	jne	.L47
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	movq	-32(%rbp), %rax
	movq	800(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 800(%rax)
	movq	-32(%rbp), %rax
	movzbl	816(%rax), %edx
	orl	$1, %edx
	movb	%dl, 816(%rax)
	jmp	.L48
.L47:
	movq	-32(%rbp), %rax
	movzbl	816(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L49
	movq	-32(%rbp), %rax
	movq	800(%rax), %rax
	andl	$15, %eax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L50
	movl	$16, %eax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	leaq	zero(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
.L50:
	movq	-32(%rbp), %rax
	movzbl	816(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 816(%rax)
.L49:
	movq	-32(%rbp), %rax
	movq	$-1, 832(%rax)
	cmpq	$-1, -8(%rbp)
	jne	.L51
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L52
.L51:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, -120(%rbp)
	jne	.L69
.L52:
	movq	-88(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L54
	movq	-32(%rbp), %rax
	movq	360(%rax), %rax
	movq	8(%rax), %r8
	movq	-32(%rbp), %rax
	leaq	192(%rax), %rdi
	movq	-8(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	call	*%r8
	movq	-8(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	movq	-8(%rbp), %rax
	addq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 808(%rax)
	jmp	.L46
.L54:
	movq	-8(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	movq	-32(%rbp), %rax
	movq	360(%rax), %rax
	movq	8(%rax), %r8
	movq	-32(%rbp), %rax
	leaq	192(%rax), %rdi
	movq	-8(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	call	*%r8
	movq	-8(%rbp), %rax
	addq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 808(%rax)
.L46:
	cmpq	$0, -112(%rbp)
	je	.L55
	movq	-120(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L70
.L55:
	movq	-32(%rbp), %rax
	movzbl	816(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L56
	movq	-32(%rbp), %rax
	movq	800(%rax), %rax
	andl	$15, %eax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L57
	movl	$16, %eax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	leaq	zero(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
.L57:
	movq	-32(%rbp), %rax
	movzbl	816(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 816(%rax)
.L56:
	movq	-32(%rbp), %rax
	movq	808(%rax), %rax
	andl	$15, %eax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L58
	movl	$16, %eax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	leaq	zero(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
.L58:
	cmpl	$0, -44(%rbp)
	je	.L59
	movq	-32(%rbp), %rax
	leaq	800(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	jmp	.L60
.L59:
	movq	-32(%rbp), %rax
	movq	800(%rax), %rax
	movb	%al, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$8, %rax
	movb	%al, -79(%rbp)
	movq	-32(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$16, %rax
	movb	%al, -78(%rbp)
	movq	-32(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$24, %rax
	movb	%al, -77(%rbp)
	movq	-32(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$32, %rax
	movb	%al, -76(%rbp)
	movq	-32(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$40, %rax
	movb	%al, -75(%rbp)
	movq	-32(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$48, %rax
	movb	%al, -74(%rbp)
	movq	-32(%rbp), %rax
	movq	800(%rax), %rax
	shrq	$56, %rax
	movb	%al, -73(%rbp)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rax
	movb	%al, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$8, %rax
	movb	%al, -71(%rbp)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$16, %rax
	movb	%al, -70(%rbp)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$24, %rax
	movb	%al, -69(%rbp)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$32, %rax
	movb	%al, -68(%rbp)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$40, %rax
	movb	%al, -67(%rbp)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$48, %rax
	movb	%al, -66(%rbp)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rax
	shrq	$56, %rax
	movb	%al, -65(%rbp)
	leaq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
.L60:
	movq	-88(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L61
	movq	-32(%rbp), %rax
	addq	$764, %rax
	jmp	.L62
.L61:
	leaq	-80(%rbp), %rax
.L62:
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	Poly1305_Final@PLT
	movq	-32(%rbp), %rax
	movzbl	816(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 816(%rax)
	cmpq	$0, -112(%rbp)
	je	.L63
	movq	-120(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L63
	movq	-88(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L64
	movq	-32(%rbp), %rax
	addq	$764, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L48
.L64:
	movq	-112(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L66
	movq	-8(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	jmp	.L53
.L66:
	subq	$16, -120(%rbp)
	jmp	.L48
.L63:
	movq	-88(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L48
	movq	-32(%rbp), %rax
	movq	824(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	764(%rax), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L71
	jmp	.L48
.L70:
	nop
.L48:
	movq	-120(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L53
.L69:
	nop
	jmp	.L53
.L71:
	nop
.L53:
	movq	-104(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-20(%rbp), %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	chacha20_poly1305_aead_cipher, .-chacha20_poly1305_aead_cipher
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	chacha20poly1305_hw, @object
	.size	chacha20poly1305_hw, 56
chacha20poly1305_hw:
	.quad	chacha20_poly1305_initkey
	.quad	0
	.zero	8
	.quad	chacha20_poly1305_aead_cipher
	.quad	chacha20_poly1305_initiv
	.quad	chacha_poly1305_tls_init
	.quad	chacha_poly1305_tls_iv_set_fixed
	.text
	.globl	ossl_prov_cipher_hw_chacha20_poly1305
	.type	ossl_prov_cipher_hw_chacha20_poly1305, @function
ossl_prov_cipher_hw_chacha20_poly1305:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	chacha20poly1305_hw(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_prov_cipher_hw_chacha20_poly1305, .-ossl_prov_cipher_hw_chacha20_poly1305
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
