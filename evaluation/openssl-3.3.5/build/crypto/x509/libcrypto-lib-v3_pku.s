	.file	"v3_pku.c"
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
	.globl	ossl_v3_pkey_usage_period
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_pkey_usage_period, @object
	.size	ossl_v3_pkey_usage_period, 104
ossl_v3_pkey_usage_period:
	.long	84
	.long	0
	.quad	PKEY_USAGE_PERIOD_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_PKEY_USAGE_PERIOD
	.quad	0
	.quad	0
	.section	.rodata
.LC0:
	.string	"notBefore"
.LC1:
	.string	"notAfter"
	.section	.data.rel.ro
	.align 32
	.type	PKEY_USAGE_PERIOD_seq_tt, @object
	.size	PKEY_USAGE_PERIOD_seq_tt, 80
PKEY_USAGE_PERIOD_seq_tt:
	.quad	137
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	137
	.quad	1
	.quad	8
	.quad	.LC1
	.quad	ASN1_GENERALIZEDTIME_it
	.text
	.globl	PKEY_USAGE_PERIOD_it
	.type	PKEY_USAGE_PERIOD_it, @function
PKEY_USAGE_PERIOD_it:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	PKEY_USAGE_PERIOD_it, .-PKEY_USAGE_PERIOD_it
	.globl	d2i_PKEY_USAGE_PERIOD
	.type	d2i_PKEY_USAGE_PERIOD, @function
d2i_PKEY_USAGE_PERIOD:
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
	call	PKEY_USAGE_PERIOD_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	d2i_PKEY_USAGE_PERIOD, .-d2i_PKEY_USAGE_PERIOD
	.globl	i2d_PKEY_USAGE_PERIOD
	.type	i2d_PKEY_USAGE_PERIOD, @function
i2d_PKEY_USAGE_PERIOD:
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
	call	PKEY_USAGE_PERIOD_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	i2d_PKEY_USAGE_PERIOD, .-i2d_PKEY_USAGE_PERIOD
	.globl	PKEY_USAGE_PERIOD_new
	.type	PKEY_USAGE_PERIOD_new, @function
PKEY_USAGE_PERIOD_new:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKEY_USAGE_PERIOD_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	PKEY_USAGE_PERIOD_new, .-PKEY_USAGE_PERIOD_new
	.globl	PKEY_USAGE_PERIOD_free
	.type	PKEY_USAGE_PERIOD_free, @function
PKEY_USAGE_PERIOD_free:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKEY_USAGE_PERIOD_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	PKEY_USAGE_PERIOD_free, .-PKEY_USAGE_PERIOD_free
	.section	.rodata
.LC2:
	.string	""
.LC3:
	.string	"%*s"
.LC4:
	.string	"Not Before: "
.LC5:
	.string	", "
.LC6:
	.string	"Not After: "
	.text
	.type	i2r_PKEY_USAGE_PERIOD, @function
i2r_PKEY_USAGE_PERIOD:
.LFB628:
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
	movl	%ecx, -28(%rbp)
	leaq	.LC2(%rip), %rcx
	movl	-28(%rbp), %edx
	leaq	.LC3(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L15
	leaq	.LC4(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_print@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L15
	leaq	.LC5(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L15:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L16
	leaq	.LC6(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$11, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_print@PLT
.L16:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	i2r_PKEY_USAGE_PERIOD, .-i2r_PKEY_USAGE_PERIOD
	.section	.rodata
.LC7:
	.string	"PKEY_USAGE_PERIOD"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	PKEY_USAGE_PERIOD_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC7
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
