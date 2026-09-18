	.file	"bio_pk7.c"
	.text
	.globl	BIO_new_PKCS7
	.type	BIO_new_PKCS7, @function
BIO_new_PKCS7:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_new_NDEF@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	BIO_new_PKCS7, .-BIO_new_PKCS7
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
