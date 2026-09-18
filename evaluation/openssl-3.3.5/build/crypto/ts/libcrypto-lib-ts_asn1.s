	.file	"ts_asn1.c"
	.text
	.section	.rodata
.LC0:
	.string	"hash_algo"
.LC1:
	.string	"hashed_msg"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	TS_MSG_IMPRINT_seq_tt, @object
	.size	TS_MSG_IMPRINT_seq_tt, 80
TS_MSG_IMPRINT_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_OCTET_STRING_it
	.text
	.type	TS_MSG_IMPRINT_it, @function
TS_MSG_IMPRINT_it:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.7(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	TS_MSG_IMPRINT_it, .-TS_MSG_IMPRINT_it
	.globl	d2i_TS_MSG_IMPRINT
	.type	d2i_TS_MSG_IMPRINT, @function
d2i_TS_MSG_IMPRINT:
.LFB592:
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
	call	TS_MSG_IMPRINT_it
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
.LFE592:
	.size	d2i_TS_MSG_IMPRINT, .-d2i_TS_MSG_IMPRINT
	.globl	i2d_TS_MSG_IMPRINT
	.type	i2d_TS_MSG_IMPRINT, @function
i2d_TS_MSG_IMPRINT:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	TS_MSG_IMPRINT_it
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
.LFE593:
	.size	i2d_TS_MSG_IMPRINT, .-i2d_TS_MSG_IMPRINT
	.globl	TS_MSG_IMPRINT_new
	.type	TS_MSG_IMPRINT_new, @function
TS_MSG_IMPRINT_new:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	TS_MSG_IMPRINT_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	TS_MSG_IMPRINT_new, .-TS_MSG_IMPRINT_new
	.globl	TS_MSG_IMPRINT_free
	.type	TS_MSG_IMPRINT_free, @function
TS_MSG_IMPRINT_free:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_MSG_IMPRINT_it
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
.LFE595:
	.size	TS_MSG_IMPRINT_free, .-TS_MSG_IMPRINT_free
	.globl	TS_MSG_IMPRINT_dup
	.type	TS_MSG_IMPRINT_dup, @function
TS_MSG_IMPRINT_dup:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_MSG_IMPRINT_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	TS_MSG_IMPRINT_dup, .-TS_MSG_IMPRINT_dup
	.globl	d2i_TS_MSG_IMPRINT_bio
	.type	d2i_TS_MSG_IMPRINT_bio, @function
d2i_TS_MSG_IMPRINT_bio:
.LFB597:
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
	movq	d2i_TS_MSG_IMPRINT@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	TS_MSG_IMPRINT_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	d2i_TS_MSG_IMPRINT_bio, .-d2i_TS_MSG_IMPRINT_bio
	.globl	i2d_TS_MSG_IMPRINT_bio
	.type	i2d_TS_MSG_IMPRINT_bio, @function
i2d_TS_MSG_IMPRINT_bio:
.LFB598:
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
	movq	i2d_TS_MSG_IMPRINT@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	i2d_TS_MSG_IMPRINT_bio, .-i2d_TS_MSG_IMPRINT_bio
	.globl	d2i_TS_MSG_IMPRINT_fp
	.type	d2i_TS_MSG_IMPRINT_fp, @function
d2i_TS_MSG_IMPRINT_fp:
.LFB599:
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
	movq	d2i_TS_MSG_IMPRINT@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	TS_MSG_IMPRINT_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	d2i_TS_MSG_IMPRINT_fp, .-d2i_TS_MSG_IMPRINT_fp
	.globl	i2d_TS_MSG_IMPRINT_fp
	.type	i2d_TS_MSG_IMPRINT_fp, @function
i2d_TS_MSG_IMPRINT_fp:
.LFB600:
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
	movq	i2d_TS_MSG_IMPRINT@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	i2d_TS_MSG_IMPRINT_fp, .-i2d_TS_MSG_IMPRINT_fp
	.section	.rodata
.LC2:
	.string	"version"
.LC3:
	.string	"msg_imprint"
.LC4:
	.string	"policy_id"
.LC5:
	.string	"nonce"
.LC6:
	.string	"cert_req"
.LC7:
	.string	"extensions"
	.section	.data.rel.ro
	.align 32
	.type	TS_REQ_seq_tt, @object
	.size	TS_REQ_seq_tt, 240
TS_REQ_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC3
	.quad	TS_MSG_IMPRINT_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC4
	.quad	ASN1_OBJECT_it
	.quad	1
	.quad	0
	.quad	24
	.quad	.LC5
	.quad	ASN1_INTEGER_it
	.quad	1
	.quad	0
	.quad	32
	.quad	.LC6
	.quad	ASN1_FBOOLEAN_it
	.quad	141
	.quad	0
	.quad	40
	.quad	.LC7
	.quad	X509_EXTENSION_it
	.text
	.type	TS_REQ_it, @function
TS_REQ_it:
.LFB601:
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
.LFE601:
	.size	TS_REQ_it, .-TS_REQ_it
	.globl	d2i_TS_REQ
	.type	d2i_TS_REQ, @function
d2i_TS_REQ:
.LFB602:
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
	call	TS_REQ_it
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
.LFE602:
	.size	d2i_TS_REQ, .-d2i_TS_REQ
	.globl	i2d_TS_REQ
	.type	i2d_TS_REQ, @function
i2d_TS_REQ:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	TS_REQ_it
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
.LFE603:
	.size	i2d_TS_REQ, .-i2d_TS_REQ
	.globl	TS_REQ_new
	.type	TS_REQ_new, @function
TS_REQ_new:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	TS_REQ_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	TS_REQ_new, .-TS_REQ_new
	.globl	TS_REQ_free
	.type	TS_REQ_free, @function
TS_REQ_free:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_REQ_it
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
.LFE605:
	.size	TS_REQ_free, .-TS_REQ_free
	.globl	TS_REQ_dup
	.type	TS_REQ_dup, @function
TS_REQ_dup:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_REQ_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	TS_REQ_dup, .-TS_REQ_dup
	.globl	d2i_TS_REQ_bio
	.type	d2i_TS_REQ_bio, @function
d2i_TS_REQ_bio:
.LFB607:
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
	movq	d2i_TS_REQ@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	TS_REQ_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	d2i_TS_REQ_bio, .-d2i_TS_REQ_bio
	.globl	i2d_TS_REQ_bio
	.type	i2d_TS_REQ_bio, @function
i2d_TS_REQ_bio:
.LFB608:
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
	movq	i2d_TS_REQ@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	i2d_TS_REQ_bio, .-i2d_TS_REQ_bio
	.globl	d2i_TS_REQ_fp
	.type	d2i_TS_REQ_fp, @function
d2i_TS_REQ_fp:
.LFB609:
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
	movq	d2i_TS_REQ@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	TS_REQ_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	d2i_TS_REQ_fp, .-d2i_TS_REQ_fp
	.globl	i2d_TS_REQ_fp
	.type	i2d_TS_REQ_fp, @function
i2d_TS_REQ_fp:
.LFB610:
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
	movq	i2d_TS_REQ@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	i2d_TS_REQ_fp, .-i2d_TS_REQ_fp
	.section	.rodata
.LC8:
	.string	"seconds"
.LC9:
	.string	"millis"
.LC10:
	.string	"micros"
	.section	.data.rel.ro
	.align 32
	.type	TS_ACCURACY_seq_tt, @object
	.size	TS_ACCURACY_seq_tt, 120
TS_ACCURACY_seq_tt:
	.quad	1
	.quad	0
	.quad	0
	.quad	.LC8
	.quad	ASN1_INTEGER_it
	.quad	137
	.quad	0
	.quad	8
	.quad	.LC9
	.quad	ASN1_INTEGER_it
	.quad	137
	.quad	1
	.quad	16
	.quad	.LC10
	.quad	ASN1_INTEGER_it
	.text
	.type	TS_ACCURACY_it, @function
TS_ACCURACY_it:
.LFB611:
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
.LFE611:
	.size	TS_ACCURACY_it, .-TS_ACCURACY_it
	.globl	d2i_TS_ACCURACY
	.type	d2i_TS_ACCURACY, @function
d2i_TS_ACCURACY:
.LFB612:
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
	call	TS_ACCURACY_it
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
.LFE612:
	.size	d2i_TS_ACCURACY, .-d2i_TS_ACCURACY
	.globl	i2d_TS_ACCURACY
	.type	i2d_TS_ACCURACY, @function
i2d_TS_ACCURACY:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	TS_ACCURACY_it
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
.LFE613:
	.size	i2d_TS_ACCURACY, .-i2d_TS_ACCURACY
	.globl	TS_ACCURACY_new
	.type	TS_ACCURACY_new, @function
TS_ACCURACY_new:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	TS_ACCURACY_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	TS_ACCURACY_new, .-TS_ACCURACY_new
	.globl	TS_ACCURACY_free
	.type	TS_ACCURACY_free, @function
TS_ACCURACY_free:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_ACCURACY_it
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
.LFE615:
	.size	TS_ACCURACY_free, .-TS_ACCURACY_free
	.globl	TS_ACCURACY_dup
	.type	TS_ACCURACY_dup, @function
TS_ACCURACY_dup:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_ACCURACY_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	TS_ACCURACY_dup, .-TS_ACCURACY_dup
	.section	.rodata
.LC11:
	.string	"serial"
.LC12:
	.string	"time"
.LC13:
	.string	"accuracy"
.LC14:
	.string	"ordering"
.LC15:
	.string	"tsa"
	.section	.data.rel.ro
	.align 32
	.type	TS_TST_INFO_seq_tt, @object
	.size	TS_TST_INFO_seq_tt, 400
TS_TST_INFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC4
	.quad	ASN1_OBJECT_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC3
	.quad	TS_MSG_IMPRINT_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC11
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	32
	.quad	.LC12
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	1
	.quad	0
	.quad	40
	.quad	.LC13
	.quad	TS_ACCURACY_it
	.quad	1
	.quad	0
	.quad	48
	.quad	.LC14
	.quad	ASN1_FBOOLEAN_it
	.quad	1
	.quad	0
	.quad	56
	.quad	.LC5
	.quad	ASN1_INTEGER_it
	.quad	145
	.quad	0
	.quad	64
	.quad	.LC15
	.quad	GENERAL_NAME_it
	.quad	141
	.quad	1
	.quad	72
	.quad	.LC7
	.quad	X509_EXTENSION_it
	.text
	.type	TS_TST_INFO_it, @function
TS_TST_INFO_it:
.LFB617:
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
.LFE617:
	.size	TS_TST_INFO_it, .-TS_TST_INFO_it
	.globl	d2i_TS_TST_INFO
	.type	d2i_TS_TST_INFO, @function
d2i_TS_TST_INFO:
.LFB618:
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
	call	TS_TST_INFO_it
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
.LFE618:
	.size	d2i_TS_TST_INFO, .-d2i_TS_TST_INFO
	.globl	i2d_TS_TST_INFO
	.type	i2d_TS_TST_INFO, @function
i2d_TS_TST_INFO:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	TS_TST_INFO_it
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
.LFE619:
	.size	i2d_TS_TST_INFO, .-i2d_TS_TST_INFO
	.globl	TS_TST_INFO_new
	.type	TS_TST_INFO_new, @function
TS_TST_INFO_new:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	TS_TST_INFO_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	TS_TST_INFO_new, .-TS_TST_INFO_new
	.globl	TS_TST_INFO_free
	.type	TS_TST_INFO_free, @function
TS_TST_INFO_free:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_TST_INFO_it
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
.LFE621:
	.size	TS_TST_INFO_free, .-TS_TST_INFO_free
	.globl	TS_TST_INFO_dup
	.type	TS_TST_INFO_dup, @function
TS_TST_INFO_dup:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_TST_INFO_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	TS_TST_INFO_dup, .-TS_TST_INFO_dup
	.globl	d2i_TS_TST_INFO_bio
	.type	d2i_TS_TST_INFO_bio, @function
d2i_TS_TST_INFO_bio:
.LFB623:
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
	movq	d2i_TS_TST_INFO@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	TS_TST_INFO_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	d2i_TS_TST_INFO_bio, .-d2i_TS_TST_INFO_bio
	.globl	i2d_TS_TST_INFO_bio
	.type	i2d_TS_TST_INFO_bio, @function
i2d_TS_TST_INFO_bio:
.LFB624:
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
	movq	i2d_TS_TST_INFO@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	i2d_TS_TST_INFO_bio, .-i2d_TS_TST_INFO_bio
	.globl	d2i_TS_TST_INFO_fp
	.type	d2i_TS_TST_INFO_fp, @function
d2i_TS_TST_INFO_fp:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	d2i_TS_TST_INFO@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	TS_TST_INFO_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	d2i_TS_TST_INFO_fp, .-d2i_TS_TST_INFO_fp
	.globl	i2d_TS_TST_INFO_fp
	.type	i2d_TS_TST_INFO_fp, @function
i2d_TS_TST_INFO_fp:
.LFB626:
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
	movq	i2d_TS_TST_INFO@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	i2d_TS_TST_INFO_fp, .-i2d_TS_TST_INFO_fp
	.section	.rodata
.LC16:
	.string	"status"
.LC17:
	.string	"text"
.LC18:
	.string	"failure_info"
	.section	.data.rel.ro
	.align 32
	.type	TS_STATUS_INFO_seq_tt, @object
	.size	TS_STATUS_INFO_seq_tt, 120
TS_STATUS_INFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC16
	.quad	ASN1_INTEGER_it
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC17
	.quad	ASN1_UTF8STRING_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC18
	.quad	ASN1_BIT_STRING_it
	.text
	.type	TS_STATUS_INFO_it, @function
TS_STATUS_INFO_it:
.LFB627:
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
.LFE627:
	.size	TS_STATUS_INFO_it, .-TS_STATUS_INFO_it
	.globl	d2i_TS_STATUS_INFO
	.type	d2i_TS_STATUS_INFO, @function
d2i_TS_STATUS_INFO:
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
	call	TS_STATUS_INFO_it
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
.LFE628:
	.size	d2i_TS_STATUS_INFO, .-d2i_TS_STATUS_INFO
	.globl	i2d_TS_STATUS_INFO
	.type	i2d_TS_STATUS_INFO, @function
i2d_TS_STATUS_INFO:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	TS_STATUS_INFO_it
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
.LFE629:
	.size	i2d_TS_STATUS_INFO, .-i2d_TS_STATUS_INFO
	.globl	TS_STATUS_INFO_new
	.type	TS_STATUS_INFO_new, @function
TS_STATUS_INFO_new:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	TS_STATUS_INFO_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	TS_STATUS_INFO_new, .-TS_STATUS_INFO_new
	.globl	TS_STATUS_INFO_free
	.type	TS_STATUS_INFO_free, @function
TS_STATUS_INFO_free:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_STATUS_INFO_it
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
.LFE631:
	.size	TS_STATUS_INFO_free, .-TS_STATUS_INFO_free
	.globl	TS_STATUS_INFO_dup
	.type	TS_STATUS_INFO_dup, @function
TS_STATUS_INFO_dup:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_STATUS_INFO_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	TS_STATUS_INFO_dup, .-TS_STATUS_INFO_dup
	.section	.rodata
.LC19:
	.string	"../crypto/ts/ts_asn1.c"
	.text
	.type	ts_resp_set_tst_info, @function
ts_resp_set_tst_info:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L81
	cmpq	$0, -8(%rbp)
	je	.L82
	cmpq	$1, -8(%rbp)
	je	.L82
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movl	$141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	TS_TST_INFO_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	PKCS7_to_TS_TST_INFO@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L84
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movl	$147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L81:
	cmpq	$0, -8(%rbp)
	je	.L85
	cmpq	$1, -8(%rbp)
	jne	.L84
.L85:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L84:
	movl	$1, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	ts_resp_set_tst_info, .-ts_resp_set_tst_info
	.type	ts_resp_cb, @function
ts_resp_cb:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L87
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L88
.L87:
	cmpl	$3, -20(%rbp)
	jne	.L89
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	TS_TST_INFO_free@PLT
	jmp	.L88
.L89:
	cmpl	$5, -20(%rbp)
	jne	.L88
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ts_resp_set_tst_info
	testl	%eax, %eax
	jne	.L88
	movl	$0, %eax
	jmp	.L90
.L88:
	movl	$1, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	ts_resp_cb, .-ts_resp_cb
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	TS_RESP_aux, @object
	.size	TS_RESP_aux, 48
TS_RESP_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	ts_resp_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC20:
	.string	"status_info"
.LC21:
	.string	"token"
	.section	.data.rel.ro
	.align 32
	.type	TS_RESP_seq_tt, @object
	.size	TS_RESP_seq_tt, 80
TS_RESP_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC20
	.quad	TS_STATUS_INFO_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC21
	.quad	PKCS7_it
	.text
	.type	TS_RESP_it, @function
TS_RESP_it:
.LFB635:
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
.LFE635:
	.size	TS_RESP_it, .-TS_RESP_it
	.globl	d2i_TS_RESP
	.type	d2i_TS_RESP, @function
d2i_TS_RESP:
.LFB636:
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
	call	TS_RESP_it
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
.LFE636:
	.size	d2i_TS_RESP, .-d2i_TS_RESP
	.globl	i2d_TS_RESP
	.type	i2d_TS_RESP, @function
i2d_TS_RESP:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	TS_RESP_it
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
.LFE637:
	.size	i2d_TS_RESP, .-i2d_TS_RESP
	.globl	TS_RESP_new
	.type	TS_RESP_new, @function
TS_RESP_new:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	TS_RESP_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	TS_RESP_new, .-TS_RESP_new
	.globl	TS_RESP_free
	.type	TS_RESP_free, @function
TS_RESP_free:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_RESP_it
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
.LFE639:
	.size	TS_RESP_free, .-TS_RESP_free
	.globl	TS_RESP_dup
	.type	TS_RESP_dup, @function
TS_RESP_dup:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TS_RESP_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	TS_RESP_dup, .-TS_RESP_dup
	.globl	d2i_TS_RESP_bio
	.type	d2i_TS_RESP_bio, @function
d2i_TS_RESP_bio:
.LFB641:
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
	movq	d2i_TS_RESP@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	TS_RESP_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	d2i_TS_RESP_bio, .-d2i_TS_RESP_bio
	.globl	i2d_TS_RESP_bio
	.type	i2d_TS_RESP_bio, @function
i2d_TS_RESP_bio:
.LFB642:
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
	movq	i2d_TS_RESP@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	i2d_TS_RESP_bio, .-i2d_TS_RESP_bio
	.globl	d2i_TS_RESP_fp
	.type	d2i_TS_RESP_fp, @function
d2i_TS_RESP_fp:
.LFB643:
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
	movq	d2i_TS_RESP@GOTPCREL(%rip), %rcx
	movq	%rcx, %rsi
	movq	TS_RESP_new@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	ASN1_d2i_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	d2i_TS_RESP_fp, .-d2i_TS_RESP_fp
	.globl	i2d_TS_RESP_fp
	.type	i2d_TS_RESP_fp, @function
i2d_TS_RESP_fp:
.LFB644:
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
	movq	i2d_TS_RESP@GOTPCREL(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_i2d_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	i2d_TS_RESP_fp, .-i2d_TS_RESP_fp
	.globl	PKCS7_to_TS_TST_INFO
	.type	PKCS7_to_TS_TST_INFO, @function
PKCS7_to_TS_TST_INFO:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$22, %eax
	je	.L111
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L116
.L111:
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	PKCS7_ctrl@PLT
	testq	%rax, %rax
	je	.L113
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movl	$217, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L116
.L113:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$207, %eax
	je	.L114
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movl	$223, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L116
.L114:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L115
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$47, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_TS_TST_INFO@PLT
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	PKCS7_to_TS_TST_INFO, .-PKCS7_to_TS_TST_INFO
	.section	.rodata
.LC22:
	.string	"TS_MSG_IMPRINT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.7, @object
	.size	local_it.7, 56
local_it.7:
	.byte	1
	.zero	7
	.quad	16
	.quad	TS_MSG_IMPRINT_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC22
	.section	.rodata
.LC23:
	.string	"TS_REQ"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	1
	.zero	7
	.quad	16
	.quad	TS_REQ_seq_tt
	.quad	6
	.quad	0
	.quad	48
	.quad	.LC23
	.section	.rodata
.LC24:
	.string	"TS_ACCURACY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	1
	.zero	7
	.quad	16
	.quad	TS_ACCURACY_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC24
	.section	.rodata
.LC25:
	.string	"TS_TST_INFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	1
	.zero	7
	.quad	16
	.quad	TS_TST_INFO_seq_tt
	.quad	10
	.quad	0
	.quad	80
	.quad	.LC25
	.section	.rodata
.LC26:
	.string	"TS_STATUS_INFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	TS_STATUS_INFO_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC26
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"ts_resp_set_tst_info"
.LC27:
	.string	"TS_RESP"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	TS_RESP_seq_tt
	.quad	2
	.quad	TS_RESP_aux
	.quad	24
	.quad	.LC27
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"PKCS7_to_TS_TST_INFO"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
