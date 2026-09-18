	.file	"rsaz_exp.c"
	.text
	.type	value_barrier_64, @function
value_barrier_64:
.LFB62:
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
.LFE62:
	.size	value_barrier_64, .-value_barrier_64
	.type	constant_time_select_64, @function
constant_time_select_64:
.LFB71:
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
.LFE71:
	.size	constant_time_select_64, .-constant_time_select_64
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB187:
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
.LFE187:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB188:
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
.LFE188:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	bn_select_words, @function
bn_select_words:
.LFB204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L10
.L11:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-32(%rbp), %rax
	leaq	(%rsi,%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	constant_time_select_64
	movq	%rax, (%rbx)
	addq	$1, -16(%rbp)
.L10:
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L11
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	bn_select_words, .-bn_select_words
	.type	bn_reduce_once_in_place, @function
bn_reduce_once_in_place:
.LFB205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	subq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_select_words
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	bn_reduce_once_in_place, .-bn_reduce_once_in_place
	.section	.rodata
	.align 64
	.type	one, @object
	.size	one, 320
one:
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.align 64
	.type	two80, @object
	.size	two80, 320
two80:
	.quad	0
	.quad	0
	.quad	4194304
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.text
	.globl	RSAZ_1024_mod_exp_avx2
	.type	RSAZ_1024_mod_exp_avx2, @function
RSAZ_1024_mod_exp_avx2:
.LFB206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$5872, %rsp
	movq	%rdi, -5832(%rbp)
	movq	%rsi, -5840(%rbp)
	movq	%rdx, -5848(%rbp)
	movq	%rcx, -5856(%rbp)
	movq	%r8, -5864(%rbp)
	movq	%r9, -5872(%rbp)
	leaq	-5696(%rbp), %rax
	andl	$63, %eax
	movl	$64, %edx
	subq	%rax, %rdx
	leaq	-5696(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$960, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	andl	$4095, %eax
	addq	$320, %rax
	shrq	$12, %rax
	testq	%rax, %rax
	je	.L15
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$320, %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	addq	$640, %rax
	movq	%rax, -16(%rbp)
	jmp	.L16
.L15:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	addq	$320, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$640, %rax
	movq	%rax, -8(%rbp)
.L16:
	movq	-5856(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_norm2red_avx2@PLT
	movq	-5840(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_norm2red_avx2@PLT
	movq	-5864(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_norm2red_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	two80(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	one(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$17, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_gather5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$25, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_gather5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$21, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_gather5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$14, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$28, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$29, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_gather5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$18, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$19, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_gather5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$11, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$22, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$23, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_gather5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$26, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$27, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$14, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_gather5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$15, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$30, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$31, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_scatter5_avx2@PLT
	movq	-5848(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$127, %rax
	movzbl	(%rax), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_gather5_avx2@PLT
	movl	$1014, -28(%rbp)
	jmp	.L17
.L18:
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$5, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	-60(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$31, %eax
	movl	%eax, -60(%rbp)
	subl	$5, -28(%rbp)
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_gather5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
.L17:
	cmpl	$0, -28(%rbp)
	jns	.L18
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdi
	call	rsaz_1024_sqr_avx2@PLT
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$15, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_gather5_avx2@PLT
	movq	-5872(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-5872(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	one(%rip), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	rsaz_1024_mul_avx2@PLT
	movq	-24(%rbp), %rdx
	movq	-5832(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rsaz_1024_red2norm_avx2@PLT
	leaq	-5824(%rbp), %rcx
	movq	-5856(%rbp), %rdx
	movq	-5832(%rbp), %rax
	movl	$16, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	bn_reduce_once_in_place
	leaq	-5696(%rbp), %rax
	movl	$5632, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-5824(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	RSAZ_1024_mod_exp_avx2, .-RSAZ_1024_mod_exp_avx2
	.globl	RSAZ_512_mod_exp
	.type	RSAZ_512_mod_exp, @function
RSAZ_512_mod_exp:
.LFB207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1376, %rsp
	movq	%rdi, -1336(%rbp)
	movq	%rsi, -1344(%rbp)
	movq	%rdx, -1352(%rbp)
	movq	%rcx, -1360(%rbp)
	movq	%r8, -1368(%rbp)
	movq	%r9, -1376(%rbp)
	leaq	-1264(%rbp), %rax
	andl	$63, %eax
	movl	$64, %edx
	subq	%rax, %rdx
	leaq	-1264(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$1024, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$1088, %rax
	movq	%rax, -32(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-1360(%rbp), %rax
	movq	(%rax), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-1360(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$8, %rax
	notq	%rdx
	movq	%rdx, (%rax)
	movq	-1360(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$16, %rax
	notq	%rdx
	movq	%rdx, (%rax)
	movq	-1360(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$24, %rax
	notq	%rdx
	movq	%rdx, (%rax)
	movq	-1360(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$32, %rax
	notq	%rdx
	movq	%rdx, (%rax)
	movq	-1360(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$40, %rax
	notq	%rdx
	movq	%rdx, (%rax)
	movq	-1360(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$48, %rax
	notq	%rdx
	movq	%rdx, (%rax)
	movq	-1360(%rbp), %rax
	addq	$56, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$56, %rax
	notq	%rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_512_scatter4@PLT
	movq	-1368(%rbp), %rdi
	movq	-1360(%rbp), %rcx
	movq	-1376(%rbp), %rdx
	movq	-1344(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_512_mul@PLT
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_512_scatter4@PLT
	movq	-1368(%rbp), %rcx
	movq	-1360(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	rsaz_512_sqr@PLT
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_512_scatter4@PLT
	movl	$3, -4(%rbp)
	jmp	.L20
.L21:
	movl	-4(%rbp), %r8d
	movq	-16(%rbp), %rdi
	movq	-1368(%rbp), %rcx
	movq	-1360(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_512_mul_scatter4@PLT
	addl	$1, -4(%rbp)
.L20:
	cmpl	$15, -4(%rbp)
	jle	.L21
	movq	-40(%rbp), %rax
	addq	$63, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsaz_512_gather4@PLT
	movq	-1368(%rbp), %rcx
	movq	-1360(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdi
	call	rsaz_512_sqr@PLT
	movl	-44(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %r8d
	movq	-1368(%rbp), %rdi
	movq	-1360(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_512_mul_gather4@PLT
	movl	$62, -4(%rbp)
	jmp	.L22
.L23:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	movq	-1368(%rbp), %rcx
	movq	-1360(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdi
	call	rsaz_512_sqr@PLT
	movl	-44(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %r8d
	movq	-1368(%rbp), %rdi
	movq	-1360(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_512_mul_gather4@PLT
	movq	-1368(%rbp), %rcx
	movq	-1360(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdi
	call	rsaz_512_sqr@PLT
	movl	-44(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %r8d
	movq	-1368(%rbp), %rdi
	movq	-1360(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsaz_512_mul_gather4@PLT
	subl	$1, -4(%rbp)
.L22:
	cmpl	$0, -4(%rbp)
	jns	.L23
	movq	-1368(%rbp), %rcx
	movq	-1360(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-1336(%rbp), %rax
	movq	%rax, %rdi
	call	rsaz_512_mul_by_one@PLT
	leaq	-1328(%rbp), %rcx
	movq	-1360(%rbp), %rdx
	movq	-1336(%rbp), %rax
	movl	$8, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	bn_reduce_once_in_place
	leaq	-1264(%rbp), %rax
	movl	$1216, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-1328(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	RSAZ_512_mod_exp, .-RSAZ_512_mod_exp
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
