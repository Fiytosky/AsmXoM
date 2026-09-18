	.file	"format_output.c"
	.text
	.section	.rodata
.LC0:
	.string	"--- %s\n"
.LC1:
	.string	"+++ %s\n"
	.text
	.type	test_diff_header, @function
test_diff_header:
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
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_diff_header, .-test_diff_header
	.section	.rodata
.LC2:
	.string	""
.LC3:
	.string	"%4s %c NULL\n"
.LC4:
	.string	"%4u:%c ''\n"
	.text
	.type	test_string_null_empty, @function
test_string_null_empty:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L3
	movsbl	-12(%rbp), %eax
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	jmp	.L5
.L3:
	movsbl	-12(%rbp), %eax
	leaq	.LC4(%rip), %rcx
	movl	%eax, %edx
	movl	$0, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L5:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_string_null_empty, .-test_string_null_empty
	.section	.rodata
.LC5:
	.string	"%4u:  '%s'\n"
.LC6:
	.string	"%4u:- '%s'\n"
.LC7:
	.string	"%4u:+ '%s'\n"
.LC8:
	.string	"%4s    %s\n"
	.text
	.type	test_fail_string_common, @function
test_fail_string_common:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movl	%edx, -356(%rbp)
	movq	%rcx, -368(%rbp)
	movq	%r8, -376(%rbp)
	movq	%r9, -384(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$81, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	$68, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	leaq	15(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$4, %rax
	salq	$4, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
	movq	-384(%rbp), %r8
	movq	-376(%rbp), %rdi
	movq	-368(%rbp), %rcx
	movl	-356(%rbp), %edx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_fail_message_prefix@PLT
	addq	$16, %rsp
	cmpq	$0, 24(%rbp)
	jne	.L7
	movq	$0, 32(%rbp)
.L7:
	cmpq	$0, 40(%rbp)
	jne	.L8
	movq	$0, 48(%rbp)
.L8:
	cmpq	$0, 32(%rbp)
	jne	.L9
	cmpq	$0, 48(%rbp)
	jne	.L9
	cmpq	$0, 24(%rbp)
	setne	%dl
	cmpq	$0, 40(%rbp)
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L10
	movq	24(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_string_null_empty
	jmp	.L12
.L10:
	movq	-384(%rbp), %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_diff_header
	movq	24(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_string_null_empty
	movq	40(%rbp), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_string_null_empty
	jmp	.L12
.L9:
	movq	32(%rbp), %rax
	cmpq	48(%rbp), %rax
	jne	.L13
	movq	32(%rbp), %rdx
	movq	40(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L15
.L13:
	movq	-384(%rbp), %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_diff_header
	jmp	.L15
.L43:
	movq	$0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, 32(%rbp)
	je	.L16
	movq	32(%rbp), %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	-144(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	$0, -24(%rbp)
	jmp	.L17
.L20:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L18
	movq	24(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.L19
.L18:
	movl	$46, %eax
.L19:
	leaq	-144(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L17:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L20
.L16:
	cmpq	$0, 48(%rbp)
	je	.L21
	movq	48(%rbp), %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -16(%rbp)
	leaq	-240(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	$0, -24(%rbp)
	jmp	.L22
.L25:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L23
	movq	40(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.L24
.L23:
	movl	$46, %eax
.L24:
	leaq	-240(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movb	%al, (%rdx)
	addq	$1, -24(%rbp)
.L22:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L25
.L21:
	movl	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L26
	cmpq	$0, -16(%rbp)
	je	.L26
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.L27
.L30:
	movq	24(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	40(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L28
	leaq	-336(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$32, (%rax)
	jmp	.L29
.L28:
	leaq	-336(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$94, (%rax)
	movl	$1, -32(%rbp)
.L29:
	addq	$1, -24(%rbp)
.L27:
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L30
	leaq	-336(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L26:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L31
	cmpl	$0, -32(%rbp)
	jne	.L31
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L32
	leaq	-240(%rbp), %rax
	jmp	.L33
.L32:
	leaq	-144(%rbp), %rax
.L33:
	movl	-28(%rbp), %ecx
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rdx
	movl	%ecx, %esi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	jmp	.L34
.L31:
	cmpl	$0, -28(%rbp)
	jne	.L35
	cmpq	$0, 24(%rbp)
	je	.L36
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L35
.L36:
	movq	24(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_string_null_empty
	jmp	.L37
.L35:
	cmpq	$0, -8(%rbp)
	je	.L37
	leaq	-144(%rbp), %rdx
	movl	-28(%rbp), %eax
	leaq	.LC6(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L37:
	cmpl	$0, -28(%rbp)
	jne	.L38
	cmpq	$0, 40(%rbp)
	je	.L39
	movq	40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L38
.L39:
	movq	40(%rbp), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_string_null_empty
	jmp	.L40
.L38:
	cmpq	$0, -16(%rbp)
	je	.L40
	leaq	-240(%rbp), %rdx
	movl	-28(%rbp), %eax
	leaq	.LC7(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L40:
	cmpl	$0, -32(%rbp)
	je	.L34
	cmpq	$0, -24(%rbp)
	je	.L34
	leaq	-336(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	leaq	.LC8(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L34:
	cmpq	$0, 24(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	addq	%rax, 24(%rbp)
.L41:
	cmpq	$0, 40(%rbp)
	je	.L42
	movq	-16(%rbp), %rax
	addq	%rax, 40(%rbp)
.L42:
	movq	-8(%rbp), %rax
	subq	%rax, 32(%rbp)
	movq	-16(%rbp), %rax
	subq	%rax, 48(%rbp)
	movq	-40(%rbp), %rax
	addl	%eax, -28(%rbp)
.L15:
	cmpq	$0, 32(%rbp)
	jne	.L43
	cmpq	$0, 48(%rbp)
	jne	.L43
	nop
.L12:
	call	test_flush_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_fail_string_common, .-test_fail_string_common
	.section	.rodata
.LC9:
	.string	"\n"
	.text
	.globl	test_fail_string_message
	.type	test_fail_string_message, @function
test_fail_string_message:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_fail_string_common
	addq	$48, %rsp
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_fail_string_message, .-test_fail_string_message
	.section	.rodata
.LC10:
	.string	"string"
	.text
	.globl	test_output_string
	.type	test_output_string, @function
test_output_string:
.LFB472:
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
	leaq	.LC10(%rip), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_fail_string_common
	addq	$48, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_output_string, .-test_output_string
	.section	.rodata
.LC11:
	.string	"0123456789abcdef"
	.text
	.type	hex_convert_memory, @function
hex_convert_memory:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L47
.L49:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	shrb	$4, %al
	movzbl	%al, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movslq	%ecx, %rdx
	leaq	.LC11(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%rax)
	movzbl	-9(%rbp), %eax
	andl	$15, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movslq	%ecx, %rdx
	leaq	.LC11(%rip), %rcx
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-48(%rbp)
	movq	-48(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, %rdx
	jne	.L48
	movq	-32(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -8(%rbp)
	je	.L48
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$32, (%rax)
.L48:
	addq	$1, -8(%rbp)
.L47:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L49
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	hex_convert_memory, .-hex_convert_memory
	.section	.rodata
	.align 4
	.type	bn_bytes, @object
	.size	bn_bytes, 4
bn_bytes:
	.long	32
	.align 4
	.type	bn_chars, @object
	.size	bn_chars, 4
bn_chars:
	.long	67
.LC12:
	.string	"bit position"
.LC13:
	.string	" %*s\n"
	.text
	.type	test_bignum_header_line, @function
test_bignum_header_line:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$67, %eax
	leal	6(%rax), %ecx
	leaq	.LC12(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_bignum_header_line, .-test_bignum_header_line
	.section	.rodata
.LC14:
	.string	"-0"
.LC15:
	.string	"0"
.LC16:
	.string	"NULL"
	.text
	.type	test_bignum_zero_null, @function
test_bignum_zero_null:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L53
	leaq	.LC14(%rip), %rax
	jmp	.L55
.L53:
	leaq	.LC15(%rip), %rax
	jmp	.L55
.L52:
	leaq	.LC16(%rip), %rax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_bignum_zero_null, .-test_bignum_zero_null
	.section	.rodata
.LC17:
	.string	":    0"
.LC18:
	.string	"%c%*s%s\n"
	.text
	.type	test_bignum_zero_print, @function
test_bignum_zero_print:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	test_bignum_zero_null
	movq	%rax, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L57
	leaq	.LC17(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L58
.L57:
	leaq	.LC2(%rip), %rax
	movq	%rax, -8(%rbp)
.L58:
	movl	$67, %esi
	movsbl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	.LC18(%rip), %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	%eax, %esi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_bignum_zero_print, .-test_bignum_zero_print
	.type	convert_bn_memory, @function
convert_bn_memory:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-48(%rbp), %rax
	addl	%eax, %eax
	movl	%eax, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L60
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L60
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	hex_convert_memory
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L61
	jmp	.L62
.L64:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L63
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movb	$32, (%rax)
	subl	$1, -4(%rbp)
.L63:
	addq	$1, -16(%rbp)
.L62:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	je	.L64
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L64
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L65
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$240, %eax
	testl	%eax, %eax
	je	.L61
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L61
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movb	$45, (%rax)
	addl	$1, -4(%rbp)
	jmp	.L61
.L65:
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L61
	movq	-24(%rbp), %rax
	movb	$45, (%rax)
	addl	$1, -4(%rbp)
.L61:
	movl	-4(%rbp), %eax
	jmp	.L66
.L60:
	movl	$0, -8(%rbp)
	jmp	.L67
.L69:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$32, (%rax)
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%eax, %edx
	andl	$15, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$15, %eax
	jne	.L68
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	je	.L68
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$32, (%rax)
.L68:
	addl	$1, -8(%rbp)
.L67:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L69
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	cmpq	$0, -72(%rbp)
	jne	.L70
	leaq	.LC16(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L71
.L70:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L72
	leaq	.LC14(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L71
.L72:
	leaq	.LC15(%rip), %rax
	movq	%rax, -32(%rbp)
.L71:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	negq	%rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcpy@PLT
	movl	$0, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	convert_bn_memory, .-convert_bn_memory
	.section	.rodata
	.align 8
.LC19:
	.string	"../test/testutil/format_output.c"
	.align 8
.LC20:
	.string	"WARNING: these BIGNUMs have been truncated\n"
.LC21:
	.string	" %s:% 5d\n"
.LC22:
	.string	"-%s\n"
.LC23:
	.string	"-%s:% 5d\n"
.LC24:
	.string	"+%s\n"
.LC25:
	.string	"+%s:% 5d\n"
.LC26:
	.string	" %s\n"
	.text
	.type	test_fail_bignum_common, @function
test_fail_bignum_common:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4456, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -4424(%rbp)
	movq	%rsi, -4432(%rbp)
	movl	%edx, -4436(%rbp)
	movq	%rcx, -4448(%rbp)
	movq	%r8, -4456(%rbp)
	movq	%r9, -4464(%rbp)
	movl	$32, %eax
	cltq
	movq	%rax, -96(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$1, -404(%rbp)
	movl	$1, -408(%rbp)
	leaq	-4416(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-4464(%rbp), %r8
	movq	-4456(%rbp), %rdi
	movq	-4448(%rbp), %rcx
	movl	-4436(%rbp), %edx
	movq	-4432(%rbp), %rsi
	movq	-4424(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_fail_message_prefix@PLT
	addq	$16, %rsp
	cmpq	$0, 24(%rbp)
	je	.L74
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ebx
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ebx, %eax
	cltq
	movq	%rax, -32(%rbp)
	jmp	.L75
.L74:
	movq	$0, -32(%rbp)
.L75:
	cmpq	$0, 32(%rbp)
	je	.L76
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ebx
	movq	32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%ebx, %eax
	cltq
	movq	%rax, -40(%rbp)
	jmp	.L77
.L76:
	movq	$0, -40(%rbp)
.L77:
	cmpq	$0, -32(%rbp)
	jne	.L78
	cmpq	$0, -40(%rbp)
	jne	.L78
	cmpq	$0, 24(%rbp)
	setne	%dl
	cmpq	$0, 32(%rbp)
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L79
	call	test_bignum_header_line
	movq	24(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_bignum_zero_print
	jmp	.L81
.L79:
	movq	-4464(%rbp), %rdx
	movq	-4456(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_diff_header
	call	test_bignum_header_line
	movq	24(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_bignum_zero_print
	movq	32(%rbp), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_bignum_zero_print
	jmp	.L81
.L78:
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L82
	cmpq	$0, 24(%rbp)
	je	.L82
	cmpq	$0, 32(%rbp)
	je	.L82
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L83
.L82:
	movq	-4464(%rbp), %rdx
	movq	-4456(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_diff_header
.L83:
	call	test_bignum_header_line
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	cmovb	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	subq	$1, %rax
	movl	$0, %edx
	divq	-96(%rbp)
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	imulq	%rdx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$2000, -56(%rbp)
	jbe	.L84
	movq	-56(%rbp), %rax
	addq	%rax, %rax
	leaq	.LC19(%rip), %rcx
	movl	$302, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L84
	leaq	-4416(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$2000, -56(%rbp)
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L84:
	cmpq	$0, 24(%rbp)
	je	.L85
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
.L85:
	cmpq	$0, 32(%rbp)
	je	.L87
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movq	32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	jmp	.L87
.L106:
	movq	-56(%rbp), %rax
	subq	-96(%rbp), %rax
	sall	$3, %eax
	movl	%eax, -100(%rbp)
	movq	24(%rbp), %rdi
	leaq	-404(%rbp), %rcx
	leaq	-208(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	convert_bn_memory
	cltq
	movq	%rax, -112(%rbp)
	movq	32(%rbp), %rdi
	leaq	-408(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	convert_bn_memory
	cltq
	movq	%rax, -120(%rbp)
	movl	$0, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	$0, -48(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L88
.L92:
	leaq	-208(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	leaq	-304(%rbp), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L89
	leaq	-208(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L89
	leaq	-304(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L90
.L89:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$32, (%rax)
	leaq	-208(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	leaq	-304(%rbp), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	setne	%al
	movzbl	%al, %eax
	orl	%eax, -60(%rbp)
	jmp	.L91
.L90:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$94, (%rax)
	movl	$1, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.L91:
	addq	$1, -48(%rbp)
.L88:
	leaq	-208(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L92
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	cmpl	$0, -60(%rbp)
	jne	.L93
	movq	-120(%rbp), %rax
	cmpq	%rax, -112(%rbp)
	jnb	.L94
	leaq	-304(%rbp), %rax
	jmp	.L95
.L94:
	leaq	-208(%rbp), %rax
.L95:
	movl	-100(%rbp), %edx
	leaq	.LC21(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	jmp	.L96
.L93:
	cmpl	$0, -100(%rbp)
	jne	.L97
	cmpq	$0, 24(%rbp)
	jne	.L97
	leaq	-208(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	jmp	.L98
.L97:
	cmpl	$0, -100(%rbp)
	je	.L99
	cmpq	$0, -112(%rbp)
	je	.L98
.L99:
	movl	-100(%rbp), %edx
	leaq	-208(%rbp), %rax
	leaq	.LC23(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L98:
	cmpl	$0, -100(%rbp)
	jne	.L100
	cmpq	$0, 32(%rbp)
	jne	.L100
	leaq	-304(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	jmp	.L101
.L100:
	cmpl	$0, -100(%rbp)
	je	.L102
	cmpq	$0, -120(%rbp)
	je	.L101
.L102:
	movl	-100(%rbp), %edx
	leaq	-304(%rbp), %rax
	leaq	.LC25(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L101:
	cmpl	$0, -64(%rbp)
	je	.L96
	cmpl	$0, -100(%rbp)
	je	.L103
	cmpq	$0, -112(%rbp)
	je	.L96
	cmpq	$0, -120(%rbp)
	je	.L96
.L103:
	cmpq	$0, 24(%rbp)
	je	.L96
	cmpq	$0, 32(%rbp)
	je	.L96
	leaq	-400(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L96:
	cmpq	$0, -72(%rbp)
	je	.L104
	movq	-96(%rbp), %rax
	addq	%rax, -72(%rbp)
.L104:
	cmpq	$0, -80(%rbp)
	je	.L105
	movq	-96(%rbp), %rax
	addq	%rax, -80(%rbp)
.L105:
	movq	-96(%rbp), %rax
	subq	%rax, -56(%rbp)
.L87:
	cmpq	$0, -56(%rbp)
	jne	.L106
	nop
.L81:
	call	test_flush_stderr@PLT
	leaq	-4416(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	je	.L108
	leaq	.LC19(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$358, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L108:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_fail_bignum_common, .-test_fail_bignum_common
	.globl	test_fail_bignum_message
	.type	test_fail_bignum_message, @function
test_fail_bignum_message:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_fail_bignum_common
	addq	$32, %rsp
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_fail_bignum_message, .-test_fail_bignum_message
	.globl	test_fail_bignum_mono_message
	.type	test_fail_bignum_mono_message, @function
test_fail_bignum_mono_message:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_fail_bignum_common
	addq	$32, %rsp
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_fail_bignum_mono_message, .-test_fail_bignum_mono_message
	.section	.rodata
.LC27:
	.string	"bignum: '%s' = %s\n"
.LC28:
	.string	"-"
.LC29:
	.string	"bignum: '%s' = %s0x%s\n"
.LC30:
	.string	"bignum"
	.text
	.globl	test_output_bignum
	.type	test_output_bignum, @function
test_output_bignum:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L112
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L113
.L112:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	test_bignum_zero_null
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	.LC27(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	jmp	.L120
.L113:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$64, %eax
	jg	.L115
	leaq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-20(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	hex_convert_memory
	nop
.L117:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L116
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L117
.L116:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L118
	leaq	.LC28(%rip), %rax
	jmp	.L119
.L118:
	leaq	.LC2(%rip), %rax
.L119:
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rsi
	leaq	.LC29(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	test_printf_stderr@PLT
	jmp	.L120
.L115:
	leaq	.LC30(%rip), %rax
	subq	$8, %rsp
	pushq	-64(%rbp)
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_fail_bignum_common
	addq	$32, %rsp
.L120:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_output_bignum, .-test_output_bignum
	.section	.rodata
.LC31:
	.string	"%4s %c%s\n"
.LC32:
	.string	"empty"
.LC33:
	.string	"%04x %c%s\n"
	.text
	.type	test_memory_null_empty, @function
test_memory_null_empty:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L122
	movsbl	-12(%rbp), %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rsi
	leaq	.LC31(%rip), %rdi
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$0, %eax
	call	test_printf_stderr@PLT
	jmp	.L124
.L122:
	movsbl	-12(%rbp), %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC33(%rip), %rdi
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	$0, %esi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L124:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_memory_null_empty, .-test_memory_null_empty
	.section	.rodata
.LC34:
	.string	"%04x: %s\n"
.LC35:
	.string	"%04x:-%s\n"
.LC36:
	.string	"%04x:+%s\n"
.LC37:
	.string	"%4s  %s\n"
	.text
	.type	test_fail_memory_common, @function
test_fail_memory_common:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movl	%edx, -356(%rbp)
	movq	%rcx, -368(%rbp)
	movq	%r8, -376(%rbp)
	movq	%r9, -384(%rbp)
	movq	$32, -48(%rbp)
	movl	$0, -36(%rbp)
	movq	-384(%rbp), %r8
	movq	-376(%rbp), %rdi
	movq	-368(%rbp), %rcx
	movl	-356(%rbp), %edx
	movq	-352(%rbp), %rsi
	movq	-344(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_fail_message_prefix@PLT
	addq	$16, %rsp
	cmpq	$0, 24(%rbp)
	jne	.L126
	movq	$0, 32(%rbp)
.L126:
	cmpq	$0, 40(%rbp)
	jne	.L127
	movq	$0, 48(%rbp)
.L127:
	cmpq	$0, 32(%rbp)
	jne	.L128
	cmpq	$0, 48(%rbp)
	jne	.L128
	cmpq	$0, 24(%rbp)
	setne	%dl
	cmpq	$0, 40(%rbp)
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L129
	movq	24(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_memory_null_empty
	jmp	.L131
.L129:
	movq	-384(%rbp), %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_diff_header
	movq	24(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_memory_null_empty
	movq	40(%rbp), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_memory_null_empty
	jmp	.L131
.L128:
	movq	32(%rbp), %rax
	cmpq	48(%rbp), %rax
	jne	.L132
	movq	24(%rbp), %rax
	cmpq	40(%rbp), %rax
	je	.L134
	movq	32(%rbp), %rdx
	movq	40(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L134
.L132:
	movq	-384(%rbp), %rdx
	movq	-376(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_diff_header
	jmp	.L134
.L153:
	movq	$0, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, 32(%rbp)
	je	.L135
	movq	32(%rbp), %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -16(%rbp)
	leaq	-144(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	24(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	hex_convert_memory
.L135:
	cmpq	$0, 48(%rbp)
	je	.L136
	movq	48(%rbp), %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	-240(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	40(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rdi
	call	hex_convert_memory
.L136:
	movl	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L137
	cmpq	$0, -24(%rbp)
	je	.L137
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movq	%rax, -56(%rbp)
	jmp	.L138
.L142:
	movq	24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	40(%rbp), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L139
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$32, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$32, (%rax)
	jmp	.L140
.L139:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$94, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$94, (%rax)
	movl	$1, -40(%rbp)
.L140:
	movq	-32(%rbp), %rax
	andl	$7, %eax
	cmpq	$7, %rax
	jne	.L141
	movq	-56(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -32(%rbp)
	je	.L141
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$32, (%rax)
.L141:
	addq	$1, -32(%rbp)
.L138:
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L142
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
.L137:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L143
	cmpl	$0, -40(%rbp)
	jne	.L143
	leaq	-144(%rbp), %rdx
	movl	-36(%rbp), %eax
	leaq	.LC34(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	jmp	.L144
.L143:
	cmpl	$0, -36(%rbp)
	jne	.L145
	cmpq	$0, 24(%rbp)
	je	.L146
	cmpq	$0, 32(%rbp)
	jne	.L145
.L146:
	movq	24(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_memory_null_empty
	jmp	.L147
.L145:
	cmpq	$0, -16(%rbp)
	je	.L147
	leaq	-144(%rbp), %rdx
	movl	-36(%rbp), %eax
	leaq	.LC35(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L147:
	cmpl	$0, -36(%rbp)
	jne	.L148
	cmpq	$0, 40(%rbp)
	je	.L149
	cmpq	$0, 48(%rbp)
	jne	.L148
.L149:
	movq	40(%rbp), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_memory_null_empty
	jmp	.L150
.L148:
	cmpq	$0, -24(%rbp)
	je	.L150
	leaq	-240(%rbp), %rdx
	movl	-36(%rbp), %eax
	leaq	.LC36(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L150:
	cmpl	$0, -40(%rbp)
	je	.L144
	cmpq	$0, -32(%rbp)
	je	.L144
	leaq	-336(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	leaq	.LC37(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L144:
	cmpq	$0, 24(%rbp)
	je	.L151
	movq	-16(%rbp), %rax
	addq	%rax, 24(%rbp)
.L151:
	cmpq	$0, 40(%rbp)
	je	.L152
	movq	-24(%rbp), %rax
	addq	%rax, 40(%rbp)
.L152:
	movq	-16(%rbp), %rax
	subq	%rax, 32(%rbp)
	movq	-24(%rbp), %rax
	subq	%rax, 48(%rbp)
	movq	-48(%rbp), %rax
	addl	%eax, -36(%rbp)
.L134:
	cmpq	$0, 32(%rbp)
	jne	.L153
	cmpq	$0, 48(%rbp)
	jne	.L153
	nop
.L131:
	call	test_flush_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_fail_memory_common, .-test_fail_memory_common
	.globl	test_fail_memory_message
	.type	test_fail_memory_message, @function
test_fail_memory_message:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_fail_memory_common
	addq	$48, %rsp
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_fail_memory_message, .-test_fail_memory_message
	.section	.rodata
.LC38:
	.string	"memory"
	.text
	.globl	test_output_memory
	.type	test_output_memory, @function
test_output_memory:
.LFB485:
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
	leaq	.LC38(%rip), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_fail_memory_common
	addq	$48, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	test_output_memory, .-test_output_memory
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
