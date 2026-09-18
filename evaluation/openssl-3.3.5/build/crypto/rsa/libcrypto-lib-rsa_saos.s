	.file	"rsa_saos.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_saos.c"
	.text
	.globl	RSA_sign_ASN1_OCTET_STRING
	.type	RSA_sign_ASN1_OCTET_STRING, @function
RSA_sign_ASN1_OCTET_STRING:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -72(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movl	$1, -4(%rbp)
	movl	$4, -44(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_ASN1_OCTET_STRING@PLT
	movl	%eax, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	subl	$10, %eax
	cmpl	%eax, -8(%rbp)
	jl	.L6
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$39, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L11
.L6:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	leaq	.LC0(%rip), %rax
	movl	$42, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L11
.L8:
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_OCTET_STRING@PLT
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	-8(%rbp), %eax
	movl	$1, %r8d
	movl	%eax, %edi
	call	RSA_private_encrypt@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L9
	movl	$0, -4(%rbp)
	jmp	.L10
.L9:
	movl	-8(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
.L10:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$53, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-4(%rbp), %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	RSA_sign_ASN1_OCTET_STRING, .-RSA_sign_ASN1_OCTET_STRING
	.globl	RSA_verify_ASN1_OCTET_STRING
	.type	RSA_verify_ASN1_OCTET_STRING, @function
RSA_verify_ASN1_OCTET_STRING:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -56(%rbp)
	movq	%rcx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movq	%r9, -88(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	cmpl	%eax, -76(%rbp)
	je	.L13
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$68, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L21
.L13:
	movl	-76(%rbp), %eax
	leaq	.LC0(%rip), %rcx
	movl	$72, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L22
	movl	-76(%rbp), %eax
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movl	$1, %r8d
	movl	%eax, %edi
	call	RSA_public_decrypt@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L23
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_OCTET_STRING@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L24
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jne	.L19
	movl	-56(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L20
.L19:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$87, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L16
.L20:
	movl	$1, -4(%rbp)
	jmp	.L16
.L22:
	nop
	jmp	.L16
.L23:
	nop
	jmp	.L16
.L24:
	nop
.L16:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	-76(%rbp), %esi
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$93, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-4(%rbp), %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	RSA_verify_ASN1_OCTET_STRING, .-RSA_verify_ASN1_OCTET_STRING
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 27
__func__.1:
	.string	"RSA_sign_ASN1_OCTET_STRING"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"RSA_verify_ASN1_OCTET_STRING"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
