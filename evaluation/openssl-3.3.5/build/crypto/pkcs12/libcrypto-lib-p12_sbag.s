	.file	"p12_sbag.c"
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
	.globl	PKCS12_get_attr
	.type	PKCS12_get_attr, @function
PKCS12_get_attr:
.LFB520:
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
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	PKCS12_get_attr_gen@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PKCS12_get_attr, .-PKCS12_get_attr
	.globl	PKCS12_SAFEBAG_get0_attr
	.type	PKCS12_SAFEBAG_get0_attr, @function
PKCS12_SAFEBAG_get0_attr:
.LFB521:
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
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	PKCS12_get_attr_gen@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	PKCS12_SAFEBAG_get0_attr, .-PKCS12_SAFEBAG_get0_attr
	.globl	PKCS8_get_attr
	.type	PKCS8_get_attr, @function
PKCS8_get_attr:
.LFB522:
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
	movq	%rax, %rdi
	call	PKCS8_pkey_get0_attrs@PLT
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	PKCS12_get_attr_gen@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PKCS8_get_attr, .-PKCS8_get_attr
	.globl	PKCS12_SAFEBAG_get0_p8inf
	.type	PKCS12_SAFEBAG_get0_p8inf, @function
PKCS12_SAFEBAG_get0_p8inf:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_nid@PLT
	cmpl	$150, %eax
	je	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	PKCS12_SAFEBAG_get0_p8inf, .-PKCS12_SAFEBAG_get0_p8inf
	.globl	PKCS12_SAFEBAG_get0_pkcs8
	.type	PKCS12_SAFEBAG_get0_pkcs8, @function
PKCS12_SAFEBAG_get0_pkcs8:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$151, %eax
	je	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PKCS12_SAFEBAG_get0_pkcs8, .-PKCS12_SAFEBAG_get0_pkcs8
	.globl	PKCS12_SAFEBAG_get0_safes
	.type	PKCS12_SAFEBAG_get0_safes, @function
PKCS12_SAFEBAG_get0_safes:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$155, %eax
	je	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	PKCS12_SAFEBAG_get0_safes, .-PKCS12_SAFEBAG_get0_safes
	.globl	PKCS12_SAFEBAG_get0_type
	.type	PKCS12_SAFEBAG_get0_type, @function
PKCS12_SAFEBAG_get0_type:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	PKCS12_SAFEBAG_get0_type, .-PKCS12_SAFEBAG_get0_type
	.globl	PKCS12_SAFEBAG_get_nid
	.type	PKCS12_SAFEBAG_get_nid, @function
PKCS12_SAFEBAG_get_nid:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	PKCS12_SAFEBAG_get_nid, .-PKCS12_SAFEBAG_get_nid
	.globl	PKCS12_SAFEBAG_get_bag_nid
	.type	PKCS12_SAFEBAG_get_bag_nid, @function
PKCS12_SAFEBAG_get_bag_nid:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$152, -4(%rbp)
	je	.L25
	cmpl	$153, -4(%rbp)
	je	.L25
	cmpl	$154, -4(%rbp)
	je	.L25
	movl	$-1, %eax
	jmp	.L26
.L25:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	PKCS12_SAFEBAG_get_bag_nid, .-PKCS12_SAFEBAG_get_bag_nid
	.globl	PKCS12_SAFEBAG_get0_bag_type
	.type	PKCS12_SAFEBAG_get0_bag_type, @function
PKCS12_SAFEBAG_get0_bag_type:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	PKCS12_SAFEBAG_get0_bag_type, .-PKCS12_SAFEBAG_get0_bag_type
	.globl	PKCS12_SAFEBAG_get0_bag_obj
	.type	PKCS12_SAFEBAG_get0_bag_obj, @function
PKCS12_SAFEBAG_get0_bag_obj:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	PKCS12_SAFEBAG_get0_bag_obj, .-PKCS12_SAFEBAG_get0_bag_obj
	.globl	PKCS12_SAFEBAG_get1_cert
	.type	PKCS12_SAFEBAG_get1_cert, @function
PKCS12_SAFEBAG_get1_cert:
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
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_nid@PLT
	cmpl	$152, %eax
	je	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$158, %eax
	je	.L34
	movl	$0, %eax
	jmp	.L33
.L34:
	call	X509_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_unpack@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	PKCS12_SAFEBAG_get1_cert, .-PKCS12_SAFEBAG_get1_cert
	.globl	PKCS12_SAFEBAG_get1_crl
	.type	PKCS12_SAFEBAG_get1_crl, @function
PKCS12_SAFEBAG_get1_crl:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_nid@PLT
	cmpl	$153, %eax
	je	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$160, %eax
	je	.L38
	movl	$0, %eax
	jmp	.L37
.L38:
	call	X509_CRL_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_unpack@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	PKCS12_SAFEBAG_get1_crl, .-PKCS12_SAFEBAG_get1_crl
	.globl	PKCS12_SAFEBAG_get1_cert_ex
	.type	PKCS12_SAFEBAG_get1_cert_ex, @function
PKCS12_SAFEBAG_get1_cert_ex:
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
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_nid@PLT
	cmpl	$152, %eax
	je	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$158, %eax
	je	.L42
	movl	$0, %eax
	jmp	.L41
.L42:
	call	X509_it@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	ASN1_item_unpack_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_set0_libctx@PLT
	testl	%eax, %eax
	jne	.L43
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
	jmp	.L41
