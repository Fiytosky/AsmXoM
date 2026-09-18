	.file	"curve448.c"
	.text
	.type	c448_succeed_if, @function
c448_succeed_if:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	c448_succeed_if, .-c448_succeed_if
	.type	constant_time_msb_64, @function
constant_time_msb_64:
.LFB33:
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
.LFE33:
	.size	constant_time_msb_64, .-constant_time_msb_64
	.type	constant_time_msb_s, @function
constant_time_msb_s:
.LFB34:
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
.LFE34:
	.size	constant_time_msb_s, .-constant_time_msb_s
	.type	constant_time_is_zero_s, @function
constant_time_is_zero_s:
.LFB44:
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
.LFE44:
	.size	constant_time_is_zero_s, .-constant_time_is_zero_s
	.type	constant_time_is_zero_64, @function
constant_time_is_zero_64:
.LFB47:
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
	call	constant_time_msb_64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	constant_time_is_zero_64, .-constant_time_is_zero_64
	.type	value_barrier, @function
value_barrier:
.LFB54:
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
.LFE54:
	.size	value_barrier, .-value_barrier
	.type	value_barrier_64, @function
value_barrier_64:
.LFB56:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	value_barrier_64, .-value_barrier_64
	.type	constant_time_select, @function
constant_time_select:
.LFB59:
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
.LFE59:
	.size	constant_time_select, .-constant_time_select
	.type	constant_time_select_8, @function
constant_time_select_8:
.LFB61:
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
.LFE61:
	.size	constant_time_select_8, .-constant_time_select_8
	.type	constant_time_select_64, @function
constant_time_select_64:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	value_barrier_64
	andq	-24(%rbp), %rax
	movq	%rax, %rbx
	movq	-16(%rbp), %rax
	notq	%rax
	movq	%rax, %rdi
	call	value_barrier_64
	andq	-32(%rbp), %rax
	orq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	constant_time_select_64, .-constant_time_select_64
	.type	constant_time_cond_swap_64, @function
constant_time_cond_swap_64:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	value_barrier_64
	andq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	xorq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	xorq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	constant_time_cond_swap_64, .-constant_time_cond_swap_64
	.type	constant_time_lookup, @function
constant_time_lookup:
.LFB69:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	$0, -8(%rbp)
	jmp	.L23
