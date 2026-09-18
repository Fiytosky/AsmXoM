	.file	"scalar.c"
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
	.type	curve448_scalar_copy, @function
curve448_scalar_copy:
.LFB85:
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
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	curve448_scalar_copy, .-curve448_scalar_copy
	.section	.rodata
	.align 8
	.type	MONTGOMERY_FACTOR, @object
	.size	MONTGOMERY_FACTOR, 8
MONTGOMERY_FACTOR:
	.quad	269446386856070085
	.align 32
	.type	sc_p, @object
	.size	sc_p, 56
sc_p:
	.quad	2556006723728458995
	.quad	2408513697996967765
	.quad	-4301259484579875184
	.quad	-2201345047
	.quad	-1
	.quad	-1
	.quad	4611686018427387903
	.align 32
	.type	sc_r2, @object
	.size	sc_r2, 56
sc_r2:
	.quad	-2066146901595808928
	.quad	8859473595851707865
	.quad	965703414319814745
	.quad	-5902020696520468424
	.quad	1917620071967259716
	.quad	2329131455307870383
	.quad	3747743906366994217
	.globl	ossl_curve448_scalar_one
	.align 32
	.type	ossl_curve448_scalar_one, @object
	.size	ossl_curve448_scalar_one, 56
ossl_curve448_scalar_one:
	.quad	1
	.zero	48
	.globl	ossl_curve448_scalar_zero
	.align 32
	.type	ossl_curve448_scalar_zero, @object
	.size	ossl_curve448_scalar_zero, 56
ossl_curve448_scalar_zero:
	.zero	56
	.text
	.type	sc_subx, @function
