	.file	"ct_x509v3.c"
	.text
	.type	ossl_check_const_SCT_sk_type, @function
ossl_check_const_SCT_sk_type:
.LFB450:
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
.LFE450:
	.size	ossl_check_const_SCT_sk_type, .-ossl_check_const_SCT_sk_type
	.section	.rodata
.LC0:
	.string	"../crypto/ct/ct_x509v3.c"
.LC1:
	.string	"NULL"
	.text
	.type	i2s_poison, @function
i2s_poison:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$18, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	i2s_poison, .-i2s_poison
	.type	s2i_poison, @function
s2i_poison:
.LFB570:
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
	call	ASN1_NULL_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	s2i_poison, .-s2i_poison
	.section	.rodata
.LC2:
	.string	"\n"
	.text
	.type	i2r_SCT_LIST, @function
i2r_SCT_LIST:
.LFB571:
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
	movl	%ecx, -28(%rbp)
	leaq	.LC2(%rip), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	SCT_LIST_print@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	i2r_SCT_LIST, .-i2r_SCT_LIST
	.type	set_sct_list_source, @function
set_sct_list_source:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L10
	movl	$0, -4(%rbp)
	jmp	.L11
.L14:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	SCT_set_source@PLT
	movl	%eax, -8(%rbp)
	cmpl	$1, -8(%rbp)
	je	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	addl	$1, -4(%rbp)
.L11:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L14
.L10:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	set_sct_list_source, .-set_sct_list_source
	.type	x509_ext_d2i_SCT_LIST, @function
x509_ext_d2i_SCT_LIST:
.LFB573:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_SCT_LIST@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	set_sct_list_source
	cmpl	$1, %eax
	je	.L16
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_LIST_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	x509_ext_d2i_SCT_LIST, .-x509_ext_d2i_SCT_LIST
	.type	ocsp_ext_d2i_SCT_LIST, @function
ocsp_ext_d2i_SCT_LIST:
.LFB574:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_SCT_LIST@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	set_sct_list_source
	cmpl	$1, %eax
	je	.L19
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_LIST_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-8(%rbp), %rax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	ocsp_ext_d2i_SCT_LIST, .-ocsp_ext_d2i_SCT_LIST
	.globl	ossl_v3_ct_scts
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_ct_scts, @object
	.size	ossl_v3_ct_scts, 312
ossl_v3_ct_scts:
	.long	951
	.long	0
	.quad	0
	.quad	0
	.quad	SCT_LIST_free
	.quad	x509_ext_d2i_SCT_LIST
	.quad	i2d_SCT_LIST
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_SCT_LIST
	.quad	0
	.quad	0
	.long	952
	.long	0
	.quad	ASN1_NULL_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2s_poison
	.quad	s2i_poison
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	954
	.long	0
	.quad	0
	.quad	0
	.quad	SCT_LIST_free
	.quad	ocsp_ext_d2i_SCT_LIST
	.quad	i2d_SCT_LIST
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_SCT_LIST
	.quad	0
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
