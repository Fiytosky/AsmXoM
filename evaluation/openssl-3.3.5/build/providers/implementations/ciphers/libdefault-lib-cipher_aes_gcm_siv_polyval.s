	.file	"cipher_aes_gcm_siv_polyval.c"
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
	.type	GSWAP4, @function
GSWAP4:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	orl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	GSWAP4, .-GSWAP4
	.type	GSWAP8, @function
GSWAP8:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	call	GSWAP4
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	salq	$32, -8(%rbp)
	movq	-24(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edi
	call	GSWAP4
	movl	%eax, %eax
	orq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	GSWAP8, .-GSWAP8
	.type	mulx_ghash, @function
mulx_ghash:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L10
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	GSWAP8
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	GSWAP8
	movq	%rax, -40(%rbp)
	jmp	.L11
.L10:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.L11:
	movq	-40(%rbp), %rax
	andl	$1, %eax
	negq	%rax
	andl	$225, %eax
	movq	%rax, -32(%rbp)
	salq	$56, -32(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L12
	movq	-40(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	salq	$63, %rax
	xorq	%rdx, %rax
	movq	-56(%rbp), %rdx
	leaq	8(%rdx), %rbx
	movq	%rax, %rdi
	call	GSWAP8
	movq	%rax, (%rbx)
	movq	-48(%rbp), %rax
	shrq	%rax
	xorq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	GSWAP8
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L14
.L12:
	movq	-40(%rbp), %rax
	shrq	%rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	$8, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	shrq	%rax
	xorq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L14:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	mulx_ghash, .-mulx_ghash
	.type	byte_reverse16, @function
byte_reverse16:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.L16
	movq	-40(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.L16
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	GSWAP8
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	8(%rdx), %rbx
	movq	%rax, %rdi
	call	GSWAP8
	movq	%rax, (%rbx)
	jmp	.L17
.L16:
	movl	$0, -12(%rbp)
	jmp	.L18
.L19:
	movl	$15, %eax
	subl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -12(%rbp)
.L18:
	cmpl	$15, -12(%rbp)
	jle	.L19
	nop
.L17:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	byte_reverse16, .-byte_reverse16
	.globl	ossl_polyval_ghash_init
	.type	ossl_polyval_ghash_init, @function
ossl_polyval_ghash_init:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, -4(%rbp)
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	byte_reverse16
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	mulx_ghash
	cmpl	$0, -4(%rbp)
	je	.L21
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	GSWAP8
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	GSWAP8
	movq	%rax, -24(%rbp)
.L21:
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gcm_init_4bit@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_polyval_ghash_init, .-ossl_polyval_ghash_init
	.globl	ossl_polyval_ghash_hash
	.type	ossl_polyval_ghash_hash, @function
ossl_polyval_ghash_hash:
.LFB407:
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
	movq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	byte_reverse16
	movq	$0, -8(%rbp)
	jmp	.L23
.L24:
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	byte_reverse16
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	ossl_gcm_ghash_4bit@PLT
	addq	$16, -8(%rbp)
.L23:
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L24
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	byte_reverse16
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_polyval_ghash_hash, .-ossl_polyval_ghash_hash
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
