	.file	"priority_queue_test.c"
	.text
	.type	ossl_pqueue_size_t_new, @function
ossl_pqueue_size_t_new:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	ossl_pqueue_size_t_new, .-ossl_pqueue_size_t_new
	.type	ossl_pqueue_size_t_free, @function
ossl_pqueue_size_t_free:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	ossl_pqueue_size_t_free, .-ossl_pqueue_size_t_free
	.type	ossl_pqueue_size_t_pop_free, @function
ossl_pqueue_size_t_pop_free:
.LFB470:
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
	call	ossl_pqueue_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	ossl_pqueue_size_t_pop_free, .-ossl_pqueue_size_t_pop_free
	.type	ossl_pqueue_size_t_reserve, @function
ossl_pqueue_size_t_reserve:
.LFB471:
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
	call	ossl_pqueue_reserve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	ossl_pqueue_size_t_reserve, .-ossl_pqueue_size_t_reserve
	.type	ossl_pqueue_size_t_num, @function
ossl_pqueue_size_t_num:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	ossl_pqueue_size_t_num, .-ossl_pqueue_size_t_num
	.type	ossl_pqueue_size_t_push, @function
ossl_pqueue_size_t_push:
.LFB473:
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
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	ossl_pqueue_size_t_push, .-ossl_pqueue_size_t_push
	.type	ossl_pqueue_size_t_peek, @function
ossl_pqueue_size_t_peek:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_peek@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	ossl_pqueue_size_t_peek, .-ossl_pqueue_size_t_peek
	.type	ossl_pqueue_size_t_pop, @function
ossl_pqueue_size_t_pop:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_pop@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	ossl_pqueue_size_t_pop, .-ossl_pqueue_size_t_pop
	.type	ossl_pqueue_size_t_remove, @function
ossl_pqueue_size_t_remove:
.LFB476:
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
	call	ossl_pqueue_remove@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	ossl_pqueue_size_t_remove, .-ossl_pqueue_size_t_remove
	.local	num_rec_freed
	.comm	num_rec_freed,8,8
	.type	size_t_compare, @function
size_t_compare:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L18
	movl	$-1, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L20
	movl	$1, %eax
	jmp	.L19
.L20:
	movl	$0, %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	size_t_compare, .-size_t_compare
	.type	qsort_size_t_compare, @function
qsort_size_t_compare:
.LFB478:
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
	call	size_t_compare
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	qsort_size_t_compare, .-qsort_size_t_compare
	.type	qsort_size_t_compare_rev, @function
qsort_size_t_compare_rev:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	size_t_compare
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	qsort_size_t_compare_rev, .-qsort_size_t_compare_rev
	.type	free_checker, @function
