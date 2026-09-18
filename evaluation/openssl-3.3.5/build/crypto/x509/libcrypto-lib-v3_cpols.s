	.file	"v3_cpols.c"
	.text
	.type	ossl_check_ASN1_INTEGER_type, @function
ossl_check_ASN1_INTEGER_type:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	ossl_check_ASN1_INTEGER_type, .-ossl_check_ASN1_INTEGER_type
	.type	ossl_check_const_ASN1_INTEGER_sk_type, @function
ossl_check_const_ASN1_INTEGER_sk_type:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	ossl_check_const_ASN1_INTEGER_sk_type, .-ossl_check_const_ASN1_INTEGER_sk_type
	.type	ossl_check_ASN1_INTEGER_sk_type, @function
ossl_check_ASN1_INTEGER_sk_type:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	ossl_check_ASN1_INTEGER_sk_type, .-ossl_check_ASN1_INTEGER_sk_type
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
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_sk_type, @function
ossl_check_CONF_VALUE_sk_type:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	ossl_check_CONF_VALUE_sk_type, .-ossl_check_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_freefunc_type, @function
ossl_check_CONF_VALUE_freefunc_type:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	ossl_check_CONF_VALUE_freefunc_type, .-ossl_check_CONF_VALUE_freefunc_type
	.type	ossl_check_POLICYQUALINFO_type, @function
ossl_check_POLICYQUALINFO_type:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	ossl_check_POLICYQUALINFO_type, .-ossl_check_POLICYQUALINFO_type
	.type	ossl_check_const_POLICYQUALINFO_sk_type, @function
ossl_check_const_POLICYQUALINFO_sk_type:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	ossl_check_const_POLICYQUALINFO_sk_type, .-ossl_check_const_POLICYQUALINFO_sk_type
	.type	ossl_check_POLICYQUALINFO_sk_type, @function
ossl_check_POLICYQUALINFO_sk_type:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	ossl_check_POLICYQUALINFO_sk_type, .-ossl_check_POLICYQUALINFO_sk_type
	.type	ossl_check_POLICYINFO_type, @function
ossl_check_POLICYINFO_type:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	ossl_check_POLICYINFO_type, .-ossl_check_POLICYINFO_type
	.type	ossl_check_const_POLICYINFO_sk_type, @function
ossl_check_const_POLICYINFO_sk_type:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	ossl_check_const_POLICYINFO_sk_type, .-ossl_check_const_POLICYINFO_sk_type
	.type	ossl_check_POLICYINFO_sk_type, @function
ossl_check_POLICYINFO_sk_type:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	ossl_check_POLICYINFO_sk_type, .-ossl_check_POLICYINFO_sk_type
	.type	ossl_check_POLICYINFO_compfunc_type, @function
ossl_check_POLICYINFO_compfunc_type:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	ossl_check_POLICYINFO_compfunc_type, .-ossl_check_POLICYINFO_compfunc_type
	.type	ossl_check_POLICYINFO_freefunc_type, @function
ossl_check_POLICYINFO_freefunc_type:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	ossl_check_POLICYINFO_freefunc_type, .-ossl_check_POLICYINFO_freefunc_type
	.globl	ossl_v3_cpols
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_cpols, @object
	.size	ossl_v3_cpols, 104
ossl_v3_cpols:
	.long	89
	.long	0
	.quad	CERTIFICATEPOLICIES_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_certpol
	.quad	r2i_certpol
	.quad	0
	.section	.rodata
.LC0:
	.string	"CERTIFICATEPOLICIES"
	.section	.data.rel.ro
	.align 32
	.type	CERTIFICATEPOLICIES_item_tt, @object
	.size	CERTIFICATEPOLICIES_item_tt, 40
CERTIFICATEPOLICIES_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	POLICYINFO_it
	.text
	.globl	CERTIFICATEPOLICIES_it
	.type	CERTIFICATEPOLICIES_it, @function
