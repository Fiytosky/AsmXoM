	.file	"wrap128.c"
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
	.section	.rodata
	.align 8
	.type	default_iv, @object
	.size	default_iv, 8
default_iv:
	.base64	"pqampqampqY="
	.type	default_aiv, @object
	.size	default_aiv, 4
default_aiv:
	.base64	"pllZpg=="
	.text
	.globl	CRYPTO_128_wrap
	.type	CRYPTO_128_wrap, @function
CRYPTO_128_wrap:
.LFB160:
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
	movq	-104(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.L6
	cmpq	$15, -104(%rbp)
	jbe	.L6
	movl	$2147483648, %eax
	cmpq	-104(%rbp), %rax
	jnb	.L7
.L6:
	movl	$0, %eax
	jmp	.L15
.L7:
	leaq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$1, -32(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	cmpq	$0, -80(%rbp)
	jne	.L9
	leaq	default_iv(%rip), %rax
	movq	%rax, -80(%rbp)
.L9:
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$0, -24(%rbp)
	jmp	.L10
.L14:
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L11
.L13:
	leaq	-64(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	-112(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-40(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addq	$7, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	cmpq	$255, -32(%rbp)
	jbe	.L12
	movq	-40(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	shrq	$8, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addq	$6, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addq	$5, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	shrq	$24, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addq	$4, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
.L12:
	leaq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, -16(%rbp)
	addq	$1, -32(%rbp)
	addq	$8, -8(%rbp)
.L11:
	movq	-16(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L13
	addq	$1, -24(%rbp)
.L10:
	cmpq	$5, -24(%rbp)
	jbe	.L14
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
	addq	$8, %rax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	CRYPTO_128_wrap, .-CRYPTO_128_wrap
	.type	crypto_128_unwrap_raw, @function
crypto_128_unwrap_raw:
.LFB161:
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
	subq	$8, -104(%rbp)
	movq	-104(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.L17
	cmpq	$15, -104(%rbp)
	jbe	.L17
	movl	$2147483648, %eax
	cmpq	-104(%rbp), %rax
	jnb	.L18
.L17:
	movl	$0, %eax
	jmp	.L25
.L18:
	leaq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	$0, -24(%rbp)
	jmp	.L20
.L24:
	movq	-104(%rbp), %rax
	leaq	-8(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L21
.L23:
	movq	-40(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addq	$7, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	cmpq	$255, -32(%rbp)
	jbe	.L22
	movq	-40(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	shrq	$8, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addq	$6, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addq	$5, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	shrq	$24, %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addq	$4, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
.L22:
	leaq	-64(%rbp), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	-112(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	leaq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, -16(%rbp)
	subq	$1, -32(%rbp)
	subq	$8, -8(%rbp)
.L21:
	movq	-16(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L23
	addq	$1, -24(%rbp)
.L20:
	cmpq	$5, -24(%rbp)
	jbe	.L24
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	crypto_128_unwrap_raw, .-crypto_128_unwrap_raw
	.globl	CRYPTO_128_unwrap
	.type	CRYPTO_128_unwrap, @function
CRYPTO_128_unwrap:
.LFB162:
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
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	crypto_128_unwrap_raw
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L31
.L27:
	cmpq	$0, -32(%rbp)
	jne	.L29
	leaq	default_iv(%rip), %rax
	movq	%rax, -32(%rbp)
.L29:
	movq	-32(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L30
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-8(%rbp), %rax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	CRYPTO_128_unwrap, .-CRYPTO_128_unwrap
	.globl	CRYPTO_128_wrap_pad
	.type	CRYPTO_128_wrap_pad, @function
CRYPTO_128_wrap_pad:
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
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-88(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L33
	cmpq	$2147483647, -88(%rbp)
	jbe	.L34
.L33:
	movl	$0, %eax
	jmp	.L40
.L34:
	cmpq	$0, -64(%rbp)
	jne	.L36
	movl	default_aiv(%rip), %eax
	movl	%eax, -40(%rbp)
	jmp	.L37
.L36:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
.L37:
	movq	-88(%rbp), %rax
	shrq	$24, %rax
	movb	%al, -36(%rbp)
	movq	-88(%rbp), %rax
	shrq	$16, %rax
	movb	%al, -35(%rbp)
	movq	-88(%rbp), %rax
	shrq	$8, %rax
	movb	%al, -34(%rbp)
	movq	-88(%rbp), %rax
	movb	%al, -33(%rbp)
	cmpq	$8, -24(%rbp)
	jne	.L38
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	$16, -4(%rbp)
	jmp	.L39
.L38:
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-96(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_128_wrap@PLT
	movl	%eax, -4(%rbp)
.L39:
	movl	-4(%rbp), %eax
	cltq
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	CRYPTO_128_wrap_pad, .-CRYPTO_128_wrap_pad
	.globl	CRYPTO_128_unwrap_pad
	.type	CRYPTO_128_unwrap_pad, @function
CRYPTO_128_unwrap_pad:
.LFB164:
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
	movq	-104(%rbp), %rax
	shrq	$3, %rax
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.L42
	cmpq	$15, -104(%rbp)
	jbe	.L42
	cmpq	$2147483647, -104(%rbp)
	jbe	.L43
.L42:
	movl	$0, %eax
	jmp	.L53
.L43:
	cmpq	$16, -104(%rbp)
	jne	.L45
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	-112(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$8, -8(%rbp)
	movq	-104(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L46
.L45:
	movq	-104(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-112(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	crypto_128_unwrap_raw
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L46
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L53
.L46:
	cmpq	$0, -80(%rbp)
	jne	.L47
	leaq	default_aiv(%rip), %rcx
	leaq	-48(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L48
.L47:
	cmpq	$0, -80(%rbp)
	je	.L49
	movq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L49
.L48:
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L53
.L49:
	movzbl	-44(%rbp), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movzbl	-43(%rbp), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	-42(%rbp), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-41(%rbp), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %eax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	subq	$1, %rax
	salq	$3, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L50
	movq	-16(%rbp), %rax
	salq	$3, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L51
.L50:
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L53
.L51:
	movq	-8(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	leaq	zeros.0(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	je	.L52
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-32(%rbp), %rax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	CRYPTO_128_unwrap_pad, .-CRYPTO_128_unwrap_pad
	.local	zeros.0
	.comm	zeros.0,8,8
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
