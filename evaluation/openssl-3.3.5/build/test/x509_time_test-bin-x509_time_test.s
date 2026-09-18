	.file	"x509_time_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"20170217180105Z"
.LC1:
	.string	"20170229180105Z"
.LC2:
	.string	"20160229180105Z"
.LC3:
	.string	"201702171801Z"
.LC4:
	.string	"20170217180105.001Z"
.LC5:
	.string	"20170217180105+0800"
.LC6:
	.string	"20170217180154Z"
.LC7:
	.string	"170217180154Z"
.LC8:
	.string	"20510217180154Z"
.LC9:
	.string	"19230419180154Z"
.LC10:
	.string	"1702171801Z"
.LC11:
	.string	"050229180101Z"
.LC12:
	.string	"040229180101Z"
.LC13:
	.string	"170217180154+0800"
.LC14:
	.string	"981223180154Z"
	.section	.data.rel.local,"aw"
	.align 32
	.type	x509_format_tests, @object
	.size	x509_format_tests, 640
x509_format_tests:
	.quad	.LC0
	.long	0
	.long	1
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC1
	.long	0
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC2
	.long	0
	.long	1
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC3
	.long	0
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC4
	.long	0
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC5
	.long	0
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC3
	.long	1
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC4
	.long	1
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC5
	.long	1
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC6
	.long	1
	.long	1
	.long	23
	.zero	4
	.quad	.LC7
	.quad	.LC8
	.long	1
	.long	1
	.long	24
	.zero	4
	.quad	.LC8
	.quad	.LC9
	.long	1
	.long	1
	.long	24
	.zero	4
	.quad	.LC9
	.quad	.LC10
	.long	0
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC11
	.long	0
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC12
	.long	0
	.long	1
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC13
	.long	0
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC10
	.long	1
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC13
	.long	1
	.long	0
	.long	-1
	.zero	4
	.quad	0
	.quad	.LC7
	.long	1
	.long	1
	.long	23
	.zero	4
	.quad	.LC7
	.quad	.LC14
	.long	1
	.long	1
	.long	23
	.zero	4
	.quad	.LC14
	.section	.rodata
.LC15:
	.string	"990217180154Z"
.LC16:
	.string	"20170217180154"
.LC17:
	.string	"170217180154"
.LC18:
	.string	"20170217180154.001Z"
.LC19:
	.string	"170217180154.001Z"
.LC20:
	.string	"20170217180154+0100"
.LC21:
	.string	"170217180154+0100"
.LC22:
	.string	"2017021718015400Z"
.LC23:
	.string	"17021718015400Z"
.LC24:
	.string	"2017021718015aZ"
.LC25:
	.string	"17021718015aZ"
	.align 8
.LC26:
	.string	"20170217180154Zlongtrailinggarbage"
	.align 8
.LC27:
	.string	"170217180154Zlongtrailinggarbage"
	.section	.data.rel.local
	.align 32
	.type	x509_cmp_tests, @object
	.size	x509_cmp_tests, 832
x509_cmp_tests:
	.quad	.LC6
	.long	24
	.zero	4
	.quad	1487354514
	.long	-1
	.zero	4
	.quad	.LC6
	.long	24
	.zero	4
	.quad	1487354515
	.long	-1
	.zero	4
	.quad	.LC6
	.long	24
	.zero	4
	.quad	1487354513
	.long	1
	.zero	4
	.quad	.LC7
	.long	23
	.zero	4
	.quad	1487354514
	.long	-1
	.zero	4
	.quad	.LC7
	.long	23
	.zero	4
	.quad	1487354515
	.long	-1
	.zero	4
	.quad	.LC7
	.long	23
	.zero	4
	.quad	1487354513
	.long	1
	.zero	4
	.quad	.LC15
	.long	23
	.zero	4
	.quad	919274514
	.long	-1
	.zero	4
	.quad	.LC15
	.long	23
	.zero	4
	.quad	919274515
	.long	-1
	.zero	4
	.quad	.LC15
	.long	23
	.zero	4
	.quad	919274513
	.long	1
	.zero	4
	.quad	.LC16
	.long	24
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC17
	.long	23
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC3
	.long	24
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC10
	.long	23
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC18
	.long	24
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC19
	.long	23
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC20
	.long	24
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC21
	.long	23
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC22
	.long	24
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC23
	.long	23
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC24
	.long	24
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC25
	.long	23
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC26
	.long	24
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC27
	.long	23
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC6
	.long	23
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC7
	.long	24
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.quad	.LC6
	.long	4
	.zero	4
	.quad	0
	.long	0
	.zero	4
	.section	.rodata
