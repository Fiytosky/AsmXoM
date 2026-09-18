	.file	"der_rsa_sig.c"
	.text
	.globl	ossl_DER_w_algorithmIdentifier_MDWithRSAEncryption
	.type	ossl_DER_w_algorithmIdentifier_MDWithRSAEncryption, @function
ossl_DER_w_algorithmIdentifier_MDWithRSAEncryption:
.LFB117:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
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
	cmpl	$1095, -32(%rbp)
	je	.L7
	cmpl	$1095, -32(%rbp)
	jg	.L3
	cmpl	$1094, -32(%rbp)
	je	.L8
	cmpl	$1094, -32(%rbp)
	jg	.L3
	cmpl	$675, -32(%rbp)
	je	.L9
	cmpl	$675, -32(%rbp)
	jg	.L3
	cmpl	$674, -32(%rbp)
	je	.L10
	cmpl	$674, -32(%rbp)
	jg	.L3
	cmpl	$673, -32(%rbp)
	je	.L11
	cmpl	$673, -32(%rbp)
	jg	.L3
	cmpl	$672, -32(%rbp)
	je	.L12
	cmpl	$672, -32(%rbp)
	jg	.L3
	cmpl	$257, -32(%rbp)
	je	.L13
	cmpl	$257, -32(%rbp)
	jg	.L3
	cmpl	$117, -32(%rbp)
	je	.L14
	cmpl	$117, -32(%rbp)
	jg	.L3
	cmpl	$95, -32(%rbp)
	je	.L15
	cmpl	$95, -32(%rbp)
	jg	.L3
	cmpl	$64, -32(%rbp)
	je	.L16
	cmpl	$64, -32(%rbp)
	jg	.L3
	cmpl	$3, -32(%rbp)
	je	.L17
	cmpl	$4, -32(%rbp)
	je	.L18
	jmp	.L3
.L17:
	movq	ossl_der_oid_md2WithRSAEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L18:
	movq	ossl_der_oid_md5WithRSAEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L13:
	movq	ossl_der_oid_md4WithRSAEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L14:
	movq	ossl_der_oid_ripemd160WithRSAEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$8, -16(%rbp)
	jmp	.L19
.L15:
	movq	ossl_der_oid_mdc2WithRSASignature@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$7, -16(%rbp)
	jmp	.L19
.L16:
	movq	ossl_der_oid_sha1WithRSAEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L9:
	movq	ossl_der_oid_sha224WithRSAEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L12:
	movq	ossl_der_oid_sha256WithRSAEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L11:
	movq	ossl_der_oid_sha384WithRSAEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L10:
	movq	ossl_der_oid_sha512WithRSAEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L8:
	movq	ossl_der_oid_sha512_224WithRSAEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L7:
	movq	ossl_der_oid_sha512_256WithRSAEncryption@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L6:
	movq	ossl_der_oid_id_rsassa_pkcs1_v1_5_with_sha3_224@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L5:
	movq	ossl_der_oid_id_rsassa_pkcs1_v1_5_with_sha3_256@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L4:
	movq	ossl_der_oid_id_rsassa_pkcs1_v1_5_with_sha3_384@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L2:
	movq	ossl_der_oid_id_rsassa_pkcs1_v1_5_with_sha3_512@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$11, -16(%rbp)
	jmp	.L19
.L3:
	movl	$-1, %eax
	jmp	.L20
.L19:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_begin_sequence@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_null@PLT
	testl	%eax, %eax
	je	.L21
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	testl	%eax, %eax
	je	.L21
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_end_sequence@PLT
	testl	%eax, %eax
	je	.L21
	movl	$1, %eax
	jmp	.L20
.L21:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	ossl_DER_w_algorithmIdentifier_MDWithRSAEncryption, .-ossl_DER_w_algorithmIdentifier_MDWithRSAEncryption
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
