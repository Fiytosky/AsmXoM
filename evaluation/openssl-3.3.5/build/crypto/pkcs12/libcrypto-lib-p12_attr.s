	.file	"p12_attr.c"
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
	.type	ossl_check_X509_ATTRIBUTE_sk_type, @function
ossl_check_X509_ATTRIBUTE_sk_type:
.LFB440:
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
.LFE440:
	.size	ossl_check_X509_ATTRIBUTE_sk_type, .-ossl_check_X509_ATTRIBUTE_sk_type
	.globl	PKCS12_add_localkeyid
	.type	PKCS12_add_localkeyid, @function
PKCS12_add_localkeyid:
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$157, %esi
	call	X509at_add1_attr_by_NID@PLT
	testq	%rax, %rax
	je	.L8
	movl	$1, %eax
	jmp	.L9
.L8:
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	PKCS12_add_localkeyid, .-PKCS12_add_localkeyid
	.globl	PKCS8_add_keyusage
	.type	PKCS8_add_keyusage, @function
PKCS8_add_keyusage:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movb	%al, -1(%rbp)
	leaq	-1(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$83, %esi
	movq	%rax, %rdi
	call	PKCS8_pkey_add1_attr_by_NID@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	PKCS8_add_keyusage, .-PKCS8_add_keyusage
	.globl	PKCS12_add_friendlyname_asc
	.type	PKCS12_add_friendlyname_asc, @function
PKCS12_add_friendlyname_asc:
.LFB517:
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
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rcx
	movl	$4097, %edx
	movl	$156, %esi
	call	X509at_add1_attr_by_NID@PLT
	testq	%rax, %rax
	je	.L13
	movl	$1, %eax
	jmp	.L14
.L13:
	movl	$0, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PKCS12_add_friendlyname_asc, .-PKCS12_add_friendlyname_asc
	.globl	PKCS12_add_friendlyname_utf8
	.type	PKCS12_add_friendlyname_utf8, @function
PKCS12_add_friendlyname_utf8:
.LFB518:
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
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rcx
	movl	$4096, %edx
	movl	$156, %esi
	call	X509at_add1_attr_by_NID@PLT
	testq	%rax, %rax
	je	.L16
	movl	$1, %eax
	jmp	.L17
.L16:
	movl	$0, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	PKCS12_add_friendlyname_utf8, .-PKCS12_add_friendlyname_utf8
	.globl	PKCS12_add_friendlyname_uni
	.type	PKCS12_add_friendlyname_uni, @function
PKCS12_add_friendlyname_uni:
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rcx
	movl	$4098, %edx
	movl	$156, %esi
	call	X509at_add1_attr_by_NID@PLT
	testq	%rax, %rax
	je	.L19
	movl	$1, %eax
	jmp	.L20
.L19:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	PKCS12_add_friendlyname_uni, .-PKCS12_add_friendlyname_uni
	.globl	PKCS12_add_CSPName_asc
	.type	PKCS12_add_CSPName_asc, @function
PKCS12_add_CSPName_asc:
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %r8d
	movq	%rax, %rcx
	movl	$4097, %edx
	movl	$417, %esi
	call	X509at_add1_attr_by_NID@PLT
	testq	%rax, %rax
	je	.L22
	movl	$1, %eax
	jmp	.L23
.L22:
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PKCS12_add_CSPName_asc, .-PKCS12_add_CSPName_asc
	.globl	PKCS12_add1_attr_by_NID
	.type	PKCS12_add1_attr_by_NID, @function
PKCS12_add1_attr_by_NID:
.LFB521:
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
	leaq	16(%rax), %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	call	X509at_add1_attr_by_NID@PLT
	testq	%rax, %rax
	je	.L25
	movl	$1, %eax
	jmp	.L26
.L25:
	movl	$0, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	PKCS12_add1_attr_by_NID, .-PKCS12_add1_attr_by_NID
	.globl	PKCS12_add1_attr_by_txt
	.type	PKCS12_add1_attr_by_txt, @function
PKCS12_add1_attr_by_txt:
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
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdi
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	X509at_add1_attr_by_txt@PLT
	testq	%rax, %rax
	je	.L28
	movl	$1, %eax
	jmp	.L29
.L28:
	movl	$0, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PKCS12_add1_attr_by_txt, .-PKCS12_add1_attr_by_txt
	.globl	PKCS12_get_attr_gen
	.type	PKCS12_get_attr_gen, @function
PKCS12_get_attr_gen:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr_by_NID@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_get0_type@PLT
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	PKCS12_get_attr_gen, .-PKCS12_get_attr_gen
	.globl	PKCS12_get_friendlyname
	.type	PKCS12_get_friendlyname, @function
PKCS12_get_friendlyname:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get0_attr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$30, %eax
	je	.L36
	movl	$0, %eax
	jmp	.L35
.L36:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_uni2utf8@PLT
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PKCS12_get_friendlyname, .-PKCS12_get_friendlyname
	.globl	PKCS12_SAFEBAG_get0_attrs
	.type	PKCS12_SAFEBAG_get0_attrs, @function
PKCS12_SAFEBAG_get0_attrs:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	PKCS12_SAFEBAG_get0_attrs, .-PKCS12_SAFEBAG_get0_attrs
	.globl	PKCS12_SAFEBAG_set0_attrs
	.type	PKCS12_SAFEBAG_set0_attrs, @function
PKCS12_SAFEBAG_set0_attrs:
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
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
.L40:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	PKCS12_SAFEBAG_set0_attrs, .-PKCS12_SAFEBAG_set0_attrs
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
