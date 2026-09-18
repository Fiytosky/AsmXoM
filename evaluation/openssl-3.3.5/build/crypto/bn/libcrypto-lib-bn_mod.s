	.file	"bn_mod.c"
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
	.string	"../crypto/bn/bn_mod.c"
	.text
	.globl	BN_nnmod
	.type	BN_nnmod, @function
BN_nnmod:
.LFB161:
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
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L6
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$21, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L7
.L8:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L9
	movl	$1, %eax
	jmp	.L7
.L9:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L10
	movq	BN_sub@GOTPCREL(%rip), %rax
	movq	%rax, %r8
	jmp	.L11
.L10:
	movq	BN_add@GOTPCREL(%rip), %rax
	movq	%rax, %r8
.L11:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_nnmod, .-BN_nnmod
	.globl	BN_mod_add
	.type	BN_mod_add, @function
BN_mod_add:
.LFB162:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_mod_add, .-BN_mod_add
	.globl	bn_mod_add_fixed_top
	.type	bn_mod_add_fixed_top, @function
bn_mod_add_fixed_top:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	-256(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-232(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L16
	movl	$0, %eax
	jmp	.L28
.L16:
	cmpq	$16, -64(%rbp)
	jbe	.L18
	movq	-64(%rbp), %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L28
.L18:
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L20
.L19:
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.L20:
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L22
.L21:
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
.L22:
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L23
.L24:
	movq	-240(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	movq	%rax, -32(%rbp)
	movq	-248(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	addq	%rax, -32(%rbp)
	addq	$1, -8(%rbp)
	movq	-240(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rax, -16(%rbp)
	movq	-248(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rax, -24(%rbp)
.L23:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L24
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	bn_sub_words@PLT
	subq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L25
.L26:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-32(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	notq	%rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	andq	%rax, %rsi
	movq	%rsi, %rcx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	orq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	addq	$1, -8(%rbp)
.L25:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L26
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-232(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-232(%rbp), %rax
	movl	20(%rax), %edx
	movq	-232(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-232(%rbp), %rax
	movl	$0, 16(%rax)
	leaq	-224(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	je	.L27
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$97, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L27:
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	bn_mod_add_fixed_top, .-bn_mod_add_fixed_top
	.globl	BN_mod_add_quick
	.type	BN_mod_add_quick, @function
BN_mod_add_quick:
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
	call	bn_mod_add_fixed_top@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L30
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
.L30:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_mod_add_quick, .-BN_mod_add_quick
	.globl	BN_mod_sub
	.type	BN_mod_sub, @function
BN_mod_sub:
.LFB165:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_mod_sub, .-BN_mod_sub
	.globl	bn_mod_sub_fixed_top
	.type	bn_mod_sub_fixed_top, @function
bn_mod_sub_fixed_top:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L39
.L38:
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
.L39:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L41
.L40:
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
.L41:
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L42
.L44:
	movq	-112(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	subq	-96(%rbp), %rax
	movq	-8(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	subq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L43
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	movq	%rax, -32(%rbp)
.L43:
	addq	$1, -8(%rbp)
	movq	-112(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rax, -16(%rbp)
	movq	-120(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rax, -24(%rbp)
.L42:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L44
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	negq	%rax
	movq	%rax, -80(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L45
.L46:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-40(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	addq	%rax, -40(%rbp)
	addq	$1, -8(%rbp)
.L45:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L46
	movq	-40(%rbp), %rax
	subq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	negq	%rax
	movq	%rax, -80(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L47
.L48:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-80(%rbp), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-40(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	-88(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	addq	%rax, -40(%rbp)
	addq	$1, -8(%rbp)
.L47:
	movq	-8(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L48
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movl	20(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-104(%rbp), %rax
	movl	$0, 16(%rax)
	movl	$1, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	bn_mod_sub_fixed_top, .-bn_mod_sub_fixed_top
	.globl	BN_mod_sub_quick
	.type	BN_mod_sub_quick, @function
BN_mod_sub_quick:
.LFB167:
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
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$193, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L51
.L52:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L53
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	jmp	.L51
.L53:
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BN_mod_sub_quick, .-BN_mod_sub_quick
	.globl	BN_mod_mul
	.type	BN_mod_mul, @function
BN_mod_mul:
.LFB168:
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
	je	.L61
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L57
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sqr@PLT
	testl	%eax, %eax
	jne	.L58
	jmp	.L56
.L57:
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L62
.L58:
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L63
	movl	$1, -4(%rbp)
	jmp	.L56
.L61:
	nop
	jmp	.L56
.L62:
	nop
	jmp	.L56
.L63:
	nop
.L56:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BN_mod_mul, .-BN_mod_mul
	.globl	BN_mod_sqr
	.type	BN_mod_sqr, @function
BN_mod_sqr:
.LFB169:
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
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sqr@PLT
	testl	%eax, %eax
	jne	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	BN_mod_sqr, .-BN_mod_sqr
	.globl	BN_mod_lshift1
	.type	BN_mod_lshift1, @function
BN_mod_lshift1:
.LFB170:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	jne	.L68
	movl	$0, %eax
	jmp	.L69
.L68:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	BN_mod_lshift1, .-BN_mod_lshift1
	.globl	BN_mod_lshift1_quick
	.type	BN_mod_lshift1_quick, @function
BN_mod_lshift1_quick:
.LFB171:
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
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L73
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	jmp	.L72
.L73:
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BN_mod_lshift1_quick, .-BN_mod_lshift1_quick
	.globl	BN_mod_lshift
	.type	BN_mod_lshift, @function
BN_mod_lshift:
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
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L76
.L75:
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L77
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L78
	movl	$0, %eax
	jmp	.L76
.L78:
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
.L77:
	cmpq	$0, -8(%rbp)
	je	.L79
	movq	-8(%rbp), %rax
	jmp	.L80
.L79:
	movq	-48(%rbp), %rax
.L80:
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	call	BN_mod_lshift_quick@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-12(%rbp), %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	BN_mod_lshift, .-BN_mod_lshift
	.globl	BN_mod_lshift_quick
	.type	BN_mod_lshift_quick, @function
BN_mod_lshift_quick:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L84
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L84
	movl	$0, %eax
	jmp	.L83
.L91:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L85
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$306, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L85:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.L86
	movl	-52(%rbp), %eax
	movl	%eax, -20(%rbp)
.L86:
	cmpl	$0, -20(%rbp)
	je	.L87
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	jne	.L88
	movl	$0, %eax
	jmp	.L83
.L88:
	movl	-20(%rbp), %eax
	subl	%eax, -52(%rbp)
	jmp	.L89
.L87:
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	jne	.L90
	movl	$0, %eax
	jmp	.L83
.L90:
	subl	$1, -52(%rbp)
.L89:
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L84
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L84
	movl	$0, %eax
	jmp	.L83
.L84:
	cmpl	$0, -52(%rbp)
	jg	.L91
	movl	$1, %eax
.L83:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	BN_mod_lshift_quick, .-BN_mod_lshift_quick
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 9
__func__.2:
	.string	"BN_nnmod"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"BN_mod_sub_quick"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"BN_mod_lshift_quick"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
