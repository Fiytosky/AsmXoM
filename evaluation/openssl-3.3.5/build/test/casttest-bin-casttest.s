	.file	"casttest.c"
	.text
	.data
	.align 16
	.type	k, @object
	.size	k, 16
k:
	.base64	"ASNFZxI0VngjRWeJNFZ4mg=="
	.align 8
	.type	in, @object
	.size	in, 8
in:
	.base64	"ASNFZ4mrze8="
	.align 8
	.type	k_len, @object
	.size	k_len, 12
k_len:
	.long	16
	.long	10
	.long	5
	.align 16
	.type	c, @object
	.size	c, 24
c:
	.base64	"I4tP5YR+RLI="
	.base64	"62pxGiwCJxs="
	.base64	"esgW0W6bMC4="
	.align 16
	.type	in_a, @object
	.size	in_a, 16
in_a:
	.base64	"ASNFZxI0VngjRWeJNFZ4mg=="
	.align 16
	.type	in_b, @object
	.size	in_b, 16
in_b:
	.base64	"ASNFZxI0VngjRWeJNFZ4mg=="
	.align 16
	.type	c_a, @object
	.size	c_a, 16
c_a:
	.base64	"7qnQokn9O6azQ2+4nW3Kkg=="
	.align 16
	.type	c_b, @object
	.size	c_b, 16
c_b:
	.base64	"sslesAwxrXGArAW46D1pbg=="
	.section	.rodata
.LC0:
	.string	"c[z]"
.LC1:
	.string	"out"
.LC2:
	.string	"../test/casttest.c"
	.align 8
.LC3:
	.string	"CAST_ENCRYPT iteration %d failed (len=%d)"
.LC4:
	.string	"in"
	.align 8
.LC5:
	.string	"CAST_DECRYPT iteration %d failed (len=%d)"
	.text
	.type	cast_test_vector, @function
cast_test_vector:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movl	%edi, -228(%rbp)
	movl	$1, -4(%rbp)
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	k_len(%rip), %rax
	movl	(%rdx,%rax), %ecx
	leaq	k(%rip), %rdx
	leaq	-144(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	CAST_set_key@PLT
	leaq	-144(%rbp), %rdx
	leaq	-224(%rbp), %rax
	leaq	in(%rip), %rdi
	movl	$1, %ecx
	movq	%rax, %rsi
	call	CAST_ecb_encrypt@PLT
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	c(%rip), %rax
	leaq	(%rdx,%rax), %rsi
	leaq	-224(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$8
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$71, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L2
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	k_len(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-228(%rbp), %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$72, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, -4(%rbp)
.L2:
	leaq	-144(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	CAST_ecb_encrypt@PLT
	leaq	-224(%rbp), %rdi
	leaq	.LC4(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$8
	leaq	in(%rip), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L3
	movl	-228(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	k_len(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-228(%rbp), %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$78, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	cast_test_vector, .-cast_test_vector
	.section	.rodata
.LC6:
	.string	"c_a"
.LC7:
	.string	"out_a"
.LC8:
	.string	"c_b"
.LC9:
	.string	"out_b"
	.text
	.type	cast_test_iterations, @function
cast_test_iterations:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movl	$1, -12(%rbp)
	movq	in_a(%rip), %rax
	movq	8+in_a(%rip), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	in_b(%rip), %rax
	movq	8+in_b(%rip), %rdx
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L6
.L7:
	leaq	-320(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	CAST_set_key@PLT
	leaq	-288(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	leaq	-304(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	CAST_ecb_encrypt@PLT
	leaq	-288(%rbp), %rax
	leaq	-304(%rbp), %rdx
	leaq	8(%rdx), %rsi
	leaq	-304(%rbp), %rdx
	leaq	8(%rdx), %rdi
	movl	$1, %ecx
	movq	%rax, %rdx
	call	CAST_ecb_encrypt@PLT
	leaq	-304(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	CAST_set_key@PLT
	leaq	-144(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	CAST_ecb_encrypt@PLT
	leaq	-144(%rbp), %rax
	leaq	-320(%rbp), %rdx
	leaq	8(%rdx), %rsi
	leaq	-320(%rbp), %rdx
	leaq	8(%rdx), %rdi
	movl	$1, %ecx
	movq	%rax, %rdx
	call	CAST_ecb_encrypt@PLT
	addq	$1, -8(%rbp)
.L6:
	cmpq	$999999, -8(%rbp)
	jle	.L7
	leaq	-304(%rbp), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$16
	leaq	c_a(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$103, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L8
	leaq	-320(%rbp), %rdi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$16
	leaq	c_b(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$104, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L9
.L8:
	movl	$0, -12(%rbp)
.L9:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	cast_test_iterations, .-cast_test_iterations
	.section	.rodata
.LC10:
	.string	"cast_test_vector"
.LC11:
	.string	"cast_test_iterations"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	cast_test_vector(%rip), %rsi
	leaq	.LC10(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	cast_test_iterations(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
