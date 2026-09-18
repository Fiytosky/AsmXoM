	.file	"stanza.c"
	.text
	.section	.rodata
.LC0:
	.string	"Reading %s"
.LC1:
	.string	"../test/testutil/stanza.c"
.LC2:
	.string	"r"
	.align 8
.LC3:
	.string	"s->fp = BIO_new_file(testfile, \"r\")"
	.text
	.globl	test_start_file
	.type	test_start_file, @function
test_start_file:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$21, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	set_test_title@PLT
	movq	-8(%rbp), %rax
	movl	$6544, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	.LC2(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$24, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_start_file, .-test_start_file
	.section	.rodata
	.align 8
.LC4:
	.string	"Completed %d tests with %d errors and %d skipped"
	.text
	.globl	test_end_file
	.type	test_end_file, @function
test_end_file:
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
	movl	32(%rax), %esi
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%esi, %r9d
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$32, %esi
	movl	$0, %eax
	call	test_info@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_end_file, .-test_end_file
	.section	.rodata
.LC5:
	.string	"s->key = BIO_new(BIO_s_mem())"
.LC6:
	.string	"0"
.LC7:
	.string	"BIO_reset(s->key)"
.LC8:
	.string	"BIO_puts(s->key, tmpbuf)"
.LC9:
	.string	"-----END"
.LC10:
	.string	"Can't find key end"
	.text
	.type	read_key, @function
read_key:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	2440(%rax), %rax
	testq	%rax, %rax
	jne	.L7
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	-136(%rbp), %rdx
	movq	%rax, 2440(%rdx)
	movq	-136(%rbp), %rax
	movq	2440(%rax), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$46, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L13
.L7:
	movq	-136(%rbp), %rax
	movq	2440(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$48, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-136(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-136(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-136(%rbp), %rax
	movq	2440(%rax), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L11
	movl	$0, %eax
	jmp	.L13
.L11:
	leaq	.LC9(%rip), %rcx
	leaq	-128(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$1, %eax
	jmp	.L13
.L10:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-128(%rbp), %rcx
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	testl	%eax, %eax
	jne	.L12
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	read_key, .-read_key
	.type	strip_spaces, @function
strip_spaces:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L15
.L17:
	addq	$1, -24(%rbp)
.L15:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L16
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L17
.L16:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L20
.L22:
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
.L20:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L21
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L22
.L21:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L23
	movq	-24(%rbp), %rax
	jmp	.L19
.L23:
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	strip_spaces, .-strip_spaces
	.section	.rodata
.LC11:
	.string	"p = strchr(s->buff, '\\n')"
.LC12:
	.string	"Line %d too long"
.LC13:
	.string	"equals = strchr(s->buff, '=')"
.LC14:
	.string	"Missing = at line %d\n"
.LC15:
	.string	"key = strip_spaces(s->buff)"
.LC16:
	.string	"Empty field at line %d\n"
.LC17:
	.string	""
.LC18:
	.string	"Title"
	.align 8
.LC19:
	.string	"Starting \"%s\" tests at line %d"
.LC20:
	.string	"PrivateKey"
.LC21:
	.string	"PublicKey"
.LC22:
	.string	"TESTMAXPAIRS"
.LC23:
	.string	"s->numpairs++"
.LC24:
	.string	"pp->key = OPENSSL_strdup(key)"
	.align 8
.LC25:
	.string	"pp->value = OPENSSL_strdup(value)"
	.text
	.globl	test_readstanza
	.type	test_readstanza, @function
test_readstanza:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 36(%rax)
	jmp	.L26
.L41:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-56(%rbp), %rax
	addq	$2448, %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$94, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L27
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$95, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	movzbl	2448(%rax), %eax
	testb	%al, %al
	je	.L42
	movq	-56(%rbp), %rax
	movzbl	2448(%rax), %eax
	cmpb	$35, %al
	jne	.L31
	jmp	.L26
.L31:
	movq	-56(%rbp), %rax
	addq	$2448, %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$109, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L32
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$110, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L28
.L32:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	addq	$2448, %rax
	movq	%rax, %rdi
	call	strip_spaces
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$114, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L33
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$115, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L28
.L33:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strip_spaces
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L34
	leaq	.LC17(%rip), %rax
	movq	%rax, -16(%rbp)
.L34:
	leaq	.LC18(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L35
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$122, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L26
.L35:
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L36
	movq	-56(%rbp), %rax
	movl	16(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 20(%rax)
.L36:
	leaq	.LC20(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L37
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	read_key
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L28
.L37:
	leaq	.LC21(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L38
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	read_key
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L28
.L38:
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	leal	1(%rax), %ecx
	movq	-56(%rbp), %rdx
	movl	%ecx, 36(%rdx)
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	$150, %r9d
	movl	%eax, %r8d
	movl	$138, %esi
	call	test_int_lt@PLT
	testl	%eax, %eax
	je	.L39
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$139, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$139, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L39
	leaq	.LC1(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$140, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$140, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L40
.L39:
	movl	$0, %eax
	jmp	.L28
.L40:
	addq	$16, -8(%rbp)
.L26:
	movq	-56(%rbp), %rax
	leaq	2448(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
	testl	%eax, %eax
	jne	.L41
	jmp	.L30
.L42:
	nop
.L30:
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_readstanza, .-test_readstanza
	.globl	test_clearstanza
	.type	test_clearstanza, @function
test_clearstanza:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -12(%rbp)
	jmp	.L44
.L45:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$155, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$156, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addq	$16, -8(%rbp)
.L44:
	subl	$1, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L45
	movq	-24(%rbp), %rax
	movl	$0, 36(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_clearstanza, .-test_clearstanza
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
