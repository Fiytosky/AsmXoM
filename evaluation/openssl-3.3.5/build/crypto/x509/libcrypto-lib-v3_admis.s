	.file	"v3_admis.c"
	.text
	.type	ossl_check_const_ASN1_OBJECT_sk_type, @function
ossl_check_const_ASN1_OBJECT_sk_type:
.LFB58:
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
.LFE58:
	.size	ossl_check_const_ASN1_OBJECT_sk_type, .-ossl_check_const_ASN1_OBJECT_sk_type
	.type	ossl_check_ASN1_OBJECT_sk_type, @function
ossl_check_ASN1_OBJECT_sk_type:
.LFB59:
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
.LFE59:
	.size	ossl_check_ASN1_OBJECT_sk_type, .-ossl_check_ASN1_OBJECT_sk_type
	.type	ossl_check_ASN1_OBJECT_freefunc_type, @function
ossl_check_ASN1_OBJECT_freefunc_type:
.LFB62:
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
.LFE62:
	.size	ossl_check_ASN1_OBJECT_freefunc_type, .-ossl_check_ASN1_OBJECT_freefunc_type
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
	.type	ossl_check_const_ASN1_STRING_sk_type, @function
ossl_check_const_ASN1_STRING_sk_type:
.LFB606:
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
.LFE606:
	.size	ossl_check_const_ASN1_STRING_sk_type, .-ossl_check_const_ASN1_STRING_sk_type
	.type	ossl_check_ASN1_STRING_sk_type, @function
ossl_check_ASN1_STRING_sk_type:
.LFB607:
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
.LFE607:
	.size	ossl_check_ASN1_STRING_sk_type, .-ossl_check_ASN1_STRING_sk_type
	.type	ossl_check_ASN1_STRING_freefunc_type, @function
ossl_check_ASN1_STRING_freefunc_type:
.LFB610:
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
.LFE610:
	.size	ossl_check_ASN1_STRING_freefunc_type, .-ossl_check_ASN1_STRING_freefunc_type
	.type	ossl_check_const_PROFESSION_INFO_sk_type, @function
ossl_check_const_PROFESSION_INFO_sk_type:
.LFB612:
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
.LFE612:
	.size	ossl_check_const_PROFESSION_INFO_sk_type, .-ossl_check_const_PROFESSION_INFO_sk_type
	.type	ossl_check_PROFESSION_INFO_sk_type, @function
ossl_check_PROFESSION_INFO_sk_type:
.LFB613:
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
.LFE613:
	.size	ossl_check_PROFESSION_INFO_sk_type, .-ossl_check_PROFESSION_INFO_sk_type
	.type	ossl_check_PROFESSION_INFO_freefunc_type, @function
ossl_check_PROFESSION_INFO_freefunc_type:
.LFB616:
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
.LFE616:
	.size	ossl_check_PROFESSION_INFO_freefunc_type, .-ossl_check_PROFESSION_INFO_freefunc_type
	.type	ossl_check_const_ADMISSIONS_sk_type, @function
ossl_check_const_ADMISSIONS_sk_type:
.LFB618:
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
.LFE618:
	.size	ossl_check_const_ADMISSIONS_sk_type, .-ossl_check_const_ADMISSIONS_sk_type
	.type	ossl_check_ADMISSIONS_sk_type, @function
ossl_check_ADMISSIONS_sk_type:
.LFB619:
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
.LFE619:
	.size	ossl_check_ADMISSIONS_sk_type, .-ossl_check_ADMISSIONS_sk_type
	.type	ossl_check_ADMISSIONS_freefunc_type, @function
ossl_check_ADMISSIONS_freefunc_type:
.LFB622:
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
.LFE622:
	.size	ossl_check_ADMISSIONS_freefunc_type, .-ossl_check_ADMISSIONS_freefunc_type
	.section	.rodata
.LC0:
	.string	"namingAuthorityId"
.LC1:
	.string	"namingAuthorityUrl"
.LC2:
	.string	"namingAuthorityText"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	NAMING_AUTHORITY_seq_tt, @object
	.size	NAMING_AUTHORITY_seq_tt, 120
NAMING_AUTHORITY_seq_tt:
	.quad	1
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OBJECT_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_IA5STRING_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	DIRECTORYSTRING_it
	.text
	.globl	NAMING_AUTHORITY_it
	.type	NAMING_AUTHORITY_it, @function
