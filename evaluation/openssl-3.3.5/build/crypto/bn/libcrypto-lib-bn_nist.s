	.file	"bn_nist.c"
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
	.section	.rodata
	.align 32
	.type	_nist_p_192, @object
	.size	_nist_p_192, 72
_nist_p_192:
	.quad	-1
	.quad	-2
	.quad	-1
	.quad	-2
	.quad	-3
	.quad	-1
	.quad	-3
	.quad	-4
	.quad	-1
	.align 32
	.type	_nist_p_192_sqr, @object
	.size	_nist_p_192_sqr, 48
_nist_p_192_sqr:
	.quad	1
	.quad	2
	.quad	1
	.quad	-2
	.quad	-3
	.quad	-1
	.align 32
	.type	_nist_p_224, @object
	.size	_nist_p_224, 64
_nist_p_224:
	.quad	1
	.quad	-4294967296
	.quad	-1
	.quad	4294967295
	.quad	2
	.quad	-8589934592
	.quad	-1
	.quad	8589934591
	.align 32
	.type	_nist_p_224_sqr, @object
	.size	_nist_p_224_sqr, 56
_nist_p_224_sqr:
	.quad	1
	.quad	-8589934592
	.quad	-1
	.quad	8589934592
	.quad	0
	.quad	-2
	.quad	-1
	.align 32
	.type	_nist_p_256, @object
	.size	_nist_p_256, 160
_nist_p_256:
	.quad	-1
	.quad	4294967295
	.quad	0
	.quad	-4294967295
	.quad	-2
	.quad	8589934591
	.quad	0
	.quad	-8589934590
	.quad	-3
	.quad	12884901887
	.quad	0
	.quad	-12884901885
	.quad	-4
	.quad	17179869183
	.quad	0
	.quad	-17179869180
	.quad	-5
	.quad	21474836479
	.quad	0
	.quad	-21474836475
	.align 32
	.type	_nist_p_256_sqr, @object
	.size	_nist_p_256_sqr, 64
_nist_p_256_sqr:
	.quad	1
	.quad	-8589934592
	.quad	-1
	.quad	8589934590
	.quad	8589934590
	.quad	8589934590
	.quad	-8589934591
	.quad	-8589934590
	.align 32
	.type	_nist_p_384, @object
	.size	_nist_p_384, 240
_nist_p_384:
	.quad	4294967295
	.quad	-4294967296
	.quad	-2
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	8589934590
	.quad	-8589934592
	.quad	-3
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	12884901885
	.quad	-12884901888
	.quad	-4
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	17179869180
	.quad	-17179869184
	.quad	-5
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	21474836475
	.quad	-21474836480
	.quad	-6
	.quad	-1
	.quad	-1
	.quad	-1
	.align 32
	.type	_nist_p_384_sqr, @object
	.size	_nist_p_384_sqr, 96
_nist_p_384_sqr:
	.quad	-8589934591
	.quad	8589934592
	.quad	-8589934592
	.quad	8589934592
	.quad	1
	.quad	0
	.quad	8589934590
	.quad	-8589934592
	.quad	-3
	.quad	-1
	.quad	-1
	.quad	-1
	.align 32
	.type	_nist_p_521, @object
	.size	_nist_p_521, 72
_nist_p_521:
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	511
	.align 32
	.type	_nist_p_521_sqr, @object
	.size	_nist_p_521_sqr, 136
_nist_p_521_sqr:
	.quad	1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	-1024
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	-1
	.quad	262143
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	ossl_bignum_nist_p_192, @object
	.size	ossl_bignum_nist_p_192, 24
ossl_bignum_nist_p_192:
	.quad	_nist_p_192
	.long	3
	.long	3
	.long	0
	.long	2
	.align 16
	.type	ossl_bignum_nist_p_224, @object
	.size	ossl_bignum_nist_p_224, 24
ossl_bignum_nist_p_224:
	.quad	_nist_p_224
	.long	4
	.long	4
	.long	0
	.long	2
	.align 16
	.type	ossl_bignum_nist_p_256, @object
	.size	ossl_bignum_nist_p_256, 24
