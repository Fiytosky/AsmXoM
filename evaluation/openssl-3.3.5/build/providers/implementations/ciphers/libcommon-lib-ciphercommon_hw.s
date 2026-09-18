	.file	"ciphercommon_hw.c"
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
	.globl	ossl_cipher_hw_generic_cbc
	.type	ossl_cipher_hw_generic_cbc, @function
ossl_cipher_hw_generic_cbc:
.LFB402:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-8(%rbp), %rax
	movq	56(%rax), %r10
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-8(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-8(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	*%r10
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L8
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-8(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	CRYPTO_cbc128_encrypt@PLT
	jmp	.L7
.L8:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-8(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	CRYPTO_cbc128_decrypt@PLT
.L7:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ossl_cipher_hw_generic_cbc, .-ossl_cipher_hw_generic_cbc
	.globl	ossl_cipher_hw_generic_ecb
	.type	ossl_cipher_hw_generic_ecb, @function
ossl_cipher_hw_generic_ecb:
.LFB403:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L11
	movl	$1, %eax
	jmp	.L12
.L11:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-24(%rbp), %rax
	movq	56(%rax), %r9
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	*%r9
	jmp	.L14
.L13:
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -48(%rbp)
	jmp	.L15
.L16:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	addq	%rdx, %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdi
	movq	%rax, %rdx
	call	*%rcx
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
.L15:
	movq	-8(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L16
.L14:
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	ossl_cipher_hw_generic_ecb, .-ossl_cipher_hw_generic_ecb
	.globl	ossl_cipher_hw_generic_ofb128
	.type	ossl_cipher_hw_generic_ofb128, @function
ossl_cipher_hw_generic_ofb128:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r10
	movq	-24(%rbp), %rax
	movq	176(%rax), %rcx
	leaq	-4(%rbp), %r8
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	CRYPTO_ofb128_encrypt@PLT
	addq	$16, %rsp
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_cipher_hw_generic_ofb128, .-ossl_cipher_hw_generic_ofb128
	.globl	ossl_cipher_hw_generic_cfb128
	.type	ossl_cipher_hw_generic_cfb128, @function
ossl_cipher_hw_generic_cfb128:
.LFB405:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %r8
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r10
	movq	-24(%rbp), %rax
	movq	176(%rax), %rcx
	leaq	-4(%rbp), %r9
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	CRYPTO_cfb128_encrypt@PLT
	addq	$16, %rsp
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_cipher_hw_generic_cfb128, .-ossl_cipher_hw_generic_cfb128
	.globl	ossl_cipher_hw_generic_cfb8
	.type	ossl_cipher_hw_generic_cfb8, @function
ossl_cipher_hw_generic_cfb8:
.LFB406:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %r8
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r10
	movq	-24(%rbp), %rax
	movq	176(%rax), %rcx
	leaq	-4(%rbp), %r9
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	CRYPTO_cfb128_8_encrypt@PLT
	addq	$16, %rsp
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_cipher_hw_generic_cfb8, .-ossl_cipher_hw_generic_cfb8
	.globl	ossl_cipher_hw_generic_cfb1
	.type	ossl_cipher_hw_generic_cfb1, @function
ossl_cipher_hw_generic_cfb1:
.LFB407:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	je	.L26
	movq	-24(%rbp), %rax
	movq	48(%rax), %r8
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %edi
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r10
	movq	-24(%rbp), %rax
	movq	176(%rax), %rcx
	leaq	-4(%rbp), %r9
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	CRYPTO_cfb128_1_encrypt@PLT
	addq	$16, %rsp
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	jmp	.L29
.L27:
	movq	-24(%rbp), %rax
	movq	48(%rax), %r8
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r10
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdx
	leaq	-4(%rbp), %r9
	movabsq	$-9223372036854775808, %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%r8
	pushq	%rcx
	movq	%r10, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	CRYPTO_cfb128_1_encrypt@PLT
	addq	$16, %rsp
	movabsq	$-1152921504606846976, %rax
	addq	%rax, -48(%rbp)
	movabsq	$1152921504606846976, %rax
	addq	%rax, -32(%rbp)
	movabsq	$1152921504606846976, %rax
	addq	%rax, -40(%rbp)
.L26:
	movabsq	$1152921504606846975, %rax
	cmpq	-48(%rbp), %rax
	jb	.L27
	cmpq	$0, -48(%rbp)
	je	.L28
	movq	-24(%rbp), %rax
	movq	48(%rax), %r8
	movq	-24(%rbp), %rax
	movzbl	108(%rax), %eax
	shrb	%al
	andl	$1, %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r10
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdi
	leaq	-4(%rbp), %r9
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%r8
	pushq	%rcx
	movq	%r10, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	CRYPTO_cfb128_1_encrypt@PLT
	addq	$16, %rsp
.L28:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_cipher_hw_generic_cfb1, .-ossl_cipher_hw_generic_cfb1
	.globl	ossl_cipher_hw_generic_ctr
	.type	ossl_cipher_hw_generic_ctr, @function
ossl_cipher_hw_generic_ctr:
.LFB408:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	leaq	16(%rax), %r9
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-24(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%rdi
	leaq	-4(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	CRYPTO_ctr128_encrypt_ctr32@PLT
	addq	$16, %rsp
	jmp	.L32
.L31:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rax
	leaq	16(%rax), %r9
	movq	-24(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-24(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	pushq	%rdi
	leaq	-4(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	CRYPTO_ctr128_encrypt@PLT
	addq	$16, %rsp
.L32:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 160(%rax)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_cipher_hw_generic_ctr, .-ossl_cipher_hw_generic_ctr
	.globl	ossl_cipher_hw_chunked_cbc
	.type	ossl_cipher_hw_chunked_cbc, @function
ossl_cipher_hw_chunked_cbc:
.LFB409:
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
	movq	%rcx, -32(%rbp)
	jmp	.L35
.L36:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1073741824, %ecx
	movq	%rax, %rdi
	call	ossl_cipher_hw_generic_cbc@PLT
	subq	$1073741824, -32(%rbp)
	addq	$1073741824, -24(%rbp)
	addq	$1073741824, -16(%rbp)
.L35:
	cmpq	$1073741823, -32(%rbp)
	ja	.L36
	cmpq	$0, -32(%rbp)
	je	.L37
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cipher_hw_generic_cbc@PLT
.L37:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_cipher_hw_chunked_cbc, .-ossl_cipher_hw_chunked_cbc
	.globl	ossl_cipher_hw_chunked_cfb8
	.type	ossl_cipher_hw_chunked_cfb8, @function
ossl_cipher_hw_chunked_cfb8:
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
	movq	%rcx, -48(%rbp)
	movq	$1073741824, -8(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L41
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L41
.L43:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cipher_hw_generic_cfb8@PLT
	movq	-8(%rbp), %rax
	subq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L41
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.L41:
	cmpq	$0, -48(%rbp)
	je	.L42
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L43
.L42:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_cipher_hw_chunked_cfb8, .-ossl_cipher_hw_chunked_cfb8
	.globl	ossl_cipher_hw_chunked_cfb128
	.type	ossl_cipher_hw_chunked_cfb128, @function
ossl_cipher_hw_chunked_cfb128:
.LFB411:
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
	movq	%rcx, -48(%rbp)
	movq	$1073741824, -8(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L47
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L47
.L49:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cipher_hw_generic_cfb128@PLT
	movq	-8(%rbp), %rax
	subq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L47
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.L47:
	cmpq	$0, -48(%rbp)
	je	.L48
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L49
.L48:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ossl_cipher_hw_chunked_cfb128, .-ossl_cipher_hw_chunked_cfb128
	.globl	ossl_cipher_hw_chunked_ofb128
	.type	ossl_cipher_hw_chunked_ofb128, @function
ossl_cipher_hw_chunked_ofb128:
.LFB412:
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
	movq	%rcx, -32(%rbp)
	jmp	.L52
.L53:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1073741824, %ecx
	movq	%rax, %rdi
	call	ossl_cipher_hw_generic_ofb128@PLT
	subq	$1073741824, -32(%rbp)
	addq	$1073741824, -24(%rbp)
	addq	$1073741824, -16(%rbp)
.L52:
	cmpq	$1073741823, -32(%rbp)
	ja	.L53
	cmpq	$0, -32(%rbp)
	je	.L54
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cipher_hw_generic_ofb128@PLT
.L54:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_cipher_hw_chunked_ofb128, .-ossl_cipher_hw_chunked_ofb128
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
