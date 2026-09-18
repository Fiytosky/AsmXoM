	.file	"ocsp_ext.c"
	.text
	.type	ossl_check_ASN1_OBJECT_type, @function
ossl_check_ASN1_OBJECT_type:
.LFB57:
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
.LFE57:
	.size	ossl_check_ASN1_OBJECT_type, .-ossl_check_ASN1_OBJECT_type
	.type	ossl_check_ASN1_OBJECT_sk_type, @function
ossl_check_ASN1_OBJECT_sk_type:
.LFB59:
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
.LFE59:
	.size	ossl_check_ASN1_OBJECT_sk_type, .-ossl_check_ASN1_OBJECT_sk_type
	.type	ossl_check_ASN1_OBJECT_freefunc_type, @function
ossl_check_ASN1_OBJECT_freefunc_type:
.LFB62:
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
.LFE62:
	.size	ossl_check_ASN1_OBJECT_freefunc_type, .-ossl_check_ASN1_OBJECT_freefunc_type
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
	.type	ossl_check_ACCESS_DESCRIPTION_type, @function
ossl_check_ACCESS_DESCRIPTION_type:
.LFB515:
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
.LFE515:
	.size	ossl_check_ACCESS_DESCRIPTION_type, .-ossl_check_ACCESS_DESCRIPTION_type
	.type	ossl_check_ACCESS_DESCRIPTION_sk_type, @function
ossl_check_ACCESS_DESCRIPTION_sk_type:
.LFB517:
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
.LFE517:
	.size	ossl_check_ACCESS_DESCRIPTION_sk_type, .-ossl_check_ACCESS_DESCRIPTION_sk_type
	.globl	OCSP_REQUEST_get_ext_count
	.type	OCSP_REQUEST_get_ext_count, @function
OCSP_REQUEST_get_ext_count:
.LFB646:
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
	call	X509v3_get_ext_count@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	OCSP_REQUEST_get_ext_count, .-OCSP_REQUEST_get_ext_count
	.globl	OCSP_REQUEST_get_ext_by_NID
	.type	OCSP_REQUEST_get_ext_by_NID, @function
OCSP_REQUEST_get_ext_by_NID:
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
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_NID@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	OCSP_REQUEST_get_ext_by_NID, .-OCSP_REQUEST_get_ext_by_NID
	.globl	OCSP_REQUEST_get_ext_by_OBJ
	.type	OCSP_REQUEST_get_ext_by_OBJ, @function
OCSP_REQUEST_get_ext_by_OBJ:
.LFB648:
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
	call	X509v3_get_ext_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	OCSP_REQUEST_get_ext_by_OBJ, .-OCSP_REQUEST_get_ext_by_OBJ
	.globl	OCSP_REQUEST_get_ext_by_critical
	.type	OCSP_REQUEST_get_ext_by_critical, @function
OCSP_REQUEST_get_ext_by_critical:
.LFB649:
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
	call	X509v3_get_ext_by_critical@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	OCSP_REQUEST_get_ext_by_critical, .-OCSP_REQUEST_get_ext_by_critical
	.globl	OCSP_REQUEST_get_ext
	.type	OCSP_REQUEST_get_ext, @function
OCSP_REQUEST_get_ext:
.LFB650:
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
	call	X509v3_get_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	OCSP_REQUEST_get_ext, .-OCSP_REQUEST_get_ext
	.globl	OCSP_REQUEST_delete_ext
	.type	OCSP_REQUEST_delete_ext, @function
OCSP_REQUEST_delete_ext:
.LFB651:
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
	call	X509v3_delete_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	OCSP_REQUEST_delete_ext, .-OCSP_REQUEST_delete_ext
	.globl	OCSP_REQUEST_get1_ext_d2i
	.type	OCSP_REQUEST_get1_ext_d2i, @function
OCSP_REQUEST_get1_ext_d2i:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	call	X509V3_get_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	OCSP_REQUEST_get1_ext_d2i, .-OCSP_REQUEST_get1_ext_d2i
	.globl	OCSP_REQUEST_add1_ext_i2d
	.type	OCSP_REQUEST_add1_ext_i2d, @function
OCSP_REQUEST_add1_ext_i2d:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rsi, %r8
	movl	%eax, %esi
	call	X509V3_add1_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	OCSP_REQUEST_add1_ext_i2d, .-OCSP_REQUEST_add1_ext_i2d
	.globl	OCSP_REQUEST_add_ext
	.type	OCSP_REQUEST_add_ext, @function
