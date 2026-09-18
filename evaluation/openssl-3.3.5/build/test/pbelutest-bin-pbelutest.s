	.file	"pbelutest.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"EVP_PBE_find(pbe_type, pbe_nid, NULL, NULL, 0)"
.LC1:
	.string	"../test/pbelutest.c"
.LC2:
	.string	"i=%d, pbe_type=%d, pbe_nid=%d"
.LC3:
	.string	"ERROR"
.LC4:
	.string	"OK"
.LC5:
	.string	"PBE type=%d %d (%s): %s\n"
	.text
	.type	test_pbelu, @function
test_pbelu:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movl	$-1, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2
.L5:
	movl	-40(%rbp), %esi
	movl	-36(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %edi
	call	EVP_PBE_find@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$24, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L3
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %eax
	leaq	.LC2(%rip), %rdi
	movl	%eax, %esi
	movl	$0, %eax
	call	test_note@PLT
	movl	$1, -24(%rbp)
	jmp	.L4
.L3:
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rcx
	leaq	-36(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PBE_get@PLT
	testl	%eax, %eax
	jne	.L5
.L4:
	cmpl	$0, -24(%rbp)
	jne	.L6
	movl	$1, %eax
	jmp	.L15
.L6:
	movl	$0, -20(%rbp)
	jmp	.L8
.L14:
	movl	-36(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jg	.L9
	movl	-36(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L10
	movl	-40(%rbp), %eax
	cmpl	%eax, -32(%rbp)
	jle	.L10
.L9:
	movl	$1, %eax
	jmp	.L11
.L10:
	movl	$0, %eax
.L11:
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L12
	leaq	.LC3(%rip), %rbx
	jmp	.L13
.L12:
	leaq	.LC4(%rip), %rbx
.L13:
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	leaq	.LC5(%rip), %rdi
	movq	%rbx, %r8
	movl	%eax, %esi
	movl	$0, %eax
	call	test_note@PLT
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -32(%rbp)
	addl	$1, -20(%rbp)
.L8:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rcx
	leaq	-36(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PBE_get@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
.L15:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_pbelu, .-test_pbelu
	.section	.rodata
.LC6:
	.string	"test_pbelu"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_pbelu(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
