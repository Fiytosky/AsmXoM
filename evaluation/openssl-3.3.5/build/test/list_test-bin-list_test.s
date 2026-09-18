	.file	"list_test.c"
	.text
	.type	ossl_list_fizz_init, @function
ossl_list_fizz_init:
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
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	ossl_list_fizz_init, .-ossl_list_fizz_init
	.type	ossl_list_fizz_init_elem, @function
ossl_list_fizz_init_elem:
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
	addq	$8, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	ossl_list_fizz_init_elem, .-ossl_list_fizz_init_elem
	.type	ossl_list_fizz_is_empty, @function
ossl_list_fizz_is_empty:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	ossl_list_fizz_is_empty, .-ossl_list_fizz_is_empty
	.type	ossl_list_fizz_num, @function
ossl_list_fizz_num:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	ossl_list_fizz_num, .-ossl_list_fizz_num
	.type	ossl_list_fizz_head, @function
ossl_list_fizz_head:
.LFB472:
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
.LFE472:
	.size	ossl_list_fizz_head, .-ossl_list_fizz_head
	.type	ossl_list_fizz_tail, @function
ossl_list_fizz_tail:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	ossl_list_fizz_tail, .-ossl_list_fizz_tail
	.type	ossl_list_fizz_next, @function
ossl_list_fizz_next:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	ossl_list_fizz_next, .-ossl_list_fizz_next
	.type	ossl_list_fizz_prev, @function
ossl_list_fizz_prev:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	ossl_list_fizz_prev, .-ossl_list_fizz_prev
	.type	ossl_list_fizz_remove, @function
ossl_list_fizz_remove:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L16
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L16:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L17
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L17:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L18:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 16(%rax)
.L19:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	ossl_list_fizz_remove, .-ossl_list_fizz_remove
	.type	ossl_list_fizz_insert_tail, @function
ossl_list_fizz_insert_tail:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L21:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L22:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	ossl_list_fizz_insert_tail, .-ossl_list_fizz_insert_tail
	.type	ossl_list_buzz_init, @function
ossl_list_buzz_init:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	ossl_list_buzz_init, .-ossl_list_buzz_init
	.type	ossl_list_buzz_init_elem, @function
ossl_list_buzz_init_elem:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	ossl_list_buzz_init_elem, .-ossl_list_buzz_init_elem
	.type	ossl_list_buzz_num, @function
ossl_list_buzz_num:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	ossl_list_buzz_num, .-ossl_list_buzz_num
	.type	ossl_list_buzz_head, @function
ossl_list_buzz_head:
.LFB485:
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
.LFE485:
	.size	ossl_list_buzz_head, .-ossl_list_buzz_head
	.type	ossl_list_buzz_tail, @function
ossl_list_buzz_tail:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	ossl_list_buzz_tail, .-ossl_list_buzz_tail
	.type	ossl_list_buzz_remove, @function
ossl_list_buzz_remove:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L32
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L32:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L33
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L33:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L34:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L35:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	ossl_list_buzz_remove, .-ossl_list_buzz_remove
	.type	ossl_list_buzz_insert_head, @function
ossl_list_buzz_insert_head:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L37:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L38:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	ossl_list_buzz_insert_head, .-ossl_list_buzz_insert_head
	.section	.rodata
.LC0:
	.string	"ossl_list_fizz_is_empty(&a)"
.LC1:
	.string	"../test/list_test.c"
.LC2:
	.string	"na"
.LC3:
	.string	"ossl_list_fizz_num(&a)"
.LC4:
	.string	"nb"
.LC5:
	.string	"ossl_list_buzz_num(&b)"
.LC6:
	.string	"ossl_list_fizz_head(&a)"
.LC7:
	.string	"ossl_list_fizz_tail(&a)"
.LC8:
	.string	"ossl_list_buzz_head(&b)"
.LC9:
	.string	"ossl_list_buzz_tail(&b)"
.LC10:
	.string	"3"
.LC11:
	.string	"ossl_list_fizz_head(&a)->n"
.LC12:
	.string	"na * 3"
.LC13:
	.string	"ossl_list_fizz_tail(&a)->n"
.LC14:
	.string	"nb * 5"
.LC15:
	.string	"ossl_list_buzz_head(&b)->n"
.LC16:
	.string	"5"
.LC17:
	.string	"ossl_list_buzz_tail(&b)->n"
.LC18:
	.string	"--na"
.LC19:
	.string	"--nb"
.LC20:
	.string	"6"
.LC21:
	.string	"10"
	.align 8
.LC22:
	.string	"ossl_list_fizz_next(ossl_list_fizz_head(&a))"
	.align 8
.LC23:
	.string	"ossl_list_fizz_prev(ossl_list_fizz_tail(&a))"
.LC24:
	.string	"9"
	.align 8
.LC25:
	.string	"ossl_list_fizz_next(ossl_list_fizz_head(&a))->n"
.LC26:
	.string	"15"
	.align 8
