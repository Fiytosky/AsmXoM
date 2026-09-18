	.file	"stack.c"
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
	.type	safe_add_int, @function
safe_add_int:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	jno	.L6
	movl	$1, %ecx
.L6:
	movl	%eax, -4(%rbp)
	movl	%ecx, %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L8
	movl	-4(%rbp), %eax
	jmp	.L12
.L8:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -20(%rbp)
	jns	.L10
	movl	$-2147483648, %eax
	jmp	.L12
.L10:
	movl	$2147483647, %eax
.L12:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	safe_add_int, .-safe_add_int
	.type	safe_mul_int, @function
safe_mul_int:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, %edx
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	jno	.L14
	movl	$1, %edx
.L14:
	movl	%eax, -4(%rbp)
	movl	%edx, %eax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L16
	movl	-4(%rbp), %eax
	jmp	.L20
.L16:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	-20(%rbp), %eax
	xorl	-24(%rbp), %eax
	testl	%eax, %eax
	jns	.L18
	movl	$-2147483648, %eax
	jmp	.L20
.L18:
	movl	$2147483647, %eax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	safe_mul_int, .-safe_mul_int
	.type	safe_div_int, @function
safe_div_int:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L22
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -4(%rbp)
	jns	.L23
	movl	$-2147483648, %eax
	jmp	.L25
.L23:
	movl	$2147483647, %eax
	jmp	.L25
.L22:
	cmpl	$-1, -8(%rbp)
	jne	.L26
	cmpl	$-2147483648, -4(%rbp)
	jne	.L26
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$2147483647, %eax
	jmp	.L25
.L26:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	safe_div_int, .-safe_div_int
	.type	safe_mod_int, @function
safe_mod_int:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L28
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L29
.L28:
	cmpl	$-1, -8(%rbp)
	jne	.L30
	cmpl	$-2147483648, -4(%rbp)
	jne	.L30
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$2147483647, %eax
	jmp	.L29
.L30:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, %eax
.L29:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	safe_mod_int, .-safe_mod_int
	.type	safe_muldiv_int, @function
