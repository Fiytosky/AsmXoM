	.file	"ess_asn1.c"
	.text
	.section	.rodata
.LC0:
	.string	"issuer"
.LC1:
	.string	"serial"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ESS_ISSUER_SERIAL_seq_tt, @object
	.size	ESS_ISSUER_SERIAL_seq_tt, 80
ESS_ISSUER_SERIAL_seq_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	GENERAL_NAME_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_INTEGER_it
	.text
	.type	ESS_ISSUER_SERIAL_it, @function
ESS_ISSUER_SERIAL_it:
.LFB615:
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
.LFE615:
	.size	ESS_ISSUER_SERIAL_it, .-ESS_ISSUER_SERIAL_it
	.globl	d2i_ESS_ISSUER_SERIAL
	.type	d2i_ESS_ISSUER_SERIAL, @function
d2i_ESS_ISSUER_SERIAL:
.LFB616:
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
	call	ESS_ISSUER_SERIAL_it
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
.LFE616:
	.size	d2i_ESS_ISSUER_SERIAL, .-d2i_ESS_ISSUER_SERIAL
	.globl	i2d_ESS_ISSUER_SERIAL
	.type	i2d_ESS_ISSUER_SERIAL, @function
i2d_ESS_ISSUER_SERIAL:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ESS_ISSUER_SERIAL_it
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
.LFE617:
	.size	i2d_ESS_ISSUER_SERIAL, .-i2d_ESS_ISSUER_SERIAL
	.globl	ESS_ISSUER_SERIAL_new
	.type	ESS_ISSUER_SERIAL_new, @function
ESS_ISSUER_SERIAL_new:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ESS_ISSUER_SERIAL_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	ESS_ISSUER_SERIAL_new, .-ESS_ISSUER_SERIAL_new
	.globl	ESS_ISSUER_SERIAL_free
	.type	ESS_ISSUER_SERIAL_free, @function
ESS_ISSUER_SERIAL_free:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ESS_ISSUER_SERIAL_it
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
.LFE619:
	.size	ESS_ISSUER_SERIAL_free, .-ESS_ISSUER_SERIAL_free
	.globl	ESS_ISSUER_SERIAL_dup
	.type	ESS_ISSUER_SERIAL_dup, @function
ESS_ISSUER_SERIAL_dup:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ESS_ISSUER_SERIAL_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	ESS_ISSUER_SERIAL_dup, .-ESS_ISSUER_SERIAL_dup
	.section	.rodata
.LC2:
	.string	"hash"
.LC3:
	.string	"issuer_serial"
	.section	.data.rel.ro
	.align 32
	.type	ESS_CERT_ID_seq_tt, @object
	.size	ESS_CERT_ID_seq_tt, 80
ESS_CERT_ID_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	ASN1_OCTET_STRING_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC3
	.quad	ESS_ISSUER_SERIAL_it
	.text
	.type	ESS_CERT_ID_it, @function
ESS_CERT_ID_it:
.LFB621:
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
.LFE621:
	.size	ESS_CERT_ID_it, .-ESS_CERT_ID_it
	.globl	d2i_ESS_CERT_ID
	.type	d2i_ESS_CERT_ID, @function
d2i_ESS_CERT_ID:
.LFB622:
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
	call	ESS_CERT_ID_it
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
.LFE622:
	.size	d2i_ESS_CERT_ID, .-d2i_ESS_CERT_ID
	.globl	i2d_ESS_CERT_ID
	.type	i2d_ESS_CERT_ID, @function
i2d_ESS_CERT_ID:
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
	call	ESS_CERT_ID_it
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
.LFE623:
	.size	i2d_ESS_CERT_ID, .-i2d_ESS_CERT_ID
	.globl	ESS_CERT_ID_new
	.type	ESS_CERT_ID_new, @function
ESS_CERT_ID_new:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ESS_CERT_ID_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	ESS_CERT_ID_new, .-ESS_CERT_ID_new
	.globl	ESS_CERT_ID_free
	.type	ESS_CERT_ID_free, @function
