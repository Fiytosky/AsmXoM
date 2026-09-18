	.file	"v3_ia5.c"
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
	.globl	ossl_v3_ns_ia5_list
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_ns_ia5_list, @object
	.size	ossl_v3_ns_ia5_list, 832
ossl_v3_ns_ia5_list:
	.long	72
	.long	0
	.quad	ASN1_IA5STRING_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_IA5STRING
	.quad	s2i_ASN1_IA5STRING
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	73
	.long	0
	.quad	ASN1_IA5STRING_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_IA5STRING
	.quad	s2i_ASN1_IA5STRING
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	74
	.long	0
	.quad	ASN1_IA5STRING_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_IA5STRING
	.quad	s2i_ASN1_IA5STRING
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	75
	.long	0
	.quad	ASN1_IA5STRING_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_IA5STRING
	.quad	s2i_ASN1_IA5STRING
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	76
	.long	0
	.quad	ASN1_IA5STRING_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_IA5STRING
	.quad	s2i_ASN1_IA5STRING
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	77
	.long	0
	.quad	ASN1_IA5STRING_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_IA5STRING
	.quad	s2i_ASN1_IA5STRING
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	78
	.long	0
	.quad	ASN1_IA5STRING_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_IA5STRING
	.quad	s2i_ASN1_IA5STRING
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	-1
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC0:
	.string	"../crypto/x509/v3_ia5.c"
	.text
	.globl	i2s_ASN1_IA5STRING
	.type	i2s_ASN1_IA5STRING, @function
i2s_ASN1_IA5STRING:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L6
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.L7
.L6:
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$34, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L8
.L9:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	i2s_ASN1_IA5STRING, .-i2s_ASN1_IA5STRING
	.globl	s2i_ASN1_IA5STRING
	.type	s2i_ASN1_IA5STRING, @function
s2i_ASN1_IA5STRING:
.LFB618:
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
	cmpq	$0, -40(%rbp)
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L12
.L11:
	call	ASN1_IA5STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L13
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L12
.L13:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L14
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_IA5STRING_free@PLT
	movl	$0, %eax
	jmp	.L12
.L14:
	movq	-8(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	s2i_ASN1_IA5STRING, .-s2i_ASN1_IA5STRING
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"s2i_ASN1_IA5STRING"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
