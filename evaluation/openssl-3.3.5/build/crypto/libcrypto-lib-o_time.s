	.file	"o_time.c"
	.text
	.globl	OPENSSL_gmtime
	.type	OPENSSL_gmtime, @function
OPENSSL_gmtime:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gmtime_r@PLT
	testq	%rax, %rax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	OPENSSL_gmtime, .-OPENSSL_gmtime
	.globl	OPENSSL_gmtime_adj
	.type	OPENSSL_gmtime_adj, @function
OPENSSL_gmtime_adj:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-4(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	julian_adj
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L9
.L5:
	movq	-24(%rbp), %rax
	leaq	-16(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	movq	%rax, %rdi
	call	julian_to_date
	movl	-8(%rbp), %eax
	cmpl	$1899, %eax
	jle	.L7
	movl	-8(%rbp), %eax
	cmpl	$9999, %eax
	jle	.L8
.L7:
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	-8(%rbp), %eax
	leal	-1900(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-1851608123, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$11, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$5, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$60, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$5, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$60, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	OPENSSL_gmtime_adj, .-OPENSSL_gmtime_adj
	.globl	OPENSSL_gmtime_diff
	.type	OPENSSL_gmtime_diff, @function
OPENSSL_gmtime_diff:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	leaq	-20(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	julian_adj
	testl	%eax, %eax
	jne	.L11
	movl	$0, %eax
	jmp	.L18
.L11:
	leaq	-24(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	julian_adj
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L18
.L13:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jle	.L14
	cmpl	$0, -4(%rbp)
	jns	.L14
	subq	$1, -16(%rbp)
	addl	$86400, -4(%rbp)
.L14:
	cmpq	$0, -16(%rbp)
	jns	.L15
	cmpl	$0, -4(%rbp)
	jle	.L15
	addq	$1, -16(%rbp)
	subl	$86400, -4(%rbp)
.L15:
	cmpq	$0, -56(%rbp)
	je	.L16
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L16:
	cmpq	$0, -64(%rbp)
	je	.L17
	movq	-64(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
.L17:
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	OPENSSL_gmtime_diff, .-OPENSSL_gmtime_diff
	.type	julian_adj, @function
julian_adj:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-72(%rbp), %rcx
	movabsq	$1749024623285053783, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	sarq	$13, %rax
	sarq	$63, %rcx
	movq	%rcx, %rdx
	subq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	imull	$-86400, %eax, %eax
	movq	-72(%rbp), %rdx
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-60(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	imull	$3600, %eax, %edx
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	imull	$60, %eax, %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	%edx, %eax
	addl	%eax, -4(%rbp)
	cmpl	$86399, -4(%rbp)
	jle	.L20
	addq	$1, -16(%rbp)
	subl	$86400, -4(%rbp)
	jmp	.L21
.L20:
	cmpl	$0, -4(%rbp)
	jns	.L21
	subq	$1, -16(%rbp)
	addl	$86400, -4(%rbp)
.L21:
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	addl	$1900, %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	date_to_julian
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	addq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jns	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	movq	-80(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	julian_adj, .-julian_adj
	.type	date_to_julian, @function
date_to_julian:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	4800(%rax), %ecx
	movl	-8(%rbp), %eax
	subl	$14, %eax
	movslq	%eax, %rdx
	imulq	$715827883, %rdx, %rdx
	shrq	$32, %rdx
	sarl	%edx
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rcx,%rdx), %eax
	imull	$1461, %eax, %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edi
	movl	-8(%rbp), %eax
	leal	-2(%rax), %esi
	movl	-8(%rbp), %eax
	subl	$14, %eax
	movslq	%eax, %rdx
	imulq	$715827883, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	%ecx
	sarl	$31, %eax
	subl	%ecx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%esi, %eax
	imull	$367, %eax, %eax
	movslq	%eax, %rdx
	imulq	$715827883, %rdx, %rdx
	shrq	$32, %rdx
	sarl	%edx
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdi,%rdx), %ecx
	movl	-4(%rbp), %eax
	leal	4900(%rax), %esi
	movl	-8(%rbp), %eax
	subl	$14, %eax
	movslq	%eax, %rdx
	imulq	$715827883, %rdx, %rdx
	shrq	$32, %rdx
	sarl	%edx
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	imulq	$1374389535, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$5, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	negl	%eax
	leal	(%rcx,%rax), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	subl	$32075, %eax
	cltq
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	date_to_julian, .-date_to_julian
	.type	julian_to_date, @function
julian_to_date:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	addq	$68569, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rcx
	movabsq	$4137408090565272301, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	sarq	$15, %rax
	sarq	$63, %rcx
	movq	%rcx, %rdx
	subq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	imulq	$146097, %rax, %rax
	addq	$3, %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	negq	%rax
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	imulq	$4000, %rax, %rcx
	movabsq	$1654928120671552141, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	sarq	$17, %rax
	sarq	$63, %rcx
	movq	%rcx, %rdx
	subq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	imulq	$1461, %rax, %rax
	leaq	3(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$2, %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$31, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movabsq	$-3007867137478590557, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	sarq	$11, %rax
	sarq	$63, %rcx
	movq	%rcx, %rdx
	subq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	$2447, %rax, %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	sarq	$63, %rcx
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rcx
	movabsq	$3353953467947191203, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	sarq	%rax
	sarq	$63, %rcx
	movq	%rcx, %rdx
	subq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %edx
	subl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	$2, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	subq	$49, %rax
	imull	$100, %eax, %eax
	movq	-24(%rbp), %rdx
	addl	%edx, %eax
	movq	-8(%rbp), %rdx
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	julian_to_date, .-julian_to_date
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
