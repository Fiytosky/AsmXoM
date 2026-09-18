	.file	"e_chacha20_poly1305.c"
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
	.type	chacha_init_key, @function
chacha_init_key:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
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
	orl	%ecx, %edx
	movq	-16(%rbp), %rax
	movl	%esi, %ecx
	movl	%edx, (%rax,%rcx,4)
	addl	$4, -4(%rbp)
.L7:
	cmpl	$31, -4(%rbp)
	jbe	.L8
.L6:
	cmpq	$0, -40(%rbp)
	je	.L9
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-4(%rbp), %edx
	leaq	1(%rdx), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movl	-4(%rbp), %eax
	leaq	2(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	movl	-4(%rbp), %eax
	leaq	3(%rax), %rdx
	movq	-40(%rbp), %rax
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
	addq	$8, %rdx
	movl	%ecx, (%rax,%rdx,4)
	addl	$4, -4(%rbp)
.L10:
	cmpl	$15, -4(%rbp)
	jbe	.L11
.L9:
	movq	-16(%rbp), %rax
	movl	$0, 112(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	chacha_init_key, .-chacha_init_key
	.type	chacha_cipher, @function
chacha_cipher:
.LFB483:
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
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L14
	jmp	.L15
.L17:
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %esi
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %eax
	movzbl	48(%rdx,%rax), %ecx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	subq	$1, -64(%rbp)
.L15:
	cmpq	$0, -64(%rbp)
	je	.L16
	cmpl	$63, -4(%rbp)
	jbe	.L17
.L16:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 112(%rax)
	cmpq	$0, -64(%rbp)
	jne	.L18
	movl	$1, %eax
	jmp	.L19
.L18:
	cmpl	$64, -4(%rbp)
	jne	.L14
	movq	-24(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L14
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
.L14:
	movq	-64(%rbp), %rax
	andl	$63, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	subq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L20
.L23:
	movq	-64(%rbp), %rax
	shrq	$6, %rax
	movq	%rax, -16(%rbp)
	cmpq	$268435456, -16(%rbp)
	jbe	.L21
	movq	$268435456, -16(%rbp)
.L21:
	movq	-16(%rbp), %rax
	addl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpq	-16(%rbp), %rax
	jnb	.L22
	movl	-8(%rbp), %eax
	subq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
.L22:
	salq	$6, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-24(%rbp), %rcx
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
	movl	%edx, 32(%rax)
	cmpl	$0, -8(%rbp)
	jne	.L20
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
.L20:
	cmpq	$63, -64(%rbp)
	ja	.L23
	cmpl	$0, -28(%rbp)
	je	.L24
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	48(%rdx), %rsi
	movq	-24(%rbp), %rdx
	leaq	48(%rdx), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$64, %edx
	call	ChaCha20_ctr32@PLT
	movl	$0, -4(%rbp)
	jmp	.L25
.L26:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movzbl	48(%rdx,%rax), %ecx
	movl	-4(%rbp), %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L25:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L26
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 112(%rax)
.L24:
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	chacha_cipher, .-chacha_cipher
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	chacha20, @object
	.size	chacha20, 248
chacha20:
	.long	1019
	.long	1
	.long	32
	.long	16
	.quad	48
	.long	1
	.zero	4
	.quad	chacha_init_key
	.quad	chacha_cipher
	.quad	0
	.long	120
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	152
	.text
	.globl	EVP_chacha20
	.type	EVP_chacha20, @function
EVP_chacha20:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	chacha20(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	EVP_chacha20, .-EVP_chacha20
	.type	chacha20_poly1305_init_key, @function
chacha20_poly1305_init_key:
.LFB485:
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
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L30
	cmpq	$0, -56(%rbp)
	jne	.L30
	movl	$1, %eax
	jmp	.L31
.L30:
	movq	-8(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 184(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 188(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 200(%rax)
	cmpq	$0, -56(%rbp)
	je	.L32
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	196(%rax), %eax
	cmpl	$16, %eax
	jg	.L33
	movq	-8(%rbp), %rax
	movl	196(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	196(%rax), %eax
	cltq
	movl	$16, %ecx
	subq	%rax, %rcx
	leaq	-32(%rbp), %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L33:
	movl	-60(%rbp), %ecx
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	chacha_init_key
	movq	-8(%rbp), %rax
	movl	36(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
	movq	-8(%rbp), %rax
	movl	40(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 124(%rax)
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 128(%rax)
	jmp	.L34
.L32:
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	chacha_init_key
.L34:
	movl	$1, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	chacha20_poly1305_init_key, .-chacha20_poly1305_init_key
	.section	.rodata
	.align 32
	.type	zero, @object
	.size	zero, 256
zero:
	.zero	256
	.text
	.type	chacha20_poly1305_tls_cipher, @function
chacha20_poly1305_tls_cipher:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$400, %rsp
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	%rcx, -400(%rbp)
	movq	-376(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, -400(%rbp)
	je	.L36
	movl	$-1, %eax
	jmp	.L50
.L36:
	leaq	-368(%rbp), %rax
	negq	%rax
	andl	$15, %eax
	movq	%rax, %rdx
	leaq	-368(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -24(%rbp)
	cmpq	$192, -48(%rbp)
	ja	.L38
	movq	-40(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-48(%rbp), %rax
	addq	$127, %rax
	andq	$-64, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	zero(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	Poly1305_Init@PLT
	movq	-40(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-40(%rbp), %rax
	addq	$148, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	$16, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	$13, 168(%rax)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 176(%rax)
	cmpq	$0, -48(%rbp)
	je	.L39
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L40
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-392(%rbp), %rsi
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	xor128_encrypt_n_pad@PLT
	movq	%rax, -32(%rbp)
	jmp	.L41
.L40:
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-392(%rbp), %rsi
	movq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	xor128_decrypt_n_pad@PLT
	movq	%rax, -32(%rbp)
.L41:
	movq	-48(%rbp), %rax
	addq	%rax, -392(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -384(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L39
.L38:
	movq	-40(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	$64, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	zero(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	Poly1305_Init@PLT
	movq	-40(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-40(%rbp), %rax
	leaq	148(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	$208, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	$13, 168(%rax)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 176(%rax)
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L42
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-392(%rbp), %rsi
	movq	-384(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-384(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	Poly1305_Update@PLT
	jmp	.L43
.L42:
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-392(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	Poly1305_Update@PLT
	movq	-40(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-392(%rbp), %rsi
	movq	-384(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ChaCha20_ctr32@PLT
.L43:
	movq	-48(%rbp), %rax
	addq	%rax, -392(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -384(%rbp)
	movq	-48(%rbp), %rax
	negq	%rax
	andl	$15, %eax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rcx
	movq	-64(%rbp), %rax
	leaq	zero(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	Poly1305_Update@PLT
.L39:
	movl	$1, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L44
	movq	-40(%rbp), %rax
	addq	$168, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L45
.L44:
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$2, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$3, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$40, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$5, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$48, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$6, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$56, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$7, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$9, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$10, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$11, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$40, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$13, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$48, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$14, %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$56, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	$15, %rax
	movb	%dl, (%rax)
.L45:
	addq	$16, -8(%rbp)
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	Poly1305_Update@PLT
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L46
	movq	-40(%rbp), %rax
	addq	$132, %rax
	jmp	.L47
.L46:
	movq	-24(%rbp), %rax
.L47:
	movq	-40(%rbp), %rdx
	addq	$208, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	Poly1305_Final@PLT
	movq	-40(%rbp), %rax
	movq	$-1, 200(%rax)
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rax
	addq	$132, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-384(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L49
.L48:
	movq	-392(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L49
	movq	-400(%rbp), %rax
	leaq	-16(%rax), %rdx
	movl	$16, %eax
	subq	-400(%rbp), %rax
	movq	%rax, %rcx
	movq	-384(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$-1, %eax
	jmp	.L50
.L49:
	movq	-400(%rbp), %rax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	chacha20_poly1305_tls_cipher, .-chacha20_poly1305_tls_cipher
	.type	chacha20_poly1305_cipher, @function
chacha20_poly1305_cipher:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	188(%rax), %eax
	testl	%eax, %eax
	jne	.L52
	cmpq	$-1, -8(%rbp)
	je	.L53
	cmpq	$0, -64(%rbp)
	je	.L53
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	chacha20_poly1305_tls_cipher
	jmp	.L54
.L53:
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	48(%rdx), %rdi
	leaq	zero(%rip), %rsi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$64, %edx
	call	ChaCha20_ctr32@PLT
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$208, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Init@PLT
	movq	-16(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 168(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 188(%rax)
	cmpq	$-1, -8(%rbp)
	je	.L52
	movq	-16(%rbp), %rax
	leaq	148(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$208, %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	movq	-16(%rbp), %rax
	movq	$13, 168(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 184(%rax)
.L52:
	cmpq	$0, -72(%rbp)
	je	.L55
	cmpq	$0, -64(%rbp)
	jne	.L56
	movq	-16(%rbp), %rax
	leaq	208(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	Poly1305_Update@PLT
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 168(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 184(%rax)
	movq	-80(%rbp), %rax
	jmp	.L54
.L56:
	movq	-16(%rbp), %rax
	movl	184(%rax), %eax
	testl	%eax, %eax
	je	.L57
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	andl	$15, %eax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L58
	movl	$16, %eax
	subq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	208(%rdx), %rcx
	leaq	zero(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	Poly1305_Update@PLT
.L58:
	movq	-16(%rbp), %rax
	movl	$0, 184(%rax)
.L57:
	movq	-16(%rbp), %rax
	movq	$-1, 200(%rax)
	cmpq	$-1, -8(%rbp)
	jne	.L59
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L60
.L59:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, -80(%rbp)
	je	.L60
	movl	$-1, %eax
	jmp	.L54
.L60:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L61
	movq	-8(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	chacha_cipher
	movq	-16(%rbp), %rax
	leaq	208(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	Poly1305_Update@PLT
	movq	-8(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 176(%rax)
	jmp	.L55
.L61:
	movq	-16(%rbp), %rax
	leaq	208(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	Poly1305_Update@PLT
	movq	-8(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	chacha_cipher
	movq	-8(%rbp), %rax
	addq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 176(%rax)
.L55:
	cmpq	$0, -72(%rbp)
	je	.L62
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.L63
.L62:
	movl	$1, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	184(%rax), %eax
	testl	%eax, %eax
	je	.L64
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	andl	$15, %eax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L65
	movl	$16, %eax
	subq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	208(%rdx), %rcx
	leaq	zero(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	Poly1305_Update@PLT
.L65:
	movq	-16(%rbp), %rax
	movl	$0, 184(%rax)
.L64:
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	andl	$15, %eax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L66
	movl	$16, %eax
	subq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	208(%rdx), %rcx
	leaq	zero(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	Poly1305_Update@PLT
.L66:
	cmpl	$0, -28(%rbp)
	je	.L67
	movq	-16(%rbp), %rax
	leaq	168(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	$208, %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	Poly1305_Update@PLT
	jmp	.L68
.L67:
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movb	%al, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$8, %rax
	movb	%al, -47(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$16, %rax
	movb	%al, -46(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$24, %rax
	movb	%al, -45(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$32, %rax
	movb	%al, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$40, %rax
	movb	%al, -43(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$48, %rax
	movb	%al, -42(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	shrq	$56, %rax
	movb	%al, -41(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movb	%al, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$8, %rax
	movb	%al, -39(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$16, %rax
	movb	%al, -38(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$24, %rax
	movb	%al, -37(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$32, %rax
	movb	%al, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$40, %rax
	movb	%al, -35(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$48, %rax
	movb	%al, -34(%rbp)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	shrq	$56, %rax
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rax
	leaq	208(%rax), %rcx
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	Poly1305_Update@PLT
.L68:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L69
	movq	-16(%rbp), %rax
	addq	$132, %rax
	jmp	.L70
.L69:
	leaq	-48(%rbp), %rax
.L70:
	movq	-16(%rbp), %rdx
	addq	$208, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	Poly1305_Final@PLT
	movq	-16(%rbp), %rax
	movl	$0, 188(%rax)
	cmpq	$0, -72(%rbp)
	je	.L71
	movq	-80(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L71
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L72
	movq	-16(%rbp), %rax
	addq	$132, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L76
.L72:
	movq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L76
	movq	-8(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movl	$-1, %eax
	jmp	.L54
.L71:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L63
	movq	-16(%rbp), %rax
	movl	192(%rax), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	leaq	132(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L63
	movl	$-1, %eax
	jmp	.L54
.L76:
	nop
.L63:
	movq	-80(%rbp), %rax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	chacha20_poly1305_cipher, .-chacha20_poly1305_cipher
	.type	chacha20_poly1305_cleanup, @function
chacha20_poly1305_cleanup:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L78
	call	Poly1305_ctx_size@PLT
	leaq	208(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L78:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	chacha20_poly1305_cleanup, .-chacha20_poly1305_cleanup
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/evp/e_chacha20_poly1305.c"
	.text
	.type	chacha20_poly1305_ctrl, @function
chacha20_poly1305_ctrl:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$37, -44(%rbp)
	je	.L81
	cmpl	$37, -44(%rbp)
	jg	.L82
	cmpl	$23, -44(%rbp)
	je	.L83
	cmpl	$23, -44(%rbp)
	jg	.L82
	cmpl	$22, -44(%rbp)
	je	.L84
	cmpl	$22, -44(%rbp)
	jg	.L82
	cmpl	$18, -44(%rbp)
	je	.L85
	cmpl	$18, -44(%rbp)
	jg	.L82
	cmpl	$17, -44(%rbp)
	je	.L86
	cmpl	$17, -44(%rbp)
	jg	.L82
	cmpl	$16, -44(%rbp)
	je	.L87
	cmpl	$16, -44(%rbp)
	jg	.L82
	cmpl	$9, -44(%rbp)
	je	.L88
	cmpl	$9, -44(%rbp)
	jg	.L82
	cmpl	$0, -44(%rbp)
	je	.L89
	cmpl	$8, -44(%rbp)
	je	.L90
	jmp	.L82
.L89:
	cmpq	$0, -8(%rbp)
	jne	.L91
	call	Poly1305_ctx_size@PLT
	addq	$208, %rax
	leaq	.LC0(%rip), %rcx
	movl	$505, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -8(%rbp)
.L91:
	cmpq	$0, -8(%rbp)
	jne	.L92
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$507, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L93
.L92:
	movq	-8(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 184(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 188(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 192(%rax)
	movq	-8(%rbp), %rax
	movl	$12, 196(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 200(%rax)
	movq	-8(%rbp), %rax
	addq	$148, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, %eax
	jmp	.L93
.L90:
	cmpq	$0, -8(%rbp)
	je	.L94
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	call	Poly1305_ctx_size@PLT
	leaq	208(%rax), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$525, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L94
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$527, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L93
.L94:
	movl	$1, %eax
	jmp	.L93
.L81:
	movq	-8(%rbp), %rax
	movl	196(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L93
.L88:
	cmpl	$0, -48(%rbp)
	jle	.L95
	cmpl	$12, -48(%rbp)
	jle	.L96
.L95:
	movl	$0, %eax
	jmp	.L93
.L96:
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 196(%rax)
	movl	$1, %eax
	jmp	.L93
.L85:
	cmpl	$12, -48(%rbp)
	je	.L97
	movl	$0, %eax
	jmp	.L93
.L97:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-56(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-8(%rbp), %rax
	movl	36(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-56(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-8(%rbp), %rax
	movl	40(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 124(%rax)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-56(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 128(%rax)
	movl	$1, %eax
	jmp	.L93
.L86:
	cmpl	$0, -48(%rbp)
	jle	.L98
	cmpl	$16, -48(%rbp)
	jle	.L99
.L98:
	movl	$0, %eax
	jmp	.L93
.L99:
	cmpq	$0, -56(%rbp)
	je	.L100
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	132(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 192(%rax)
.L100:
	movl	$1, %eax
	jmp	.L93
.L87:
	cmpl	$0, -48(%rbp)
	jle	.L101
	cmpl	$16, -48(%rbp)
	jg	.L101
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L102
.L101:
	movl	$0, %eax
	jmp	.L93
.L102:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	132(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
	jmp	.L93
.L84:
	cmpl	$13, -48(%rbp)
	je	.L103
	movl	$0, %eax
	jmp	.L93
.L103:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	148(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$13, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	addq	$148, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L104
	cmpl	$15, -12(%rbp)
	ja	.L105
	movl	$0, %eax
	jmp	.L93
.L105:
	subl	$16, -12(%rbp)
	movl	-12(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$11, %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	addq	$12, %rax
	movl	-12(%rbp), %edx
	movb	%dl, (%rax)
.L104:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-8(%rbp), %rax
	movl	120(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-8(%rbp), %rax
	movl	124(%rax), %edx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	orl	%eax, %ecx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %ecx
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%ecx, %eax
	xorl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$4, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	-24(%rbp), %rcx
	addq	$5, %rcx
	movzbl	(%rcx), %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	orl	%edx, %ecx
	movq	-24(%rbp), %rdx
	addq	$6, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$16, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rdx
	addq	$7, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$24, %edx
	orl	%ecx, %edx
	xorl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 188(%rax)
	movl	$16, %eax
	jmp	.L93
.L83:
	movl	$1, %eax
	jmp	.L93
.L82:
	movl	$-1, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	chacha20_poly1305_ctrl, .-chacha20_poly1305_ctrl
	.section	.data.rel.local,"aw"
	.align 32
	.type	chacha20_poly1305, @object
	.size	chacha20_poly1305, 248
chacha20_poly1305:
	.long	1018
	.long	1
	.long	32
	.long	12
	.quad	3148912
	.long	1
	.zero	4
	.quad	chacha20_poly1305_init_key
	.quad	chacha20_poly1305_cipher
	.quad	chacha20_poly1305_cleanup
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	chacha20_poly1305_ctrl
	.quad	0
	.zero	152
	.text
	.globl	EVP_chacha20_poly1305
	.type	EVP_chacha20_poly1305, @function
EVP_chacha20_poly1305:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	chacha20_poly1305(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	EVP_chacha20_poly1305, .-EVP_chacha20_poly1305
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"chacha20_poly1305_ctrl"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
