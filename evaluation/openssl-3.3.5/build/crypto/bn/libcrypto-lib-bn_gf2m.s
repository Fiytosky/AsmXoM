	.file	"bn_gf2m.c"
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
	.globl	BN_GF2m_add
	.type	BN_GF2m_add, @function
BN_GF2m_add:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jge	.L6
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L7
.L6:
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L7:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -4(%rbp)
.L10:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L11
	jmp	.L12
.L13:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
.L12:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L13
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_GF2m_add, .-BN_GF2m_add
	.globl	BN_GF2m_mod_arr
	.type	BN_GF2m_mod_arr, @function
BN_GF2m_mod_arr:
.LFB162:
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
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L15
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L16
.L15:
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L17
	movq	-64(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L18
	movl	$0, %eax
	jmp	.L16
.L18:
	movl	$0, -4(%rbp)
	jmp	.L19
.L20:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	(%rcx), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
.L19:
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L20
	movq	-64(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
.L17:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L21
.L26:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	subl	$1, -4(%rbp)
	jmp	.L21
.L22:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movl	$1, -8(%rbp)
	jmp	.L23
.L25:
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -40(%rbp)
	movl	-40(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -24(%rbp)
	movl	$64, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -40(%rbp)
	movl	-4(%rbp), %eax
	subl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movq	%rsi, %rcx
	movl	-4(%rbp), %eax
	subl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-16(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	cmpl	$0, -24(%rbp)
	je	.L24
	movl	-4(%rbp), %eax
	subl	-40(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rcx
	movl	-4(%rbp), %eax
	subl	-40(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rsi
	movq	-16(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
.L24:
	addl	$1, -8(%rbp)
.L23:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L25
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -24(%rbp)
	movl	$64, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-4(%rbp), %eax
	subl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movq	%rsi, %rcx
	movl	-4(%rbp), %eax
	subl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-16(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	cmpl	$0, -24(%rbp)
	je	.L21
	movl	-4(%rbp), %eax
	subl	-40(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rcx
	movl	-4(%rbp), %eax
	subl	-40(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rsi
	movq	-16(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
.L21:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.L26
	jmp	.L27
.L35:
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L36
	movl	$64, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L30
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movq	%rsi, %rax
	movq	%rax, (%rdx)
	jmp	.L31
.L30:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
.L31:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	xorq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -8(%rbp)
	jmp	.L32
.L34:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -40(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -24(%rbp)
	movl	$64, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rcx
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-16(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	cmpl	$0, -24(%rbp)
	je	.L33
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L33
	movl	-40(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	xorq	-48(%rbp), %rax
	movq	%rax, (%rdx)
.L33:
	addl	$1, -8(%rbp)
.L32:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L34
.L27:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L35
	jmp	.L29
.L36:
	nop
.L29:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_GF2m_mod_arr, .-BN_GF2m_mod_arr
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_gf2m.c"
	.text
	.globl	BN_GF2m_mod
	.type	BN_GF2m_mod, @function
BN_GF2m_mod:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -4(%rbp)
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_poly2arr@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L38
	cmpl	$6, -4(%rbp)
	jle	.L39
.L38:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$399, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L41
.L39:
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod_arr@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_GF2m_mod, .-BN_GF2m_mod
	.globl	BN_GF2m_mod_mul_arr
	.type	BN_GF2m_mod_mul_arr, @function
BN_GF2m_mod_mul_arr:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	$0, -16(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jne	.L43
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr_arr@PLT
	jmp	.L60
.L43:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L61
	movq	-112(%rbp), %rax
	movl	8(%rax), %edx
	movq	-120(%rbp), %rax
	movl	8(%rax), %eax
	addl	%edx, %eax
	addl	$4, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L62
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	$0, -4(%rbp)
	jmp	.L48
.L49:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -4(%rbp)
.L48:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L49
	movl	$0, -8(%rbp)
	jmp	.L50
.L59:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movq	-120(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	je	.L51
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L52
.L51:
	movq	$0, -32(%rbp)
.L52:
	movl	$0, -4(%rbp)
	jmp	.L53
.L58:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movq	-112(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	je	.L54
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L55
.L54:
	movq	$0, -24(%rbp)
.L55:
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_GF2m_mul_2x2@PLT
	movl	$0, -12(%rbp)
	jmp	.L56
.L57:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %edx
	addl	%edx, %ecx
	movl	-12(%rbp), %edx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %eax
	cltq
	movq	-96(%rbp,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	addl	%esi, %edi
	movl	-12(%rbp), %esi
	addl	%edi, %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -12(%rbp)
.L56:
	cmpl	$3, -12(%rbp)
	jle	.L57
	addl	$2, -4(%rbp)
.L53:
	movq	-112(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L58
	addl	$2, -8(%rbp)
.L50:
	movq	-120(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L59
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movq	-128(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod_arr@PLT
	testl	%eax, %eax
	je	.L63
	movl	$1, -16(%rbp)
	jmp	.L46
.L61:
	nop
	jmp	.L46
.L62:
	nop
	jmp	.L46
.L63:
	nop
.L46:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-16(%rbp), %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_GF2m_mod_mul_arr, .-BN_GF2m_mod_mul_arr
	.globl	BN_GF2m_mod_mul
	.type	BN_GF2m_mod_mul, @function
BN_GF2m_mod_mul:
.LFB165:
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
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	.LC0(%rip), %rcx
	movl	$477, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_poly2arr@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L67
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L68
.L67:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$482, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L69
.L68:
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul_arr@PLT
	movl	%eax, -4(%rbp)
.L69:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$488, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_GF2m_mod_mul, .-BN_GF2m_mod_mul
	.globl	BN_GF2m_mod_sqr_arr
	.type	BN_GF2m_mod_sqr_arr, @function
BN_GF2m_mod_sqr_arr:
.LFB166:
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
	movl	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L78
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	leal	(%rax,%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L79
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L74
.L75:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$60, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$60, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$60, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$60, %rax
	andl	$1, %eax
	orq	%rcx, %rax
	salq	$56, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$56, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$56, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$56, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$56, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$48, %rax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$52, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$52, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$52, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$52, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$40, %rax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$48, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$48, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$48, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$48, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$32, %rax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$44, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$44, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$44, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$44, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$24, %rax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$40, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$40, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$40, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$40, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$16, %rax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$36, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$36, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$36, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$36, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$8, %rax
	orq	%rax, %rcx
	movq	%rcx, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$32, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$32, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$32, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$32, %rax
	andl	$1, %eax
	orq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	orq	%rcx, %rsi
	movq	%rsi, %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$28, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$28, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$28, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$28, %rax
	andl	$1, %eax
	orq	%rcx, %rax
	salq	$56, %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$24, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$24, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$24, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$24, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$48, %rax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$20, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$20, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$20, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$20, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$40, %rax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$16, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$16, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$16, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$16, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$32, %rax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$12, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$12, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$12, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$12, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$24, %rax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$8, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$16, %rax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$4, %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$4, %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$4, %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$4, %rax
	andl	$1, %eax
	orq	%rsi, %rax
	salq	$8, %rax
	orq	%rax, %rcx
	movq	%rcx, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	salq	$3, %rax
	andl	$64, %eax
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	salq	$2, %rax
	andl	$16, %eax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	%rax, %rax
	andl	$4, %eax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	andl	$1, %eax
	orq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	orq	%rcx, %rsi
	movq	%rsi, %rdx
	movq	%rdx, (%rax)
	subl	$1, -4(%rbp)
.L74:
	cmpl	$0, -4(%rbp)
	jns	.L75
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	leal	(%rax,%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod_arr@PLT
	testl	%eax, %eax
	je	.L80
	movl	$1, -8(%rbp)
	jmp	.L72
.L78:
	nop
	jmp	.L72
.L79:
	nop
	jmp	.L72
.L80:
	nop
.L72:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BN_GF2m_mod_sqr_arr, .-BN_GF2m_mod_sqr_arr
	.globl	BN_GF2m_mod_sqr
	.type	BN_GF2m_mod_sqr, @function
BN_GF2m_mod_sqr:
.LFB167:
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
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	.LC0(%rip), %rcx
	movl	$537, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L82
	movl	$0, %eax
	jmp	.L83
.L82:
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_poly2arr@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L84
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L85
.L84:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$542, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L86
.L85:
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr_arr@PLT
	movl	%eax, -4(%rbp)
.L86:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$548, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BN_GF2m_mod_sqr, .-BN_GF2m_mod_sqr
	.type	BN_GF2m_mod_inv_vartime, @function
BN_GF2m_mod_inv_vartime:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L121
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod@PLT
	testl	%eax, %eax
	je	.L122
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L123
	movq	-184(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L124
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -64(%rbp)
	movq	-184(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -120(%rbp)
	movl	-120(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L125
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -56(%rbp)
	jmp	.L94
.L95:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -56(%rbp)
.L94:
	movl	-56(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jl	.L95
	movq	-40(%rbp), %rax
	movl	-120(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	-120(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L126
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	$1, (%rax)
	movl	$1, -56(%rbp)
	jmp	.L97
.L98:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -56(%rbp)
.L97:
	movl	-56(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jl	.L98
	movq	-24(%rbp), %rax
	movl	-120(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	-120(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L127
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L100
.L101:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -56(%rbp)
.L100:
	movl	-56(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jl	.L101
	movq	-32(%rbp), %rax
	movl	-120(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.L102
.L106:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	andl	$1, %eax
	negq	%rax
	movq	%rax, -128(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	andq	-128(%rbp), %rax
	xorq	%rax, -112(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L103
.L104:
	movl	-56(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-104(%rbp), %rax
	shrq	%rax
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	orq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-56(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movl	-56(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	andq	-128(%rbp), %rax
	xorq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-112(%rbp), %rax
	shrq	%rax
	movq	%rax, %rcx
	movq	-144(%rbp), %rax
	salq	$63, %rax
	movq	%rax, %rdx
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-80(%rbp), %rax
	addq	%rsi, %rax
	orq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, -112(%rbp)
	addl	$1, -56(%rbp)
.L103:
	movl	-120(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -56(%rbp)
	jl	.L104
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	-104(%rbp), %rdx
	shrq	%rdx
	movq	%rdx, (%rax)
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	-112(%rbp), %rdx
	shrq	%rdx
	movq	%rdx, (%rax)
	subl	$1, -60(%rbp)
.L102:
	cmpl	$0, -60(%rbp)
	je	.L105
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L106
.L105:
	cmpl	$64, -60(%rbp)
	jg	.L107
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	je	.L129
.L107:
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.L110
	movl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
.L110:
	movl	$0, -56(%rbp)
	jmp	.L111
.L112:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-80(%rbp), %rax
	addq	%rsi, %rax
	xorq	%rcx, %rdx
	movq	%rdx, (%rax)
	addl	$1, -56(%rbp)
.L111:
	movl	-56(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jl	.L112
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jne	.L102
	movl	-60(%rbp), %eax
	subl	$1, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -116(%rbp)
	jmp	.L114
.L116:
	subl	$1, -116(%rbp)
.L114:
	movl	-116(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L115
	cmpl	$0, -116(%rbp)
	jne	.L116
.L115:
	movl	-116(%rbp), %eax
	sall	$6, %eax
	movl	%eax, %ebx
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits_word@PLT
	addl	%ebx, %eax
	movl	%eax, -60(%rbp)
	jmp	.L102
.L129:
	nop
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movq	-24(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L130
	movl	$1, -52(%rbp)
	jmp	.L89
.L121:
	nop
	jmp	.L89
.L122:
	nop
	jmp	.L89
.L123:
	nop
	jmp	.L89
.L124:
	nop
	jmp	.L89
.L125:
	nop
	jmp	.L89
.L126:
	nop
	jmp	.L89
.L127:
	nop
	jmp	.L89
.L128:
	nop
	jmp	.L89
.L130:
	nop
.L89:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BN_GF2m_mod_inv_vartime, .-BN_GF2m_mod_inv_vartime
	.globl	BN_GF2m_mod_inv
	.type	BN_GF2m_mod_inv, @function
BN_GF2m_mod_inv:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L140
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jle	.L141
.L134:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %esi
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	je	.L142
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L134
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul@PLT
	testl	%eax, %eax
	je	.L143
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_inv_vartime
	testl	%eax, %eax
	je	.L144
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul@PLT
	testl	%eax, %eax
	je	.L145
	movl	$1, -4(%rbp)
	jmp	.L133
.L140:
	nop
	jmp	.L133
.L141:
	nop
	jmp	.L133
.L142:
	nop
	jmp	.L133
.L143:
	nop
	jmp	.L133
.L144:
	nop
	jmp	.L133
.L145:
	nop
.L133:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	BN_GF2m_mod_inv, .-BN_GF2m_mod_inv
	.globl	BN_GF2m_mod_inv_arr
	.type	BN_GF2m_mod_inv_arr, @function
BN_GF2m_mod_inv_arr:
.LFB170:
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
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L151
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	je	.L152
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_inv@PLT
	movl	%eax, -4(%rbp)
	jmp	.L148
.L151:
	nop
	jmp	.L148
.L152:
	nop
.L148:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	BN_GF2m_mod_inv_arr, .-BN_GF2m_mod_inv_arr
	.globl	BN_GF2m_mod_div
	.type	BN_GF2m_mod_div, @function
BN_GF2m_mod_div:
.LFB171:
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
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L159
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_inv@PLT
	testl	%eax, %eax
	je	.L160
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul@PLT
	testl	%eax, %eax
	je	.L161
	movl	$1, -4(%rbp)
	jmp	.L155
.L159:
	nop
	jmp	.L155
.L160:
	nop
	jmp	.L155
.L161:
	nop
.L155:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BN_GF2m_mod_div, .-BN_GF2m_mod_div
	.globl	BN_GF2m_mod_div_arr
	.type	BN_GF2m_mod_div_arr, @function
BN_GF2m_mod_div_arr:
.LFB172:
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
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L167
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_arr2poly@PLT
	testl	%eax, %eax
	je	.L168
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_div@PLT
	movl	%eax, -4(%rbp)
	jmp	.L164
.L167:
	nop
	jmp	.L164
.L168:
	nop
.L164:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	BN_GF2m_mod_div_arr, .-BN_GF2m_mod_div_arr
	.globl	BN_GF2m_mod_exp_arr
	.type	BN_GF2m_mod_exp_arr, @function
BN_GF2m_mod_exp_arr:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L170
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	jmp	.L171
.L170:
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	je	.L172
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L171
.L172:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L181
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod_arr@PLT
	testl	%eax, %eax
	je	.L182
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L176
.L179:
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr_arr@PLT
	testl	%eax, %eax
	je	.L183
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	je	.L178
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul_arr@PLT
	testl	%eax, %eax
	je	.L184
.L178:
	subl	$1, -8(%rbp)
.L176:
	cmpl	$0, -8(%rbp)
	jns	.L179
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L185
	movl	$1, -4(%rbp)
	jmp	.L174
.L181:
	nop
	jmp	.L174
.L182:
	nop
	jmp	.L174
.L183:
	nop
	jmp	.L174
.L184:
	nop
	jmp	.L174
.L185:
	nop
.L174:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	BN_GF2m_mod_exp_arr, .-BN_GF2m_mod_exp_arr
	.globl	BN_GF2m_mod_exp
	.type	BN_GF2m_mod_exp, @function
BN_GF2m_mod_exp:
.LFB174:
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
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	.LC0(%rip), %rcx
	movl	$920, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L187
	movl	$0, %eax
	jmp	.L188
.L187:
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_poly2arr@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L189
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L190
.L189:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$925, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L191
.L190:
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_exp_arr@PLT
	movl	%eax, -4(%rbp)
.L191:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$931, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	BN_GF2m_mod_exp, .-BN_GF2m_mod_exp
	.globl	BN_GF2m_mod_sqrt_arr
	.type	BN_GF2m_mod_sqrt_arr, @function
BN_GF2m_mod_sqrt_arr:
.LFB175:
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
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L193
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L194
.L193:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L198
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L199
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_exp_arr@PLT
	movl	%eax, -4(%rbp)
	jmp	.L196
.L198:
	nop
	jmp	.L196
.L199:
	nop
.L196:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	BN_GF2m_mod_sqrt_arr, .-BN_GF2m_mod_sqrt_arr
	.globl	BN_GF2m_mod_sqrt
	.type	BN_GF2m_mod_sqrt, @function
BN_GF2m_mod_sqrt:
.LFB176:
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
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	.LC0(%rip), %rcx
	movl	$982, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L201
	movl	$0, %eax
	jmp	.L202
.L201:
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_poly2arr@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L203
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L204
.L203:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$987, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L205
.L204:
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqrt_arr@PLT
	movl	%eax, -4(%rbp)
.L205:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$993, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	BN_GF2m_mod_sqrt, .-BN_GF2m_mod_sqrt
	.globl	BN_GF2m_mod_solve_quad_arr
	.type	BN_GF2m_mod_solve_quad_arr, @function
BN_GF2m_mod_solve_quad_arr:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L207
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L208
.L207:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L237
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod_arr@PLT
	testl	%eax, %eax
	je	.L238
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L212
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, -4(%rbp)
	jmp	.L210
.L212:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L213
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L239
	movl	$1, -12(%rbp)
	jmp	.L215
.L219:
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr_arr@PLT
	testl	%eax, %eax
	je	.L240
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr_arr@PLT
	testl	%eax, %eax
	je	.L241
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L242
	addl	$1, -12(%rbp)
.L215:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -12(%rbp)
	jle	.L219
	jmp	.L220
.L213:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L243
.L221:
	movq	-88(%rbp), %rax
	movl	(%rax), %esi
	movq	-96(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	je	.L244
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod_arr@PLT
	testl	%eax, %eax
	je	.L245
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L246
	movl	$1, -12(%rbp)
	jmp	.L225
.L231:
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr_arr@PLT
	testl	%eax, %eax
	je	.L247
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr_arr@PLT
	testl	%eax, %eax
	je	.L248
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_GF2m_mod_mul_arr@PLT
	testl	%eax, %eax
	je	.L249
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L250
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L251
	addl	$1, -12(%rbp)
.L225:
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L231
	addl	$1, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L232
	cmpl	$49, -8(%rbp)
	jle	.L221
.L232:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L220
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1075, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L210
.L220:
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqr_arr@PLT
	testl	%eax, %eax
	je	.L252
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L253
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	je	.L235
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1085, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L210
.L235:
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L254
	movl	$1, -4(%rbp)
	jmp	.L210
.L237:
	nop
	jmp	.L210
.L238:
	nop
	jmp	.L210
.L239:
	nop
	jmp	.L210
.L240:
	nop
	jmp	.L210
.L241:
	nop
	jmp	.L210
.L242:
	nop
	jmp	.L210
.L243:
	nop
	jmp	.L210
.L244:
	nop
	jmp	.L210
.L245:
	nop
	jmp	.L210
.L246:
	nop
	jmp	.L210
.L247:
	nop
	jmp	.L210
.L248:
	nop
	jmp	.L210
.L249:
	nop
	jmp	.L210
.L250:
	nop
	jmp	.L210
.L251:
	nop
	jmp	.L210
.L252:
	nop
	jmp	.L210
.L253:
	nop
	jmp	.L210
.L254:
	nop
.L210:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	BN_GF2m_mod_solve_quad_arr, .-BN_GF2m_mod_solve_quad_arr
	.globl	BN_GF2m_mod_solve_quad
	.type	BN_GF2m_mod_solve_quad, @function
BN_GF2m_mod_solve_quad:
.LFB178:
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
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	.LC0(%rip), %rcx
	movl	$1116, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L261
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_poly2arr@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L258
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L259
.L258:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L257
.L259:
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GF2m_mod_solve_quad_arr@PLT
	movl	%eax, -4(%rbp)
	jmp	.L257
.L261:
	nop
.L257:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1127, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	BN_GF2m_mod_solve_quad, .-BN_GF2m_mod_solve_quad
	.globl	BN_GF2m_poly2arr
	.type	BN_GF2m_poly2arr, @function
BN_GF2m_poly2arr:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L263
	movl	$0, %eax
	jmp	.L264
.L263:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L265
.L272:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L275
	movabsq	$-9223372036854775808, %rax
	movq	%rax, -24(%rbp)
	movl	$63, -8(%rbp)
	jmp	.L268
.L271:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L269
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L270
	movl	-4(%rbp), %eax
	sall	$6, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
.L270:
	addl	$1, -12(%rbp)
.L269:
	shrq	-24(%rbp)
	subl	$1, -8(%rbp)
.L268:
	cmpl	$0, -8(%rbp)
	jns	.L271
	jmp	.L267
.L275:
	nop
.L267:
	subl	$1, -4(%rbp)
.L265:
	cmpl	$0, -4(%rbp)
	jns	.L272
	cmpl	$0, -12(%rbp)
	jle	.L273
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$661, %eax
	jle	.L273
	movl	$0, %eax
	jmp	.L264
.L273:
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L274
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$-1, (%rax)
.L274:
	movl	-12(%rbp), %eax
	addl	$1, %eax
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	BN_GF2m_poly2arr, .-BN_GF2m_poly2arr
	.globl	BN_GF2m_arr2poly
	.type	BN_GF2m_arr2poly, @function
BN_GF2m_arr2poly:
.LFB180:
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
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$0, -4(%rbp)
	jmp	.L277
.L280:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	jne	.L278
	movl	$0, %eax
	jmp	.L279
.L278:
	addl	$1, -4(%rbp)
.L277:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L280
	movl	$1, %eax
.L279:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	BN_GF2m_arr2poly, .-BN_GF2m_arr2poly
	.section	.rodata
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 12
__func__.6:
	.string	"BN_GF2m_mod"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"BN_GF2m_mod_mul"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 16
__func__.4:
	.string	"BN_GF2m_mod_sqr"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"BN_GF2m_mod_exp"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"BN_GF2m_mod_sqrt"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 27
__func__.1:
	.string	"BN_GF2m_mod_solve_quad_arr"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"BN_GF2m_mod_solve_quad"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
