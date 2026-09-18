	.file	"tests.c"
	.text
	.section	.rodata
.LC0:
	.string	"ERROR"
.LC1:
	.string	"%s: "
.LC2:
	.string	"(%s) "
.LC3:
	.string	"'%s %s %s' failed"
.LC4:
	.string	"'%s'"
.LC5:
	.string	" @ %s:%d"
.LC6:
	.string	"\n"
	.text
	.globl	test_fail_message_prefix
	.type	test_fail_message_prefix, @function
test_fail_message_prefix:
.LFB468:
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
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	jmp	.L3
.L2:
	leaq	.LC0(%rip), %rax
.L3:
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	cmpq	$0, -32(%rbp)
	je	.L4
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L4:
	cmpq	$0, 16(%rbp)
	je	.L5
	cmpq	$0, -40(%rbp)
	je	.L6
	cmpq	$0, -48(%rbp)
	je	.L6
	movq	-48(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rsi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	jmp	.L5
.L6:
	movq	16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L5:
	cmpq	$0, -16(%rbp)
	je	.L7
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L7:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_fail_message_prefix, .-test_fail_message_prefix
	.type	test_fail_message_va, @function
test_fail_message_va:
.LFB469:
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
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	test_fail_message_prefix@PLT
	addq	$16, %rsp
	cmpq	$0, 24(%rbp)
	je	.L9
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_vprintf_stderr@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L9:
	call	test_flush_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_fail_message_va, .-test_fail_message_va
	.type	test_fail_message, @function
test_fail_message:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movl	%edx, -228(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%r8, -248(%rbp)
	movq	%r9, -256(%rbp)
	testb	%al, %al
	je	.L12
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L12:
	movl	$48, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	32(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-256(%rbp), %r9
	movq	-248(%rbp), %r8
	movq	-240(%rbp), %rcx
	movl	-228(%rbp), %edx
	movq	-224(%rbp), %rsi
	movq	-216(%rbp), %rax
	subq	$8, %rsp
	leaq	-200(%rbp), %rdi
	pushq	%rdi
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	test_fail_message_va
	addq	$32, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_fail_message, .-test_fail_message
	.section	.rodata
.LC7:
	.string	"INFO"
	.text
	.globl	test_info_c90
	.type	test_info_c90, @function
test_info_c90:
.LFB471:
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
	je	.L15
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L15:
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	.LC7(%rip), %rax
	subq	$8, %rsp
	leaq	-200(%rbp), %rdx
	pushq	%rdx
	pushq	-216(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_fail_message_va
	addq	$32, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_info_c90, .-test_info_c90
	.globl	test_info
	.type	test_info, @function
test_info:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L18
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L18:
	movl	$24, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-220(%rbp), %edx
	movq	-216(%rbp), %rax
	leaq	.LC7(%rip), %rdi
	subq	$8, %rsp
	leaq	-200(%rbp), %rcx
	pushq	%rcx
	pushq	-232(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	test_fail_message_va
	addq	$32, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_info, .-test_info
	.globl	test_error_c90
	.type	test_error_c90, @function
test_error_c90:
.LFB473:
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
	je	.L21
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L21:
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	subq	$8, %rsp
	leaq	-200(%rbp), %rax
	pushq	%rax
	pushq	-216(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	test_fail_message_va
	addq	$32, %rsp
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_error_c90, .-test_error_c90
	.globl	test_error
	.type	test_error, @function
test_error:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L24
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L24:
	movl	$24, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-220(%rbp), %edx
	movq	-216(%rbp), %rax
	subq	$8, %rsp
	leaq	-200(%rbp), %rcx
	pushq	%rcx
	pushq	-232(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_message_va
	addq	$32, %rsp
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_error, .-test_error
	.section	.rodata
.LC8:
	.string	"%s: %s"
.LC9:
	.string	"../test/testutil/tests.c"
	.text
	.globl	test_perror
	.type	test_perror, @function
test_perror:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC9(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$143, %esi
	movl	$0, %eax
	call	test_error@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_perror, .-test_perror
	.globl	test_note
	.type	test_note, @function
test_note:
.LFB476:
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
	je	.L29
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L29:
	call	test_flush_stdout@PLT
	cmpq	$0, -216(%rbp)
	je	.L28
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_vprintf_stderr@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
.L28:
	call	test_flush_stderr@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_note, .-test_note
	.section	.rodata
.LC10:
	.string	"SKIP"
	.text
	.globl	test_skip
	.type	test_skip, @function
test_skip:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L33
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L33:
	movl	$24, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-220(%rbp), %edx
	movq	-216(%rbp), %rax
	leaq	.LC10(%rip), %rdi
	subq	$8, %rsp
	leaq	-200(%rbp), %rcx
	pushq	%rcx
	pushq	-232(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	call	test_fail_message_va
	addq	$32, %rsp
	movl	$123, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_skip, .-test_skip
	.globl	test_skip_c90
	.type	test_skip_c90, @function
test_skip_c90:
.LFB478:
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
	je	.L37
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L37:
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	.LC10(%rip), %rax
	subq	$8, %rsp
	leaq	-200(%rbp), %rdx
	pushq	%rdx
	pushq	-216(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	test_fail_message_va
	addq	$32, %rsp
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_printf_stderr@PLT
	movl	$123, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_skip_c90, .-test_skip_c90
	.globl	test_openssl_errors
	.type	test_openssl_errors, @function
test_openssl_errors:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	openssl_error_cb@GOTPCREL(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ERR_print_errors_cb@PLT
	call	ERR_clear_error@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_openssl_errors, .-test_openssl_errors
	.section	.rodata
.LC11:
	.string	"int"
.LC12:
	.string	"[%d] compared to [%d]"
.LC13:
	.string	"=="
	.text
	.globl	test_int_eq
	.type	test_int_eq, @function
test_int_eq:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L40
	movl	$1, %eax
	jmp	.L41
.L40:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC12(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_int_eq, .-test_int_eq
	.section	.rodata
.LC14:
	.string	"!="
	.text
	.globl	test_int_ne
	.type	test_int_ne, @function
test_int_ne:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L43
	movl	$1, %eax
	jmp	.L44
.L43:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC12(%rip), %rsi
	pushq	%rsi
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_int_ne, .-test_int_ne
	.section	.rodata
.LC15:
	.string	"<"
	.text
	.globl	test_int_lt
	.type	test_int_lt, @function
test_int_lt:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L46
	movl	$1, %eax
	jmp	.L47
.L46:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC12(%rip), %rsi
	pushq	%rsi
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_int_lt, .-test_int_lt
	.section	.rodata
.LC16:
	.string	"<="
	.text
	.globl	test_int_le
	.type	test_int_le, @function
test_int_le:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jg	.L49
	movl	$1, %eax
	jmp	.L50
.L49:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC12(%rip), %rsi
	pushq	%rsi
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_int_le, .-test_int_le
	.section	.rodata
.LC17:
	.string	">"
	.text
	.globl	test_int_gt
	.type	test_int_gt, @function
test_int_gt:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.L52
	movl	$1, %eax
	jmp	.L53
.L52:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC12(%rip), %rsi
	pushq	%rsi
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_int_gt, .-test_int_gt
	.section	.rodata
.LC18:
	.string	">="
	.text
	.globl	test_int_ge
	.type	test_int_ge, @function
test_int_ge:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L55
	movl	$1, %eax
	jmp	.L56
.L55:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC11(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC12(%rip), %rsi
	pushq	%rsi
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	test_int_ge, .-test_int_ge
	.section	.rodata
.LC19:
	.string	"unsigned int"
.LC20:
	.string	"[%u] compared to [%u]"
	.text
	.globl	test_uint_eq
	.type	test_uint_eq, @function
test_uint_eq:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.L58
	movl	$1, %eax
	jmp	.L59
.L58:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC19(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	test_uint_eq, .-test_uint_eq
	.globl	test_uint_ne
	.type	test_uint_ne, @function
test_uint_ne:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.L61
	movl	$1, %eax
	jmp	.L62
.L61:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC19(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	test_uint_ne, .-test_uint_ne
	.globl	test_uint_lt
	.type	test_uint_lt, @function
test_uint_lt:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jnb	.L64
	movl	$1, %eax
	jmp	.L65
.L64:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC19(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	test_uint_lt, .-test_uint_lt
	.globl	test_uint_le
	.type	test_uint_le, @function
test_uint_le:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jb	.L67
	movl	$1, %eax
	jmp	.L68
.L67:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC19(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	test_uint_le, .-test_uint_le
	.globl	test_uint_gt
	.type	test_uint_gt, @function
test_uint_gt:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jnb	.L70
	movl	$1, %eax
	jmp	.L71
.L70:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC19(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	test_uint_gt, .-test_uint_gt
	.globl	test_uint_ge
	.type	test_uint_ge, @function
test_uint_ge:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L73
	movl	$1, %eax
	jmp	.L74
.L73:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC19(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %esi
	pushq	%rsi
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	test_uint_ge, .-test_uint_ge
	.section	.rodata
.LC21:
	.string	"char"
.LC22:
	.string	"[%c] compared to [%c]"
	.text
	.globl	test_char_eq
	.type	test_char_eq, @function
test_char_eq:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	-36(%rbp), %al
	jne	.L76
	movl	$1, %eax
	jmp	.L77
.L76:
	movsbl	-36(%rbp), %edi
	movsbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC21(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC22(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	test_char_eq, .-test_char_eq
	.globl	test_char_ne
	.type	test_char_ne, @function
test_char_ne:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	-36(%rbp), %al
	je	.L79
	movl	$1, %eax
	jmp	.L80
.L79:
	movsbl	-36(%rbp), %edi
	movsbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC21(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC22(%rip), %rsi
	pushq	%rsi
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	test_char_ne, .-test_char_ne
	.globl	test_char_lt
	.type	test_char_lt, @function
test_char_lt:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	-36(%rbp), %al
	jge	.L82
	movl	$1, %eax
	jmp	.L83
.L82:
	movsbl	-36(%rbp), %edi
	movsbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC21(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC22(%rip), %rsi
	pushq	%rsi
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	test_char_lt, .-test_char_lt
	.globl	test_char_le
	.type	test_char_le, @function
test_char_le:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	-36(%rbp), %al
	jg	.L85
	movl	$1, %eax
	jmp	.L86
.L85:
	movsbl	-36(%rbp), %edi
	movsbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC21(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC22(%rip), %rsi
	pushq	%rsi
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	test_char_le, .-test_char_le
	.globl	test_char_gt
	.type	test_char_gt, @function
test_char_gt:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	-36(%rbp), %al
	jle	.L88
	movl	$1, %eax
	jmp	.L89
.L88:
	movsbl	-36(%rbp), %edi
	movsbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC21(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC22(%rip), %rsi
	pushq	%rsi
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	test_char_gt, .-test_char_gt
	.globl	test_char_ge
	.type	test_char_ge, @function
test_char_ge:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	-36(%rbp), %al
	jl	.L91
	movl	$1, %eax
	jmp	.L92
.L91:
	movsbl	-36(%rbp), %edi
	movsbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC21(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC22(%rip), %rsi
	pushq	%rsi
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	test_char_ge, .-test_char_ge
	.section	.rodata
.LC23:
	.string	"unsigned char"
	.text
	.globl	test_uchar_eq
	.type	test_uchar_eq, @function
test_uchar_eq:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	-36(%rbp), %al
	jne	.L94
	movl	$1, %eax
	jmp	.L95
.L94:
	movzbl	-36(%rbp), %edi
	movzbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC23(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	test_uchar_eq, .-test_uchar_eq
	.globl	test_uchar_ne
	.type	test_uchar_ne, @function
test_uchar_ne:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	-36(%rbp), %al
	je	.L97
	movl	$1, %eax
	jmp	.L98
.L97:
	movzbl	-36(%rbp), %edi
	movzbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC23(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	test_uchar_ne, .-test_uchar_ne
	.globl	test_uchar_lt
	.type	test_uchar_lt, @function
test_uchar_lt:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	-36(%rbp), %al
	jnb	.L100
	movl	$1, %eax
	jmp	.L101
.L100:
	movzbl	-36(%rbp), %edi
	movzbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC23(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	test_uchar_lt, .-test_uchar_lt
	.globl	test_uchar_le
	.type	test_uchar_le, @function
test_uchar_le:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	%al, -36(%rbp)
	jb	.L103
	movl	$1, %eax
	jmp	.L104
.L103:
	movzbl	-36(%rbp), %edi
	movzbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC23(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	test_uchar_le, .-test_uchar_le
	.globl	test_uchar_gt
	.type	test_uchar_gt, @function
test_uchar_gt:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	%al, -36(%rbp)
	jnb	.L106
	movl	$1, %eax
	jmp	.L107
.L106:
	movzbl	-36(%rbp), %edi
	movzbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC23(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	test_uchar_gt, .-test_uchar_gt
	.globl	test_uchar_ge
	.type	test_uchar_ge, @function
test_uchar_ge:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, %eax
	movl	%r9d, %edx
	movb	%al, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	-36(%rbp), %al
	jb	.L109
	movl	$1, %eax
	jmp	.L110
.L109:
	movzbl	-36(%rbp), %edi
	movzbl	-16(%rbp), %esi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC23(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	leaq	.LC20(%rip), %rsi
	pushq	%rsi
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	test_uchar_ge, .-test_uchar_ge
	.section	.rodata
.LC24:
	.string	"long"
.LC25:
	.string	"[%ld] compared to [%ld]"
	.text
	.globl	test_long_eq
	.type	test_long_eq, @function
test_long_eq:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L112
	movl	$1, %eax
	jmp	.L113
.L112:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC25(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	test_long_eq, .-test_long_eq
	.globl	test_long_ne
	.type	test_long_ne, @function
test_long_ne:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L115
	movl	$1, %eax
	jmp	.L116
.L115:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC25(%rip), %rsi
	pushq	%rsi
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	test_long_ne, .-test_long_ne
	.globl	test_long_lt
	.type	test_long_lt, @function
test_long_lt:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.L118
	movl	$1, %eax
	jmp	.L119
.L118:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC25(%rip), %rsi
	pushq	%rsi
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	test_long_lt, .-test_long_lt
	.globl	test_long_le
	.type	test_long_le, @function
test_long_le:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jg	.L121
	movl	$1, %eax
	jmp	.L122
.L121:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC25(%rip), %rsi
	pushq	%rsi
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	test_long_le, .-test_long_le
	.globl	test_long_gt
	.type	test_long_gt, @function
test_long_gt:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jle	.L124
	movl	$1, %eax
	jmp	.L125
.L124:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC25(%rip), %rsi
	pushq	%rsi
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	test_long_gt, .-test_long_gt
	.globl	test_long_ge
	.type	test_long_ge, @function
test_long_ge:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.L127
	movl	$1, %eax
	jmp	.L128
.L127:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC25(%rip), %rsi
	pushq	%rsi
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	test_long_ge, .-test_long_ge
	.section	.rodata
.LC26:
	.string	"unsigned long"
.LC27:
	.string	"[%lu] compared to [%lu]"
	.text
	.globl	test_ulong_eq
	.type	test_ulong_eq, @function
test_ulong_eq:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L130
	movl	$1, %eax
	jmp	.L131
.L130:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC26(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC27(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	test_ulong_eq, .-test_ulong_eq
	.globl	test_ulong_ne
	.type	test_ulong_ne, @function
test_ulong_ne:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L133
	movl	$1, %eax
	jmp	.L134
.L133:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC26(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC27(%rip), %rsi
	pushq	%rsi
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	test_ulong_ne, .-test_ulong_ne
	.globl	test_ulong_lt
	.type	test_ulong_lt, @function
test_ulong_lt:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L136
	movl	$1, %eax
	jmp	.L137
.L136:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC26(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC27(%rip), %rsi
	pushq	%rsi
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	test_ulong_lt, .-test_ulong_lt
	.globl	test_ulong_le
	.type	test_ulong_le, @function
test_ulong_le:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L139
	movl	$1, %eax
	jmp	.L140
.L139:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC26(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC27(%rip), %rsi
	pushq	%rsi
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	test_ulong_le, .-test_ulong_le
	.globl	test_ulong_gt
	.type	test_ulong_gt, @function
test_ulong_gt:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L142
	movl	$1, %eax
	jmp	.L143
.L142:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC26(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC27(%rip), %rsi
	pushq	%rsi
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	test_ulong_gt, .-test_ulong_gt
	.globl	test_ulong_ge
	.type	test_ulong_ge, @function
test_ulong_ge:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L145
	movl	$1, %eax
	jmp	.L146
.L145:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC26(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC27(%rip), %rsi
	pushq	%rsi
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	test_ulong_ge, .-test_ulong_ge
	.section	.rodata
.LC28:
	.string	"int64_t"
.LC29:
	.string	"[%lld] compared to [%lld]"
	.text
	.globl	test_int64_t_eq
	.type	test_int64_t_eq, @function
test_int64_t_eq:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L148
	movl	$1, %eax
	jmp	.L149
.L148:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC28(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC29(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	test_int64_t_eq, .-test_int64_t_eq
	.globl	test_int64_t_ne
	.type	test_int64_t_ne, @function
test_int64_t_ne:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L151
	movl	$1, %eax
	jmp	.L152
.L151:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC28(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC29(%rip), %rsi
	pushq	%rsi
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	test_int64_t_ne, .-test_int64_t_ne
	.globl	test_int64_t_lt
	.type	test_int64_t_lt, @function
test_int64_t_lt:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.L154
	movl	$1, %eax
	jmp	.L155
.L154:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC28(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC29(%rip), %rsi
	pushq	%rsi
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	test_int64_t_lt, .-test_int64_t_lt
	.globl	test_int64_t_le
	.type	test_int64_t_le, @function
test_int64_t_le:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jg	.L157
	movl	$1, %eax
	jmp	.L158
.L157:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC28(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC29(%rip), %rsi
	pushq	%rsi
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	test_int64_t_le, .-test_int64_t_le
	.globl	test_int64_t_gt
	.type	test_int64_t_gt, @function
test_int64_t_gt:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jle	.L160
	movl	$1, %eax
	jmp	.L161
.L160:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC28(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC29(%rip), %rsi
	pushq	%rsi
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	test_int64_t_gt, .-test_int64_t_gt
	.globl	test_int64_t_ge
	.type	test_int64_t_ge, @function
test_int64_t_ge:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.L163
	movl	$1, %eax
	jmp	.L164
.L163:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC28(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC29(%rip), %rsi
	pushq	%rsi
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	test_int64_t_ge, .-test_int64_t_ge
	.section	.rodata
.LC30:
	.string	"uint64_t"
.LC31:
	.string	"[%llu] compared to [%llu]"
	.text
	.globl	test_uint64_t_eq
	.type	test_uint64_t_eq, @function
test_uint64_t_eq:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L166
	movl	$1, %eax
	jmp	.L167
.L166:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC30(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC31(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	test_uint64_t_eq, .-test_uint64_t_eq
	.globl	test_uint64_t_ne
	.type	test_uint64_t_ne, @function
test_uint64_t_ne:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L169
	movl	$1, %eax
	jmp	.L170
.L169:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC30(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC31(%rip), %rsi
	pushq	%rsi
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	test_uint64_t_ne, .-test_uint64_t_ne
	.globl	test_uint64_t_lt
	.type	test_uint64_t_lt, @function
test_uint64_t_lt:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L172
	movl	$1, %eax
	jmp	.L173
.L172:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC30(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC31(%rip), %rsi
	pushq	%rsi
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L173:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	test_uint64_t_lt, .-test_uint64_t_lt
	.globl	test_uint64_t_le
	.type	test_uint64_t_le, @function
test_uint64_t_le:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L175
	movl	$1, %eax
	jmp	.L176
.L175:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC30(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC31(%rip), %rsi
	pushq	%rsi
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	test_uint64_t_le, .-test_uint64_t_le
	.globl	test_uint64_t_gt
	.type	test_uint64_t_gt, @function
test_uint64_t_gt:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L178
	movl	$1, %eax
	jmp	.L179
.L178:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC30(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC31(%rip), %rsi
	pushq	%rsi
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	test_uint64_t_gt, .-test_uint64_t_gt
	.globl	test_uint64_t_ge
	.type	test_uint64_t_ge, @function
test_uint64_t_ge:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L181
	movl	$1, %eax
	jmp	.L182
.L181:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC30(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC31(%rip), %rsi
	pushq	%rsi
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_uint64_t_ge, .-test_uint64_t_ge
	.section	.rodata
.LC32:
	.string	"size_t"
.LC33:
	.string	"[%zu] compared to [%zu]"
	.text
	.globl	test_size_t_eq
	.type	test_size_t_eq, @function
test_size_t_eq:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L184
	movl	$1, %eax
	jmp	.L185
.L184:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC32(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC33(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_size_t_eq, .-test_size_t_eq
	.globl	test_size_t_ne
	.type	test_size_t_ne, @function
test_size_t_ne:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L187
	movl	$1, %eax
	jmp	.L188
.L187:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC32(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC33(%rip), %rsi
	pushq	%rsi
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	test_size_t_ne, .-test_size_t_ne
	.globl	test_size_t_lt
	.type	test_size_t_lt, @function
test_size_t_lt:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L190
	movl	$1, %eax
	jmp	.L191
.L190:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC32(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC33(%rip), %rsi
	pushq	%rsi
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	test_size_t_lt, .-test_size_t_lt
	.globl	test_size_t_le
	.type	test_size_t_le, @function
test_size_t_le:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L193
	movl	$1, %eax
	jmp	.L194
.L193:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC32(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC33(%rip), %rsi
	pushq	%rsi
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	test_size_t_le, .-test_size_t_le
	.globl	test_size_t_gt
	.type	test_size_t_gt, @function
test_size_t_gt:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L196
	movl	$1, %eax
	jmp	.L197
.L196:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC32(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC33(%rip), %rsi
	pushq	%rsi
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	test_size_t_gt, .-test_size_t_gt
	.globl	test_size_t_ge
	.type	test_size_t_ge, @function
test_size_t_ge:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L199
	movl	$1, %eax
	jmp	.L200
.L199:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC32(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC33(%rip), %rsi
	pushq	%rsi
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	test_size_t_ge, .-test_size_t_ge
	.section	.rodata
.LC34:
	.string	"double"
.LC35:
	.string	"[%g] compared to [%g]"
	.text
	.globl	test_double_eq
	.type	test_double_eq, @function
test_double_eq:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	-40(%rbp), %xmm0
	ucomisd	-48(%rbp), %xmm0
	jp	.L202
	movsd	-40(%rbp), %xmm0
	ucomisd	-48(%rbp), %xmm0
	jne	.L202
	movl	$1, %eax
	jmp	.L204
.L202:
	movsd	-48(%rbp), %xmm0
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC34(%rip), %rsi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	.LC35(%rip), %rdi
	pushq	%rdi
	leaq	.LC13(%rip), %rdi
	pushq	%rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$2, %eax
	call	test_fail_message
	addq	$16, %rsp
	movl	$0, %eax
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	test_double_eq, .-test_double_eq
	.globl	test_double_ne
	.type	test_double_ne, @function
test_double_ne:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	-40(%rbp), %xmm0
	ucomisd	-48(%rbp), %xmm0
	jp	.L210
	movsd	-40(%rbp), %xmm0
	ucomisd	-48(%rbp), %xmm0
	je	.L207
.L210:
	movl	$1, %eax
	jmp	.L209
.L207:
	movsd	-48(%rbp), %xmm0
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC34(%rip), %rsi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	.LC35(%rip), %rdi
	pushq	%rdi
	leaq	.LC14(%rip), %rdi
	pushq	%rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$2, %eax
	call	test_fail_message
	addq	$16, %rsp
	movl	$0, %eax
.L209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	test_double_ne, .-test_double_ne
	.globl	test_double_lt
	.type	test_double_lt, @function
test_double_lt:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	comisd	-40(%rbp), %xmm0
	jbe	.L216
	movl	$1, %eax
	jmp	.L214
.L216:
	movsd	-48(%rbp), %xmm0
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC34(%rip), %rsi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	.LC35(%rip), %rdi
	pushq	%rdi
	leaq	.LC15(%rip), %rdi
	pushq	%rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$2, %eax
	call	test_fail_message
	addq	$16, %rsp
	movl	$0, %eax
.L214:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	test_double_lt, .-test_double_lt
	.globl	test_double_le
	.type	test_double_le, @function
test_double_le:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	-48(%rbp), %xmm0
	comisd	-40(%rbp), %xmm0
	jb	.L222
	movl	$1, %eax
	jmp	.L220
.L222:
	movsd	-48(%rbp), %xmm0
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC34(%rip), %rsi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	.LC35(%rip), %rdi
	pushq	%rdi
	leaq	.LC16(%rip), %rdi
	pushq	%rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$2, %eax
	call	test_fail_message
	addq	$16, %rsp
	movl	$0, %eax
.L220:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	test_double_le, .-test_double_le
	.globl	test_double_gt
	.type	test_double_gt, @function
test_double_gt:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	-40(%rbp), %xmm0
	comisd	-48(%rbp), %xmm0
	jbe	.L228
	movl	$1, %eax
	jmp	.L226
.L228:
	movsd	-48(%rbp), %xmm0
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC34(%rip), %rsi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	.LC35(%rip), %rdi
	pushq	%rdi
	leaq	.LC17(%rip), %rdi
	pushq	%rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$2, %eax
	call	test_fail_message
	addq	$16, %rsp
	movl	$0, %eax
.L226:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	test_double_gt, .-test_double_gt
	.globl	test_double_ge
	.type	test_double_ge, @function
test_double_ge:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	-40(%rbp), %xmm0
	comisd	-48(%rbp), %xmm0
	jb	.L234
	movl	$1, %eax
	jmp	.L232
.L234:
	movsd	-48(%rbp), %xmm0
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r8
	leaq	.LC34(%rip), %rsi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	.LC35(%rip), %rdi
	pushq	%rdi
	leaq	.LC18(%rip), %rdi
	pushq	%rdi
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$2, %eax
	call	test_fail_message
	addq	$16, %rsp
	movl	$0, %eax
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	test_double_ge, .-test_double_ge
	.section	.rodata
.LC36:
	.string	"void *"
.LC37:
	.string	"[%p] compared to [%p]"
	.text
	.globl	test_ptr_eq
	.type	test_ptr_eq, @function
test_ptr_eq:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L236
	movl	$1, %eax
	jmp	.L237
.L236:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC36(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC37(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L237:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	test_ptr_eq, .-test_ptr_eq
	.globl	test_ptr_ne
	.type	test_ptr_ne, @function
test_ptr_ne:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L239
	movl	$1, %eax
	jmp	.L240
.L239:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC36(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC37(%rip), %rsi
	pushq	%rsi
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	test_ptr_ne, .-test_ptr_ne
	.section	.rodata
.LC38:
	.string	"NULL"
.LC39:
	.string	"ptr"
.LC40:
	.string	"%p"
	.text
	.globl	test_ptr_null
	.type	test_ptr_null, @function
test_ptr_null:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L242
	movl	$1, %eax
	jmp	.L243
.L242:
	leaq	.LC38(%rip), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC39(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	leaq	.LC40(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L243:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	test_ptr_null, .-test_ptr_null
	.globl	test_ptr
	.type	test_ptr, @function
test_ptr:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L245
	movl	$1, %eax
	jmp	.L246
.L245:
	leaq	.LC38(%rip), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC39(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	leaq	.LC40(%rip), %rsi
	pushq	%rsi
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
	movl	$0, %eax
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	test_ptr, .-test_ptr
	.section	.rodata
.LC41:
	.string	"true"
.LC42:
	.string	"bool"
.LC43:
	.string	"false"
	.text
	.globl	test_true
	.type	test_true, @function
test_true:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L248
	movl	$1, %eax
	jmp	.L249
.L248:
	leaq	.LC41(%rip), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC42(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	.LC43(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$16, %rsp
	movl	$0, %eax
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	test_true, .-test_true
	.globl	test_false
	.type	test_false, @function
test_false:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.L251
	movl	$1, %eax
	jmp	.L252
.L251:
	leaq	.LC43(%rip), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC42(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	.LC41(%rip), %rsi
	pushq	%rsi
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$16, %rsp
	movl	$0, %eax
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	test_false, .-test_false
	.section	.rodata
.LC44:
	.string	"string"
	.text
	.globl	test_str_eq
	.type	test_str_eq, @function
test_str_eq:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L254
	cmpq	$0, -64(%rbp)
	jne	.L254
	movl	$1, %eax
	jmp	.L255
.L254:
	cmpq	$0, -56(%rbp)
	je	.L256
	cmpq	$0, -64(%rbp)
	je	.L256
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L257
.L256:
	cmpq	$0, -64(%rbp)
	je	.L258
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	jmp	.L259
.L258:
	movl	$0, %ebx
.L259:
	cmpq	$0, -56(%rbp)
	je	.L260
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L261
.L260:
	movl	$0, %eax
.L261:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	leaq	.LC44(%rip), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rbx
	pushq	-64(%rbp)
	pushq	%rax
	pushq	-56(%rbp)
	leaq	.LC13(%rip), %rax
	pushq	%rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$0, %edi
	call	test_fail_string_message@PLT
	addq	$48, %rsp
	movl	$0, %eax
	jmp	.L255
.L257:
	movl	$1, %eax
.L255:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	test_str_eq, .-test_str_eq
	.globl	test_str_ne
	.type	test_str_ne, @function
test_str_ne:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -56(%rbp)
	sete	%dl
	cmpq	$0, -64(%rbp)
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L263
	movl	$1, %eax
	jmp	.L264
.L263:
	cmpq	$0, -56(%rbp)
	je	.L265
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L266
.L265:
	cmpq	$0, -64(%rbp)
	je	.L267
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	jmp	.L268
.L267:
	movl	$0, %ebx
.L268:
	cmpq	$0, -56(%rbp)
	je	.L269
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L270
.L269:
	movl	$0, %eax
.L270:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	leaq	.LC44(%rip), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rbx
	pushq	-64(%rbp)
	pushq	%rax
	pushq	-56(%rbp)
	leaq	.LC14(%rip), %rax
	pushq	%rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$0, %edi
	call	test_fail_string_message@PLT
	addq	$48, %rsp
	movl	$0, %eax
	jmp	.L264
.L266:
	movl	$1, %eax
.L264:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	test_str_ne, .-test_str_ne
	.globl	test_strn_eq
	.type	test_strn_eq, @function
test_strn_eq:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L272
	cmpq	$0, 16(%rbp)
	jne	.L272
	movl	$1, %eax
	jmp	.L273
.L272:
	movq	-64(%rbp), %rax
	cmpq	24(%rbp), %rax
	jne	.L274
	cmpq	$0, -56(%rbp)
	je	.L274
	cmpq	$0, 16(%rbp)
	je	.L274
	movq	-64(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	je	.L275
.L274:
	cmpq	$0, 16(%rbp)
	je	.L276
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strnlen@PLT
	movq	%rax, %rbx
	jmp	.L277
.L276:
	movl	$0, %ebx
.L277:
	cmpq	$0, -56(%rbp)
	je	.L278
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strnlen@PLT
	jmp	.L279
.L278:
	movl	$0, %eax
.L279:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	leaq	.LC44(%rip), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rbx
	pushq	16(%rbp)
	pushq	%rax
	pushq	-56(%rbp)
	leaq	.LC13(%rip), %rax
	pushq	%rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$0, %edi
	call	test_fail_string_message@PLT
	addq	$48, %rsp
	movl	$0, %eax
	jmp	.L273
.L275:
	movl	$1, %eax
.L273:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	test_strn_eq, .-test_strn_eq
	.globl	test_strn_ne
	.type	test_strn_ne, @function
test_strn_ne:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -56(%rbp)
	sete	%dl
	cmpq	$0, 16(%rbp)
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L281
	movl	$1, %eax
	jmp	.L282
.L281:
	movq	-64(%rbp), %rax
	cmpq	24(%rbp), %rax
	jne	.L283
	cmpq	$0, -56(%rbp)
	je	.L283
	movq	-64(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L284
.L283:
	cmpq	$0, 16(%rbp)
	je	.L285
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strnlen@PLT
	movq	%rax, %rbx
	jmp	.L286
.L285:
	movl	$0, %ebx
.L286:
	cmpq	$0, -56(%rbp)
	je	.L287
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strnlen@PLT
	jmp	.L288
.L287:
	movl	$0, %eax
.L288:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	leaq	.LC44(%rip), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rbx
	pushq	16(%rbp)
	pushq	%rax
	pushq	-56(%rbp)
	leaq	.LC14(%rip), %rax
	pushq	%rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$0, %edi
	call	test_fail_string_message@PLT
	addq	$48, %rsp
	movl	$0, %eax
	jmp	.L282
.L284:
	movl	$1, %eax
.L282:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	test_strn_ne, .-test_strn_ne
	.section	.rodata
.LC45:
	.string	"memory"
	.text
	.globl	test_mem_eq
	.type	test_mem_eq, @function
test_mem_eq:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L290
	cmpq	$0, 16(%rbp)
	jne	.L290
	movl	$1, %eax
	jmp	.L291
.L290:
	movq	-48(%rbp), %rax
	cmpq	24(%rbp), %rax
	jne	.L292
	cmpq	$0, -40(%rbp)
	je	.L292
	cmpq	$0, 16(%rbp)
	je	.L292
	movq	-48(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L293
.L292:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC45(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_memory_message@PLT
	addq	$48, %rsp
	movl	$0, %eax
	jmp	.L291
.L293:
	movl	$1, %eax
.L291:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	test_mem_eq, .-test_mem_eq
	.globl	test_mem_ne
	.type	test_mem_ne, @function
test_mem_ne:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -40(%rbp)
	sete	%dl
	cmpq	$0, 16(%rbp)
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L295
	movl	$1, %eax
	jmp	.L296
.L295:
	movq	-48(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L297
	movl	$1, %eax
	jmp	.L296
.L297:
	cmpq	$0, -40(%rbp)
	je	.L298
	movq	-48(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L299
.L298:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC45(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	pushq	16(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_memory_message@PLT
	addq	$48, %rsp
	movl	$0, %eax
	jmp	.L296
.L299:
	movl	$1, %eax
.L296:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	test_mem_ne, .-test_mem_ne
	.section	.rodata
.LC46:
	.string	"BIGNUM"
	.text
	.globl	test_BN_eq
	.type	test_BN_eq, @function
test_BN_eq:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L301
	movl	$1, %eax
	jmp	.L302
.L301:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_message@PLT
	addq	$32, %rsp
	movl	$0, %eax
.L302:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	test_BN_eq, .-test_BN_eq
	.section	.rodata
.LC47:
	.string	"0"
	.text
	.globl	test_BN_eq_zero
	.type	test_BN_eq_zero, @function
test_BN_eq_zero:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L304
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L304
	movl	$1, %eax
	jmp	.L305
.L304:
	leaq	.LC47(%rip), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-32(%rbp)
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_mono_message@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L305:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	test_BN_eq_zero, .-test_BN_eq_zero
	.globl	test_BN_ne
	.type	test_BN_ne, @function
test_BN_ne:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L307
	movl	$1, %eax
	jmp	.L308
.L307:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_message@PLT
	addq	$32, %rsp
	movl	$0, %eax
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	test_BN_ne, .-test_BN_ne
	.globl	test_BN_ne_zero
	.type	test_BN_ne_zero, @function
test_BN_ne_zero:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L310
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L310
	movl	$1, %eax
	jmp	.L311
.L310:
	leaq	.LC47(%rip), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-32(%rbp)
	leaq	.LC14(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_mono_message@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L311:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	test_BN_ne_zero, .-test_BN_ne_zero
	.globl	test_BN_gt
	.type	test_BN_gt, @function
test_BN_gt:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L313
	movl	$1, %eax
	jmp	.L314
.L313:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_message@PLT
	addq	$32, %rsp
	movl	$0, %eax
.L314:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	test_BN_gt, .-test_BN_gt
	.globl	test_BN_gt_zero
	.type	test_BN_gt_zero, @function
test_BN_gt_zero:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L316
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L316
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L316
	movl	$1, %eax
	jmp	.L317
.L316:
	leaq	.LC47(%rip), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-32(%rbp)
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_mono_message@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L317:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	test_BN_gt_zero, .-test_BN_gt_zero
	.globl	test_BN_ge
	.type	test_BN_ge, @function
test_BN_ge:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L319
	movl	$1, %eax
	jmp	.L320
.L319:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_message@PLT
	addq	$32, %rsp
	movl	$0, %eax
.L320:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	test_BN_ge, .-test_BN_ge
	.globl	test_BN_ge_zero
	.type	test_BN_ge_zero, @function
test_BN_ge_zero:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L322
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L323
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L322
.L323:
	movl	$1, %eax
	jmp	.L324
.L322:
	leaq	.LC47(%rip), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-32(%rbp)
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_mono_message@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L324:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	test_BN_ge_zero, .-test_BN_ge_zero
	.globl	test_BN_lt
	.type	test_BN_lt, @function
test_BN_lt:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L326
	movl	$1, %eax
	jmp	.L327
.L326:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_message@PLT
	addq	$32, %rsp
	movl	$0, %eax
.L327:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	test_BN_lt, .-test_BN_lt
	.globl	test_BN_lt_zero
	.type	test_BN_lt_zero, @function
test_BN_lt_zero:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L329
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L329
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L329
	movl	$1, %eax
	jmp	.L330
.L329:
	leaq	.LC47(%rip), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-32(%rbp)
	leaq	.LC15(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_mono_message@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L330:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	test_BN_lt_zero, .-test_BN_lt_zero
	.globl	test_BN_le
	.type	test_BN_le, @function
test_BN_le:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jg	.L332
	movl	$1, %eax
	jmp	.L333
.L332:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_message@PLT
	addq	$32, %rsp
	movl	$0, %eax
.L333:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	test_BN_le, .-test_BN_le
	.globl	test_BN_le_zero
	.type	test_BN_le_zero, @function
test_BN_le_zero:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L335
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L336
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L335
.L336:
	movl	$1, %eax
	jmp	.L337
.L335:
	leaq	.LC47(%rip), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-32(%rbp)
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_mono_message@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	test_BN_le_zero, .-test_BN_le_zero
	.section	.rodata
.LC48:
	.string	"1"
	.text
	.globl	test_BN_eq_one
	.type	test_BN_eq_one, @function
test_BN_eq_one:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L339
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L339
	movl	$1, %eax
	jmp	.L340
.L339:
	leaq	.LC48(%rip), %r8
	movq	-24(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-32(%rbp)
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_mono_message@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L340:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	test_BN_eq_one, .-test_BN_eq_one
	.section	.rodata
.LC49:
	.string	")"
.LC50:
	.string	"ODD("
	.text
	.globl	test_BN_odd
	.type	test_BN_odd, @function
test_BN_odd:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L342
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L342
	movl	$1, %eax
	jmp	.L343
.L342:
	leaq	.LC49(%rip), %rdi
	leaq	.LC50(%rip), %rsi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_mono_message@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L343:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	test_BN_odd, .-test_BN_odd
	.section	.rodata
.LC51:
	.string	"EVEN("
	.text
	.globl	test_BN_even
	.type	test_BN_even, @function
test_BN_even:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L345
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L345
	movl	$1, %eax
	jmp	.L346
.L345:
	leaq	.LC49(%rip), %rdi
	leaq	.LC51(%rip), %rsi
	leaq	.LC46(%rip), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_mono_message@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L346:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	test_BN_even, .-test_BN_even
	.globl	test_BN_eq_word
	.type	test_BN_eq_word, @function
test_BN_eq_word:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L348
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_is_word@PLT
	testl	%eax, %eax
	je	.L348
	movl	$1, %eax
	jmp	.L349
.L348:
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L350
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
.L350:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-8(%rbp)
	pushq	-56(%rbp)
	leaq	.LC13(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_message@PLT
	addq	$32, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
.L349:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	test_BN_eq_word, .-test_BN_eq_word
	.section	.rodata
.LC52:
	.string	"abs=="
	.text
	.globl	test_BN_abs_eq_word
	.type	test_BN_abs_eq_word, @function
test_BN_abs_eq_word:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L352
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	je	.L352
	movl	$1, %eax
	jmp	.L353
.L352:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L354
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
.L354:
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L355
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
.L355:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	leaq	.LC46(%rip), %rcx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	leaq	.LC52(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_fail_bignum_message@PLT
	addq	$32, %rsp
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
.L353:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	test_BN_abs_eq_word, .-test_BN_abs_eq_word
	.section	.rodata
.LC53:
	.string	"<null>"
	.text
	.type	print_time, @function
print_time:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L357
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	jmp	.L359
.L357:
	leaq	.LC53(%rip), %rax
.L359:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	print_time, .-print_time
	.section	.rodata
.LC54:
	.string	"time_t"
.LC55:
	.string	"[%s] compared to [%s]"
	.text
	.globl	test_time_t_eq
	.type	test_time_t_eq, @function
test_time_t_eq:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L361
	cmpq	$0, -32(%rbp)
	je	.L361
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	testl	%eax, %eax
	jne	.L361
	movl	$1, %eax
	jmp	.L362
.L361:
	movl	$0, %eax
.L362:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L363
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rcx
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	leaq	.LC54(%rip), %rsi
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	pushq	%rbx
	pushq	%rcx
	leaq	.LC55(%rip), %rcx
	pushq	%rcx
	leaq	.LC13(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
.L363:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	test_time_t_eq, .-test_time_t_eq
	.globl	test_time_t_ne
	.type	test_time_t_ne, @function
test_time_t_ne:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L366
	cmpq	$0, -32(%rbp)
	je	.L366
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	testl	%eax, %eax
	je	.L366
	movl	$1, %eax
	jmp	.L367
.L366:
	movl	$0, %eax
.L367:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L368
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rcx
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	leaq	.LC54(%rip), %rsi
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	pushq	%rbx
	pushq	%rcx
	leaq	.LC55(%rip), %rcx
	pushq	%rcx
	leaq	.LC14(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
.L368:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	test_time_t_ne, .-test_time_t_ne
	.globl	test_time_t_gt
	.type	test_time_t_gt, @function
test_time_t_gt:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L371
	cmpq	$0, -32(%rbp)
	je	.L371
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	testl	%eax, %eax
	jle	.L371
	movl	$1, %eax
	jmp	.L372
.L371:
	movl	$0, %eax
.L372:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L373
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rcx
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	leaq	.LC54(%rip), %rsi
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	pushq	%rbx
	pushq	%rcx
	leaq	.LC55(%rip), %rcx
	pushq	%rcx
	leaq	.LC17(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
.L373:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	test_time_t_gt, .-test_time_t_gt
	.globl	test_time_t_ge
	.type	test_time_t_ge, @function
test_time_t_ge:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L376
	cmpq	$0, -32(%rbp)
	je	.L376
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	testl	%eax, %eax
	js	.L376
	movl	$1, %eax
	jmp	.L377
.L376:
	movl	$0, %eax
.L377:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L378
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rcx
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	leaq	.LC54(%rip), %rsi
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	pushq	%rbx
	pushq	%rcx
	leaq	.LC55(%rip), %rcx
	pushq	%rcx
	leaq	.LC18(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
.L378:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	test_time_t_ge, .-test_time_t_ge
	.globl	test_time_t_lt
	.type	test_time_t_lt, @function
test_time_t_lt:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L381
	cmpq	$0, -32(%rbp)
	je	.L381
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	testl	%eax, %eax
	jns	.L381
	movl	$1, %eax
	jmp	.L382
.L381:
	movl	$0, %eax
.L382:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L383
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rcx
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	leaq	.LC54(%rip), %rsi
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	pushq	%rbx
	pushq	%rcx
	leaq	.LC55(%rip), %rcx
	pushq	%rcx
	leaq	.LC15(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
.L383:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	test_time_t_lt, .-test_time_t_lt
	.globl	test_time_t_le
	.type	test_time_t_le, @function
test_time_t_le:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_TIME_set@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L386
	cmpq	$0, -32(%rbp)
	je	.L386
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	testl	%eax, %eax
	jg	.L386
	movl	$1, %eax
	jmp	.L387
.L386:
	movl	$0, %eax
.L387:
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L388
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_time
	movq	%rax, %rcx
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	leaq	.LC54(%rip), %rsi
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	pushq	%rbx
	pushq	%rcx
	leaq	.LC55(%rip), %rcx
	pushq	%rcx
	leaq	.LC16(%rip), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	test_fail_message
	addq	$32, %rsp
.L388:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	test_time_t_le, .-test_time_t_le
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
