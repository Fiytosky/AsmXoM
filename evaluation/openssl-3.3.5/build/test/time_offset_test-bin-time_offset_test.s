	.file	"time_offset_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"20001201000000Z"
.LC1:
	.string	"20001201010000+0100"
.LC2:
	.string	"20001201050000+0500"
.LC3:
	.string	"20001130230000-0100"
.LC4:
	.string	"20001130190000-0500"
.LC5:
	.string	"20001130190001-0500"
.LC6:
	.string	"20001130185959-0500"
.LC7:
	.string	"001201000000Z"
.LC8:
	.string	"001201010000+0100"
.LC9:
	.string	"001201050000+0500"
.LC10:
	.string	"001130230000-0100"
.LC11:
	.string	"001130190000-0500"
.LC12:
	.string	"001201000000-0000"
.LC13:
	.string	"001201000001-0000"
.LC14:
	.string	"001130235959-0000"
.LC15:
	.string	"20001201000000+0000"
.LC16:
	.string	"20001201000000+0100"
.LC17:
	.string	"001201000000+0100"
.LC18:
	.string	"20001201000000-0100"
.LC19:
	.string	"001201000000-0100"
.LC20:
	.string	"20001201123400+1234"
.LC21:
	.string	"20001130112600-1234"
	.section	.data.rel.local,"aw"
	.align 32
	.type	tests, @object
	.size	tests, 352
tests:
	.quad	.LC0
	.long	0
	.long	24
	.quad	.LC1
	.long	0
	.long	24
	.quad	.LC2
	.long	0
	.long	24
	.quad	.LC3
	.long	0
	.long	24
	.quad	.LC4
	.long	0
	.long	24
	.quad	.LC5
	.long	1
	.long	24
	.quad	.LC6
	.long	-1
	.long	24
	.quad	.LC7
	.long	0
	.long	23
	.quad	.LC8
	.long	0
	.long	23
	.quad	.LC9
	.long	0
	.long	23
	.quad	.LC10
	.long	0
	.long	23
	.quad	.LC11
	.long	0
	.long	23
	.quad	.LC12
	.long	0
	.long	23
	.quad	.LC13
	.long	1
	.long	23
	.quad	.LC14
	.long	-1
	.long	23
	.quad	.LC15
	.long	0
	.long	24
	.quad	.LC16
	.long	-1
	.long	24
	.quad	.LC17
	.long	-1
	.long	23
	.quad	.LC18
	.long	1
	.long	24
	.quad	.LC19
	.long	1
	.long	23
	.quad	.LC20
	.long	0
	.long	24
	.quad	.LC21
	.long	0
	.long	24
	.data
	.align 8
	.type	the_time, @object
	.size	the_time, 8
the_time:
	.quad	975628800
	.section	.data.rel.local
	.align 16
	.type	the_asn1_time, @object
	.size	the_asn1_time, 24
the_asn1_time:
	.long	15
	.long	24
	.quad	.LC0
	.quad	0
	.section	.rodata
	.align 8
.LC22:
	.string	"ASN1_TIME_diff(&day, &sec, &the_asn1_time, &at)"
.LC23:
	.string	"../test/time_offset_test.c"
	.align 8
.LC24:
	.string	"ASN1_TIME_diff() failed for %s\n"
.LC25:
	.string	"ret"
.LC26:
	.string	"testdata->time_result"
	.align 8
.LC27:
	.string	"ASN1_TIME_diff() test failed for %s day=%d sec=%d\n"
	.align 8
.LC28:
	.string	"ASN1_UTCTIME_cmp_time_t() test failed for %s\n"
	.text
	.type	test_offset, @function
test_offset:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	-68(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	tests(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$-2, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	$0, -32(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	the_asn1_time(%rip), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-52(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ASN1_TIME_diff@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%eax, %ecx
	movl	$79, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L2
	movq	-40(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$80, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L11
.L2:
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jle	.L4
	movl	$1, -4(%rbp)
	jmp	.L5
.L4:
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jns	.L6
	movl	$-1, -4(%rbp)
	jmp	.L5
.L6:
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	jle	.L7
	movl	$1, -4(%rbp)
	jmp	.L5
.L7:
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	jns	.L8
	movl	$-1, -4(%rbp)
	jmp	.L5
.L8:
	movl	$0, -4(%rbp)
.L5:
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movl	-4(%rbp), %edi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L9
	movl	-56(%rbp), %esi
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$95, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L11
.L9:
	movq	the_time(%rip), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_cmp_time_t@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movl	-4(%rbp), %edi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$101, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L10
	movq	-40(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$102, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L11
.L10:
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_offset, .-test_offset
	.section	.rodata
.LC29:
	.string	"test_offset"
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
	leaq	test_offset(%rip), %rsi
	leaq	.LC29(%rip), %rax
	movl	$1, %ecx
	movl	$22, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
