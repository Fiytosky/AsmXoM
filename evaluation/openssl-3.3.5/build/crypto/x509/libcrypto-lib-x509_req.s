	.file	"x509_req.c"
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
	.string	"../crypto/x509/x509_req.c"
	.text
	.globl	X509_to_X509_REQ
	.type	X509_to_X509_REQ, @function
X509_to_X509_REQ:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L6
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rbx
	leaq	.LC0(%rip), %rax
	movl	$38, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_set_subject_name@PLT
	testl	%eax, %eax
	je	.L15
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L16
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_set_pubkey@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L17
	cmpq	$0, -64(%rbp)
	je	.L12
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_sign@PLT
	testl	%eax, %eax
	je	.L18
.L12:
	movq	-24(%rbp), %rax
	jmp	.L13
.L14:
	nop
	jmp	.L7
.L15:
	nop
	jmp	.L7
.L16:
	nop
	jmp	.L7
.L17:
	nop
	jmp	.L7
.L18:
	nop
.L7:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_free@PLT
	movl	$0, %eax
.L13:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	X509_to_X509_REQ, .-X509_to_X509_REQ
	.globl	X509_REQ_get_pubkey
	.type	X509_REQ_get_pubkey, @function
X509_REQ_get_pubkey:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	X509_REQ_get_pubkey, .-X509_REQ_get_pubkey
	.globl	X509_REQ_get0_pubkey
	.type	X509_REQ_get0_pubkey, @function
X509_REQ_get0_pubkey:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get0@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	X509_REQ_get0_pubkey, .-X509_REQ_get0_pubkey
	.globl	X509_REQ_get_X509_PUBKEY
	.type	X509_REQ_get_X509_PUBKEY, @function
X509_REQ_get_X509_PUBKEY:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	X509_REQ_get_X509_PUBKEY, .-X509_REQ_get_X509_PUBKEY
	.globl	X509_REQ_check_private_key
	.type	X509_REQ_check_private_key, @function
X509_REQ_check_private_key:
.LFB524:
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
	movq	%rax, %rdi
	call	X509_REQ_get0_pubkey@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_x509_check_private_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	X509_REQ_check_private_key, .-X509_REQ_check_private_key
	.data
	.align 8
	.type	ext_nid_list, @object
	.size	ext_nid_list, 12
ext_nid_list:
	.long	172
	.long	171
	.long	0
	.section	.data.rel.local,"aw"
	.align 8
	.type	ext_nids, @object
	.size	ext_nids, 8
ext_nids:
	.quad	ext_nid_list
	.text
	.globl	X509_REQ_extension_nid
	.type	X509_REQ_extension_nid, @function
