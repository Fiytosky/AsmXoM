	.file	"ssl3_cbc.c"
	.text
	.type	constant_time_msb_s, @function
constant_time_msb_s:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$63, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	constant_time_msb_s, .-constant_time_msb_s
	.type	constant_time_lt_s, @function
constant_time_lt_s:
.LFB325:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	xorq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	xorq	-16(%rbp), %rax
	orq	%rdx, %rax
	xorq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_msb_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	constant_time_lt_s, .-constant_time_lt_s
	.type	constant_time_ge_s, @function
constant_time_ge_s:
.LFB333:
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
	call	constant_time_lt_s
	notq	%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE333:
	.size	constant_time_ge_s, .-constant_time_ge_s
	.type	constant_time_ge_8_s, @function
constant_time_ge_8_s:
.LFB335:
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
	call	constant_time_ge_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE335:
	.size	constant_time_ge_8_s, .-constant_time_ge_8_s
	.type	constant_time_is_zero_s, @function
constant_time_is_zero_s:
.LFB337:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	notq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$1, %rax
	andq	%rdx, %rax
	movq	%rax, %rdi
	call	constant_time_msb_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE337:
	.size	constant_time_is_zero_s, .-constant_time_is_zero_s
	.type	constant_time_eq_s, @function
constant_time_eq_s:
.LFB342:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	xorq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_is_zero_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE342:
	.size	constant_time_eq_s, .-constant_time_eq_s
	.type	constant_time_eq_8_s, @function
constant_time_eq_8_s:
.LFB344:
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
	call	constant_time_eq_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE344:
	.size	constant_time_eq_8_s, .-constant_time_eq_8_s
	.type	value_barrier, @function
value_barrier:
.LFB347:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE347:
	.size	value_barrier, .-value_barrier
	.type	constant_time_select, @function
constant_time_select:
.LFB352:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	value_barrier
	andl	-16(%rbp), %eax
	movl	%eax, %ebx
	movl	-12(%rbp), %eax
	notl	%eax
	movl	%eax, %edi
	call	value_barrier
	andl	-20(%rbp), %eax
	orl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE352:
	.size	constant_time_select, .-constant_time_select
	.type	constant_time_select_8, @function
constant_time_select_8:
.LFB354:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%edi, %edx
	movb	%dl, -4(%rbp)
	movl	%ecx, %edx
	movb	%dl, -8(%rbp)
	movb	%al, -12(%rbp)
	movzbl	-12(%rbp), %edx
	movzbl	-8(%rbp), %ecx
	movzbl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE354:
	.size	constant_time_select_8, .-constant_time_select_8
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB429:
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
.LFE429:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB430:
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
.LFE430:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	tls1_md5_final_raw, @function
tls1_md5_final_raw:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	tls1_md5_final_raw, .-tls1_md5_final_raw
	.type	tls1_sha1_final_raw, @function
tls1_sha1_final_raw:
.LFB446:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	tls1_sha1_final_raw, .-tls1_sha1_final_raw
	.type	tls1_sha256_final_raw, @function
tls1_sha256_final_raw:
.LFB447:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L28
.L29:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	(%rax,%rdx,4), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L28:
	cmpl	$7, -4(%rbp)
	jbe	.L29
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	tls1_sha256_final_raw, .-tls1_sha256_final_raw
	.type	tls1_sha512_final_raw, @function
tls1_sha512_final_raw:
.LFB448:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L31
.L32:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	shrq	$56, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	shrq	$48, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	shrq	$40, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	shrq	$24, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	shrq	$16, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	shrq	$8, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L31:
	cmpl	$7, -4(%rbp)
	jbe	.L32
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	tls1_sha512_final_raw, .-tls1_sha512_final_raw
	.section	.rodata
.LC0:
	.string	"MD5"
.LC1:
	.string	"SHA1"
.LC2:
	.string	"SHA2-224"
.LC3:
	.string	"SHA2-256"
.LC4:
	.string	"SHA2-384"