NAMING_AUTHORITY_it:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	NAMING_AUTHORITY_it, .-NAMING_AUTHORITY_it
	.section	.rodata
.LC3:
	.string	"namingAuthority"
.LC4:
	.string	"professionItems"
.LC5:
	.string	"professionOIDs"
.LC6:
	.string	"registrationNumber"
.LC7:
	.string	"addProfessionInfo"
	.section	.data.rel.ro
	.align 32
	.type	PROFESSION_INFO_seq_tt, @object
	.size	PROFESSION_INFO_seq_tt, 200
PROFESSION_INFO_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	NAMING_AUTHORITY_it
	.quad	4
	.quad	0
	.quad	8
	.quad	.LC4
	.quad	DIRECTORYSTRING_it
	.quad	5
	.quad	0
	.quad	16
	.quad	.LC5
	.quad	ASN1_OBJECT_it
	.quad	1
	.quad	0
	.quad	24
	.quad	.LC6
	.quad	ASN1_PRINTABLESTRING_it
	.quad	1
	.quad	0
	.quad	32
	.quad	.LC7
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	PROFESSION_INFO_it
	.type	PROFESSION_INFO_it, @function
PROFESSION_INFO_it:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	PROFESSION_INFO_it, .-PROFESSION_INFO_it
	.section	.rodata
.LC8:
	.string	"admissionAuthority"
.LC9:
	.string	"professionInfos"
	.section	.data.rel.ro
	.align 32
	.type	ADMISSIONS_seq_tt, @object
	.size	ADMISSIONS_seq_tt, 120
ADMISSIONS_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	GENERAL_NAME_it
	.quad	145
	.quad	1
	.quad	8
	.quad	.LC3
	.quad	NAMING_AUTHORITY_it
	.quad	4
	.quad	0
	.quad	16
	.quad	.LC9
	.quad	PROFESSION_INFO_it
	.text
	.globl	ADMISSIONS_it
	.type	ADMISSIONS_it, @function
ADMISSIONS_it:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	ADMISSIONS_it, .-ADMISSIONS_it
	.section	.rodata
.LC10:
	.string	"contentsOfAdmissions"
	.section	.data.rel.ro
	.align 32
	.type	ADMISSION_SYNTAX_seq_tt, @object
	.size	ADMISSION_SYNTAX_seq_tt, 80
ADMISSION_SYNTAX_seq_tt:
	.quad	1
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	GENERAL_NAME_it
	.quad	4
	.quad	0
	.quad	8
	.quad	.LC10
	.quad	ADMISSIONS_it
	.text
	.globl	ADMISSION_SYNTAX_it
	.type	ADMISSION_SYNTAX_it, @function
ADMISSION_SYNTAX_it:
.LFB626:
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
.LFE626:
	.size	ADMISSION_SYNTAX_it, .-ADMISSION_SYNTAX_it
	.globl	d2i_NAMING_AUTHORITY
	.type	d2i_NAMING_AUTHORITY, @function
d2i_NAMING_AUTHORITY:
.LFB627:
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
	call	NAMING_AUTHORITY_it@PLT
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
.LFE627:
	.size	d2i_NAMING_AUTHORITY, .-d2i_NAMING_AUTHORITY
	.globl	i2d_NAMING_AUTHORITY
	.type	i2d_NAMING_AUTHORITY, @function
i2d_NAMING_AUTHORITY:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	NAMING_AUTHORITY_it@PLT
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
.LFE628:
	.size	i2d_NAMING_AUTHORITY, .-i2d_NAMING_AUTHORITY
	.globl	NAMING_AUTHORITY_new
	.type	NAMING_AUTHORITY_new, @function
NAMING_AUTHORITY_new:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	NAMING_AUTHORITY_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	NAMING_AUTHORITY_new, .-NAMING_AUTHORITY_new
	.globl	NAMING_AUTHORITY_free
	.type	NAMING_AUTHORITY_free, @function
NAMING_AUTHORITY_free:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	NAMING_AUTHORITY_it@PLT
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
.LFE630:
	.size	NAMING_AUTHORITY_free, .-NAMING_AUTHORITY_free
	.globl	d2i_PROFESSION_INFO
	.type	d2i_PROFESSION_INFO, @function
