	.file	"v3_genn.c"
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
	.string	"type_id"
.LC1:
	.string	"value"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	OTHERNAME_seq_tt, @object
	.size	OTHERNAME_seq_tt, 80
OTHERNAME_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OBJECT_it
	.quad	144
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_ANY_it
	.text
	.globl	OTHERNAME_it
	.type	OTHERNAME_it, @function
OTHERNAME_it:
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
	.size	OTHERNAME_it, .-OTHERNAME_it
	.globl	d2i_OTHERNAME
	.type	d2i_OTHERNAME, @function
d2i_OTHERNAME:
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
	call	OTHERNAME_it@PLT
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
	.size	d2i_OTHERNAME, .-d2i_OTHERNAME
	.globl	i2d_OTHERNAME
	.type	i2d_OTHERNAME, @function
i2d_OTHERNAME:
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
	call	OTHERNAME_it@PLT
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
	.size	i2d_OTHERNAME, .-i2d_OTHERNAME
	.globl	OTHERNAME_new
	.type	OTHERNAME_new, @function
OTHERNAME_new:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OTHERNAME_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	OTHERNAME_new, .-OTHERNAME_new
	.globl	OTHERNAME_free
	.type	OTHERNAME_free, @function
OTHERNAME_free:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	OTHERNAME_it@PLT
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
	.size	OTHERNAME_free, .-OTHERNAME_free
	.section	.rodata
.LC2:
	.string	"nameAssigner"
.LC3:
	.string	"partyName"
	.section	.data.rel.ro
	.align 32
	.type	EDIPARTYNAME_seq_tt, @object
	.size	EDIPARTYNAME_seq_tt, 80
EDIPARTYNAME_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	DIRECTORYSTRING_it
	.quad	144
	.quad	1
	.quad	8
	.quad	.LC3
	.quad	DIRECTORYSTRING_it
	.text
	.globl	EDIPARTYNAME_it
	.type	EDIPARTYNAME_it, @function
EDIPARTYNAME_it:
.LFB628:
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
.LFE628:
	.size	EDIPARTYNAME_it, .-EDIPARTYNAME_it
	.globl	d2i_EDIPARTYNAME
	.type	d2i_EDIPARTYNAME, @function
d2i_EDIPARTYNAME:
.LFB629:
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
	call	EDIPARTYNAME_it@PLT
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
.LFE629:
	.size	d2i_EDIPARTYNAME, .-d2i_EDIPARTYNAME
	.globl	i2d_EDIPARTYNAME
	.type	i2d_EDIPARTYNAME, @function
i2d_EDIPARTYNAME:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	EDIPARTYNAME_it@PLT
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
.LFE630:
	.size	i2d_EDIPARTYNAME, .-i2d_EDIPARTYNAME
	.globl	EDIPARTYNAME_new
	.type	EDIPARTYNAME_new, @function
EDIPARTYNAME_new:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	EDIPARTYNAME_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	EDIPARTYNAME_new, .-EDIPARTYNAME_new
	.globl	EDIPARTYNAME_free
	.type	EDIPARTYNAME_free, @function
EDIPARTYNAME_free:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	EDIPARTYNAME_it@PLT
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
.LFE632:
	.size	EDIPARTYNAME_free, .-EDIPARTYNAME_free
	.section	.rodata
.LC4:
	.string	"d.otherName"
.LC5:
	.string	"d.rfc822Name"
.LC6:
	.string	"d.dNSName"
.LC7:
	.string	"d.x400Address"
.LC8:
	.string	"d.directoryName"
.LC9:
	.string	"d.ediPartyName"
.LC10:
	.string	"d.uniformResourceIdentifier"
.LC11:
	.string	"d.iPAddress"
.LC12:
	.string	"d.registeredID"
	.section	.data.rel.ro
	.align 32
	.type	GENERAL_NAME_ch_tt, @object
	.size	GENERAL_NAME_ch_tt, 360
GENERAL_NAME_ch_tt:
	.quad	136
	.quad	0
	.quad	8
	.quad	.LC4
	.quad	OTHERNAME_it
	.quad	136
	.quad	1
	.quad	8
	.quad	.LC5
	.quad	ASN1_IA5STRING_it
	.quad	136
	.quad	2
	.quad	8
	.quad	.LC6
	.quad	ASN1_IA5STRING_it
	.quad	136
	.quad	3
	.quad	8
	.quad	.LC7
	.quad	ASN1_SEQUENCE_it
	.quad	144
	.quad	4
	.quad	8
	.quad	.LC8
	.quad	X509_NAME_it
	.quad	136
	.quad	5
	.quad	8
	.quad	.LC9
	.quad	EDIPARTYNAME_it
	.quad	136
	.quad	6
	.quad	8
	.quad	.LC10
	.quad	ASN1_IA5STRING_it
	.quad	136
	.quad	7
	.quad	8
	.quad	.LC11
	.quad	ASN1_OCTET_STRING_it
	.quad	136
	.quad	8
	.quad	8
	.quad	.LC12
	.quad	ASN1_OBJECT_it
	.text
	.globl	GENERAL_NAME_it
	.type	GENERAL_NAME_it, @function