.L26:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_is_zero_s
	movb	%al, -33(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L24
.L25:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movzbl	-33(%rbp), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	orl	%esi, %ecx
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L24:
	movq	-16(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L25
	addq	$1, -8(%rbp)
	subq	$1, -88(%rbp)
.L23:
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L26
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	constant_time_lookup, .-constant_time_lookup
	.type	mask_to_bool, @function
mask_to_bool:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	mask_to_bool, .-mask_to_bool
	.section	.rodata
	.align 32
	.type	ZERO, @object
	.size	ZERO, 64
ZERO:
	.zero	64
	.align 32
	.type	ONE, @object
	.size	ONE, 64
ONE:
	.quad	1
	.zero	56
	.text
	.type	gf_sub_nr, @function
gf_sub_nr:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$144115188075855870, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L30
.L33:
	movq	-32(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	cmpl	$4, -60(%rbp)
	jne	.L31
	movq	-56(%rbp), %rax
	jmp	.L32
.L31:
	movq	-48(%rbp), %rax
.L32:
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -60(%rbp)
.L30:
	cmpl	$7, -60(%rbp)
	jbe	.L33
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -92(%rbp)
	jmp	.L34
.L35:
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movl	-92(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -92(%rbp)
.L34:
	cmpl	$0, -92(%rbp)
	jne	.L35
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	gf_sub_nr, .-gf_sub_nr
	.type	gf_subx_nr, @function
gf_subx_nr:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movl	%ecx, -156(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$144115188075855870, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L37
.L40:
	movq	-32(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	cmpl	$4, -60(%rbp)
	jne	.L38
	movq	-56(%rbp), %rax
	jmp	.L39
.L38:
	movq	-48(%rbp), %rax
.L39:
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -60(%rbp)
.L37:
	cmpl	$7, -60(%rbp)
	jbe	.L40
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -92(%rbp)
	jmp	.L41
.L42:
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movl	-92(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -92(%rbp)
.L41:
	cmpl	$0, -92(%rbp)
	jne	.L42
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-136(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-156(%rbp), %eax
	movl	%eax, -12(%rbp)
	nop
	cmpl	$9998, -156(%rbp)
	jle	.L46
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -124(%rbp)
	jmp	.L44
.L45:
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-112(%rbp), %rax
	movq	%rax, %rdx
	movl	-124(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -124(%rbp)
.L44:
	cmpl	$0, -124(%rbp)
	jne	.L45
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	andq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	nop
.L46:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	gf_subx_nr, .-gf_subx_nr
	.type	gf_mulw, @function
gf_mulw:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L48
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mulw_unsigned@PLT
	jmp	.L50
.L48:
	movl	-20(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mulw_unsigned@PLT
	movq	-8(%rbp), %rdx
	leaq	ZERO(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
.L50:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	gf_mulw, .-gf_mulw
	.type	gf_cond_sel, @function
gf_cond_sel:
.LFB82:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L52
.L53:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	constant_time_select_64
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rax, (%rdx,%rcx,8)
	addq	$1, -8(%rbp)
.L52:
	cmpq	$7, -8(%rbp)
	jbe	.L53
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	gf_cond_sel, .-gf_cond_sel
	.type	gf_cond_neg, @function
gf_cond_neg:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rdx
	leaq	ZERO(%rip), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
	movq	-80(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	gf_cond_sel
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	gf_cond_neg, .-gf_cond_neg
	.type	gf_cond_swap, @function
gf_cond_swap:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L56
.L57:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	constant_time_cond_swap_64
	addq	$1, -8(%rbp)
.L56:
	cmpq	$7, -8(%rbp)
	jbe	.L57
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	gf_cond_swap, .-gf_cond_swap
	.type	curve448_point_copy, @function
curve448_point_copy:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	112(%rdx), %rcx
	movq	120(%rdx), %rbx
	movq	%rcx, 112(%rax)
	movq	%rbx, 120(%rax)
	movq	128(%rdx), %rcx
	movq	136(%rdx), %rbx
	movq	%rcx, 128(%rax)
	movq	%rbx, 136(%rax)
	movq	144(%rdx), %rcx
	movq	152(%rdx), %rbx
	movq	%rcx, 144(%rax)
	movq	%rbx, 152(%rax)
	movq	160(%rdx), %rcx
	movq	168(%rdx), %rbx
	movq	%rcx, 160(%rax)
	movq	%rbx, 168(%rax)
	movq	176(%rdx), %rcx
	movq	184(%rdx), %rbx
	movq	%rcx, 176(%rax)
	movq	%rbx, 184(%rax)
	movq	192(%rdx), %rcx
	movq	200(%rdx), %rbx
	movq	%rcx, 192(%rax)
	movq	%rbx, 200(%rax)
	movq	208(%rdx), %rcx
	movq	216(%rdx), %rbx
	movq	%rcx, 208(%rax)
	movq	%rbx, 216(%rax)
	movq	224(%rdx), %rcx
	movq	232(%rdx), %rbx
	movq	%rcx, 224(%rax)
	movq	%rbx, 232(%rax)
	movq	240(%rdx), %rcx
	movq	248(%rdx), %rbx
	movq	%rcx, 240(%rax)
	movq	%rbx, 248(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	curve448_point_copy, .-curve448_point_copy
	.section	.rodata
	.align 32
	.type	precomputed_scalarmul_adjustment, @object
	.size	precomputed_scalarmul_adjustment, 56
precomputed_scalarmul_adjustment:
	.quad	-4002619432236240689
	.quad	-1642731020532381011
	.quad	-4966824541560203523
	.quad	35221520739
	.zero	24
	.text
	.type	gf_invert, @function
gf_invert:
.LFB136:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	movq	-192(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-112(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gf_isr@PLT
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	movq	-192(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-184(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.size	gf_invert, .-gf_invert
	.globl	ossl_curve448_point_identity
	.section	.rodata
	.align 32
	.type	ossl_curve448_point_identity, @object
	.size	ossl_curve448_point_identity, 256
ossl_curve448_point_identity:
	.quad	0
	.zero	56
	.quad	1
	.zero	56
	.quad	1
	.zero	56
	.quad	0
	.zero	56
	.text
	.type	point_double_internal, @function
point_double_internal:
.LFB137:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$480, %rsp
	movq	%rdi, -456(%rbp)
	movq	%rsi, -464(%rbp)
	movl	%edx, -468(%rbp)
	movq	-464(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	movq	-464(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-448(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$0, -156(%rbp)
	jmp	.L61
.L62:
	movq	-144(%rbp), %rax
	movl	-156(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-152(%rbp), %rax
	movl	-156(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movl	-156(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -156(%rbp)
.L61:
	cmpl	$7, -156(%rbp)
	jbe	.L62
	movq	-136(%rbp), %rax
	movq	%rax, -168(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -184(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -188(%rbp)
	jmp	.L63
.L64:
	movq	-168(%rbp), %rax
	movl	-188(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-176(%rbp), %rax
	movq	%rax, %rdx
	movl	-188(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-168(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-168(%rbp), %rax
	movl	-188(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -188(%rbp)
.L63:
	cmpl	$0, -188(%rbp)
	jne	.L64
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	andq	-176(%rbp), %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-464(%rbp), %rax
	movq	-464(%rbp), %rdx
	addq	$64, %rdx
	movq	-456(%rbp), %rcx
	addq	$192, %rcx
	movq	%rcx, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rax, -88(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L65
.L66:
	movq	-80(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-88(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -92(%rbp)
.L65:
	cmpl	$7, -92(%rbp)
	jbe	.L66
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -124(%rbp)
	jmp	.L67
.L68:
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-112(%rbp), %rax
	movq	%rax, %rdx
	movl	-124(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -124(%rbp)
.L67:
	cmpl	$0, -124(%rbp)
	jne	.L68
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	andq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-456(%rbp), %rax
	leaq	192(%rax), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-448(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movl	$3, %ecx
	movq	%rax, %rdi
	call	gf_subx_nr
	movq	-456(%rbp), %rax
	leaq	192(%rax), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	gf_sub_nr
	movq	-464(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-456(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	movq	-456(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	-456(%rbp), %rcx
	subq	$-128, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L69
.L70:
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -28(%rbp)
.L69:
	cmpl	$7, -28(%rbp)
	jbe	.L70
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -60(%rbp)
	jmp	.L71
.L72:
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	-60(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -60(%rbp)
.L71:
	cmpl	$0, -60(%rbp)
	jne	.L72
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	andq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-456(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-456(%rbp), %rax
	leaq	128(%rax), %rsi
	leaq	-256(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	gf_subx_nr
	movq	-456(%rbp), %rax
	leaq	-320(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-456(%rbp), %rax
	leaq	192(%rax), %rsi
	movq	-456(%rbp), %rax
	leaq	128(%rax), %rcx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	movq	-456(%rbp), %rax
	leaq	192(%rax), %rsi
	movq	-456(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-448(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	cmpl	$0, -468(%rbp)
	jne	.L74
	movq	-456(%rbp), %rax
	leaq	192(%rax), %rcx
	leaq	-448(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
.L74:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.size	point_double_internal, .-point_double_internal
	.globl	ossl_curve448_point_double
	.type	ossl_curve448_point_double, @function
ossl_curve448_point_double:
.LFB138:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	point_double_internal
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE138:
	.size	ossl_curve448_point_double, .-ossl_curve448_point_double
	.type	cond_neg_niels, @function
cond_neg_niels:
.LFB139:
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
	leaq	64(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_cond_swap
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	gf_cond_neg
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.size	cond_neg_niels, .-cond_neg_niels
	.type	pt_to_pniels, @function
pt_to_pniels:
.LFB140:
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
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$64, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	gf_add@PLT
	movq	-16(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-8(%rbp), %rax
	subq	$-128, %rax
	movl	$-78164, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_mulw
	movq	-16(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$192, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_add@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE140:
	.size	pt_to_pniels, .-pt_to_pniels
	.type	pniels_to_pt, @function
pniels_to_pt:
.LFB141:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_add@PLT
	movq	-80(%rbp), %rax
	movq	-80(%rbp), %rdx
	leaq	64(%rdx), %rsi
	movq	-72(%rbp), %rdx
	leaq	64(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	gf_sub@PLT
	movq	-72(%rbp), %rax
	leaq	64(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	192(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	movq	-72(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-80(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-80(%rbp), %rax
	leaq	192(%rax), %rsi
	movq	-72(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	movq	-80(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-72(%rbp), %rax
	subq	$-128, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.size	pniels_to_pt, .-pniels_to_pt
	.type	niels_to_pt, @function
niels_to_pt:
.LFB142:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	64(%rdx), %rsi
	movq	-40(%rbp), %rdx
	leaq	64(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	gf_add@PLT
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	64(%rdx), %rsi
	movq	-40(%rbp), %rdx
	leaq	192(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	movq	-40(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, -24(%rbp)
	leaq	ONE(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.size	niels_to_pt, .-niels_to_pt
	.type	add_niels_to_pt, @function
add_niels_to_pt:
.LFB143:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$416, %rsp
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movl	%edx, -404(%rbp)
	movq	-392(%rbp), %rdx
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub_nr
	movq	-400(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-392(%rbp), %rax
	leaq	-320(%rbp), %rdx
	movq	%rdx, -136(%rbp)
	movq	%rax, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movl	$0, -156(%rbp)
	jmp	.L81
.L82:
	movq	-144(%rbp), %rax
	movl	-156(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-152(%rbp), %rax
	movl	-156(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movl	-156(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -156(%rbp)
.L81:
	cmpl	$7, -156(%rbp)
	jbe	.L82
	movq	-136(%rbp), %rax
	movq	%rax, -168(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -184(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -188(%rbp)
	jmp	.L83
.L84:
	movq	-168(%rbp), %rax
	movl	-188(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-176(%rbp), %rax
	movq	%rax, %rdx
	movl	-188(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-168(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-168(%rbp), %rax
	movl	-188(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -188(%rbp)
.L83:
	cmpl	$0, -188(%rbp)
	jne	.L84
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	andq	-176(%rbp), %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-400(%rbp), %rax
	leaq	64(%rax), %rsi
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-320(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	movq	-392(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-400(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-392(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-384(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L85
.L86:
	movq	-80(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-88(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -92(%rbp)
.L85:
	cmpl	$7, -92(%rbp)
	jbe	.L86
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -124(%rbp)
	jmp	.L87
.L88:
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-112(%rbp), %rax
	movq	%rax, %rdx
	movl	-124(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -124(%rbp)
.L87:
	cmpl	$0, -124(%rbp)
	jne	.L88
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	andq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-256(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub_nr
	movq	-392(%rbp), %rax
	movq	-392(%rbp), %rdx
	leaq	128(%rdx), %rsi
	movq	-392(%rbp), %rdx
	leaq	64(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	gf_sub_nr
	movq	-392(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-392(%rbp), %rax
	leaq	-256(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L89
.L90:
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -28(%rbp)
.L89:
	cmpl	$7, -28(%rbp)
	jbe	.L90
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -60(%rbp)
	jmp	.L91
.L92:
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	-60(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -60(%rbp)
.L91:
	cmpl	$0, -60(%rbp)
	jne	.L92
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	andq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-392(%rbp), %rax
	leaq	128(%rax), %rcx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-392(%rbp), %rax
	leaq	-320(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	cmpl	$0, -404(%rbp)
	jne	.L94
	movq	-392(%rbp), %rax
	leaq	192(%rax), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
.L94:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.size	add_niels_to_pt, .-add_niels_to_pt
	.type	sub_niels_from_pt, @function
sub_niels_from_pt:
.LFB144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$416, %rsp
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movl	%edx, -404(%rbp)
	movq	-392(%rbp), %rdx
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub_nr
	movq	-400(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-320(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-392(%rbp), %rax
	leaq	-320(%rbp), %rdx
	movq	%rdx, -136(%rbp)
	movq	%rax, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movl	$0, -156(%rbp)
	jmp	.L96
.L97:
	movq	-144(%rbp), %rax
	movl	-156(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-152(%rbp), %rax
	movl	-156(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-136(%rbp), %rax
	movl	-156(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -156(%rbp)
.L96:
	cmpl	$7, -156(%rbp)
	jbe	.L97
	movq	-136(%rbp), %rax
	movq	%rax, -168(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -184(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -188(%rbp)
	jmp	.L98
.L99:
	movq	-168(%rbp), %rax
	movl	-188(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-176(%rbp), %rax
	movq	%rax, %rdx
	movl	-188(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-168(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-168(%rbp), %rax
	movl	-188(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -188(%rbp)
.L98:
	cmpl	$0, -188(%rbp)
	jne	.L99
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	andq	-176(%rbp), %rax
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	leaq	64(%rdx), %rcx
	leaq	-320(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	movq	-392(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-400(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-392(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-384(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L100
.L101:
	movq	-80(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-88(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -92(%rbp)
.L100:
	cmpl	$7, -92(%rbp)
	jbe	.L101
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -124(%rbp)
	jmp	.L102
.L103:
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-112(%rbp), %rax
	movq	%rax, %rdx
	movl	-124(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -124(%rbp)
.L102:
	cmpl	$0, -124(%rbp)
	jne	.L103
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	andq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-256(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub_nr
	movq	-392(%rbp), %rax
	movq	-392(%rbp), %rdx
	subq	$-128, %rdx
	movq	-392(%rbp), %rcx
	addq	$64, %rcx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L104
.L105:
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -28(%rbp)
.L104:
	cmpl	$7, -28(%rbp)
	jbe	.L105
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -60(%rbp)
	jmp	.L106
.L107:
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-48(%rbp), %rax
	movq	%rax, %rdx
	movl	-60(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -60(%rbp)
.L106:
	cmpl	$0, -60(%rbp)
	jne	.L107
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	andq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	movq	-392(%rbp), %rdx
	movq	-392(%rbp), %rax
	leaq	128(%rax), %rcx
	leaq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub_nr
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-392(%rbp), %rax
	leaq	128(%rax), %rcx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-392(%rbp), %rax
	leaq	-320(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-392(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	cmpl	$0, -404(%rbp)
	jne	.L109
	movq	-392(%rbp), %rax
	leaq	192(%rax), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
.L109:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	sub_niels_from_pt, .-sub_niels_from_pt
	.type	add_pniels_to_pt, @function
add_pniels_to_pt:
.LFB145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	-112(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-104(%rbp), %rax
	leaq	128(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-104(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, -24(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	movq	-112(%rbp), %rcx
	movl	-116(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_niels_to_pt
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	add_pniels_to_pt, .-add_pniels_to_pt
	.type	sub_pniels_from_pt, @function
sub_pniels_from_pt:
.LFB146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	-112(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-104(%rbp), %rax
	leaq	128(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-104(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, -24(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	movq	-112(%rbp), %rcx
	movl	-116(%rbp), %edx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sub_niels_from_pt
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	sub_pniels_from_pt, .-sub_pniels_from_pt
	.globl	ossl_curve448_point_eq
	.type	ossl_curve448_point_eq, @function
ossl_curve448_point_eq:
.LFB147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-152(%rbp), %rdx
	movq	-160(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-144(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gf_eq@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	mask_to_bool
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	ossl_curve448_point_eq, .-ossl_curve448_point_eq
	.globl	ossl_curve448_point_valid
	.type	ossl_curve448_point_valid, @function
ossl_curve448_point_valid:
.LFB148:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	-216(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-216(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-216(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-216(%rbp), %rax
	leaq	128(%rax), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-144(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gf_eq@PLT
	movq	%rax, -8(%rbp)
	movq	-216(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	movq	-216(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-80(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
	movq	-216(%rbp), %rax
	leaq	192(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-144(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movl	$-39082, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_mulw
	movq	-216(%rbp), %rax
	leaq	128(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-208(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_add@PLT
	leaq	-144(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gf_eq@PLT
	andq	%rax, -8(%rbp)
	movq	-216(%rbp), %rax
	subq	$-128, %rax
	leaq	ZERO(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gf_eq@PLT
	notq	%rax
	andq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	mask_to_bool
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	ossl_curve448_point_valid, .-ossl_curve448_point_valid
	.type	constant_time_lookup_niels, @function
constant_time_lookup_niels:
.LFB149:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$192, %edx
	movq	%rax, %rdi
	call	constant_time_lookup
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	constant_time_lookup_niels, .-constant_time_lookup_niels
	.globl	ossl_curve448_precomputed_scalarmul
	.type	ossl_curve448_precomputed_scalarmul, @function
ossl_curve448_precomputed_scalarmul:
.LFB150:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movl	$5, -20(%rbp)
	movl	$5, -24(%rbp)
	movl	$18, -28(%rbp)
	leaq	precomputed_scalarmul_adjustment(%rip), %rdx
	movq	-328(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_add@PLT
	leaq	-304(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_halve@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L118
.L130:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.L119
	movq	-312(%rbp), %rcx
	movq	-312(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	point_double_internal
.L119:
	movl	$0, -8(%rbp)
	jmp	.L120
.L129:
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L121
.L123:
	movl	-8(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	imull	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$445, -44(%rbp)
	ja	.L122
	movl	-44(%rbp), %eax
	shrl	$6, %eax
	movl	%eax, %eax
	movq	-304(%rbp,%rax,8), %rdx
	movl	-44(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	orl	%edx, %eax
	movl	%eax, -16(%rbp)
.L122:
	addl	$1, -12(%rbp)
.L121:
	movl	-12(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jb	.L123
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	-16(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	xorl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	andl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	$1, %edx
	movl	%edx, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	-8(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$6, %rax
	movq	-320(%rbp), %rdx
	leaq	(%rax,%rdx), %rsi
	movl	-16(%rbp), %edx
	leaq	-240(%rbp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	constant_time_lookup_niels
	movq	-40(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cond_neg_niels
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.L124
	cmpl	$0, -8(%rbp)
	je	.L125
.L124:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jne	.L126
	cmpl	$1, -4(%rbp)
	je	.L126
	movl	$1, %edx
	jmp	.L127
.L126:
	movl	$0, %edx
.L127:
	leaq	-240(%rbp), %rcx
	movq	-312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_niels_to_pt
	jmp	.L128
.L125:
	leaq	-240(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	niels_to_pt
.L128:
	addl	$1, -8(%rbp)
.L120:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L129
	subl	$1, -4(%rbp)
.L118:
	cmpl	$0, -4(%rbp)
	jne	.L130
	leaq	-240(%rbp), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-304(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	ossl_curve448_precomputed_scalarmul, .-ossl_curve448_precomputed_scalarmul
	.globl	ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa
	.type	ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa, @function
ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa:
.LFB151:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	movq	%rdi, -584(%rbp)
	movq	%rsi, -592(%rbp)
	movq	-592(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	curve448_point_copy
	leaq	-512(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-512(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-256(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_add@PLT
	leaq	-512(%rbp), %rdx
	leaq	-512(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_add@PLT
	leaq	-192(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-576(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
	leaq	-64(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
	leaq	-512(%rbp), %rax
	leaq	128(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-64(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_add@PLT
	leaq	-192(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	leaq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
	leaq	-128(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-576(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-256(%rbp), %rdx
	leaq	-576(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-576(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-192(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_invert
	leaq	-192(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-192(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-584(%rbp), %rax
	addq	$56, %rax
	movb	$0, (%rax)
	leaq	-64(%rbp), %rcx
	movq	-584(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_serialize@PLT
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	gf_lobit@PLT
	andl	$128, %eax
	movq	%rax, %rcx
	movq	-584(%rbp), %rax
	addq	$56, %rax
	movzbl	(%rax), %edx
	movq	-584(%rbp), %rax
	addq	$56, %rax
	orl	%ecx, %edx
	movb	%dl, (%rax)
	leaq	-64(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-128(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-192(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-256(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_point_destroy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa, .-ossl_curve448_point_mul_by_ratio_and_encode_like_eddsa
	.globl	ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio
	.type	ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio, @function
ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio:
.LFB152:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$376, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	-384(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -112(%rbp)
	movq	%rbx, -104(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	49(%rax), %rdx
	movq	41(%rax), %rax
	movq	%rax, -71(%rbp)
	movq	%rdx, -63(%rbp)
	movzbl	-56(%rbp), %eax
	movzbl	%al, %eax
	andl	$128, %eax
	movq	%rax, %rdi
	call	constant_time_is_zero_64
	notq	%rax
	movq	%rax, -24(%rbp)
	movzbl	-56(%rbp), %eax
	andl	$127, %eax
	movb	%al, -56(%rbp)
	movq	-376(%rbp), %rax
	leaq	64(%rax), %rdi
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rsi
	call	gf_deserialize@PLT
	movq	%rax, -32(%rbp)
	movzbl	-56(%rbp), %eax
	movzbl	%al, %eax
	movq	%rax, %rdi
	call	constant_time_is_zero_64
	andq	%rax, -32(%rbp)
	movq	-376(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	movq	-376(%rbp), %rax
	movq	-376(%rbp), %rdx
	leaq	128(%rdx), %rcx
	leaq	ONE(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	gf_sub@PLT
	movq	-376(%rbp), %rax
	movq	-376(%rbp), %rdx
	leaq	192(%rdx), %rcx
	movl	$-39081, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	gf_mulw
	movq	-376(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-376(%rbp), %rax
	addq	$192, %rax
	leaq	ONE(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
	movq	-376(%rbp), %rax
	leaq	192(%rax), %rdx
	movq	-376(%rbp), %rax
	leaq	128(%rax), %rcx
	movq	-376(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-376(%rbp), %rax
	movq	-376(%rbp), %rdx
	addq	$192, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	gf_isr@PLT
	andq	%rax, -32(%rbp)
	movq	-376(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-376(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-376(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	gf_lobit@PLT
	xorq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gf_cond_neg
	movq	-376(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, -40(%rbp)
	leaq	ONE(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	movq	-376(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	movq	-376(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-368(%rbp), %rdx
	leaq	-240(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_add@PLT
	movq	-376(%rbp), %rax
	movq	-376(%rbp), %rdx
	leaq	64(%rdx), %rsi
	movq	-376(%rbp), %rdx
	leaq	192(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	gf_add@PLT
	movq	-376(%rbp), %rax
	leaq	192(%rax), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-176(%rbp), %rdx
	leaq	-304(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
	movq	-376(%rbp), %rax
	leaq	192(%rax), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	gf_sub@PLT
	movq	-376(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	movq	-376(%rbp), %rdx
	movq	-376(%rbp), %rax
	movq	-376(%rbp), %rcx
	subq	$-128, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	gf_add@PLT
	movq	-376(%rbp), %rax
	leaq	128(%rax), %rcx
	leaq	-176(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub@PLT
	movq	-376(%rbp), %rax
	leaq	-304(%rbp), %rdx
	leaq	-368(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	movq	-376(%rbp), %rax
	leaq	192(%rax), %rsi
	movq	-376(%rbp), %rax
	leaq	128(%rax), %rcx
	leaq	-368(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	movq	-376(%rbp), %rax
	leaq	192(%rax), %rsi
	movq	-376(%rbp), %rax
	leaq	64(%rax), %rcx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	movq	-376(%rbp), %rax
	leaq	192(%rax), %rcx
	leaq	-176(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_gf_mul@PLT
	leaq	-368(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-304(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-240(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-176(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-112(%rbp), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	mask_to_bool
	movq	%rax, %rdi
	call	c448_succeed_if
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE152:
	.size	ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio, .-ossl_curve448_point_decode_like_eddsa_and_mul_by_ratio
	.globl	ossl_x448_int
	.type	ossl_x448_int, @function
ossl_x448_int:
.LFB153:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$856, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -840(%rbp)
	movq	%rsi, -848(%rbp)
	movq	%rdx, -856(%rbp)
	movq	$0, -32(%rbp)
	movq	-848(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	gf_deserialize@PLT
	leaq	-512(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	ONE(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	leaq	-576(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	ZERO(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	leaq	-640(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	leaq	-704(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	ONE(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	nop
	movl	$447, -20(%rbp)
	jmp	.L135
.L154:
	movl	-20(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	-856(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
	movl	-20(%rbp), %eax
	addl	$7, %eax
	cmpl	$14, %eax
	ja	.L136
	andb	$-4, -33(%rbp)
	jmp	.L137
.L136:
	cmpl	$447, -20(%rbp)
	jne	.L137
	movb	$-1, -33(%rbp)
.L137:
	movzbl	-33(%rbp), %edx
	movl	-20(%rbp), %eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	cltq
	andl	$1, %eax
	movq	%rax, -56(%rbp)
	negq	-56(%rbp)
	movq	-56(%rbp), %rax
	xorq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-640(%rbp), %rcx
	leaq	-512(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_cond_swap
	movq	-32(%rbp), %rdx
	leaq	-704(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_cond_swap
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-768(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, -328(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -336(%rbp)
	movl	$0, -340(%rbp)
	jmp	.L138
.L139:
	movq	-328(%rbp), %rax
	movl	-340(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-336(%rbp), %rax
	movl	-340(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-320(%rbp), %rax
	movl	-340(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -340(%rbp)
.L138:
	cmpl	$7, -340(%rbp)
	jbe	.L139
	movq	-320(%rbp), %rax
	movq	%rax, -352(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -360(%rbp)
	movq	-352(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -368(%rbp)
	movq	-352(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-368(%rbp), %rax
	addq	%rax, %rdx
	movq	-352(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -372(%rbp)
	jmp	.L140
.L141:
	movq	-352(%rbp), %rax
	movl	-372(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-360(%rbp), %rax
	movq	%rax, %rdx
	movl	-372(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-352(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-352(%rbp), %rax
	movl	-372(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -372(%rbp)
.L140:
	cmpl	$0, -372(%rbp)
	jne	.L141
	movq	-352(%rbp), %rax
	movq	(%rax), %rax
	andq	-360(%rbp), %rax
	movq	%rax, %rdx
	movq	-368(%rbp), %rax
	addq	%rax, %rdx
	movq	-352(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	leaq	-576(%rbp), %rdx
	leaq	-512(%rbp), %rcx
	leaq	-832(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub_nr
	leaq	-704(%rbp), %rdx
	leaq	-640(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub_nr
	leaq	-576(%rbp), %rdx
	leaq	-768(%rbp), %rcx
	leaq	-512(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, -264(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, -272(%rbp)
	movl	$0, -276(%rbp)
	jmp	.L142
.L143:
	movq	-264(%rbp), %rax
	movl	-276(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-272(%rbp), %rax
	movl	-276(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-256(%rbp), %rax
	movl	-276(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -276(%rbp)
.L142:
	cmpl	$7, -276(%rbp)
	jbe	.L143
	movq	-256(%rbp), %rax
	movq	%rax, -288(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -296(%rbp)
	movq	-288(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -304(%rbp)
	movq	-288(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-304(%rbp), %rax
	addq	%rax, %rdx
	movq	-288(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -308(%rbp)
	jmp	.L144
.L145:
	movq	-288(%rbp), %rax
	movl	-308(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-296(%rbp), %rax
	movq	%rax, %rdx
	movl	-308(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-288(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-288(%rbp), %rax
	movl	-308(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -308(%rbp)
.L144:
	cmpl	$0, -308(%rbp)
	jne	.L145
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	andq	-296(%rbp), %rax
	movq	%rax, %rdx
	movq	-304(%rbp), %rax
	addq	%rax, %rdx
	movq	-288(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	leaq	-576(%rbp), %rdx
	leaq	-832(%rbp), %rcx
	leaq	-640(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-640(%rbp), %rdx
	leaq	-512(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub_nr
	leaq	-704(%rbp), %rdx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-576(%rbp), %rdx
	leaq	-448(%rbp), %rcx
	leaq	-704(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-576(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	$0, -212(%rbp)
	jmp	.L146
.L147:
	movq	-200(%rbp), %rax
	movl	-212(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-208(%rbp), %rax
	movl	-212(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-192(%rbp), %rax
	movl	-212(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -212(%rbp)
.L146:
	cmpl	$7, -212(%rbp)
	jbe	.L147
	movq	-192(%rbp), %rax
	movq	%rax, -224(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -240(%rbp)
	movq	-224(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -244(%rbp)
	jmp	.L148
.L149:
	movq	-224(%rbp), %rax
	movl	-244(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-232(%rbp), %rax
	movq	%rax, %rdx
	movl	-244(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-224(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-224(%rbp), %rax
	movl	-244(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -244(%rbp)
.L148:
	cmpl	$0, -244(%rbp)
	jne	.L149
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	andq	-232(%rbp), %rax
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	addq	%rax, %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	leaq	-576(%rbp), %rdx
	leaq	-640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-768(%rbp), %rdx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-832(%rbp), %rdx
	leaq	-768(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-768(%rbp), %rdx
	leaq	-576(%rbp), %rcx
	leaq	-512(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-768(%rbp), %rdx
	leaq	-576(%rbp), %rcx
	leaq	-832(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_sub_nr
	leaq	-832(%rbp), %rcx
	leaq	-768(%rbp), %rax
	movl	$39081, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_mulw
	leaq	-768(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-768(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	$0, -148(%rbp)
	jmp	.L150
.L151:
	movq	-136(%rbp), %rax
	movl	-148(%rbp), %edx
	movq	(%rax,%rdx,8), %rcx
	movq	-144(%rbp), %rax
	movl	-148(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	addq	%rax, %rcx
	movq	-128(%rbp), %rax
	movl	-148(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -148(%rbp)
.L150:
	cmpl	$7, -148(%rbp)
	jbe	.L151
	movq	-128(%rbp), %rax
	movq	%rax, -160(%rbp)
	movabsq	$72057594037927935, %rax
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	56(%rax), %rax
	shrq	$56, %rax
	movq	%rax, -176(%rbp)
	movq	-160(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$7, -180(%rbp)
	jmp	.L152
.L153:
	movq	-160(%rbp), %rax
	movl	-180(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	andq	-168(%rbp), %rax
	movq	%rax, %rdx
	movl	-180(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-160(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	shrq	$56, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-160(%rbp), %rax
	movl	-180(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	subl	$1, -180(%rbp)
.L152:
	cmpl	$0, -180(%rbp)
	jne	.L153
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	andq	-168(%rbp), %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	addq	%rax, %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	nop
	leaq	-768(%rbp), %rdx
	leaq	-832(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	subl	$1, -20(%rbp)
.L135:
	cmpl	$0, -20(%rbp)
	jns	.L154
	movq	-32(%rbp), %rdx
	leaq	-640(%rbp), %rcx
	leaq	-512(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_cond_swap
	movq	-32(%rbp), %rdx
	leaq	-704(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_cond_swap
	leaq	-576(%rbp), %rcx
	leaq	-576(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_invert
	leaq	-576(%rbp), %rdx
	leaq	-512(%rbp), %rcx
	leaq	-448(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-448(%rbp), %rcx
	movq	-840(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_serialize@PLT
	leaq	ZERO(%rip), %rdx
	leaq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gf_eq@PLT
	notq	%rax
	movq	%rax, -48(%rbp)
	leaq	-448(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-512(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-576(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-640(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-704(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-768(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-832(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	mask_to_bool
	movq	%rax, %rdi
	call	c448_succeed_if
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE153:
	.size	ossl_x448_int, .-ossl_x448_int
	.globl	ossl_curve448_point_mul_by_ratio_and_encode_like_x448
	.type	ossl_curve448_point_mul_by_ratio_and_encode_like_x448, @function
ossl_curve448_point_mul_by_ratio_and_encode_like_x448:
.LFB154:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	-272(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	curve448_point_copy
	leaq	-256(%rbp), %rax
	leaq	-256(%rbp), %rdx
	leaq	192(%rdx), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	gf_invert
	leaq	-256(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-256(%rbp), %rax
	leaq	192(%rax), %rcx
	leaq	-256(%rbp), %rax
	subq	$-128, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_mul@PLT
	leaq	-256(%rbp), %rax
	leaq	128(%rax), %rdx
	leaq	-256(%rbp), %rax
	addq	$64, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_gf_sqr@PLT
	leaq	-256(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-264(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	gf_serialize@PLT
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_point_destroy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	ossl_curve448_point_mul_by_ratio_and_encode_like_x448, .-ossl_curve448_point_mul_by_ratio_and_encode_like_x448
	.globl	ossl_x448_derive_public_key
	.type	ossl_x448_derive_public_key, @function
ossl_x448_derive_public_key:
.LFB155:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$408, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -408(%rbp)
	movq	%rsi, -416(%rbp)
	movq	-416(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movzbl	-80(%rbp), %eax
	andl	$-4, %eax
	movb	%al, -80(%rbp)
	movzbl	-25(%rbp), %eax
	andl	$127, %eax
	movb	%al, -25(%rbp)
	movzbl	-25(%rbp), %eax
	orl	$-128, %eax
	movb	%al, -25(%rbp)
	leaq	-80(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movl	$56, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_decode_long@PLT
	movl	$1, -20(%rbp)
	jmp	.L158
.L159:
	leaq	-144(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_halve@PLT
	sall	-20(%rbp)
.L158:
	cmpl	$1, -20(%rbp)
	jbe	.L159
	movq	ossl_curve448_precomputed_base@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	leaq	-144(%rbp), %rdx
	leaq	-400(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_precomputed_scalarmul@PLT
	leaq	-400(%rbp), %rdx
	movq	-408(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_point_mul_by_ratio_and_encode_like_x448@PLT
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_point_destroy@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	ossl_x448_derive_public_key, .-ossl_x448_derive_public_key
	.type	recode_wnaf, @function
recode_wnaf:
.LFB156:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	-84(%rbp), %eax
	leal	1(%rax), %edi
	movl	$446, %eax
	movl	$0, %edx
	divl	%edi
	addl	$3, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	andl	$65535, %eax
	movq	%rax, -16(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	$4, -40(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	$-1, (%rax)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, 4(%rax)
	subl	$1, -4(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L161
.L166:
	cmpl	$27, -20(%rbp)
	ja	.L163
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-40(%rbp)
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, %edx
	movq	(%rax,%rdx,8), %rsi
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	-40(%rbp)
	movl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movq	%rsi, %rax
	sall	$16, %eax
	movl	%eax, %eax
	addq	%rax, -16(%rbp)
	jmp	.L163
.L165:
	movq	-16(%rbp), %rax
	rep bsfl	%eax, %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	andl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	andl	-52(%rbp), %eax
	testl	%eax, %eax
	je	.L164
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	%eax, -28(%rbp)
.L164:
	movl	-48(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cltq
	subq	%rax, -16(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, 4(%rdx)
	subl	$1, -4(%rbp)
.L163:
	movq	-16(%rbp), %rax
	movzwl	%ax, %eax
	testq	%rax, %rax
	jne	.L165
	shrq	$16, -16(%rbp)
	addl	$1, -20(%rbp)
.L161:
	cmpl	$29, -20(%rbp)
	jbe	.L166
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-32(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -44(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L167
.L168:
	movl	-4(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -24(%rbp)
.L167:
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L168
	movl	-44(%rbp), %eax
	subl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE156:
	.size	recode_wnaf, .-recode_wnaf
	.type	prepare_wnaf_table, @function
prepare_wnaf_table:
.LFB157:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movq	%rdi, -536(%rbp)
	movq	%rsi, -544(%rbp)
	movl	%edx, -548(%rbp)
	movq	-544(%rbp), %rdx
	movq	-536(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pt_to_pniels
	cmpl	$0, -548(%rbp)
	je	.L175
	movq	-544(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_point_double@PLT
	leaq	-272(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pt_to_pniels
	movq	-536(%rbp), %rcx
	leaq	-272(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_pniels_to_pt
	movq	-536(%rbp), %rax
	leaq	256(%rax), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	pt_to_pniels
	movl	$2, -4(%rbp)
	jmp	.L173
.L174:
	leaq	-528(%rbp), %rcx
	leaq	-272(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_pniels_to_pt
	movl	-4(%rbp), %eax
	cltq
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-536(%rbp), %rax
	addq	%rax, %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	pt_to_pniels
	addl	$1, -4(%rbp)
.L173:
	movl	-548(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L174
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_point_destroy@PLT
	leaq	-528(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	jmp	.L170
.L175:
	nop
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE157:
	.size	prepare_wnaf_table, .-prepare_wnaf_table
	.globl	ossl_curve448_base_double_scalarmul_non_secret
	.type	ossl_curve448_base_double_scalarmul_non_secret, @function
ossl_curve448_base_double_scalarmul_non_secret:
.LFB158:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$3664, %rsp
	movq	%rdi, -3640(%rbp)
	movq	%rsi, -3648(%rbp)
	movq	%rdx, -3656(%rbp)
	movq	%rcx, -3664(%rbp)
	movl	$3, -16(%rbp)
	movl	$5, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-3648(%rbp), %rcx
	leaq	-1584(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	recode_wnaf
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %edx
	movq	-3664(%rbp), %rcx
	leaq	-960(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	recode_wnaf
	movl	%eax, -28(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	-16(%rbp), %edx
	movq	-3656(%rbp), %rcx
	leaq	-3632(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	prepare_wnaf_table
	movl	-960(%rbp), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L177
	movq	ossl_curve448_point_identity@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-3640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	curve448_point_copy
	jmp	.L176
.L177:
	movl	-1584(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L179
	movl	-956(%rbp), %eax
	sarl	%eax
	movl	%eax, %edx
	leaq	-3632(%rbp), %rax
	movslq	%edx, %rdx
	salq	$8, %rdx
	addq	%rax, %rdx
	movq	-3640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pniels_to_pt
	addl	$1, -8(%rbp)
	jmp	.L180
.L179:
	movl	-1584(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L181
	cmpl	$0, -12(%rbp)
	js	.L181
	movl	-956(%rbp), %eax
	sarl	%eax
	movl	%eax, %edx
	leaq	-3632(%rbp), %rax
	movslq	%edx, %rdx
	salq	$8, %rdx
	addq	%rax, %rdx
	movq	-3640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pniels_to_pt
	movq	ossl_curve448_wnaf_base@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	-1580(%rbp), %eax
	sarl	%eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$6, %rax
	addq	%rax, %rcx
	movl	-12(%rbp), %edx
	movq	-3640(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_niels_to_pt
	addl	$1, -8(%rbp)
	addl	$1, -4(%rbp)
	jmp	.L180
.L181:
	movl	-1584(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	ossl_curve448_wnaf_base@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	-1580(%rbp), %eax
	sarl	%eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$6, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-3640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	niels_to_pt
	addl	$1, -4(%rbp)
.L180:
	subl	$1, -12(%rbp)
	jmp	.L182
.L195:
	movl	-8(%rbp), %eax
	cltq
	movl	-960(%rbp,%rax,8), %eax
	cmpl	%eax, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	movl	-1584(%rbp,%rax,8), %eax
	cmpl	%eax, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L183
	cmpl	$0, -32(%rbp)
	jne	.L183
	cmpl	$0, -36(%rbp)
	jne	.L183
	movl	$1, %edx
	jmp	.L184
.L183:
	movl	$0, %edx
.L184:
	movq	-3640(%rbp), %rcx
	movq	-3640(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	point_double_internal
	cmpl	$0, -32(%rbp)
	je	.L185
	movl	-8(%rbp), %eax
	cltq
	movl	-956(%rbp,%rax,8), %eax
	testl	%eax, %eax
	jle	.L186
	cmpl	$0, -12(%rbp)
	je	.L187
	cmpl	$0, -36(%rbp)
	jne	.L187
	movl	$1, %esi
	jmp	.L188
.L187:
	movl	$0, %esi
.L188:
	movl	-8(%rbp), %eax
	cltq
	movl	-956(%rbp,%rax,8), %eax
	sarl	%eax
	movl	%eax, %edx
	leaq	-3632(%rbp), %rax
	movslq	%edx, %rdx
	salq	$8, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-3640(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_pniels_to_pt
	jmp	.L189
.L186:
	cmpl	$0, -12(%rbp)
	je	.L190
	cmpl	$0, -36(%rbp)
	jne	.L190
	movl	$1, %esi
	jmp	.L191
.L190:
	movl	$0, %esi
.L191:
	movl	-8(%rbp), %eax
	cltq
	movl	-956(%rbp,%rax,8), %eax
	negl	%eax
	sarl	%eax
	movl	%eax, %edx
	leaq	-3632(%rbp), %rax
	movslq	%edx, %rdx
	salq	$8, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-3640(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sub_pniels_from_pt
.L189:
	addl	$1, -8(%rbp)
.L185:
	cmpl	$0, -36(%rbp)
	je	.L192
	movl	-4(%rbp), %eax
	cltq
	movl	-1580(%rbp,%rax,8), %eax
	testl	%eax, %eax
	jle	.L193
	movq	ossl_curve448_wnaf_base@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	movl	-1580(%rbp,%rax,8), %eax
	sarl	%eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$6, %rax
	addq	%rax, %rcx
	movl	-12(%rbp), %edx
	movq	-3640(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_niels_to_pt
	jmp	.L194
.L193:
	movq	ossl_curve448_wnaf_base@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	movl	-1580(%rbp,%rax,8), %eax
	negl	%eax
	sarl	%eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$6, %rax
	addq	%rax, %rcx
	movl	-12(%rbp), %edx
	movq	-3640(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sub_niels_from_pt
.L194:
	addl	$1, -4(%rbp)
.L192:
	subl	$1, -12(%rbp)
.L182:
	cmpl	$0, -12(%rbp)
	jns	.L195
	leaq	-960(%rbp), %rax
	movl	$912, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-1584(%rbp), %rax
	movl	$616, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-3632(%rbp), %rax
	movl	$2048, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE158:
	.size	ossl_curve448_base_double_scalarmul_non_secret, .-ossl_curve448_base_double_scalarmul_non_secret
	.globl	ossl_curve448_point_destroy
	.type	ossl_curve448_point_destroy, @function
ossl_curve448_point_destroy:
.LFB159:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE159:
	.size	ossl_curve448_point_destroy, .-ossl_curve448_point_destroy
	.globl	ossl_x448
	.type	ossl_x448, @function
ossl_x448:
.LFB160:
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
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x448_int@PLT
	cmpl	$-1, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	ossl_x448, .-ossl_x448
	.globl	ossl_x448_public_from_private
	.type	ossl_x448_public_from_private, @function
ossl_x448_public_from_private:
.LFB161:
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
	call	ossl_x448_derive_public_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ossl_x448_public_from_private, .-ossl_x448_public_from_private
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