.L43:
	movq	-8(%rbp), %rax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	PKCS12_SAFEBAG_get1_cert_ex, .-PKCS12_SAFEBAG_get1_cert_ex
	.globl	PKCS12_SAFEBAG_get1_crl_ex
	.type	PKCS12_SAFEBAG_get1_crl_ex, @function
PKCS12_SAFEBAG_get1_crl_ex:
.LFB534:
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
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_nid@PLT
	cmpl	$153, %eax
	je	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$160, %eax
	je	.L47
	movl	$0, %eax
	jmp	.L46
.L47:
	call	X509_CRL_it@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	ASN1_item_unpack_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_crl_set0_libctx@PLT
	testl	%eax, %eax
	jne	.L48
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movl	$0, %eax
	jmp	.L46
.L48:
	movq	-8(%rbp), %rax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	PKCS12_SAFEBAG_get1_crl_ex, .-PKCS12_SAFEBAG_get1_crl_ex
	.globl	PKCS12_SAFEBAG_create_cert
	.type	PKCS12_SAFEBAG_create_cert, @function
PKCS12_SAFEBAG_create_cert:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_it@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movl	$152, %ecx
	movl	$158, %edx
	movq	%rax, %rdi
	call	PKCS12_item_pack_safebag@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	PKCS12_SAFEBAG_create_cert, .-PKCS12_SAFEBAG_create_cert
	.globl	PKCS12_SAFEBAG_create_crl
	.type	PKCS12_SAFEBAG_create_crl, @function
PKCS12_SAFEBAG_create_crl:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_CRL_it@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movl	$153, %ecx
	movl	$160, %edx
	movq	%rax, %rdi
	call	PKCS12_item_pack_safebag@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	PKCS12_SAFEBAG_create_crl, .-PKCS12_SAFEBAG_create_crl
	.section	.rodata
.LC0:
	.string	"../crypto/pkcs12/p12_sbag.c"
	.text
	.globl	PKCS12_SAFEBAG_create_secret
	.type	PKCS12_SAFEBAG_create_secret, @function
PKCS12_SAFEBAG_create_secret:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	call	PKCS12_BAGS_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L55
.L54:
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	cmpl	$4, -40(%rbp)
	jne	.L56
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L58
.L57:
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L58
.L59:
	call	ASN1_TYPE_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L60
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$182, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L58
.L60:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
	nop
	call	PKCS12_SAFEBAG_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L62
	jmp	.L63
.L56:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$190, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L58
.L63:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L58
.L62:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$154, %edi
	call	OBJ_nid2obj@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	jmp	.L55
.L58:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_BAGS_free@PLT
	movl	$0, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	PKCS12_SAFEBAG_create_secret, .-PKCS12_SAFEBAG_create_secret
	.globl	PKCS12_SAFEBAG_create0_p8inf
	.type	PKCS12_SAFEBAG_create0_p8inf, @function
PKCS12_SAFEBAG_create0_p8inf:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	PKCS12_SAFEBAG_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L65
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$214, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L66
.L65:
	movl	$150, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	PKCS12_SAFEBAG_create0_p8inf, .-PKCS12_SAFEBAG_create0_p8inf
	.globl	PKCS12_SAFEBAG_create0_pkcs8
	.type	PKCS12_SAFEBAG_create0_pkcs8, @function
PKCS12_SAFEBAG_create0_pkcs8:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	PKCS12_SAFEBAG_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L68
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L69
.L68:
	movl	$151, %edi
	call	OBJ_nid2obj@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	PKCS12_SAFEBAG_create0_pkcs8, .-PKCS12_SAFEBAG_create0_pkcs8
	.globl	PKCS12_SAFEBAG_create_pkcs8_encrypt_ex
	.type	PKCS12_SAFEBAG_create_pkcs8_encrypt_ex, @function
PKCS12_SAFEBAG_create_pkcs8_encrypt_ex:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	ERR_set_mark@PLT
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L71
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -16(%rbp)
.L71:
	call	ERR_pop_to_mark@PLT
	cmpq	$0, -16(%rbp)
	je	.L72
	movl	$-1, -36(%rbp)
.L72:
	movl	-60(%rbp), %r9d
	movq	-56(%rbp), %r8
	movl	-40(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %eax
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movl	-64(%rbp), %edi
	pushq	%rdi
	movl	%eax, %edi
	call	PKCS8_encrypt_ex@PLT
	addq	$32, %rsp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L76
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_create0_pkcs8@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L77
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	jmp	.L74
.L76:
	nop
	jmp	.L74
.L77:
	nop
.L74:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	PKCS12_SAFEBAG_create_pkcs8_encrypt_ex, .-PKCS12_SAFEBAG_create_pkcs8_encrypt_ex
	.globl	PKCS12_SAFEBAG_create_pkcs8_encrypt
	.type	PKCS12_SAFEBAG_create_pkcs8_encrypt, @function
PKCS12_SAFEBAG_create_pkcs8_encrypt:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-32(%rbp), %r8d
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	16(%rbp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %edi
	call	PKCS12_SAFEBAG_create_pkcs8_encrypt_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	PKCS12_SAFEBAG_create_pkcs8_encrypt, .-PKCS12_SAFEBAG_create_pkcs8_encrypt
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 29
__func__.2:
	.string	"PKCS12_SAFEBAG_create_secret"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 29
__func__.1:
	.string	"PKCS12_SAFEBAG_create0_p8inf"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"PKCS12_SAFEBAG_create0_pkcs8"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
