	.file	"sparse_array.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/sparse_array.c"
	.text
	.globl	ossl_sa_new
	.type	ossl_sa_new, @function
ossl_sa_new:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$60, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ossl_sa_new, .-ossl_sa_new
	.type	sa_doall, @function
sa_doall:
.LFB31:
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
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -96(%rbp)
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -224(%rbp)
	jmp	.L4
.L8:
	movl	-12(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movq	-224(%rbp,%rax,8), %rax
	movq	%rax, -24(%rbp)
	cmpl	$15, -16(%rbp)
	jle	.L5
	cmpq	$0, -24(%rbp)
	je	.L6
	cmpq	$0, -240(%rbp)
	je	.L6
	movq	-24(%rbp), %rax
	movq	-240(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.L6:
	subl	$1, -12(%rbp)
	shrq	$4, -8(%rbp)
	jmp	.L4
.L5:
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	cmpq	$0, -24(%rbp)
	je	.L4
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-8(%rbp), %rax
	andq	$-16, %rax
	movq	%rax, %rdx
	movl	-16(%rbp), %eax
	cltq
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-232(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jge	.L7
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movl	$0, -96(%rbp,%rax,4)
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	movq	%rdx, -224(%rbp,%rax,8)
	salq	$4, -8(%rbp)
	jmp	.L4
.L7:
	cmpq	$0, -248(%rbp)
	je	.L4
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-256(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	-248(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L4:
	cmpl	$0, -12(%rbp)
	jns	.L8
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	sa_doall, .-sa_doall
	.type	sa_free_node, @function
sa_free_node:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$102, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	sa_free_node, .-sa_free_node
	.type	sa_free_leaf, @function
sa_free_leaf:
.LFB33:
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
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$107, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	sa_free_leaf, .-sa_free_leaf
	.globl	ossl_sa_free
	.type	ossl_sa_free, @function
ossl_sa_free:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L13
	leaq	sa_free_node(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	sa_doall
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L13:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	ossl_sa_free, .-ossl_sa_free
	.globl	ossl_sa_free_leaves
	.type	ossl_sa_free_leaves, @function
ossl_sa_free_leaves:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	sa_free_leaf(%rip), %rdx
	leaq	sa_free_node(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	sa_doall
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$121, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	ossl_sa_free_leaves, .-ossl_sa_free_leaves
	.type	trampoline, @function
trampoline:
.LFB36:
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	trampoline, .-trampoline
	.globl	ossl_sa_doall
	.type	ossl_sa_doall, @function
ossl_sa_doall:
.LFB37:
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
	cmpq	$0, -24(%rbp)
	je	.L18
	leaq	-8(%rbp), %rdx
	leaq	trampoline(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	sa_doall
.L18:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	ossl_sa_doall, .-ossl_sa_doall
	.globl	ossl_sa_doall_arg
	.type	ossl_sa_doall_arg, @function
ossl_sa_doall_arg:
.LFB38:
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
	cmpq	$0, -8(%rbp)
	je	.L21
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sa_doall
.L21:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	ossl_sa_doall_arg, .-ossl_sa_doall_arg
	.globl	ossl_sa_num
	.type	ossl_sa_num, @function
ossl_sa_num:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L23
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L25
.L23:
	movl	$0, %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	ossl_sa_num, .-ossl_sa_num
	.globl	ossl_sa_get
	.type	ossl_sa_get, @function
ossl_sa_get:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L27
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L28
.L27:
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	jb	.L30
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L31
.L33:
	movl	-4(%rbp), %eax
	sall	$2, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$15, %eax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	subl	$1, -4(%rbp)
.L31:
	cmpq	$0, -16(%rbp)
	je	.L32
	cmpl	$0, -4(%rbp)
	jg	.L33
.L32:
	cmpq	$0, -16(%rbp)
	je	.L34
	movq	-48(%rbp), %rax
	andl	$15, %eax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L30
.L34:
	movq	$0, -24(%rbp)
.L30:
	movq	-24(%rbp), %rax
.L29:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	ossl_sa_get, .-ossl_sa_get
	.type	alloc_node, @function
alloc_node:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	movl	$176, %edx
	movq	%rax, %rsi
	movl	$128, %edi
	call	CRYPTO_zalloc@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	alloc_node, .-alloc_node
	.globl	ossl_sa_set
	.type	ossl_sa_set, @function
ossl_sa_set:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$1, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movl	$1, -20(%rbp)
	jmp	.L40
.L43:
	shrq	$4, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L53
	addl	$1, -20(%rbp)
.L40:
	cmpl	$15, -20(%rbp)
	jle	.L43
	jmp	.L44
.L53:
	nop
	jmp	.L44
.L46:
	call	alloc_node
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L39
.L45:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L44:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jg	.L46
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L47
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L47:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.L48
.L50:
	movl	-20(%rbp), %eax
	sall	$2, %eax
	movq	-64(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$15, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L49
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	call	alloc_node
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	jne	.L49
	movl	$0, %eax
	jmp	.L39
.L49:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	subl	$1, -20(%rbp)
.L48:
	cmpl	$0, -20(%rbp)
	jg	.L50
	movq	-64(%rbp), %rax
	andl	$15, %eax
	salq	$3, %rax
	addq	%rax, -40(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L51
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L52
.L51:
	cmpq	$0, -72(%rbp)
	je	.L52
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L52
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
.L52:
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	ossl_sa_set, .-ossl_sa_set
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
