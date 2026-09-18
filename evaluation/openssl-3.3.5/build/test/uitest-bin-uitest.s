	.file	"uitest.c"
	.text
	.type	test_pem_password_cb, @function
test_pem_password_cb:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_pem_password_cb, .-test_pem_password_cb
	.section	.rodata
	.align 8
.LC0:
	.string	"ui_method = UI_UTIL_wrap_read_pem_callback(test_pem_password_cb, 0)"
.LC1:
	.string	"../test/uitest.c"
.LC2:
	.string	"ui = UI_new_method(ui_method)"
.LC3:
	.string	"prompt"
	.align 8
.LC4:
	.string	"test_old: UI process interrupted or cancelled"
.LC5:
	.string	"defpass"
.LC6:
	.string	"pass"
	.text
	.type	test_old, @function
test_old:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movabsq	$7237970109966541168, %rax
	movq	%rax, -33(%rbp)
	movb	$0, -25(%rbp)
	movl	$0, -12(%rbp)
	leaq	test_pem_password_cb(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	UI_UTIL_wrap_read_pem_callback@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$39, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L14
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	UI_new_method@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$41, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L14
	leaq	-33(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_add_user_data@PLT
	leaq	-64(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	-8(%rbp), %rax
	movl	$15, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	UI_add_input_string@PLT
	testl	%eax, %eax
	jle	.L15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	UI_process@PLT
	cmpl	$-2, %eax
	je	.L8
	cmpl	$-1, %eax
	je	.L16
	nop
	leaq	-33(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$61, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	jmp	.L13
.L8:
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L16
.L13:
	movl	$1, -12(%rbp)
	jmp	.L6
.L14:
	nop
	jmp	.L6
.L15:
	nop
	jmp	.L6
.L16:
	nop
	jmp	.L6
.L17:
	nop
.L6:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	UI_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	UI_destroy_method@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_old, .-test_old
	.section	.rodata
.LC7:
	.string	"password"
.LC8:
	.string	"0"
	.align 8
.LC9:
	.string	"password_callback(pass, sizeof(pass), 0, &cb_data)"
.LC10:
	.string	"cb_data.password"
	.text
	.type	test_new_ui, @function
test_new_ui:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	.LC7(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	call	setup_ui_method@PLT
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	password_callback@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L19
	movq	-32(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	.LC10(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L19
	movl	$1, -4(%rbp)
.L19:
	call	destroy_ui_method@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_new_ui, .-test_new_ui
	.section	.rodata
.LC11:
	.string	"test_old"
.LC12:
	.string	"test_new_ui"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_old(%rip), %rdx
	leaq	.LC11(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_new_ui(%rip), %rdx
	leaq	.LC12(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
