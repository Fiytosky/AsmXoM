	.file	"context_internal_test.c"
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
	.string	"global"
	.align 8
.LC1:
	.string	"../test/context_internal_test.c"
.LC2:
	.string	"local"
	.align 8
.LC3:
	.string	"OSSL_LIB_CTX_set0_default(NULL)"
	.align 8
.LC4:
	.string	"prev = OSSL_LIB_CTX_set0_default(local)"
.LC5:
	.string	"prev"
	.align 8
.LC6:
	.string	"OSSL_LIB_CTX_get0_global_default()"
	.align 8
.LC7:
	.string	"prev = OSSL_LIB_CTX_set0_default(global)"
	.text
	.type	test_set0_default, @function
test_set0_default:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_LIB_CTX_get0_global_default@PLT
	movq	%rax, -16(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$22, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$23, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	movl	$0, %edi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC3(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$24, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$28, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$29, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L17
	movl	$0, %edi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC3(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$33, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L18
	call	OSSL_LIB_CTX_get0_global_default@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$37, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L19
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$41, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$42, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L20
	movl	$1, -4(%rbp)
	jmp	.L8
.L16:
	nop
	jmp	.L8
.L17:
	nop
	jmp	.L8
.L18:
	nop
	jmp	.L8
.L19:
	nop
	jmp	.L8
.L20:
	nop
.L8:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	test_set0_default, .-test_set0_default
	.section	.rodata
.LC8:
	.string	"test_set0_default"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_set0_default(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
