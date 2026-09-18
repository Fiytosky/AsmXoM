	.file	"cmac.c"
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
	.type	make_kn, @function
make_kn:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	movzbl	-5(%rbp), %eax
	shrb	$7, %al
	movb	%al, -6(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L6
.L7:
	movzbl	-5(%rbp), %eax
	leal	(%rax,%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -7(%rbp)
	movzbl	-7(%rbp), %eax
	shrb	$7, %al
	orl	%eax, %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
	movzbl	-7(%rbp), %eax
	movb	%al, -5(%rbp)
.L6:
	movl	-36(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L7
	movzbl	-5(%rbp), %eax
	leal	(%rax,%rax), %edx
	movzbl	-6(%rbp), %eax
	negl	%eax
	movl	%eax, %ecx
	cmpl	$16, -36(%rbp)
	jne	.L8
	movl	$-121, %eax
	jmp	.L9
.L8:
	movl	$27, %eax
.L9:
	andl	%ecx, %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	make_kn, .-make_kn
	.section	.rodata
.LC0:
	.string	"../crypto/cmac/cmac.c"
	.text
	.globl	CMAC_CTX_new
	.type	CMAC_CTX_new, @function
CMAC_CTX_new:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$57, %edx
	movq	%rax, %rsi
	movl	$144, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	call	EVP_CIPHER_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L13
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$61, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L12
.L13:
	movq	-8(%rbp), %rax
	movl	$-1, 136(%rax)
	movq	-8(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	CMAC_CTX_new, .-CMAC_CTX_new
	.globl	CMAC_CTX_cleanup
	.type	CMAC_CTX_cleanup, @function
CMAC_CTX_cleanup:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_reset@PLT
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	movl	$-1, 136(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	CMAC_CTX_cleanup, .-CMAC_CTX_cleanup
	.globl	CMAC_CTX_get0_cipher_ctx
	.type	CMAC_CTX_get0_cipher_ctx, @function
CMAC_CTX_get0_cipher_ctx:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	CMAC_CTX_get0_cipher_ctx, .-CMAC_CTX_get0_cipher_ctx
	.globl	CMAC_CTX_free
	.type	CMAC_CTX_free, @function
CMAC_CTX_free:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L20
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CMAC_CTX_cleanup@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$89, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L17
.L20:
	nop
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	CMAC_CTX_free, .-CMAC_CTX_free
	.globl	CMAC_CTX_copy
	.type	CMAC_CTX_copy, @function
CMAC_CTX_copy:
.LFB407:
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
	movl	136(%rax), %eax
	cmpl	$-1, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L23
.L24:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_copy@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L23
.L25:
	movl	-4(%rbp), %eax
	cltq
	movq	-32(%rbp), %rdx
	leaq	8(%rdx), %rsi
	movq	-24(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-4(%rbp), %eax
	cltq
	movq	-32(%rbp), %rdx
	leaq	40(%rdx), %rsi
	movq	-24(%rbp), %rdx
	leaq	40(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-4(%rbp), %eax
	cltq
	movq	-32(%rbp), %rdx
	leaq	72(%rdx), %rsi
	movq	-24(%rbp), %rdx
	leaq	72(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-4(%rbp), %eax
	cltq
	movq	-32(%rbp), %rdx
	leaq	104(%rdx), %rsi
	movq	-24(%rbp), %rdx
	leaq	104(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	136(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 136(%rax)
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	CMAC_CTX_copy, .-CMAC_CTX_copy
	.globl	CMAC_Init
	.type	CMAC_Init, @function
CMAC_Init:
.LFB408:
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
	cmpq	$0, -32(%rbp)
	jne	.L27
	cmpq	$0, -48(%rbp)
	jne	.L27
	cmpq	$0, -56(%rbp)
	jne	.L27
	cmpq	$0, -40(%rbp)
	jne	.L27
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	$-1, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	zero_iv.0(%rip), %rdx
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L29
.L30:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L29
.L31:
	movl	-4(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	leaq	72(%rdx), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movl	$0, 136(%rax)
	movl	$1, %eax
	jmp	.L29
.L27:
	cmpq	$0, -48(%rbp)
	je	.L32
	movq	-24(%rbp), %rax
	movl	$-1, 136(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L29
.L32:
	cmpq	$0, -32(%rbp)
	je	.L33
	movq	-24(%rbp), %rax
	movl	$-1, 136(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	testq	%rax, %rax
	jne	.L34
	movl	$0, %eax
	jmp	.L29
.L34:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_key_length@PLT
	testl	%eax, %eax
	jg	.L35
	movl	$0, %eax
	jmp	.L29
.L35:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	zero_iv.0(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L29
.L36:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L37
	movl	$0, %eax
	jmp	.L29
.L37:
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	zero_iv.0(%rip), %rdi
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_Cipher@PLT
	testl	%eax, %eax
	jg	.L38
	movl	$0, %eax
	jmp	.L29
.L38:
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rcx
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	make_kn
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rcx
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	make_kn
	movl	-8(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	addq	$72, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	zero_iv.0(%rip), %rdx
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L29
.L39:
	movl	-8(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	leaq	72(%rdx), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movl	$0, 136(%rax)
.L33:
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	CMAC_Init, .-CMAC_Init
	.globl	CMAC_Update
	.type	CMAC_Update, @function
CMAC_Update:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2128, %rsp
	movq	%rdi, -2104(%rbp)
	movq	%rsi, -2112(%rbp)
	movq	%rdx, -2120(%rbp)
	movq	-2112(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-2104(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	$-1, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L57
.L41:
	cmpq	$0, -2120(%rbp)
	jne	.L43
	movl	$1, %eax
	jmp	.L57
.L43:
	movq	-2104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L57
.L44:
	movq	-2104(%rbp), %rax
	movl	136(%rax), %eax
	testl	%eax, %eax
	jle	.L45
	movq	-2104(%rbp), %rax
	movl	136(%rax), %eax
	movl	-28(%rbp), %edx
	subl	%eax, %edx
	movslq	%edx, %rax
	movq	%rax, -24(%rbp)
	movq	-2120(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L46
	movq	-2120(%rbp), %rax
	movq	%rax, -24(%rbp)
.L46:
	movq	-2104(%rbp), %rax
	leaq	104(%rax), %rdx
	movq	-2104(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	subq	%rax, -2120(%rbp)
	movq	-2104(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-2104(%rbp), %rax
	movl	%edx, 136(%rax)
	cmpq	$0, -2120(%rbp)
	jne	.L47
	movl	$1, %eax
	jmp	.L57
.L47:
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	movl	-28(%rbp), %edx
	movq	-2104(%rbp), %rax
	leaq	104(%rax), %rdi
	movq	-2104(%rbp), %rax
	leaq	72(%rax), %rsi
	movq	-2104(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	EVP_Cipher@PLT
	testl	%eax, %eax
	jg	.L45
	movl	$0, %eax
	jmp	.L57
.L45:
	movl	$2048, %eax
	cltd
	idivl	-28(%rbp)
	cltq
	movq	%rax, -40(%rbp)
	movq	-2120(%rbp), %rax
	subq	$1, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdi
	movl	$0, %edx
	divq	%rdi
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L53
	jmp	.L49
.L51:
	movl	-28(%rbp), %ecx
	movq	-2104(%rbp), %rax
	leaq	72(%rax), %rsi
	movq	-2104(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	EVP_Cipher@PLT
	testl	%eax, %eax
	jg	.L50
	movl	$0, %eax
	jmp	.L57
.L50:
	movl	-28(%rbp), %eax
	cltq
	subq	%rax, -2120(%rbp)
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
.L49:
	movl	-28(%rbp), %eax
	cltq
	cmpq	-2120(%rbp), %rax
	jb	.L51
	jmp	.L52
.L55:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movq	-2104(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	-2096(%rbp), %rsi
	movq	%rax, %rdi
	call	EVP_Cipher@PLT
	testl	%eax, %eax
	jg	.L54
	movl	$0, %eax
	jmp	.L57
.L54:
	movl	-28(%rbp), %eax
	cltq
	imulq	-40(%rbp), %rax
	subq	%rax, -2120(%rbp)
	movl	-28(%rbp), %eax
	cltq
	imulq	-40(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	subq	%rax, -16(%rbp)
.L53:
	movq	-16(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L55
	cmpq	$0, -16(%rbp)
	je	.L52
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movq	-2104(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	-2096(%rbp), %rsi
	movq	%rax, %rdi
	call	EVP_Cipher@PLT
	testl	%eax, %eax
	jg	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movl	-28(%rbp), %eax
	cltq
	imulq	-16(%rbp), %rax
	subq	%rax, -2120(%rbp)
	movl	-28(%rbp), %eax
	cltq
	imulq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	movq	-16(%rbp), %rdx
	leaq	-1(%rdx), %rcx
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	imulq	%rcx, %rdx
	leaq	-2096(%rbp), %rcx
	leaq	(%rcx,%rdx), %rsi
	movq	-2104(%rbp), %rdx
	leaq	72(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L52:
	movq	-2104(%rbp), %rax
	leaq	104(%rax), %rcx
	movq	-2120(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-2120(%rbp), %rax
	movl	%eax, %edx
	movq	-2104(%rbp), %rax
	movl	%edx, 136(%rax)
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	CMAC_Update, .-CMAC_Update
	.globl	CMAC_Final
	.type	CMAC_Final, @function
CMAC_Final:
.LFB410:
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
	movl	136(%rax), %eax
	cmpl	$-1, %eax
	jne	.L59
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L61
	movl	$0, %eax
	jmp	.L60
.L61:
	cmpq	$0, -40(%rbp)
	je	.L62
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L62:
	cmpq	$0, -32(%rbp)
	jne	.L63
	movl	$1, %eax
	jmp	.L60
.L63:
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L64
	movl	$0, -4(%rbp)
	jmp	.L65
.L66:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	104(%rdx,%rax), %esi
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	8(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L65:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L66
	jmp	.L67
.L64:
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	movb	$-128, 104(%rdx,%rax)
	movl	-8(%rbp), %eax
	subl	-12(%rbp), %eax
	cmpl	$1, %eax
	jle	.L68
	movl	-8(%rbp), %eax
	subl	-12(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	-24(%rbp), %rdx
	leaq	104(%rdx), %rcx
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
.L68:
	movl	$0, -4(%rbp)
	jmp	.L69
.L70:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	104(%rdx,%rax), %esi
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	movzbl	40(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L69:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L70
.L67:
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	EVP_Cipher@PLT
	testl	%eax, %eax
	jg	.L71
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, %eax
	jmp	.L60
.L71:
	movl	$1, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	CMAC_Final, .-CMAC_Final
	.globl	CMAC_resume
	.type	CMAC_resume, @function
CMAC_resume:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	136(%rax), %eax
	cmpl	$-1, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L74
.L73:
	movq	-8(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	CMAC_resume, .-CMAC_resume
	.section	.rodata
	.align 32
	.type	zero_iv.0, @object
	.size	zero_iv.0, 32
zero_iv.0:
	.zero	32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
