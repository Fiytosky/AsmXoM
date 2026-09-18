	.file	"pem_all.c"
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
	.string	"CERTIFICATE REQUEST"
	.text
	.globl	PEM_read_bio_X509_REQ
	.type	PEM_read_bio_X509_REQ, @function
PEM_read_bio_X509_REQ:
.LFB509:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	d2i_X509_REQ@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	PEM_read_bio_X509_REQ, .-PEM_read_bio_X509_REQ
	.globl	PEM_read_X509_REQ
	.type	PEM_read_X509_REQ, @function
PEM_read_X509_REQ:
.LFB510:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	d2i_X509_REQ@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	PEM_read_X509_REQ, .-PEM_read_X509_REQ
	.globl	PEM_write_bio_X509_REQ
	.type	PEM_write_bio_X509_REQ, @function
PEM_write_bio_X509_REQ:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	i2d_X509_REQ@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	PEM_write_bio_X509_REQ, .-PEM_write_bio_X509_REQ
	.globl	PEM_write_X509_REQ
	.type	PEM_write_X509_REQ, @function
PEM_write_X509_REQ:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	i2d_X509_REQ@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	PEM_write_X509_REQ, .-PEM_write_X509_REQ
	.section	.rodata
.LC1:
	.string	"NEW CERTIFICATE REQUEST"
	.text
	.globl	PEM_write_bio_X509_REQ_NEW
	.type	PEM_write_bio_X509_REQ_NEW, @function
PEM_write_bio_X509_REQ_NEW:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	i2d_X509_REQ@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	PEM_write_bio_X509_REQ_NEW, .-PEM_write_bio_X509_REQ_NEW
	.globl	PEM_write_X509_REQ_NEW
	.type	PEM_write_X509_REQ_NEW, @function
PEM_write_X509_REQ_NEW:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	i2d_X509_REQ@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	PEM_write_X509_REQ_NEW, .-PEM_write_X509_REQ_NEW
	.section	.rodata
.LC2:
	.string	"X509 CRL"
	.text
	.globl	PEM_read_bio_X509_CRL
	.type	PEM_read_bio_X509_CRL, @function
PEM_read_bio_X509_CRL:
.LFB515:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	d2i_X509_CRL@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	PEM_read_bio_X509_CRL, .-PEM_read_bio_X509_CRL
	.globl	PEM_read_X509_CRL
	.type	PEM_read_X509_CRL, @function
PEM_read_X509_CRL:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	d2i_X509_CRL@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PEM_read_X509_CRL, .-PEM_read_X509_CRL
	.globl	PEM_write_bio_X509_CRL
	.type	PEM_write_bio_X509_CRL, @function
PEM_write_bio_X509_CRL:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	i2d_X509_CRL@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PEM_write_bio_X509_CRL, .-PEM_write_bio_X509_CRL
	.globl	PEM_write_X509_CRL
	.type	PEM_write_X509_CRL, @function
PEM_write_X509_CRL:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	i2d_X509_CRL@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	PEM_write_X509_CRL, .-PEM_write_X509_CRL
	.section	.rodata
.LC3:
	.string	"PUBLIC KEY"
	.text
	.globl	PEM_read_bio_X509_PUBKEY
	.type	PEM_read_bio_X509_PUBKEY, @function
PEM_read_bio_X509_PUBKEY:
.LFB519:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	d2i_X509_PUBKEY@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	PEM_read_bio_X509_PUBKEY, .-PEM_read_bio_X509_PUBKEY
	.globl	PEM_read_X509_PUBKEY
	.type	PEM_read_X509_PUBKEY, @function
PEM_read_X509_PUBKEY:
.LFB520:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	d2i_X509_PUBKEY@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PEM_read_X509_PUBKEY, .-PEM_read_X509_PUBKEY
	.globl	PEM_write_bio_X509_PUBKEY
	.type	PEM_write_bio_X509_PUBKEY, @function
