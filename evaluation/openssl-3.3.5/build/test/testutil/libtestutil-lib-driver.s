	.file	"driver.c"
	.text
	.local	all_tests
	.comm	all_tests,32768,32
	.local	num_tests
	.comm	num_tests,4,4
	.local	show_list
	.comm	show_list,4,4
	.data
	.align 4
	.type	single_test, @object
	.size	single_test, 4
single_test:
	.long	-1
	.align 4
	.type	single_iter, @object
	.size	single_iter, 4
single_iter:
	.long	-1
	.local	level
	.comm	level,4,4
	.local	seed
	.comm	seed,4,4
	.local	rand_order
	.comm	rand_order,4,4
	.local	num_test_cases
	.comm	num_test_cases,4,4
	.text
	.globl	add_test
	.type	add_test, @function
add_test:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	num_tests(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	all_tests(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	num_tests(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	8+all_tests(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	num_tests(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	$-1, (%rdx,%rax)
	movl	num_tests(%rip), %eax
	addl	$1, %eax
	movl	%eax, num_tests(%rip)
	movl	num_test_cases(%rip), %eax
	addl	$1, %eax
	movl	%eax, num_test_cases(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	add_test, .-add_test
	.globl	add_all_tests
	.type	add_all_tests, @function
add_all_tests:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	num_tests(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	all_tests(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	num_tests(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	16+all_tests(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	num_tests(%rip), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	24+all_tests(%rip), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	movl	num_tests(%rip), %edx
	movl	-24(%rbp), %eax
	sall	$7, %eax
	sarb	$7, %al
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	16+all_tests(%rip), %rdx
	andl	$1, %eax
	movl	%eax, %esi
	movzbl	12(%rcx,%rdx), %eax
	andl	$-2, %eax
	orl	%esi, %eax
	movb	%al, 12(%rcx,%rdx)
	movl	num_tests(%rip), %eax
	addl	$1, %eax
	movl	%eax, num_tests(%rip)
	cmpl	$0, -24(%rbp)
	je	.L3
	movl	num_test_cases(%rip), %eax
	addl	$1, %eax
	movl	%eax, num_test_cases(%rip)
	jmp	.L5
.L3:
	movl	num_test_cases(%rip), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, num_test_cases(%rip)
.L5:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	add_all_tests, .-add_all_tests
	.type	gcd, @function
gcd:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	jmp	.L7
.L8:
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	movl	%edx, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
.L7:
	cmpl	$0, -24(%rbp)
	jne	.L8
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	gcd, .-gcd
	.type	set_seed, @function
set_seed:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, seed(%rip)
	movl	seed(%rip), %eax
	testl	%eax, %eax
	jg	.L11
	movl	$0, %edi
	call	time@PLT
	movl	%eax, seed(%rip)
.L11:
	movl	seed(%rip), %eax
	movl	%eax, %edi
	call	test_random_seed@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	set_seed, .-set_seed
	.section	.rodata
.LC0:
	.string	"OPENSSL_TEST_RAND_ORDER"
.LC1:
	.string	"OPENSSL_TEST_RAND_SEED"
.LC2:
	.string	"HARNESS_OSSL_LEVEL"
	.text
	.globl	setup_test_framework
	.type	setup_test_framework, @function
setup_test_framework:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -16(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	sall	$2, %eax
	movl	%eax, level(%rip)
.L13:
	movl	level(%rip), %eax
	movl	%eax, %edi
	call	test_adjust_streams_tap_level@PLT
	cmpq	$0, -8(%rbp)
	je	.L14
	movl	$1, rand_order(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edi
	call	set_seed
	jmp	.L15
.L14:
	cmpq	$0, -16(%rbp)
	je	.L16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edi
	call	set_seed
	jmp	.L15
.L16:
	movl	$0, %edi
	call	set_seed
.L15:
	call	test_get_options@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	testq	%rax, %rax
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movl	$1, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	setup_test_framework, .-setup_test_framework
	.section	.rodata
	.align 8
.LC3:
	.string	"Invalid -%s value (Value must be a valid test name OR a value between %d..%d)\n"
	.align 8
.LC4:
	.string	"-%s option is not valid for test %d:%s\n"
	.align 8
.LC5:
	.string	"Invalid -%s value for test %d:%s\t(Value must be in the range %d..%d)\n"
	.text
	.type	check_single_test_params, @function
check_single_test_params:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L20
	movl	$0, -4(%rbp)
	jmp	.L21
.L24:
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	all_tests(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L22
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, single_test(%rip)
	jmp	.L23
.L22:
	addl	$1, -4(%rbp)
.L21:
	movl	num_tests(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L24
.L23:
	movl	num_tests(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L20
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, single_test(%rip)
.L20:
	movl	single_test(%rip), %eax
	cmpl	$-1, %eax
	jne	.L25
	movl	single_iter(%rip), %eax
	cmpl	$-1, %eax
	je	.L25
	movl	$1, single_test(%rip)
.L25:
	movl	single_test(%rip), %eax
	cmpl	$-1, %eax
	je	.L26
	movl	single_test(%rip), %eax
	testl	%eax, %eax
	jle	.L27
	movl	single_test(%rip), %edx
	movl	num_tests(%rip), %eax
	cmpl	%eax, %edx
	jle	.L26
.L27:
	movl	num_tests(%rip), %edx
	movq	-32(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L28
.L26:
	movl	single_iter(%rip), %eax
	cmpl	$-1, %eax
	je	.L29
	movl	single_test(%rip), %eax
	subl	$1, %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$-1, %eax
	jne	.L30
	movl	single_test(%rip), %eax
	subl	$1, %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	all_tests(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	single_test(%rip), %edx
	movq	-40(%rbp), %rax
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rsi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L28
.L30:
	movl	single_iter(%rip), %eax
	testl	%eax, %eax
	jle	.L31
	movl	single_test(%rip), %eax
	subl	$1, %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	single_iter(%rip), %eax
	cmpl	%eax, %edx
	jge	.L29
.L31:
	movl	single_test(%rip), %eax
	subl	$1, %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	(%rdx,%rax), %esi
	movl	single_test(%rip), %eax
	subl	$1, %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	all_tests(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movl	single_test(%rip), %edx
	movq	-40(%rbp), %rax
	leaq	.LC5(%rip), %rdi
	movl	%esi, %r9d
	movl	$1, %r8d
	movq	%rax, %rsi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L28
.L29:
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	check_single_test_params, .-check_single_test_params
	.section	.rodata
.LC6:
	.string	""
	.text
	.type	process_shared_options, @function
process_shared_options:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$-1, -4(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	call	opt_begin@PLT
	jmp	.L33
.L47:
	cmpl	$505, -36(%rbp)
	je	.L34
	cmpl	$505, -36(%rbp)
	jg	.L33
	cmpl	$504, -36(%rbp)
	je	.L36
	cmpl	$504, -36(%rbp)
	jg	.L33
	cmpl	$503, -36(%rbp)
	je	.L37
	cmpl	$503, -36(%rbp)
	jg	.L33
	cmpl	$502, -36(%rbp)
	je	.L38
	cmpl	$502, -36(%rbp)
	jg	.L33
	cmpl	$501, -36(%rbp)
	je	.L39
	cmpl	$501, -36(%rbp)
	jg	.L33
	cmpl	$-1, -36(%rbp)
	je	.L40
	cmpl	$500, -36(%rbp)
	je	.L41
	jmp	.L33
.L40:
	movl	-4(%rbp), %eax
	jmp	.L49
.L41:
	call	test_get_options@PLT
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, %eax
	jmp	.L49
.L39:
	movl	$1, show_list(%rip)
	jmp	.L33
.L38:
	call	opt_flag@PLT
	movq	%rax, -16(%rbp)
	call	opt_arg@PLT
	movq	%rax, -32(%rbp)
	jmp	.L33
.L37:
	call	opt_flag@PLT
	movq	%rax, -24(%rbp)
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	single_iter(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_int@PLT
	testl	%eax, %eax
	je	.L50
	jmp	.L33
.L36:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_int@PLT
	testl	%eax, %eax
	je	.L51
	movl	-40(%rbp), %eax
	sall	$2, %eax
	movl	%eax, level(%rip)
	movl	level(%rip), %eax
	movl	%eax, %edi
	call	test_adjust_streams_tap_level@PLT
	jmp	.L33
.L34:
	call	opt_arg@PLT
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	opt_int@PLT
	testl	%eax, %eax
	je	.L52
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	set_seed
	nop
.L33:
	call	opt_next@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L47
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_single_test_params
	testl	%eax, %eax
	je	.L53
	movl	$1, -4(%rbp)
	jmp	.L44
.L50:
	nop
	jmp	.L44
.L51:
	nop
	jmp	.L44
.L52:
	nop
	jmp	.L44
.L53:
	nop
.L44:
	movl	-4(%rbp), %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	process_shared_options, .-process_shared_options
	.globl	pulldown_test_framework
	.type	pulldown_test_framework, @function
pulldown_test_framework:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, %edi
	call	set_test_title@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	pulldown_test_framework, .-pulldown_test_framework
	.type	finalize, @function
finalize:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L57
	call	ERR_clear_error@PLT
	jmp	.L59
.L57:
	movq	openssl_error_cb@GOTPCREL(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ERR_print_errors_cb@PLT
.L59:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	finalize, .-finalize
	.local	test_title
	.comm	test_title,8,8
	.globl	set_test_title
	.type	set_test_title, @function
set_test_title:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	test_title(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	cmpq	$0, -8(%rbp)
	je	.L61
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strdup@PLT
	jmp	.L62
.L61:
	movl	$0, %eax
.L62:
	movq	%rax, test_title(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	set_test_title, .-set_test_title
	.section	.rodata
.LC7:
	.string	"# OPENSSL_TEST_RAND_ORDER=%d\n"
.LC8:
	.string	"# OPENSSL_TEST_RAND_SEED=%d\n"
.LC9:
	.string	"ok"
.LC10:
	.string	"not ok"
.LC11:
	.string	"%s "
.LC12:
	.string	" # skipped"
.LC13:
	.string	"\n"
	.text
	.type	test_verdict, @function
test_verdict:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L70
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L70:
	call	test_flush_stdout@PLT
	call	test_flush_stderr@PLT
	cmpl	$0, -212(%rbp)
	jne	.L65
	movl	rand_order(%rip), %eax
	testl	%eax, %eax
	je	.L66
	movl	seed(%rip), %eax
	leaq	.LC7(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_tapout@PLT
	jmp	.L65
.L66:
	movl	seed(%rip), %eax
	leaq	.LC8(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_tapout@PLT
.L65:
	cmpl	$0, -212(%rbp)
	je	.L67
	leaq	.LC9(%rip), %rax
	jmp	.L68
.L67:
	leaq	.LC10(%rip), %rax
.L68:
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_tapout@PLT
	movl	$16, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_vprintf_tapout@PLT
	cmpl	$123, -212(%rbp)
	jne	.L69
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_tapout@PLT
.L69:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_tapout@PLT
	call	test_flush_tapout@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_verdict, .-test_verdict
	.section	.rodata
.LC14:
	.string	"1..0 # Skipped: %s\n"
.LC15:
	.string	"Subtest: %s\n"
.LC16:
	.string	"1..%d\n"
.LC17:
	.string	"%d - %s (%d..%d)\n"
.LC18:
	.string	"%d - %s\n"
.LC19:
	.string	"%d - %s"
.LC20:
	.string	"%d..%d\n"
.LC21:
	.string	"%d - iteration %d"
.LC22:
	.string	"%d - %s - iteration %d"
	.text
	.globl	run_tests
	.type	run_tests, @function
run_tests:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4160, %rsp
	movq	%rdi, -4152(%rbp)
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	call	process_shared_options
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L72
	movl	$0, %eax
	jmp	.L109
.L72:
	cmpl	$-1, -16(%rbp)
	jne	.L74
	movl	$1, %eax
	jmp	.L109
.L74:
	movl	num_tests(%rip), %eax
	testl	%eax, %eax
	jg	.L75
	movq	-4152(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_tapout@PLT
	jmp	.L76
.L75:
	movl	show_list(%rip), %eax
	testl	%eax, %eax
	jne	.L76
	movl	single_test(%rip), %eax
	cmpl	$-1, %eax
	jne	.L76
	movl	level(%rip), %eax
	testl	%eax, %eax
	jle	.L77
	movq	-4152(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_stdout@PLT
	call	test_flush_stdout@PLT
.L77:
	movl	num_test_cases(%rip), %eax
	leaq	.LC16(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_tapout@PLT
.L76:
	call	test_flush_tapout@PLT
	movl	$0, -16(%rbp)
	jmp	.L78
.L79:
	movl	-16(%rbp), %eax
	cltq
	movl	-16(%rbp), %edx
	movl	%edx, -4144(%rbp,%rax,4)
	addl	$1, -16(%rbp)
.L78:
	movl	num_tests(%rip), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L79
	movl	rand_order(%rip), %eax
	testl	%eax, %eax
	je	.L80
	movl	num_tests(%rip), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.L81
.L82:
	call	test_random@PLT
	movl	-16(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %edx
	movl	-24(%rbp), %eax
	cltq
	movl	%edx, -4144(%rbp,%rax,4)
	movl	-16(%rbp), %eax
	cltq
	movl	-12(%rbp), %edx
	movl	%edx, -4144(%rbp,%rax,4)
	subl	$1, -16(%rbp)
.L81:
	cmpl	$0, -16(%rbp)
	jg	.L82
.L80:
	movl	$0, -12(%rbp)
	jmp	.L83
.L107:
	movl	-12(%rbp), %eax
	cltq
	movl	-4144(%rbp,%rax,4), %eax
	movl	%eax, -16(%rbp)
	movl	single_test(%rip), %eax
	cmpl	$-1, %eax
	je	.L84
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	single_test(%rip), %eax
	cmpl	%eax, %edx
	jne	.L110
.L84:
	movl	show_list(%rip), %eax
	testl	%eax, %eax
	je	.L86
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$-1, %eax
	je	.L87
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	all_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	-12(%rbp), %edx
	leal	1(%rdx), %esi
	leaq	.LC17(%rip), %rdi
	movl	%ecx, %r8d
	movl	$1, %ecx
	movq	%rax, %rdx
	movl	$0, %eax
	call	test_printf_tapout@PLT
	jmp	.L88
.L87:
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	all_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	-12(%rbp), %edx
	leal	1(%rdx), %esi
	leaq	.LC18(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_tapout@PLT
.L88:
	call	test_flush_tapout@PLT
	jmp	.L85
.L86:
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$-1, %eax
	jne	.L89
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	all_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	set_test_title@PLT
	call	ERR_clear_error@PLT
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+all_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	call	*%rax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	finalize
	movq	test_title(%rip), %rdx
	movl	-32(%rbp), %eax
	leal	1(%rax), %edi
	leaq	.LC19(%rip), %rsi
	movl	-8(%rbp), %eax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movl	%eax, %edi
	movl	$0, %eax
	call	test_verdict
	cmpl	$0, -8(%rbp)
	jne	.L90
	addl	$1, -4(%rbp)
.L90:
	addl	$1, -32(%rbp)
	jmp	.L85
.L89:
	movl	$123, -8(%rbp)
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	all_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	set_test_title@PLT
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+all_tests(%rip), %rax
	movzbl	12(%rdx,%rax), %eax
	sall	$7, %eax
	sarb	$7, %al
	testb	%al, %al
	je	.L91
	movl	level(%rip), %eax
	addl	$4, %eax
	movl	%eax, level(%rip)
	movl	level(%rip), %eax
	movl	%eax, %edi
	call	test_adjust_streams_tap_level@PLT
	movl	single_iter(%rip), %eax
	cmpl	$-1, %eax
	jne	.L91
	movq	test_title(%rip), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_stdout@PLT
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	leaq	.LC20(%rip), %rcx
	movl	%eax, %edx
	movl	$1, %esi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_tapout@PLT
	call	test_flush_stdout@PLT
	call	test_flush_tapout@PLT
.L91:
	movl	$-1, -24(%rbp)
	movl	rand_order(%rip), %eax
	testl	%eax, %eax
	je	.L92
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jg	.L93
.L92:
	movl	$1, -28(%rbp)
	jmp	.L94
.L93:
	call	test_random@PLT
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	24+all_tests(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L93
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movl	%eax, %edi
	call	gcd
	cmpl	$1, %eax
	jne	.L93
.L94:
	movl	$0, -20(%rbp)
	jmp	.L95
.L102:
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$5, %rcx
	leaq	24+all_tests(%rip), %rdx
	movl	(%rcx,%rdx), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -24(%rbp)
	movl	single_iter(%rip), %eax
	cmpl	$-1, %eax
	je	.L96
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	single_iter(%rip), %eax
	cmpl	%eax, %edx
	jne	.L111
.L96:
	call	ERR_clear_error@PLT
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+all_tests(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	*%rdx
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.L98
	movl	$0, -8(%rbp)
	jmp	.L99
.L98:
	cmpl	$123, -40(%rbp)
	je	.L99
	cmpl	$0, -8(%rbp)
	je	.L99
	movl	$1, -8(%rbp)
.L99:
	cmpl	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	finalize
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+all_tests(%rip), %rax
	movzbl	12(%rdx,%rax), %eax
	sall	$7, %eax
	sarb	$7, %al
	testb	%al, %al
	je	.L100
	movl	-24(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	leaq	.LC21(%rip), %rsi
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	movl	$0, %eax
	call	test_verdict
	jmp	.L101
.L100:
	movl	-24(%rbp), %eax
	leal	1(%rax), %r8d
	movq	test_title(%rip), %rdx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %eax
	addl	%ecx, %eax
	leal	1(%rax), %edi
	leaq	.LC22(%rip), %rsi
	movl	-40(%rbp), %eax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movl	%eax, %edi
	movl	$0, %eax
	call	test_verdict
.L101:
	addl	$1, -36(%rbp)
	jmp	.L97
.L111:
	nop
.L97:
	addl	$1, -20(%rbp)
.L95:
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L102
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+all_tests(%rip), %rax
	movzbl	12(%rdx,%rax), %eax
	sall	$7, %eax
	sarb	$7, %al
	testb	%al, %al
	je	.L103
	movl	level(%rip), %eax
	subl	$4, %eax
	movl	%eax, level(%rip)
	movl	level(%rip), %eax
	movl	%eax, %edi
	call	test_adjust_streams_tap_level@PLT
.L103:
	cmpl	$0, -8(%rbp)
	jne	.L104
	addl	$1, -4(%rbp)
.L104:
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+all_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$-1, %eax
	je	.L105
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+all_tests(%rip), %rax
	movzbl	12(%rdx,%rax), %eax
	sall	$7, %eax
	sarb	$7, %al
	testb	%al, %al
	je	.L106
.L105:
	movl	-16(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	all_tests(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movl	-32(%rbp), %eax
	leal	1(%rax), %edi
	leaq	.LC19(%rip), %rsi
	movl	-8(%rbp), %eax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movl	%eax, %edi
	movl	$0, %eax
	call	test_verdict
.L106:
	addl	$1, -32(%rbp)
	jmp	.L85
.L110:
	nop
.L85:
	addl	$1, -12(%rbp)
.L83:
	movl	num_tests(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L107
	cmpl	$0, -4(%rbp)
	je	.L108
	movl	$1, %eax
	jmp	.L109
.L108:
	movl	$0, %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	run_tests, .-run_tests
	.section	.rodata
.LC23:
	.string	"../test/testutil/driver.c"
	.align 8
.LC24:
	.string	"ret = p = OPENSSL_malloc(len + 1)"
	.text
	.globl	glue_strings
	.type	glue_strings, @function
glue_strings:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L113
.L114:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rax, -8(%rbp)
	addl	$1, -20(%rbp)
.L113:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L114
	cmpq	$0, -48(%rbp)
	je	.L115
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L115:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	leaq	.LC23(%rip), %rcx
	movl	$430, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC23(%rip), %rdi
	movq	%rax, %rcx
	movl	$430, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L116
	movl	$0, %eax
	jmp	.L117
.L116:
	movl	$0, -20(%rbp)
	jmp	.L118
.L119:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rax, -16(%rbp)
	addl	$1, -20(%rbp)
.L118:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L119
	movq	-32(%rbp), %rax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	glue_strings, .-glue_strings
	.section	.rodata
.LC25:
	.string	"/"
	.text
	.globl	test_mk_file_path
	.type	test_mk_file_path, @function
test_mk_file_path:
.LFB481:
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
	movq	%rsi, -64(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L121
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	jmp	.L122
.L121:
	movq	$0, -24(%rbp)
.L122:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-24(%rbp), %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	leaq	.LC23(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$450, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L123
	cmpq	$0, -56(%rbp)
	je	.L124
	cmpq	$0, -24(%rbp)
	je	.L124
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L124:
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L123:
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_mk_file_path, .-test_mk_file_path
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
