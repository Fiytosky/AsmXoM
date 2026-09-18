	.file	"lhash_test.c"
	.text
	.type	lh_int_hfn_thunk, @function
lh_int_hfn_thunk:
.LFB468:
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
.LFE468:
	.size	lh_int_hfn_thunk, .-lh_int_hfn_thunk
	.type	lh_int_cfn_thunk, @function
lh_int_cfn_thunk:
.LFB469:
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
.LFE469:
	.size	lh_int_cfn_thunk, .-lh_int_cfn_thunk
	.type	lh_int_free, @function
lh_int_free:
.LFB470:
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
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	lh_int_free, .-lh_int_free
	.type	lh_int_insert, @function
lh_int_insert:
.LFB472:
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
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	lh_int_insert, .-lh_int_insert
	.type	lh_int_delete, @function
lh_int_delete:
.LFB473:
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
	call	OPENSSL_LH_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	lh_int_delete, .-lh_int_delete
	.type	lh_int_retrieve, @function
lh_int_retrieve:
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
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	lh_int_retrieve, .-lh_int_retrieve
	.type	lh_int_error, @function
lh_int_error:
.LFB475:
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
	call	OPENSSL_LH_error@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	lh_int_error, .-lh_int_error
	.type	lh_int_num_items, @function
lh_int_num_items:
.LFB476:
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
	call	OPENSSL_LH_num_items@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	lh_int_num_items, .-lh_int_num_items
	.type	lh_int_doall_thunk, @function
lh_int_doall_thunk:
.LFB479:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	lh_int_doall_thunk, .-lh_int_doall_thunk
	.type	lh_int_doall_arg_thunk, @function
lh_int_doall_arg_thunk:
.LFB480:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	lh_int_doall_arg_thunk, .-lh_int_doall_arg_thunk
	.type	lh_int_doall, @function
lh_int_doall:
.LFB481:
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
	call	OPENSSL_LH_doall@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	lh_int_doall, .-lh_int_doall
	.type	lh_int_new, @function
lh_int_new:
.LFB482:
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
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_int_doall_arg_thunk(%rip), %rsi
	leaq	lh_int_doall_thunk(%rip), %rcx
	leaq	lh_int_cfn_thunk(%rip), %rdx
	leaq	lh_int_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	lh_int_new, .-lh_int_new
	.data
	.align 32
	.type	int_tests, @object
	.size	int_tests, 84
int_tests:
	.long	65537
	.long	13
	.long	1
	.long	3
	.long	-5
	.long	6
	.long	7
	.long	4
	.long	-10
	.long	-12
	.long	-14
	.long	22
	.long	9
	.long	-17
	.long	16
	.long	17
	.long	-23
	.long	35
	.long	37
	.long	173
	.long	11
	.section	.rodata
	.align 4
	.type	n_int_tests, @object
	.size	n_int_tests, 4
n_int_tests:
	.long	21
	.local	int_found
	.comm	int_found,42,32
	.local	int_not_found
	.comm	int_not_found,2,2
	.text
	.type	int_hash, @function
int_hash:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
	andl	$3, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	int_hash, .-int_hash
	.type	int_cmp, @function
int_cmp:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	int_cmp, .-int_cmp
	.type	int_find, @function
int_find:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L26
.L29:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	int_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L27
	movl	-4(%rbp), %eax
	jmp	.L28
.L27:
	addl	$1, -4(%rbp)
.L26:
	movl	$21, %eax
	cmpl	%eax, -4(%rbp)
	jb	.L29
	movl	$-1, %eax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	int_find, .-int_find
	.type	int_doall, @function
int_doall:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	int_find
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L31
	movzwl	int_not_found(%rip), %eax
	addl	$1, %eax
	movw	%ax, int_not_found(%rip)
	jmp	.L33
