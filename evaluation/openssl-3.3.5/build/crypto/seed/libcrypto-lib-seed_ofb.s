	.file	"seed_ofb.c"
	.text
	.globl	SEED_ofb128_encrypt
	.type	SEED_ofb128_encrypt, @function
SEED_ofb128_encrypt:
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
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movq	SEED_encrypt@GOTPCREL(%rip), %r9
	pushq	%r9
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	CRYPTO_ofb128_encrypt@PLT
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	SEED_ofb128_encrypt, .-SEED_ofb128_encrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
