	.file	"bn_mont.c"
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
	.globl	BN_mod_mul_montgomery
	.type	BN_mod_mul_montgomery, @function
BN_mod_mul_montgomery:
.LFB161:
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
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_mod_mul_montgomery, .-BN_mod_mul_montgomery
	.globl	bn_mul_mont_fixed_top
	.type	bn_mul_mont_fixed_top, @function
bn_mul_mont_fixed_top:
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
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jle	.L8
	cmpl	$512, -8(%rbp)
	jg	.L8
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jne	.L8
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jne	.L8
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-48(%rbp), %rax
	leaq	80(%rax), %r8
	movq	-48(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edi
	movl	%edi, %r9d
	movq	%rax, %rdi
	call	bn_mul_mont@PLT
	testl	%eax, %eax
	je	.L8
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$1, %eax
	jmp	.L10
.L8:
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	addl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	cmpl	%eax, %edx
	jle	.L11
	movl	$0, %eax
	jmp	.L10
.L11:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L17
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L14
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_sqr_fixed_top@PLT
	testl	%eax, %eax
	jne	.L15
	jmp	.L13
.L14:
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bn_mul_fixed_top@PLT
	testl	%eax, %eax
	je	.L18
.L15:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_from_montgomery_word
	testl	%eax, %eax
	je	.L19
	movl	$1, -4(%rbp)
	jmp	.L13
.L17:
	nop
	jmp	.L13
.L18:
	nop
	jmp	.L13
.L19:
	nop
.L13:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	bn_mul_mont_fixed_top, .-bn_mul_mont_fixed_top
	.type	bn_from_montgomery_word, @function
bn_from_montgomery_word:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L21
	movq	-88(%rbp), %rax
	movl	$0, 8(%rax)
	movl	$1, %eax
	jmp	.L22
.L21:
	movl	-36(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L23
	movl	$0, %eax
	jmp	.L22
.L23:
	movq	-96(%rbp), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	xorl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L24
.L25:
	movl	-20(%rbp), %eax
	subl	-52(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, %eax
	negq	%rax
	movq	%rax, -80(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	andq	-80(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -20(%rbp)
.L24:
	movl	-20(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L25
	movq	-96(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-96(%rbp), %rax
	movl	20(%rax), %edx
	movq	-96(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-104(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L26
.L27:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, %rcx
	movl	-36(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_mul_add_words@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -80(%rbp)
	setne	%al
	movzbl	%al, %eax
	orq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	setnb	%al
	movzbl	%al, %eax
	andq	%rax, -16(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -20(%rbp)
	addq	$8, -8(%rbp)
.L26:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L27
	movl	-36(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L28
	movl	$0, %eax
	jmp	.L22
.L28:
	movq	-88(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-88(%rbp), %rax
	movl	20(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-96(%rbp), %rax
	movl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	subq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L29
.L30:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	notq	%rax
	movq	%rax, %rsi
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	andq	%rax, %rsi
	movq	%rsi, %rcx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	orq	%rcx, %rdx
	movq	%rdx, (%rax)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -20(%rbp)
.L29:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L30
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	bn_from_montgomery_word, .-bn_from_montgomery_word
	.globl	BN_from_montgomery
	.type	BN_from_montgomery, @function
BN_from_montgomery:
.LFB164:
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
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_from_mont_fixed_top@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_from_montgomery, .-BN_from_montgomery
	.globl	bn_from_mont_fixed_top
	.type	bn_from_mont_fixed_top, @function
bn_from_mont_fixed_top:
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
	je	.L34
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L34
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_from_montgomery_word
	movl	%eax, -4(%rbp)
.L34:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	bn_from_mont_fixed_top, .-bn_from_mont_fixed_top
	.globl	bn_to_mont_fixed_top
	.type	bn_to_mont_fixed_top, @function
bn_to_mont_fixed_top:
.LFB166:
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
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	bn_to_mont_fixed_top, .-bn_to_mont_fixed_top
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_mont.c"
	.text
	.globl	BN_MONT_CTX_new
	.type	BN_MONT_CTX_new, @function
BN_MONT_CTX_new:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$232, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_init@PLT
	movq	-8(%rbp), %rax
	movl	$1, 96(%rax)
	movq	-8(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BN_MONT_CTX_new, .-BN_MONT_CTX_new
	.globl	BN_MONT_CTX_init
	.type	BN_MONT_CTX_init, @function
BN_MONT_CTX_init:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	bn_init@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	bn_init@PLT
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	bn_init@PLT
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BN_MONT_CTX_init, .-BN_MONT_CTX_init
	.globl	BN_MONT_CTX_free
	.type	BN_MONT_CTX_free, @function
BN_MONT_CTX_free:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L45
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L42
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$258, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L42
.L45:
	nop
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	BN_MONT_CTX_free, .-BN_MONT_CTX_free
	.globl	BN_MONT_CTX_set
	.type	BN_MONT_CTX_set, @function
BN_MONT_CTX_set:
.LFB170:
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
	movl	$0, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L47
	movl	$0, %eax
	jmp	.L48
.L47:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L69
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L70
	movq	-80(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L52
	movq	-72(%rbp), %rax
	addq	$32, %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L52:
	movq	-72(%rbp), %rax
	movl	$0, 48(%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	bn_init@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$2, -36(%rbp)
	movl	$0, -32(%rbp)
	movq	-80(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L53
	leaq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L53:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$63, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	sall	$6, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-24(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L71
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L56
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	jmp	.L57
.L56:
	movq	-88(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L72
.L57:
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	je	.L73
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	jne	.L60
	jmp	.L50
.L59:
	movq	-16(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L74
.L60:
	movq	-88(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L75
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L62
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	jmp	.L63
.L62:
	movl	$0, %eax
.L63:
	movq	-72(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-72(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	leal	(%rax,%rax), %edx
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L76
	movq	-72(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	-88(%rbp), %rsi
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L77
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-72(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L67
.L68:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -4(%rbp)
.L67:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L68
	movq	-72(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-72(%rbp), %rax
	movl	28(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 28(%rax)
	movl	$1, -8(%rbp)
	jmp	.L50
.L69:
	nop
	jmp	.L50
.L70:
	nop
	jmp	.L50
.L71:
	nop
	jmp	.L50
.L72:
	nop
	jmp	.L50
.L73:
	nop
	jmp	.L50
.L74:
	nop
	jmp	.L50
.L75:
	nop
	jmp	.L50
.L76:
	nop
	jmp	.L50
.L77:
	nop
.L50:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-8(%rbp), %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	BN_MONT_CTX_set, .-BN_MONT_CTX_set
	.globl	BN_MONT_CTX_copy
	.type	BN_MONT_CTX_copy, @function
BN_MONT_CTX_copy:
.LFB171:
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
	cmpq	-16(%rbp), %rax
	jne	.L79
	movq	-8(%rbp), %rax
	jmp	.L80
.L79:
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L81
	movl	$0, %eax
	jmp	.L80
.L81:
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L82
	movl	$0, %eax
	jmp	.L80
.L82:
	movq	-16(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L83
	movl	$0, %eax
	jmp	.L80
.L83:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BN_MONT_CTX_copy, .-BN_MONT_CTX_copy
	.globl	BN_MONT_CTX_set_locked
	.type	BN_MONT_CTX_set_locked, @function
BN_MONT_CTX_set_locked:
.LFB172:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L86
.L85:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -8(%rbp)
	je	.L87
	movq	-8(%rbp), %rax
	jmp	.L86
.L87:
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L86
.L88:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	jne	.L89
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movl	$0, %eax
	jmp	.L86
.L89:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L90
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movl	$0, %eax
	jmp	.L86
.L90:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L91
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L92
.L91:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L92:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	BN_MONT_CTX_set_locked, .-BN_MONT_CTX_set_locked
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
