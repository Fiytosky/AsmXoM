	.file	"params_conversion_test.c"
	.text
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"type"
.LC2:
	.string	"Line %d: multiple type lines"
	.align 8
.LC3:
	.string	"../test/params_conversion_test.c"
.LC4:
	.string	"Line %d: unknown type line"
.LC5:
	.string	"int32"
.LC6:
	.string	"Line %d: multiple int32 lines"
.LC7:
	.string	"invalid"
.LC8:
	.string	"int64"
.LC9:
	.string	"Line %d: multiple int64 lines"
.LC10:
	.string	"uint32"
	.align 8
.LC11:
	.string	"Line %d: multiple uint32 lines"
.LC12:
	.string	"uint64"
	.align 8
.LC13:
	.string	"Line %d: multiple uint64 lines"
.LC14:
	.string	"double"
	.align 8
.LC15:
	.string	"Line %d: multiple double lines"
.LC16:
	.string	"Line %d: unknown keyword %s"
	.align 8
.LC17:
	.string	"Line %d: extra characters at end '%s' for %s"
.LC18:
	.string	"Line %d: type not found"
.LC19:
	.string	"def_i32"
.LC20:
	.string	"pc->valid_i32"
.LC21:
	.string	"errant int32 on line %d"
.LC22:
	.string	"def_i64"
.LC23:
	.string	"pc->valid_i64"
.LC24:
	.string	"errant int64 on line %d"
.LC25:
	.string	"def_u32"
.LC26:
	.string	"pc->valid_u32"
.LC27:
	.string	"errant uint32 on line %d"
.LC28:
	.string	"def_u64"
.LC29:
	.string	"pc->valid_u64"
.LC30:
	.string	"errant uint64 on line %d"
.LC31:
	.string	"def_d"
.LC32:
	.string	"pc->valid_d"
.LC33:
	.string	"errant double on line %d"
.LC34:
	.string	"type unknown at line %d"
	.text
	.type	param_conversion_load_stanza, @function