CERTIFICATEPOLICIES_it:
.LFB728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.9(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	CERTIFICATEPOLICIES_it, .-CERTIFICATEPOLICIES_it
	.globl	d2i_CERTIFICATEPOLICIES
	.type	d2i_CERTIFICATEPOLICIES, @function
d2i_CERTIFICATEPOLICIES:
.LFB729:
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
	call	CERTIFICATEPOLICIES_it@PLT
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
.LFE729:
	.size	d2i_CERTIFICATEPOLICIES, .-d2i_CERTIFICATEPOLICIES
	.globl	i2d_CERTIFICATEPOLICIES
	.type	i2d_CERTIFICATEPOLICIES, @function
i2d_CERTIFICATEPOLICIES:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	CERTIFICATEPOLICIES_it@PLT
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
.LFE730:
	.size	i2d_CERTIFICATEPOLICIES, .-i2d_CERTIFICATEPOLICIES
	.globl	CERTIFICATEPOLICIES_new
	.type	CERTIFICATEPOLICIES_new, @function
CERTIFICATEPOLICIES_new:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CERTIFICATEPOLICIES_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	CERTIFICATEPOLICIES_new, .-CERTIFICATEPOLICIES_new
	.globl	CERTIFICATEPOLICIES_free
	.type	CERTIFICATEPOLICIES_free, @function
CERTIFICATEPOLICIES_free:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	CERTIFICATEPOLICIES_it@PLT
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
.LFE732:
	.size	CERTIFICATEPOLICIES_free, .-CERTIFICATEPOLICIES_free
	.section	.rodata
.LC1:
	.string	"policyid"
.LC2:
	.string	"qualifiers"
	.section	.data.rel.ro
	.align 32
	.type	POLICYINFO_seq_tt, @object
	.size	POLICYINFO_seq_tt, 80
POLICYINFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	ASN1_OBJECT_it
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC2
	.quad	POLICYQUALINFO_it
	.text
	.globl	POLICYINFO_it
	.type	POLICYINFO_it, @function
POLICYINFO_it:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	POLICYINFO_it, .-POLICYINFO_it
	.globl	d2i_POLICYINFO
	.type	d2i_POLICYINFO, @function
d2i_POLICYINFO:
.LFB734:
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
	call	POLICYINFO_it@PLT
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
.LFE734:
	.size	d2i_POLICYINFO, .-d2i_POLICYINFO
	.globl	i2d_POLICYINFO
	.type	i2d_POLICYINFO, @function
i2d_POLICYINFO:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	POLICYINFO_it@PLT
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
.LFE735:
	.size	i2d_POLICYINFO, .-i2d_POLICYINFO
	.globl	POLICYINFO_new
	.type	POLICYINFO_new, @function
POLICYINFO_new:
.LFB736:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	POLICYINFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	POLICYINFO_new, .-POLICYINFO_new
	.globl	POLICYINFO_free
	.type	POLICYINFO_free, @function
POLICYINFO_free:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	POLICYINFO_it@PLT
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
.LFE737:
	.size	POLICYINFO_free, .-POLICYINFO_free
	.section	.rodata
.LC3:
	.string	"d.other"
	.section	.data.rel.ro
	.align 32
	.type	policydefault_tt, @object
	.size	policydefault_tt, 40
policydefault_tt:
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC3
	.quad	ASN1_ANY_it
	.section	.rodata
.LC4:
	.string	"d.cpsuri"
.LC5:
	.string	"d.usernotice"
	.section	.data.rel.ro
	.align 32
	.type	POLICYQUALINFO_adbtbl, @object
	.size	POLICYQUALINFO_adbtbl, 96
POLICYQUALINFO_adbtbl:
	.quad	164
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC4
	.quad	ASN1_IA5STRING_it
	.quad	165
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC5
	.quad	USERNOTICE_it
	.text
	.type	POLICYQUALINFO_adb, @function
POLICYQUALINFO_adb:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	internal_adb.7(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	POLICYQUALINFO_adb, .-POLICYQUALINFO_adb
	.section	.rodata
.LC6:
	.string	"pqualid"
.LC7:
	.string	"POLICYQUALINFO"
	.section	.data.rel.ro
	.align 32
	.type	POLICYQUALINFO_seq_tt, @object
	.size	POLICYQUALINFO_seq_tt, 80
POLICYQUALINFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	ASN1_OBJECT_it
	.quad	256
	.quad	-1
	.quad	0
	.quad	.LC7
	.quad	POLICYQUALINFO_adb
	.text
	.globl	POLICYQUALINFO_it
	.type	POLICYQUALINFO_it, @function
POLICYQUALINFO_it:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.6(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	POLICYQUALINFO_it, .-POLICYQUALINFO_it
	.globl	d2i_POLICYQUALINFO
	.type	d2i_POLICYQUALINFO, @function
d2i_POLICYQUALINFO:
.LFB740:
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
	call	POLICYQUALINFO_it@PLT
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
.LFE740:
	.size	d2i_POLICYQUALINFO, .-d2i_POLICYQUALINFO
	.globl	i2d_POLICYQUALINFO
	.type	i2d_POLICYQUALINFO, @function
i2d_POLICYQUALINFO:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	POLICYQUALINFO_it@PLT
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
.LFE741:
	.size	i2d_POLICYQUALINFO, .-i2d_POLICYQUALINFO
	.globl	POLICYQUALINFO_new
	.type	POLICYQUALINFO_new, @function
POLICYQUALINFO_new:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	POLICYQUALINFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	POLICYQUALINFO_new, .-POLICYQUALINFO_new
	.globl	POLICYQUALINFO_free
	.type	POLICYQUALINFO_free, @function
POLICYQUALINFO_free:
.LFB743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	POLICYQUALINFO_it@PLT
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
.LFE743:
	.size	POLICYQUALINFO_free, .-POLICYQUALINFO_free
	.section	.rodata
.LC8:
	.string	"noticeref"
.LC9:
	.string	"exptext"
	.section	.data.rel.ro
	.align 32
	.type	USERNOTICE_seq_tt, @object
	.size	USERNOTICE_seq_tt, 80
USERNOTICE_seq_tt:
	.quad	1
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	NOTICEREF_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC9
	.quad	DISPLAYTEXT_it
	.text
	.globl	USERNOTICE_it
	.type	USERNOTICE_it, @function
USERNOTICE_it:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	USERNOTICE_it, .-USERNOTICE_it
	.globl	d2i_USERNOTICE
	.type	d2i_USERNOTICE, @function
d2i_USERNOTICE:
.LFB745:
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
	call	USERNOTICE_it@PLT
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
.LFE745:
	.size	d2i_USERNOTICE, .-d2i_USERNOTICE
	.globl	i2d_USERNOTICE
	.type	i2d_USERNOTICE, @function
i2d_USERNOTICE:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	USERNOTICE_it@PLT
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
.LFE746:
	.size	i2d_USERNOTICE, .-i2d_USERNOTICE
	.globl	USERNOTICE_new
	.type	USERNOTICE_new, @function
USERNOTICE_new:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	USERNOTICE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	USERNOTICE_new, .-USERNOTICE_new
	.globl	USERNOTICE_free
	.type	USERNOTICE_free, @function
USERNOTICE_free:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	USERNOTICE_it@PLT
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
.LFE748:
	.size	USERNOTICE_free, .-USERNOTICE_free
	.section	.rodata
.LC10:
	.string	"organization"
.LC11:
	.string	"noticenos"
	.section	.data.rel.ro
	.align 32
	.type	NOTICEREF_seq_tt, @object
	.size	NOTICEREF_seq_tt, 80
NOTICEREF_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	DISPLAYTEXT_it
	.quad	4
	.quad	0
	.quad	8
	.quad	.LC11
	.quad	ASN1_INTEGER_it
	.text
	.globl	NOTICEREF_it
	.type	NOTICEREF_it, @function
NOTICEREF_it:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	NOTICEREF_it, .-NOTICEREF_it
	.globl	d2i_NOTICEREF
	.type	d2i_NOTICEREF, @function
d2i_NOTICEREF:
.LFB750:
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
	call	NOTICEREF_it@PLT
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
.LFE750:
	.size	d2i_NOTICEREF, .-d2i_NOTICEREF
	.globl	i2d_NOTICEREF
	.type	i2d_NOTICEREF, @function
i2d_NOTICEREF:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	NOTICEREF_it@PLT
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
.LFE751:
	.size	i2d_NOTICEREF, .-i2d_NOTICEREF
	.globl	NOTICEREF_new
	.type	NOTICEREF_new, @function
NOTICEREF_new:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	NOTICEREF_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	NOTICEREF_new, .-NOTICEREF_new
	.globl	NOTICEREF_free
	.type	NOTICEREF_free, @function
NOTICEREF_free:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	NOTICEREF_it@PLT
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
.LFE753:
	.size	NOTICEREF_free, .-NOTICEREF_free
	.section	.rodata
.LC12:
	.string	"../crypto/x509/v3_cpols.c"
.LC13:
	.string	", value="
.LC14:
	.string	"name="
.LC15:
	.string	"ia5org"
.LC16:
	.string	"%s"
	.text
	.type	r2i_certpol, @function
r2i_certpol:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_parse_list@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524322, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L82
.L81:
	movl	$0, %edi
	call	ossl_check_POLICYINFO_compfunc_type
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$108, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L84
.L83:
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L85
.L95:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L86
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L87
.L86:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-64(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L84
.L87:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC15(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L88
	movl	$1, -32(%rbp)
	jmp	.L89
.L88:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L90
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_section@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L91
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$129, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movl	$135, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L84
.L91:
	movl	-32(%rbp), %edx
	movq	-88(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	policy_section
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_section_free@PLT
	cmpq	$0, -24(%rbp)
	jne	.L92
	jmp	.L84
.L90:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L93
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	movl	$110, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L84
.L93:
	call	POLICYINFO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L94
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L84
.L94:
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
.L92:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICYINFO_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICYINFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L89
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	POLICYINFO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L84
.L89:
	addl	$1, -28(%rbp)
.L85:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L95
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-56(%rbp), %rax
	jmp	.L82
.L84:
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	POLICYINFO_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICYINFO_freefunc_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICYINFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
.L82:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	r2i_certpol, .-r2i_certpol
	.section	.rodata
.LC17:
	.string	"policyIdentifier"
.LC18:
	.string	",value:"
.LC19:
	.string	",name:"
.LC20:
	.string	"section:"
.LC21:
	.string	"CPS"
.LC22:
	.string	"userNotice"
	.text
	.type	policy_section, @function
policy_section:
.LFB755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	call	POLICYINFO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L97
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L98
.L97:
	movl	$0, -20(%rbp)
	jmp	.L99
.L114:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L100
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$184, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC18(%rip), %r8
	leaq	.LC19(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L98
.L101:
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L102
.L100:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L103
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L104
	call	OPENSSL_sk_new_null@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L104:
	call	POLICYQUALINFO_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L98
.L105:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICYQUALINFO_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICYQUALINFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L106
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	POLICYQUALINFO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$199, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L98
.L106:
	movl	$164, %edi
	call	OBJ_nid2obj@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L107
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$203, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L98
.L107:
	call	ASN1_IA5STRING_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$207, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L98
.L108:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L102
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$212, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L98
.L103:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L109
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	je	.L110
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$218, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC18(%rip), %r8
	leaq	.LC19(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L98
.L110:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_section@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L111
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$224, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$135, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC18(%rip), %r8
	leaq	.LC19(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L98
.L111:
	movl	-84(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	notice_section
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_section_free@PLT
	cmpq	$0, -56(%rbp)
	je	.L117
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L113
	call	OPENSSL_sk_new_null@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L113:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICYQUALINFO_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICYQUALINFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L102
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	POLICYQUALINFO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$237, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L98
.L109:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$241, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC18(%rip), %r8
	leaq	.LC19(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L98
.L102:
	addl	$1, -20(%rbp)
.L99:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L114
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L115
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L98
.L115:
	movq	-32(%rbp), %rax
	jmp	.L116
.L117:
	nop
.L98:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	POLICYINFO_free@PLT
	movl	$0, %eax
.L116:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	policy_section, .-policy_section
	.type	displaytext_get_tag_len, @function
displaytext_get_tag_len:
.LFB756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L119
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	jmp	.L121
.L119:
	movl	$-1, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	displaytext_get_tag_len, .-displaytext_get_tag_len
	.section	.rodata
.LC23:
	.string	"UTF8"
.LC24:
	.string	"UTF8String"
.LC25:
	.string	"BMP"
.LC26:
	.string	"BMPSTRING"
.LC27:
	.string	"VISIBLE"
.LC28:
	.string	"VISIBLESTRING"
	.text
	.type	displaytext_str2tag, @function
displaytext_str2tag:
.LFB757:
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
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	displaytext_get_tag_len
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L123
	movl	$26, %eax
	jmp	.L124
.L123:
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$4, -4(%rbp)
	jne	.L125
	leaq	.LC23(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L125
	movl	$12, %eax
	jmp	.L124
.L125:
	cmpl	$10, -4(%rbp)
	jne	.L126
	leaq	.LC24(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L126
	movl	$12, %eax
	jmp	.L124
.L126:
	cmpl	$3, -4(%rbp)
	jne	.L127
	leaq	.LC25(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L127
	movl	$30, %eax
	jmp	.L124
.L127:
	cmpl	$9, -4(%rbp)
	jne	.L128
	leaq	.LC26(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L128
	movl	$30, %eax
	jmp	.L124
.L128:
	cmpl	$7, -4(%rbp)
	jne	.L129
	leaq	.LC27(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L129
	movl	$26, %eax
	jmp	.L124
.L129:
	cmpl	$13, -4(%rbp)
	jne	.L130
	leaq	.LC28(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L130
	movl	$26, %eax
	jmp	.L124
.L130:
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movl	$26, %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	displaytext_str2tag, .-displaytext_str2tag
	.section	.rodata
.LC29:
	.string	"explicitText"
.LC30:
	.string	"noticeNumbers"
	.text
	.type	notice_section, @function
notice_section:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	$0, -32(%rbp)
	call	POLICYQUALINFO_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L132
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$302, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L132:
	movl	$165, %edi
	call	OBJ_nid2obj@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L134
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$306, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L134:
	call	USERNOTICE_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L135
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$310, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L135:
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, -20(%rbp)
	jmp	.L136
.L153:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC29(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L137
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	displaytext_str2tag
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_type_new@PLT
	movq	-64(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L138
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$321, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L138:
	movl	-96(%rbp), %eax
	testl	%eax, %eax
	je	.L139
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	addq	%rax, -32(%rbp)
.L139:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -92(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	-92(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L140
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$328, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L137:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L141
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L142
	call	NOTICEREF_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L143
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L143:
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L144
.L142:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.L144:
	cmpl	$0, -116(%rbp)
	je	.L145
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$22, 4(%rax)
	jmp	.L146
.L145:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$26, 4(%rax)
.L146:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L140
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$348, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L141:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC30(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L147
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L148
	call	NOTICEREF_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L149
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L149:
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L150
.L148:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.L150:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	X509V3_parse_list@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L151
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L152
.L151:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$365, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-72(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	jmp	.L133
.L152:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	nref_nos
	movl	%eax, -84(%rbp)
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	cmpl	$0, -84(%rbp)
	jne	.L140
	jmp	.L133
.L147:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$375, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-72(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC14(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L133
.L140:
	addl	$1, -20(%rbp)
.L136:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L153
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L154
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L155
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L154
.L155:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$383, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L133
.L154:
	movq	-56(%rbp), %rax
	jmp	.L157
.L133:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	POLICYQUALINFO_free@PLT
	movl	$0, %eax
.L157:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	notice_section, .-notice_section
	.type	nref_nos, @function
nref_nos:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L159
.L163:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	s2i_ASN1_INTEGER@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L160
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$404, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$140, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L161
.L160:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_INTEGER_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_INTEGER_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L162
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movl	$409, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L161
.L162:
	addl	$1, -20(%rbp)
.L159:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L163
	movl	$1, %eax
.L161:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	nref_nos, .-nref_nos
	.section	.rodata
.LC31:
	.string	"\n"
.LC32:
	.string	""
.LC33:
	.string	"%*sPolicy: "
	.text
	.type	i2r_certpol, @function
i2r_certpol:
.LFB760:
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
	movl	%ecx, -44(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L165
.L168:
	cmpl	$0, -4(%rbp)
	jle	.L166
	leaq	.LC31(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L166:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICYINFO_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC32(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC33(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L167
	leaq	.LC31(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	-44(%rbp), %eax
	leal	2(%rax), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_qualifiers
.L167:
	addl	$1, -4(%rbp)
.L165:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICYINFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L168
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	i2r_certpol, .-i2r_certpol
	.section	.rodata
.LC34:
	.string	"%*sCPS: %.*s"
.LC35:
	.string	"%*sUser Notice:\n"
.LC36:
	.string	"%*sUnknown Qualifier: "
	.text
	.type	print_qualifiers, @function
print_qualifiers:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L171
.L177:
	cmpl	$0, -4(%rbp)
	jle	.L172
	leaq	.LC31(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L172:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICYQUALINFO_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$164, %eax
	je	.L173
	cmpl	$165, %eax
	je	.L174
	jmp	.L178
.L173:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edi
	leaq	.LC32(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC34(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L176
.L174:
	leaq	.LC32(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC35(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-36(%rbp), %eax
	leal	2(%rax), %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_notice
	jmp	.L176
.L178:
	movl	-36(%rbp), %eax
	leal	2(%rax), %edx
	leaq	.LC32(%rip), %rcx
	leaq	.LC36(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	nop
.L176:
	addl	$1, -4(%rbp)
.L171:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICYQUALINFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L177
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	print_qualifiers, .-print_qualifiers
	.section	.rodata
.LC37:
	.string	"%*sOrganization: %.*s\n"
.LC38:
	.string	"s"
.LC39:
	.string	"%*sNumber%s: "
.LC40:
	.string	", "
.LC41:
	.string	"(null)"
.LC42:
	.string	"%*sExplicit Text: %.*s"
	.text
	.type	print_notice, @function
print_notice:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L180
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %r8
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	leaq	.LC32(%rip), %rcx
	movl	-52(%rbp), %edx
	leaq	.LC37(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_INTEGER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	jle	.L181
	leaq	.LC38(%rip), %rax
	jmp	.L182
.L181:
	leaq	.LC32(%rip), %rax
.L182:
	leaq	.LC32(%rip), %rcx
	movl	-52(%rbp), %edx
	leaq	.LC39(%rip), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, %r8
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L183
.L189:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_INTEGER_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L184
	leaq	.LC40(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L184:
	cmpq	$0, -24(%rbp)
	jne	.L185
	leaq	.LC41(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L186
.L185:
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_INTEGER@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L190
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	leaq	.LC12(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$490, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L186:
	addl	$1, -4(%rbp)
.L183:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_INTEGER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L189
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L180
	leaq	.LC31(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L180:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L179
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r8
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edi
	leaq	.LC32(%rip), %rcx
	movl	-52(%rbp), %edx
	leaq	.LC42(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L179
.L190:
	nop
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	print_notice, .-print_notice
	.section	.rodata
.LC43:
	.string	"Critical"
.LC44:
	.string	"Non Critical"
.LC45:
	.string	"%*s%s\n"
.LC46:
	.string	"%*sNo Qualifiers\n"
	.text
	.globl	X509_POLICY_NODE_print
	.type	X509_POLICY_NODE_print, @function
X509_POLICY_NODE_print:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC32(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC33(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	leaq	.LC31(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L192
	leaq	.LC43(%rip), %rax
	jmp	.L193
.L192:
	leaq	.LC44(%rip), %rax
.L193:
	movl	-36(%rbp), %edx
	addl	$2, %edx
	leaq	.LC32(%rip), %rcx
	leaq	.LC45(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, %r8
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L194
	movl	-36(%rbp), %eax
	leal	2(%rax), %edx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_qualifiers
	leaq	.LC31(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L196
.L194:
	movl	-36(%rbp), %eax
	leal	2(%rax), %edx
	leaq	.LC32(%rip), %rcx
	leaq	.LC46(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L196:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	X509_POLICY_NODE_print, .-X509_POLICY_NODE_print
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.9, @object
	.size	local_it.9, 56
local_it.9:
	.byte	0
	.zero	7
	.quad	-1
	.quad	CERTIFICATEPOLICIES_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.section	.rodata
.LC47:
	.string	"POLICYINFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.8, @object
	.size	local_it.8, 56
local_it.8:
	.byte	1
	.zero	7
	.quad	16
	.quad	POLICYINFO_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC47
	.align 32
	.type	internal_adb.7, @object
	.size	internal_adb.7, 56
internal_adb.7:
	.quad	0
	.quad	0
	.quad	0
	.quad	POLICYQUALINFO_adbtbl
	.quad	2
	.quad	policydefault_tt
	.quad	0
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	1
	.zero	7
	.quad	16
	.quad	POLICYQUALINFO_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC7
	.section	.rodata
.LC48:
	.string	"USERNOTICE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	1
	.zero	7
	.quad	16
	.quad	USERNOTICE_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC48
	.section	.rodata
.LC49:
	.string	"NOTICEREF"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	1
	.zero	7
	.quad	16
	.quad	NOTICEREF_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC49
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 12
__func__.3:
	.string	"r2i_certpol"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"policy_section"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"notice_section"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 9
__func__.0:
	.string	"nref_nos"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