X509_REQ_extension_nid:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
.L33:
	movq	ext_nids(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L30
	movl	$0, %eax
	jmp	.L31
.L30:
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.L32
	movl	$1, %eax
	jmp	.L31
.L32:
	addl	$1, -4(%rbp)
	jmp	.L33
.L31:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	X509_REQ_extension_nid, .-X509_REQ_extension_nid
	.globl	X509_REQ_get_extension_nids
	.type	X509_REQ_get_extension_nids, @function
X509_REQ_get_extension_nids:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ext_nids(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	X509_REQ_get_extension_nids, .-X509_REQ_get_extension_nids
	.globl	X509_REQ_set_extension_nids
	.type	X509_REQ_set_extension_nids, @function
X509_REQ_set_extension_nids:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, ext_nids(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	X509_REQ_set_extension_nids, .-X509_REQ_set_extension_nids
	.globl	X509_REQ_get_extensions
	.type	X509_REQ_get_extensions, @function
X509_REQ_get_extensions:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L38
	movq	ext_nids(%rip), %rax
	testq	%rax, %rax
	jne	.L39
.L38:
	movl	$0, %eax
	jmp	.L48
.L39:
	movq	ext_nids(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L41
.L45:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$-1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_REQ_get_attr_by_NID@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	js	.L50
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_REQ_get_attr@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_get0_type@PLT
	movq	%rax, -8(%rbp)
	jmp	.L44
.L50:
	nop
	addq	$4, -16(%rbp)
.L41:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L45
.L44:
	cmpq	$0, -8(%rbp)
	jne	.L46
	call	OPENSSL_sk_new_null@PLT
	jmp	.L48
.L46:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	je	.L47
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$140, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L47:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	call	X509_EXTENSIONS_it@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_item_d2i@PLT
	nop
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	X509_REQ_get_extensions, .-X509_REQ_get_extensions
	.globl	X509_REQ_add_extensions_nid
	.type	X509_REQ_add_extensions_nid, @function
X509_REQ_add_extensions_nid:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	X509_EXTENSIONS_it@PLT
	movq	%rax, %rdx
	leaq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L52
	movl	$0, %eax
	jmp	.L54
.L52:
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movl	-36(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	X509_REQ_add1_attr_by_NID@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$166, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	X509_REQ_add_extensions_nid, .-X509_REQ_add_extensions_nid
	.globl	X509_REQ_add_extensions
	.type	X509_REQ_add_extensions, @function
X509_REQ_add_extensions:
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
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$172, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_add_extensions_nid@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	X509_REQ_add_extensions, .-X509_REQ_add_extensions
	.globl	X509_REQ_get_attr_count
	.type	X509_REQ_get_attr_count, @function
X509_REQ_get_attr_count:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	X509at_get_attr_count@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	X509_REQ_get_attr_count, .-X509_REQ_get_attr_count
	.globl	X509_REQ_get_attr_by_NID
	.type	X509_REQ_get_attr_by_NID, @function
X509_REQ_get_attr_by_NID:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr_by_NID@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	X509_REQ_get_attr_by_NID, .-X509_REQ_get_attr_by_NID
	.globl	X509_REQ_get_attr_by_OBJ
	.type	X509_REQ_get_attr_by_OBJ, @function
X509_REQ_get_attr_by_OBJ:
.LFB533:
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
	movq	48(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509at_get_attr_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	X509_REQ_get_attr_by_OBJ, .-X509_REQ_get_attr_by_OBJ
	.globl	X509_REQ_get_attr
	.type	X509_REQ_get_attr, @function
X509_REQ_get_attr:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	X509_REQ_get_attr, .-X509_REQ_get_attr
	.globl	X509_REQ_delete_attr
	.type	X509_REQ_delete_attr, @function
X509_REQ_delete_attr:
.LFB535:
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
	jne	.L66
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509at_delete_attr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L68
	movq	-24(%rbp), %rax
	movl	$1, 16(%rax)
.L68:
	movq	-8(%rbp), %rax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	X509_REQ_delete_attr, .-X509_REQ_delete_attr
	.globl	X509_REQ_add1_attr
	.type	X509_REQ_add1_attr, @function
X509_REQ_add1_attr:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L70
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509at_add1_attr@PLT
	testq	%rax, %rax
	jne	.L72
	movl	$0, %eax
	jmp	.L71
.L72:
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	X509_REQ_add1_attr, .-X509_REQ_add1_attr
	.globl	X509_REQ_add1_attr_by_OBJ
	.type	X509_REQ_add1_attr_by_OBJ, @function
X509_REQ_add1_attr_by_OBJ:
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
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L74
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L75
.L74:
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdi
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	X509at_add1_attr_by_OBJ@PLT
	testq	%rax, %rax
	jne	.L76
	movl	$0, %eax
	jmp	.L75
.L76:
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$1, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	X509_REQ_add1_attr_by_OBJ, .-X509_REQ_add1_attr_by_OBJ
	.globl	X509_REQ_add1_attr_by_NID
	.type	X509_REQ_add1_attr_by_NID, @function
X509_REQ_add1_attr_by_NID:
.LFB538:
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
	cmpq	$0, -8(%rbp)
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$245, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L79
.L78:
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	call	X509at_add1_attr_by_NID@PLT
	testq	%rax, %rax
	jne	.L80
	movl	$0, %eax
	jmp	.L79
.L80:
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$1, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	X509_REQ_add1_attr_by_NID, .-X509_REQ_add1_attr_by_NID
	.globl	X509_REQ_add1_attr_by_txt
	.type	X509_REQ_add1_attr_by_txt, @function
X509_REQ_add1_attr_by_txt:
.LFB539:
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
	cmpq	$0, -8(%rbp)
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$260, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rdi
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	X509at_add1_attr_by_txt@PLT
	testq	%rax, %rax
	jne	.L84
	movl	$0, %eax
	jmp	.L83
.L84:
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$1, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	X509_REQ_add1_attr_by_txt, .-X509_REQ_add1_attr_by_txt
	.globl	X509_REQ_get_version
	.type	X509_REQ_get_version, @function
X509_REQ_get_version:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	X509_REQ_get_version, .-X509_REQ_get_version
	.globl	X509_REQ_get_subject_name
	.type	X509_REQ_get_subject_name, @function
X509_REQ_get_subject_name:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	X509_REQ_get_subject_name, .-X509_REQ_get_subject_name
	.globl	X509_REQ_get0_signature
	.type	X509_REQ_get0_signature, @function
X509_REQ_get0_signature:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L90
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L90:
	cmpq	$0, -24(%rbp)
	je	.L92
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L92:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	X509_REQ_get0_signature, .-X509_REQ_get0_signature
	.globl	X509_REQ_set0_signature
	.type	X509_REQ_set0_signature, @function
X509_REQ_set0_signature:
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
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
.L94:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	X509_REQ_set0_signature, .-X509_REQ_set0_signature
	.globl	X509_REQ_set1_signature_algo
	.type	X509_REQ_set1_signature_algo, @function
X509_REQ_set1_signature_algo:
.LFB544:
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
	leaq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_ALGOR_copy@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	X509_REQ_set1_signature_algo, .-X509_REQ_set1_signature_algo
	.globl	X509_REQ_get_signature_nid
	.type	X509_REQ_get_signature_nid, @function
X509_REQ_get_signature_nid:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	X509_REQ_get_signature_nid, .-X509_REQ_get_signature_nid
	.globl	i2d_re_X509_REQ_tbs
	.type	i2d_re_X509_REQ_tbs, @function
i2d_re_X509_REQ_tbs:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L100
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$309, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L101
.L100:
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_REQ_INFO@PLT
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	i2d_re_X509_REQ_tbs, .-i2d_re_X509_REQ_tbs
	.section	.rodata
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 17
__func__.7:
	.string	"X509_to_X509_REQ"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 24
__func__.6:
	.string	"X509_REQ_get_extensions"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 21
__func__.5:
	.string	"X509_REQ_delete_attr"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 19
__func__.4:
	.string	"X509_REQ_add1_attr"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 26
__func__.3:
	.string	"X509_REQ_add1_attr_by_OBJ"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 26
__func__.2:
	.string	"X509_REQ_add1_attr_by_NID"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 26
__func__.1:
	.string	"X509_REQ_add1_attr_by_txt"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"i2d_re_X509_REQ_tbs"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
