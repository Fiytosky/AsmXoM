	.file	"v3_enum.c"
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
	.string	"Unspecified"
.LC1:
	.string	"unspecified"
.LC2:
	.string	"Key Compromise"
.LC3:
	.string	"keyCompromise"
.LC4:
	.string	"CA Compromise"
.LC5:
	.string	"CACompromise"
.LC6:
	.string	"Affiliation Changed"
.LC7:
	.string	"affiliationChanged"
.LC8:
	.string	"Superseded"
.LC9:
	.string	"superseded"
.LC10:
	.string	"Cessation Of Operation"
.LC11:
	.string	"cessationOfOperation"
.LC12:
	.string	"Certificate Hold"
.LC13:
	.string	"certificateHold"
.LC14:
	.string	"Remove From CRL"
.LC15:
	.string	"removeFromCRL"
.LC16:
	.string	"Privilege Withdrawn"
.LC17:
	.string	"privilegeWithdrawn"
.LC18:
	.string	"AA Compromise"
.LC19:
	.string	"AACompromise"
	.section	.data.rel.local,"aw"
	.align 32
	.type	crl_reasons, @object
	.size	crl_reasons, 264
crl_reasons:
	.long	0
	.zero	4
	.quad	.LC0
	.quad	.LC1
	.long	1
	.zero	4
	.quad	.LC2
	.quad	.LC3
	.long	2
	.zero	4
	.quad	.LC4
	.quad	.LC5
	.long	3
	.zero	4
	.quad	.LC6
	.quad	.LC7
	.long	4
	.zero	4
	.quad	.LC8
	.quad	.LC9
	.long	5
	.zero	4
	.quad	.LC10
	.quad	.LC11
	.long	6
	.zero	4
	.quad	.LC12
	.quad	.LC13
	.long	8
	.zero	4
	.quad	.LC14
	.quad	.LC15
	.long	9
	.zero	4
	.quad	.LC16
	.quad	.LC17
	.long	10
	.zero	4
	.quad	.LC18
	.quad	.LC19
	.long	-1
	.zero	4
	.quad	0
	.quad	0
	.globl	ossl_v3_crl_reason
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_crl_reason, @object
	.size	ossl_v3_crl_reason, 104
ossl_v3_crl_reason:
	.long	141
	.long	0
	.quad	ASN1_ENUMERATED_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_ENUMERATED_TABLE
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	crl_reasons
	.section	.rodata
.LC20:
	.string	"../crypto/x509/v3_enum.c"
	.text
	.globl	i2s_ASN1_ENUMERATED_TABLE
	.type	i2s_ASN1_ENUMERATED_TABLE, @function
i2s_ASN1_ENUMERATED_TABLE:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_get@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L6
.L9:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
	cmpq	%rax, -16(%rbp)
	jne	.L7
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC20(%rip), %rcx
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	jmp	.L8
.L7:
	addq	$24, -8(%rbp)
.L6:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L9
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2s_ASN1_ENUMERATED@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	i2s_ASN1_ENUMERATED_TABLE, .-i2s_ASN1_ENUMERATED_TABLE
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
