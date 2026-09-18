	.file	"bn_div.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	bn_left_align, @function
bn_left_align:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits_word@PLT
	movl	%eax, -32(%rbp)
	movl	$64, %eax
	subl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %eax
	cltq
	negq	%rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$8, %rax
	orq	%rax, -48(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L6
.L7:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	orq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-32(%rbp), %eax
	movq	-56(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L6:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L7
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	bn_left_align, .-bn_left_align
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_div.c"
	.text
	.globl	BN_div
	.type	BN_div, @function
BN_div:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L10
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$3, %rax
	subq	$8, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L11
.L12:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_div_fixed_top@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L13
	cmpq	$0, -24(%rbp)
	je	.L14
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
.L14:
	cmpq	$0, -32(%rbp)
	je	.L13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
.L13:
	movl	-4(%rbp), %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_div, .-BN_div
	.globl	bn_div_fixed_top
	.type	bn_div_fixed_top, @function
bn_div_fixed_top:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	cmpq	$0, -232(%rbp)
	jne	.L16
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	jmp	.L17
.L16:
	movq	-232(%rbp), %rax
	movq	%rax, -32(%rbp)
.L17:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -120(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -128(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L42
	movq	-256(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L43
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	bn_left_align
	movl	%eax, -140(%rbp)
	movq	-136(%rbp), %rax
	movl	$0, 16(%rax)
	movl	-140(%rbp), %edx
	movq	-248(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_lshift_fixed_top@PLT
	testl	%eax, %eax
	je	.L44
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -144(%rbp)
	movq	-128(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jg	.L22
	movl	-144(%rbp), %eax
	leal	1(%rax), %edx
	movq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L45
	movl	-144(%rbp), %eax
	subl	-68(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-128(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, 8(%rax)
.L22:
	movl	-68(%rbp), %eax
	subl	-144(%rbp), %eax
	movl	%eax, -148(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	cmpl	$1, -144(%rbp)
	je	.L24
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L25
.L24:
	movq	$0, -64(%rbp)
.L25:
	movl	-148(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L46
	movq	-248(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -164(%rbp)
	movq	-256(%rbp), %rax
	movl	16(%rax), %eax
	xorl	-164(%rbp), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movl	-148(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	20(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	-144(%rbp), %eax
	leal	1(%rax), %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L47
	movl	$0, -20(%rbp)
	jmp	.L28
.L39:
	movq	$0, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-56(%rbp), %rax
	movq	-8(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jne	.L29
	movq	$-1, -80(%rbp)
	jmp	.L30
.L29:
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L31
	movq	-56(%rbp), %rax
	movq	-16(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.L32
.L31:
	movq	$0, -96(%rbp)
.L32:
	movq	-184(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	-160(%rbp), %rcx
#APP
# 386 "../crypto/bn/bn_div.c" 1
	divq   %rcx
# 0 "" 2
#NO_APP
	movq	%rax, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	-80(%rbp), %rcx
	movl	$0, %ebx
	movq	%rdx, %rdi
	imulq	%rcx, %rdi
	movq	%rbx, %rsi
	imulq	%rax, %rsi
	addq	%rdi, %rsi
	mulq	%rcx
	leaq	(%rsi,%rdx), %rcx
	movq	%rcx, %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rdx, %rax
	xorl	%edx, %edx
	movq	%rax, -112(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -104(%rbp)
.L36:
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jb	.L30
	movq	-112(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.L33
	movq	-104(%rbp), %rax
	cmpq	%rax, -96(%rbp)
	jnb	.L30
.L33:
	subq	$1, -80(%rbp)
	movq	-160(%rbp), %rax
	addq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jb	.L48
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L35
	subq	$1, -112(%rbp)
.L35:
	movq	-64(%rbp), %rax
	subq	%rax, -104(%rbp)
	jmp	.L36
.L48:
	nop
.L30:
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movl	-144(%rbp), %edx
	movq	%rax, %rdi
	call	bn_mul_words@PLT
	movq	%rax, -216(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-216(%rbp), %rax
	movq	%rax, (%rdx)
	subq	$8, -48(%rbp)
	movl	-144(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	subq	%rax, -80(%rbp)
	negq	-216(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L37
.L38:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	andq	-216(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -24(%rbp)
.L37:
	movl	-24(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jl	.L38
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movl	-144(%rbp), %ecx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	bn_add_words@PLT
	movq	%rax, -216(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	subq	$8, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	addl	$1, -20(%rbp)
	subq	$8, -56(%rbp)
.L28:
	movl	-20(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jl	.L39
	movq	-128(%rbp), %rax
	movl	-164(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-128(%rbp), %rax
	movl	-144(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-128(%rbp), %rax
	movl	20(%rax), %edx
	movq	-128(%rbp), %rax
	movl	%edx, 20(%rax)
	cmpq	$0, -240(%rbp)
	je	.L40
	movl	-140(%rbp), %edx
	movq	-128(%rbp), %rcx
	movq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_rshift_fixed_top@PLT
	testl	%eax, %eax
	je	.L49
.L40:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	$1, %eax
	jmp	.L41
.L42:
	nop
	jmp	.L19
.L43:
	nop
	jmp	.L19
.L44:
	nop
	jmp	.L19
.L45:
	nop
	jmp	.L19
.L46:
	nop
	jmp	.L19
.L47:
	nop
	jmp	.L19
.L49:
	nop
.L19:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	$0, %eax
.L41:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	bn_div_fixed_top, .-bn_div_fixed_top
	.section	.rodata
	.type	__func__.0, @object
	.size	__func__.0, 7
__func__.0:
	.string	"BN_div"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