free_checker:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	num_rec_freed(%rip), %rax
	addq	$1, %rax
	movq	%rax, num_rec_freed(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	free_checker, .-free_checker
	.section	.rodata
.LC0:
	.string	"pop "
.LC1:
	.string	""
.LC2:
	.string	"random"
.LC3:
	.string	"deterministic"
.LC4:
	.string	"reserve"
.LC5:
	.string	"grow"
	.align 8
.LC6:
	.string	"testing count %d, %s, %s, values %s, remove %d, %sfree"
.LC7:
	.string	"../test/priority_queue_test.c"
.LC8:
	.string	"MAX_SAMPLES"
.LC9:
	.string	"count"
	.align 8
.LC10:
	.string	"pq = ossl_pqueue_size_t_new(&size_t_compare)"
.LC11:
	.string	"0"
.LC12:
	.string	"ossl_pqueue_size_t_num(pq)"
	.align 8
.LC13:
	.string	"ossl_pqueue_size_t_reserve(pq, count)"
	.align 8
.LC14:
	.string	"ossl_pqueue_size_t_push(pq, values + i, ref + i)"
.LC15:
	.string	"*sorted"
.LC16:
	.string	"*ossl_pqueue_size_t_peek(pq)"
.LC17:
	.string	"values + i"
	.align 8
.LC18:
	.string	"ossl_pqueue_size_t_remove(pq, ref[i])"
.LC19:
	.string	"sorted[i]"
.LC20:
	.string	"*ossl_pqueue_size_t_pop(pq)"
.LC21:
	.string	"n"
.LC22:
	.string	"num_rec_freed"
	.text
	.type	test_size_t_priority_queue_int, @function
test_size_t_priority_queue_int:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -32(%rbp)
	cmpl	$0, -72(%rbp)
	je	.L27
	leaq	.LC0(%rip), %rdx
	jmp	.L28
.L27:
	leaq	.LC1(%rip), %rdx
.L28:
	cmpl	$0, -68(%rbp)
	je	.L29
	leaq	.LC2(%rip), %rax
	jmp	.L30
.L29:
	leaq	.LC3(%rip), %rax
.L30:
	cmpl	$0, -52(%rbp)
	je	.L31
	leaq	.LC4(%rip), %rcx
	jmp	.L32
.L31:
	leaq	.LC5(%rip), %rcx
.L32:
	movl	-56(%rbp), %esi
	movslq	%esi, %rsi
	leaq	0(,%rsi,8), %rdi
	leaq	orders.3(%rip), %rsi
	movq	(%rdi,%rsi), %r8
	movl	-60(%rbp), %esi
	leaq	.LC6(%rip), %r10
	leaq	.LC7(%rip), %rdi
	subq	$8, %rsp
	pushq	%rdx
	movl	-64(%rbp), %edx
	pushq	%rdx
	pushq	%rax
	movq	%rcx, %r9
	movl	%esi, %ecx
	movq	%r10, %rdx
	movl	$60, %esi
	movl	$0, %eax
	call	test_info@PLT
	addq	$32, %rsp
	movl	-60(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$500000, %r9d
	movq	%rsi, %r8
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	leaq	values.2(%rip), %rax
	movl	$4000000, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	sorted.1(%rip), %rax
	movl	$4000000, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	ref.0(%rip), %rax
	movl	$4000000, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -28(%rbp)
	jmp	.L35
.L38:
	cmpl	$0, -68(%rbp)
	je	.L36
	call	test_random@PLT
	movl	%eax, %eax
	jmp	.L37
.L36:
	movl	-60(%rbp), %eax
	subl	-28(%rbp), %eax
	cltq
.L37:
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	values.2(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	addl	$1, -28(%rbp)
.L35:
	movl	-28(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L38
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	values.2(%rip), %rcx
	leaq	sorted.1(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-60(%rbp), %eax
	cltq
	leaq	qsort_size_t_compare(%rip), %rdx
	leaq	sorted.1(%rip), %rdi
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	call	qsort@PLT
	cmpl	$1, -56(%rbp)
	jne	.L39
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sorted.1(%rip), %rcx
	leaq	values.2(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L40
.L39:
	cmpl	$2, -56(%rbp)
	jne	.L40
	movl	-60(%rbp), %eax
	cltq
	leaq	qsort_size_t_compare_rev(%rip), %rdx
	leaq	values.2(%rip), %rdi
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	call	qsort@PLT
.L40:
	leaq	size_t_compare(%rip), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movq	%rax, %rcx
	movl	$82, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L59
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_num
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L59
	cmpl	$0, -52(%rbp)
	je	.L44
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_reserve
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
.L44:
	movl	$0, -28(%rbp)
	jmp	.L45
.L47:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	ref.0(%rip), %rax
	addq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	values.2(%rip), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$90, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	addl	$1, -28(%rbp)
.L45:
	movl	-28(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L47
	movq	sorted.1(%rip), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_peek
	movq	(%rax), %rsi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L62
	movl	-60(%rbp), %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_num
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L62
	cmpl	$0, -64(%rbp)
	je	.L50
	jmp	.L51
.L53:
	call	test_random@PLT
	movl	-60(%rbp), %ebx
	movl	$0, %edx
	divl	%ebx
	movl	%edx, %ecx
	movl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	values.2(%rip), %rax
	movq	(%rdx,%rax), %rax
	cmpq	$-1, %rax
	je	.L51
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	values.2(%rip), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	ref.0(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_remove
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$101, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L63
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	values.2(%rip), %rax
	movq	$-1, (%rdx,%rax)
.L51:
	movl	-64(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -64(%rbp)
	testl	%eax, %eax
	jg	.L53
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	values.2(%rip), %rcx
	leaq	sorted.1(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-60(%rbp), %eax
	cltq
	leaq	qsort_size_t_compare(%rip), %rdx
	leaq	sorted.1(%rip), %rdi
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rsi
	call	qsort@PLT
.L50:
	movl	$0, -28(%rbp)
	jmp	.L54
.L57:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sorted.1(%rip), %rax
	movq	(%rdx,%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_peek
	movq	(%rax), %rsi
	leaq	.LC19(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$111, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L64
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sorted.1(%rip), %rax
	movq	(%rdx,%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_pop
	movq	(%rax), %rsi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L64
	addl	$1, -28(%rbp)
.L54:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_peek
	testq	%rax, %rax
	jne	.L57
	cmpl	$0, -72(%rbp)
	je	.L58
	movq	$0, num_rec_freed(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_num
	movq	%rax, -40(%rbp)
	leaq	free_checker(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_pop_free
	movq	$0, -24(%rbp)
	movq	num_rec_freed(%rip), %rsi
	movq	-40(%rbp), %rdi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L65
.L58:
	movl	$1, -32(%rbp)
	jmp	.L43
.L59:
	nop
	jmp	.L43
.L60:
	nop
	jmp	.L43
.L61:
	nop
	jmp	.L43
.L62:
	nop
	jmp	.L43
.L63:
	nop
	jmp	.L43
.L64:
	nop
	jmp	.L43
.L65:
	nop
.L43:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_size_t_free
	movl	-32(%rbp), %eax
.L34:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_size_t_priority_queue_int, .-test_size_t_priority_queue_int
	.section	.rodata
	.align 32
	.type	test_size_t_priority_counts, @object
	.size	test_size_t_priority_counts, 32
test_size_t_priority_counts:
	.long	10
	.long	11
	.long	6
	.long	5
	.long	3
	.long	1
	.long	2
	.long	7500
	.text
	.type	test_size_t_priority_queue, @function
test_size_t_priority_queue:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	andl	$7, %eax
	movl	%eax, -4(%rbp)
	movl	-36(%rbp), %eax
	cltq
	shrq	$3, %rax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1431655766, %rdx, %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, -12(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, -16(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movslq	%edx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rcx
	movl	%edx, %eax
	sarl	$31, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, -20(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$715827883, %rdx, %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	test_size_t_priority_counts(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %r8d
	movl	-12(%rbp), %edi
	movl	-20(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%eax, %edi
	call	test_size_t_priority_queue_int
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_size_t_priority_queue, .-test_size_t_priority_queue
	.type	test_large_priority_queue, @function
test_large_priority_queue:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$5000, %ecx
	movl	$500000, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	test_size_t_priority_queue_int
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_large_priority_queue, .-test_large_priority_queue
	.type	ossl_pqueue_INFO_new, @function
ossl_pqueue_INFO_new:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	ossl_pqueue_INFO_new, .-ossl_pqueue_INFO_new
	.type	ossl_pqueue_INFO_free, @function
ossl_pqueue_INFO_free:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	ossl_pqueue_INFO_free, .-ossl_pqueue_INFO_free
	.type	ossl_pqueue_INFO_push, @function
ossl_pqueue_INFO_push:
.LFB489:
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
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	ossl_pqueue_INFO_push, .-ossl_pqueue_INFO_push
	.type	ossl_pqueue_INFO_pop, @function
ossl_pqueue_INFO_pop:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_pop@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	ossl_pqueue_INFO_pop, .-ossl_pqueue_INFO_pop
	.type	ossl_pqueue_INFO_remove, @function
ossl_pqueue_INFO_remove:
.LFB492:
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
	call	ossl_pqueue_remove@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	ossl_pqueue_INFO_remove, .-ossl_pqueue_INFO_remove
	.type	cmp, @function
cmp:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L80
	movl	$-1, %eax
	jmp	.L81
.L80:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L82
	movl	$1, %eax
	jmp	.L81
.L82:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L83
	movl	$-1, %eax
	jmp	.L81
.L83:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L84
	movl	$1, %eax
	jmp	.L81
.L84:
	movl	$0, %eax
.L81:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	cmp, .-cmp
	.section	.rodata
	.align 8
.LC23:
	.string	"ossl_pqueue_INFO_push(pq, &infos[0], &infos[0].idx)"
.LC24:
	.string	"7"
.LC25:
	.string	"infos[0].idx"
	.align 8
.LC26:
	.string	"ossl_pqueue_INFO_remove(pq, infos[0].idx)"
	.align 8
.LC27:
	.string	"ossl_pqueue_INFO_push(pq, &infos[1], &infos[1].idx)"
.LC28:
	.string	"infos[1].idx"
	.align 8
.LC29:
	.string	"ossl_pqueue_INFO_remove(pq, infos[1].idx)"
	.align 8
.LC30:
	.string	"ossl_pqueue_INFO_push(pq, &infos[2], &infos[2].idx)"
.LC31:
	.string	"infos[2].idx"
	.align 8
.LC32:
	.string	"ossl_pqueue_INFO_push(pq, &infos[3], &infos[3].idx)"
.LC33:
	.string	"6"
.LC34:
	.string	"infos[3].idx"
	.align 8
.LC35:
	.string	"ossl_pqueue_INFO_push(pq, &infos[4], &infos[4].idx)"
.LC36:
	.string	"5"
.LC37:
	.string	"infos[4].idx"
	.align 8
.LC38:
	.string	"ossl_pqueue_INFO_push(pq, &infos[5], &infos[5].idx)"
.LC39:
	.string	"4"
.LC40:
	.string	"infos[5].idx"
	.align 8
.LC41:
	.string	"ossl_pqueue_INFO_push(pq, &infos[6], &infos[6].idx)"
.LC42:
	.string	"3"
.LC43:
	.string	"infos[6].idx"
	.align 8
.LC44:
	.string	"ossl_pqueue_INFO_push(pq, &infos[7], &infos[7].idx)"
.LC45:
	.string	"2"
.LC46:
	.string	"infos[7].idx"
	.align 8
.LC47:
	.string	"ossl_pqueue_INFO_push(pq, &infos[8], &infos[8].idx)"
.LC48:
	.string	"1"
.LC49:
	.string	"infos[8].idx"
.LC50:
	.string	"ossl_pqueue_INFO_pop(pq)"
	.text
	.type	test_22644, @function
test_22644:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$808, %rsp
	.cfi_offset 3, -24
	movl	$0, -28(%rbp)
	leaq	cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_new
	movq	%rax, -40(%rbp)
	leaq	-816(%rbp), %rax
	movl	$768, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	$0, -24(%rbp)
	jmp	.L86
.L87:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	leaq	-792(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	addq	$1, -24(%rbp)
.L86:
	cmpq	$31, -24(%rbp)
	jbe	.L87
	movabsq	$70650219160667140, %rax
	movq	%rax, -816(%rbp)
	leaq	-816(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-816(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$192, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L110
	movq	-800(%rbp), %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$7, %r9d
	movq	%rsi, %r8
	movl	$193, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L110
	movq	-800(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_remove
	movq	%rax, %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L110
	movabsq	$289360691352306692, %rbx
	movq	%rbx, -792(%rbp)
	leaq	-816(%rbp), %rax
	leaq	40(%rax), %rdx
	leaq	-816(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$198, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L111
	movq	-776(%rbp), %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$7, %r9d
	movq	%rsi, %r8
	movl	$199, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L111
	movq	-776(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_remove
	movq	%rax, %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L111
	movq	%rbx, -768(%rbp)
	leaq	-816(%rbp), %rax
	leaq	64(%rax), %rdx
	leaq	-816(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$204, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-752(%rbp), %rsi
	leaq	.LC24(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$7, %r9d
	movq	%rsi, %r8
	movl	$205, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L112
	movq	%rbx, -744(%rbp)
	leaq	-816(%rbp), %rax
	leaq	88(%rax), %rdx
	leaq	-816(%rbp), %rax
	leaq	72(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$209, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L113
	movq	-728(%rbp), %rsi
	leaq	.LC33(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$6, %r9d
	movq	%rsi, %r8
	movl	$210, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L113
	movq	%rbx, -720(%rbp)
	leaq	-816(%rbp), %rax
	leaq	112(%rax), %rdx
	leaq	-816(%rbp), %rax
	leaq	96(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$214, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L114
	movq	-704(%rbp), %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$5, %r9d
	movq	%rsi, %r8
	movl	$215, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L114
	movq	%rbx, -696(%rbp)
	leaq	-816(%rbp), %rax
	leaq	136(%rax), %rdx
	leaq	-816(%rbp), %rax
	leaq	120(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$219, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L115
	movq	-680(%rbp), %rsi
	leaq	.LC39(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$220, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L115
	movq	%rbx, -672(%rbp)
	leaq	-816(%rbp), %rax
	leaq	160(%rax), %rdx
	leaq	-816(%rbp), %rax
	leaq	144(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$224, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L116
	movq	-656(%rbp), %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$225, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L116
	movq	%rbx, -648(%rbp)
	leaq	-816(%rbp), %rax
	leaq	184(%rax), %rdx
	leaq	-816(%rbp), %rax
	leaq	168(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$229, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L117
	movq	-632(%rbp), %rsi
	leaq	.LC45(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$2, %r9d
	movq	%rsi, %r8
	movl	$230, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L117
	movq	%rbx, -624(%rbp)
	leaq	-816(%rbp), %rax
	leaq	208(%rax), %rdx
	leaq	-816(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$234, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L118
	movq	-608(%rbp), %rsi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$235, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L118
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_pop
	movq	%rax, %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$238, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L119
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_pop
	movq	%rax, %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$239, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L119
	movl	$1, -28(%rbp)
	jmp	.L90
.L110:
	nop
	jmp	.L90
.L111:
	nop
	jmp	.L90
.L112:
	nop
	jmp	.L90
.L113:
	nop
	jmp	.L90
.L114:
	nop
	jmp	.L90
.L115:
	nop
	jmp	.L90
.L116:
	nop
	jmp	.L90
.L117:
	nop
	jmp	.L90
.L118:
	nop
	jmp	.L90
.L119:
	nop
.L90:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pqueue_INFO_free
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	test_22644, .-test_22644
	.section	.rodata
.LC51:
	.string	"test_size_t_priority_queue"
.LC52:
	.string	"test_large_priority_queue"
.LC53:
	.string	"test_22644"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_size_t_priority_queue(%rip), %rsi
	leaq	.LC51(%rip), %rax
	movl	$1, %ecx
	movl	$1152, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_large_priority_queue(%rip), %rdx
	leaq	.LC52(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_22644(%rip), %rdx
	leaq	.LC53(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC54:
	.string	"unordered"
.LC55:
	.string	"ascending"
.LC56:
	.string	"descending"
	.section	.data.rel.local,"aw"
	.align 16
	.type	orders.3, @object
	.size	orders.3, 24
orders.3:
	.quad	.LC54
	.quad	.LC55
	.quad	.LC56
	.local	values.2
	.comm	values.2,4000000,32
	.local	sorted.1
	.comm	sorted.1,4000000,32
	.local	ref.0
	.comm	ref.0,4000000,32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
