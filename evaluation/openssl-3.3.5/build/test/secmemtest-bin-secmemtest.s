	.file	"secmemtest.c"
	.text
	.section	.rodata
.LC0:
	.string	"Secure memory is implemented."
.LC1:
	.string	"../test/secmemtest.c"
.LC2:
	.string	"s"
.LC3:
	.string	"CRYPTO_secure_allocated(s)"
.LC4:
	.string	"r"
	.align 8
.LC5:
	.string	"CRYPTO_secure_malloc_init(4096, 32)"
.LC6:
	.string	"CRYPTO_secure_allocated(r)"
.LC7:
	.string	"p"
.LC8:
	.string	"CRYPTO_secure_allocated(p)"
.LC9:
	.string	"32"
.LC10:
	.string	"CRYPTO_secure_used()"
.LC11:
	.string	"q"
.LC12:
	.string	"CRYPTO_secure_allocated(q)"
.LC13:
	.string	"64"
.LC14:
	.string	"CRYPTO_secure_malloc_done()"
	.align 8
.LC15:
	.string	"CRYPTO_secure_malloc_initialized()"
.LC16:
	.string	"0"
	.align 8
.LC17:
	.string	"Possible infinite loop: allocate more than available"
	.align 8
.LC18:
	.string	"CRYPTO_secure_malloc_init(32768, 16)"
	.align 8
.LC19:
	.string	"OPENSSL_secure_malloc((size_t)-1)"
	.align 8
.LC20:
	.string	"CRYPTO_secure_malloc_init(16, 16)"
	.text
	.type	test_sec_mem, @function
test_sec_mem:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$21, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC1(%rip), %rax
	movl	$23, %edx
	movq	%rax, %rsi
	movl	$20, %edi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$25, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$26, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L21
	leaq	.LC1(%rip), %rax
	movl	$28, %edx
	movq	%rax, %rsi
	movl	$20, %edi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$30, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L22
	movl	$32, %esi
	movl	$4096, %edi
	call	CRYPTO_secure_malloc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$31, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L22
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$32, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L22
	leaq	.LC1(%rip), %rax
	movl	$34, %edx
	movq	%rax, %rsi
	movl	$20, %edi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$37, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L23
	call	CRYPTO_secure_used@PLT
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$32, %r9d
	movq	%rsi, %r8
	movl	$39, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L23
	leaq	.LC1(%rip), %rax
	movl	$41, %edx
	movq	%rax, %rsi
	movl	$20, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$42, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$45, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L25
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$47, %ecx
	movl	$20, %esi
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	leaq	.LC1(%rip), %rax
	movl	$48, %edx
	movq	%rax, %rsi
	movl	$20, %edi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$49, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L26
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$51, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	call	CRYPTO_secure_used@PLT
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$64, %r9d
	movq	%rsi, %r8
	movl	$53, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L26
	leaq	.LC1(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$55, %ecx
	movl	$20, %esi
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	movq	$0, -16(%rbp)
	call	CRYPTO_secure_used@PLT
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$32, %r9d
	movq	%rsi, %r8
	movl	$58, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L27
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$60, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
	call	CRYPTO_secure_malloc_done@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$63, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L28
	call	CRYPTO_secure_malloc_initialized@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$64, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_free@PLT
	movq	$0, -40(%rbp)
	call	CRYPTO_secure_used@PLT
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L29
	call	CRYPTO_secure_malloc_done@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$70, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L29
	call	CRYPTO_secure_malloc_initialized@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L29
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$74, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$16, %esi
	movl	$32768, %edi
	call	CRYPTO_secure_malloc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$75, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L30
	leaq	.LC1(%rip), %rax
	movl	$77, %edx
	movq	%rax, %rsi
	movq	$-1, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	call	CRYPTO_secure_malloc_done@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$78, %esi
	call	test_true@PLT
	movl	$16, %esi
	movl	$16, %edi
	call	CRYPTO_secure_malloc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$84, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L19
	call	CRYPTO_secure_malloc_initialized@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$85, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L19
	call	CRYPTO_secure_malloc_done@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_true@PLT
	jmp	.L4
.L19:
	movl	$1, -4(%rbp)
	jmp	.L4
.L21:
	nop
	jmp	.L4
.L22:
	nop
	jmp	.L4
.L23:
	nop
	jmp	.L4
.L24:
	nop
	jmp	.L4
.L25:
	nop
	jmp	.L4
.L26:
	nop
	jmp	.L4
.L27:
	nop
	jmp	.L4
.L28:
	nop
	jmp	.L4
.L29:
	nop
	jmp	.L4
.L30:
	nop
.L4:
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$124, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$125, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$126, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$127, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_sec_mem, .-test_sec_mem
	.section	.rodata
	.align 8
.LC21:
	.string	"p = OPENSSL_secure_malloc(size)"
.LC22:
	.string	"p[i]"
	.text
	.type	test_sec_mem_clear, @function
test_sec_mem_clear:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$64, -20(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$32, %esi
	movl	$4096, %edi
	call	CRYPTO_secure_malloc_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$143, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movl	-20(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$144, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$144, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L44
	movl	$0, -12(%rbp)
	jmp	.L35
.L37:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L45
	addl	$1, -12(%rbp)
.L35:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L37
	movl	$0, -12(%rbp)
	jmp	.L38
.L39:
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leal	33(%rcx), %edx
	movb	%dl, (%rax)
	addl	$1, -12(%rbp)
.L38:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L39
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$154, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_free@PLT
	movl	$16, -12(%rbp)
	jmp	.L40
.L43:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$164, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	addl	$1, -12(%rbp)
.L40:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L43
	movl	$1, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L34
.L44:
	nop
	jmp	.L34
.L45:
	nop
.L34:
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$170, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_free@PLT
	call	CRYPTO_secure_malloc_done@PLT
	movl	-16(%rbp), %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_sec_mem_clear, .-test_sec_mem_clear
	.section	.rodata
.LC23:
	.string	"test_sec_mem"
.LC24:
	.string	"test_sec_mem_clear"
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
	leaq	test_sec_mem(%rip), %rdx
	leaq	.LC23(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sec_mem_clear(%rip), %rdx
	leaq	.LC24(%rip), %rax
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