PEM_write_bio_X509_PUBKEY:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_X509_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	PEM_write_bio_X509_PUBKEY, .-PEM_write_bio_X509_PUBKEY
	.globl	PEM_write_X509_PUBKEY
	.type	PEM_write_X509_PUBKEY, @function
PEM_write_X509_PUBKEY:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_X509_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PEM_write_X509_PUBKEY, .-PEM_write_X509_PUBKEY
	.section	.rodata
.LC4:
	.string	"PKCS7"
	.text
	.globl	PEM_read_bio_PKCS7
	.type	PEM_read_bio_PKCS7, @function
PEM_read_bio_PKCS7:
.LFB523:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	d2i_PKCS7@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	PEM_read_bio_PKCS7, .-PEM_read_bio_PKCS7
	.globl	PEM_read_PKCS7
	.type	PEM_read_PKCS7, @function
PEM_read_PKCS7:
.LFB524:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	d2i_PKCS7@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PEM_read_PKCS7, .-PEM_read_PKCS7
	.globl	PEM_write_bio_PKCS7
	.type	PEM_write_bio_PKCS7, @function
PEM_write_bio_PKCS7:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	i2d_PKCS7@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	PEM_write_bio_PKCS7, .-PEM_write_bio_PKCS7
	.globl	PEM_write_PKCS7
	.type	PEM_write_PKCS7, @function
PEM_write_PKCS7:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	i2d_PKCS7@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	PEM_write_PKCS7, .-PEM_write_PKCS7
	.section	.rodata
.LC5:
	.string	"CERTIFICATE"
	.text
	.globl	PEM_read_bio_NETSCAPE_CERT_SEQUENCE
	.type	PEM_read_bio_NETSCAPE_CERT_SEQUENCE, @function
PEM_read_bio_NETSCAPE_CERT_SEQUENCE:
.LFB527:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	d2i_NETSCAPE_CERT_SEQUENCE@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	PEM_read_bio_NETSCAPE_CERT_SEQUENCE, .-PEM_read_bio_NETSCAPE_CERT_SEQUENCE
	.globl	PEM_read_NETSCAPE_CERT_SEQUENCE
	.type	PEM_read_NETSCAPE_CERT_SEQUENCE, @function
PEM_read_NETSCAPE_CERT_SEQUENCE:
.LFB528:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	d2i_NETSCAPE_CERT_SEQUENCE@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	PEM_read_NETSCAPE_CERT_SEQUENCE, .-PEM_read_NETSCAPE_CERT_SEQUENCE
	.globl	PEM_write_bio_NETSCAPE_CERT_SEQUENCE
	.type	PEM_write_bio_NETSCAPE_CERT_SEQUENCE, @function
PEM_write_bio_NETSCAPE_CERT_SEQUENCE:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	i2d_NETSCAPE_CERT_SEQUENCE@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	PEM_write_bio_NETSCAPE_CERT_SEQUENCE, .-PEM_write_bio_NETSCAPE_CERT_SEQUENCE
	.globl	PEM_write_NETSCAPE_CERT_SEQUENCE
	.type	PEM_write_NETSCAPE_CERT_SEQUENCE, @function
PEM_write_NETSCAPE_CERT_SEQUENCE:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	i2d_NETSCAPE_CERT_SEQUENCE@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	PEM_write_NETSCAPE_CERT_SEQUENCE, .-PEM_write_NETSCAPE_CERT_SEQUENCE
	.type	pkey_get_rsa, @function
pkey_get_rsa:
.LFB531:
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
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get1_RSA@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L51
.L52:
	cmpq	$0, -32(%rbp)
	je	.L53
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L53:
	movq	-8(%rbp), %rax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	pkey_get_rsa, .-pkey_get_rsa
	.globl	PEM_read_bio_RSAPrivateKey
	.type	PEM_read_bio_RSAPrivateKey, @function
PEM_read_bio_RSAPrivateKey:
.LFB532:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_get_rsa
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	PEM_read_bio_RSAPrivateKey, .-PEM_read_bio_RSAPrivateKey
	.globl	PEM_read_RSAPrivateKey
	.type	PEM_read_RSAPrivateKey, @function