OCSP_REQUEST_add_ext:
.LFB654:
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
	leaq	24(%rax), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509v3_add_ext@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	OCSP_REQUEST_add_ext, .-OCSP_REQUEST_add_ext
	.globl	OCSP_ONEREQ_get_ext_count
	.type	OCSP_ONEREQ_get_ext_count, @function
OCSP_ONEREQ_get_ext_count:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509v3_get_ext_count@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	OCSP_ONEREQ_get_ext_count, .-OCSP_ONEREQ_get_ext_count
	.globl	OCSP_ONEREQ_get_ext_by_NID
	.type	OCSP_ONEREQ_get_ext_by_NID, @function
OCSP_ONEREQ_get_ext_by_NID:
.LFB656:
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
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_NID@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	OCSP_ONEREQ_get_ext_by_NID, .-OCSP_ONEREQ_get_ext_by_NID
	.globl	OCSP_ONEREQ_get_ext_by_OBJ
	.type	OCSP_ONEREQ_get_ext_by_OBJ, @function
OCSP_ONEREQ_get_ext_by_OBJ:
.LFB657:
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
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	OCSP_ONEREQ_get_ext_by_OBJ, .-OCSP_ONEREQ_get_ext_by_OBJ
	.globl	OCSP_ONEREQ_get_ext_by_critical
	.type	OCSP_ONEREQ_get_ext_by_critical, @function
OCSP_ONEREQ_get_ext_by_critical:
.LFB658:
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
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_critical@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	OCSP_ONEREQ_get_ext_by_critical, .-OCSP_ONEREQ_get_ext_by_critical
	.globl	OCSP_ONEREQ_get_ext
	.type	OCSP_ONEREQ_get_ext, @function
OCSP_ONEREQ_get_ext:
.LFB659:
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
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	OCSP_ONEREQ_get_ext, .-OCSP_ONEREQ_get_ext
	.globl	OCSP_ONEREQ_delete_ext
	.type	OCSP_ONEREQ_delete_ext, @function
OCSP_ONEREQ_delete_ext:
.LFB660:
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
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_delete_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	OCSP_ONEREQ_delete_ext, .-OCSP_ONEREQ_delete_ext
	.globl	OCSP_ONEREQ_get1_ext_d2i
	.type	OCSP_ONEREQ_get1_ext_d2i, @function
OCSP_ONEREQ_get1_ext_d2i:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	call	X509V3_get_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	OCSP_ONEREQ_get1_ext_d2i, .-OCSP_ONEREQ_get1_ext_d2i
	.globl	OCSP_ONEREQ_add1_ext_i2d
	.type	OCSP_ONEREQ_add1_ext_i2d, @function
OCSP_ONEREQ_add1_ext_i2d:
.LFB662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rsi, %r8
	movl	%eax, %esi
	call	X509V3_add1_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	OCSP_ONEREQ_add1_ext_i2d, .-OCSP_ONEREQ_add1_ext_i2d
	.globl	OCSP_ONEREQ_add_ext
	.type	OCSP_ONEREQ_add_ext, @function
OCSP_ONEREQ_add_ext:
.LFB663:
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
	leaq	8(%rax), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509v3_add_ext@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	OCSP_ONEREQ_add_ext, .-OCSP_ONEREQ_add_ext
	.globl	OCSP_BASICRESP_get_ext_count
	.type	OCSP_BASICRESP_get_ext_count, @function
OCSP_BASICRESP_get_ext_count:
.LFB664:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	X509v3_get_ext_count@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	OCSP_BASICRESP_get_ext_count, .-OCSP_BASICRESP_get_ext_count
	.globl	OCSP_BASICRESP_get_ext_by_NID
	.type	OCSP_BASICRESP_get_ext_by_NID, @function