.LC28:
	.string	"x509_cmp_tests[idx].expected"
.LC29:
	.string	"result"
.LC30:
	.string	"../test/x509_time_test.c"
	.align 8
.LC31:
	.string	"test_x509_cmp_time(%d) failed: expected %d, got %d\n"
	.text
	.type	test_x509_cmp_time, @function
test_x509_cmp_time:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	leaq	-32(%rbp), %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-36(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+x509_cmp_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	x509_cmp_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	x509_cmp_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -32(%rbp)
	movq	$0, -16(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	16(%rax), %rdx
	leaq	x509_cmp_tests(%rip), %rax
	addq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_time@PLT
	movl	%eax, -4(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+x509_cmp_tests(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-4(%rbp), %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$268, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L2
	movl	-36(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+x509_cmp_tests(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-4(%rbp), %esi
	movl	-36(%rbp), %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC30(%rip), %rdi
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$269, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L4
.L2:
	movl	$1, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_x509_cmp_time, .-test_x509_cmp_time
	.section	.rodata
.LC32:
	.string	"-1"
.LC33:
	.string	"cmp_result"
.LC34:
	.string	"1"
	.text
	.type	test_x509_cmp_time_current, @function
test_x509_cmp_time_current:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_adj@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_adj@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_cmp_time@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$287, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$1, -4(%rbp)
.L6:
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_cmp_time@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$291, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$1, -4(%rbp)
.L7:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_x509_cmp_time_current, .-test_x509_cmp_time_current
	.section	.rodata
.LC35:
	.string	"0"
	.align 8
.LC36:
	.string	"X509_cmp_timeframe(vpm, asn1_before, asn1_after)"
	.align 8
.LC37:
	.string	"X509_cmp_timeframe(vpm, asn1_before, NULL)"
	.align 8
.LC38:
	.string	"X509_cmp_timeframe(vpm, NULL, asn1_after)"
	.align 8
.LC39:
	.string	"X509_cmp_timeframe(vpm, NULL, NULL)"
.LC40:
	.string	"always_0 ? 0 : -1"
	.align 8
.LC41:
	.string	"X509_cmp_timeframe(vpm, asn1_after, asn1_after)"
.LC42:
	.string	"always_0 ? 0 : 1"
	.align 8
.LC43:
	.string	"X509_cmp_timeframe(vpm, asn1_before, asn1_before)"
	.align 8
.LC44:
	.string	"X509_cmp_timeframe(vpm, asn1_after, asn1_before)"
	.text
	.type	test_X509_cmp_timeframe_vpm, @function
test_X509_cmp_timeframe_vpm:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L10
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get_flags@PLT
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L10
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get_flags@PLT
	andl	$2097152, %eax
	testq	%rax, %rax
	je	.L10
	movl	$1, %eax
	jmp	.L11
.L10:
	movl	$0, %eax
.L11:
	movl	%eax, -20(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L12
	cmpq	$0, -56(%rbp)
	je	.L12
	cmpq	$0, -64(%rbp)
	je	.L12
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_timeframe@PLT
	movl	%eax, %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$310, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L12
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_timeframe@PLT
	movl	%eax, %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$311, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L12
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_cmp_timeframe@PLT
	movl	%eax, %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$312, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L12
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_cmp_timeframe@PLT
	movl	%eax, %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$313, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L12
	cmpl	$0, -20(%rbp)
	je	.L13
	movl	$0, %ebx
	jmp	.L14
.L13:
	movl	$-1, %ebx
.L14:
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_timeframe@PLT
	movl	%eax, %esi
	leaq	.LC40(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$314, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L12
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %ebx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_timeframe@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$316, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L12
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %ebx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_timeframe@PLT
	movl	%eax, %esi
	leaq	.LC42(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$318, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L12
	movl	$1, %eax
	jmp	.L16
.L12:
	movl	$0, %eax
.L16:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_X509_cmp_timeframe_vpm, .-test_X509_cmp_timeframe_vpm
	.type	test_X509_cmp_timeframe, @function
test_X509_cmp_timeframe:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_adj@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_adj@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_adj@PLT
	movq	%rax, -40(%rbp)
	call	X509_VERIFY_PARAM_new@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L25
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_X509_cmp_timeframe_vpm
	testl	%eax, %eax
	je	.L20
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	test_X509_cmp_timeframe_vpm
	testl	%eax, %eax
	je	.L20
	movl	$1, %eax
	jmp	.L21
.L20:
	movl	$0, %eax
.L21:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_time@PLT
	cmpl	$0, -4(%rbp)
	je	.L22
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	test_X509_cmp_timeframe_vpm
	testl	%eax, %eax
	je	.L22
	movq	-48(%rbp), %rax
	movl	$2097152, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	testl	%eax, %eax
	je	.L22
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	test_X509_cmp_timeframe_vpm
	testl	%eax, %eax
	je	.L22
	movl	$1, %eax
	jmp	.L23
.L22:
	movl	$0, %eax
.L23:
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
	jmp	.L19
.L25:
	nop
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_X509_cmp_timeframe, .-test_X509_cmp_timeframe
	.section	.rodata
	.align 8
.LC45:
	.string	"test_x509_time(%d) failed: internal error\n"
	.align 8
.LC46:
	.string	"x509_format_tests[idx].expected"
	.align 8
.LC47:
	.string	"test_x509_time(%d) failed: expected %d, got %d\n"
	.align 8
.LC48:
	.string	"x509_format_tests[idx].expected_type"
.LC49:
	.string	"t->type"
	.align 8
.LC50:
	.string	"test_x509_time(%d) failed: expected_type %d, got %d\n"
	.align 8
.LC51:
	.string	"x509_format_tests[idx].expected_string"
.LC52:
	.string	"(const char *)t->data"
	.align 8
.LC53:
	.string	"test_x509_time(%d) failed: expected_string %s, got %.*s\n"
	.text
	.type	test_x509_time, @function
test_x509_time:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+x509_format_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L27
	call	ASN1_TIME_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L27
	movl	-20(%rbp), %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC30(%rip), %rdi
	movl	%eax, %ecx
	movl	$361, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L28
.L27:
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	x509_format_tests(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_set_string_X509@PLT
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+x509_format_tests(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-16(%rbp), %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$368, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L29
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	12+x509_format_tests(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC30(%rip), %rdi
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$369, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L30
.L29:
	cmpq	$0, -8(%rbp)
	je	.L31
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+x509_format_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$-1, %eax
	je	.L31
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+x509_format_tests(%rip), %rax
	movl	(%rdx,%rax), %edi
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$376, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L31
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+x509_format_tests(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-20(%rbp), %eax
	leaq	.LC50(%rip), %rdx
	leaq	.LC30(%rip), %rdi
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$377, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L30
.L31:
	cmpq	$0, -8(%rbp)
	je	.L32
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+x509_format_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L32
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+x509_format_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	24+x509_format_tests(%rip), %rdx
	movq	(%rcx,%rdx), %rsi
	movq	-8(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %r9
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %r8
	leaq	.LC51(%rip), %rcx
	leaq	.LC52(%rip), %rdx
	leaq	.LC30(%rip), %rdi
	pushq	%rax
	pushq	%rsi
	movl	$385, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L32
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	(%rax), %r8d
	movl	-20(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+x509_format_tests(%rip), %rax
	movq	(%rdx,%rax), %rsi
	movl	-20(%rbp), %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC30(%rip), %rdi
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rsi, %r8
	movl	%eax, %ecx
	movl	$388, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$16, %rsp
	jmp	.L30
.L32:
	movl	$1, -12(%rbp)
.L30:
	cmpq	$0, -8(%rbp)
	je	.L33
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
.L33:
	movl	-12(%rbp), %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_x509_time, .-test_x509_time
	.section	.rodata
	.align 32
	.type	day_of_week_tests, @object
	.size	day_of_week_tests, 980
day_of_week_tests:
	.long	1900
	.long	1
	.long	1
	.long	0
	.long	1
	.long	1900
	.long	2
	.long	28
	.long	58
	.long	3
	.long	1900
	.long	3
	.long	1
	.long	59
	.long	4
	.long	1900
	.long	12
	.long	31
	.long	364
	.long	1
	.long	1901
	.long	1
	.long	1
	.long	0
	.long	2
	.long	1970
	.long	1
	.long	1
	.long	0
	.long	4
	.long	1999
	.long	1
	.long	10
	.long	9
	.long	0
	.long	1999
	.long	12
	.long	31
	.long	364
	.long	5
	.long	2000
	.long	1
	.long	1
	.long	0
	.long	6
	.long	2000
	.long	2
	.long	28
	.long	58
	.long	1
	.long	2000
	.long	2
	.long	29
	.long	59
	.long	2
	.long	2000
	.long	3
	.long	1
	.long	60
	.long	3
	.long	2000
	.long	12
	.long	31
	.long	365
	.long	0
	.long	2001
	.long	1
	.long	1
	.long	0
	.long	1
	.long	2008
	.long	1
	.long	1
	.long	0
	.long	2
	.long	2008
	.long	2
	.long	28
	.long	58
	.long	4
	.long	2008
	.long	2
	.long	29
	.long	59
	.long	5
	.long	2008
	.long	3
	.long	1
	.long	60
	.long	6
	.long	2008
	.long	12
	.long	31
	.long	365
	.long	3
	.long	2009
	.long	1
	.long	1
	.long	0
	.long	4
	.long	2011
	.long	1
	.long	1
	.long	0
	.long	6
	.long	2011
	.long	2
	.long	28
	.long	58
	.long	1
	.long	2011
	.long	3
	.long	1
	.long	59
	.long	2
	.long	2011
	.long	12
	.long	31
	.long	364
	.long	6
	.long	2012
	.long	1
	.long	1
	.long	0
	.long	0
	.long	2019
	.long	1
	.long	2
	.long	1
	.long	3
	.long	2019
	.long	2
	.long	2
	.long	32
	.long	6
	.long	2019
	.long	3
	.long	2
	.long	60
	.long	6
	.long	2019
	.long	4
	.long	2
	.long	91
	.long	2
	.long	2019
	.long	5
	.long	2
	.long	121
	.long	4
	.long	2019
	.long	6
	.long	2
	.long	152
	.long	0
	.long	2019
	.long	7
	.long	2
	.long	182
	.long	2
	.long	2019
	.long	8
	.long	2
	.long	213
	.long	5
	.long	2019
	.long	9
	.long	2
	.long	244
	.long	1
	.long	2019
	.long	10
	.long	2
	.long	274
	.long	3
	.long	2019
	.long	11
	.long	2
	.long	305
	.long	6
	.long	2019
	.long	12
	.long	2
	.long	335
	.long	1
	.long	2020
	.long	1
	.long	2
	.long	1
	.long	4
	.long	2020
	.long	2
	.long	2
	.long	32
	.long	0
	.long	2020
	.long	3
	.long	2
	.long	61
	.long	1
	.long	2020
	.long	4
	.long	2
	.long	92
	.long	4
	.long	2020
	.long	5
	.long	2
	.long	122
	.long	6
	.long	2020
	.long	6
	.long	2
	.long	153
	.long	2
	.long	2020
	.long	7
	.long	2
	.long	183
	.long	4
	.long	2020
	.long	8
	.long	2
	.long	214
	.long	0
	.long	2020
	.long	9
	.long	2
	.long	245
	.long	3
	.long	2020
	.long	10
	.long	2
	.long	275
	.long	5
	.long	2020
	.long	11
	.long	2
	.long	306
	.long	1
	.long	2020
	.long	12
	.long	2
	.long	336
	.long	3
.LC54:
	.string	"%04d%02d%02d050505Z"
.LC55:
	.string	"a = ASN1_TIME_new()"
.LC56:
	.string	"ASN1_TIME_set_string(a, d)"
.LC57:
	.string	"ASN1_TIME_to_tm(a, &t)"
.LC58:
	.string	"day_of_week_tests[n].yd"
.LC59:
	.string	"t.tm_yday"
.LC60:
	.string	"day_of_week_tests[n].wd"
.LC61:
	.string	"t.tm_wday"
	.text
	.type	test_days, @function
test_days:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movq	$0, -8(%rbp)
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	8+day_of_week_tests(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	4+day_of_week_tests(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	day_of_week_tests(%rip), %rax
	movl	(%rdx,%rax), %edx
	leaq	.LC54(%rip), %rsi
	leaq	-32(%rbp), %rax
	movl	%edi, %r9d
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	call	ASN1_TIME_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC30(%rip), %rdi
	movq	%rax, %rcx
	movl	$469, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L35
	movl	$0, %eax
	jmp	.L39
.L35:
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_set_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC30(%rip), %rdi
	movl	%eax, %ecx
	movl	$472, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_to_tm@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC30(%rip), %rdi
	movl	%eax, %ecx
	movl	$473, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	12+day_of_week_tests(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-68(%rbp), %esi
	leaq	.LC58(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$474, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L37
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	16+day_of_week_tests(%rip), %rax
	movl	(%rdx,%rax), %edi
	movl	-72(%rbp), %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$475, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L37
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_free@PLT
	movl	-12(%rbp), %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_days, .-test_days
	.section	.rodata
.LC62:
	.string	"20170731222050Z"
.LC63:
	.string	"Jul 31 22:20:50 2017 GMT"
.LC64:
	.string	"201707312220Z"
.LC65:
	.string	"Bad time value"
.LC66:
	.string	"20170731222050.123Z"
.LC67:
	.string	"Jul 31 22:20:50.123 2017 GMT"
.LC68:
	.string	"20170731222050.1Z"
.LC69:
	.string	"Jul 31 22:20:50.1 2017 GMT"
.LC70:
	.string	"20170731222050.Z"
.LC71:
	.string	"170731222050Z"
.LC72:
	.string	"1707312220Z"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	x509_print_tests_rfc_822, @object
	.size	x509_print_tests_rfc_822, 224
x509_print_tests_rfc_822:
	.long	15
	.long	24
	.quad	.LC62
	.quad	0
	.quad	.LC63
	.long	13
	.long	24
	.quad	.LC64
	.quad	0
	.quad	.LC65
	.long	19
	.long	24
	.quad	.LC66
	.quad	0
	.quad	.LC67
	.long	17
	.long	24
	.quad	.LC68
	.quad	0
	.quad	.LC69
	.long	16
	.long	24
	.quad	.LC70
	.quad	0
	.quad	.LC65
	.long	13
	.long	23
	.quad	.LC71
	.quad	0
	.quad	.LC63
	.long	11
	.long	23
	.quad	.LC72
	.quad	0
	.quad	.LC65
	.section	.rodata
.LC73:
	.string	"2017-07-31 22:20:50Z"
.LC74:
	.string	"2017-07-31 22:20:50.123Z"
.LC75:
	.string	"2017-07-31 22:20:50.1Z"
	.section	.data.rel.ro.local
	.align 32
	.type	x509_print_tests_iso_8601, @object
	.size	x509_print_tests_iso_8601, 224
x509_print_tests_iso_8601:
	.long	15
	.long	24
	.quad	.LC62
	.quad	0
	.quad	.LC73
	.long	13
	.long	24
	.quad	.LC64
	.quad	0
	.quad	.LC65
	.long	19
	.long	24
	.quad	.LC66
	.quad	0
	.quad	.LC74
	.long	17
	.long	24
	.quad	.LC68
	.quad	0
	.quad	.LC75
	.long	16
	.long	24
	.quad	.LC70
	.quad	0
	.quad	.LC65
	.long	13
	.long	23
	.quad	.LC71
	.quad	0
	.quad	.LC73
	.long	11
	.long	23
	.quad	.LC72
	.quad	0
	.quad	.LC65
	.section	.rodata
.LC76:
	.string	"m = BIO_new(BIO_s_mem())"
.LC77:
	.string	"\"Bad time value\""
.LC78:
	.string	"readable"
.LC79:
	.string	"rv = BIO_get_mem_data(m, &pp)"
.LC80:
	.string	"(int)strlen(readable)"
.LC81:
	.string	"rv"
.LC82:
	.string	"pp"
	.text
	.type	test_x509_time_print_rfc_822, @function
test_x509_time_print_rfc_822:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC30(%rip), %rdi
	movq	%rax, %rcx
	movl	$545, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L47
	movl	-52(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	x509_print_tests_rfc_822(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_print_ex@PLT
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+x509_print_tests_rfc_822(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L43
	leaq	.LC65(%rip), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC77(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$551, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L48
.L43:
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$555, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L49
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	leaq	.LC80(%rip), %rcx
	leaq	.LC81(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$556, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L49
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %r8
	movq	-40(%rbp), %rdi
	leaq	.LC78(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC30(%rip), %rax
	pushq	%rsi
	pushq	-32(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$557, %esi
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L49
	movl	$1, -4(%rbp)
	jmp	.L42
.L47:
	nop
	jmp	.L42
.L48:
	nop
	jmp	.L42
.L49:
	nop
.L42:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_x509_time_print_rfc_822, .-test_x509_time_print_rfc_822
	.type	test_x509_time_print_iso_8601, @function
test_x509_time_print_iso_8601:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC76(%rip), %rdx
	leaq	.LC30(%rip), %rdi
	movq	%rax, %rcx
	movl	$573, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L57
	movl	-52(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	x509_print_tests_iso_8601(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_print_ex@PLT
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+x509_print_tests_iso_8601(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L53
	leaq	.LC65(%rip), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC77(%rip), %rcx
	leaq	.LC78(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$579, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L58
.L53:
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %esi
	leaq	.LC35(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$583, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L59
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	leaq	.LC80(%rip), %rcx
	leaq	.LC81(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$584, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L59
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movl	-20(%rbp), %eax
	movslq	%eax, %r8
	movq	-40(%rbp), %rdi
	leaq	.LC78(%rip), %rcx
	leaq	.LC82(%rip), %rdx
	leaq	.LC30(%rip), %rax
	pushq	%rsi
	pushq	-32(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$585, %esi
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L59
	movl	$1, -4(%rbp)
	jmp	.L52
.L57:
	nop
	jmp	.L52
.L58:
	nop
	jmp	.L52
.L59:
	nop
.L52:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_x509_time_print_iso_8601, .-test_x509_time_print_iso_8601
	.section	.rodata
.LC83:
	.string	"test_x509_cmp_time_current"
.LC84:
	.string	"test_X509_cmp_timeframe"
.LC85:
	.string	"test_x509_cmp_time"
.LC86:
	.string	"test_x509_time"
.LC87:
	.string	"test_days"
.LC88:
	.string	"test_x509_time_print_rfc_822"
.LC89:
	.string	"test_x509_time_print_iso_8601"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_x509_cmp_time_current(%rip), %rdx
	leaq	.LC83(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_X509_cmp_timeframe(%rip), %rdx
	leaq	.LC84(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_x509_cmp_time(%rip), %rsi
	leaq	.LC85(%rip), %rax
	movl	$1, %ecx
	movl	$26, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_x509_time(%rip), %rsi
	leaq	.LC86(%rip), %rax
	movl	$1, %ecx
	movl	$20, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_days(%rip), %rsi
	leaq	.LC87(%rip), %rax
	movl	$1, %ecx
	movl	$49, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_x509_time_print_rfc_822(%rip), %rsi
	leaq	.LC88(%rip), %rax
	movl	$1, %ecx
	movl	$7, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_x509_time_print_iso_8601(%rip), %rsi
	leaq	.LC89(%rip), %rax
	movl	$1, %ecx
	movl	$7, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
