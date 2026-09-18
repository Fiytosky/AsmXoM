	.file	"v3_int.c"
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
	.globl	ossl_v3_crl_num
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_crl_num, @object
	.size	ossl_v3_crl_num, 104
ossl_v3_crl_num:
	.long	88
	.long	0
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_INTEGER
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.globl	ossl_v3_delta_crl
	.align 32
	.type	ossl_v3_delta_crl, @object
	.size	ossl_v3_delta_crl, 104
ossl_v3_delta_crl:
	.long	140
	.long	0
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_INTEGER
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	s2i_asn1_int, @function
s2i_asn1_int:
.LFB617:
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
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	s2i_ASN1_INTEGER@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	s2i_asn1_int, .-s2i_asn1_int
	.globl	ossl_v3_inhibit_anyp
	.section	.data.rel.ro
	.align 32
	.type	ossl_v3_inhibit_anyp, @object
	.size	ossl_v3_inhibit_anyp, 104
ossl_v3_inhibit_anyp:
	.long	748
	.long	0
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_ASN1_INTEGER
	.quad	s2i_asn1_int
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