d2i_PROFESSION_INFO:
.LFB631:
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
	call	PROFESSION_INFO_it@PLT
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
.LFE631:
	.size	d2i_PROFESSION_INFO, .-d2i_PROFESSION_INFO
	.globl	i2d_PROFESSION_INFO
	.type	i2d_PROFESSION_INFO, @function
i2d_PROFESSION_INFO:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PROFESSION_INFO_it@PLT
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
.LFE632:
	.size	i2d_PROFESSION_INFO, .-i2d_PROFESSION_INFO
	.globl	PROFESSION_INFO_new
	.type	PROFESSION_INFO_new, @function
PROFESSION_INFO_new:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PROFESSION_INFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	PROFESSION_INFO_new, .-PROFESSION_INFO_new
	.globl	PROFESSION_INFO_free
	.type	PROFESSION_INFO_free, @function
PROFESSION_INFO_free:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PROFESSION_INFO_it@PLT
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
.LFE634:
	.size	PROFESSION_INFO_free, .-PROFESSION_INFO_free
	.globl	d2i_ADMISSIONS
	.type	d2i_ADMISSIONS, @function
d2i_ADMISSIONS:
.LFB635:
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
	call	ADMISSIONS_it@PLT
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
.LFE635:
	.size	d2i_ADMISSIONS, .-d2i_ADMISSIONS
	.globl	i2d_ADMISSIONS
	.type	i2d_ADMISSIONS, @function
i2d_ADMISSIONS:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ADMISSIONS_it@PLT
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
.LFE636:
	.size	i2d_ADMISSIONS, .-i2d_ADMISSIONS
	.globl	ADMISSIONS_new
	.type	ADMISSIONS_new, @function
ADMISSIONS_new:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ADMISSIONS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	ADMISSIONS_new, .-ADMISSIONS_new
	.globl	ADMISSIONS_free
	.type	ADMISSIONS_free, @function
ADMISSIONS_free:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ADMISSIONS_it@PLT
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
.LFE638:
	.size	ADMISSIONS_free, .-ADMISSIONS_free
	.globl	d2i_ADMISSION_SYNTAX
	.type	d2i_ADMISSION_SYNTAX, @function
d2i_ADMISSION_SYNTAX:
.LFB639:
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
	call	ADMISSION_SYNTAX_it@PLT
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
.LFE639:
	.size	d2i_ADMISSION_SYNTAX, .-d2i_ADMISSION_SYNTAX
	.globl	i2d_ADMISSION_SYNTAX
	.type	i2d_ADMISSION_SYNTAX, @function
i2d_ADMISSION_SYNTAX:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ADMISSION_SYNTAX_it@PLT
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
.LFE640:
	.size	i2d_ADMISSION_SYNTAX, .-i2d_ADMISSION_SYNTAX
	.globl	ADMISSION_SYNTAX_new
	.type	ADMISSION_SYNTAX_new, @function
ADMISSION_SYNTAX_new:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ADMISSION_SYNTAX_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ADMISSION_SYNTAX_new, .-ADMISSION_SYNTAX_new
	.globl	ADMISSION_SYNTAX_free
	.type	ADMISSION_SYNTAX_free, @function
ADMISSION_SYNTAX_free:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ADMISSION_SYNTAX_it@PLT
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
.LFE642:
	.size	ADMISSION_SYNTAX_free, .-ADMISSION_SYNTAX_free
	.globl	ossl_v3_ext_admission
	.section	.data.rel.ro
	.align 32
	.type	ossl_v3_ext_admission, @object
	.size	ossl_v3_ext_admission, 104
ossl_v3_ext_admission:
	.long	1093
	.long	0
	.quad	ADMISSION_SYNTAX_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_ADMISSION_SYNTAX
	.quad	0
	.quad	0
	.section	.rodata
.LC11:
	.string	""
.LC12:
	.string	"%*snamingAuthority:\n"
.LC13:
	.string	"%*s  namingAuthorityId: "
.LC14:
	.string	")"
.LC15:
	.string	" ("
.LC16:
	.string	"%s%s%s%s\n"
.LC17:
	.string	"%*s  namingAuthorityText: "
.LC18:
	.string	"\n"
