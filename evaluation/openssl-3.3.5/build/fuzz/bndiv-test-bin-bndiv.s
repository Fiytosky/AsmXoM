	.file	"bndiv.c"
	.text
	.local	ctx
	.comm	ctx,8,8
	.local	b1
	.comm	b1,8,8
	.local	b2
	.comm	b2,8,8
	.local	b3
	.comm	b3,8,8
	.local	b4
	.comm	b4,8,8
	.local	b5
	.comm	b5,8,8
	.globl	FuzzerInitialize
	.type	FuzzerInitialize, @function
FuzzerInitialize:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, b1(%rip)
	call	BN_new@PLT
	movq	%rax, b2(%rip)
	call	BN_new@PLT
	movq	%rax, b3(%rip)
	call	BN_new@PLT
	movq	%rax, b4(%rip)
	call	BN_new@PLT
	movq	%rax, b5(%rip)
	call	BN_CTX_new@PLT
	movq	%rax, ctx(%rip)
	movl	$0, %esi
	movl	$2, %edi
	call	OPENSSL_init_crypto@PLT
	call	ERR_clear_error@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	FuzzerInitialize, .-FuzzerInitialize
	.section	.rodata
.LC0:
	.string	"../fuzz/bndiv.c"
	.align 8
.LC1:
	.string	"assertion failed: BN_bin2bn(buf, l1, b1) == b1"
	.align 8
.LC2:
	.string	"assertion failed: BN_bin2bn(buf + l1, l2, b2) == b2"
	.align 8
.LC3:
	.string	"assertion failed: BN_div(b3, b4, b1, b2, ctx)"
	.align 8
.LC4:
	.string	"assertion failed: BN_mul(b5, b3, b2, ctx)"
	.align 8
.LC5:
	.string	"assertion failed: BN_add(b5, b5, b4)"
.LC6:
	.string	"%d %d %d %d %d %d %d\n"
.LC7:
	.string	"----\n"
.LC8:
	.string	"assertion failed: success"
	.text
	.globl	FuzzerTestOneInput
	.type	FuzzerTestOneInput, @function
FuzzerTestOneInput:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	cmpq	$256000, -96(%rbp)
	jbe	.L4
	movq	$256000, -96(%rbp)
.L4:
	cmpq	$0, -96(%rbp)
	je	.L5
	subq	$1, -96(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	imulq	-96(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$292805461487453201, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$5, %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$64, %eax
	movl	%eax, -76(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$128, %eax
	movl	%eax, -80(%rbp)
	addq	$1, -88(%rbp)
	movq	-96(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.L5:
	movq	b1(%rip), %rdx
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rdx
	movq	b1(%rip), %rax
	cmpq	%rax, %rdx
	je	.L6
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$72, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L6:
	movq	b1(%rip), %rax
	movl	-76(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	b2(%rip), %rax
	movq	-72(%rbp), %rdx
	movl	%edx, %esi
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rdx
	movq	b2(%rip), %rax
	cmpq	%rax, %rdx
	je	.L7
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$74, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L7:
	movq	b2(%rip), %rax
	movl	-80(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	b2(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L8
	movl	$1, -52(%rbp)
	jmp	.L9
.L8:
	movq	ctx(%rip), %rdi
	movq	b2(%rip), %rcx
	movq	b1(%rip), %rdx
	movq	b4(%rip), %rsi
	movq	b3(%rip), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L10
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$83, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L10:
	movq	b1(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L11
	movq	b3(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L12
	movq	b4(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L12
	movl	$1, %eax
	jmp	.L13
.L12:
	movl	$0, %eax
.L13:
	movl	%eax, -52(%rbp)
	jmp	.L14
.L11:
	movq	b1(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L15
	movq	b3(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	movl	%eax, %ebx
	movq	b2(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	cmpl	%eax, %ebx
	jne	.L16
	movq	b3(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L17
.L16:
	movq	b4(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L18
	movq	b4(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L17
.L18:
	movl	$1, %eax
	jmp	.L19
.L17:
	movl	$0, %eax
.L19:
	movl	%eax, -52(%rbp)
	jmp	.L14
.L15:
	movq	b3(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	movl	%eax, %ebx
	movq	b2(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	cmpl	%eax, %ebx
	je	.L20
	movq	b3(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L21
.L20:
	movq	b4(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L22
	movq	b4(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L21
.L22:
	movl	$1, %eax
	jmp	.L23
.L21:
	movl	$0, %eax
.L23:
	movl	%eax, -52(%rbp)
.L14:
	movq	ctx(%rip), %rcx
	movq	b2(%rip), %rdx
	movq	b3(%rip), %rsi
	movq	b5(%rip), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	jne	.L24
	leaq	.LC0(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movl	$92, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L24:
	movq	b4(%rip), %rdx
	movq	b5(%rip), %rcx
	movq	b5(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	jne	.L25
	leaq	.LC0(%rip), %rcx
	leaq	.LC5(%rip), %rax
	movl	$93, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L25:
	cmpl	$0, -52(%rbp)
	je	.L26
	movq	b1(%rip), %rdx
	movq	b5(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$1, %eax
	jmp	.L27
.L26:
	movl	$0, %eax
.L27:
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L33
	movq	b1(%rip), %rdx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print_fp@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	b2(%rip), %rdx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print_fp@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	b3(%rip), %rdx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print_fp@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	b4(%rip), %rdx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print_fp@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	b5(%rip), %rdx
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_print_fp@PLT
	movl	$10, %edi
	call	putchar@PLT
	movq	b1(%rip), %rdx
	movq	b5(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	movl	%eax, %ebx
	movq	b3(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	movl	%eax, %r12d
	movq	b2(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	cmpl	%eax, %r12d
	je	.L28
	movq	b4(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L29
	movq	b4(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L28
.L29:
	movl	$1, -100(%rbp)
	jmp	.L30
.L28:
	movl	$0, -100(%rbp)
.L30:
	movq	b4(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	movl	%eax, %r15d
	movq	b4(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	movl	%eax, %r14d
	movq	b3(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	movl	%eax, %r13d
	movq	b2(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	movl	%eax, %r12d
	movq	b1(%rip), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	pushq	%rbx
	movl	-100(%rbp), %ebx
	pushq	%rbx
	movl	%r15d, %r9d
	movl	%r14d, %r8d
	movl	%r13d, %ecx
	movl	%r12d, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$16, %rsp
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L9
.L33:
	nop
.L9:
	cmpl	$0, -52(%rbp)
	jne	.L31
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rax
	movl	$117, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L31:
	call	ERR_clear_error@PLT
	movl	$0, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	FuzzerTestOneInput, .-FuzzerTestOneInput
	.globl	FuzzerCleanup
	.type	FuzzerCleanup, @function
FuzzerCleanup:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	b1(%rip), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	b2(%rip), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	b3(%rip), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	b4(%rip), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	b5(%rip), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	ctx(%rip), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	FuzzerCleanup, .-FuzzerCleanup
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
