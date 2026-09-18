	.file	"der_ecx_key.c"
	.text
	.globl	ossl_DER_w_algorithmIdentifier_X25519
	.type	ossl_DER_w_algorithmIdentifier_X25519, @function
ossl_DER_w_algorithmIdentifier_X25519:
.LFB118:
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
	movq	ossl_der_oid_id_X25519@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$5, %ecx
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
.LFE118:
	.size	ossl_DER_w_algorithmIdentifier_X25519, .-ossl_DER_w_algorithmIdentifier_X25519
	.globl	ossl_DER_w_algorithmIdentifier_X448
	.type	ossl_DER_w_algorithmIdentifier_X448, @function
ossl_DER_w_algorithmIdentifier_X448:
.LFB119:
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
	je	.L6
	movq	ossl_der_oid_id_X448@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$5, %ecx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	testl	%eax, %eax
	je	.L6
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_end_sequence@PLT
	testl	%eax, %eax
	je	.L6
	movl	$1, %eax
	jmp	.L8
.L6:
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	ossl_DER_w_algorithmIdentifier_X448, .-ossl_DER_w_algorithmIdentifier_X448
	.globl	ossl_DER_w_algorithmIdentifier_ED25519
	.type	ossl_DER_w_algorithmIdentifier_ED25519, @function
ossl_DER_w_algorithmIdentifier_ED25519:
.LFB120:
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
	je	.L10
	movq	ossl_der_oid_id_Ed25519@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$5, %ecx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	testl	%eax, %eax
	je	.L10
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_end_sequence@PLT
	testl	%eax, %eax
	je	.L10
	movl	$1, %eax
	jmp	.L12
.L10:
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE120:
	.size	ossl_DER_w_algorithmIdentifier_ED25519, .-ossl_DER_w_algorithmIdentifier_ED25519
	.globl	ossl_DER_w_algorithmIdentifier_ED448
	.type	ossl_DER_w_algorithmIdentifier_ED448, @function
ossl_DER_w_algorithmIdentifier_ED448:
.LFB121:
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
	je	.L14
	movq	ossl_der_oid_id_Ed448@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$5, %ecx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_precompiled@PLT
	testl	%eax, %eax
	je	.L14
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_end_sequence@PLT
	testl	%eax, %eax
	je	.L14
	movl	$1, %eax
	jmp	.L16
.L14:
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE121:
	.size	ossl_DER_w_algorithmIdentifier_ED448, .-ossl_DER_w_algorithmIdentifier_ED448
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
