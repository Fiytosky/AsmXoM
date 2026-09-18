	.file	"bn_shift.c"
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
	.globl	BN_lshift1
	.type	BN_lshift1, @function
BN_lshift1:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.L6
	movq	-64(%rbp), %rax
	movl	16(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-64(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L9
.L6:
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L9
	movl	$0, %eax
	jmp	.L8
.L9:
	movq	-64(%rbp), %rax
	movq	(%rax), %r14
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movl	$0, %r12d
	movl	$0, -36(%rbp)
	jmp	.L10
.L11:
	movq	%r14, %rax
	leaq	8(%rax), %r14
	movq	(%rax), %r13
	leaq	(%r13,%r13), %rdx
	movq	%rbx, %rax
	leaq	8(%rax), %rbx
	orq	%r12, %rdx
	movq	%rdx, (%rax)
	shrq	$63, %r13
	movq	%r13, %r12
	addl	$1, -36(%rbp)
.L10:
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L11
	movq	%r12, (%rbx)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	movl	%r12d, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$1, %eax
.L8:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_lshift1, .-BN_lshift1
	.globl	BN_rshift1
	.type	BN_rshift1, @function
BN_rshift1:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L14
.L13:
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L15
	movl	-12(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L16
	movl	$0, %eax
	jmp	.L14
.L16:
	movq	-64(%rbp), %rax
	movl	16(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
.L15:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
	subl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	shrq	%rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	salq	$63, %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	cmpq	$1, -40(%rbp)
	sete	%al
	movzbl	%al, %eax
	subl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L17
.L18:
	subl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	%rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	orq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	salq	$63, %rax
	movq	%rax, -8(%rbp)
.L17:
	cmpl	$0, -12(%rbp)
	jg	.L18
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L19
	movq	-56(%rbp), %rax
	movl	$0, 16(%rax)
.L19:
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_rshift1, .-BN_rshift1
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_shift.c"
	.text
	.globl	BN_lshift
	.type	BN_lshift, @function
BN_lshift:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L21
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L21:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_lshift_fixed_top@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	-4(%rbp), %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_lshift, .-BN_lshift
	.globl	bn_lshift_fixed_top
	.type	bn_lshift_fixed_top, @function
bn_lshift_fixed_top:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	$0, -24(%rbp)
	movl	-84(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -28(%rbp)
	movq	-80(%rbp), %rax
	movl	8(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L26
	movl	-84(%rbp), %eax
	andl	$63, %eax
	movl	%eax, -32(%rbp)
	movl	$64, %eax
	subl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	andl	$63, -36(%rbp)
	movl	-36(%rbp), %eax
	negq	%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shrq	$8, %rax
	orq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	%rcx, %rax
	andq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L27
.L28:
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	orq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	subl	$1, -4(%rbp)
.L27:
	cmpl	$0, -4(%rbp)
	jg	.L28
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L29
.L26:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
.L29:
	cmpl	$0, -28(%rbp)
	je	.L30
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L30:
	movq	-80(%rbp), %rax
	movl	16(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-80(%rbp), %rax
	movl	8(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-72(%rbp), %rax
	movl	20(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	bn_lshift_fixed_top, .-bn_lshift_fixed_top
	.globl	BN_rshift
	.type	BN_rshift, @function
BN_rshift:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L32
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$155, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L33
.L32:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_rshift_fixed_top@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	-4(%rbp), %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_rshift, .-BN_rshift
	.globl	bn_rshift_fixed_top
	.type	bn_rshift_fixed_top, @function
bn_rshift_fixed_top:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movl	-100(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -20(%rbp)
	movq	-96(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L35
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L36
.L35:
	movl	-100(%rbp), %eax
	andl	$63, %eax
	movl	%eax, -24(%rbp)
	movl	$64, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	andl	$63, -28(%rbp)
	movl	-28(%rbp), %eax
	negq	%rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$8, %rax
	orq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movl	8(%rax), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L37
	movl	-44(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L37
	movl	$0, %eax
	jmp	.L36
.L37:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L38
.L39:
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movl	-28(%rbp), %eax
	movq	-72(%rbp), %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	andq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	orq	%rsi, %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	addl	$1, -4(%rbp)
.L38:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L39
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rsi
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movq	%rsi, %rax
	movq	%rax, (%rdx)
	movq	-96(%rbp), %rax
	movl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-88(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-88(%rbp), %rax
	movl	20(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	bn_rshift_fixed_top, .-bn_rshift_fixed_top
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 10
__func__.1:
	.string	"BN_lshift"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 10
__func__.0:
	.string	"BN_rshift"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