PEM_read_RSAPrivateKey:
.LFB533:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_PrivateKey@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_get_rsa
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PEM_read_RSAPrivateKey, .-PEM_read_RSAPrivateKey
	.section	.rodata
.LC6:
	.string	"RSA PRIVATE KEY"
	.text
	.globl	PEM_write_bio_RSAPrivateKey
	.type	PEM_write_bio_RSAPrivateKey, @function
PEM_write_bio_RSAPrivateKey:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %r10
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movl	-36(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	PEM_write_bio_RSAPrivateKey, .-PEM_write_bio_RSAPrivateKey
	.globl	PEM_write_RSAPrivateKey
	.type	PEM_write_RSAPrivateKey, @function
PEM_write_RSAPrivateKey:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	i2d_RSAPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %r10
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movl	-36(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	PEM_write_RSAPrivateKey, .-PEM_write_RSAPrivateKey
	.section	.rodata
.LC7:
	.string	"RSA PUBLIC KEY"
	.text
	.globl	PEM_read_bio_RSAPublicKey
	.type	PEM_read_bio_RSAPublicKey, @function
PEM_read_bio_RSAPublicKey:
.LFB536:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	d2i_RSAPublicKey@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	PEM_read_bio_RSAPublicKey, .-PEM_read_bio_RSAPublicKey
	.globl	PEM_read_RSAPublicKey
	.type	PEM_read_RSAPublicKey, @function
PEM_read_RSAPublicKey:
.LFB537:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	d2i_RSAPublicKey@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	PEM_read_RSAPublicKey, .-PEM_read_RSAPublicKey
	.globl	PEM_write_bio_RSAPublicKey
	.type	PEM_write_bio_RSAPublicKey, @function
PEM_write_bio_RSAPublicKey:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	PEM_write_bio_RSAPublicKey, .-PEM_write_bio_RSAPublicKey
	.globl	PEM_write_RSAPublicKey
	.type	PEM_write_RSAPublicKey, @function
PEM_write_RSAPublicKey:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	i2d_RSAPublicKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	PEM_write_RSAPublicKey, .-PEM_write_RSAPublicKey
	.globl	PEM_read_bio_RSA_PUBKEY
	.type	PEM_read_bio_RSA_PUBKEY, @function
PEM_read_bio_RSA_PUBKEY:
.LFB540:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	d2i_RSA_PUBKEY@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	PEM_read_bio_RSA_PUBKEY, .-PEM_read_bio_RSA_PUBKEY
	.globl	PEM_read_RSA_PUBKEY
	.type	PEM_read_RSA_PUBKEY, @function
PEM_read_RSA_PUBKEY:
.LFB541:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	d2i_RSA_PUBKEY@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	PEM_read_RSA_PUBKEY, .-PEM_read_RSA_PUBKEY
	.globl	PEM_write_bio_RSA_PUBKEY
	.type	PEM_write_bio_RSA_PUBKEY, @function
PEM_write_bio_RSA_PUBKEY:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_RSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	PEM_write_bio_RSA_PUBKEY, .-PEM_write_bio_RSA_PUBKEY
	.globl	PEM_write_RSA_PUBKEY
	.type	PEM_write_RSA_PUBKEY, @function
PEM_write_RSA_PUBKEY:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_RSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	PEM_write_RSA_PUBKEY, .-PEM_write_RSA_PUBKEY
	.type	pkey_get_dsa, @function
pkey_get_dsa:
.LFB544:
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
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get1_DSA@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L81
	movl	$0, %eax
	jmp	.L80
.L81:
	cmpq	$0, -32(%rbp)
	je	.L82
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L82:
	movq	-8(%rbp), %rax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	pkey_get_dsa, .-pkey_get_dsa
	.globl	PEM_read_bio_DSAPrivateKey
	.type	PEM_read_bio_DSAPrivateKey, @function
PEM_read_bio_DSAPrivateKey:
.LFB545:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_get_dsa
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	PEM_read_bio_DSAPrivateKey, .-PEM_read_bio_DSAPrivateKey
	.section	.rodata
.LC8:
	.string	"DSA PRIVATE KEY"
	.text
	.globl	PEM_write_bio_DSAPrivateKey
	.type	PEM_write_bio_DSAPrivateKey, @function
PEM_write_bio_DSAPrivateKey:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	i2d_DSAPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %r10
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movl	-36(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	PEM_write_bio_DSAPrivateKey, .-PEM_write_bio_DSAPrivateKey
	.globl	PEM_write_DSAPrivateKey
	.type	PEM_write_DSAPrivateKey, @function
PEM_write_DSAPrivateKey:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	i2d_DSAPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %r10
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movl	-36(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	PEM_write_DSAPrivateKey, .-PEM_write_DSAPrivateKey
	.globl	PEM_read_bio_DSA_PUBKEY
	.type	PEM_read_bio_DSA_PUBKEY, @function
PEM_read_bio_DSA_PUBKEY:
.LFB548:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	d2i_DSA_PUBKEY@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	PEM_read_bio_DSA_PUBKEY, .-PEM_read_bio_DSA_PUBKEY
	.globl	PEM_read_DSA_PUBKEY
	.type	PEM_read_DSA_PUBKEY, @function
PEM_read_DSA_PUBKEY:
.LFB549:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	d2i_DSA_PUBKEY@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	PEM_read_DSA_PUBKEY, .-PEM_read_DSA_PUBKEY
	.globl	PEM_write_bio_DSA_PUBKEY
	.type	PEM_write_bio_DSA_PUBKEY, @function
PEM_write_bio_DSA_PUBKEY:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_DSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	PEM_write_bio_DSA_PUBKEY, .-PEM_write_bio_DSA_PUBKEY
	.globl	PEM_write_DSA_PUBKEY
	.type	PEM_write_DSA_PUBKEY, @function
PEM_write_DSA_PUBKEY:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_DSA_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	PEM_write_DSA_PUBKEY, .-PEM_write_DSA_PUBKEY
	.globl	PEM_read_DSAPrivateKey
	.type	PEM_read_DSAPrivateKey, @function
PEM_read_DSAPrivateKey:
.LFB552:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_PrivateKey@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_get_dsa
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	PEM_read_DSAPrivateKey, .-PEM_read_DSAPrivateKey
	.section	.rodata
.LC9:
	.string	"DSA PARAMETERS"
	.text
	.globl	PEM_read_bio_DSAparams
	.type	PEM_read_bio_DSAparams, @function
PEM_read_bio_DSAparams:
.LFB553:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	d2i_DSAparams@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	PEM_read_bio_DSAparams, .-PEM_read_bio_DSAparams
	.globl	PEM_read_DSAparams
	.type	PEM_read_DSAparams, @function
PEM_read_DSAparams:
.LFB554:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	d2i_DSAparams@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	PEM_read_DSAparams, .-PEM_read_DSAparams
	.globl	PEM_write_bio_DSAparams
	.type	PEM_write_bio_DSAparams, @function
PEM_write_bio_DSAparams:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	i2d_DSAparams@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	PEM_write_bio_DSAparams, .-PEM_write_bio_DSAparams
	.globl	PEM_write_DSAparams
	.type	PEM_write_DSAparams, @function
PEM_write_DSAparams:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	i2d_DSAparams@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	PEM_write_DSAparams, .-PEM_write_DSAparams
	.type	pkey_get_eckey, @function
pkey_get_eckey:
.LFB557:
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
	jne	.L108
	movl	$0, %eax
	jmp	.L109
.L108:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get1_EC_KEY@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpq	$0, -8(%rbp)
	jne	.L110
	movl	$0, %eax
	jmp	.L109
.L110:
	cmpq	$0, -32(%rbp)
	je	.L111
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L111:
	movq	-8(%rbp), %rax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	pkey_get_eckey, .-pkey_get_eckey
	.globl	PEM_read_bio_ECPrivateKey
	.type	PEM_read_bio_ECPrivateKey, @function
PEM_read_bio_ECPrivateKey:
.LFB558:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_get_eckey
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	PEM_read_bio_ECPrivateKey, .-PEM_read_bio_ECPrivateKey
	.section	.rodata
.LC10:
	.string	"EC PARAMETERS"
	.text
	.globl	PEM_read_bio_ECPKParameters
	.type	PEM_read_bio_ECPKParameters, @function
PEM_read_bio_ECPKParameters:
.LFB559:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	d2i_ECPKParameters@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	PEM_read_bio_ECPKParameters, .-PEM_read_bio_ECPKParameters
	.globl	PEM_read_ECPKParameters
	.type	PEM_read_ECPKParameters, @function
PEM_read_ECPKParameters:
.LFB560:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	d2i_ECPKParameters@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	PEM_read_ECPKParameters, .-PEM_read_ECPKParameters
	.globl	PEM_write_bio_ECPKParameters
	.type	PEM_write_bio_ECPKParameters, @function
PEM_write_bio_ECPKParameters:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	i2d_ECPKParameters@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	PEM_write_bio_ECPKParameters, .-PEM_write_bio_ECPKParameters
	.globl	PEM_write_ECPKParameters
	.type	PEM_write_ECPKParameters, @function
PEM_write_ECPKParameters:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	i2d_ECPKParameters@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	PEM_write_ECPKParameters, .-PEM_write_ECPKParameters
	.section	.rodata
.LC11:
	.string	"EC PRIVATE KEY"
	.text
	.globl	PEM_write_bio_ECPrivateKey
	.type	PEM_write_bio_ECPrivateKey, @function
PEM_write_bio_ECPrivateKey:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %r10
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movl	-36(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	PEM_write_bio_ECPrivateKey, .-PEM_write_bio_ECPrivateKey
	.globl	PEM_write_ECPrivateKey
	.type	PEM_write_ECPrivateKey, @function
PEM_write_ECPrivateKey:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	i2d_ECPrivateKey@GOTPCREL(%rip), %rcx
	movq	%rcx, %r10
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movl	-36(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	PEM_write_ECPrivateKey, .-PEM_write_ECPrivateKey
	.globl	PEM_read_bio_EC_PUBKEY
	.type	PEM_read_bio_EC_PUBKEY, @function
PEM_read_bio_EC_PUBKEY:
.LFB565:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	d2i_EC_PUBKEY@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	PEM_read_bio_EC_PUBKEY, .-PEM_read_bio_EC_PUBKEY
	.globl	PEM_read_EC_PUBKEY
	.type	PEM_read_EC_PUBKEY, @function
PEM_read_EC_PUBKEY:
.LFB566:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	d2i_EC_PUBKEY@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	PEM_read_EC_PUBKEY, .-PEM_read_EC_PUBKEY
	.globl	PEM_write_bio_EC_PUBKEY
	.type	PEM_write_bio_EC_PUBKEY, @function
PEM_write_bio_EC_PUBKEY:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_EC_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	PEM_write_bio_EC_PUBKEY, .-PEM_write_bio_EC_PUBKEY
	.globl	PEM_write_EC_PUBKEY
	.type	PEM_write_EC_PUBKEY, @function
PEM_write_EC_PUBKEY:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_EC_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	PEM_write_EC_PUBKEY, .-PEM_write_EC_PUBKEY
	.globl	PEM_read_ECPrivateKey
	.type	PEM_read_ECPrivateKey, @function
PEM_read_ECPrivateKey:
.LFB569:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_PrivateKey@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pkey_get_eckey
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	PEM_read_ECPrivateKey, .-PEM_read_ECPrivateKey
	.section	.rodata
.LC12:
	.string	"DH PARAMETERS"
	.text
	.globl	PEM_write_bio_DHparams
	.type	PEM_write_bio_DHparams, @function
PEM_write_bio_DHparams:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	i2d_DHparams@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	PEM_write_bio_DHparams, .-PEM_write_bio_DHparams
	.globl	PEM_write_DHparams
	.type	PEM_write_DHparams, @function
PEM_write_DHparams:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	i2d_DHparams@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	PEM_write_DHparams, .-PEM_write_DHparams
	.section	.rodata
.LC13:
	.string	"X9.42 DH PARAMETERS"
	.text
	.globl	PEM_write_bio_DHxparams
	.type	PEM_write_bio_DHxparams, @function
PEM_write_bio_DHxparams:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	i2d_DHxparams@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	PEM_write_bio_DHxparams, .-PEM_write_bio_DHxparams
	.globl	PEM_write_DHxparams
	.type	PEM_write_DHxparams, @function
PEM_write_DHxparams:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC13(%rip), %rsi
	movq	i2d_DHxparams@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	PEM_write_DHxparams, .-PEM_write_DHxparams
	.section	.rodata
.LC14:
	.string	"../crypto/pem/pem_all.c"
	.text
	.globl	PEM_read_bio_DHparams
	.type	PEM_read_bio_DHparams, @function
PEM_read_bio_DHparams:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %r8
	movq	-56(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	leaq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	-80(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_bytes_read_bio@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L145
	movl	$0, %eax
	jmp	.L150
.L145:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L147
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_DHxparams@PLT
	movq	%rax, -8(%rbp)
	jmp	.L148
.L147:
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_DHparams@PLT
	movq	%rax, -8(%rbp)
.L148:
	cmpq	$0, -8(%rbp)
	jne	.L149
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$202, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L149:
	movq	-16(%rbp), %rax
	leaq	.LC14(%rip), %rcx
	movl	$203, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	leaq	.LC14(%rip), %rcx
	movl	$204, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	PEM_read_bio_DHparams, .-PEM_read_bio_DHparams
	.globl	PEM_read_DHparams
	.type	PEM_read_DHparams, @function
PEM_read_DHparams:
.LFB575:
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
	movq	%rcx, -48(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L152
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L153
.L152:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PEM_read_bio_DHparams@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	PEM_read_DHparams, .-PEM_read_DHparams
	.section	.rodata
.LC15:
	.string	"SubjectPublicKeyInfo"
.LC16:
	.string	"PEM"
	.text
	.globl	PEM_write_bio_PUBKEY
	.type	PEM_write_bio_PUBKEY, @function
PEM_write_bio_PUBKEY:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$134, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	jne	.L155
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	nop
.L156:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	jmp	.L157
.L155:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	-4(%rbp), %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	PEM_write_bio_PUBKEY, .-PEM_write_bio_PUBKEY
	.globl	PEM_write_bio_PUBKEY_ex
	.type	PEM_write_bio_PUBKEY_ex, @function
PEM_write_bio_PUBKEY_ex:
.LFB577:
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
	movq	%rcx, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movl	$134, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	jne	.L159
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	nop
.L160:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	jmp	.L161
.L159:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	-4(%rbp), %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	PEM_write_bio_PUBKEY_ex, .-PEM_write_bio_PUBKEY_ex
	.globl	PEM_write_PUBKEY
	.type	PEM_write_PUBKEY, @function
PEM_write_PUBKEY:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$134, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	jne	.L163
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	nop
.L164:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	jmp	.L165
.L163:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_fp@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	-4(%rbp), %eax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	PEM_write_PUBKEY, .-PEM_write_PUBKEY
	.globl	PEM_write_PUBKEY_ex
	.type	PEM_write_PUBKEY_ex, @function
PEM_write_PUBKEY_ex:
.LFB579:
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
	movq	%rcx, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movl	$134, %esi
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	jne	.L167
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	nop
.L168:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	i2d_PUBKEY@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	jmp	.L169
.L167:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_fp@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	movl	-4(%rbp), %eax
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	PEM_write_PUBKEY_ex, .-PEM_write_PUBKEY_ex
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"PEM_read_bio_DHparams"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"PEM_read_DHparams"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