.L31:
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	int_found(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	int_found(%rip), %rax
	movw	%cx, (%rdx,%rax)
.L33:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	int_doall, .-int_doall
	.type	int_doall_arg, @function
int_doall_arg:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	int_find
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L35
	movzwl	int_not_found(%rip), %eax
	addl	$1, %eax
	movw	%ax, int_not_found(%rip)
	jmp	.L37
.L35:
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %edx
	addl	$1, %edx
	movw	%dx, (%rax)
.L37:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	int_doall_arg, .-int_doall_arg
	.type	lh_int_doall_short_thunk, @function
lh_int_doall_short_thunk:
.LFB489:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	lh_int_doall_short_thunk, .-lh_int_doall_short_thunk
	.type	lh_int_doall_short, @function
lh_int_doall_short:
.LFB490:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	lh_int_doall_short_thunk(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg_thunk@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	lh_int_doall_short, .-lh_int_doall_short
	.section	.rodata
.LC0:
	.string	"h"
.LC1:
	.string	"../test/lhash_test.c"
	.align 8
.LC2:
	.string	"lh_int_insert(h, int_tests + i)"
.LC3:
	.string	"int insert %d"
.LC4:
	.string	"n_int_tests"
.LC5:
	.string	"lh_int_num_items(h)"
.LC6:
	.string	"int_tests[i]"
	.align 8
.LC7:
	.string	"*lh_int_retrieve(h, int_tests + i)"
.LC8:
	.string	"lhash int retrieve value %d"
.LC9:
	.string	"int_tests + i"
	.align 8
.LC10:
	.string	"lh_int_retrieve(h, int_tests + i)"
.LC11:
	.string	"lhash int retrieve address %d"
.LC12:
	.string	"int_tests + 2"
.LC13:
	.string	"lh_int_retrieve(h, &j)"
.LC14:
	.string	"p = lh_int_insert(h, &j)"
.LC15:
	.string	"int_tests + 1"
.LC16:
	.string	"p"
.LC17:
	.string	"&j"
	.align 8
.LC18:
	.string	"lh_int_retrieve(h, int_tests + 1)"
.LC19:
	.string	"0"
.LC20:
	.string	"int_not_found"
	.align 8
.LC21:
	.string	"lhash int doall encountered a not found condition"
.LC22:
	.string	"1"
.LC23:
	.string	"int_found[i]"
.LC24:
	.string	"lhash int doall %d"
	.align 8
.LC25:
	.string	"lhash int doall arg encountered a not found condition"
.LC26:
	.string	"lhash int doall arg %d"
.LC27:
	.string	"b ^ dels[i].null"
.LC28:
	.string	"lhash int delete %d"
.LC29:
	.string	"lh_int_error(h)"
	.text
	.type	test_int_lhash, @function
test_int_lhash:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	$6, -28(%rbp)
	leaq	int_cmp(%rip), %rdx
	leaq	int_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_new
	movq	%rax, -40(%rbp)
	movl	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$98, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L70
	movl	$0, -20(%rbp)
	jmp	.L43
.L45:
	movl	-20(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	int_tests(%rip), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_insert
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L44
	movl	-20(%rbp), %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$104, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L42
.L44:
	addl	$1, -20(%rbp)
.L43:
	movl	$21, %eax
	cmpl	%eax, -20(%rbp)
	jb	.L45
	movl	$21, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	lh_int_num_items
	movl	%eax, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$109, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L71
	movl	$0, -20(%rbp)
	jmp	.L47
.L49:
	movl	-20(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	int_tests(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-20(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	int_tests(%rip), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_retrieve
	movl	(%rax), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L48
	movl	-20(%rbp), %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$115, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L42
.L48:
	addl	$1, -20(%rbp)
.L47:
	movl	$21, %eax
	cmpl	%eax, -20(%rbp)
	jb	.L49
	movl	$0, -20(%rbp)
	jmp	.L50
.L52:
	movl	-20(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	int_tests(%rip), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-20(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	int_tests(%rip), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_retrieve
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L51
	movl	-20(%rbp), %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$120, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L42
.L51:
	addl	$1, -20(%rbp)
.L50:
	movl	$21, %eax
	cmpl	%eax, -20(%rbp)
	jb	.L52
	movl	$1, -56(%rbp)
	leaq	8+int_tests(%rip), %rbx
	leaq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_retrieve
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$124, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L72
	movl	$13, -56(%rbp)
	leaq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_insert
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$129, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L73
	leaq	4+int_tests(%rip), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$131, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L74
	leaq	4+int_tests(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_retrieve
	movq	%rax, %rsi
	leaq	-56(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$133, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L75
	leaq	int_found(%rip), %rax
	movl	$42, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movw	$0, int_not_found(%rip)
	leaq	int_doall(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_doall
	movzwl	int_not_found(%rip), %eax
	movswl	%ax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$140, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L57
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$141, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L42
.L57:
	movl	$0, -20(%rbp)
	jmp	.L58
.L60:
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	leaq	int_found(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movswl	%ax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$145, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L59
	movl	-20(%rbp), %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$146, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L42
.L59:
	addl	$1, -20(%rbp)
.L58:
	movl	$21, %eax
	cmpl	%eax, -20(%rbp)
	jb	.L60
	leaq	int_found(%rip), %rax
	movl	$42, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movw	$0, int_not_found(%rip)
	leaq	int_found(%rip), %rdx
	leaq	int_doall_arg(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_int_doall_short
	movzwl	int_not_found(%rip), %eax
	movswl	%ax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$154, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L61
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$155, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L42
.L61:
	movl	$0, -20(%rbp)
	jmp	.L62
.L64:
	movl	-20(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	leaq	int_found(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movswl	%ax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$159, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L63
	movl	-20(%rbp), %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$160, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L42
.L63:
	addl	$1, -20(%rbp)
.L62:
	movl	$21, %eax
	cmpl	%eax, -20(%rbp)
	jb	.L64
	movl	$0, -20(%rbp)
	jmp	.L65
.L67:
	movl	-20(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	dels.0(%rip), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_delete
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	4+dels.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	xorl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$167, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L66
	movl	-20(%rbp), %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$168, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L42
.L66:
	addl	$1, -20(%rbp)
.L65:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jb	.L67
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	lh_int_error
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$174, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L76
	movl	$1, -24(%rbp)
	jmp	.L42
.L70:
	nop
	jmp	.L42
.L71:
	nop
	jmp	.L42
.L72:
	nop
	jmp	.L42
.L73:
	nop
	jmp	.L42
.L74:
	nop
	jmp	.L42
.L75:
	nop
	jmp	.L42
.L76:
	nop
.L42:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	lh_int_free
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	test_int_lhash, .-test_int_lhash
	.type	stress_hash, @function
stress_hash:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	stress_hash, .-stress_hash
	.section	.rodata
.LC30:
	.string	"lhash stress out of memory %d"
.LC31:
	.string	"n"
.LC32:
	.string	"p = lh_int_delete(h, &j)"
.LC33:
	.string	"lhash stress delete %d\n"
.LC34:
	.string	"j"
.LC35:
	.string	"*p"
.LC36:
	.string	"lhash stress bad value %d"
	.text
	.type	test_stress, @function
test_stress:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	leaq	int_cmp(%rip), %rdx
	leaq	stress_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_new
	movq	%rax, -32(%rbp)
	movl	$2500000, -36(%rbp)
	movl	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$195, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L92
	movl	$0, -20(%rbp)
	jmp	.L82
.L84:
	leaq	.LC1(%rip), %rax
	movl	$200, %edx
	movq	%rax, %rsi
	movl	$4, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$201, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L83
	movl	-20(%rbp), %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$202, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L81
.L83:
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_insert
	addl	$1, -20(%rbp)
.L82:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L84
	movl	-36(%rbp), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	lh_int_num_items
	movl	%eax, %esi
	leaq	.LC31(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$210, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L93
	movl	$0, -20(%rbp)
	jmp	.L86
.L90:
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	$4, %eax
	movl	$0, %edx
	divl	-36(%rbp)
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	leaq	-52(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_int_delete
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$217, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L87
	movl	-20(%rbp), %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$218, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L81
.L87:
	movl	-52(%rbp), %edi
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$221, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L89
	movl	-20(%rbp), %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$222, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L81
.L89:
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$225, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -20(%rbp)
.L86:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L90
	movl	$1, -24(%rbp)
	jmp	.L81
.L92:
	nop
	jmp	.L81
.L93:
	nop
.L81:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	lh_int_free
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	test_stress, .-test_stress
	.section	.rodata
.LC37:
	.string	"test_int_lhash"
.LC38:
	.string	"test_stress"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_int_lhash(%rip), %rdx
	leaq	.LC37(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_stress(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	setup_tests, .-setup_tests
	.data
	.align 32
	.type	dels.0, @object
	.size	dels.0, 48
dels.0:
	.long	65537
	.long	0
	.long	173
	.long	0
	.long	999
	.long	1
	.long	37
	.long	0
	.long	1
	.long	0
	.long	34
	.long	1
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
