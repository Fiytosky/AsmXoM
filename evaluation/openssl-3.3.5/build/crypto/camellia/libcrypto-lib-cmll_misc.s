	.file	"cmll_misc.c"
	.text
	.globl	Camellia_set_key
	.type	Camellia_set_key, @function
Camellia_set_key:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	cmpq	$0, -24(%rbp)
	jne	.L3
.L2:
	movl	$-1, %eax
	jmp	.L4
.L3:
	cmpl	$128, -12(%rbp)
	je	.L5
	cmpl	$192, -12(%rbp)
	je	.L5
	cmpl	$256, -12(%rbp)
	je	.L5
	movl	$-2, %eax
	jmp	.L4
.L5:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	Camellia_Ekeygen@PLT
	movq	-24(%rbp), %rdx
	movl	%eax, 272(%rdx)
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	Camellia_set_key, .-Camellia_set_key
	.globl	Camellia_encrypt
	.type	Camellia_encrypt, @function
Camellia_encrypt:
.LFB1:
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
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	272(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	call	Camellia_EncryptBlock_Rounds@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	Camellia_encrypt, .-Camellia_encrypt
	.globl	Camellia_decrypt
	.type	Camellia_decrypt, @function
Camellia_decrypt:
.LFB2:
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
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	272(%rax), %eax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	call	Camellia_DecryptBlock_Rounds@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Camellia_decrypt, .-Camellia_decrypt
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