ESS_CERT_ID_free:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ESS_CERT_ID_it
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
.LFE625:
	.size	ESS_CERT_ID_free, .-ESS_CERT_ID_free
	.globl	ESS_CERT_ID_dup
	.type	ESS_CERT_ID_dup, @function
ESS_CERT_ID_dup:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ESS_CERT_ID_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ESS_CERT_ID_dup, .-ESS_CERT_ID_dup
	.section	.rodata
.LC4:
	.string	"cert_ids"
.LC5:
	.string	"policy_info"
	.section	.data.rel.ro
	.align 32
	.type	ESS_SIGNING_CERT_seq_tt, @object
	.size	ESS_SIGNING_CERT_seq_tt, 80
ESS_SIGNING_CERT_seq_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	ESS_CERT_ID_it
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC5
	.quad	POLICYINFO_it
	.text
	.globl	ESS_SIGNING_CERT_it
	.type	ESS_SIGNING_CERT_it, @function
ESS_SIGNING_CERT_it:
.LFB627:
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
.LFE627:
	.size	ESS_SIGNING_CERT_it, .-ESS_SIGNING_CERT_it
	.globl	d2i_ESS_SIGNING_CERT
	.type	d2i_ESS_SIGNING_CERT, @function
d2i_ESS_SIGNING_CERT:
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
	call	ESS_SIGNING_CERT_it@PLT
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
	.size	d2i_ESS_SIGNING_CERT, .-d2i_ESS_SIGNING_CERT
	.globl	i2d_ESS_SIGNING_CERT
	.type	i2d_ESS_SIGNING_CERT, @function
i2d_ESS_SIGNING_CERT:
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
	call	ESS_SIGNING_CERT_it@PLT
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
	.size	i2d_ESS_SIGNING_CERT, .-i2d_ESS_SIGNING_CERT
	.globl	ESS_SIGNING_CERT_new
	.type	ESS_SIGNING_CERT_new, @function
ESS_SIGNING_CERT_new:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ESS_SIGNING_CERT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	ESS_SIGNING_CERT_new, .-ESS_SIGNING_CERT_new
	.globl	ESS_SIGNING_CERT_free
	.type	ESS_SIGNING_CERT_free, @function
ESS_SIGNING_CERT_free:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ESS_SIGNING_CERT_it@PLT
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
	.size	ESS_SIGNING_CERT_free, .-ESS_SIGNING_CERT_free
	.globl	ESS_SIGNING_CERT_dup
	.type	ESS_SIGNING_CERT_dup, @function
ESS_SIGNING_CERT_dup:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ESS_SIGNING_CERT_it@PLT
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
	.size	ESS_SIGNING_CERT_dup, .-ESS_SIGNING_CERT_dup
	.section	.rodata
.LC6:
	.string	"hash_alg"
	.section	.data.rel.ro
	.align 32
	.type	ESS_CERT_ID_V2_seq_tt, @object
	.size	ESS_CERT_ID_V2_seq_tt, 120
ESS_CERT_ID_V2_seq_tt:
	.quad	1
	.quad	0
	.quad	0
	.quad	.LC6
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC2
	.quad	ASN1_OCTET_STRING_it
	.quad	1
	.quad	0
	.quad	16
	.quad	.LC3
	.quad	ESS_ISSUER_SERIAL_it
	.text
	.type	ESS_CERT_ID_V2_it, @function
ESS_CERT_ID_V2_it:
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
	.size	ESS_CERT_ID_V2_it, .-ESS_CERT_ID_V2_it
	.globl	d2i_ESS_CERT_ID_V2
	.type	d2i_ESS_CERT_ID_V2, @function
d2i_ESS_CERT_ID_V2:
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
	call	ESS_CERT_ID_V2_it
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
	.size	d2i_ESS_CERT_ID_V2, .-d2i_ESS_CERT_ID_V2
	.globl	i2d_ESS_CERT_ID_V2
	.type	i2d_ESS_CERT_ID_V2, @function
i2d_ESS_CERT_ID_V2:
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
	call	ESS_CERT_ID_V2_it
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
	.size	i2d_ESS_CERT_ID_V2, .-i2d_ESS_CERT_ID_V2
	.globl	ESS_CERT_ID_V2_new
	.type	ESS_CERT_ID_V2_new, @function
