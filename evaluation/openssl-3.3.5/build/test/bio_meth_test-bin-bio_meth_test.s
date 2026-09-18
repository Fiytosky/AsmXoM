	.file	"bio_meth_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"BIO_TYPE_START + 1"
.LC1:
	.string	"id"
.LC2:
	.string	"../test/bio_meth_test.c"
.LC3:
	.string	"Method1"
	.align 8
.LC4:
	.string	"meth1 = BIO_meth_new(id, \"Method1\")"
.LC5:
	.string	"Method2"
	.align 8
.LC6:
	.string	"meth2 = BIO_meth_new(BIO_TYPE_NONE, \"Method2\")"
.LC7:
	.string	"Method3"
	.align 8
.LC8:
	.string	"meth3 = BIO_meth_new(BIO_TYPE_NONE|BIO_TYPE_FILTER, \"Method3\")"
.LC9:
	.string	"bio1 = BIO_new(meth1)"
.LC10:
	.string	"bio2 = BIO_new(meth2)"
.LC11:
	.string	"bio3 = BIO_new(meth3)"
.LC12:
	.string	"membio = BIO_new(BIO_s_mem())"
.LC13:
	.string	"i"
.LC14:
	.string	"BIO_get_new_index()"
.LC15:
	.string	"-1"
.LC16:
	.string	"membio"
	.align 8
.LC17:
	.string	"BIO_find_type(bio3, BIO_TYPE_MEM)"
.LC18:
	.string	"bio1"
.LC19:
	.string	"BIO_find_type(bio3, id)"
	.align 8
.LC20:
	.string	"BIO_find_type(bio3, BIO_TYPE_NONE)"
.LC21:
	.string	"bio3"
	.align 8
.LC22:
	.string	"BIO_find_type(bio3, BIO_TYPE_FILTER)"
	.text
	.type	test_bio_meth, @function
test_bio_meth:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	call	BIO_get_new_index@PLT
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$129, %r9d
	movl	%esi, %r8d
	movl	$20, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L15
	leaq	.LC3(%rip), %rdx
	movl	-68(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	BIO_meth_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$23, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	BIO_meth_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$24, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	movl	$512, %edi
	call	BIO_meth_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$25, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$27, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$28, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$29, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L16
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_next@PLT
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_next@PLT
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_next@PLT
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L6
.L8:
	call	BIO_get_new_index@PLT
	movl	%eax, %esi
	movl	-4(%rbp), %edi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$38, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L17
	addl	$1, -4(%rbp)
.L6:
	cmpl	$255, -4(%rbp)
	jle	.L8
	call	BIO_get_new_index@PLT
	movl	%eax, %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$41, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L18
	movq	-64(%rbp), %rax
	movl	$1025, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rdi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L19
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC18(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$46, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L19
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L20
	movq	-64(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	BIO_find_type@PLT
	movq	%rax, %rsi
	movq	-64(%rbp), %rdi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$53, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L21
	movl	$1, -8(%rbp)
	jmp	.L3
.L15:
	nop
	jmp	.L3
.L16:
	nop
	jmp	.L3
.L17:
	nop
	jmp	.L3
.L18:
	nop
	jmp	.L3
.L19:
	nop
	jmp	.L3
.L20:
	nop
	jmp	.L3
.L21:
	nop
.L3:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_meth_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_bio_meth, .-test_bio_meth
	.section	.rodata
.LC23:
	.string	"test_bio_meth"
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
	leaq	test_bio_meth(%rip), %rdx
	leaq	.LC23(%rip), %rax
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
