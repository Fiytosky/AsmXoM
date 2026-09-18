	.file	"bn_recp.c"
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
	.globl	BN_RECP_CTX_init
	.type	BN_RECP_CTX_init, @function
BN_RECP_CTX_init:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_init@PLT
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	bn_init@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	BN_RECP_CTX_init, .-BN_RECP_CTX_init
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_recp.c"
	.text
	.globl	BN_RECP_CTX_new
	.type	BN_RECP_CTX_new, @function
BN_RECP_CTX_new:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$24, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_init@PLT
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	bn_init@PLT
	movq	-8(%rbp), %rax
	movl	$1, 56(%rax)
	movq	-8(%rbp), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_RECP_CTX_new, .-BN_RECP_CTX_new
	.globl	BN_RECP_CTX_free
	.type	BN_RECP_CTX_free, @function
BN_RECP_CTX_free:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L9
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L9
.L12:
	nop
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_RECP_CTX_free, .-BN_RECP_CTX_free
	.globl	BN_RECP_CTX_set
	.type	BN_RECP_CTX_set, @function
BN_RECP_CTX_set:
.LFB164:
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L14
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L15
.L14:
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, 48(%rdx)
	movq	-8(%rbp), %rax
	movl	$0, 52(%rax)
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_RECP_CTX_set, .-BN_RECP_CTX_set
	.globl	BN_mod_mul_reciprocal
	.type	BN_mod_mul_reciprocal, @function
BN_mod_mul_reciprocal:
.LFB165:
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
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L25
	cmpq	$0, -56(%rbp)
	je	.L20
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L21
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sqr@PLT
	testl	%eax, %eax
	jne	.L22
	jmp	.L19
.L21:
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L26
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L23
.L20:
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
.L23:
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div_recp@PLT
	movl	%eax, -4(%rbp)
	jmp	.L19
.L25:
	nop
	jmp	.L19
.L26:
	nop
.L19:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_mod_mul_reciprocal, .-BN_mod_mul_reciprocal
	.globl	BN_div_recp
	.type	BN_div_recp, @function
BN_div_recp:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	$0, -12(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	cmpq	$0, -56(%rbp)
	jne	.L28
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	jmp	.L29
.L28:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L29:
	cmpq	$0, -64(%rbp)
	jne	.L30
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	jmp	.L31
.L30:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
.L31:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L51
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L34
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-72(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L35
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	$1, %eax
	jmp	.L36
.L34:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -4(%rbp)
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	addl	%eax, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L37
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.L37:
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L38
	movq	-80(%rbp), %rax
	movq	-80(%rbp), %rdx
	leaq	24(%rdx), %rdi
	movq	-88(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	%rax, %rsi
	call	BN_reciprocal@PLT
	movq	-80(%rbp), %rdx
	movl	%eax, 52(%rdx)
.L38:
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	$-1, %eax
	je	.L52
	movq	-80(%rbp), %rax
	movl	48(%rax), %edx
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L53
	movq	-80(%rbp), %rax
	leaq	24(%rax), %rdi
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L54
	movq	-80(%rbp), %rax
	movl	48(%rax), %eax
	movl	-4(%rbp), %edx
	subl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L55
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L56
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	je	.L57
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	movl	$0, -8(%rbp)
	jmp	.L45
.L48:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	cmpl	$2, %eax
	jle	.L46
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$147, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L33
.L46:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	je	.L58
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L59
.L45:
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L48
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L49
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	jmp	.L50
.L49:
	movl	$0, %eax
.L50:
	movq	-32(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-72(%rbp), %rax
	movl	16(%rax), %edx
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	xorl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	$1, -12(%rbp)
	jmp	.L33
.L51:
	nop
	jmp	.L33
.L52:
	nop
	jmp	.L33
.L53:
	nop
	jmp	.L33
.L54:
	nop
	jmp	.L33
.L55:
	nop
	jmp	.L33
.L56:
	nop
	jmp	.L33
.L57:
	nop
	jmp	.L33
.L58:
	nop
	jmp	.L33
.L59:
	nop
.L33:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-12(%rbp), %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BN_div_recp, .-BN_div_recp
	.globl	BN_reciprocal
	.type	BN_reciprocal, @function
BN_reciprocal:
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
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$-1, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L66
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	je	.L67
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L68
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L62
.L66:
	nop
	jmp	.L62
.L67:
	nop
	jmp	.L62
.L68:
	nop
.L62:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BN_reciprocal, .-BN_reciprocal
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 12
__func__.0:
	.string	"BN_div_recp"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
