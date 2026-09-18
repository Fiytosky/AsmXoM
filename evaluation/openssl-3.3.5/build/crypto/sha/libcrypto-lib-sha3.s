	.file	"sha3.c"
	.text
	.globl	ossl_sha3_reset
	.type	ossl_sha3_reset, @function
ossl_sha3_reset:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$200, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	$0, 384(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 424(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	ossl_sha3_reset, .-ossl_sha3_reset
	.globl	ossl_sha3_init
	.type	ossl_sha3_init, @function
ossl_sha3_init:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movb	%al, -28(%rbp)
	movl	$800, %eax
	subq	-40(%rbp), %rax
	addq	%rax, %rax
	shrq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$168, -8(%rbp)
	ja	.L3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sha3_reset@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 368(%rax)
	movq	-40(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 376(%rax)
	movq	-24(%rbp), %rax
	movzbl	-28(%rbp), %edx
	movb	%dl, 392(%rax)
	movl	$1, %eax
	jmp	.L4
.L3:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	ossl_sha3_init, .-ossl_sha3_init
	.globl	ossl_keccak_kmac_init
	.type	ossl_keccak_kmac_init, @function
ossl_keccak_kmac_init:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movq	%rdx, -40(%rbp)
	movb	%al, -28(%rbp)
	movzbl	-28(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_sha3_init@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L6
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 376(%rax)
.L6:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ossl_keccak_kmac_init, .-ossl_keccak_kmac_init
	.globl	ossl_sha3_update
	.type	ossl_sha3_update, @function
ossl_sha3_update:
.LFB3:
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
	movq	-40(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movq	-40(%rbp), %rax
	movl	424(%rax), %eax
	cmpl	$3, %eax
	je	.L11
	movq	-40(%rbp), %rax
	movl	424(%rax), %eax
	cmpl	$2, %eax
	jne	.L12
.L11:
	movl	$0, %eax
	jmp	.L10
.L12:
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L13
	movq	-24(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L14
	movq	-40(%rbp), %rax
	leaq	200(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 384(%rax)
	movl	$1, %eax
	jmp	.L10
.L14:
	movq	-40(%rbp), %rax
	leaq	200(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	leaq	200(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	SHA3_absorb@PLT
	movq	-40(%rbp), %rax
	movq	$0, 384(%rax)
.L13:
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L15
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	call	SHA3_absorb@PLT
	movq	%rax, -16(%rbp)
	jmp	.L16
.L15:
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
.L16:
	cmpq	$0, -16(%rbp)
	je	.L17
	movq	-56(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-40(%rbp), %rax
	leaq	200(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 384(%rax)
.L17:
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ossl_sha3_update, .-ossl_sha3_update
	.globl	ossl_sha3_final
	.type	ossl_sha3_final, @function
ossl_sha3_final:
.LFB4:
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
	movq	368(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L19
	movl	$1, %eax
	jmp	.L20
.L19:
	movq	-24(%rbp), %rax
	movl	424(%rax), %eax
	cmpl	$3, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	424(%rax), %eax
	cmpl	$2, %eax
	jne	.L22
.L21:
	movl	$0, %eax
	jmp	.L20
.L22:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	200(%rdx), %rcx
	movq	-16(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movzbl	392(%rax), %eax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	addq	$200, %rdx
	movb	%al, (%rdx)
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	200(%rax,%rdx), %eax
	movq	-8(%rbp), %rdx
	subq	$1, %rdx
	orl	$-128, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movb	%cl, 200(%rax,%rdx)
	movq	-24(%rbp), %rax
	leaq	200(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	SHA3_absorb@PLT
	movq	-24(%rbp), %rax
	movl	$2, 424(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	call	SHA3_squeeze@PLT
	movl	$1, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ossl_sha3_final, .-ossl_sha3_final
	.globl	ossl_sha3_squeeze
	.type	ossl_sha3_squeeze, @function
ossl_sha3_squeeze:
.LFB5:
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
	movq	-40(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -20(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L24
	movl	$1, %eax
	jmp	.L25
.L24:
	movq	-40(%rbp), %rax
	movl	424(%rax), %eax
	cmpl	$2, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L25
.L26:
	movq	-40(%rbp), %rax
	movl	424(%rax), %eax
	cmpl	$3, %eax
	je	.L27
	movq	-32(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	200(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rax
	movzbl	392(%rax), %eax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	addq	$200, %rdx
	movb	%al, (%rdx)
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	200(%rax,%rdx), %eax
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	orl	$-128, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movb	%cl, 200(%rax,%rdx)
	movq	-40(%rbp), %rax
	leaq	200(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	SHA3_absorb@PLT
	movq	-40(%rbp), %rax
	movl	$3, 424(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 384(%rax)
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
.L27:
	cmpq	$0, -8(%rbp)
	je	.L28
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L29
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L30
.L29:
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
.L30:
	movq	-40(%rbp), %rax
	leaq	200(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 384(%rax)
.L28:
	cmpq	$0, -56(%rbp)
	jne	.L31
	movl	$1, %eax
	jmp	.L25
.L31:
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L32
	movq	-56(%rbp), %rax
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	SHA3_squeeze@PLT
	movl	$1, -20(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, -56(%rbp)
.L32:
	cmpq	$0, -56(%rbp)
	je	.L33
	movq	-40(%rbp), %rax
	leaq	200(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	SHA3_squeeze@PLT
	movq	-40(%rbp), %rax
	leaq	200(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 384(%rax)
.L33:
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ossl_sha3_squeeze, .-ossl_sha3_squeeze
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