.LC19:
	.string	"%*s  namingAuthorityUrl: "
	.text
	.type	i2r_NAMING_AUTHORITY, @function
i2r_NAMING_AUTHORITY:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movl	%ecx, -172(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movl	$0, %eax
	jmp	.L67
.L68:
	leaq	.LC11(%rip), %rcx
	movl	-172(%rbp), %edx
	leaq	.LC12(%rip), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L85
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC11(%rip), %rcx
	movl	-172(%rbp), %edx
	leaq	.LC13(%rip), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L86
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-144(%rbp), %rax
	movl	$1, %ecx
	movl	$128, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	cmpq	$0, -16(%rbp)
	je	.L74
	leaq	.LC14(%rip), %rcx
	jmp	.L75
.L74:
	leaq	.LC11(%rip), %rcx
.L75:
	cmpq	$0, -16(%rbp)
	je	.L76
	leaq	.LC15(%rip), %rdx
	jmp	.L77
.L76:
	leaq	.LC11(%rip), %rdx
.L77:
	cmpq	$0, -16(%rbp)
	je	.L78
	movq	-16(%rbp), %rax
	jmp	.L79
.L78:
	leaq	.LC11(%rip), %rax
.L79:
	leaq	-144(%rbp), %r8
	leaq	.LC16(%rip), %rsi
	movq	-168(%rbp), %rdi
	movq	%rcx, %r9
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L87
.L71:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L81
	leaq	.LC11(%rip), %rcx
	movl	-172(%rbp), %edx
	leaq	.LC17(%rip), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L88
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print@PLT
	testl	%eax, %eax
	jle	.L88
	leaq	.LC18(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L88
.L81:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L83
	leaq	.LC11(%rip), %rcx
	movl	-172(%rbp), %edx
	leaq	.LC19(%rip), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L89
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print@PLT
	testl	%eax, %eax
	jle	.L89
	leaq	.LC18(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L89
.L83:
	movl	$1, %eax
	jmp	.L67
.L85:
	nop
	jmp	.L70
.L86:
	nop
	jmp	.L70
.L87:
	nop
	jmp	.L70
.L88:
	nop
	jmp	.L70
.L89:
	nop
.L70:
	movl	$0, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	i2r_NAMING_AUTHORITY, .-i2r_NAMING_AUTHORITY
	.section	.rodata
.LC20:
	.string	"%*sadmissionAuthority:\n"
.LC21:
	.string	"%*s  "
.LC22:
	.string	"%*sEntry %0d:\n"
.LC23:
	.string	"%*s  admissionAuthority:\n"
.LC24:
	.string	"%*s    "
	.align 8
.LC25:
	.string	"%*s  Profession Info Entry %0d:\n"
.LC26:
	.string	"%*s    registrationNumber: "
.LC27:
	.string	"%*s    Info Entries:\n"
.LC28:
	.string	"%*s      "
.LC29:
	.string	"%*s    Profession OIDs:\n"
.LC30:
	.string	"%*s      %s%s%s%s\n"
	.text
	.type	i2r_ADMISSION_SYNTAX, @function
i2r_ADMISSION_SYNTAX:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movl	%ecx, -220(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L91
	leaq	.LC11(%rip), %rcx
	movl	-220(%rbp), %edx
	leaq	.LC20(%rip), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L124
	leaq	.LC11(%rip), %rcx
	movl	-220(%rbp), %edx
	leaq	.LC21(%rip), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L124
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GENERAL_NAME_print@PLT
	testl	%eax, %eax
	jle	.L124
	leaq	.LC18(%rip), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L124
.L91:
	movl	$0, -4(%rbp)
	jmp	.L94
.L122:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ADMISSIONS_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edi
	leaq	.LC11(%rip), %rcx
	movl	-220(%rbp), %edx
	leaq	.LC22(%rip), %rsi
	movq	-216(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L125
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L96
	leaq	.LC11(%rip), %rcx
	movl	-220(%rbp), %edx
	leaq	.LC23(%rip), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L126
	leaq	.LC11(%rip), %rcx
	movl	-220(%rbp), %edx
	leaq	.LC24(%rip), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L126
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GENERAL_NAME_print@PLT
	testl	%eax, %eax
	jle	.L126
	leaq	.LC18(%rip), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L126
.L96:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L98
	movl	-220(%rbp), %eax
	leal	2(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-216(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	i2r_NAMING_AUTHORITY
	testl	%eax, %eax
	jle	.L127
.L98:
	movl	$0, -8(%rbp)
	jmp	.L99
.L121:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PROFESSION_INFO_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movl	-8(%rbp), %eax
	leal	1(%rax), %edi
	leaq	.LC11(%rip), %rcx
	movl	-220(%rbp), %edx
	leaq	.LC25(%rip), %rsi
	movq	-216(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L128
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L101
	leaq	.LC11(%rip), %rcx
	movl	-220(%rbp), %edx
	leaq	.LC26(%rip), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L129
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print@PLT
	testl	%eax, %eax
	jle	.L129
	leaq	.LC18(%rip), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L129
.L101:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movl	-220(%rbp), %eax
	leal	4(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-216(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	i2r_NAMING_AUTHORITY
	testl	%eax, %eax
	jle	.L130
.L103:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L104
	leaq	.LC11(%rip), %rcx
	movl	-220(%rbp), %edx
	leaq	.LC27(%rip), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L131
	movl	$0, -12(%rbp)
	jmp	.L106
.L109:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_STRING_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC11(%rip), %rcx
	movl	-220(%rbp), %edx
	leaq	.LC28(%rip), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L132
	movq	-48(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print@PLT
	testl	%eax, %eax
	jle	.L132
	leaq	.LC18(%rip), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L132
	addl	$1, -12(%rbp)
.L106:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L109
.L104:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L110
	leaq	.LC11(%rip), %rcx
	movl	-220(%rbp), %edx
	leaq	.LC29(%rip), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L133
	movl	$0, -12(%rbp)
	jmp	.L112
.L120:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movl	$1, %ecx
	movl	$128, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	cmpq	$0, -64(%rbp)
	je	.L113
	leaq	.LC14(%rip), %rax
	jmp	.L114
.L113:
	leaq	.LC11(%rip), %rax
.L114:
	cmpq	$0, -64(%rbp)
	je	.L115
	leaq	.LC15(%rip), %rcx
	jmp	.L116
.L115:
	leaq	.LC11(%rip), %rcx
.L116:
	cmpq	$0, -64(%rbp)
	je	.L117
	movq	-64(%rbp), %rdx
	jmp	.L118
.L117:
	leaq	.LC11(%rip), %rdx
.L118:
	leaq	.LC11(%rip), %r11
	movl	-220(%rbp), %esi
	leaq	.LC30(%rip), %r10
	movq	-216(%rbp), %rdi
	pushq	%rax
	leaq	-192(%rbp), %rax
	pushq	%rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%r11, %rcx
	movl	%esi, %edx
	movq	%r10, %rsi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jle	.L134
	addl	$1, -12(%rbp)
.L112:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L120
.L110:
	addl	$1, -8(%rbp)
.L99:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PROFESSION_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L121
	addl	$1, -4(%rbp)
.L94:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ADMISSIONS_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L122
	movl	$1, %eax
	jmp	.L123
.L124:
	nop
	jmp	.L93
.L125:
	nop
	jmp	.L93
.L126:
	nop
	jmp	.L93
.L127:
	nop
	jmp	.L93
.L128:
	nop
	jmp	.L93
.L129:
	nop
	jmp	.L93
.L130:
	nop
	jmp	.L93
.L131:
	nop
	jmp	.L93
.L132:
	nop
	jmp	.L93
.L133:
	nop
	jmp	.L93
.L134:
	nop
.L93:
	movl	$0, %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	i2r_ADMISSION_SYNTAX, .-i2r_ADMISSION_SYNTAX
	.globl	NAMING_AUTHORITY_get0_authorityId
	.type	NAMING_AUTHORITY_get0_authorityId, @function
NAMING_AUTHORITY_get0_authorityId:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	NAMING_AUTHORITY_get0_authorityId, .-NAMING_AUTHORITY_get0_authorityId
	.globl	NAMING_AUTHORITY_set0_authorityId
	.type	NAMING_AUTHORITY_set0_authorityId, @function
NAMING_AUTHORITY_set0_authorityId:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	NAMING_AUTHORITY_set0_authorityId, .-NAMING_AUTHORITY_set0_authorityId
	.globl	NAMING_AUTHORITY_get0_authorityURL
	.type	NAMING_AUTHORITY_get0_authorityURL, @function
NAMING_AUTHORITY_get0_authorityURL:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	NAMING_AUTHORITY_get0_authorityURL, .-NAMING_AUTHORITY_get0_authorityURL
	.globl	NAMING_AUTHORITY_set0_authorityURL
	.type	NAMING_AUTHORITY_set0_authorityURL, @function
NAMING_AUTHORITY_set0_authorityURL:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_IA5STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	NAMING_AUTHORITY_set0_authorityURL, .-NAMING_AUTHORITY_set0_authorityURL
	.globl	NAMING_AUTHORITY_get0_authorityText
	.type	NAMING_AUTHORITY_get0_authorityText, @function
NAMING_AUTHORITY_get0_authorityText:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	NAMING_AUTHORITY_get0_authorityText, .-NAMING_AUTHORITY_get0_authorityText
	.globl	NAMING_AUTHORITY_set0_authorityText
	.type	NAMING_AUTHORITY_set0_authorityText, @function
NAMING_AUTHORITY_set0_authorityText:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_IA5STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	NAMING_AUTHORITY_set0_authorityText, .-NAMING_AUTHORITY_set0_authorityText
	.globl	ADMISSION_SYNTAX_get0_admissionAuthority
	.type	ADMISSION_SYNTAX_get0_admissionAuthority, @function
ADMISSION_SYNTAX_get0_admissionAuthority:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	ADMISSION_SYNTAX_get0_admissionAuthority, .-ADMISSION_SYNTAX_get0_admissionAuthority
	.globl	ADMISSION_SYNTAX_set0_admissionAuthority
	.type	ADMISSION_SYNTAX_set0_admissionAuthority, @function
ADMISSION_SYNTAX_set0_admissionAuthority:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	ADMISSION_SYNTAX_set0_admissionAuthority, .-ADMISSION_SYNTAX_set0_admissionAuthority
	.globl	ADMISSION_SYNTAX_get0_contentsOfAdmissions
	.type	ADMISSION_SYNTAX_get0_contentsOfAdmissions, @function
ADMISSION_SYNTAX_get0_contentsOfAdmissions:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	ADMISSION_SYNTAX_get0_contentsOfAdmissions, .-ADMISSION_SYNTAX_get0_contentsOfAdmissions
	.globl	ADMISSION_SYNTAX_set0_contentsOfAdmissions
	.type	ADMISSION_SYNTAX_set0_contentsOfAdmissions, @function
ADMISSION_SYNTAX_set0_contentsOfAdmissions:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	ADMISSIONS_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ADMISSIONS_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ADMISSIONS_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	ADMISSION_SYNTAX_set0_contentsOfAdmissions, .-ADMISSION_SYNTAX_set0_contentsOfAdmissions
	.globl	ADMISSIONS_get0_admissionAuthority
	.type	ADMISSIONS_get0_admissionAuthority, @function
ADMISSIONS_get0_admissionAuthority:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	ADMISSIONS_get0_admissionAuthority, .-ADMISSIONS_get0_admissionAuthority
	.globl	ADMISSIONS_set0_admissionAuthority
	.type	ADMISSIONS_set0_admissionAuthority, @function
ADMISSIONS_set0_admissionAuthority:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	ADMISSIONS_set0_admissionAuthority, .-ADMISSIONS_set0_admissionAuthority
	.globl	ADMISSIONS_get0_namingAuthority
	.type	ADMISSIONS_get0_namingAuthority, @function
ADMISSIONS_get0_namingAuthority:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	ADMISSIONS_get0_namingAuthority, .-ADMISSIONS_get0_namingAuthority
	.globl	ADMISSIONS_set0_namingAuthority
	.type	ADMISSIONS_set0_namingAuthority, @function
ADMISSIONS_set0_namingAuthority:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	NAMING_AUTHORITY_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	ADMISSIONS_set0_namingAuthority, .-ADMISSIONS_set0_namingAuthority
	.globl	ADMISSIONS_get0_professionInfos
	.type	ADMISSIONS_get0_professionInfos, @function
ADMISSIONS_get0_professionInfos:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	ADMISSIONS_get0_professionInfos, .-ADMISSIONS_get0_professionInfos
	.globl	ADMISSIONS_set0_professionInfos
	.type	ADMISSIONS_set0_professionInfos, @function
ADMISSIONS_set0_professionInfos:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	PROFESSION_INFO_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PROFESSION_INFO_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_PROFESSION_INFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	ADMISSIONS_set0_professionInfos, .-ADMISSIONS_set0_professionInfos
	.globl	PROFESSION_INFO_get0_addProfessionInfo
	.type	PROFESSION_INFO_get0_addProfessionInfo, @function
PROFESSION_INFO_get0_addProfessionInfo:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	PROFESSION_INFO_get0_addProfessionInfo, .-PROFESSION_INFO_get0_addProfessionInfo
	.globl	PROFESSION_INFO_set0_addProfessionInfo
	.type	PROFESSION_INFO_set0_addProfessionInfo, @function
PROFESSION_INFO_set0_addProfessionInfo:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	PROFESSION_INFO_set0_addProfessionInfo, .-PROFESSION_INFO_set0_addProfessionInfo
	.globl	PROFESSION_INFO_get0_namingAuthority
	.type	PROFESSION_INFO_get0_namingAuthority, @function
PROFESSION_INFO_get0_namingAuthority:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	PROFESSION_INFO_get0_namingAuthority, .-PROFESSION_INFO_get0_namingAuthority
	.globl	PROFESSION_INFO_set0_namingAuthority
	.type	PROFESSION_INFO_set0_namingAuthority, @function
PROFESSION_INFO_set0_namingAuthority:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	NAMING_AUTHORITY_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	PROFESSION_INFO_set0_namingAuthority, .-PROFESSION_INFO_set0_namingAuthority
	.globl	PROFESSION_INFO_get0_professionItems
	.type	PROFESSION_INFO_get0_professionItems, @function
PROFESSION_INFO_get0_professionItems:
.LFB665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	PROFESSION_INFO_get0_professionItems, .-PROFESSION_INFO_get0_professionItems
	.globl	PROFESSION_INFO_set0_professionItems
	.type	PROFESSION_INFO_set0_professionItems, @function
PROFESSION_INFO_set0_professionItems:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	ASN1_STRING_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_STRING_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	PROFESSION_INFO_set0_professionItems, .-PROFESSION_INFO_set0_professionItems
	.globl	PROFESSION_INFO_get0_professionOIDs
	.type	PROFESSION_INFO_get0_professionOIDs, @function
PROFESSION_INFO_get0_professionOIDs:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	PROFESSION_INFO_get0_professionOIDs, .-PROFESSION_INFO_get0_professionOIDs
	.globl	PROFESSION_INFO_set0_professionOIDs
	.type	PROFESSION_INFO_set0_professionOIDs, @function
PROFESSION_INFO_set0_professionOIDs:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	ASN1_OBJECT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	PROFESSION_INFO_set0_professionOIDs, .-PROFESSION_INFO_set0_professionOIDs
	.globl	PROFESSION_INFO_get0_registrationNumber
	.type	PROFESSION_INFO_get0_registrationNumber, @function
PROFESSION_INFO_get0_registrationNumber:
.LFB669:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	PROFESSION_INFO_get0_registrationNumber, .-PROFESSION_INFO_get0_registrationNumber
	.globl	PROFESSION_INFO_set0_registrationNumber
	.type	PROFESSION_INFO_set0_registrationNumber, @function
PROFESSION_INFO_set0_registrationNumber:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_PRINTABLESTRING_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	PROFESSION_INFO_set0_registrationNumber, .-PROFESSION_INFO_set0_registrationNumber
	.section	.rodata
.LC31:
	.string	"NAMING_AUTHORITY"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	NAMING_AUTHORITY_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC31
	.section	.rodata
.LC32:
	.string	"PROFESSION_INFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	PROFESSION_INFO_seq_tt
	.quad	5
	.quad	0
	.quad	40
	.quad	.LC32
	.section	.rodata
.LC33:
	.string	"ADMISSIONS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	ADMISSIONS_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC33
	.section	.rodata
.LC34:
	.string	"ADMISSION_SYNTAX"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	ADMISSION_SYNTAX_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC34
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