GENERAL_NAME_it:
.LFB633:
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
.LFE633:
	.size	GENERAL_NAME_it, .-GENERAL_NAME_it
	.globl	d2i_GENERAL_NAME
	.type	d2i_GENERAL_NAME, @function
d2i_GENERAL_NAME:
.LFB634:
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
	call	GENERAL_NAME_it@PLT
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
.LFE634:
	.size	d2i_GENERAL_NAME, .-d2i_GENERAL_NAME
	.globl	i2d_GENERAL_NAME
	.type	i2d_GENERAL_NAME, @function
i2d_GENERAL_NAME:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	GENERAL_NAME_it@PLT
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
.LFE635:
	.size	i2d_GENERAL_NAME, .-i2d_GENERAL_NAME
	.globl	GENERAL_NAME_new
	.type	GENERAL_NAME_new, @function
GENERAL_NAME_new:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	GENERAL_NAME_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	GENERAL_NAME_new, .-GENERAL_NAME_new
	.globl	GENERAL_NAME_free
	.type	GENERAL_NAME_free, @function
GENERAL_NAME_free:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	GENERAL_NAME_it@PLT
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
.LFE637:
	.size	GENERAL_NAME_free, .-GENERAL_NAME_free
	.section	.rodata
.LC13:
	.string	"GeneralNames"
	.section	.data.rel.ro
	.align 32
	.type	GENERAL_NAMES_item_tt, @object
	.size	GENERAL_NAMES_item_tt, 40
GENERAL_NAMES_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC13
	.quad	GENERAL_NAME_it
	.text
	.globl	GENERAL_NAMES_it
	.type	GENERAL_NAMES_it, @function
GENERAL_NAMES_it:
.LFB638:
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
.LFE638:
	.size	GENERAL_NAMES_it, .-GENERAL_NAMES_it
	.globl	d2i_GENERAL_NAMES
	.type	d2i_GENERAL_NAMES, @function
d2i_GENERAL_NAMES:
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
	call	GENERAL_NAMES_it@PLT
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
	.size	d2i_GENERAL_NAMES, .-d2i_GENERAL_NAMES
	.globl	i2d_GENERAL_NAMES
	.type	i2d_GENERAL_NAMES, @function
i2d_GENERAL_NAMES:
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
	call	GENERAL_NAMES_it@PLT
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
	.size	i2d_GENERAL_NAMES, .-i2d_GENERAL_NAMES
	.globl	GENERAL_NAMES_new
	.type	GENERAL_NAMES_new, @function
GENERAL_NAMES_new:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	GENERAL_NAMES_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	GENERAL_NAMES_new, .-GENERAL_NAMES_new
	.globl	GENERAL_NAMES_free
	.type	GENERAL_NAMES_free, @function
GENERAL_NAMES_free:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	GENERAL_NAMES_it@PLT
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
	.size	GENERAL_NAMES_free, .-GENERAL_NAMES_free
	.globl	GENERAL_NAME_dup
	.type	GENERAL_NAME_dup, @function
GENERAL_NAME_dup:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	d2i_GENERAL_NAME@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	i2d_GENERAL_NAME@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ASN1_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	GENERAL_NAME_dup, .-GENERAL_NAME_dup
	.type	edipartyname_cmp, @function
edipartyname_cmp:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L44
	cmpq	$0, -32(%rbp)
	jne	.L45
.L44:
	movl	$-1, %eax
	jmp	.L46
.L45:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L47
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movl	$-1, %eax
	jmp	.L46
.L47:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L48
	movl	$1, %eax
	jmp	.L46
.L48:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L49
	movl	-4(%rbp), %eax
	jmp	.L46
.L49:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L51
.L50:
	movl	$-1, %eax
	jmp	.L46
.L51:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	edipartyname_cmp, .-edipartyname_cmp
	.globl	GENERAL_NAME_cmp
	.type	GENERAL_NAME_cmp, @function
GENERAL_NAME_cmp:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L53
	cmpq	$0, -32(%rbp)
	je	.L53
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L54
.L53:
	movl	$-1, %eax
	jmp	.L55
.L54:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	je	.L56
	cmpl	$8, %eax
	jg	.L57
	cmpl	$7, %eax
	je	.L58
	cmpl	$7, %eax
	jg	.L57
	cmpl	$6, %eax
	je	.L59
	cmpl	$6, %eax
	jg	.L57
	cmpl	$5, %eax
	je	.L60
	cmpl	$5, %eax
	jg	.L57
	cmpl	$4, %eax
	je	.L61
	cmpl	$4, %eax
	jg	.L57
	cmpl	$3, %eax
	je	.L62
	cmpl	$3, %eax
	jg	.L57
	testl	%eax, %eax
	je	.L63
	testl	%eax, %eax
	js	.L57
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L57
	jmp	.L59
.L62:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	movl	%eax, -4(%rbp)
	jmp	.L57
.L60:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	edipartyname_cmp
	movl	%eax, -4(%rbp)
	jmp	.L57
