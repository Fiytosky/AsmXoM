	.file	"bn_rand.c"
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
.LC0:
	.string	"../crypto/bn/bn_rand.c"
	.text
	.type	bnrand, @function
bnrand:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -8(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_bn_get_libctx@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.L6
	cmpl	$-1, -68(%rbp)
	jne	.L30
	cmpl	$0, -72(%rbp)
	jne	.L30
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L10
.L6:
	cmpl	$0, -56(%rbp)
	js	.L31
	cmpl	$1, -56(%rbp)
	jne	.L12
	cmpl	$0, -68(%rbp)
	jg	.L31
.L12:
	movl	-56(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -36(%rbp)
	movl	-56(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, -40(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	$255, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$43, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L32
	cmpl	$0, -52(%rbp)
	jne	.L15
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-76(%rbp), %ecx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	movl	%eax, -4(%rbp)
	jmp	.L16
.L15:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-76(%rbp), %ecx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	movl	%eax, -4(%rbp)
.L16:
	cmpl	$0, -4(%rbp)
	jle	.L33
	cmpl	$1, -52(%rbp)
	jne	.L18
	movl	$0, -12(%rbp)
	jmp	.L19
.L24:
	movl	-76(%rbp), %edx
	leaq	-45(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L34
	movzbl	-45(%rbp), %eax
	testb	%al, %al
	jns	.L21
	cmpl	$0, -12(%rbp)
	jle	.L21
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	jmp	.L22
.L21:
	movzbl	-45(%rbp), %eax
	cmpb	$41, %al
	ja	.L23
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	jmp	.L22
.L23:
	movzbl	-45(%rbp), %eax
	cmpb	$83, %al
	ja	.L22
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$-1, (%rax)
.L22:
	addl	$1, -12(%rbp)
.L19:
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L24
.L18:
	cmpl	$0, -68(%rbp)
	js	.L25
	cmpl	$0, -68(%rbp)
	je	.L26
	cmpl	$0, -40(%rbp)
	jne	.L27
	movq	-24(%rbp), %rax
	movb	$1, (%rax)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
	jmp	.L25
.L27:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	$3, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%esi, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L25
.L26:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%esi, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
.L25:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	cmpl	$0, -72(%rbp)
	je	.L28
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-36(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	orl	$1, %edx
	movb	%dl, (%rax)
.L28:
	movq	-64(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L35
	movl	$1, -8(%rbp)
	jmp	.L14
.L32:
	nop
	jmp	.L14
.L33:
	nop
	jmp	.L14
.L34:
	nop
	jmp	.L14
.L35:
	nop
.L14:
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$91, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-8(%rbp), %eax
	jmp	.L10
.L30:
	nop
	jmp	.L9
.L31:
	nop
.L9:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$96, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	bnrand, .-bnrand
	.globl	BN_rand_ex
	.type	BN_rand_ex, @function
BN_rand_ex:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movl	%edi, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	bnrand
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	BN_rand_ex, .-BN_rand_ex
	.globl	BN_rand
	.type	BN_rand, @function
BN_rand:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	bnrand
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	BN_rand, .-BN_rand
	.globl	BN_bntest_rand
	.type	BN_bntest_rand, @function
BN_bntest_rand:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$1, %edi
	call	bnrand
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	BN_bntest_rand, .-BN_bntest_rand
	.globl	BN_priv_rand_ex
	.type	BN_priv_rand_ex, @function
BN_priv_rand_ex:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movl	%edi, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$2, %edi
	call	bnrand
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	BN_priv_rand_ex, .-BN_priv_rand_ex
	.globl	BN_priv_rand
	.type	BN_priv_rand, @function
BN_priv_rand:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$2, %edi
	call	bnrand
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	BN_priv_rand, .-BN_priv_rand
	.type	bnrand_range, @function
bnrand_range:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -48(%rbp)
	movl	$100, -4(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L47
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$138, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L47:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L49
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L50
.L49:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$143, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L50:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jne	.L51
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	jmp	.L52
.L51:
	movl	-8(%rbp), %eax
	leal	-2(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	jne	.L61
	movl	-8(%rbp), %eax
	leal	-3(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	jne	.L61
.L58:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	subq	$8, %rsp
	pushq	-48(%rbp)
	movl	%ecx, %r9d
	movl	$0, %r8d
	movl	$-1, %ecx
	movl	%eax, %edi
	call	bnrand
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L48
.L54:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L55
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L56
	movl	$0, %eax
	jmp	.L48
.L56:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L55
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L48
.L55:
	subl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L57:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L58
	jmp	.L52
.L61:
	movl	-24(%rbp), %ecx
	movl	-8(%rbp), %edx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	subq	$8, %rsp
	pushq	-48(%rbp)
	movl	%ecx, %r9d
	movl	$0, %r8d
	movl	$-1, %ecx
	movl	%eax, %edi
	call	bnrand
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L59
	movl	$0, %eax
	jmp	.L48
.L59:
	subl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L60:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L61
.L52:
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	bnrand_range, .-bnrand_range
	.globl	BN_rand_range_ex
	.type	BN_rand_range_ex, @function
BN_rand_range_ex:
.LFB410:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	bnrand_range
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	BN_rand_range_ex, .-BN_rand_range_ex
	.globl	BN_rand_range
	.type	BN_rand_range, @function
BN_rand_range:
.LFB411:
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
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	bnrand_range
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	BN_rand_range, .-BN_rand_range
	.globl	BN_priv_rand_range_ex
	.type	BN_priv_rand_range_ex, @function
BN_priv_rand_range_ex:
.LFB412:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$2, %edi
	call	bnrand_range
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	BN_priv_rand_range_ex, .-BN_priv_rand_range_ex
	.globl	BN_priv_rand_range
	.type	BN_priv_rand_range, @function
BN_priv_rand_range:
.LFB413:
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
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$2, %edi
	call	bnrand_range
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	BN_priv_rand_range, .-BN_priv_rand_range
	.globl	BN_pseudo_rand
	.type	BN_pseudo_rand, @function
BN_pseudo_rand:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_rand@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	BN_pseudo_rand, .-BN_pseudo_rand
	.globl	BN_pseudo_rand_range
	.type	BN_pseudo_rand_range, @function
BN_pseudo_rand_range:
.LFB415:
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
	call	BN_rand_range@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	BN_pseudo_rand_range, .-BN_pseudo_rand_range
	.globl	ossl_bn_priv_rand_range_fixed_top
	.type	ossl_bn_priv_rand_range_fixed_top, @function
ossl_bn_priv_rand_range_fixed_top:
.LFB416:
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
	movq	%rcx, -48(%rbp)
	movl	$100, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L75:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L77
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L78
.L77:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L78:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jne	.L79
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	jmp	.L80
.L79:
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L83:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	movl	%ecx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$2, %edi
	call	bnrand
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L81
	movl	$0, %eax
	jmp	.L76
.L81:
	subl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L82:
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_bn_mask_bits_fixed_top@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L83
.L80:
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ossl_bn_priv_rand_range_fixed_top, .-ossl_bn_priv_rand_range_fixed_top
	.section	.rodata
.LC1:
	.string	"SHA512"
	.text
	.globl	ossl_bn_gen_dsa_nonce_fixed_top
	.type	ossl_bn_gen_dsa_nonce_fixed_top, @function
ossl_bn_gen_dsa_nonce_fixed_top:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movq	%r8, -344(%rbp)
	movq	%r9, -352(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	$0, -16(%rbp)
	movl	$64, -48(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_bn_get_libctx@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L102
	movl	-44(%rbp), %eax
	leaq	.LC0(%rip), %rcx
	movl	$320, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L103
	movq	-16(%rbp), %rax
	movb	$-1, (%rax)
	leaq	-288(%rbp), %rcx
	movq	-328(%rbp), %rax
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	jns	.L88
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L86
.L88:
	leaq	.LC1(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L86
.L89:
	movl	$0, -20(%rbp)
	jmp	.L90
.L100:
	movb	$0, -289(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L91
.L97:
	leaq	-128(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$64, %edx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L104
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L105
	leaq	-289(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L105
	leaq	-288(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L105
	movq	-344(%rbp), %rdx
	movq	-336(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L105
	leaq	-128(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L105
	leaq	-192(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L105
	movl	-44(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$64, -8(%rbp)
	jbe	.L96
	movl	$64, -8(%rbp)
.L96:
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	addq	%rax, %rcx
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
	movzbl	-289(%rbp), %eax
	addl	$1, %eax
	movb	%al, -289(%rbp)
.L91:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jb	.L97
	movl	-44(%rbp), %ecx
	movq	-312(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L106
	movq	-312(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %edx
	movq	-312(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_bn_mask_bits_fixed_top@PLT
	movq	-320(%rbp), %rdx
	movq	-312(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L99
	movl	$1, -24(%rbp)
	jmp	.L86
.L99:
	addl	$1, -20(%rbp)
.L90:
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L100
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$385, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L86
.L102:
	nop
	jmp	.L86
.L103:
	nop
	jmp	.L86
.L104:
	nop
	jmp	.L86
.L105:
	nop
	jmp	.L86
.L106:
	nop
.L86:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-44(%rbp), %esi
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$390, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	-192(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-128(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-288(%rbp), %rax
	movl	$96, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-24(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ossl_bn_gen_dsa_nonce_fixed_top, .-ossl_bn_gen_dsa_nonce_fixed_top
	.globl	BN_generate_dsa_nonce
	.type	BN_generate_dsa_nonce, @function
BN_generate_dsa_nonce:
.LFB418:
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
	movq	%r9, -64(%rbp)
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_bn_gen_dsa_nonce_fixed_top@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	BN_generate_dsa_nonce, .-BN_generate_dsa_nonce
	.section	.rodata
	.type	__func__.3, @object
	.size	__func__.3, 7
__func__.3:
	.string	"bnrand"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 13
__func__.2:
	.string	"bnrand_range"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 34
__func__.1:
	.string	"ossl_bn_priv_rand_range_fixed_top"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 32
__func__.0:
	.string	"ossl_bn_gen_dsa_nonce_fixed_top"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
