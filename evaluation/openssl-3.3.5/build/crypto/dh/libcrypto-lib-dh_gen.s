	.file	"dh_gen.c"
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
	.globl	ossl_dh_generate_ffc_parameters
	.type	ossl_dh_generate_ffc_parameters, @function
ossl_dh_generate_ffc_parameters:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	cmpl	$1, -28(%rbp)
	jne	.L6
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	leaq	-8(%rbp), %rdi
	subq	$8, %rsp
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_2_generate@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	jmp	.L7
.L6:
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	leaq	-8(%rbp), %rdi
	subq	$8, %rsp
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_4_generate@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L7:
	cmpl	$0, -4(%rbp)
	jle	.L8
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 200(%rax)
.L8:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_dh_generate_ffc_parameters, .-ossl_dh_generate_ffc_parameters
	.globl	ossl_dh_get_named_group_uid_from_size
	.type	ossl_dh_get_named_group_uid_from_size, @function
ossl_dh_get_named_group_uid_from_size:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	cmpl	$8192, -20(%rbp)
	je	.L11
	cmpl	$8192, -20(%rbp)
	jg	.L12
	cmpl	$6144, -20(%rbp)
	je	.L13
	cmpl	$6144, -20(%rbp)
	jg	.L12
	cmpl	$4096, -20(%rbp)
	je	.L14
	cmpl	$4096, -20(%rbp)
	jg	.L12
	cmpl	$2048, -20(%rbp)
	je	.L15
	cmpl	$3072, -20(%rbp)
	je	.L16
	jmp	.L12
.L15:
	movl	$1126, -4(%rbp)
	jmp	.L17
.L16:
	movl	$1127, -4(%rbp)
	jmp	.L17
.L14:
	movl	$1128, -4(%rbp)
	jmp	.L17
.L13:
	movl	$1129, -4(%rbp)
	jmp	.L17
.L11:
	movl	$1130, -4(%rbp)
	jmp	.L17
.L12:
	movl	$0, %eax
	jmp	.L18
.L17:
	movl	-4(%rbp), %eax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_dh_get_named_group_uid_from_size, .-ossl_dh_get_named_group_uid_from_size
	.globl	DH_generate_parameters_ex
	.type	DH_generate_parameters_ex, @function
DH_generate_parameters_ex:
.LFB409:
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
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	64(%rax), %r8
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L21
.L20:
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	dh_builtin_genparams
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	DH_generate_parameters_ex, .-DH_generate_parameters_ex
	.section	.rodata
.LC0:
	.string	"../crypto/dh/dh_gen.c"
	.text
	.type	dh_builtin_genparams, @function
dh_builtin_genparams:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	$-1, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$10000, -44(%rbp)
	jle	.L23
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$164, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	cmpl	$511, -44(%rbp)
	jg	.L25
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L25:
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L45
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L46
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	call	BN_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L47
.L29:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	call	BN_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L48
.L30:
	cmpl	$1, -48(%rbp)
	jg	.L31
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L27
.L31:
	cmpl	$2, -48(%rbp)
	jne	.L32
	movq	-24(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L49
	movq	-32(%rbp), %rax
	movl	$23, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L50
	movl	$2, -4(%rbp)
	jmp	.L35
.L32:
	cmpl	$5, -48(%rbp)
	jne	.L36
	movq	-24(%rbp), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L51
	movq	-32(%rbp), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L52
	movl	$5, -4(%rbp)
	jmp	.L35
.L36:
	movq	-24(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L53
	movq	-32(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L54
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
.L35:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %esi
	subq	$8, %rsp
	pushq	-16(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	BN_generate_prime_ex2@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L55
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L56
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L57
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	ossl_ifc_ffc_compute_security_bits@PLT
	movzwl	%ax, %eax
	addl	$12, %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$3, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%rax,4), %edx
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 104(%rax)
	movq	-40(%rbp), %rax
	movq	200(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 200(%rax)
	movl	$1, -8(%rbp)
	jmp	.L27
.L45:
	nop
	jmp	.L27
.L46:
	nop
	jmp	.L27
.L47:
	nop
	jmp	.L27
.L48:
	nop
	jmp	.L27
.L49:
	nop
	jmp	.L27
.L50:
	nop
	jmp	.L27
.L51:
	nop
	jmp	.L27
.L52:
	nop
	jmp	.L27
.L53:
	nop
	jmp	.L27
.L54:
	nop
	jmp	.L27
.L55:
	nop
	jmp	.L27
.L56:
	nop
	jmp	.L27
.L57:
	nop
.L27:
	cmpl	$-1, -8(%rbp)
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -8(%rbp)
.L44:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-8(%rbp), %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	dh_builtin_genparams, .-dh_builtin_genparams
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"dh_builtin_genparams"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