safe_muldiv_int:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rcx, -56(%rbp)
	movl	$0, -20(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L32
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$0, -36(%rbp)
	je	.L33
	cmpl	$0, -40(%rbp)
	jne	.L34
.L33:
	movl	$0, %eax
	jmp	.L39
.L34:
	movl	$2147483647, %eax
	jmp	.L39
.L32:
	leaq	-20(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mul_int
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L37
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_int
	jmp	.L39
.L37:
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L38
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -36(%rbp)
.L38:
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_int
	movl	%eax, -8(%rbp)
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mod_int
	movl	%eax, -12(%rbp)
	movq	-56(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movl	-12(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mul_int
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_mul_int
	movl	%eax, -16(%rbp)
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_div_int
	movl	%eax, -8(%rbp)
	movq	-56(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movl	-16(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	safe_add_int
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	safe_muldiv_int, .-safe_muldiv_int
	.section	.rodata
	.align 4
	.type	min_nodes, @object
	.size	min_nodes, 4
min_nodes:
	.long	4
	.align 4
	.type	max_nodes, @object
	.size	max_nodes, 4
max_nodes:
	.long	2147483647
	.text
	.globl	OPENSSL_sk_set_cmp_func
	.type	OPENSSL_sk_set_cmp_func, @function
OPENSSL_sk_set_cmp_func:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L41
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
.L41:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	OPENSSL_sk_set_cmp_func, .-OPENSSL_sk_set_cmp_func
	.section	.rodata
.LC0:
	.string	"../crypto/stack/stack.c"
	.text
	.globl	OPENSSL_sk_dup
	.type	OPENSSL_sk_dup, @function
OPENSSL_sk_dup:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$51, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	cmpq	$0, -24(%rbp)
	jne	.L46
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.L47
.L46:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.L47:
	cmpq	$0, -24(%rbp)
	je	.L48
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L49
.L48:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-8(%rbp), %rax
	jmp	.L50
.L49:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$71, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	jmp	.L50
.L52:
	nop
	jmp	.L45
.L53:
	nop
.L45:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	OPENSSL_sk_dup, .-OPENSSL_sk_dup
	.globl	OPENSSL_sk_deep_copy
	.type	OPENSSL_sk_deep_copy, @function
OPENSSL_sk_deep_copy:
.LFB171:
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
	movq	%rdx, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$89, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L69
	cmpq	$0, -40(%rbp)
	jne	.L57
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.L58
.L57:
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	24(%rsi), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.L58:
	cmpq	$0, -40(%rbp)
	je	.L59
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L60
.L59:
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-32(%rbp), %rax
	jmp	.L61
.L60:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$4, %edx
	cmpl	%edx, %eax
	cmovge	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$109, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movl	$0, -20(%rbp)
	jmp	.L63
.L68:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rdx,%rcx), %rbx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.L65
	jmp	.L66
.L67:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.L66:
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L67
	jmp	.L56
.L71:
	nop
.L65:
	addl	$1, -20(%rbp)
.L63:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L68
	movq	-32(%rbp), %rax
	jmp	.L61
.L69:
	nop
	jmp	.L56
.L70:
	nop
.L56:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
.L61:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	OPENSSL_sk_deep_copy, .-OPENSSL_sk_deep_copy
	.globl	OPENSSL_sk_new_null
	.type	OPENSSL_sk_new_null, @function
OPENSSL_sk_new_null:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$0, %edi
	call	OPENSSL_sk_new_reserve@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	OPENSSL_sk_new_null, .-OPENSSL_sk_new_null
	.globl	OPENSSL_sk_new
	.type	OPENSSL_sk_new, @function
OPENSSL_sk_new:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	OPENSSL_sk_new, .-OPENSSL_sk_new
	.type	compute_growth, @function
compute_growth:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L77
.L81:
	movl	$2147483647, %eax
	cmpl	%eax, -24(%rbp)
	jl	.L78
	movl	$0, %eax
	jmp	.L82
.L78:
	leaq	-4(%rbp), %rdx
	movl	-24(%rbp), %eax
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$8, %esi
	movl	%eax, %edi
	call	safe_muldiv_int
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L80
	movl	$0, %eax
	jmp	.L82
.L80:
	movl	$2147483647, %eax
	cmpl	%eax, -24(%rbp)
	jl	.L77
	movl	$2147483647, -24(%rbp)
.L77:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L81
	movl	-24(%rbp), %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	compute_growth, .-compute_growth
	.type	sk_reserve, @function
sk_reserve:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	$2147483647, %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	cmpl	%edx, -28(%rbp)
	jle	.L84
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$184, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L85
.L84:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	$4, %eax
	cmpl	%eax, -4(%rbp)
	jge	.L86
	movl	$4, -4(%rbp)
.L86:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L87
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$199, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L88
	movl	$0, %eax
	jmp	.L85
.L88:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 20(%rax)
	movl	$1, %eax
	jmp	.L85
.L87:
	cmpl	$0, -32(%rbp)
	jne	.L89
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jg	.L90
	movl	$1, %eax
	jmp	.L85
.L90:
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	compute_growth
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L91
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$210, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L85
.L89:
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L91
	movl	$1, %eax
	jmp	.L85
.L91:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$217, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L92
	movl	$0, %eax
	jmp	.L85
.L92:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 20(%rax)
	movl	$1, %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	sk_reserve, .-sk_reserve
	.globl	OPENSSL_sk_new_reserve
	.type	OPENSSL_sk_new_reserve, @function
OPENSSL_sk_new_reserve:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$228, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L94
	movl	$0, %eax
	jmp	.L95
.L94:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	cmpl	$0, -28(%rbp)
	jg	.L96
	movq	-8(%rbp), %rax
	jmp	.L95
.L96:
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sk_reserve
	testl	%eax, %eax
	jne	.L97
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L95
.L97:
	movq	-8(%rbp), %rax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	OPENSSL_sk_new_reserve, .-OPENSSL_sk_new_reserve
	.globl	OPENSSL_sk_reserve
	.type	OPENSSL_sk_reserve, @function
OPENSSL_sk_reserve:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L99
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$249, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L100
.L99:
	cmpl	$0, -12(%rbp)
	jns	.L101
	movl	$1, %eax
	jmp	.L100
.L101:
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sk_reserve
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	OPENSSL_sk_reserve, .-OPENSSL_sk_reserve
	.globl	OPENSSL_sk_insert
	.type	OPENSSL_sk_insert, @function
OPENSSL_sk_insert:
.LFB178:
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
	cmpq	$0, -8(%rbp)
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L103:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	$2147483647, %edx
	cmpl	%edx, %eax
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$265, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L105:
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	sk_reserve
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L104
.L106:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L107
	cmpl	$0, -20(%rbp)
	jns	.L108
.L107:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L109
.L108:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %esi
	movslq	%esi, %rsi
	addq	$1, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
.L109:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	OPENSSL_sk_insert, .-OPENSSL_sk_insert
	.type	internal_delete, @function
internal_delete:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -28(%rbp)
	je	.L111
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	subl	-28(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	$1, %rcx
	salq	$3, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	salq	$3, %rsi
	addq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L111:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	internal_delete, .-internal_delete
	.globl	OPENSSL_sk_delete_ptr
	.type	OPENSSL_sk_delete_ptr, @function
OPENSSL_sk_delete_ptr:
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
	cmpq	$0, -24(%rbp)
	jne	.L114
	movl	$0, %eax
	jmp	.L115
.L114:
	movl	$0, -4(%rbp)
	jmp	.L116
.L118:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L117
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_delete
	jmp	.L115
.L117:
	addl	$1, -4(%rbp)
.L116:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L118
	movl	$0, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	OPENSSL_sk_delete_ptr, .-OPENSSL_sk_delete_ptr
	.globl	OPENSSL_sk_delete
	.type	OPENSSL_sk_delete, @function
OPENSSL_sk_delete:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L120
	cmpl	$0, -12(%rbp)
	js	.L120
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L121
.L120:
	movl	$0, %eax
	jmp	.L122
.L121:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_delete
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	OPENSSL_sk_delete, .-OPENSSL_sk_delete
	.type	internal_find, @function
internal_find:
.LFB182:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$0, -44(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L124
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L125
.L124:
	movl	$-1, %eax
	jmp	.L146
.L125:
	cmpq	$0, -16(%rbp)
	jne	.L127
	leaq	-44(%rbp), %rax
	movq	%rax, -16(%rbp)
.L127:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	movl	$0, -4(%rbp)
	jmp	.L129
.L131:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L130
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movl	-4(%rbp), %eax
	jmp	.L146
.L130:
	addl	$1, -4(%rbp)
.L129:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L131
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$-1, %eax
	jmp	.L146
.L128:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L132
	movl	$-1, %eax
	jmp	.L146
.L132:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L133
	movl	$-1, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L134
.L137:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rax, %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L135
	cmpl	$-1, -20(%rbp)
	jne	.L136
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
.L136:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -80(%rbp)
	jne	.L135
	movl	-4(%rbp), %eax
	jmp	.L146
.L135:
	addl	$1, -4(%rbp)
.L134:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L137
	cmpl	$-1, -20(%rbp)
	jne	.L138
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
.L138:
	movl	-20(%rbp), %eax
	jmp	.L146
.L133:
	cmpq	$0, -80(%rbp)
	je	.L139
	orl	$2, -68(%rbp)
.L139:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-68(%rbp), %edi
	leaq	-64(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movl	$8, %ecx
	movq	%rax, %rdi
	call	ossl_bsearch@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L140
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L140
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L141
.L143:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L147
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	addq	$8, -32(%rbp)
.L141:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L143
	jmp	.L140
.L147:
	nop
.L140:
	cmpq	$0, -40(%rbp)
	je	.L144
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	jmp	.L146
.L144:
	movl	$-1, %eax
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	internal_find, .-internal_find
	.globl	OPENSSL_sk_find
	.type	OPENSSL_sk_find, @function
OPENSSL_sk_find:
.LFB183:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	internal_find
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	OPENSSL_sk_find, .-OPENSSL_sk_find
	.globl	OPENSSL_sk_find_ex
	.type	OPENSSL_sk_find_ex, @function
OPENSSL_sk_find_ex:
.LFB184:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	internal_find
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	OPENSSL_sk_find_ex, .-OPENSSL_sk_find_ex
	.globl	OPENSSL_sk_find_all
	.type	OPENSSL_sk_find_all, @function
OPENSSL_sk_find_all:
.LFB185:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	internal_find
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	OPENSSL_sk_find_all, .-OPENSSL_sk_find_all
	.globl	OPENSSL_sk_push
	.type	OPENSSL_sk_push, @function
OPENSSL_sk_push:
.LFB186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L155
	movl	$0, %eax
	jmp	.L156
.L155:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_insert@PLT
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	OPENSSL_sk_push, .-OPENSSL_sk_push
	.globl	OPENSSL_sk_unshift
	.type	OPENSSL_sk_unshift, @function
OPENSSL_sk_unshift:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	OPENSSL_sk_unshift, .-OPENSSL_sk_unshift
	.globl	OPENSSL_sk_shift
	.type	OPENSSL_sk_shift, @function
OPENSSL_sk_shift:
.LFB188:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L160
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L161
.L160:
	movl	$0, %eax
	jmp	.L162
.L161:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	internal_delete
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	OPENSSL_sk_shift, .-OPENSSL_sk_shift
	.globl	OPENSSL_sk_pop
	.type	OPENSSL_sk_pop, @function
OPENSSL_sk_pop:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L164
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L165
.L164:
	movl	$0, %eax
	jmp	.L166
.L165:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	internal_delete
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	OPENSSL_sk_pop, .-OPENSSL_sk_pop
	.globl	OPENSSL_sk_zero
	.type	OPENSSL_sk_zero, @function
OPENSSL_sk_zero:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L171
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L171
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L167
.L171:
	nop
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	OPENSSL_sk_zero, .-OPENSSL_sk_zero
	.globl	OPENSSL_sk_pop_free
	.type	OPENSSL_sk_pop_free, @function
OPENSSL_sk_pop_free:
.LFB191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L178
	movl	$0, -4(%rbp)
	jmp	.L175
.L177:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L176
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.L176:
	addl	$1, -4(%rbp)
.L175:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L177
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	jmp	.L172
.L178:
	nop
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	OPENSSL_sk_pop_free, .-OPENSSL_sk_pop_free
	.globl	OPENSSL_sk_free
	.type	OPENSSL_sk_free, @function
OPENSSL_sk_free:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L182
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$447, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$448, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L179
.L182:
	nop
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	OPENSSL_sk_free, .-OPENSSL_sk_free
	.globl	OPENSSL_sk_num
	.type	OPENSSL_sk_num, @function
OPENSSL_sk_num:
.LFB193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L184
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L186
.L184:
	movl	$-1, %eax
.L186:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	OPENSSL_sk_num, .-OPENSSL_sk_num
	.globl	OPENSSL_sk_value
	.type	OPENSSL_sk_value, @function
OPENSSL_sk_value:
.LFB194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L188
	cmpl	$0, -12(%rbp)
	js	.L188
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L189
.L188:
	movl	$0, %eax
	jmp	.L190
.L189:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
.L190:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	OPENSSL_sk_value, .-OPENSSL_sk_value
	.section	.rodata
.LC1:
	.string	"i=%d"
	.text
	.globl	OPENSSL_sk_set
	.type	OPENSSL_sk_set, @function
OPENSSL_sk_set:
.LFB195:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L192
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$466, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L193
.L192:
	cmpl	$0, -12(%rbp)
	js	.L194
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L195
.L194:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$470, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-12(%rbp), %eax
	leaq	.LC1(%rip), %rdx
	movl	%eax, %ecx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L193
.L195:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	OPENSSL_sk_set, .-OPENSSL_sk_set
	.globl	OPENSSL_sk_sort
	.type	OPENSSL_sk_sort, @function
OPENSSL_sk_sort:
.LFB196:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L199
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L199
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L199
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jle	.L198
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	qsort@PLT
.L198:
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
.L199:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE196:
	.size	OPENSSL_sk_sort, .-OPENSSL_sk_sort
	.globl	OPENSSL_sk_is_sorted
	.type	OPENSSL_sk_is_sorted, @function
OPENSSL_sk_is_sorted:
.LFB197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L201
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	jmp	.L203
.L201:
	movl	$1, %eax
.L203:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE197:
	.size	OPENSSL_sk_is_sorted, .-OPENSSL_sk_is_sorted
	.section	.rodata
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 11
__func__.3:
	.string	"sk_reserve"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 19
__func__.2:
	.string	"OPENSSL_sk_reserve"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"OPENSSL_sk_insert"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"OPENSSL_sk_set"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
