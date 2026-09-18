	.file	"der_sm2_sig.c"
	.text
	.globl	ossl_DER_w_algorithmIdentifier_SM2_with_MD
	.type	ossl_DER_w_algorithmIdentifier_SM2_with_MD, @function
ossl_DER_w_algorithmIdentifier_SM2_with_MD:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$1143, -32(%rbp)
	jne	.L2
	movq	ossl_der_oid_sm2_with_SM3@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$10, -16(%rbp)
	nop
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_begin_sequence@PLT
	testl	%eax, %eax
	je	.L5
	jmp	.L7
.L2:
	movl	$0, %eax
	jmp	.L4
.L7:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	testl	%eax, %eax
	je	.L5
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_end_sequence@PLT
	testl	%eax, %eax
	je	.L5
	movl	$1, %eax
	jmp	.L4
.L5:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	ossl_DER_w_algorithmIdentifier_SM2_with_MD, .-ossl_DER_w_algorithmIdentifier_SM2_with_MD
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