ESS_CERT_ID_V2_new:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ESS_CERT_ID_V2_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	ESS_CERT_ID_V2_new, .-ESS_CERT_ID_V2_new
	.globl	ESS_CERT_ID_V2_free
	.type	ESS_CERT_ID_V2_free, @function
ESS_CERT_ID_V2_free:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ESS_CERT_ID_V2_it
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
	.size	ESS_CERT_ID_V2_free, .-ESS_CERT_ID_V2_free
	.globl	ESS_CERT_ID_V2_dup
	.type	ESS_CERT_ID_V2_dup, @function
ESS_CERT_ID_V2_dup:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ESS_CERT_ID_V2_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	ESS_CERT_ID_V2_dup, .-ESS_CERT_ID_V2_dup
	.section	.data.rel.ro
	.align 32
	.type	ESS_SIGNING_CERT_V2_seq_tt, @object
	.size	ESS_SIGNING_CERT_V2_seq_tt, 80
ESS_SIGNING_CERT_V2_seq_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	ESS_CERT_ID_V2_it
	.quad	5
	.quad	0
	.quad	8
	.quad	.LC5
	.quad	POLICYINFO_it
	.text
	.globl	ESS_SIGNING_CERT_V2_it
	.type	ESS_SIGNING_CERT_V2_it, @function
ESS_SIGNING_CERT_V2_it:
.LFB639:
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
.LFE639:
	.size	ESS_SIGNING_CERT_V2_it, .-ESS_SIGNING_CERT_V2_it
	.globl	d2i_ESS_SIGNING_CERT_V2
	.type	d2i_ESS_SIGNING_CERT_V2, @function
d2i_ESS_SIGNING_CERT_V2:
.LFB640:
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
	call	ESS_SIGNING_CERT_V2_it@PLT
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
.LFE640:
	.size	d2i_ESS_SIGNING_CERT_V2, .-d2i_ESS_SIGNING_CERT_V2
	.globl	i2d_ESS_SIGNING_CERT_V2
	.type	i2d_ESS_SIGNING_CERT_V2, @function
i2d_ESS_SIGNING_CERT_V2:
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
	call	ESS_SIGNING_CERT_V2_it@PLT
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
.LFE641:
	.size	i2d_ESS_SIGNING_CERT_V2, .-i2d_ESS_SIGNING_CERT_V2
	.globl	ESS_SIGNING_CERT_V2_new
	.type	ESS_SIGNING_CERT_V2_new, @function
ESS_SIGNING_CERT_V2_new:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ESS_SIGNING_CERT_V2_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	ESS_SIGNING_CERT_V2_new, .-ESS_SIGNING_CERT_V2_new
	.globl	ESS_SIGNING_CERT_V2_free
	.type	ESS_SIGNING_CERT_V2_free, @function
ESS_SIGNING_CERT_V2_free:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ESS_SIGNING_CERT_V2_it@PLT
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
.LFE643:
	.size	ESS_SIGNING_CERT_V2_free, .-ESS_SIGNING_CERT_V2_free
	.globl	ESS_SIGNING_CERT_V2_dup
	.type	ESS_SIGNING_CERT_V2_dup, @function
ESS_SIGNING_CERT_V2_dup:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ESS_SIGNING_CERT_V2_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	ESS_SIGNING_CERT_V2_dup, .-ESS_SIGNING_CERT_V2_dup
	.section	.rodata
.LC7:
	.string	"ESS_ISSUER_SERIAL"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	1
	.zero	7
	.quad	16
	.quad	ESS_ISSUER_SERIAL_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC7
	.section	.rodata
.LC8:
	.string	"ESS_CERT_ID"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	ESS_CERT_ID_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC8
	.section	.rodata
.LC9:
	.string	"ESS_SIGNING_CERT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	ESS_SIGNING_CERT_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC9
	.section	.rodata
.LC10:
	.string	"ESS_CERT_ID_V2"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	ESS_CERT_ID_V2_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC10
	.section	.rodata
.LC11:
	.string	"ESS_SIGNING_CERT_V2"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	ESS_SIGNING_CERT_V2_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC11
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
