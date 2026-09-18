	.file	"cms_att.c"
	.text
	.section	.rodata
	.align 32
	.type	cms_attribute_properties, @object
	.size	cms_attribute_properties, 56
cms_attribute_properties:
	.long	50
	.long	113
	.long	51
	.long	113
	.long	52
	.long	97
	.long	53
	.long	2
	.long	223
	.long	97
	.long	1086
	.long	97
	.long	212
	.long	97
	.text
	.globl	CMS_signed_get_attr_count
	.type	CMS_signed_get_attr_count, @function
CMS_signed_get_attr_count:
.LFB633:
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
	call	X509at_get_attr_count@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	CMS_signed_get_attr_count, .-CMS_signed_get_attr_count
	.globl	CMS_signed_get_attr_by_NID
	.type	CMS_signed_get_attr_by_NID, @function
CMS_signed_get_attr_by_NID:
.LFB634:
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
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr_by_NID@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	CMS_signed_get_attr_by_NID, .-CMS_signed_get_attr_by_NID
	.globl	CMS_signed_get_attr_by_OBJ
	.type	CMS_signed_get_attr_by_OBJ, @function
CMS_signed_get_attr_by_OBJ:
.LFB635:
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
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509at_get_attr_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	CMS_signed_get_attr_by_OBJ, .-CMS_signed_get_attr_by_OBJ
	.globl	CMS_signed_get_attr
	.type	CMS_signed_get_attr, @function
CMS_signed_get_attr:
.LFB636:
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
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	CMS_signed_get_attr, .-CMS_signed_get_attr
	.globl	CMS_signed_delete_attr
	.type	CMS_signed_delete_attr, @function
CMS_signed_delete_attr:
.LFB637:
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
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509at_delete_attr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	CMS_signed_delete_attr, .-CMS_signed_delete_attr
	.globl	CMS_signed_add1_attr
	.type	CMS_signed_add1_attr, @function
CMS_signed_add1_attr:
.LFB638:
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
	call	ossl_x509at_add1_attr@PLT
	testq	%rax, %rax
	je	.L12
	movl	$1, %eax
	jmp	.L13
.L12:
	movl	$0, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	CMS_signed_add1_attr, .-CMS_signed_add1_attr
	.globl	CMS_signed_add1_attr_by_OBJ
	.type	CMS_signed_add1_attr_by_OBJ, @function
CMS_signed_add1_attr_by_OBJ:
.LFB639:
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
	call	ossl_x509at_add1_attr_by_OBJ@PLT
	testq	%rax, %rax
	je	.L15
	movl	$1, %eax
	jmp	.L16
.L15:
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	CMS_signed_add1_attr_by_OBJ, .-CMS_signed_add1_attr_by_OBJ
	.globl	CMS_signed_add1_attr_by_NID
	.type	CMS_signed_add1_attr_by_NID, @function
CMS_signed_add1_attr_by_NID:
.LFB640:
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
	call	ossl_x509at_add1_attr_by_NID@PLT
	testq	%rax, %rax
	je	.L18
	movl	$1, %eax
	jmp	.L19
.L18:
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	CMS_signed_add1_attr_by_NID, .-CMS_signed_add1_attr_by_NID
	.globl	CMS_signed_add1_attr_by_txt
	.type	CMS_signed_add1_attr_by_txt, @function
CMS_signed_add1_attr_by_txt:
.LFB641:
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
	call	ossl_x509at_add1_attr_by_txt@PLT
	testq	%rax, %rax
	je	.L21
	movl	$1, %eax
	jmp	.L22
.L21:
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	CMS_signed_add1_attr_by_txt, .-CMS_signed_add1_attr_by_txt
	.globl	CMS_signed_get0_data_by_OBJ
	.type	CMS_signed_get0_data_by_OBJ, @function
CMS_signed_get0_data_by_OBJ:
.LFB642:
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
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	X509at_get0_data_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	CMS_signed_get0_data_by_OBJ, .-CMS_signed_get0_data_by_OBJ
	.globl	CMS_unsigned_get_attr_count
	.type	CMS_unsigned_get_attr_count, @function
CMS_unsigned_get_attr_count:
.LFB643:
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
.LFE643:
	.size	CMS_unsigned_get_attr_count, .-CMS_unsigned_get_attr_count
	.globl	CMS_unsigned_get_attr_by_NID
	.type	CMS_unsigned_get_attr_by_NID, @function
CMS_unsigned_get_attr_by_NID:
.LFB644:
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
.LFE644:
	.size	CMS_unsigned_get_attr_by_NID, .-CMS_unsigned_get_attr_by_NID
	.globl	CMS_unsigned_get_attr_by_OBJ
	.type	CMS_unsigned_get_attr_by_OBJ, @function
CMS_unsigned_get_attr_by_OBJ:
.LFB645:
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
.LFE645:
	.size	CMS_unsigned_get_attr_by_OBJ, .-CMS_unsigned_get_attr_by_OBJ
	.globl	CMS_unsigned_get_attr
	.type	CMS_unsigned_get_attr, @function
