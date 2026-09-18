	.file	"md4_one.c"
	.text
	.globl	MD4
	.type	MD4, @function
MD4:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L2
	leaq	m.0(%rip), %rax
	movq	%rax, -120(%rbp)
.L2:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	MD4_Init@PLT
	testl	%eax, %eax
	jne	.L3
	movl	$0, %eax
	jmp	.L5
.L3:
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	MD4_Update@PLT
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	MD4_Final@PLT
	leaq	-96(%rbp), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-120(%rbp), %rax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	MD4, .-MD4
	.local	m.0
	.comm	m.0,16,16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
