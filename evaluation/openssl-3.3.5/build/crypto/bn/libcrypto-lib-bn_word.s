	.file	"bn_word.c"
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
	.globl	BN_mod_word
	.type	BN_mod_word, @function
BN_mod_word:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L6
	movq	$-1, %rax
	jmp	.L7
.L6:
	movabsq	$4294967296, %rax
	cmpq	-48(%rbp), %rax
	jnb	.L8
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L9
	movq	$-1, %rax
	jmp	.L7
.L9:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_div_word@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	jmp	.L7
.L8:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L10
.L11:
	movq	-8(%rbp), %rax
	salq	$32, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	shrq	$32, %rax
	orq	%rcx, %rax
	movl	$0, %edx
	divq	-48(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$32, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	%eax, %eax
	orq	%rcx, %rax
	movl	$0, %edx
	divq	-48(%rbp)
	movq	%rdx, -8(%rbp)
	subl	$1, -12(%rbp)
.L10:
	cmpl	$0, -12(%rbp)
	jns	.L11
	movq	-8(%rbp), %rax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_mod_word, .-BN_mod_word
	.globl	BN_div_word
	.type	BN_div_word, @function
BN_div_word:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L13
	movq	$-1, %rax
	jmp	.L14
.L13:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L14
.L15:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits_word@PLT
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, -48(%rbp)
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	jne	.L16
	movq	$-1, %rax
	jmp	.L14
.L16:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.L17
.L18:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_div_words@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	subl	$1, -12(%rbp)
.L17:
	cmpl	$0, -12(%rbp)
	jns	.L18
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L19
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$3, %rax
	subq	$8, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
.L19:
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L20
	movq	-40(%rbp), %rax
	movl	$0, 16(%rax)
.L20:
	movq	-8(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_div_word, .-BN_div_word
	.globl	BN_add_word
	.type	BN_add_word, @function
BN_add_word:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L22
	movl	$1, %eax
	jmp	.L23
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L24
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	jmp	.L23
.L24:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L25
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L26
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
.L26:
	movl	-4(%rbp), %eax
	jmp	.L23
.L25:
	movl	$0, -4(%rbp)
	jmp	.L27
.L29:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	setb	%al
	movzbl	%al, %eax
	movq	%rax, -32(%rbp)
	addl	$1, -4(%rbp)
.L27:
	cmpq	$0, -32(%rbp)
	je	.L28
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L29
.L28:
	cmpq	$0, -32(%rbp)
	je	.L30
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L30
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L31
	movl	$0, %eax
	jmp	.L23
.L31:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
.L30:
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_add_word, .-BN_add_word
	.globl	BN_sub_word
	.type	BN_sub_word, @function
BN_sub_word:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L33
	movl	$1, %eax
	jmp	.L34
.L33:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L36
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
.L36:
	movl	-4(%rbp), %eax
	jmp	.L34
.L35:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L37
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, 16(%rax)
	movl	-4(%rbp), %eax
	jmp	.L34
.L37:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L38
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L38
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	subq	%rdx, %rcx
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$1, %eax
	jmp	.L34
.L38:
	movl	$0, -4(%rbp)
.L41:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jb	.L39
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	subq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L42
	jmp	.L43
.L39:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	subq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
	movq	$1, -32(%rbp)
	jmp	.L41
.L43:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jne	.L42
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
.L42:
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_sub_word, .-BN_sub_word
	.globl	BN_mul_word
	.type	BN_mul_word, @function
BN_mul_word:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L45
	cmpq	$0, -32(%rbp)
	jne	.L46
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	jmp	.L45
.L46:
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	call	bn_mul_words@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L45
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L47
	movl	$0, %eax
	jmp	.L48
.L47:
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 8(%rdx)
	cltq
	salq	$3, %rax
	leaq	(%rsi,%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
.L45:
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_mul_word, .-BN_mul_word
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