.L63:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OTHERNAME_cmp@PLT
	movl	%eax, -4(%rbp)
	jmp	.L57
.L59:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	movl	%eax, -4(%rbp)
	jmp	.L57
.L61:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	movl	%eax, -4(%rbp)
	jmp	.L57
.L58:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	movl	%eax, -4(%rbp)
	jmp	.L57
.L56:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	movl	%eax, -4(%rbp)
	nop
.L57:
	movl	-4(%rbp), %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	GENERAL_NAME_cmp, .-GENERAL_NAME_cmp
	.globl	OTHERNAME_cmp
	.type	OTHERNAME_cmp, @function
OTHERNAME_cmp:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L65
	cmpq	$0, -32(%rbp)
	jne	.L66
.L65:
	movl	$-1, %eax
	jmp	.L67
.L66:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L68
	movl	-4(%rbp), %eax
	jmp	.L67
.L68:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TYPE_cmp@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	OTHERNAME_cmp, .-OTHERNAME_cmp
	.globl	GENERAL_NAME_set0_value
	.type	GENERAL_NAME_set0_value, @function
GENERAL_NAME_set0_value:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$8, -12(%rbp)
	je	.L70
	cmpl	$8, -12(%rbp)
	jg	.L71
	cmpl	$7, -12(%rbp)
	je	.L72
	cmpl	$7, -12(%rbp)
	jg	.L71
	cmpl	$6, -12(%rbp)
	je	.L73
	cmpl	$6, -12(%rbp)
	jg	.L71
	cmpl	$5, -12(%rbp)
	je	.L74
	cmpl	$5, -12(%rbp)
	jg	.L71
	cmpl	$4, -12(%rbp)
	je	.L75
	cmpl	$4, -12(%rbp)
	jg	.L71
	cmpl	$3, -12(%rbp)
	je	.L76
	cmpl	$3, -12(%rbp)
	jg	.L71
	cmpl	$0, -12(%rbp)
	je	.L77
	cmpl	$0, -12(%rbp)
	js	.L71
	movl	-12(%rbp), %eax
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L71
	jmp	.L73
.L76:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L71
.L74:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L71
.L77:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L71
.L73:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L71
.L75:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L71
.L72:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L71
.L70:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
.L71:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	GENERAL_NAME_set0_value, .-GENERAL_NAME_set0_value
	.globl	GENERAL_NAME_get0_value
	.type	GENERAL_NAME_get0_value, @function
GENERAL_NAME_get0_value:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L79
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L79:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	je	.L80
	cmpl	$8, %eax
	jg	.L81
	cmpl	$7, %eax
	je	.L82
	cmpl	$7, %eax
	jg	.L81
	cmpl	$6, %eax
	je	.L83
	cmpl	$6, %eax
	jg	.L81
	cmpl	$5, %eax
	je	.L84
	cmpl	$5, %eax
	jg	.L81
	cmpl	$4, %eax
	je	.L85
	cmpl	$4, %eax
	jg	.L81
	cmpl	$3, %eax
	je	.L86
	cmpl	$3, %eax
	jg	.L81
	testl	%eax, %eax
	je	.L87
	testl	%eax, %eax
	js	.L81
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L81
	jmp	.L83
.L86:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L88
.L84:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L88
.L87:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L88
.L83:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L88
.L85:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L88
.L82:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L88
.L80:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L88
.L81:
	movl	$0, %eax
.L88:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	GENERAL_NAME_get0_value, .-GENERAL_NAME_get0_value
	.globl	GENERAL_NAME_set0_othername
	.type	GENERAL_NAME_set0_othername, @function
GENERAL_NAME_set0_othername:
.LFB649:
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
	call	OTHERNAME_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	GENERAL_NAME_set0_value@PLT
	movl	$1, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	GENERAL_NAME_set0_othername, .-GENERAL_NAME_set0_othername
	.globl	GENERAL_NAME_get0_otherName
	.type	GENERAL_NAME_get0_otherName, @function
GENERAL_NAME_get0_otherName:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L93
	movl	$0, %eax
	jmp	.L94
.L93:
	cmpq	$0, -16(%rbp)
	je	.L95
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L95:
	cmpq	$0, -24(%rbp)
	je	.L96
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L96:
	movl	$1, %eax
.L94:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	GENERAL_NAME_get0_otherName, .-GENERAL_NAME_get0_otherName
	.section	.rodata
.LC14:
	.string	"OTHERNAME"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	OTHERNAME_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC14
	.section	.rodata
.LC15:
	.string	"EDIPARTYNAME"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	EDIPARTYNAME_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC15
	.section	.rodata
.LC16:
	.string	"GENERAL_NAME"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	2
	.zero	7
	.quad	0
	.quad	GENERAL_NAME_ch_tt
	.quad	9
	.quad	0
	.quad	16
	.quad	.LC16
	.section	.rodata
.LC17:
	.string	"GENERAL_NAMES"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	0
	.zero	7
	.quad	-1
	.quad	GENERAL_NAMES_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC17
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
