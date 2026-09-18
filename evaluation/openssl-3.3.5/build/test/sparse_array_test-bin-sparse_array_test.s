	.file	"sparse_array_test.c"
	.text
	.type	ossl_sa_char_new, @function
ossl_sa_char_new:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_sa_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	ossl_sa_char_new, .-ossl_sa_char_new
	.type	ossl_sa_char_free, @function
ossl_sa_char_free:
.LFB469:
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
	call	ossl_sa_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	ossl_sa_char_free, .-ossl_sa_char_free
	.type	ossl_sa_char_num, @function
ossl_sa_char_num:
.LFB471:
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
	call	ossl_sa_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	ossl_sa_char_num, .-ossl_sa_char_num
	.type	ossl_sa_char_doall_arg, @function
ossl_sa_char_doall_arg:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_doall_arg@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	ossl_sa_char_doall_arg, .-ossl_sa_char_doall_arg
	.type	ossl_sa_char_get, @function
ossl_sa_char_get:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_get@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	ossl_sa_char_get, .-ossl_sa_char_get
	.type	ossl_sa_char_set, @function
ossl_sa_char_set:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_set@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	ossl_sa_char_set, .-ossl_sa_char_set
	.section	.rodata
.LC0:
	.string	"sa = ossl_sa_char_new()"
.LC1:
	.string	"../test/sparse_array_test.c"
.LC2:
	.string	"ossl_sa_char_get(sa, 3)"
.LC3:
	.string	"ossl_sa_char_get(sa, 0)"
	.align 8
.LC4:
	.string	"ossl_sa_char_get(sa, UINT_MAX)"
	.align 8
.LC5:
	.string	"ossl_sa_char_set(sa, cases[i].n, cases[i].v)"
.LC6:
	.string	"iteration %zu"
.LC7:
	.string	"cases[j].v"
	.align 8
.LC8:
	.string	"ossl_sa_char_get(sa, cases[j].n)"
.LC9:
	.string	"iteration %zu / %zu"
	.text
	.type	test_sparse_array, @function