OCSP_BASICRESP_get_ext_by_NID:
.LFB665:
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
	movq	40(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_NID@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	OCSP_BASICRESP_get_ext_by_NID, .-OCSP_BASICRESP_get_ext_by_NID
	.globl	OCSP_BASICRESP_get_ext_by_OBJ
	.type	OCSP_BASICRESP_get_ext_by_OBJ, @function
OCSP_BASICRESP_get_ext_by_OBJ:
.LFB666:
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
	movq	40(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	OCSP_BASICRESP_get_ext_by_OBJ, .-OCSP_BASICRESP_get_ext_by_OBJ
	.globl	OCSP_BASICRESP_get_ext_by_critical
	.type	OCSP_BASICRESP_get_ext_by_critical, @function
OCSP_BASICRESP_get_ext_by_critical:
.LFB667:
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
	movq	40(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_critical@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	OCSP_BASICRESP_get_ext_by_critical, .-OCSP_BASICRESP_get_ext_by_critical
	.globl	OCSP_BASICRESP_get_ext
	.type	OCSP_BASICRESP_get_ext, @function
OCSP_BASICRESP_get_ext:
.LFB668:
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
	movq	40(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	OCSP_BASICRESP_get_ext, .-OCSP_BASICRESP_get_ext
	.globl	OCSP_BASICRESP_delete_ext
	.type	OCSP_BASICRESP_delete_ext, @function
OCSP_BASICRESP_delete_ext:
.LFB669:
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
	movq	40(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_delete_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	OCSP_BASICRESP_delete_ext, .-OCSP_BASICRESP_delete_ext
	.globl	OCSP_BASICRESP_get1_ext_d2i
	.type	OCSP_BASICRESP_get1_ext_d2i, @function
OCSP_BASICRESP_get1_ext_d2i:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	call	X509V3_get_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	OCSP_BASICRESP_get1_ext_d2i, .-OCSP_BASICRESP_get1_ext_d2i
	.globl	OCSP_BASICRESP_add1_ext_i2d
	.type	OCSP_BASICRESP_add1_ext_i2d, @function
OCSP_BASICRESP_add1_ext_i2d:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rsi, %r8
	movl	%eax, %esi
	call	X509V3_add1_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	OCSP_BASICRESP_add1_ext_i2d, .-OCSP_BASICRESP_add1_ext_i2d
	.globl	OCSP_BASICRESP_add_ext
	.type	OCSP_BASICRESP_add_ext, @function
OCSP_BASICRESP_add_ext:
.LFB672:
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
	leaq	40(%rax), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509v3_add_ext@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	OCSP_BASICRESP_add_ext, .-OCSP_BASICRESP_add_ext
	.globl	OCSP_SINGLERESP_get_ext_count
	.type	OCSP_SINGLERESP_get_ext_count, @function
OCSP_SINGLERESP_get_ext_count:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509v3_get_ext_count@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	OCSP_SINGLERESP_get_ext_count, .-OCSP_SINGLERESP_get_ext_count
	.globl	OCSP_SINGLERESP_get_ext_by_NID
	.type	OCSP_SINGLERESP_get_ext_by_NID, @function
OCSP_SINGLERESP_get_ext_by_NID:
.LFB674:
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
	movq	32(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_NID@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	OCSP_SINGLERESP_get_ext_by_NID, .-OCSP_SINGLERESP_get_ext_by_NID
	.globl	OCSP_SINGLERESP_get_ext_by_OBJ
	.type	OCSP_SINGLERESP_get_ext_by_OBJ, @function
OCSP_SINGLERESP_get_ext_by_OBJ:
.LFB675:
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
	movq	32(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	OCSP_SINGLERESP_get_ext_by_OBJ, .-OCSP_SINGLERESP_get_ext_by_OBJ
	.globl	OCSP_SINGLERESP_get_ext_by_critical
	.type	OCSP_SINGLERESP_get_ext_by_critical, @function
OCSP_SINGLERESP_get_ext_by_critical:
.LFB676:
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
	movq	32(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_critical@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	OCSP_SINGLERESP_get_ext_by_critical, .-OCSP_SINGLERESP_get_ext_by_critical
	.globl	OCSP_SINGLERESP_get_ext
	.type	OCSP_SINGLERESP_get_ext, @function
OCSP_SINGLERESP_get_ext:
.LFB677:
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
	movq	32(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	OCSP_SINGLERESP_get_ext, .-OCSP_SINGLERESP_get_ext
	.globl	OCSP_SINGLERESP_delete_ext
	.type	OCSP_SINGLERESP_delete_ext, @function
OCSP_SINGLERESP_delete_ext:
.LFB678:
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
	movq	32(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_delete_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	OCSP_SINGLERESP_delete_ext, .-OCSP_SINGLERESP_delete_ext
	.globl	OCSP_SINGLERESP_get1_ext_d2i
	.type	OCSP_SINGLERESP_get1_ext_d2i, @function
OCSP_SINGLERESP_get1_ext_d2i:
.LFB679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	call	X509V3_get_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	OCSP_SINGLERESP_get1_ext_d2i, .-OCSP_SINGLERESP_get1_ext_d2i
	.globl	OCSP_SINGLERESP_add1_ext_i2d
	.type	OCSP_SINGLERESP_add1_ext_i2d, @function
OCSP_SINGLERESP_add1_ext_i2d:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rsi, %r8
	movl	%eax, %esi
	call	X509V3_add1_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	OCSP_SINGLERESP_add1_ext_i2d, .-OCSP_SINGLERESP_add1_ext_i2d
	.globl	OCSP_SINGLERESP_add_ext
	.type	OCSP_SINGLERESP_add_ext, @function
OCSP_SINGLERESP_add_ext:
.LFB681:
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
	leaq	32(%rax), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509v3_add_ext@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	OCSP_SINGLERESP_add_ext, .-OCSP_SINGLERESP_add_ext
	.section	.rodata
.LC0:
	.string	"../crypto/ocsp/ocsp_ext.c"
	.text
	.type	ocsp_add1_nonce, @function
ocsp_add1_nonce:
.LFB682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -68(%rbp)
	jg	.L88
	movl	$16, -68(%rbp)
.L88:
	movl	-68(%rbp), %eax
	movl	$4, %edx
	movl	%eax, %esi
	movl	$0, %edi
	call	ASN1_object_size@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jns	.L89
	movl	$0, %eax
	jmp	.L96
.L89:
	movl	-48(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$262, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L97
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-68(%rbp), %edx
	leaq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$4, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_put_object@PLT
	cmpq	$0, -64(%rbp)
	je	.L93
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L94
.L93:
	movq	-16(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jle	.L98
.L94:
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$2, %r8d
	movl	$0, %ecx
	movl	$366, %esi
	movq	%rax, %rdi
	call	X509V3_add1_i2d@PLT
	testl	%eax, %eax
	jle	.L99
	movl	$1, -4(%rbp)
	jmp	.L92
.L97:
	nop
	jmp	.L92
.L98:
	nop
	jmp	.L92
.L99:
	nop
.L92:
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$276, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	ocsp_add1_nonce, .-ocsp_add1_nonce
	.globl	OCSP_request_add1_nonce
	.type	OCSP_request_add1_nonce, @function
OCSP_request_add1_nonce:
.LFB683:
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
	leaq	24(%rax), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ocsp_add1_nonce
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	OCSP_request_add1_nonce, .-OCSP_request_add1_nonce
	.globl	OCSP_basic_add1_nonce
	.type	OCSP_basic_add1_nonce, @function
OCSP_basic_add1_nonce:
.LFB684:
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
	leaq	40(%rax), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ocsp_add1_nonce
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	OCSP_basic_add1_nonce, .-OCSP_basic_add1_nonce
	.globl	OCSP_check_nonce
	.type	OCSP_check_nonce, @function
OCSP_check_nonce:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	$-1, %edx
	movl	$366, %esi
	movq	%rax, %rdi
	call	OCSP_REQUEST_get_ext_by_NID@PLT
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	movl	$-1, %edx
	movl	$366, %esi
	movq	%rax, %rdi
	call	OCSP_BASICRESP_get_ext_by_NID@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L105
	cmpl	$0, -24(%rbp)
	jns	.L105
	movl	$2, %eax
	jmp	.L106
.L105:
	cmpl	$0, -20(%rbp)
	js	.L107
	cmpl	$0, -24(%rbp)
	jns	.L107
	movl	$-1, %eax
	jmp	.L106
.L107:
	cmpl	$0, -20(%rbp)
	jns	.L108
	cmpl	$0, -24(%rbp)
	js	.L108
	movl	$3, %eax
	jmp	.L106
.L108:
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OCSP_REQUEST_get_ext@PLT
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OCSP_BASICRESP_get_ext@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_data@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_data@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	testl	%eax, %eax
	je	.L109
	movl	$0, %eax
	jmp	.L106
.L109:
	movl	$1, %eax
.L106:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	OCSP_check_nonce, .-OCSP_check_nonce
	.globl	OCSP_copy_nonce
	.type	OCSP_copy_nonce, @function
OCSP_copy_nonce:
.LFB686:
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
	movl	$-1, %edx
	movl	$366, %esi
	movq	%rax, %rdi
	call	OCSP_REQUEST_get_ext_by_NID@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L111
	movl	$2, %eax
	jmp	.L112
.L111:
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OCSP_REQUEST_get_ext@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OCSP_BASICRESP_add_ext@PLT
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	OCSP_copy_nonce, .-OCSP_copy_nonce
	.globl	OCSP_crlID_new
	.type	OCSP_crlID_new, @function
OCSP_crlID_new:
.LFB687:
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
	movq	$0, -16(%rbp)
	call	OCSP_CRLID_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L123
	cmpq	$0, -24(%rbp)
	je	.L116
	call	ASN1_IA5STRING_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	je	.L125
.L116:
	cmpq	$0, -32(%rbp)
	je	.L118
	call	ASN1_INTEGER_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L127
.L118:
	cmpq	$0, -40(%rbp)
	je	.L120
	call	ASN1_GENERALIZEDTIME_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_set_string@PLT
	testl	%eax, %eax
	je	.L129
.L120:
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$367, %edi
	call	X509V3_EXT_i2d@PLT
	movq	%rax, -8(%rbp)
	jmp	.L115
.L123:
	nop
	jmp	.L115
.L124:
	nop
	jmp	.L115
.L125:
	nop
	jmp	.L115
.L126:
	nop
	jmp	.L115
.L127:
	nop
	jmp	.L115
.L128:
	nop
	jmp	.L115
.L129:
	nop
.L115:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_CRLID_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	OCSP_crlID_new, .-OCSP_crlID_new
	.globl	OCSP_accept_responses_new
	.type	OCSP_accept_responses_new, @function
OCSP_accept_responses_new:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L138
	jmp	.L133
.L136:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_txt2nid@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L134
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L134
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
.L134:
	addq	$8, -56(%rbp)
.L133:
	cmpq	$0, -56(%rbp)
	je	.L135
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L136
.L135:
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$368, %edi
	call	X509V3_EXT_i2d@PLT
	movq	%rax, -24(%rbp)
	jmp	.L132
.L138:
	nop
.L132:
	movq	ASN1_OBJECT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	OCSP_accept_responses_new, .-OCSP_accept_responses_new
	.globl	OCSP_archive_cutoff_new
	.type	OCSP_archive_cutoff_new, @function
OCSP_archive_cutoff_new:
.LFB689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	call	ASN1_GENERALIZEDTIME_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L144
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_set_string@PLT
	testl	%eax, %eax
	je	.L145
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$370, %edi
	call	X509V3_EXT_i2d@PLT
	movq	%rax, -8(%rbp)
	jmp	.L141
.L144:
	nop
	jmp	.L141
.L145:
	nop
.L141:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	OCSP_archive_cutoff_new, .-OCSP_archive_cutoff_new
	.globl	OCSP_url_svcloc_new
	.type	OCSP_url_svcloc_new, @function
OCSP_url_svcloc_new:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	call	OCSP_SERVICELOC_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L160
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L161
	cmpq	$0, -64(%rbp)
	je	.L151
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L151
	call	OPENSSL_sk_new_null@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L162
	jmp	.L151
.L158:
	call	ACCESS_DESCRIPTION_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L163
	movl	$178, %edi
	call	OBJ_nid2obj@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L164
	call	ASN1_IA5STRING_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L165
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	je	.L166
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	$6, (%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ACCESS_DESCRIPTION_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ACCESS_DESCRIPTION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L167
	movq	$0, -40(%rbp)
	addq	$8, -64(%rbp)
.L151:
	cmpq	$0, -64(%rbp)
	je	.L157
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L158
.L157:
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$371, %edi
	call	X509V3_EXT_i2d@PLT
	movq	%rax, -24(%rbp)
	jmp	.L148
.L160:
	nop
	jmp	.L148
.L161:
	nop
	jmp	.L148
.L162:
	nop
	jmp	.L148
.L163:
	nop
	jmp	.L148
.L164:
	nop
	jmp	.L148
.L165:
	nop
	jmp	.L148
.L166:
	nop
	jmp	.L148
.L167:
	nop
.L148:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_IA5STRING_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ACCESS_DESCRIPTION_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_SERVICELOC_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	OCSP_url_svcloc_new, .-OCSP_url_svcloc_new
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