sc_subx:
.LFB87:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L9
.L10:
	movl	-36(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movq	-72(%rbp), %rcx
	movl	-36(%rbp), %esi
	movq	(%rcx,%rsi,8), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	subq	%rcx, %rax
	sbbq	%rbx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	addl	$1, -36(%rbp)
.L9:
	cmpl	$6, -36(%rbp)
	jbe	.L10
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L11
.L12:
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movq	-80(%rbp), %rcx
	movl	-36(%rbp), %esi
	movq	(%rcx,%rsi,8), %rcx
	andq	-48(%rbp), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	addl	$1, -36(%rbp)
.L11:
	cmpl	$6, -36(%rbp)
	jbe	.L12
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	sc_subx, .-sc_subx
	.type	sc_montmul, @function
sc_montmul:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L14
.L20:
	movq	-144(%rbp), %rax
	movl	-20(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L15
.L16:
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	-24(%rbp), %ecx
	leaq	0(,%rcx,8), %rsi
	movq	-64(%rbp), %rcx
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	movq	%rdx, %rdi
	imulq	%rcx, %rdi
	movq	%rbx, %rsi
	imulq	%rax, %rsi
	addq	%rdi, %rsi
	mulq	%rcx
	leaq	(%rsi,%rdx), %rcx
	movq	%rcx, %rdx
	movl	-24(%rbp), %ecx
	movq	-128(%rbp,%rcx,8), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rdx
	movl	-24(%rbp), %eax
	movq	%rdx, -128(%rbp,%rax,8)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	addl	$1, -24(%rbp)
.L15:
	cmpl	$6, -24(%rbp)
	jbe	.L16
	movq	-48(%rbp), %rdx
	movl	-24(%rbp), %eax
	movq	%rdx, -128(%rbp,%rax,8)
	movq	-128(%rbp), %rax
	movabsq	$269446386856070085, %rdx
	imulq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	leaq	sc_p(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L17
.L19:
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	-24(%rbp), %ecx
	leaq	0(,%rcx,8), %rsi
	movq	-64(%rbp), %rcx
	addq	%rsi, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	movq	%rdx, %rdi
	imulq	%rcx, %rdi
	movq	%rbx, %rsi
	imulq	%rax, %rsi
	addq	%rdi, %rsi
	mulq	%rcx
	leaq	(%rsi,%rdx), %rcx
	movq	%rcx, %rdx
	movl	-24(%rbp), %ecx
	movq	-128(%rbp,%rcx,8), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L18
	movl	-24(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %edx
	movq	%rax, -128(%rbp,%rdx,8)
.L18:
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	addl	$1, -24(%rbp)
.L17:
	cmpl	$6, -24(%rbp)
	jbe	.L19
	movl	-24(%rbp), %eax
	movq	-128(%rbp,%rax,8), %rax
	movq	%rax, %rax
	movl	$0, %edx
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %edx
	addq	%rax, -48(%rbp)
	adcq	%rdx, -40(%rbp)
	movl	-24(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %edx
	movq	%rax, -128(%rbp,%rdx,8)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	addl	$1, -20(%rbp)
.L14:
	cmpl	$6, -20(%rbp)
	jbe	.L20
	movq	-32(%rbp), %rdi
	leaq	sc_p(%rip), %rcx
	leaq	sc_p(%rip), %rdx
	leaq	-128(%rbp), %rsi
	movq	-136(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sc_subx
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	sc_montmul, .-sc_montmul
	.globl	ossl_curve448_scalar_mul
	.type	ossl_curve448_scalar_mul, @function
ossl_curve448_scalar_mul:
.LFB89:
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
	call	sc_montmul
	leaq	sc_r2(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sc_montmul
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	ossl_curve448_scalar_mul, .-ossl_curve448_scalar_mul
	.globl	ossl_curve448_scalar_sub
	.type	ossl_curve448_scalar_sub, @function
ossl_curve448_scalar_sub:
.LFB90:
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
	movq	-16(%rbp), %rsi
	leaq	sc_p(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	sc_subx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	ossl_curve448_scalar_sub, .-ossl_curve448_scalar_sub
	.globl	ossl_curve448_scalar_add
	.type	ossl_curve448_scalar_add, @function
ossl_curve448_scalar_add:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L24
.L25:
	movq	-64(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movq	-72(%rbp), %rcx
	movl	-36(%rbp), %esi
	movq	(%rcx,%rsi,8), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	addl	$1, -36(%rbp)
.L24:
	cmpl	$6, -36(%rbp)
	jbe	.L25
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	sc_p(%rip), %rcx
	leaq	sc_p(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	sc_subx
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	ossl_curve448_scalar_add, .-ossl_curve448_scalar_add
	.type	scalar_decode_short, @function
scalar_decode_short:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L27
.L31:
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L28
.L30:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	sall	$3, %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rax, -32(%rbp)
	addq	$1, -16(%rbp)
	addq	$1, -24(%rbp)
.L28:
	cmpq	$7, -16(%rbp)
	ja	.L29
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L30
.L29:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -8(%rbp)
.L27:
	cmpq	$6, -8(%rbp)
	jbe	.L31
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	scalar_decode_short, .-scalar_decode_short
	.globl	ossl_curve448_scalar_decode
	.type	ossl_curve448_scalar_decode, @function
ossl_curve448_scalar_decode:
.LFB93:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$56, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	scalar_decode_short
	movl	$0, -20(%rbp)
	jmp	.L33
.L34:
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movl	-20(%rbp), %ecx
	leaq	0(,%rcx,8), %rsi
	leaq	sc_p(%rip), %rcx
	movq	(%rsi,%rcx), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	subq	%rcx, %rax
	sbbq	%rbx, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	addl	$1, -20(%rbp)
.L33:
	cmpl	$6, -20(%rbp)
	jbe	.L34
	movq	ossl_curve448_scalar_one@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_mul@PLT
	movq	-48(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, %rdi
	call	constant_time_is_zero_64
	notq	%rax
	movq	%rax, %rdi
	call	c448_succeed_if
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	ossl_curve448_scalar_decode, .-ossl_curve448_scalar_decode
	.globl	ossl_curve448_scalar_destroy
	.type	ossl_curve448_scalar_destroy, @function
ossl_curve448_scalar_destroy:
.LFB94:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	ossl_curve448_scalar_destroy, .-ossl_curve448_scalar_destroy
	.globl	ossl_curve448_scalar_decode_long
	.type	ossl_curve448_scalar_decode_long, @function
ossl_curve448_scalar_decode_long:
.LFB95:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.L38
	movq	ossl_curve448_scalar_zero@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	curve448_scalar_copy
	jmp	.L37
.L38:
	movq	-152(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	movabsq	$2635249153387078803, %rdx
	mulq	%rdx
	imulq	$56, %rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	-152(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.L40
	subq	$56, -8(%rbp)
.L40:
	movq	-152(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	scalar_decode_short
	cmpq	$56, -152(%rbp)
	jne	.L42
	movq	ossl_curve448_scalar_one@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	-64(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_mul@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_scalar_destroy@PLT
	jmp	.L37
.L43:
	subq	$56, -8(%rbp)
	leaq	sc_r2(%rip), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sc_montmul
	movq	-144(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_decode@PLT
	leaq	-128(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_curve448_scalar_add@PLT
.L42:
	cmpq	$0, -8(%rbp)
	jne	.L43
	leaq	-64(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	curve448_scalar_copy
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_scalar_destroy@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_curve448_scalar_destroy@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	ossl_curve448_scalar_decode_long, .-ossl_curve448_scalar_decode_long
	.globl	ossl_curve448_scalar_encode
	.type	ossl_curve448_scalar_encode, @function
ossl_curve448_scalar_encode:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L46
.L49:
	movl	$0, -8(%rbp)
	jmp	.L47
.L48:
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movq	(%rax,%rdx,8), %rdx
	movl	-8(%rbp), %eax
	sall	$3, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -8(%rbp)
	addl	$1, -12(%rbp)
.L47:
	cmpl	$7, -8(%rbp)
	jbe	.L48
	addl	$1, -4(%rbp)
.L46:
	cmpl	$6, -4(%rbp)
	jbe	.L49
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	ossl_curve448_scalar_encode, .-ossl_curve448_scalar_encode
	.globl	ossl_curve448_scalar_halve
	.type	ossl_curve448_scalar_halve, @function
ossl_curve448_scalar_halve:
.LFB97:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	negq	%rax
	movq	%rax, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L51
.L52:
	movq	-64(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rcx
	movl	$0, %ebx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movl	-36(%rbp), %ecx
	leaq	0(,%rcx,8), %rsi
	leaq	sc_p(%rip), %rcx
	movq	(%rsi,%rcx), %rcx
	andq	-48(%rbp), %rcx
	movq	%rcx, %rcx
	movl	$0, %ebx
	addq	%rcx, %rax
	adcq	%rbx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	addl	$1, -36(%rbp)
.L51:
	cmpl	$6, -36(%rbp)
	jbe	.L52
	movl	$0, -36(%rbp)
	jmp	.L53
.L54:
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	shrq	%rax
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rax
	salq	$63, %rax
	orq	%rax, %rdx
	movq	%rdx, %rcx
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -36(%rbp)
.L53:
	cmpl	$5, -36(%rbp)
	jbe	.L54
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	(%rax,%rdx,8), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	salq	$63, %rax
	orq	%rax, %rdx
	movq	%rdx, %rcx
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %edx
	movq	%rcx, (%rax,%rdx,8)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	ossl_curve448_scalar_halve, .-ossl_curve448_scalar_halve
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
