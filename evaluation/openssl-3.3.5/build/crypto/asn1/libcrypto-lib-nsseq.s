	.file	"nsseq.c"
	.text
	.type	nsseq_cb, @function
nsseq_cb:
.LFB455:
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
	cmpl	$1, -20(%rbp)
	jne	.L2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$79, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
.L2:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	nsseq_cb, .-nsseq_cb
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	NETSCAPE_CERT_SEQUENCE_aux, @object
	.size	NETSCAPE_CERT_SEQUENCE_aux, 48
NETSCAPE_CERT_SEQUENCE_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	nsseq_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC0:
	.string	"type"
.LC1:
	.string	"certs"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	NETSCAPE_CERT_SEQUENCE_seq_tt, @object
	.size	NETSCAPE_CERT_SEQUENCE_seq_tt, 80
NETSCAPE_CERT_SEQUENCE_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OBJECT_it
	.quad	149
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	X509_it
	.text
	.globl	NETSCAPE_CERT_SEQUENCE_it
	.type	NETSCAPE_CERT_SEQUENCE_it, @function
NETSCAPE_CERT_SEQUENCE_it:
.LFB456:
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
.LFE456:
	.size	NETSCAPE_CERT_SEQUENCE_it, .-NETSCAPE_CERT_SEQUENCE_it
	.globl	d2i_NETSCAPE_CERT_SEQUENCE
	.type	d2i_NETSCAPE_CERT_SEQUENCE, @function
d2i_NETSCAPE_CERT_SEQUENCE:
.LFB457:
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
	call	NETSCAPE_CERT_SEQUENCE_it@PLT
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
.LFE457:
	.size	d2i_NETSCAPE_CERT_SEQUENCE, .-d2i_NETSCAPE_CERT_SEQUENCE
	.globl	i2d_NETSCAPE_CERT_SEQUENCE
	.type	i2d_NETSCAPE_CERT_SEQUENCE, @function
i2d_NETSCAPE_CERT_SEQUENCE:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	NETSCAPE_CERT_SEQUENCE_it@PLT
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
.LFE458:
	.size	i2d_NETSCAPE_CERT_SEQUENCE, .-i2d_NETSCAPE_CERT_SEQUENCE
	.globl	NETSCAPE_CERT_SEQUENCE_new
	.type	NETSCAPE_CERT_SEQUENCE_new, @function
NETSCAPE_CERT_SEQUENCE_new:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	NETSCAPE_CERT_SEQUENCE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	NETSCAPE_CERT_SEQUENCE_new, .-NETSCAPE_CERT_SEQUENCE_new
	.globl	NETSCAPE_CERT_SEQUENCE_free
	.type	NETSCAPE_CERT_SEQUENCE_free, @function
NETSCAPE_CERT_SEQUENCE_free:
.LFB460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	NETSCAPE_CERT_SEQUENCE_it@PLT
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
.LFE460:
	.size	NETSCAPE_CERT_SEQUENCE_free, .-NETSCAPE_CERT_SEQUENCE_free
	.section	.rodata
.LC2:
	.string	"NETSCAPE_CERT_SEQUENCE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	NETSCAPE_CERT_SEQUENCE_seq_tt
	.quad	2
	.quad	NETSCAPE_CERT_SEQUENCE_aux
	.quad	16
	.quad	.LC2
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
