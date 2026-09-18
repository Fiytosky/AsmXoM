	.file	"n_pkey.c"
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
	.align 32
	.type	NETSCAPE_ENCRYPTED_PKEY_aux, @object
	.size	NETSCAPE_ENCRYPTED_PKEY_aux, 48
NETSCAPE_ENCRYPTED_PKEY_aux:
	.quad	0
	.long	4
	.long	0
	.long	0
	.zero	4
	.quad	0
	.long	0
	.zero	12
.LC0:
	.string	"os"
.LC1:
	.string	"enckey"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	NETSCAPE_ENCRYPTED_PKEY_seq_tt, @object
	.size	NETSCAPE_ENCRYPTED_PKEY_seq_tt, 80
NETSCAPE_ENCRYPTED_PKEY_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OCTET_STRING_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	X509_SIG_it
	.text
	.type	NETSCAPE_ENCRYPTED_PKEY_it, @function
NETSCAPE_ENCRYPTED_PKEY_it:
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
	.size	NETSCAPE_ENCRYPTED_PKEY_it, .-NETSCAPE_ENCRYPTED_PKEY_it
	.globl	d2i_NETSCAPE_ENCRYPTED_PKEY
	.type	d2i_NETSCAPE_ENCRYPTED_PKEY, @function
d2i_NETSCAPE_ENCRYPTED_PKEY:
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
	call	NETSCAPE_ENCRYPTED_PKEY_it
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
	.size	d2i_NETSCAPE_ENCRYPTED_PKEY, .-d2i_NETSCAPE_ENCRYPTED_PKEY
	.globl	i2d_NETSCAPE_ENCRYPTED_PKEY
	.type	i2d_NETSCAPE_ENCRYPTED_PKEY, @function
i2d_NETSCAPE_ENCRYPTED_PKEY:
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
	call	NETSCAPE_ENCRYPTED_PKEY_it
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
	.size	i2d_NETSCAPE_ENCRYPTED_PKEY, .-i2d_NETSCAPE_ENCRYPTED_PKEY
	.globl	NETSCAPE_ENCRYPTED_PKEY_new
	.type	NETSCAPE_ENCRYPTED_PKEY_new, @function
NETSCAPE_ENCRYPTED_PKEY_new:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	NETSCAPE_ENCRYPTED_PKEY_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	NETSCAPE_ENCRYPTED_PKEY_new, .-NETSCAPE_ENCRYPTED_PKEY_new
	.globl	NETSCAPE_ENCRYPTED_PKEY_free
	.type	NETSCAPE_ENCRYPTED_PKEY_free, @function
NETSCAPE_ENCRYPTED_PKEY_free:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	NETSCAPE_ENCRYPTED_PKEY_it
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
	.size	NETSCAPE_ENCRYPTED_PKEY_free, .-NETSCAPE_ENCRYPTED_PKEY_free
	.section	.rodata
.LC2:
	.string	"version"
.LC3:
	.string	"algor"
.LC4:
	.string	"private_key"
	.section	.data.rel.ro
	.align 32
	.type	NETSCAPE_PKEY_seq_tt, @object
	.size	NETSCAPE_PKEY_seq_tt, 120
NETSCAPE_PKEY_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC3
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC4
	.quad	ASN1_OCTET_STRING_it
	.text
	.type	NETSCAPE_PKEY_it, @function
NETSCAPE_PKEY_it:
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
	.size	NETSCAPE_PKEY_it, .-NETSCAPE_PKEY_it
	.globl	d2i_NETSCAPE_PKEY
	.type	d2i_NETSCAPE_PKEY, @function
d2i_NETSCAPE_PKEY:
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
	call	NETSCAPE_PKEY_it
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
	.size	d2i_NETSCAPE_PKEY, .-d2i_NETSCAPE_PKEY
	.globl	i2d_NETSCAPE_PKEY
	.type	i2d_NETSCAPE_PKEY, @function
i2d_NETSCAPE_PKEY:
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
	call	NETSCAPE_PKEY_it
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
	.size	i2d_NETSCAPE_PKEY, .-i2d_NETSCAPE_PKEY
	.globl	NETSCAPE_PKEY_new
	.type	NETSCAPE_PKEY_new, @function
NETSCAPE_PKEY_new:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	NETSCAPE_PKEY_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	NETSCAPE_PKEY_new, .-NETSCAPE_PKEY_new
	.globl	NETSCAPE_PKEY_free
	.type	NETSCAPE_PKEY_free, @function
NETSCAPE_PKEY_free:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	NETSCAPE_PKEY_it
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
	.size	NETSCAPE_PKEY_free, .-NETSCAPE_PKEY_free
	.section	.rodata
.LC5:
	.string	"NETSCAPE_ENCRYPTED_PKEY"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	NETSCAPE_ENCRYPTED_PKEY_seq_tt
	.quad	2
	.quad	NETSCAPE_ENCRYPTED_PKEY_aux
	.quad	16
	.quad	.LC5
	.section	.rodata
.LC6:
	.string	"NETSCAPE_PKEY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	NETSCAPE_PKEY_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC6
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
