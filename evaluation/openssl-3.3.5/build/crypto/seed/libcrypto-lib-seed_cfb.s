	.file	"seed_cfb.c"
	.text
	.globl	SEED_cfb128_encrypt
	.type	SEED_cfb128_encrypt, @function
SEED_cfb128_encrypt:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	SEED_encrypt@GOTPCREL(%rip), %rdi
	pushq	%rdi
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	CRYPTO_cfb128_encrypt@PLT
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	SEED_cfb128_encrypt, .-SEED_cfb128_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