test_sparse_array:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	$0, -36(%rbp)
	call	ossl_sa_char_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$43, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L22
	movq	-48(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_sa_char_get
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L22
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_sa_char_get
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L22
	movq	-48(%rbp), %rax
	movl	$4294967295, %edx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_char_get
	movq	%rax, %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L22
	movq	$0, -24(%rbp)
	jmp	.L15
.L20:
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+cases.2(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rcx
	leaq	cases.2(%rip), %rax
	movq	(%rcx,%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_char_set
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$50, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L16
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	.LC6(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L14
.L16:
	movq	$0, -32(%rbp)
	jmp	.L17
.L19:
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+cases.2(%rip), %rax
	movq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	cases.2(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_char_get
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L18
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	leaq	.LC9(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L14
.L18:
	addq	$1, -32(%rbp)
.L17:
	movq	-32(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L19
	addq	$1, -24(%rbp)
.L15:
	cmpq	$7, -24(%rbp)
	jbe	.L20
	movl	$1, -36(%rbp)
	jmp	.L14
.L22:
	nop
.L14:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sa_char_free
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_sparse_array, .-test_sparse_array
	.section	.rodata
.LC10:
	.string	"0"
.LC11:
	.string	"ossl_sa_char_num(NULL)"
.LC12:
	.string	"ossl_sa_char_num(sa)"
.LC13:
	.string	"cases[i].num"
	.text
	.type	test_sparse_array_num, @function
test_sparse_array_num:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, %edi
	call	ossl_sa_char_num
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L32
	call	ossl_sa_char_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$84, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sa_char_num
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L32
	movq	$0, -32(%rbp)
	jmp	.L27
.L30:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+cases.1(%rip), %rax
	movq	(%rdx,%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+cases.1(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_char_set
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$88, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L33
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	cases.1(%rip), %rax
	movq	(%rdx,%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sa_char_num
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	addq	$1, -32(%rbp)
.L27:
	cmpq	$15, -32(%rbp)
	jbe	.L30
	movl	$1, -36(%rbp)
	jmp	.L26
.L32:
	nop
	jmp	.L26
.L33:
	nop
.L26:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sa_char_free
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_sparse_array_num, .-test_sparse_array_num
	.section	.rodata
	.align 8
.LC14:
	.string	"Index %ju with value %s not found"
	.text
	.type	leaf_check_all, @function
leaf_check_all:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	movq	$0, -8(%rbp)
	jmp	.L35
.L39:
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L36
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L37
.L36:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L37
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L37
	movq	-16(%rbp), %rax
	movl	$1, 24(%rax)
	jmp	.L34
.L37:
	addq	$1, -8(%rbp)
.L35:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L39
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$124, %esi
	movl	$0, %eax
	call	test_error@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	leaf_check_all, .-leaf_check_all
	.type	leaf_delete, @function
leaf_delete:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	movq	$0, -8(%rbp)
	jmp	.L41
.L44:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L42
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L42
	movq	-16(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_char_set
	jmp	.L40
.L42:
	addq	$1, -8(%rbp)
.L41:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L44
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$140, %esi
	movl	$0, %eax
	call	test_error@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	leaf_delete, .-leaf_delete
	.section	.rodata
.LC15:
	.string	"failed at iteration %zu"
.LC16:
	.string	"while checking all elements"
	.align 8
.LC17:
	.string	"while deleting selected elements"
	.align 8
.LC18:
	.string	"while checking for deleted elements"
	.text
	.type	test_sparse_array_doall, @function
test_sparse_array_doall:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -24(%rbp)
	movl	$0, -12(%rbp)
	call	ossl_sa_char_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$155, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L55
	movq	$8, -56(%rbp)
	leaq	cases.0(%rip), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -36(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L48
.L50:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+cases.0(%rip), %rax
	movq	(%rdx,%rax), %rsi
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	cases.0(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_char_set
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$162, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L49
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	.LC15(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L47
.L49:
	addq	$1, -8(%rbp)
.L48:
	cmpq	$7, -8(%rbp)
	jbe	.L50
	leaq	-64(%rbp), %rdx
	leaq	leaf_check_all(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_char_doall_arg
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	jne	.L51
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L47
.L51:
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	leaf_delete(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_char_doall_arg
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	jne	.L52
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L47
.L52:
	leaq	-64(%rbp), %rdx
	leaq	leaf_check_all(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_char_doall_arg
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	jne	.L53
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L47
.L53:
	movl	$1, -12(%rbp)
	jmp	.L47
.L55:
	nop
.L47:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_sa_char_free
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_sparse_array_doall, .-test_sparse_array_doall
	.section	.rodata
.LC19:
	.string	"test_sparse_array"
.LC20:
	.string	"test_sparse_array_num"
.LC21:
	.string	"test_sparse_array_doall"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_sparse_array(%rip), %rdx
	leaq	.LC19(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sparse_array_num(%rip), %rdx
	leaq	.LC20(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sparse_array_doall(%rip), %rdx
	leaq	.LC21(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC22:
	.string	"a"
.LC23:
	.string	"z"
.LC24:
	.string	"b"
.LC25:
	.string	"c"
.LC26:
	.string	"m"
.LC27:
	.string	"d"
.LC28:
	.string	"H"
.LC29:
	.string	"e"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	cases.2, @object
	.size	cases.2, 128
cases.2:
	.quad	22
	.quad	.LC22
	.quad	0
	.quad	.LC23
	.quad	1
	.quad	.LC24
	.quad	290
	.quad	.LC25
	.quad	2147483647
	.quad	.LC26
	.quad	6666666
	.quad	.LC27
	.quad	-1
	.quad	.LC28
	.quad	99
	.quad	.LC29
	.section	.rodata
.LC30:
	.string	"f"
.LC31:
	.string	"g"
.LC32:
	.string	"h"
	.section	.data.rel.ro.local
	.align 32
	.type	cases.1, @object
	.size	cases.1, 384
cases.1:
	.quad	1
	.quad	22
	.quad	.LC22
	.quad	2
	.quad	1021
	.quad	.LC24
	.quad	3
	.quad	3
	.quad	.LC25
	.quad	2
	.quad	22
	.quad	0
	.quad	2
	.quad	3
	.quad	.LC27
	.quad	3
	.quad	22
	.quad	.LC29
	.quad	3
	.quad	666
	.quad	0
	.quad	4
	.quad	666
	.quad	.LC30
	.quad	3
	.quad	3
	.quad	0
	.quad	2
	.quad	22
	.quad	0
	.quad	1
	.quad	666
	.quad	0
	.quad	2
	.quad	64000
	.quad	.LC31
	.quad	1
	.quad	1021
	.quad	0
	.quad	0
	.quad	64000
	.quad	0
	.quad	1
	.quad	23
	.quad	.LC32
	.quad	0
	.quad	23
	.quad	0
	.section	.rodata
.LC33:
	.string	"A"
.LC34:
	.string	"i"
.LC35:
	.string	"s"
.LC36:
	.string	"t"
	.section	.data.rel.ro.local
	.align 32
	.type	cases.0, @object
	.size	cases.0, 192
cases.0:
	.quad	22
	.quad	.LC33
	.long	1
	.zero	4
	.quad	1021
	.quad	.LC24
	.long	0
	.zero	4
	.quad	3
	.quad	.LC25
	.long	0
	.zero	4
	.quad	2147483647
	.quad	.LC27
	.long	1
	.zero	4
	.quad	-1
	.quad	.LC28
	.long	0
	.zero	4
	.quad	-2
	.quad	.LC34
	.long	1
	.zero	4
	.quad	666666666
	.quad	.LC35
	.long	1
	.zero	4
	.quad	1234567890
	.quad	.LC36
	.long	0
	.zero	4
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
