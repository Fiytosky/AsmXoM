	.file	"v3_group_ac.c"
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
	.type	i2r_GROUP_AC, @function
i2r_GROUP_AC:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	i2r_GROUP_AC, .-i2r_GROUP_AC
	.type	r2i_GROUP_AC, @function
r2i_GROUP_AC:
.LFB624:
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
	call	ASN1_NULL_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	r2i_GROUP_AC, .-r2i_GROUP_AC
	.section	.rodata
.LC0:
	.string	"../crypto/x509/v3_group_ac.c"
.LC1:
	.string	"NULL"
	.text
	.type	i2s_GROUP_AC, @function
i2s_GROUP_AC:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	i2s_GROUP_AC, .-i2s_GROUP_AC
	.type	s2i_GROUP_AC, @function
s2i_GROUP_AC:
.LFB626:
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
	call	ASN1_NULL_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	s2i_GROUP_AC, .-s2i_GROUP_AC
	.globl	ossl_v3_group_ac
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_group_ac, @object
	.size	ossl_v3_group_ac, 104
ossl_v3_group_ac:
	.long	1310
	.long	0
	.quad	ASN1_NULL_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_GROUP_AC
	.quad	s2i_GROUP_AC
	.quad	0
	.quad	0
	.quad	i2r_GROUP_AC
	.quad	r2i_GROUP_AC
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
