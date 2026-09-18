	.file	"der_dsa_sig.c"
	.text
	.globl	ossl_DER_w_algorithmIdentifier_DSA_with_MD
	.type	ossl_DER_w_algorithmIdentifier_DSA_with_MD, @function
ossl_DER_w_algorithmIdentifier_DSA_with_MD:
.LFB69:
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
	cmpl	$1099, -32(%rbp)
	je	.L2
	cmpl	$1099, -32(%rbp)
	jg	.L3
	cmpl	$1098, -32(%rbp)
	je	.L4
	cmpl	$1098, -32(%rbp)
	jg	.L3
	cmpl	$1097, -32(%rbp)
	je	.L5
	cmpl	$1097, -32(%rbp)
	jg	.L3
	cmpl	$1096, -32(%rbp)
	je	.L6
	cmpl	$1096, -32(%rbp)
	jg	.L3
	cmpl	$675, -32(%rbp)
	je	.L7
	cmpl	$675, -32(%rbp)
	jg	.L3
	cmpl	$674, -32(%rbp)
	je	.L8
	cmpl	$674, -32(%rbp)
	jg	.L3
	cmpl	$673, -32(%rbp)
	je	.L9
	cmpl	$673, -32(%rbp)
	jg	.L3
	cmpl	$64, -32(%rbp)
	je	.L10
	cmpl	$672, -32(%rbp)
	je	.L11
	jmp	.L3
.L10:
	movq	ossl_der_oid_id_dsa_with_sha1@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$9, -16(%rbp)
	jmp	.L12
.L7:
	movq	ossl_der_oid_id_dsa_with_sha224@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L12
.L11:
	movq	ossl_der_oid_id_dsa_with_sha256@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L12
.L9:
	movq	ossl_der_oid_id_dsa_with_sha384@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L12
.L8:
	movq	ossl_der_oid_id_dsa_with_sha512@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L12
.L6:
	movq	ossl_der_oid_id_dsa_with_sha3_224@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L12
.L5:
	movq	ossl_der_oid_id_dsa_with_sha3_256@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L12
.L4:
	movq	ossl_der_oid_id_dsa_with_sha3_384@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L12
.L2:
	movq	ossl_der_oid_id_dsa_with_sha3_512@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L12
.L3:
	movl	$0, %eax
	jmp	.L13
.L12:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_begin_sequence@PLT
	testl	%eax, %eax
	je	.L14
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	testl	%eax, %eax
	je	.L14
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_end_sequence@PLT
	testl	%eax, %eax
	je	.L14
	movl	$1, %eax
	jmp	.L13
.L14:
	movl	$0, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	ossl_DER_w_algorithmIdentifier_DSA_with_MD, .-ossl_DER_w_algorithmIdentifier_DSA_with_MD
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
