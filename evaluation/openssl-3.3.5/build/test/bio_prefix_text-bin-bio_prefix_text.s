	.file	"bio_prefix_text.c"
	.text
	.local	bio_in
	.comm	bio_in,8,8
	.local	bio_out
	.comm	bio_out,8,8
	.local	bio_err
	.comm	bio_err,8,8
	.local	amount
	.comm	amount,8,8
	.local	chain
	.comm	chain,8,8
	.section	.rodata
.LC0:
	.string	"n"
	.align 8
.LC1:
	.string	"Amount of BIO_f_prefix() filters"
.LC2:
	.string	"i"
	.align 8
.LC3:
	.string	"Indentation in form '[idx:]indent'"
.LC4:
	.string	"p"
.LC5:
	.string	"Prefix in form '[idx:]prefix'"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	options, @object
	.size	options, 96
options:
	.quad	.LC0
	.long	1
	.long	112
	.quad	.LC1
	.quad	.LC2
	.long	2
	.long	115
	.quad	.LC3
	.quad	.LC4
	.long	3
	.long	115
	.quad	.LC5
	.quad	0
	.zero	16
	.text
	.globl	opt_printf_stderr
	.type	opt_printf_stderr, @function
opt_printf_stderr:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L4
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L4:
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	bio_err(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_vprintf@PLT
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	opt_printf_stderr, .-opt_printf_stderr
	.type	run_pipe, @function
run_pipe:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4128, %rsp
	jmp	.L6
.L13:
	movq	bio_in(%rip), %rax
	leaq	-4120(%rbp), %rdx
	leaq	-4112(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$4096, %edx
	movq	%rax, %rdi
	call	BIO_read_ex@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L14
.L7:
	movq	$0, -8(%rbp)
	jmp	.L9
.L11:
	movq	-4120(%rbp), %rdx
	movq	chain(%rip), %rax
	movq	amount(%rip), %rcx
	salq	$3, %rcx
	subq	$8, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	leaq	-4128(%rbp), %rcx
	leaq	-4112(%rbp), %rsi
	movq	%rax, %rdi
	call	BIO_write_ex@PLT
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L14
.L10:
	movq	-4128(%rbp), %rax
	addq	%rax, -8(%rbp)
.L9:
	movq	-4120(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L11
.L6:
	movq	bio_in(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L13
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	run_pipe, .-run_pipe
	.section	.rodata
.LC6:
	.string	"../test/bio_prefix_text.c"
	.text
	.type	setup_bio_chain, @function
setup_bio_chain:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	amount(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	salq	$3, %rax
	leaq	.LC6(%rip), %rcx
	movl	$99, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, chain(%rip)
	movq	chain(%rip), %rax
	testq	%rax, %rax
	je	.L16
	movq	bio_out(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_up_ref@PLT
	movq	$0, -40(%rbp)
	jmp	.L17
.L21:
	call	BIO_f_prefix@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L23
	movq	chain(%rip), %rax
	movq	-40(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, (%rbx)
	movq	chain(%rip), %rax
	movq	-40(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	chain(%rip), %rax
	movq	-40(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	addq	$1, -40(%rbp)
	subq	$1, -32(%rbp)
.L17:
	cmpq	$0, -32(%rbp)
	jne	.L21
.L16:
	movq	chain(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L22
.L23:
	nop
	jmp	.L19
.L24:
	nop
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	chain(%rip), %rax
	leaq	.LC6(%rip), %rcx
	movl	$122, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L22:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	setup_bio_chain, .-setup_bio_chain
	.type	cleanup, @function
cleanup:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	chain(%rip), %rax
	testq	%rax, %rax
	je	.L26
	movq	chain(%rip), %rax
	movq	amount(%rip), %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	chain(%rip), %rax
	leaq	.LC6(%rip), %rcx
	movl	$130, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L26:
	movq	bio_in(%rip), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	bio_out(%rip), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	bio_err(%rip), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	cleanup, .-cleanup
	.section	.rodata
	.align 8
.LC7:
	.string	"assertion failed: bio_in != NULL"
	.align 8
.LC8:
	.string	"assertion failed: bio_out != NULL"
	.align 8
.LC9:
	.string	"assertion failed: bio_err != NULL"
	.align 8
.LC10:
	.string	"%s: -n argument isn't a decimal number: %s"
	.align 8
.LC11:
	.string	"%s: must set up at least one filter"
	.align 8
.LC12:
	.string	"%s: failed setting up filter chain"
.LC13:
	.string	"%s: -i given before -n"
	.align 8
.LC14:
	.string	"%s: -i index isn't a decimal number: %s"
	.align 8
.LC15:
	.string	"%s: -i value isn't a decimal number: %s"
	.align 8
.LC16:
	.string	"%s: index (%zu) not within range 0..%zu"
	.align 8
.LC17:
	.string	"%s: failed setting indentation: %s"
.LC18:
	.string	"%s: -p given before -n"
	.align 8
.LC19:
	.string	"%s: -p index isn't a decimal number: %s"
.LC20:
	.string	"%s: failed setting prefix: %s"
	.text
	.type	setup, @function
setup:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	call	opt_getprog@PLT
	movq	%rax, -24(%rbp)
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, bio_in(%rip)
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, bio_out(%rip)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, bio_err(%rip)
	movq	bio_in(%rip), %rax
	testq	%rax, %rax
	jne	.L28
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rax
	movl	$155, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L28:
	movq	bio_out(%rip), %rax
	testq	%rax, %rax
	jne	.L29
	leaq	.LC6(%rip), %rcx
	leaq	.LC8(%rip), %rax
	movl	$156, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L29:
	movq	bio_err(%rip), %rax
	testq	%rax, %rax
	jne	.L31
	leaq	.LC6(%rip), %rcx
	leaq	.LC9(%rip), %rax
	movl	$157, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L53:
	cmpl	$3, -28(%rbp)
	je	.L32
	cmpl	$3, -28(%rbp)
	jg	.L33
	cmpl	$1, -28(%rbp)
	je	.L34
	cmpl	$2, -28(%rbp)
	je	.L35
	jmp	.L33
.L34:
	call	opt_arg@PLT
	movq	%rax, -40(%rbp)
	leaq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, amount(%rip)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L36
	movq	bio_err(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L36:
	movq	amount(%rip), %rax
	testq	%rax, %rax
	jne	.L38
	movq	bio_err(%rip), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L38:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	setup_bio_chain
	testl	%eax, %eax
	jne	.L31
	movq	bio_err(%rip), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L35:
	movq	chain(%rip), %rax
	testq	%rax, %rax
	jne	.L40
	movq	bio_err(%rip), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC13(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L40:
	call	opt_arg@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L41
	leaq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L42
	movq	bio_err(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L42:
	addq	$1, -8(%rbp)
	jmp	.L43
.L41:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.L43:
	leaq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L44
	movq	bio_err(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L44:
	movq	amount(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L45
	movq	amount(%rip), %rax
	leaq	-1(%rax), %rdi
	movq	bio_err(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC16(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L45:
	movq	-48(%rbp), %rdx
	movq	chain(%rip), %rax
	movq	-16(%rbp), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L31
	movq	bio_err(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC17(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L32:
	movq	chain(%rip), %rax
	testq	%rax, %rax
	jne	.L47
	movq	bio_err(%rip), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC18(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L47:
	call	opt_arg@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L48
	leaq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L49
	movq	bio_err(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L49:
	addq	$1, -8(%rbp)
	jmp	.L50
.L48:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.L50:
	movq	amount(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L51
	movq	amount(%rip), %rax
	leaq	-1(%rax), %rdi
	movq	bio_err(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC16(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L51:
	movq	chain(%rip), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$79, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L31
	movq	bio_err(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC20(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L54
.L33:
	movl	$0, %eax
	jmp	.L54
.L31:
	call	opt_next@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L53
	movl	$1, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	setup, .-setup
	.globl	main
	.type	main, @function
main:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	leaq	options(%rip), %rdx
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	call	setup
	testl	%eax, %eax
	je	.L56
	call	run_pipe
	testl	%eax, %eax
	jne	.L57
.L56:
	movl	$1, %eax
	jmp	.L58
.L57:
	movl	$0, %eax
.L58:
	movl	%eax, -4(%rbp)
	call	cleanup
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