ossl_bignum_nist_p_256:
	.quad	_nist_p_256
	.long	4
	.long	4
	.long	0
	.long	2
	.align 16
	.type	ossl_bignum_nist_p_384, @object
	.size	ossl_bignum_nist_p_384, 24
ossl_bignum_nist_p_384:
	.quad	_nist_p_384
	.long	6
	.long	6
	.long	0
	.long	2
	.align 16
	.type	ossl_bignum_nist_p_521, @object
	.size	ossl_bignum_nist_p_521, 24
ossl_bignum_nist_p_521:
	.quad	_nist_p_521
	.long	9
	.long	9
	.long	0
	.long	2
	.text
	.globl	BN_get0_nist_prime_192
	.type	BN_get0_nist_prime_192, @function
BN_get0_nist_prime_192:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ossl_bignum_nist_p_192(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_get0_nist_prime_192, .-BN_get0_nist_prime_192
	.globl	BN_get0_nist_prime_224
	.type	BN_get0_nist_prime_224, @function
BN_get0_nist_prime_224:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ossl_bignum_nist_p_224(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_get0_nist_prime_224, .-BN_get0_nist_prime_224
	.globl	BN_get0_nist_prime_256
	.type	BN_get0_nist_prime_256, @function
BN_get0_nist_prime_256:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ossl_bignum_nist_p_256(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_get0_nist_prime_256, .-BN_get0_nist_prime_256
	.globl	BN_get0_nist_prime_384
	.type	BN_get0_nist_prime_384, @function
BN_get0_nist_prime_384:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ossl_bignum_nist_p_384(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_get0_nist_prime_384, .-BN_get0_nist_prime_384
	.globl	BN_get0_nist_prime_521
	.type	BN_get0_nist_prime_521, @function
BN_get0_nist_prime_521:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ossl_bignum_nist_p_521(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_get0_nist_prime_521, .-BN_get0_nist_prime_521
	.type	nist_cp_bn, @function
nist_cp_bn:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L16
.L17:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
.L16:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L17
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	nist_cp_bn, .-nist_cp_bn
	.type	load_u32, @function
load_u32:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	load_u32, .-load_u32
	.type	store_lo32, @function
store_lo32:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	store_lo32, .-store_lo32
	.globl	BN_nist_mod_192
	.type	BN_nist_mod_192, @function
BN_nist_mod_192:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %r12
	leaq	ossl_bignum_nist_p_192(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L22
	leaq	ossl_bignum_nist_p_192_sqr.4(%rip), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L23
.L22:
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	jmp	.L42
.L23:
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L25
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L42
.L25:
	cmpl	$0, -44(%rbp)
	jle	.L26
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	je	.L27
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L28
.L27:
	movl	$1, %eax
	jmp	.L42
.L28:
	movl	$0, %eax
	jmp	.L42
.L26:
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	je	.L30
	movq	-152(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L31
	movl	$0, %eax
	jmp	.L42
.L31:
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movl	$3, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	nist_cp_bn
	jmp	.L32
.L30:
	movq	%r12, %rbx
.L32:
	leaq	24(%r12), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L33
.L34:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	movq	%rdx, -112(%rbp,%rax,8)
	addl	$1, -36(%rbp)
.L33:
	movl	-40(%rbp), %eax
	subl	$3, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L34
	jmp	.L35
.L36:
	movl	-36(%rbp), %eax
	cltq
	movq	$0, -112(%rbp,%rax,8)
	addl	$1, -36(%rbp)
.L35:
	cmpl	$2, -36(%rbp)
	jle	.L36
	movq	%rbx, -64(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_lo32
	sarq	$32, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	leaq	12(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	movq	-80(%rbp), %rax
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L37
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	_nist_p_192(%rip), %rdx
	addq	%rdx, %rax
	movl	$3, %ecx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	bn_sub_words@PLT
	movl	%eax, -20(%rbp)
	jmp	.L38
.L37:
	movl	$1, -20(%rbp)
.L38:
	leaq	_nist_p_192(%rip), %rdx
	leaq	-144(%rbp), %rax
	movl	$3, %ecx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	testq	%rax, %rax
	je	.L39
	cmpl	$0, -20(%rbp)
	jne	.L40
.L39:
	leaq	-144(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L41
.L40:
	movq	%rbx, -32(%rbp)
.L41:
	movq	-32(%rbp), %rax
	movl	$3, %edx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	nist_cp_bn
	movq	-152(%rbp), %rax
	movl	$3, 8(%rax)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, %eax
.L42:
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	BN_nist_mod_192, .-BN_nist_mod_192
	.globl	BN_nist_mod_224
	.type	BN_nist_mod_224, @function
BN_nist_mod_224:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	-176(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	ossl_bignum_nist_p_224(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L44
	leaq	ossl_bignum_nist_p_224_sqr.3(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L45
.L44:
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	jmp	.L66
.L45:
	movq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L47
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L66
.L47:
	cmpl	$0, -52(%rbp)
	jle	.L48
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.L49
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L50
.L49:
	movl	$1, %eax
	jmp	.L66
.L50:
	movl	$0, %eax
	jmp	.L66
.L48:
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.L52
	movq	-168(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L53
	movl	$0, %eax
	jmp	.L66
.L53:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	nist_cp_bn
	jmp	.L54
.L52:
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
.L54:
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -64(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L55
.L56:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	movq	%rdx, -128(%rbp,%rax,8)
	addl	$1, -36(%rbp)
.L55:
	movl	-40(%rbp), %eax
	subl	$3, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L56
	jmp	.L57
.L58:
	movl	-36(%rbp), %eax
	cltq
	movq	$0, -128(%rbp,%rax,8)
	addl	$1, -36(%rbp)
.L57:
	cmpl	$3, -36(%rbp)
	jle	.L58
	movq	-128(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-120(%rbp), %rdx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-112(%rbp), %rdx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %rdx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movl	%edx, %edx
	movq	%rdx, (%rax)
	movq	$0, -160(%rbp)
	movq	-160(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-96(%rbp), %rdx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-96(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-88(%rbp), %rdx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, -136(%rbp)
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	bn_add_words@PLT
	movl	%eax, -4(%rbp)
	movq	$0, -160(%rbp)
	movq	-160(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-80(%rbp), %rdx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-72(%rbp), %rdx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	$0, -136(%rbp)
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	bn_add_words@PLT
	addl	%eax, -4(%rbp)
	movq	-96(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-96(%rbp), %rdx
	movabsq	$-4294967296, %rcx
	andq	%rcx, %rdx
	orq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-88(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	-88(%rbp), %rdx
	movabsq	$-4294967296, %rcx
	andq	%rcx, %rdx
	orq	%rdx, %rax
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-80(%rbp), %rdx
	movabsq	$-4294967296, %rcx
	andq	%rcx, %rdx
	orq	%rdx, %rax
	movq	%rax, -144(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -136(%rbp)
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	subl	%eax, -4(%rbp)
	movq	-80(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	-80(%rbp), %rdx
	movabsq	$-4294967296, %rcx
	andq	%rcx, %rdx
	orq	%rdx, %rax
	movq	%rax, -160(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	-144(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -144(%rbp)
	movq	$0, -136(%rbp)
	leaq	-160(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	subl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	shrq	$32, %rax
	movl	%eax, -4(%rbp)
	movq	bn_sub_words@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L59
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	_nist_p_224(%rip), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	shrq	$32, %rax
	notl	%eax
	andl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L60
.L59:
	cmpl	$0, -4(%rbp)
	jns	.L61
	movl	-4(%rbp), %eax
	notl	%eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	_nist_p_224(%rip), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	bn_add_words@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L62
	movq	bn_sub_words@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L60
.L62:
	movq	bn_add_words@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L60
.L61:
	movl	$1, -4(%rbp)
.L60:
	leaq	_nist_p_224(%rip), %rdx
	movq	-16(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	-32(%rbp), %r8
	movl	$4, %ecx
	movq	%rax, %rdi
	call	*%r8
	testq	%rax, %rax
	je	.L63
	cmpl	$0, -4(%rbp)
	jne	.L64
.L63:
	leaq	-128(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L65
.L64:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L65:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	nist_cp_bn
	movq	-168(%rbp), %rax
	movl	$4, 8(%rax)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	BN_nist_mod_224, .-BN_nist_mod_224
	.globl	BN_nist_mod_256
	.type	BN_nist_mod_256, @function
BN_nist_mod_256:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	-176(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-176(%rbp), %rax
	movq	(%rax), %r12
	leaq	ossl_bignum_nist_p_256(%rip), %rax
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L68
	leaq	ossl_bignum_nist_p_256_sqr.2(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L69
.L68:
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	jmp	.L90
.L69:
	movq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L71
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L90
.L71:
	cmpl	$0, -52(%rbp)
	jle	.L72
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.L73
	movq	-176(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L74
.L73:
	movl	$1, %eax
	jmp	.L90
.L74:
	movl	$0, %eax
	jmp	.L90
.L72:
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.L76
	movq	-168(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L77
	movl	$0, %eax
	jmp	.L90
.L77:
	movq	-168(%rbp), %rax
	movq	(%rax), %rbx
	movl	$4, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	nist_cp_bn
	jmp	.L78
.L76:
	movq	%r12, %rbx
.L78:
	leaq	32(%r12), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L79
.L80:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	movq	%rdx, -128(%rbp,%rax,8)
	addl	$1, -44(%rbp)
.L79:
	movl	-48(%rbp), %eax
	subl	$4, %eax
	cmpl	%eax, -44(%rbp)
	jl	.L80
	jmp	.L81
.L82:
	movl	-44(%rbp), %eax
	cltq
	movq	$0, -128(%rbp,%rax,8)
	addl	$1, -44(%rbp)
.L81:
	cmpl	$3, -44(%rbp)
	jle	.L82
	movq	%rbx, -72(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	12(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	movq	-88(%rbp), %rax
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movq	bn_sub_words@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L83
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	_nist_p_256(%rip), %rax
	addq	%rdx, %rax
	movl	$4, %ecx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	bn_sub_words@PLT
	movl	%eax, -20(%rbp)
	jmp	.L84
.L83:
	cmpl	$0, -20(%rbp)
	jns	.L85
	movl	-20(%rbp), %eax
	notl	%eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	_nist_p_256(%rip), %rax
	addq	%rdx, %rax
	movl	$4, %ecx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	bn_add_words@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L86
	movq	bn_sub_words@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L84
.L86:
	movq	bn_add_words@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L84
.L85:
	movl	$1, -20(%rbp)
.L84:
	leaq	_nist_p_256(%rip), %rdx
	leaq	-160(%rbp), %rax
	movq	-40(%rbp), %r8
	movl	$4, %ecx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testq	%rax, %rax
	je	.L87
	cmpl	$0, -20(%rbp)
	jne	.L88
.L87:
	leaq	-160(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L89
.L88:
	movq	%rbx, -32(%rbp)
.L89:
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	nist_cp_bn
	movq	-168(%rbp), %rax
	movl	$4, 8(%rax)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, %eax
.L90:
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BN_nist_mod_256, .-BN_nist_mod_256
	.globl	BN_nist_mod_384
	.type	BN_nist_mod_384, @function
BN_nist_mod_384:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	-208(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %r12
	leaq	ossl_bignum_nist_p_384(%rip), %rax
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L92
	leaq	ossl_bignum_nist_p_384_sqr.1(%rip), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L93
.L92:
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	jmp	.L114
.L93:
	movq	-208(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L95
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L114
.L95:
	cmpl	$0, -52(%rbp)
	jle	.L96
	movq	-200(%rbp), %rax
	cmpq	-208(%rbp), %rax
	je	.L97
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L98
.L97:
	movl	$1, %eax
	jmp	.L114
.L98:
	movl	$0, %eax
	jmp	.L114
.L96:
	movq	-200(%rbp), %rax
	cmpq	-208(%rbp), %rax
	je	.L100
	movq	-200(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L101
	movl	$0, %eax
	jmp	.L114
.L101:
	movq	-200(%rbp), %rax
	movq	(%rax), %rbx
	movl	$6, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	nist_cp_bn
	jmp	.L102
.L100:
	movq	%r12, %rbx
.L102:
	leaq	48(%r12), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L103
.L104:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	movq	%rdx, -144(%rbp,%rax,8)
	addl	$1, -44(%rbp)
.L103:
	movl	-48(%rbp), %eax
	subl	$6, %eax
	cmpl	%eax, -44(%rbp)
	jl	.L104
	jmp	.L105
.L106:
	movl	-44(%rbp), %eax
	cltq
	movq	$0, -144(%rbp,%rax,8)
	addl	$1, -44(%rbp)
.L105:
	cmpl	$5, -44(%rbp)
	jle	.L106
	movq	%rbx, -72(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	12(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$28, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$12, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$36, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$20, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	36(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$36, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	sarq	$32, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	$44, %rax
	movq	%rax, %rdi
	call	load_u32
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$44, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$28, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$40, %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	subq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	44(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	store_lo32
	movq	-88(%rbp), %rax
	sarq	$32, %rax
	movl	%eax, -20(%rbp)
	movq	bn_sub_words@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L107
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	_nist_p_384(%rip), %rdx
	addq	%rdx, %rax
	movl	$6, %ecx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	bn_sub_words@PLT
	movl	%eax, -20(%rbp)
	jmp	.L108
.L107:
	cmpl	$0, -20(%rbp)
	jns	.L109
	movl	-20(%rbp), %eax
	notl	%eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	_nist_p_384(%rip), %rdx
	addq	%rdx, %rax
	movl	$6, %ecx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	bn_add_words@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L110
	movq	bn_sub_words@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L108
.L110:
	movq	bn_add_words@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L108
.L109:
	movl	$1, -20(%rbp)
.L108:
	leaq	_nist_p_384(%rip), %rdx
	leaq	-192(%rbp), %rax
	movq	-40(%rbp), %r8
	movl	$6, %ecx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testq	%rax, %rax
	je	.L111
	cmpl	$0, -20(%rbp)
	jne	.L112
.L111:
	leaq	-192(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L113
.L112:
	movq	%rbx, -32(%rbp)
.L113:
	movq	-32(%rbp), %rax
	movl	$6, %edx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	nist_cp_bn
	movq	-200(%rbp), %rax
	movl	$6, 8(%rax)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, %eax
.L114:
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	BN_nist_mod_384, .-BN_nist_mod_384
	.globl	BN_nist_mod_521
	.type	BN_nist_mod_521, @function
BN_nist_mod_521:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -40(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	ossl_bignum_nist_p_521(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L116
	leaq	ossl_bignum_nist_p_521_sqr.0(%rip), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L117
.L116:
	movq	-176(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	jmp	.L135
.L117:
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L119
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L135
.L119:
	cmpl	$0, -4(%rbp)
	jle	.L120
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	je	.L121
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L122
.L121:
	movl	$1, %eax
	jmp	.L135
.L122:
	movl	$0, %eax
	jmp	.L135
.L120:
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	je	.L124
	movq	-152(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L125
	movl	$0, %eax
	jmp	.L135
.L125:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	nist_cp_bn
	jmp	.L126
.L124:
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
.L126:
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -56(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L127
.L128:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	movq	%rdx, -144(%rbp,%rax,8)
	addl	$1, -36(%rbp)
.L127:
	movl	-40(%rbp), %eax
	subl	$8, %eax
	cmpl	%eax, -36(%rbp)
	jl	.L128
	jmp	.L129
.L130:
	movl	-36(%rbp), %eax
	cltq
	movq	$0, -144(%rbp,%rax,8)
	addl	$1, -36(%rbp)
.L129:
	cmpl	$8, -36(%rbp)
	jle	.L130
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L131
.L132:
	movq	-24(%rbp), %rax
	shrq	$9, %rax
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	salq	$55, %rax
	orq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, -144(%rbp,%rax,8)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	addl	$1, -4(%rbp)
.L131:
	cmpl	$7, -4(%rbp)
	jle	.L132
	movq	-24(%rbp), %rax
	shrq	$9, %rax
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movq	%rdx, -144(%rbp,%rax,8)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	andl	$511, %edx
	movq	%rdx, (%rax)
	leaq	-144(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$9, %ecx
	movq	%rax, %rdi
	call	bn_add_words@PLT
	leaq	_nist_p_521(%rip), %rdx
	movq	-16(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movl	$9, %ecx
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	testq	%rax, %rax
	jne	.L133
	leaq	-144(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L134
.L133:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.L134:
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	nist_cp_bn
	movq	-152(%rbp), %rax
	movl	$9, 8(%rax)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, %eax
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	BN_nist_mod_521, .-BN_nist_mod_521
	.globl	BN_nist_mod_func
	.type	BN_nist_mod_func, @function
BN_nist_mod_func:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	ossl_bignum_nist_p_192(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L137
	movq	BN_nist_mod_192@GOTPCREL(%rip), %rax
	jmp	.L138
.L137:
	movq	-8(%rbp), %rax
	leaq	ossl_bignum_nist_p_224(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L139
	movq	BN_nist_mod_224@GOTPCREL(%rip), %rax
	jmp	.L138
.L139:
	movq	-8(%rbp), %rax
	leaq	ossl_bignum_nist_p_256(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L140
	movq	BN_nist_mod_256@GOTPCREL(%rip), %rax
	jmp	.L138
.L140:
	movq	-8(%rbp), %rax
	leaq	ossl_bignum_nist_p_384(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L141
	movq	BN_nist_mod_384@GOTPCREL(%rip), %rax
	jmp	.L138
.L141:
	movq	-8(%rbp), %rax
	leaq	ossl_bignum_nist_p_521(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jne	.L142
	movq	BN_nist_mod_521@GOTPCREL(%rip), %rax
	jmp	.L138
.L142:
	movl	$0, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	BN_nist_mod_func, .-BN_nist_mod_func
	.section	.data.rel.ro.local
	.align 16
	.type	ossl_bignum_nist_p_192_sqr.4, @object
	.size	ossl_bignum_nist_p_192_sqr.4, 24
ossl_bignum_nist_p_192_sqr.4:
	.quad	_nist_p_192_sqr
	.long	6
	.long	6
	.long	0
	.long	2
	.align 16
	.type	ossl_bignum_nist_p_224_sqr.3, @object
	.size	ossl_bignum_nist_p_224_sqr.3, 24
ossl_bignum_nist_p_224_sqr.3:
	.quad	_nist_p_224_sqr
	.long	7
	.long	7
	.long	0
	.long	2
	.align 16
	.type	ossl_bignum_nist_p_256_sqr.2, @object
	.size	ossl_bignum_nist_p_256_sqr.2, 24
ossl_bignum_nist_p_256_sqr.2:
	.quad	_nist_p_256_sqr
	.long	8
	.long	8
	.long	0
	.long	2
	.align 16
	.type	ossl_bignum_nist_p_384_sqr.1, @object
	.size	ossl_bignum_nist_p_384_sqr.1, 24
ossl_bignum_nist_p_384_sqr.1:
	.quad	_nist_p_384_sqr
	.long	12
	.long	12
	.long	0
	.long	2
	.align 16
	.type	ossl_bignum_nist_p_521_sqr.0, @object
	.size	ossl_bignum_nist_p_521_sqr.0, 24
ossl_bignum_nist_p_521_sqr.0:
	.quad	_nist_p_521_sqr
	.long	17
	.long	17
	.long	0
	.long	2
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
