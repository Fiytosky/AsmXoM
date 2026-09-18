	.file	"rand_key.c"
	.text
	.globl	DES_random_key
	.type	DES_random_key, @function
DES_random_key:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.L4:
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	cmpl	$1, %eax
	je	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DES_is_weak_key@PLT
	testl	%eax, %eax
	jne	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	DES_random_key, .-DES_random_key
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
