	.file	"bn_intern.c"
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
	.string	"../crypto/bn/bn_intern.c"
	.text
	.globl	bn_compute_wNAF
	.type	bn_compute_wNAF, @function
bn_compute_wNAF:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, -20(%rbp)
	movq	$0, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L6
	leaq	.LC0(%rip), %rax
	movl	$31, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L24
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	$1, (%rax)
	movq	-16(%rbp), %rax
	jmp	.L9
.L6:
	cmpl	$0, -76(%rbp)
	jle	.L10
	cmpl	$7, -76(%rbp)
	jle	.L11
.L10:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$41, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L8
.L11:
	movl	-76(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L12
	movl	$-1, -20(%rbp)
.L12:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L14
.L13:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L8
.L14:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	leaq	.LC0(%rip), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movl	-60(%rbp), %eax
	andl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L16
.L22:
	movl	$0, -36(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L17
	movl	-4(%rbp), %eax
	andl	-52(%rbp), %eax
	testl	%eax, %eax
	je	.L18
	movl	-4(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	cmpq	-48(%rbp), %rax
	jb	.L19
	movl	-60(%rbp), %eax
	sarl	%eax
	andl	-4(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.L19
.L18:
	movl	-4(%rbp), %eax
	movl	%eax, -36(%rbp)
.L19:
	movl	-52(%rbp), %eax
	negl	%eax
	cmpl	%eax, -36(%rbp)
	jle	.L20
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L20
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L21
.L20:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L8
.L21:
	movl	-36(%rbp), %eax
	subl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L17
	movl	-4(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.L17
	movl	-4(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L17
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L8
.L17:
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	imull	%edx, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	sarl	-4(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movl	-76(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	imull	-52(%rbp), %eax
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.L16
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L8
.L16:
	cmpl	$0, -4(%rbp)
	jne	.L22
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	cmpq	-48(%rbp), %rax
	jb	.L22
	movq	-48(%rbp), %rax
	addq	$1, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L23
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L8
.L23:
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	jmp	.L9
.L24:
	nop
	jmp	.L8
.L25:
	nop
.L8:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$133, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	bn_compute_wNAF, .-bn_compute_wNAF
	.globl	bn_get_top
	.type	bn_get_top, @function
bn_get_top:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	bn_get_top, .-bn_get_top
	.globl	bn_get_dmax
	.type	bn_get_dmax, @function
bn_get_dmax:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	bn_get_dmax, .-bn_get_dmax
	.globl	bn_set_all_zero
	.type	bn_set_all_zero, @function
bn_set_all_zero:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L31
.L32:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -4(%rbp)
.L31:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L32
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	bn_set_all_zero, .-bn_set_all_zero
	.globl	bn_copy_words
	.type	bn_copy_words, @function
bn_copy_words:
.LFB165:
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
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L36:
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	bn_copy_words, .-bn_copy_words
	.globl	bn_get_words
	.type	bn_get_words, @function
bn_get_words:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	bn_get_words, .-bn_get_words
	.globl	bn_set_static_words
	.type	bn_set_static_words, @function
bn_set_static_words:
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	bn_set_static_words, .-bn_set_static_words
	.globl	bn_set_words
	.type	bn_set_words, @function
bn_set_words:
.LFB168:
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
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L41:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	bn_set_words, .-bn_set_words
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"bn_compute_wNAF"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"bn_set_words"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
