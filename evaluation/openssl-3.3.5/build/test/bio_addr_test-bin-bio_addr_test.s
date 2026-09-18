	.file	"bio_addr_test.c"
	.text
	.data
	.align 8
	.type	families, @object
	.size	families, 12
families:
	.long	2
	.long	10
	.long	1
	.section	.rodata
.LC0:
	.string	"Unsupported address family"
.LC1:
	.string	"../test/bio_addr_test.c"
.LC2:
	.string	"addr"
	.align 8
.LC3:
	.string	"BIO_ADDR_rawmake(addr, family, where, wherelen, 1000)"
	.text
	.type	make_dummy_addr, @function
make_dummy_addr:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -148(%rbp)
	cmpl	$10, -148(%rbp)
	je	.L2
	cmpl	$10, -148(%rbp)
	jg	.L3
	cmpl	$1, -148(%rbp)
	je	.L4
	cmpl	$2, -148(%rbp)
	jne	.L3
	leaq	-144(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	$4, -16(%rbp)
	jmp	.L5
.L2:
	leaq	-144(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	$16, -16(%rbp)
	jmp	.L5
.L4:
	leaq	-144(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	$107, -16(%rbp)
	jmp	.L5
.L3:
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L9
.L5:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	memset@PLT
	call	BIO_ADDR_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$70, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L9
.L7:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	-148(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$1000, %r8d
	movq	%rax, %rdi
	call	BIO_ADDR_rawmake@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$73, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-24(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	make_dummy_addr, .-make_dummy_addr
	.section	.rodata
.LC4:
	.string	"adata"
.LC5:
	.string	"bdata"
	.text
	.type	bio_addr_is_eq, @function
bio_addr_is_eq:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L11
	movl	$1, %eax
	jmp	.L26
.L11:
	cmpq	$0, -72(%rbp)
	je	.L13
	cmpq	$0, -80(%rbp)
	jne	.L14
.L13:
	movl	$0, %eax
	jmp	.L26
.L14:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	movl	%eax, %ebx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_family@PLT
	cmpl	%eax, %ebx
	je	.L15
	movl	$0, %eax
	jmp	.L26
.L15:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movl	%eax, %ebx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	cmpw	%ax, %bx
	je	.L16
	movl	$0, %eax
	jmp	.L26
.L16:
	leaq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_rawaddress@PLT
	testl	%eax, %eax
	jne	.L17
	movl	$0, %eax
	jmp	.L26
.L17:
	leaq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_rawaddress@PLT
	testl	%eax, %eax
	je	.L27
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L20
	movl	$0, %eax
	jmp	.L26
.L20:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L21
	movl	$1, %eax
	jmp	.L26
.L21:
	movq	-48(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$114, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$115, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_rawaddress@PLT
	testl	%eax, %eax
	je	.L28
	movq	-56(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$120, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	leaq	-56(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_rawaddress@PLT
	testl	%eax, %eax
	je	.L29
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	jmp	.L19
.L27:
	nop
	jmp	.L19
.L28:
	nop
	jmp	.L19
.L29:
	nop
.L19:
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$127, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-36(%rbp), %eax
.L26:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	bio_addr_is_eq, .-bio_addr_is_eq
	.section	.rodata
.LC6:
	.string	"src"
.LC7:
	.string	"dst"
.LC8:
	.string	"BIO_ADDR_copy(dst, src)"
.LC9:
	.string	"bio_addr_is_eq(src, dst)"
	.text
	.type	test_bio_addr_copy_dup, @function
test_bio_addr_copy_dup:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-36(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -28(%rbp)
	sarl	-36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	families(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	make_dummy_addr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$141, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	cmpl	$0, -28(%rbp)
	je	.L33
	call	BIO_ADDR_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$146, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_copy@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$149, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L36
	jmp	.L35
.L33:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_dup@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$153, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L39
.L36:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	bio_addr_is_eq
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$157, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movl	$1, -12(%rbp)
	jmp	.L35
.L38:
	nop
	jmp	.L35
.L39:
	nop
	jmp	.L35
.L40:
	nop
.L35:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movl	-12(%rbp), %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_bio_addr_copy_dup, .-test_bio_addr_copy_dup
	.section	.rodata
.LC10:
	.string	"Error parsing test options\n"
.LC11:
	.string	"test_bio_addr_copy_dup"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L42
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$170, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L43
.L42:
	leaq	test_bio_addr_copy_dup(%rip), %rsi
	leaq	.LC11(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