.LC27:
	.string	"ossl_list_fizz_prev(ossl_list_fizz_tail(&a))->n"
	.text
	.type	test_fizzbuzz, @function
test_fizzbuzz:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$888, %rsp
	.cfi_offset 3, -24
	movl	$20, -32(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_init
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_buzz_init
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_is_empty
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$42, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L50
.L40:
	movl	$1, -20(%rbp)
	jmp	.L42
.L45:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	-896(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_init_elem
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	-896(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	ossl_list_buzz_init_elem
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-880(%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L43
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	-896(%rbp), %rax
	addq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_fizz_insert_tail
	addl	$1, -24(%rbp)
.L43:
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L44
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	-896(%rbp), %rax
	addq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_buzz_insert_head
	addl	$1, -28(%rbp)
.L44:
	addl	$1, -20(%rbp)
.L42:
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L45
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_is_empty
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$59, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L46
	movl	-24(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_num
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L46
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_buzz_num
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$61, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_head
	movq	%rax, %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_tail
	movq	%rax, %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_buzz_head
	movq	%rax, %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_buzz_tail
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_head
	movl	(%rax), %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$66, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	movl	-24(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ebx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_tail
	movl	(%rax), %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$67, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	leal	(%rax,%rdx), %ebx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_buzz_head
	movl	(%rax), %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_buzz_tail
	movl	(%rax), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L47
.L46:
	movl	$0, %eax
	jmp	.L50
.L47:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_head
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_fizz_remove
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_buzz_tail
	movq	%rax, %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_buzz_remove
	subl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_num
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$73, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L48
	subl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_buzz_num
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$74, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_head
	movq	%rax, %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$75, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_buzz_tail
	movq	%rax, %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_head
	movl	(%rax), %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_buzz_tail
	movl	(%rax), %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$10, %r9d
	movl	%esi, %r8d
	movl	$78, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_head
	movq	%rax, %rdi
	call	ossl_list_fizz_next
	movq	%rax, %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_tail
	movq	%rax, %rdi
	call	ossl_list_fizz_prev
	movq	%rax, %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_head
	movq	%rax, %rdi
	call	ossl_list_fizz_next
	movl	(%rax), %esi
	leaq	.LC24(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$9, %r9d
	movl	%esi, %r8d
	movl	$81, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_fizz_tail
	movq	%rax, %rdi
	call	ossl_list_fizz_prev
	movl	(%rax), %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$15, %r9d
	movl	%esi, %r8d
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L49
.L48:
	movl	$0, %eax
	jmp	.L50
.L49:
	movl	$1, %eax
.L50:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	test_fizzbuzz, .-test_fizzbuzz
	.type	ossl_list_int_init, @function
ossl_list_int_init:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	ossl_list_int_init, .-ossl_list_int_init
	.type	ossl_list_int_init_elem, @function
ossl_list_int_init_elem:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	ossl_list_int_init_elem, .-ossl_list_int_init_elem
	.type	ossl_list_int_num, @function
ossl_list_int_num:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	ossl_list_int_num, .-ossl_list_int_num
	.type	ossl_list_int_head, @function
ossl_list_int_head:
.LFB499:
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
.LFE499:
	.size	ossl_list_int_head, .-ossl_list_int_head
	.type	ossl_list_int_tail, @function
ossl_list_int_tail:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	ossl_list_int_tail, .-ossl_list_int_tail
	.type	ossl_list_int_next, @function
ossl_list_int_next:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	ossl_list_int_next, .-ossl_list_int_next
	.type	ossl_list_int_prev, @function
ossl_list_int_prev:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	ossl_list_int_prev, .-ossl_list_int_prev
	.type	ossl_list_int_remove, @function
ossl_list_int_remove:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L64
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L64:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L65
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L65:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L66:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 16(%rax)
.L67:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	ossl_list_int_remove, .-ossl_list_int_remove
	.type	ossl_list_int_insert_head, @function
ossl_list_int_insert_head:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L69:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L70:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	ossl_list_int_insert_head, .-ossl_list_int_insert_head
	.type	ossl_list_int_insert_tail, @function
ossl_list_int_insert_tail:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L72:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L73
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L73:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	ossl_list_int_insert_tail, .-ossl_list_int_insert_tail
	.type	ossl_list_int_insert_before, @function
ossl_list_int_insert_before:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L75:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L76
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L76:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	ossl_list_int_insert_before, .-ossl_list_int_insert_before
	.type	ossl_list_int_insert_after, @function
ossl_list_int_insert_after:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L78:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L79
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L79:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	ossl_list_int_insert_after, .-ossl_list_int_insert_after
	.section	.rodata
.LC28:
	.string	"7"
.LC29:
	.string	"ossl_list_int_num(&l)"
.LC30:
	.string	"n"
.LC31:
	.string	"c->n"
.LC32:
	.string	"8 - n"
.LC33:
	.string	"d->n"
.LC34:
	.string	"c"
.LC35:
	.string	"d"
.LC36:
	.string	"7 - n"
.LC37:
	.string	"ossl_list_int_head(&l)"
.LC38:
	.string	"ossl_list_int_tail(&l)"
.LC39:
	.string	"ossl_list_int_head(&l)->n"
.LC40:
	.string	"ossl_list_int_tail(&l)->n"
.LC41:
	.string	"0"
	.text
	.type	test_insert, @function
test_insert:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$544, %rsp
	movl	$1, -28(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_init
	movq	$0, -24(%rbp)
	jmp	.L81
.L82:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	-544(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	ossl_list_int_init_elem
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$544, %rax
	movl	%ecx, (%rax)
	addq	$1, -24(%rbp)
.L81:
	cmpq	$19, -24(%rbp)
	jbe	.L82
	leaq	-544(%rbp), %rax
	addq	$72, %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_int_insert_head
	leaq	-544(%rbp), %rax
	addq	$144, %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_int_insert_tail
	leaq	-544(%rbp), %rdx
	addq	$120, %rdx
	leaq	-544(%rbp), %rax
	addq	$144, %rax
	leaq	-64(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_list_int_insert_before
	leaq	-544(%rbp), %rdx
	addq	$24, %rdx
	leaq	-544(%rbp), %rax
	addq	$72, %rax
	leaq	-64(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_list_int_insert_before
	leaq	-544(%rbp), %rdx
	addq	$48, %rdx
	leaq	-544(%rbp), %rax
	addq	$24, %rax
	leaq	-64(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_list_int_insert_after
	leaq	-544(%rbp), %rdx
	addq	$168, %rdx
	leaq	-544(%rbp), %rax
	addq	$144, %rax
	leaq	-64(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_list_int_insert_after
	leaq	-544(%rbp), %rdx
	addq	$96, %rdx
	leaq	-544(%rbp), %rax
	addq	$72, %rax
	leaq	-64(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_list_int_insert_after
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_num
	movq	%rax, %rsi
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movq	%rsi, %r8
	movl	$117, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L105
.L83:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_head
	movq	%rax, -8(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_tail
	movq	%rax, -16(%rbp)
	jmp	.L85
.L89:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	-28(%rbp), %edi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$122, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L86
	movl	$8, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$122, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L87
.L86:
	movl	$0, %eax
	jmp	.L105
.L87:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_next
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_prev
	movq	%rax, -16(%rbp)
	addl	$1, -28(%rbp)
.L85:
	cmpq	$0, -8(%rbp)
	je	.L88
	cmpq	$0, -16(%rbp)
	jne	.L89
.L88:
	movq	-8(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$128, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L90
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$128, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L91
.L90:
	movl	$0, %eax
	jmp	.L105
.L91:
	leaq	-544(%rbp), %rax
	addq	$24, %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_int_remove
	leaq	-544(%rbp), %rax
	addq	$144, %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_int_remove
	leaq	-544(%rbp), %rax
	addq	$168, %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_int_remove
	movl	$2, -28(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_head
	movq	%rax, -8(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_tail
	movq	%rax, -16(%rbp)
	jmp	.L92
.L96:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movl	-28(%rbp), %edi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$139, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L93
	movl	$7, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$139, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L94
.L93:
	movl	$0, %eax
	jmp	.L105
.L94:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_next
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_prev
	movq	%rax, -16(%rbp)
	addl	$1, -28(%rbp)
.L92:
	cmpq	$0, -8(%rbp)
	je	.L95
	cmpq	$0, -16(%rbp)
	jne	.L96
.L95:
	movq	-8(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$145, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L97
	movq	-16(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$145, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L98
.L97:
	movl	$0, %eax
	jmp	.L105
.L98:
	leaq	-544(%rbp), %rax
	addq	$48, %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_int_remove
	leaq	-544(%rbp), %rax
	addq	$96, %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_int_remove
	leaq	-544(%rbp), %rax
	addq	$72, %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_int_remove
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_head
	movq	%rax, %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L99
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_tail
	movq	%rax, %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$153, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L99
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_head
	movl	(%rax), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$154, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L99
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_tail
	movl	(%rax), %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$155, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L100
.L99:
	movl	$0, %eax
	jmp	.L105
.L100:
	leaq	-544(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_int_insert_head
	leaq	-544(%rbp), %rax
	addq	$120, %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_list_int_remove
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_head
	movq	%rax, %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_tail
	movq	%rax, %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$162, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L101
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_head
	movl	(%rax), %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$163, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L101
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_tail
	movl	(%rax), %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$164, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L102
.L101:
	movl	$0, %eax
	jmp	.L105
.L102:
	leaq	-544(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_list_int_remove
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_head
	movq	%rax, %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L103
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_list_int_tail
	movq	%rax, %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L104
.L103:
	movl	$0, %eax
	jmp	.L105
.L104:
	movl	$1, %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	test_insert, .-test_insert
	.section	.rodata
.LC42:
	.string	"test_fizzbuzz"
.LC43:
	.string	"test_insert"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_fizzbuzz(%rip), %rdx
	leaq	.LC42(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_insert(%rip), %rdx
	leaq	.LC43(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
