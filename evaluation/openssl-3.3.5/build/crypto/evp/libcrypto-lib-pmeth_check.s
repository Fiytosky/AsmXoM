	.file	"pmeth_check.c"
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
	.string	"../crypto/evp/pmeth_check.c"
	.text
	.type	try_provided_check, @function
try_provided_check:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movl	$-1, %eax
	jmp	.L9
.L6:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	leaq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_validate@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	try_provided_check, .-try_provided_check
	.type	evp_pkey_public_check_combined, @function
evp_pkey_public_check_combined:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$154, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L12
.L11:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	try_provided_check
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	je	.L13
	movl	-12(%rbp), %eax
	jmp	.L12
.L13:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L19
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	232(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L12
.L16:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	232(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L12
.L19:
	nop
	jmp	.L15
.L20:
	nop
.L15:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	evp_pkey_public_check_combined, .-evp_pkey_public_check_combined
	.globl	EVP_PKEY_public_check
	.type	EVP_PKEY_public_check, @function
EVP_PKEY_public_check:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_pkey_public_check_combined
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	EVP_PKEY_public_check, .-EVP_PKEY_public_check
	.globl	EVP_PKEY_public_check_quick
	.type	EVP_PKEY_public_check_quick, @function
EVP_PKEY_public_check_quick:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	evp_pkey_public_check_combined
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	EVP_PKEY_public_check_quick, .-EVP_PKEY_public_check_quick
	.type	evp_pkey_param_check_combined, @function
evp_pkey_param_check_combined:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$154, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L27
.L26:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	try_provided_check
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	je	.L28
	movl	-12(%rbp), %eax
	jmp	.L27
.L28:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	240(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L27
.L31:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	240(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L27
.L34:
	nop
	jmp	.L30
.L35:
	nop
.L30:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$122, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	evp_pkey_param_check_combined, .-evp_pkey_param_check_combined
	.globl	EVP_PKEY_param_check
	.type	EVP_PKEY_param_check, @function
EVP_PKEY_param_check:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_pkey_param_check_combined
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	EVP_PKEY_param_check, .-EVP_PKEY_param_check
	.globl	EVP_PKEY_param_check_quick
	.type	EVP_PKEY_param_check_quick, @function
EVP_PKEY_param_check_quick:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	evp_pkey_param_check_combined
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	EVP_PKEY_param_check_quick, .-EVP_PKEY_param_check_quick
	.globl	EVP_PKEY_private_check
	.type	EVP_PKEY_private_check, @function
EVP_PKEY_private_check:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$142, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$154, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	try_provided_check
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	je	.L43
	movl	-12(%rbp), %eax
	jmp	.L42
.L43:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$151, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	EVP_PKEY_private_check, .-EVP_PKEY_private_check
	.globl	EVP_PKEY_check
	.type	EVP_PKEY_check, @function
EVP_PKEY_check:
.LFB515:
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
	call	EVP_PKEY_pairwise_check@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	EVP_PKEY_check, .-EVP_PKEY_check
	.globl	EVP_PKEY_pairwise_check
	.type	EVP_PKEY_pairwise_check, @function
EVP_PKEY_pairwise_check:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L47
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$154, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L47:
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	try_provided_check
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	je	.L49
	movl	-12(%rbp), %eax
	jmp	.L48
.L49:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L55
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	224(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L48
.L52:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	224(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L48
.L55:
	nop
	jmp	.L51
.L56:
	nop
.L51:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$190, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	EVP_PKEY_pairwise_check, .-EVP_PKEY_pairwise_check
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 19
__func__.4:
	.string	"try_provided_check"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 31
__func__.3:
	.string	"evp_pkey_public_check_combined"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 30
__func__.2:
	.string	"evp_pkey_param_check_combined"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"EVP_PKEY_private_check"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"EVP_PKEY_pairwise_check"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
