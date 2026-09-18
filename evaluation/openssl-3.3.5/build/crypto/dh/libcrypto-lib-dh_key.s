	.file	"dh_key.c"
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
	.string	"../crypto/dh/dh_key.c"
	.text
	.globl	ossl_dh_compute_key
	.type	ossl_dh_compute_key, @function
ossl_dh_compute_key:
.LFB407:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$10000, %eax
	jle	.L6
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L6:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$10000, %eax
	jle	.L8
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L8:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$511, %eax
	jg	.L9
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L19
	movq	-72(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L13
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$73, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L13:
	movq	-72(%rbp), %rax
	movl	128(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L14
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	192(%rax), %rax
	movq	-72(%rbp), %rcx
	leaq	136(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	call	BN_MONT_CTX_set_locked@PLT
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	cmpq	$0, -16(%rbp)
	je	.L20
.L14:
	movq	-72(%rbp), %rax
	movq	184(%rax), %rax
	movq	24(%rax), %r10
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-8(%rbp), %r8
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L15:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L16
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L16
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L16
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L17
.L16:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L17:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, -28(%rbp)
	jmp	.L7
.L18:
	nop
	jmp	.L7
.L19:
	nop
	jmp	.L7
.L20:
	nop
.L7:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-28(%rbp), %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_dh_compute_key, .-ossl_dh_compute_key
	.globl	DH_compute_key
	.type	DH_compute_key, @function
DH_compute_key:
.LFB408:
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
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$1, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	184(%rax), %rax
	movq	16(%rax), %r8
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L22
	movl	-8(%rbp), %eax
	jmp	.L23
.L22:
	movl	$0, -4(%rbp)
	jmp	.L24
.L25:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	andq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	addl	$1, -4(%rbp)
.L24:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L25
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movl	-8(%rbp), %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	DH_compute_key, .-DH_compute_key
	.globl	DH_compute_key_padded
	.type	DH_compute_key_padded, @function
DH_compute_key_padded:
.LFB409:
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
	movq	184(%rax), %rax
	movq	16(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L27
	movl	-4(%rbp), %eax
	jmp	.L28
.L27:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	subl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L29
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L29:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	DH_compute_key_padded, .-DH_compute_key_padded
	.section	.rodata
.LC1:
	.string	"OpenSSL DH Method"
	.section	.data.rel,"aw"
	.align 32
	.type	dh_ossl, @object
	.size	dh_ossl, 72
dh_ossl:
	.quad	.LC1
	.quad	generate_key
	.quad	ossl_dh_compute_key
	.quad	dh_bn_mod_exp
	.quad	dh_init
	.quad	dh_finish
	.long	1024
	.zero	4
	.quad	0
	.quad	0
	.section	.data.rel.local,"aw"
	.align 8
	.type	default_DH_method, @object
	.size	default_DH_method, 8
default_DH_method:
	.quad	dh_ossl
	.text
	.globl	DH_OpenSSL
	.type	DH_OpenSSL, @function
DH_OpenSSL:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dh_ossl(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	DH_OpenSSL, .-DH_OpenSSL
	.globl	DH_get_default_method
	.type	DH_get_default_method, @function
DH_get_default_method:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	default_DH_method(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	DH_get_default_method, .-DH_get_default_method
	.type	dh_bn_mod_exp, @function
dh_bn_mod_exp:
.LFB412:
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
	movq	%r9, -48(%rbp)
	movq	16(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	dh_bn_mod_exp, .-dh_bn_mod_exp
	.type	dh_init, @function
dh_init:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 128(%rax)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 200(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	dh_init, .-dh_init
	.type	dh_finish, @function
dh_finish:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	dh_finish, .-dh_finish
	.globl	DH_set_default_method
	.type	DH_set_default_method, @function
DH_set_default_method:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, default_DH_method(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	DH_set_default_method, .-DH_set_default_method
	.globl	DH_generate_key
	.type	DH_generate_key, @function
DH_generate_key:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	DH_generate_key, .-DH_generate_key
	.globl	ossl_dh_generate_public_key
	.type	ossl_dh_generate_public_key, @function
ossl_dh_generate_public_key:
.LFB417:
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
	movl	$0, -4(%rbp)
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-48(%rbp), %rax
	movl	128(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L46
	movq	-48(%rbp), %rax
	addq	$136, %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	192(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_set_locked@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L49
.L46:
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-48(%rbp), %rax
	movq	184(%rax), %rax
	movq	24(%rax), %r10
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L50
	movl	$1, -4(%rbp)
	jmp	.L47
.L49:
	nop
	jmp	.L47
.L50:
	nop
.L47:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	-4(%rbp), %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ossl_dh_generate_public_key, .-ossl_dh_generate_public_key
	.type	generate_key, @function
generate_key:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$10000, %eax
	jle	.L52
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$276, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$10000, %eax
	jle	.L54
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$282, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L54:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$511, %eax
	jg	.L55
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$287, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L55:
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L76
	movq	-72(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	call	BN_secure_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L77
	movl	$1, -24(%rbp)
	jmp	.L60
.L58:
	movq	-72(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
.L60:
	movq	-72(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L61
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L62
	jmp	.L57
.L61:
	movq	-72(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -40(%rbp)
.L62:
	cmpl	$0, -24(%rbp)
	je	.L63
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_nid@PLT
	testl	%eax, %eax
	je	.L64
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %edi
	call	ossl_ifc_ffc_compute_security_bits@PLT
	movzwl	%ax, %eax
	movl	%eax, -60(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	-72(%rbp), %rax
	movl	104(%rax), %ebx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, %ebx
	jg	.L78
	movq	-72(%rbp), %rax
	movl	104(%rax), %edx
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-48(%rbp), %rdi
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ffc_generate_private_key@PLT
	testl	%eax, %eax
	jne	.L63
	jmp	.L57
.L64:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -28(%rbp)
	movq	-72(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L79
	subl	$2, -28(%rbp)
	movq	-72(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L69
	movq	-72(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L69
	movq	-72(%rbp), %rax
	movl	104(%rax), %eax
	movl	%eax, -28(%rbp)
.L69:
	movq	-56(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	je	.L80
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_is_word@PLT
	testl	%eax, %eax
	je	.L63
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	testl	%eax, %eax
	jne	.L63
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_clear_bit@PLT
	testl	%eax, %eax
	jne	.L63
	jmp	.L57
.L67:
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_simple_validate@PLT
	testl	%eax, %eax
	je	.L81
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rsi
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	ossl_ffc_generate_private_key@PLT
	testl	%eax, %eax
	je	.L82
.L63:
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_generate_public_key@PLT
	testl	%eax, %eax
	je	.L83
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 120(%rax)
	movq	-72(%rbp), %rax
	movq	200(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 200(%rax)
	movl	$1, -20(%rbp)
	jmp	.L57
.L76:
	nop
	jmp	.L57
.L77:
	nop
	jmp	.L57
.L78:
	nop
	jmp	.L57
.L79:
	nop
	jmp	.L57
.L80:
	nop
	jmp	.L57
.L81:
	nop
	jmp	.L57
.L82:
	nop
	jmp	.L57
.L83:
	nop
.L57:
	cmpl	$1, -20(%rbp)
	je	.L73
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$380, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L73:
	movq	-72(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L74
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L74:
	movq	-72(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	%rax, -48(%rbp)
	je	.L75
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L75:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
.L53:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	generate_key, .-generate_key
	.globl	ossl_dh_buf2key
	.type	ossl_dh_buf2key, @function
ossl_dh_buf2key:
.LFB419:
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
	movl	$106, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L93
	leaq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	DH_get0_pqg@PLT
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L87
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	testl	%eax, %eax
	jne	.L88
.L87:
	movl	$107, -4(%rbp)
	jmp	.L86
.L88:
	leaq	-28(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_check_pub_key_partial@PLT
	testl	%eax, %eax
	jne	.L89
	movl	$102, -4(%rbp)
	jmp	.L86
.L89:
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_set0_key@PLT
	cmpl	$1, %eax
	jne	.L94
	movl	$1, %eax
	jmp	.L92
.L93:
	nop
	jmp	.L86
.L94:
	nop
.L86:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$413, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ossl_dh_buf2key, .-ossl_dh_buf2key
	.globl	ossl_dh_key2buf
	.type	ossl_dh_key2buf, @function
ossl_dh_key2buf:
.LFB420:
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
	movl	%ecx, -60(%rbp)
	movq	$0, -8(%rbp)
	leaq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	DH_get0_pqg@PLT
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_get0_key@PLT
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L96
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L96
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L96
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	testl	%eax, %eax
	jne	.L97
.L96:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$431, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L107
.L97:
	cmpq	$0, -48(%rbp)
	je	.L99
	cmpl	$0, -60(%rbp)
	jne	.L100
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L99
.L100:
	cmpl	$0, -60(%rbp)
	jne	.L101
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, -56(%rbp)
	jb	.L102
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L102:
	cmpq	$0, -8(%rbp)
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$439, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L103
.L101:
	movl	-12(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$441, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
.L103:
	cmpq	$0, -8(%rbp)
	jne	.L104
	movl	$0, %eax
	jmp	.L107
.L104:
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	jns	.L105
	cmpl	$0, -60(%rbp)
	je	.L106
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$453, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L106:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$454, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L107
.L105:
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L99:
	movl	-12(%rbp), %eax
	cltq
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	ossl_dh_key2buf, .-ossl_dh_key2buf
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 20
__func__.3:
	.string	"ossl_dh_compute_key"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 13
__func__.2:
	.string	"generate_key"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"ossl_dh_buf2key"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"ossl_dh_key2buf"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