.LC5:
	.string	"SHA2-512"
	.text
	.globl	ssl3_cbc_digest_record
	.type	ssl3_cbc_digest_record, @function
ssl3_cbc_digest_record:
.LFB449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$960, %rsp
	movq	%rdi, -904(%rbp)
	movq	%rsi, -912(%rbp)
	movq	%rdx, -920(%rbp)
	movq	%rcx, -928(%rbp)
	movq	%r8, -936(%rbp)
	movq	%r9, -944(%rbp)
	movl	40(%rbp), %eax
	movb	%al, -948(%rbp)
	movq	$64, -32(%rbp)
	movq	$40, -40(%rbp)
	movq	$0, -128(%rbp)
	movq	$8, -104(%rbp)
	movb	$1, -105(%rbp)
	movl	$0, -112(%rbp)
	cmpq	$1048575, 16(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L34
	movl	$0, %eax
	jmp	.L90
.L34:
	leaq	.LC0(%rip), %rdx
	movq	-904(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L36
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	MD5_Init@PLT
	testl	%eax, %eax
	jg	.L37
	movl	$0, %eax
	jmp	.L90
.L37:
	leaq	tls1_md5_final_raw(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	MD5_Transform@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$16, -24(%rbp)
	movq	$48, -40(%rbp)
	movb	$0, -105(%rbp)
	jmp	.L38
.L36:
	leaq	.LC1(%rip), %rdx
	movq	-904(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	testl	%eax, %eax
	jg	.L40
	movl	$0, %eax
	jmp	.L90
.L40:
	leaq	tls1_sha1_final_raw(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	SHA1_Transform@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$20, -24(%rbp)
	jmp	.L38
.L39:
	leaq	.LC2(%rip), %rdx
	movq	-904(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L41
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	SHA224_Init@PLT
	testl	%eax, %eax
	jg	.L42
	movl	$0, %eax
	jmp	.L90
.L42:
	leaq	tls1_sha256_final_raw(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	SHA256_Transform@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$28, -24(%rbp)
	jmp	.L38
.L41:
	leaq	.LC3(%rip), %rdx
	movq	-904(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L43
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	SHA256_Init@PLT
	testl	%eax, %eax
	jg	.L44
	movl	$0, %eax
	jmp	.L90
.L44:
	leaq	tls1_sha256_final_raw(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	SHA256_Transform@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$32, -24(%rbp)
	jmp	.L38
.L43:
	leaq	.LC4(%rip), %rdx
	movq	-904(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L45
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	SHA384_Init@PLT
	testl	%eax, %eax
	jg	.L46
	movl	$0, %eax
	jmp	.L90
.L46:
	leaq	tls1_sha512_final_raw(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	SHA512_Transform@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$48, -24(%rbp)
	movq	$128, -32(%rbp)
	movq	$16, -104(%rbp)
	jmp	.L38
.L45:
	leaq	.LC5(%rip), %rdx
	movq	-904(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L47
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	SHA512_Init@PLT
	testl	%eax, %eax
	jg	.L48
	movl	$0, %eax
	jmp	.L90
.L48:
	leaq	tls1_sha512_final_raw(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	SHA512_Transform@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	$64, -24(%rbp)
	movq	$128, -32(%rbp)
	movq	$16, -104(%rbp)
	jmp	.L38
.L47:
	cmpq	$0, -920(%rbp)
	je	.L49
	movq	-920(%rbp), %rax
	movq	$0, (%rax)
.L49:
	movl	$0, %eax
	jmp	.L90
.L38:
	cmpq	$16, -104(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L50
	cmpq	$128, -32(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L50
	cmpq	$64, -24(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L51
.L50:
	movl	$0, %eax
	jmp	.L90
.L51:
	movq	$13, -48(%rbp)
	cmpb	$0, -948(%rbp)
	je	.L52
	movq	32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	addq	$11, %rax
	movq	%rax, -48(%rbp)
.L52:
	cmpb	$0, -948(%rbp)
	jne	.L53
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addq	$255, %rax
	movl	$0, %edx
	divq	-32(%rbp)
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.L54
.L53:
	movq	$2, -56(%rbp)
.L54:
	movq	16(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	subq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rax, -152(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-944(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-160(%rbp), %rax
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rax, -176(%rbp)
	movq	-160(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, %edx
	divq	-32(%rbp)
	movq	%rax, -184(%rbp)
	cmpb	$0, -948(%rbp)
	je	.L55
	movl	$1, %edx
	jmp	.L56
.L55:
	movl	$0, %edx
.L56:
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-152(%rbp), %rax
	jnb	.L57
	movq	-152(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.L57:
	movq	-160(%rbp), %rax
	salq	$3, %rax
	movq	%rax, -80(%rbp)
	cmpb	$0, -948(%rbp)
	jne	.L58
	movq	-32(%rbp), %rax
	salq	$3, %rax
	addq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpq	$128, 32(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L59
	movl	$0, %eax
	jmp	.L90
.L59:
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	$0, -88(%rbp)
	jmp	.L60
.L61:
	leaq	-560(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	$54, %eax
	movl	%eax, %edx
	leaq	-560(%rbp), %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addq	$1, -88(%rbp)
.L60:
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L61
	leaq	-560(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L58:
	cmpb	$0, -105(%rbp)
	je	.L62
	movq	-104(%rbp), %rax
	leaq	-4(%rax), %rdx
	leaq	-432(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-80(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	subq	$4, %rax
	movb	%dl, -432(%rbp,%rax)
	movq	-80(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movb	%dl, -432(%rbp,%rax)
	movq	-80(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	subq	$2, %rax
	movb	%dl, -432(%rbp,%rax)
	movq	-104(%rbp), %rax
	subq	$1, %rax
	movq	-80(%rbp), %rdx
	movb	%dl, -432(%rbp,%rax)
	jmp	.L63
.L62:
	movq	-104(%rbp), %rdx
	leaq	-432(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-80(%rbp), %rax
	shrq	$24, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	subq	$5, %rax
	movb	%dl, -432(%rbp,%rax)
	movq	-80(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	subq	$6, %rax
	movb	%dl, -432(%rbp,%rax)
	movq	-80(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	subq	$7, %rax
	movb	%dl, -432(%rbp,%rax)
	movq	-104(%rbp), %rax
	subq	$8, %rax
	movq	-80(%rbp), %rdx
	movb	%dl, -432(%rbp,%rax)
.L63:
	cmpq	$0, -72(%rbp)
	je	.L64
	cmpb	$0, -948(%rbp)
	je	.L65
	movq	-48(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L66
	movl	$0, %eax
	jmp	.L90
.L66:
	movq	-48(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-928(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-928(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-192(%rbp), %rdx
	leaq	-688(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	subq	-192(%rbp), %rax
	movq	%rax, %rdx
	leaq	-688(%rbp), %rcx
	movq	-192(%rbp), %rax
	addq	%rax, %rcx
	movq	-936(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	leaq	-688(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	$1, -88(%rbp)
	jmp	.L67
.L68:
	movq	-32(%rbp), %rax
	imulq	-88(%rbp), %rax
	subq	-192(%rbp), %rax
	movq	%rax, %rdx
	movq	-936(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-416(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
	addq	$1, -88(%rbp)
.L67:
	movq	-72(%rbp), %rax
	movl	$0, %edx
	divq	-32(%rbp)
	subq	$1, %rax
	cmpq	%rax, -88(%rbp)
	jb	.L68
	jmp	.L64
.L65:
	movq	-928(%rbp), %rcx
	leaq	-688(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	leaq	-13(%rax), %rdx
	leaq	-688(%rbp), %rax
	addq	$13, %rax
	movq	-936(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	leaq	-688(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	$1, -88(%rbp)
	jmp	.L69
.L70:
	movq	-32(%rbp), %rax
	imulq	-88(%rbp), %rax
	leaq	-13(%rax), %rdx
	movq	-936(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-416(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
	addq	$1, -88(%rbp)
.L69:
	movq	-72(%rbp), %rax
	movl	$0, %edx
	divq	-32(%rbp)
	cmpq	%rax, -88(%rbp)
	jb	.L70
.L64:
	leaq	-752(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L71
.L79:
	movq	-176(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_eq_8_s
	movb	%al, -193(%rbp)
	movq	-184(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_eq_8_s
	movb	%al, -194(%rbp)
	movq	$0, -96(%rbp)
	jmp	.L72
.L76:
	movb	$0, -113(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L73
	movq	-928(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -113(%rbp)
	jmp	.L74
.L73:
	movq	16(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	cmpq	%rax, -72(%rbp)
	jnb	.L74
	movq	-72(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-936(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -113(%rbp)
.L74:
	addq	$1, -72(%rbp)
	movq	-168(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_ge_8_s
	andb	-193(%rbp), %al
	movb	%al, -195(%rbp)
	movq	-168(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_ge_8_s
	andb	-193(%rbp), %al
	movb	%al, -196(%rbp)
	movzbl	-113(%rbp), %edx
	movzbl	-195(%rbp), %eax
	movl	$128, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movb	%al, -113(%rbp)
	movzbl	-196(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movzbl	-113(%rbp), %eax
	andl	%edx, %eax
	movb	%al, -113(%rbp)
	movzbl	-194(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movzbl	-193(%rbp), %eax
	orl	%eax, %edx
	movzbl	-113(%rbp), %eax
	andl	%edx, %eax
	movb	%al, -113(%rbp)
	movq	-32(%rbp), %rax
	subq	-104(%rbp), %rax
	cmpq	%rax, -96(%rbp)
	jb	.L75
	movzbl	-113(%rbp), %edx
	movq	-104(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %rcx
	movq	-96(%rbp), %rax
	addq	%rcx, %rax
	movzbl	-432(%rbp,%rax), %eax
	movzbl	%al, %ecx
	movzbl	-194(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movb	%al, -113(%rbp)
.L75:
	leaq	-896(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-113(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -96(%rbp)
.L72:
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L76
	leaq	-896(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leaq	-896(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	$0, -96(%rbp)
	jmp	.L77
.L78:
	leaq	-752(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	leaq	-896(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	andb	-194(%rbp), %al
	orl	%eax, %ecx
	movl	%ecx, %edx
	leaq	-752(%rbp), %rcx
	movq	-96(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addq	$1, -96(%rbp)
.L77:
	movq	-96(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L78
	addq	$1, -88(%rbp)
.L71:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-88(%rbp), %rax
	jnb	.L79
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L91
	movq	-904(%rbp), %rcx
	movq	-128(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	jle	.L92
	cmpb	$0, -948(%rbp)
	je	.L83
	movq	-40(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L93
	movq	-40(%rbp), %rdx
	leaq	-560(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L93
	movq	-24(%rbp), %rdx
	leaq	-752(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jg	.L85
	jmp	.L93
.L83:
	movq	$0, -88(%rbp)
	jmp	.L86
.L87:
	leaq	-560(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	xorl	$106, %eax
	movl	%eax, %edx
	leaq	-560(%rbp), %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	addq	$1, -88(%rbp)
.L86:
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L87
	movq	-32(%rbp), %rdx
	leaq	-560(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L94
	movq	-24(%rbp), %rdx
	leaq	-752(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jle	.L94
.L85:
	leaq	-756(%rbp), %rdx
	movq	-912(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.L89
	cmpq	$0, -920(%rbp)
	je	.L89
	movl	-756(%rbp), %eax
	movl	%eax, %edx
	movq	-920(%rbp), %rax
	movq	%rdx, (%rax)
.L89:
	movl	$1, -112(%rbp)
	jmp	.L81
.L91:
	nop
	jmp	.L81
.L92:
	nop
	jmp	.L81
.L93:
	nop
	jmp	.L81
.L94:
	nop
.L81:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-112(%rbp), %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	ssl3_cbc_digest_record, .-ssl3_cbc_digest_record
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
