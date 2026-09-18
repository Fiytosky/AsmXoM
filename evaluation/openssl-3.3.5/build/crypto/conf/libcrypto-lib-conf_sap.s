	.file	"conf_sap.c"
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
	.local	openssl_configured
	.comm	openssl_configured,4,4
	.globl	OPENSSL_config
	.type	OPENSSL_config, @function
OPENSSL_config:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpq	$0, -40(%rbp)
	je	.L6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	movq	%rax, -24(%rbp)
.L6:
	movq	$50, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$64, %edi
	call	OPENSSL_init_crypto@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	OPENSSL_config, .-OPENSSL_config
	.globl	ossl_config_int
	.type	ossl_config_int, @function
ossl_config_int:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	openssl_configured(%rip), %eax
	testl	%eax, %eax
	je	.L8
	movl	$1, %eax
	jmp	.L9
.L8:
	cmpq	$0, -40(%rbp)
	je	.L10
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L11
.L10:
	movq	$0, -8(%rbp)
.L11:
	cmpq	$0, -40(%rbp)
	je	.L12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L13
.L12:
	movq	$0, -16(%rbp)
.L13:
	cmpq	$0, -40(%rbp)
	je	.L14
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L15
.L14:
	movq	$50, -24(%rbp)
.L15:
	call	OSSL_LIB_CTX_get0_global_default@PLT
	movq	%rax, %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	call	CONF_modules_load_file_ex@PLT
	movl	%eax, -28(%rbp)
	movl	$1, openssl_configured(%rip)
	movl	-28(%rbp), %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	ossl_config_int, .-ossl_config_int
	.globl	ossl_no_config_int
	.type	ossl_no_config_int, @function
ossl_no_config_int:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, openssl_configured(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	ossl_no_config_int, .-ossl_no_config_int
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
