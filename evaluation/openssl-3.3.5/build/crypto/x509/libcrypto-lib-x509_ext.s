	.file	"x509_ext.c"
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
	.type	ossl_check_const_X509_EXTENSION_sk_type, @function
ossl_check_const_X509_EXTENSION_sk_type:
.LFB433:
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
.LFE433:
	.size	ossl_check_const_X509_EXTENSION_sk_type, .-ossl_check_const_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_sk_type, @function
ossl_check_X509_EXTENSION_sk_type:
.LFB434:
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
.LFE434:
	.size	ossl_check_X509_EXTENSION_sk_type, .-ossl_check_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_freefunc_type, @function
ossl_check_X509_EXTENSION_freefunc_type:
.LFB437:
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
.LFE437:
	.size	ossl_check_X509_EXTENSION_freefunc_type, .-ossl_check_X509_EXTENSION_freefunc_type
	.globl	X509_CRL_get_ext_count
	.type	X509_CRL_get_ext_count, @function
X509_CRL_get_ext_count:
.LFB622:
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
	call	X509v3_get_ext_count@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	X509_CRL_get_ext_count, .-X509_CRL_get_ext_count
	.globl	X509_CRL_get_ext_by_NID
	.type	X509_CRL_get_ext_by_NID, @function
X509_CRL_get_ext_by_NID:
.LFB623:
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
	movq	56(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_NID@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	X509_CRL_get_ext_by_NID, .-X509_CRL_get_ext_by_NID
	.globl	X509_CRL_get_ext_by_OBJ
	.type	X509_CRL_get_ext_by_OBJ, @function
X509_CRL_get_ext_by_OBJ:
.LFB624:
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
	movq	56(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	X509_CRL_get_ext_by_OBJ, .-X509_CRL_get_ext_by_OBJ
	.globl	X509_CRL_get_ext_by_critical
	.type	X509_CRL_get_ext_by_critical, @function
X509_CRL_get_ext_by_critical:
.LFB625:
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
	movq	56(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_critical@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	X509_CRL_get_ext_by_critical, .-X509_CRL_get_ext_by_critical
	.globl	X509_CRL_get_ext
	.type	X509_CRL_get_ext, @function
X509_CRL_get_ext:
.LFB626:
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
	movq	56(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	X509_CRL_get_ext, .-X509_CRL_get_ext
	.type	delete_ext, @function
delete_ext:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_delete_ext@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L22
	movq	X509_EXTENSION_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L22:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	delete_ext, .-delete_ext
	.globl	X509_CRL_delete_ext
	.type	X509_CRL_delete_ext, @function
X509_CRL_delete_ext:
.LFB628:
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
	leaq	56(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	delete_ext
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	X509_CRL_delete_ext, .-X509_CRL_delete_ext
	.globl	X509_CRL_get_ext_d2i
	.type	X509_CRL_get_ext_d2i, @function
X509_CRL_get_ext_d2i:
.LFB629:
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
	movq	56(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	call	X509V3_get_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	X509_CRL_get_ext_d2i, .-X509_CRL_get_ext_d2i
	.globl	X509_CRL_add1_ext_i2d
	.type	X509_CRL_add1_ext_i2d, @function
X509_CRL_add1_ext_i2d:
.LFB630:
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
	leaq	56(%rax), %rdi
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
.LFE630:
	.size	X509_CRL_add1_ext_i2d, .-X509_CRL_add1_ext_i2d
	.globl	X509_CRL_add_ext
	.type	X509_CRL_add_ext, @function
X509_CRL_add_ext:
.LFB631:
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
	leaq	56(%rax), %rcx
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
.LFE631:
	.size	X509_CRL_add_ext, .-X509_CRL_add_ext
	.globl	X509_get_ext_count
	.type	X509_get_ext_count, @function
X509_get_ext_count:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	X509v3_get_ext_count@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	X509_get_ext_count, .-X509_get_ext_count
	.globl	X509_get_ext_by_NID
	.type	X509_get_ext_by_NID, @function
X509_get_ext_by_NID:
.LFB633:
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
	movq	104(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_NID@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	X509_get_ext_by_NID, .-X509_get_ext_by_NID
	.globl	X509_get_ext_by_OBJ
	.type	X509_get_ext_by_OBJ, @function
X509_get_ext_by_OBJ:
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_OBJ@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	X509_get_ext_by_OBJ, .-X509_get_ext_by_OBJ
	.globl	X509_get_ext_by_critical
	.type	X509_get_ext_by_critical, @function
X509_get_ext_by_critical:
.LFB635:
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
	movq	104(%rax), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_critical@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	X509_get_ext_by_critical, .-X509_get_ext_by_critical
	.globl	X509_get_ext
	.type	X509_get_ext, @function
X509_get_ext:
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
	movq	104(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	X509_get_ext, .-X509_get_ext
	.globl	X509_delete_ext
	.type	X509_delete_ext, @function
X509_delete_ext:
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
	leaq	104(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	delete_ext
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	X509_delete_ext, .-X509_delete_ext
	.globl	X509_add_ext
	.type	X509_add_ext, @function
X509_add_ext:
.LFB638:
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
	leaq	104(%rax), %rcx
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
.LFE638:
	.size	X509_add_ext, .-X509_add_ext
	.globl	X509_get_ext_d2i
	.type	X509_get_ext_d2i, @function
X509_get_ext_d2i:
.LFB639:
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
	movq	104(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	call	X509V3_get_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	X509_get_ext_d2i, .-X509_get_ext_d2i
	.globl	X509_add1_ext_i2d
	.type	X509_add1_ext_i2d, @function
X509_add1_ext_i2d:
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
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	104(%rax), %rdi
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
.LFE640:
	.size	X509_add1_ext_i2d, .-X509_add1_ext_i2d
	.globl	X509_REVOKED_get_ext_count
	.type	X509_REVOKED_get_ext_count, @function
X509_REVOKED_get_ext_count:
.LFB641:
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
.LFE641:
	.size	X509_REVOKED_get_ext_count, .-X509_REVOKED_get_ext_count
	.globl	X509_REVOKED_get_ext_by_NID
	.type	X509_REVOKED_get_ext_by_NID, @function
X509_REVOKED_get_ext_by_NID:
.LFB642:
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
.LFE642:
	.size	X509_REVOKED_get_ext_by_NID, .-X509_REVOKED_get_ext_by_NID
	.globl	X509_REVOKED_get_ext_by_OBJ
	.type	X509_REVOKED_get_ext_by_OBJ, @function
X509_REVOKED_get_ext_by_OBJ:
.LFB643:
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
.LFE643:
	.size	X509_REVOKED_get_ext_by_OBJ, .-X509_REVOKED_get_ext_by_OBJ
	.globl	X509_REVOKED_get_ext_by_critical
	.type	X509_REVOKED_get_ext_by_critical, @function
X509_REVOKED_get_ext_by_critical:
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
.LFE644:
	.size	X509_REVOKED_get_ext_by_critical, .-X509_REVOKED_get_ext_by_critical
	.globl	X509_REVOKED_get_ext
	.type	X509_REVOKED_get_ext, @function
X509_REVOKED_get_ext:
.LFB645:
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
.LFE645:
	.size	X509_REVOKED_get_ext, .-X509_REVOKED_get_ext
	.globl	X509_REVOKED_delete_ext
	.type	X509_REVOKED_delete_ext, @function
X509_REVOKED_delete_ext:
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
	leaq	32(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	delete_ext
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	X509_REVOKED_delete_ext, .-X509_REVOKED_delete_ext
	.globl	X509_REVOKED_add_ext
	.type	X509_REVOKED_add_ext, @function
X509_REVOKED_add_ext:
.LFB647:
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
.LFE647:
	.size	X509_REVOKED_add_ext, .-X509_REVOKED_add_ext
	.globl	X509_REVOKED_get_ext_d2i
	.type	X509_REVOKED_get_ext_d2i, @function
X509_REVOKED_get_ext_d2i:
.LFB648:
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
.LFE648:
	.size	X509_REVOKED_get_ext_d2i, .-X509_REVOKED_get_ext_d2i
	.globl	X509_REVOKED_add1_ext_i2d
	.type	X509_REVOKED_add1_ext_i2d, @function
X509_REVOKED_add1_ext_i2d:
.LFB649:
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
.LFE649:
	.size	X509_REVOKED_add1_ext_i2d, .-X509_REVOKED_add1_ext_i2d
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