param_conversion_load_stanza:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-80(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	$96, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -44(%rbp)
	jmp	.L2
.L18:
	leaq	.LC0(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L3
	cmpq	$0, -40(%rbp)
	je	.L4
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$63, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L36
.L4:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	params.11(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$68, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L36
.L3:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L7
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	je	.L8
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$73, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L36
.L8:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L6
	movq	-72(%rbp), %rax
	movl	$1, 48(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-56(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoimax@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L6
.L7:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L9
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	testl	%eax, %eax
	je	.L10
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L36
.L10:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L6
	movq	-72(%rbp), %rax
	movl	$1, 52(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-56(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoimax@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L6
.L9:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L11
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	je	.L12
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$91, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L36
.L12:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L6
	movq	-72(%rbp), %rax
	movl	$1, 56(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-56(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoumax@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L6
.L11:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L13
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	testl	%eax, %eax
	je	.L14
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$100, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L36
.L14:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L6
	movq	-72(%rbp), %rax
	movl	$1, 60(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-56(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoumax@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.L6
.L13:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L15
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	testl	%eax, %eax
	je	.L16
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$109, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L36
.L16:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L6
	movq	-72(%rbp), %rax
	movl	$1, 64(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtod@PLT
	movq	%xmm0, %rax
	movq	-72(%rbp), %rdx
	movq	%rax, 40(%rdx)
	jmp	.L6
.L15:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$117, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L36
.L6:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L17
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$121, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L36
.L17:
	addl	$1, -44(%rbp)
	addq	$16, -32(%rbp)
.L2:
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L18
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$127, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L19
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$128, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L36
.L19:
	leaq	.LC5(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L20
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$133, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-72(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$133, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L22
.L21:
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC21(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L36
.L22:
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, ref_i32.10(%rip)
	movl	ref_i32.10(%rip), %eax
	movl	%eax, datum_i32.9(%rip)
	movq	-72(%rbp), %rax
	leaq	datum_i32.9(%rip), %rdx
	movq	%rdx, 80(%rax)
	movq	-72(%rbp), %rax
	leaq	ref_i32.10(%rip), %rdx
	movq	%rdx, 72(%rax)
	movq	-72(%rbp), %rax
	movq	$4, 88(%rax)
	jmp	.L23
.L20:
	leaq	.LC8(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L24
	cmpl	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$142, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L25
	movq	-72(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$142, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L26
.L25:
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC24(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L36
.L26:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, ref_i64.8(%rip)
	movq	ref_i64.8(%rip), %rax
	movq	%rax, datum_i64.7(%rip)
	movq	-72(%rbp), %rax
	leaq	datum_i64.7(%rip), %rdx
	movq	%rdx, 80(%rax)
	movq	-72(%rbp), %rax
	leaq	ref_i64.8(%rip), %rdx
	movq	%rdx, 72(%rax)
	movq	-72(%rbp), %rax
	movq	$8, 88(%rax)
	jmp	.L23
.L24:
	leaq	.LC10(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L27
	cmpl	$0, -12(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$151, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L28
	movq	-72(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$151, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L29
.L28:
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC27(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L36
.L29:
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, ref_u32.6(%rip)
	movl	ref_u32.6(%rip), %eax
	movl	%eax, datum_u32.5(%rip)
	movq	-72(%rbp), %rax
	leaq	datum_u32.5(%rip), %rdx
	movq	%rdx, 80(%rax)
	movq	-72(%rbp), %rax
	leaq	ref_u32.6(%rip), %rdx
	movq	%rdx, 72(%rax)
	movq	-72(%rbp), %rax
	movq	$4, 88(%rax)
	jmp	.L23
.L27:
	leaq	.LC12(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L30
	cmpl	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$160, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L31
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$160, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L32
.L31:
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC30(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L36
.L32:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, ref_u64.4(%rip)
	movq	ref_u64.4(%rip), %rax
	movq	%rax, datum_u64.3(%rip)
	movq	-72(%rbp), %rax
	leaq	datum_u64.3(%rip), %rdx
	movq	%rdx, 80(%rax)
	movq	-72(%rbp), %rax
	leaq	ref_u64.4(%rip), %rdx
	movq	%rdx, 72(%rax)
	movq	-72(%rbp), %rax
	movq	$8, 88(%rax)
	jmp	.L23
.L30:
	leaq	.LC14(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L33
	cmpl	$0, -20(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC31(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$169, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L34
	movq	-72(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$169, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L35
.L34:
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC33(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-72(%rbp), %rax
	movsd	40(%rax), %xmm0
	movsd	%xmm0, ref_d.2(%rip)
	movsd	ref_d.2(%rip), %xmm0
	movsd	%xmm0, datum_d.1(%rip)
	movq	-72(%rbp), %rax
	leaq	datum_d.1(%rip), %rdx
	movq	%rdx, 80(%rax)
	movq	-72(%rbp), %rax
	leaq	ref_d.2(%rip), %rdx
	movq	%rdx, 72(%rax)
	movq	-72(%rbp), %rax
	movq	$8, 88(%rax)
	jmp	.L23
.L33:
	movq	-80(%rbp), %rax
	movl	16(%rax), %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$178, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L36
.L23:
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	param_conversion_load_stanza, .-param_conversion_load_stanza
	.section	.rodata
	.align 8
.LC35:
	.string	"OSSL_PARAM_get_int32(pc->param, &i32)"
.LC36:
	.string	"0"
.LC37:
	.string	"ERR_get_error()"
	.align 8
.LC38:
	.string	"unexpected valid conversion to int32 on line %d"
.LC39:
	.string	"i32 == pc->i32"
	.align 8
.LC40:
	.string	"unexpected conversion to int32 on line %d"
	.align 8
.LC41:
	.string	"OSSL_PARAM_set_int32(pc->param, i32)"
.LC42:
	.string	"pc->ref"
.LC43:
	.string	"pc->datum"
	.align 8
.LC44:
	.string	"unexpected valid conversion from int32 on line %d"
	.align 8
.LC45:
	.string	"OSSL_PARAM_get_int64(pc->param, &i64)"
	.align 8
.LC46:
	.string	"unexpected valid conversion to int64 on line %d"
.LC47:
	.string	"i64 == pc->i64"
	.align 8
.LC48:
	.string	"unexpected conversion to int64 on line %d"
	.align 8
.LC49:
	.string	"OSSL_PARAM_set_int64(pc->param, i64)"
	.align 8
.LC50:
	.string	"unexpected valid conversion from int64 on line %d"
	.align 8
.LC51:
	.string	"OSSL_PARAM_get_uint32(pc->param, &u32)"
	.align 8
.LC52:
	.string	"unexpected valid conversion to uint32 on line %d"
.LC53:
	.string	"u32 == pc->u32"
	.align 8
.LC54:
	.string	"unexpected conversion to uint32 on line %d"
	.align 8
.LC55:
	.string	"OSSL_PARAM_set_uint32(pc->param, u32)"
	.align 8
.LC56:
	.string	"unexpected valid conversion from uint32 on line %d"
	.align 8
.LC57:
	.string	"OSSL_PARAM_get_uint64(pc->param, &u64)"
	.align 8
.LC58:
	.string	"unexpected valid conversion to uint64 on line %d"
.LC59:
	.string	"u64 == pc->u64"
	.align 8
.LC60:
	.string	"unexpected conversion to uint64 on line %d"
	.align 8
.LC61:
	.string	"OSSL_PARAM_set_uint64(pc->param, u64)"
	.align 8
.LC62:
	.string	"unexpected valid conversion from uint64 on line %d"
	.align 8
.LC63:
	.string	"OSSL_PARAM_get_double(pc->param, &d)"
	.align 8
.LC64:
	.string	"unexpected valid conversion to double on line %d"
	.align 8
.LC65:
	.string	"unable to convert to double on line %d"
.LC66:
	.string	"pc->d == pc->d"
.LC67:
	.string	"unexpected NaN on line %d"
.LC68:
	.string	"d == pc->d"
	.align 8
.LC69:
	.string	"unexpected conversion to double on line %d"
	.align 8
.LC70:
	.string	"OSSL_PARAM_set_double(pc->param, d)"
	.align 8
.LC71:
	.string	"unexpected valid conversion from double on line %d"
	.text
	.type	param_conversion_test, @function
param_conversion_test:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jne	.L38
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-4(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$193, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L39
	call	ERR_get_error@PLT
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$194, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	jne	.L40
.L39:
	movl	-60(%rbp), %eax
	leaq	.LC38(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L38:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-4(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L42
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$200, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L43
.L42:
	movl	-60(%rbp), %eax
	leaq	.LC40(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L43:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$205, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	88(%rax), %r9
	movq	-56(%rbp), %rax
	movq	80(%rax), %r8
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC3(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$206, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L40
.L44:
	movl	-60(%rbp), %eax
	leaq	.LC44(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L40:
	movq	-56(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	jne	.L45
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$214, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L46
	call	ERR_get_error@PLT
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$215, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	jne	.L47
.L46:
	movl	-60(%rbp), %eax
	leaq	.LC46(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L45:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$220, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$221, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L49
.L48:
	movl	-60(%rbp), %eax
	leaq	.LC48(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L49:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$226, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L50
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	88(%rax), %r9
	movq	-56(%rbp), %rax
	movq	80(%rax), %r8
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC3(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$227, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L47
.L50:
	movl	-60(%rbp), %eax
	leaq	.LC50(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L47:
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L51
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-20(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$235, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L52
	call	ERR_get_error@PLT
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$236, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	jne	.L53
.L52:
	movl	-60(%rbp), %eax
	leaq	.LC52(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L51:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-20(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$241, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L54
	movq	-56(%rbp), %rax
	movl	24(%rax), %edx
	movl	-20(%rbp), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$242, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L55
.L54:
	movl	-60(%rbp), %eax
	leaq	.LC54(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L55:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-20(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC55(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$247, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	88(%rax), %r9
	movq	-56(%rbp), %rax
	movq	80(%rax), %r8
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC3(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$248, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L53
.L56:
	movl	-60(%rbp), %eax
	leaq	.LC56(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L53:
	movq	-56(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L57
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L58
	call	ERR_get_error@PLT
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$257, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	jne	.L59
.L58:
	movl	-60(%rbp), %eax
	leaq	.LC58(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L57:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$262, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$263, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L61
.L60:
	movl	-60(%rbp), %eax
	leaq	.LC60(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L61:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$268, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	88(%rax), %r9
	movq	-56(%rbp), %rax
	movq	80(%rax), %r8
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC3(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$269, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L59
.L62:
	movl	-60(%rbp), %eax
	leaq	.LC62(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L59:
	movq	-56(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	jne	.L63
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_double@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC63(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$277, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L64
	call	ERR_get_error@PLT
	movq	%rax, %rsi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$278, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	jne	.L65
.L64:
	movl	-60(%rbp), %eax
	leaq	.LC64(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L63:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_double@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC63(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$283, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L66
	movl	-60(%rbp), %eax
	leaq	.LC65(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L66:
	movsd	-40(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L72
	ucomisd	%xmm1, %xmm0
	je	.L67
.L72:
	movq	-56(%rbp), %rax
	movsd	40(%rax), %xmm0
	movq	-56(%rbp), %rax
	movsd	40(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	setnp	%al
	movl	$0, %edx
	ucomisd	%xmm1, %xmm0
	cmovne	%edx, %eax
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$300, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L69
	movl	-60(%rbp), %eax
	leaq	.LC67(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L67:
	movq	-56(%rbp), %rax
	movsd	40(%rax), %xmm0
	movsd	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	setnp	%al
	movl	$0, %edx
	ucomisd	%xmm1, %xmm0
	cmovne	%edx, %eax
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$304, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L69
	movl	-60(%rbp), %eax
	leaq	.LC69(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L69:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %xmm0
	movq	%rax, %rdi
	call	OSSL_PARAM_set_double@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$309, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	88(%rax), %r9
	movq	-56(%rbp), %rax
	movq	80(%rax), %r8
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC3(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$310, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L65
.L70:
	movl	-60(%rbp), %eax
	leaq	.LC71(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L71
.L65:
	movl	$1, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	param_conversion_test, .-param_conversion_test
	.section	.rodata
	.align 8
.LC72:
	.string	"s = OPENSSL_zalloc(sizeof(*s))"
	.text
	.type	run_param_file_tests, @function
run_param_file_tests:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -132(%rbp)
	movl	-132(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	test_get_argument@PLT
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	leaq	.LC3(%rip), %rax
	movl	$327, %edx
	movq	%rax, %rsi
	movl	$6544, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$327, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L83
.L74:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_start_file@PLT
	testl	%eax, %eax
	jne	.L77
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$330, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_readstanza@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, -4(%rbp)
	jmp	.L79
.L78:
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L80
	movq	-24(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	param_conversion_load_stanza
	testl	%eax, %eax
	je	.L81
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	leaq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	param_conversion_test
	testl	%eax, %eax
	jne	.L80
.L81:
	movl	$0, -4(%rbp)
.L80:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_clearstanza@PLT
.L77:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L82
	nop
.L79:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_end_file@PLT
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$347, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	run_param_file_tests, .-run_param_file_tests
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC73:
	.string	"Error parsing test options\n"
.LC74:
	.string	"run_param_file_tests"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L87
	leaq	.LC73(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$360, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L88
.L87:
	call	test_get_argument_count@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L89
	movl	$0, %eax
	jmp	.L88
.L89:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	leaq	run_param_file_tests(%rip), %rsi
	leaq	.LC74(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	setup_tests, .-setup_tests
	.section	.data.rel.local,"aw"
	.align 32
	.type	params.11, @object
	.size	params.11, 240
params.11:
	.quad	.LC5
	.long	1
	.zero	4
	.quad	datum_i32.9
	.quad	4
	.quad	-1
	.quad	.LC8
	.long	1
	.zero	4
	.quad	datum_i64.7
	.quad	8
	.quad	-1
	.quad	.LC10
	.long	2
	.zero	4
	.quad	datum_u32.5
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	2
	.zero	4
	.quad	datum_u64.3
	.quad	8
	.quad	-1
	.quad	.LC14
	.long	3
	.zero	4
	.quad	datum_d.1
	.quad	8
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.local	ref_i32.10
	.comm	ref_i32.10,4,4
	.local	datum_i32.9
	.comm	datum_i32.9,4,4
	.local	ref_i64.8
	.comm	ref_i64.8,8,8
	.local	datum_i64.7
	.comm	datum_i64.7,8,8
	.local	ref_u32.6
	.comm	ref_u32.6,4,4
	.local	datum_u32.5
	.comm	datum_u32.5,4,4
	.local	ref_u64.4
	.comm	ref_u64.4,8,8
	.local	datum_u64.3
	.comm	datum_u64.3,8,8
	.local	ref_d.2
	.comm	ref_d.2,8,8
	.local	datum_d.1
	.comm	datum_d.1,8,8
	.section	.rodata
.LC75:
	.string	"Usage: %s [options] file...\n"
.LC76:
	.string	"Valid options are:\n"
.LC77:
	.string	"help"
.LC78:
	.string	"Display this summary"
.LC79:
	.string	"list"
	.align 8
.LC80:
	.string	"Display the list of tests available"
.LC81:
	.string	"test"
	.align 8
.LC82:
	.string	"Run a single test by id or name"
.LC83:
	.string	"iter"
	.align 8
.LC84:
	.string	"Run a single iteration of a test"
.LC85:
	.string	"indent"
	.align 8
.LC86:
	.string	"Number of tabs added to output"
.LC87:
	.string	"seed"
	.align 8
.LC88:
	.string	"Seed value to randomize tests with"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 216
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC75
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC76
	.quad	.LC77
	.long	500
	.long	45
	.quad	.LC78
	.quad	.LC79
	.long	501
	.long	45
	.quad	.LC80
	.quad	.LC81
	.long	502
	.long	115
	.quad	.LC82
	.quad	.LC83
	.long	503
	.long	110
	.quad	.LC84
	.quad	.LC85
	.long	504
	.long	112
	.quad	.LC86
	.quad	.LC87
	.long	505
	.long	110
	.quad	.LC88
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
