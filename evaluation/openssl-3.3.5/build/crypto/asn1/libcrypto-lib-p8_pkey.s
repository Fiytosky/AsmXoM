	.file	"p8_pkey.c"
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
	.type	pkey_cb, @function
pkey_cb:
.LFB520:
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
	cmpl	$2, -20(%rbp)
	jne	.L6
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L6:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	pkey_cb, .-pkey_cb
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	PKCS8_PRIV_KEY_INFO_aux, @object
	.size	PKCS8_PRIV_KEY_INFO_aux, 48
PKCS8_PRIV_KEY_INFO_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	pkey_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC0:
	.string	"version"
.LC1:
	.string	"pkeyalg"
.LC2:
	.string	"pkey"
.LC3:
	.string	"attributes"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	PKCS8_PRIV_KEY_INFO_seq_tt, @object
	.size	PKCS8_PRIV_KEY_INFO_seq_tt, 160
PKCS8_PRIV_KEY_INFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	ASN1_OCTET_STRING_it
	.quad	139
	.quad	0
	.quad	24
	.quad	.LC3
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	PKCS8_PRIV_KEY_INFO_it
	.type	PKCS8_PRIV_KEY_INFO_it, @function
PKCS8_PRIV_KEY_INFO_it:
.LFB521:
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
.LFE521:
	.size	PKCS8_PRIV_KEY_INFO_it, .-PKCS8_PRIV_KEY_INFO_it
	.globl	d2i_PKCS8_PRIV_KEY_INFO
	.type	d2i_PKCS8_PRIV_KEY_INFO, @function
d2i_PKCS8_PRIV_KEY_INFO:
.LFB522:
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
	call	PKCS8_PRIV_KEY_INFO_it@PLT
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
.LFE522:
	.size	d2i_PKCS8_PRIV_KEY_INFO, .-d2i_PKCS8_PRIV_KEY_INFO
	.globl	i2d_PKCS8_PRIV_KEY_INFO
	.type	i2d_PKCS8_PRIV_KEY_INFO, @function
i2d_PKCS8_PRIV_KEY_INFO:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS8_PRIV_KEY_INFO_it@PLT
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
.LFE523:
	.size	i2d_PKCS8_PRIV_KEY_INFO, .-i2d_PKCS8_PRIV_KEY_INFO
	.globl	PKCS8_PRIV_KEY_INFO_new
	.type	PKCS8_PRIV_KEY_INFO_new, @function
PKCS8_PRIV_KEY_INFO_new:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS8_PRIV_KEY_INFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PKCS8_PRIV_KEY_INFO_new, .-PKCS8_PRIV_KEY_INFO_new
	.globl	PKCS8_PRIV_KEY_INFO_free
	.type	PKCS8_PRIV_KEY_INFO_free, @function
PKCS8_PRIV_KEY_INFO_free:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS8_PRIV_KEY_INFO_it@PLT
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
.LFE525:
	.size	PKCS8_PRIV_KEY_INFO_free, .-PKCS8_PRIV_KEY_INFO_free
	.globl	PKCS8_pkey_set0
	.type	PKCS8_pkey_set0, @function
PKCS8_pkey_set0:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L18
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L19
.L20:
	cmpq	$0, -40(%rbp)
	je	.L21
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set0@PLT
.L21:
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	PKCS8_pkey_set0, .-PKCS8_pkey_set0
	.globl	PKCS8_pkey_get0
	.type	PKCS8_pkey_get0, @function
PKCS8_pkey_get0:
.LFB527:
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
	movq	%r8, -40(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L23
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L23:
	cmpq	$0, -16(%rbp)
	je	.L24
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
.L24:
	cmpq	$0, -32(%rbp)
	je	.L25
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L25:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	PKCS8_pkey_get0, .-PKCS8_pkey_get0
	.globl	PKCS8_pkey_get0_attrs
	.type	PKCS8_pkey_get0_attrs, @function
PKCS8_pkey_get0_attrs:
.LFB528:
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
.LFE528:
	.size	PKCS8_pkey_get0_attrs, .-PKCS8_pkey_get0_attrs
	.globl	PKCS8_pkey_add1_attr_by_NID
	.type	PKCS8_pkey_add1_attr_by_NID, @function
PKCS8_pkey_add1_attr_by_NID:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	call	X509at_add1_attr_by_NID@PLT
	testq	%rax, %rax
	je	.L30
	movl	$1, %eax
	jmp	.L31
.L30:
	movl	$0, %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	PKCS8_pkey_add1_attr_by_NID, .-PKCS8_pkey_add1_attr_by_NID
	.globl	PKCS8_pkey_add1_attr_by_OBJ
	.type	PKCS8_pkey_add1_attr_by_OBJ, @function
PKCS8_pkey_add1_attr_by_OBJ:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdi
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	X509at_add1_attr_by_OBJ@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	PKCS8_pkey_add1_attr_by_OBJ, .-PKCS8_pkey_add1_attr_by_OBJ
	.globl	PKCS8_pkey_add1_attr
	.type	PKCS8_pkey_add1_attr, @function
PKCS8_pkey_add1_attr:
.LFB531:
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
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509at_add1_attr@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	PKCS8_pkey_add1_attr, .-PKCS8_pkey_add1_attr
	.section	.rodata
.LC4:
	.string	"PKCS8_PRIV_KEY_INFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	PKCS8_PRIV_KEY_INFO_seq_tt
	.quad	4
	.quad	PKCS8_PRIV_KEY_INFO_aux
	.quad	32
	.quad	.LC4
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
