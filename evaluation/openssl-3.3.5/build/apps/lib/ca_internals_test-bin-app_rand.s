	.file	"app_rand.c"
	.text
	.type	ossl_check_OPENSSL_STRING_type, @function
ossl_check_OPENSSL_STRING_type:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ossl_check_OPENSSL_STRING_type, .-ossl_check_OPENSSL_STRING_type
	.type	ossl_check_const_OPENSSL_STRING_sk_type, @function
ossl_check_const_OPENSSL_STRING_sk_type:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ossl_check_const_OPENSSL_STRING_sk_type, .-ossl_check_const_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_sk_type, @function
ossl_check_OPENSSL_STRING_sk_type:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ossl_check_OPENSSL_STRING_sk_type, .-ossl_check_OPENSSL_STRING_sk_type
	.local	save_rand_file
	.comm	save_rand_file,8,8
	.local	randfiles
	.comm	randfiles,8,8
	.section	.rodata
.LC0:
	.string	"RANDFILE"
.LC1:
	.string	"Can't load %s into RNG\n"
.LC2:
	.string	"../apps/lib/app_rand.c"
.LC3:
	.string	"Can't duplicate %s\n"
	.text
	.globl	app_RAND_load_conf
	.type	app_RAND_load_conf, @function
app_RAND_load_conf:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	app_conf_try_string@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L11
	movq	-8(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	RAND_load_file@PLT
	testl	%eax, %eax
	jns	.L10
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L10:
	movq	save_rand_file(%rip), %rax
	testq	%rax, %rax
	jne	.L7
	leaq	.LC2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$30, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, save_rand_file(%rip)
	movq	save_rand_file(%rip), %rax
	testq	%rax, %rax
	jne	.L7
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L7
.L11:
	nop
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	app_RAND_load_conf, .-app_RAND_load_conf
	.type	loadfiles, @function
loadfiles:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -16(%rbp)
.L21:
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L13
.L24:
	nop
	addq	$1, -8(%rbp)
.L13:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L14
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L24
.L14:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L16
	movl	$1, -12(%rbp)
.L16:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	RAND_load_file@PLT
	testl	%eax, %eax
	jns	.L17
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, -16(%rbp)
.L17:
	cmpl	$0, -12(%rbp)
	jne	.L25
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L26
	jmp	.L21
.L25:
	nop
	jmp	.L19
.L26:
	nop
.L19:
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	loadfiles, .-loadfiles
	.globl	app_RAND_load
	.type	app_RAND_load, @function
app_RAND_load:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L28
.L30:
	movq	randfiles(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	loadfiles
	testl	%eax, %eax
	jne	.L29
	movl	$0, -8(%rbp)
.L29:
	addl	$1, -4(%rbp)
.L28:
	movq	randfiles(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L30
	movq	randfiles(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	app_RAND_load, .-app_RAND_load
	.section	.rodata
.LC4:
	.string	"Cannot write random bytes:\n"
	.text
	.globl	app_RAND_write
	.type	app_RAND_write, @function
app_RAND_write:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	movq	save_rand_file(%rip), %rax
	testq	%rax, %rax
	jne	.L33
	movl	$1, %eax
	jmp	.L34
.L33:
	movq	save_rand_file(%rip), %rax
	movq	%rax, %rdi
	call	RAND_write_file@PLT
	cmpl	$-1, %eax
	jne	.L35
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, -4(%rbp)
.L35:
	movq	save_rand_file(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$90, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, save_rand_file(%rip)
	movl	-4(%rbp), %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	app_RAND_write, .-app_RAND_write
	.globl	opt_rand
	.type	opt_rand, @function
opt_rand:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	$1503, %eax
	je	.L45
	cmpl	$1503, %eax
	ja	.L38
	cmpl	$1502, %eax
	je	.L39
	cmpl	$1502, %eax
	ja	.L38
	cmpl	$1500, %eax
	je	.L45
	cmpl	$1501, %eax
	jne	.L38
	movq	randfiles(%rip), %rax
	testq	%rax, %rax
	jne	.L41
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, randfiles(%rip)
	movq	randfiles(%rip), %rax
	testq	%rax, %rax
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	randfiles(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L42
.L39:
	movq	save_rand_file(%rip), %rax
	leaq	.LC2(%rip), %rcx
	movl	$115, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rax
	movl	$116, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, save_rand_file(%rip)
	movq	save_rand_file(%rip), %rax
	testq	%rax, %rax
	jne	.L47
	movl	$0, %eax
	jmp	.L42
.L45:
	nop
	jmp	.L38
.L46:
	nop
	jmp	.L38
.L47:
	nop
.L38:
	movl	$1, %eax
.L42:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	opt_rand, .-opt_rand
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
