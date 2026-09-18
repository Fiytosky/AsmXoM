	.file	"x_spki.c"
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
	.string	"pubkey"
.LC1:
	.string	"challenge"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	NETSCAPE_SPKAC_seq_tt, @object
	.size	NETSCAPE_SPKAC_seq_tt, 80
NETSCAPE_SPKAC_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	X509_PUBKEY_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_IA5STRING_it
	.text
	.globl	NETSCAPE_SPKAC_it
	.type	NETSCAPE_SPKAC_it, @function
NETSCAPE_SPKAC_it:
.LFB515:
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
.LFE515:
	.size	NETSCAPE_SPKAC_it, .-NETSCAPE_SPKAC_it
	.globl	d2i_NETSCAPE_SPKAC
	.type	d2i_NETSCAPE_SPKAC, @function
d2i_NETSCAPE_SPKAC:
.LFB516:
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
	call	NETSCAPE_SPKAC_it@PLT
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
.LFE516:
	.size	d2i_NETSCAPE_SPKAC, .-d2i_NETSCAPE_SPKAC
	.globl	i2d_NETSCAPE_SPKAC
	.type	i2d_NETSCAPE_SPKAC, @function
i2d_NETSCAPE_SPKAC:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	NETSCAPE_SPKAC_it@PLT
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
.LFE517:
	.size	i2d_NETSCAPE_SPKAC, .-i2d_NETSCAPE_SPKAC
	.globl	NETSCAPE_SPKAC_new
	.type	NETSCAPE_SPKAC_new, @function
NETSCAPE_SPKAC_new:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	NETSCAPE_SPKAC_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	NETSCAPE_SPKAC_new, .-NETSCAPE_SPKAC_new
	.globl	NETSCAPE_SPKAC_free
	.type	NETSCAPE_SPKAC_free, @function
NETSCAPE_SPKAC_free:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	NETSCAPE_SPKAC_it@PLT
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
.LFE519:
	.size	NETSCAPE_SPKAC_free, .-NETSCAPE_SPKAC_free
	.section	.rodata
.LC2:
	.string	"spkac"
.LC3:
	.string	"sig_algor"
.LC4:
	.string	"signature"
	.section	.data.rel.ro
	.align 32
	.type	NETSCAPE_SPKI_seq_tt, @object
	.size	NETSCAPE_SPKI_seq_tt, 120
NETSCAPE_SPKI_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	NETSCAPE_SPKAC_it
	.quad	4096
	.quad	0
	.quad	8
	.quad	.LC3
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC4
	.quad	ASN1_BIT_STRING_it
	.text
	.globl	NETSCAPE_SPKI_it
	.type	NETSCAPE_SPKI_it, @function
NETSCAPE_SPKI_it:
.LFB520:
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
.LFE520:
	.size	NETSCAPE_SPKI_it, .-NETSCAPE_SPKI_it
	.globl	d2i_NETSCAPE_SPKI
	.type	d2i_NETSCAPE_SPKI, @function
d2i_NETSCAPE_SPKI:
.LFB521:
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
	call	NETSCAPE_SPKI_it@PLT
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
.LFE521:
	.size	d2i_NETSCAPE_SPKI, .-d2i_NETSCAPE_SPKI
	.globl	i2d_NETSCAPE_SPKI
	.type	i2d_NETSCAPE_SPKI, @function
i2d_NETSCAPE_SPKI:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	NETSCAPE_SPKI_it@PLT
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
.LFE522:
	.size	i2d_NETSCAPE_SPKI, .-i2d_NETSCAPE_SPKI
	.globl	NETSCAPE_SPKI_new
	.type	NETSCAPE_SPKI_new, @function
NETSCAPE_SPKI_new:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	NETSCAPE_SPKI_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	NETSCAPE_SPKI_new, .-NETSCAPE_SPKI_new
	.globl	NETSCAPE_SPKI_free
	.type	NETSCAPE_SPKI_free, @function
NETSCAPE_SPKI_free:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	NETSCAPE_SPKI_it@PLT
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
.LFE524:
	.size	NETSCAPE_SPKI_free, .-NETSCAPE_SPKI_free
	.section	.rodata
.LC5:
	.string	"NETSCAPE_SPKAC"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	NETSCAPE_SPKAC_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC5
	.section	.rodata
.LC6:
	.string	"NETSCAPE_SPKI"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	NETSCAPE_SPKI_seq_tt
	.quad	3
	.quad	0
	.quad	32
	.quad	.LC6
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
