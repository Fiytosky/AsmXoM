	.file	"priority_queue.c"
	.text
	.type	safe_add_size_t, @function
safe_add_size_t:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	jnc	.L2
	movl	$1, %ecx
.L2:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	movq	-8(%rbp), %rax
	jmp	.L6
.L4:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	safe_add_size_t, .-safe_add_size_t
	.type	safe_mul_size_t, @function
safe_mul_size_t:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	mulq	-32(%rbp)
	jno	.L8
	movl	$1, %ecx
.L8:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L10
	movq	-8(%rbp), %rax
	jmp	.L12
.L10:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	imulq	-32(%rbp), %rax
.L12:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	safe_mul_size_t, .-safe_mul_size_t
	.type	safe_muldiv_size_t, @function
safe_muldiv_size_t:
.LFB80:
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
	movl	$0, -20(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L14
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L15
	cmpq	$0, -48(%rbp)
	jne	.L16
.L15:
	movl	$0, %eax
	jmp	.L21
.L16:
	movq	$-1, %rax
	jmp	.L21
.L14:
	leaq	-20(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_mul_size_t
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jne	.L19
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	jmp	.L21
.L19:
	movq	-48(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L20
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.L20:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	safe_mul_size_t
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	safe_mul_size_t
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_size_t
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	safe_muldiv_size_t, .-safe_muldiv_size_t
	.section	.rodata
	.align 8
	.type	min_nodes, @object
	.size	min_nodes, 8
min_nodes:
	.quad	8
	.align 8
	.type	max_nodes, @object
	.size	max_nodes, 8
max_nodes:
	.quad	1152921504606846975
	.text
	.type	compute_pqueue_growth, @function
compute_pqueue_growth:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L23
.L27:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L24
	movl	$0, %eax
	jmp	.L28
.L24:
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$5, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	safe_muldiv_size_t
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L26
	movl	$0, %eax
	jmp	.L28
.L26:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L23
	movabsq	$1152921504606846975, %rax
	movq	%rax, -32(%rbp)
.L23:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L27
	movq	-32(%rbp), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	compute_pqueue_growth, .-compute_pqueue_growth
	.type	pqueue_swap_elem, @function
pqueue_swap_elem:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-56(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-56(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-48(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	pqueue_swap_elem, .-pqueue_swap_elem
	.type	pqueue_move_elem, @function
pqueue_move_elem:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-8(%rbp), %rdx
	addq	%rdx, %rcx
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-40(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	pqueue_move_elem, .-pqueue_move_elem
	.type	pqueue_force_bottom, @function
pqueue_force_bottom:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	.L32
.L33:
	movq	-32(%rbp), %rax
	subq	$1, %rax
	shrq	%rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pqueue_swap_elem
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.L32:
	cmpq	$0, -32(%rbp)
	jne	.L33
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	pqueue_force_bottom, .-pqueue_force_bottom
	.type	pqueue_move_down, @function
pqueue_move_down:
.LFB87:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L35
.L38:
	movq	-32(%rbp), %rax
	subq	$1, %rax
	shrq	%rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jns	.L39
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pqueue_swap_elem
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.L35:
	cmpq	$0, -32(%rbp)
	jne	.L38
	jmp	.L40
.L39:
	nop
.L40:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	pqueue_move_down, .-pqueue_move_down
	.type	pqueue_move_up, @function
pqueue_move_up:
.LFB88:
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
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L43
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jle	.L43
	addq	$1, -8(%rbp)
	jmp	.L43
.L45:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pqueue_swap_elem
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	cmpq	%rax, %rdx
	jnb	.L43
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jle	.L43
	addq	$1, -8(%rbp)
.L43:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L46
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-16(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	js	.L45
.L46:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	pqueue_move_up, .-pqueue_move_up
	.globl	ossl_pqueue_push
	.type	ossl_pqueue_push, @function
ossl_pqueue_push:
.LFB89:
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
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_pqueue_reserve@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L49
.L48:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pqueue_move_down
	cmpq	$0, -40(%rbp)
	je	.L50
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L50:
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	ossl_pqueue_push, .-ossl_pqueue_push
	.globl	ossl_pqueue_peek
	.type	ossl_pqueue_peek, @function
ossl_pqueue_peek:
.LFB90:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	jmp	.L53
.L52:
	movl	$0, %eax
.L53:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	ossl_pqueue_peek, .-ossl_pqueue_peek
	.globl	ossl_pqueue_pop
	.type	ossl_pqueue_pop, @function
ossl_pqueue_pop:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L55
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L56
.L55:
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pqueue_move_elem
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pqueue_move_up
.L58:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	ossl_pqueue_pop, .-ossl_pqueue_pop
	.globl	ossl_pqueue_remove
	.type	ossl_pqueue_remove, @function
ossl_pqueue_remove:
.LFB92:
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
	je	.L60
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L60
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L61
.L60:
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	subq	$1, %rax
	cmpq	%rax, -8(%rbp)
	jne	.L63
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	salq	$4, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L62
.L63:
	cmpq	$0, -8(%rbp)
	je	.L64
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pqueue_force_bottom
.L64:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_pop@PLT
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	ossl_pqueue_remove, .-ossl_pqueue_remove
	.type	pqueue_add_freelist, @function
pqueue_add_freelist:
.LFB93:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L66
.L67:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	subq	$1, %rdx
	movq	%rdx, (%rax)
	addq	$1, -8(%rbp)
.L66:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L67
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	pqueue_add_freelist, .-pqueue_add_freelist
	.section	.rodata
.LC0:
	.string	"../ssl/priority_queue.c"
	.text
	.globl	ossl_pqueue_reserve
	.type	ossl_pqueue_reserve, @function
ossl_pqueue_reserve:
.LFB94:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-8(%rbp), %rax
	jnb	.L71
	movl	$1, %eax
	jmp	.L70
.L71:
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	compute_pqueue_growth
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L72
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$310, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L70
.L72:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$314, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L73
	movl	$0, %eax
	jmp	.L70
.L73:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$319, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L74
	movl	$0, %eax
	jmp	.L70
.L74:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pqueue_add_freelist
	movl	$1, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	ossl_pqueue_reserve, .-ossl_pqueue_reserve
	.globl	ossl_pqueue_new
	.type	ossl_pqueue_new, @function
ossl_pqueue_new:
.LFB95:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	leaq	.LC0(%rip), %rax
	movl	$336, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L78
	movl	$0, %eax
	jmp	.L77
.L78:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$8, %edx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$8, %eax
	salq	$4, %rax
	leaq	.LC0(%rip), %rcx
	movl	$343, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$8, %eax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$344, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L80
.L79:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_free@PLT
	movl	$0, %eax
	jmp	.L77
.L80:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pqueue_add_freelist
	movq	-8(%rbp), %rax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	ossl_pqueue_new, .-ossl_pqueue_new
	.globl	ossl_pqueue_free
	.type	ossl_pqueue_free, @function
ossl_pqueue_free:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L83
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$356, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$357, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$358, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L83:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	ossl_pqueue_free, .-ossl_pqueue_free
	.globl	ossl_pqueue_pop_free
	.type	ossl_pqueue_pop_free, @function
ossl_pqueue_pop_free:
.LFB97:
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
	je	.L88
	movq	$0, -8(%rbp)
	jmp	.L86
.L87:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	addq	$1, -8(%rbp)
.L86:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L87
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_free@PLT
.L88:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	ossl_pqueue_pop_free, .-ossl_pqueue_pop_free
	.globl	ossl_pqueue_num
	.type	ossl_pqueue_num, @function
ossl_pqueue_num:
.LFB98:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L90
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L92
.L90:
	movl	$0, %eax
.L92:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	ossl_pqueue_num, .-ossl_pqueue_num
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"ossl_pqueue_reserve"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
