	.file	"v3_pcia.c"
	.text
	.section	.rodata
.LC0:
	.string	"policyLanguage"
.LC1:
	.string	"policy"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	PROXY_POLICY_seq_tt, @object
	.size	PROXY_POLICY_seq_tt, 80
PROXY_POLICY_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OBJECT_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	PROXY_POLICY_it
	.type	PROXY_POLICY_it, @function
PROXY_POLICY_it:
.LFB563:
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
.LFE563:
	.size	PROXY_POLICY_it, .-PROXY_POLICY_it
	.globl	d2i_PROXY_POLICY
	.type	d2i_PROXY_POLICY, @function
d2i_PROXY_POLICY:
.LFB564:
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
	call	PROXY_POLICY_it@PLT
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
.LFE564:
	.size	d2i_PROXY_POLICY, .-d2i_PROXY_POLICY
	.globl	i2d_PROXY_POLICY
	.type	i2d_PROXY_POLICY, @function
i2d_PROXY_POLICY:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PROXY_POLICY_it@PLT
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
.LFE565:
	.size	i2d_PROXY_POLICY, .-i2d_PROXY_POLICY
	.globl	PROXY_POLICY_new
	.type	PROXY_POLICY_new, @function
PROXY_POLICY_new:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PROXY_POLICY_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	PROXY_POLICY_new, .-PROXY_POLICY_new
	.globl	PROXY_POLICY_free
	.type	PROXY_POLICY_free, @function
PROXY_POLICY_free:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PROXY_POLICY_it@PLT
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
.LFE567:
	.size	PROXY_POLICY_free, .-PROXY_POLICY_free
	.section	.rodata
.LC2:
	.string	"pcPathLengthConstraint"
.LC3:
	.string	"proxyPolicy"
	.section	.data.rel.ro
	.align 32
	.type	PROXY_CERT_INFO_EXTENSION_seq_tt, @object
	.size	PROXY_CERT_INFO_EXTENSION_seq_tt, 80
PROXY_CERT_INFO_EXTENSION_seq_tt:
	.quad	1
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC3
	.quad	PROXY_POLICY_it
	.text
	.globl	PROXY_CERT_INFO_EXTENSION_it
	.type	PROXY_CERT_INFO_EXTENSION_it, @function
PROXY_CERT_INFO_EXTENSION_it:
.LFB568:
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
.LFE568:
	.size	PROXY_CERT_INFO_EXTENSION_it, .-PROXY_CERT_INFO_EXTENSION_it
	.globl	d2i_PROXY_CERT_INFO_EXTENSION
	.type	d2i_PROXY_CERT_INFO_EXTENSION, @function
d2i_PROXY_CERT_INFO_EXTENSION:
.LFB569:
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
	call	PROXY_CERT_INFO_EXTENSION_it@PLT
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
.LFE569:
	.size	d2i_PROXY_CERT_INFO_EXTENSION, .-d2i_PROXY_CERT_INFO_EXTENSION
	.globl	i2d_PROXY_CERT_INFO_EXTENSION
	.type	i2d_PROXY_CERT_INFO_EXTENSION, @function
i2d_PROXY_CERT_INFO_EXTENSION:
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
	call	PROXY_CERT_INFO_EXTENSION_it@PLT
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
.LFE570:
	.size	i2d_PROXY_CERT_INFO_EXTENSION, .-i2d_PROXY_CERT_INFO_EXTENSION
	.globl	PROXY_CERT_INFO_EXTENSION_new
	.type	PROXY_CERT_INFO_EXTENSION_new, @function
PROXY_CERT_INFO_EXTENSION_new:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PROXY_CERT_INFO_EXTENSION_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	PROXY_CERT_INFO_EXTENSION_new, .-PROXY_CERT_INFO_EXTENSION_new
	.globl	PROXY_CERT_INFO_EXTENSION_free
	.type	PROXY_CERT_INFO_EXTENSION_free, @function
PROXY_CERT_INFO_EXTENSION_free:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PROXY_CERT_INFO_EXTENSION_it@PLT
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
.LFE572:
	.size	PROXY_CERT_INFO_EXTENSION_free, .-PROXY_CERT_INFO_EXTENSION_free
	.section	.rodata
.LC4:
	.string	"PROXY_POLICY"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	PROXY_POLICY_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC4
	.section	.rodata
.LC5:
	.string	"PROXY_CERT_INFO_EXTENSION"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	PROXY_CERT_INFO_EXTENSION_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC5
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
