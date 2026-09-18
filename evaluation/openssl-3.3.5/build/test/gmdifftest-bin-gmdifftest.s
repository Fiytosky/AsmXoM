	.file	"gmdifftest.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"OPENSSL_gmtime_adj(&tm1, 0, offset)"
.LC1:
	.string	"../test/gmdifftest.c"
.LC2:
	.string	"tm2.tm_year"
.LC3:
	.string	"tm1.tm_year"
.LC4:
	.string	"tm2.tm_mon"
.LC5:
	.string	"tm1.tm_mon"
.LC6:
	.string	"tm2.tm_mday"
.LC7:
	.string	"tm1.tm_mday"
.LC8:
	.string	"tm2.tm_hour"
.LC9:
	.string	"tm1.tm_hour"
.LC10:
	.string	"tm2.tm_min"
.LC11:
	.string	"tm1.tm_min"
.LC12:
	.string	"tm2.tm_sec"
.LC13:
	.string	"tm1.tm_sec"
	.align 8
.LC14:
	.string	"OPENSSL_gmtime_diff(&off_day, &off_sec, &o1, &tm1)"
.LC15:
	.string	"toffset"
.LC16:
	.string	"offset"
	.text
	.type	check_time, @function
check_time:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	time@PLT
	movq	-208(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -216(%rbp)
	leaq	-128(%rbp), %rdx
	leaq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_gmtime@PLT
	leaq	-64(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_gmtime@PLT
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -192(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-232(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_gmtime_adj@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$35, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L2
	movl	-108(%rbp), %edi
	movl	-44(%rbp), %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$36, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movl	-112(%rbp), %edi
	movl	-48(%rbp), %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$37, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movl	-116(%rbp), %edi
	movl	-52(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$38, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movl	-120(%rbp), %edi
	movl	-56(%rbp), %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$39, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movl	-124(%rbp), %edi
	movl	-60(%rbp), %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$40, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	movl	-128(%rbp), %edi
	movl	-64(%rbp), %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$41, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-64(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	leaq	-200(%rbp), %rsi
	leaq	-196(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_gmtime_diff@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$42, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L3
.L2:
	movl	$0, %eax
	jmp	.L6
.L3:
	movl	-196(%rbp), %eax
	cltq
	imulq	$86400, %rax, %rdx
	movl	-200(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-232(%rbp), %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$1, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	check_time, .-check_time
	.type	test_gmtime, @function
test_gmtime:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	check_time
	testl	%eax, %eax
	je	.L8
	movl	-4(%rbp), %eax
	negl	%eax
	cltq
	movq	%rax, %rdi
	call	check_time
	testl	%eax, %eax
	je	.L8
	movl	-4(%rbp), %eax
	cltq
	imulq	$1000, %rax, %rax
	movq	%rax, %rdi
	call	check_time
	testl	%eax, %eax
	je	.L8
	movl	-4(%rbp), %eax
	negl	%eax
	cltq
	imulq	$1000, %rax, %rax
	movq	%rax, %rdi
	call	check_time
	testl	%eax, %eax
	je	.L8
	movl	-4(%rbp), %eax
	cltq
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	check_time
	testl	%eax, %eax
	je	.L8
	movl	-4(%rbp), %eax
	negl	%eax
	cltq
	imulq	$1000000, %rax, %rax
	movq	%rax, %rdi
	call	check_time
	testl	%eax, %eax
	je	.L8
	movl	$1, %eax
	jmp	.L10
.L8:
	movl	$0, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_gmtime, .-test_gmtime
	.section	.rodata
.LC17:
	.string	"test_gmtime"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_gmtime(%rip), %rsi
	leaq	.LC17(%rip), %rax
	movl	$0, %ecx
	movl	$1000, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
