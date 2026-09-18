	.file	"der_ec_key.c"
	.text
	.globl	ossl_DER_w_algorithmIdentifier_EC
	.type	ossl_DER_w_algorithmIdentifier_EC, @function
ossl_DER_w_algorithmIdentifier_EC:
.LFB359:
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
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_begin_sequence@PLT
	testl	%eax, %eax
	je	.L2
	movq	ossl_der_oid_id_ecPublicKey@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$9, %ecx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	testl	%eax, %eax
	je	.L2
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_end_sequence@PLT
	testl	%eax, %eax
	je	.L2
	movl	$1, %eax
	jmp	.L4
.L2:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	ossl_DER_w_algorithmIdentifier_EC, .-ossl_DER_w_algorithmIdentifier_EC
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