CMS_unsigned_get_attr:
.LFB646:
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
.LFE646:
	.size	CMS_unsigned_get_attr, .-CMS_unsigned_get_attr
	.globl	CMS_unsigned_delete_attr
	.type	CMS_unsigned_delete_attr, @function
CMS_unsigned_delete_attr:
.LFB647:
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
	call	X509at_delete_attr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	CMS_unsigned_delete_attr, .-CMS_unsigned_delete_attr
	.globl	CMS_unsigned_add1_attr
	.type	CMS_unsigned_add1_attr, @function
CMS_unsigned_add1_attr:
.LFB648:
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
	leaq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_x509at_add1_attr@PLT
	testq	%rax, %rax
	je	.L36
	movl	$1, %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	CMS_unsigned_add1_attr, .-CMS_unsigned_add1_attr
	.globl	CMS_unsigned_add1_attr_by_OBJ
	.type	CMS_unsigned_add1_attr_by_OBJ, @function
CMS_unsigned_add1_attr_by_OBJ:
.LFB649:
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
	leaq	48(%rax), %rdi
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	ossl_x509at_add1_attr_by_OBJ@PLT
	testq	%rax, %rax
	je	.L39
	movl	$1, %eax
	jmp	.L40
.L39:
	movl	$0, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	CMS_unsigned_add1_attr_by_OBJ, .-CMS_unsigned_add1_attr_by_OBJ
	.globl	CMS_unsigned_add1_attr_by_NID
	.type	CMS_unsigned_add1_attr_by_NID, @function
CMS_unsigned_add1_attr_by_NID:
.LFB650:
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
	leaq	48(%rax), %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	call	ossl_x509at_add1_attr_by_NID@PLT
	testq	%rax, %rax
	je	.L42
	movl	$1, %eax
	jmp	.L43
.L42:
	movl	$0, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	CMS_unsigned_add1_attr_by_NID, .-CMS_unsigned_add1_attr_by_NID
	.globl	CMS_unsigned_add1_attr_by_txt
	.type	CMS_unsigned_add1_attr_by_txt, @function
CMS_unsigned_add1_attr_by_txt:
.LFB651:
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
	leaq	48(%rax), %rdi
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	ossl_x509at_add1_attr_by_txt@PLT
	testq	%rax, %rax
	je	.L45
	movl	$1, %eax
	jmp	.L46
.L45:
	movl	$0, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	CMS_unsigned_add1_attr_by_txt, .-CMS_unsigned_add1_attr_by_txt
	.globl	CMS_unsigned_get0_data_by_OBJ
	.type	CMS_unsigned_get0_data_by_OBJ, @function
CMS_unsigned_get0_data_by_OBJ:
.LFB652:
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
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	X509at_get0_data_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	CMS_unsigned_get0_data_by_OBJ, .-CMS_unsigned_get0_data_by_OBJ
	.type	cms_attrib_get, @function
cms_attrib_get:
.LFB653:
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
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr_by_NID@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509at_get_attr@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	cms_attrib_get, .-cms_attrib_get
	.type	cms_check_attribute, @function
cms_check_attribute:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -32(%rbp)
	movl	$-1, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cms_attrib_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_count@PLT
	movl	%eax, -12(%rbp)
	movl	-24(%rbp), %eax
	andl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L54
	movl	-24(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L55
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cms_attrib_get
	testq	%rax, %rax
	jne	.L54
.L55:
	movl	-24(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L56
	cmpl	$1, -12(%rbp)
	jne	.L54
.L56:
	cmpl	$0, -12(%rbp)
	jne	.L57
.L54:
	movl	$0, %eax
	jmp	.L59
.L53:
	cmpl	$0, -32(%rbp)
	je	.L57
	movl	-24(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L57
	movl	-24(%rbp), %eax
	andl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L57
	movl	$0, %eax
	jmp	.L59
.L57:
	movl	$1, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	cms_check_attribute, .-cms_check_attribute
	.section	.rodata
.LC0:
	.string	"../crypto/cms/cms_att.c"
	.text
	.globl	ossl_cms_si_check_attributes
	.type	ossl_cms_si_check_attributes, @function
ossl_cms_si_check_attributes:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_signed_get_attr_count@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CMS_unsigned_get_attr_count@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L61
.L65:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	cms_attribute_properties(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+cms_attribute_properties(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-8(%rbp), %ecx
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	%eax, %edi
	call	cms_check_attribute
	testl	%eax, %eax
	je	.L62
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movl	-12(%rbp), %ecx
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	%eax, %edi
	call	cms_check_attribute
	testl	%eax, %eax
	jne	.L63
.L62:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$282, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$161, %esi
	movl	$46, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L64
.L63:
	addl	$1, -4(%rbp)
.L61:
	cmpl	$6, -4(%rbp)
	jle	.L65
	movl	$1, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	ossl_cms_si_check_attributes, .-ossl_cms_si_check_attributes
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"ossl_cms_si_check_attributes"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
