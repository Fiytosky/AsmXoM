	.file	"apps_ui.c"
	.text
	.local	ui_method
	.comm	ui_method,8,8
	.local	ui_base_method
	.comm	ui_base_method,8,8
	.type	ui_open, @function
ui_open:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	ui_base_method(%rip), %rax
	movq	%rax, %rdi
	call	UI_method_get_opener@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L3
.L2:
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	ui_open, .-ui_open
	.section	.rodata
.LC0:
	.string	""
	.text
	.type	ui_read, @function
ui_read:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_input_flags@PLT
	andl	$2, %eax
	testl	%eax, %eax
	je	.L5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_user_data@PLT
	testq	%rax, %rax
	je	.L5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_string_type@PLT
	cmpl	$5, %eax
	ja	.L5
	cmpl	$3, %eax
	jnb	.L10
	testl	%eax, %eax
	je	.L10
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_user_data@PLT
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L11
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	UI_set_result@PLT
	movl	$1, %eax
	jmp	.L8
.L10:
	nop
	jmp	.L5
.L11:
	nop
.L5:
	movq	ui_base_method(%rip), %rax
	movq	%rax, %rdi
	call	UI_method_get_reader@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L9
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L8
.L9:
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	UI_set_result@PLT
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	ui_read, .-ui_read
	.type	ui_write, @function
ui_write:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_input_flags@PLT
	andl	$2, %eax
	testl	%eax, %eax
	je	.L13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_user_data@PLT
	testq	%rax, %rax
	je	.L13
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_string_type@PLT
	cmpl	$5, %eax
	ja	.L13
	cmpl	$3, %eax
	jnb	.L18
	testl	%eax, %eax
	je	.L18
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_user_data@PLT
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L19
	movl	$1, %eax
	jmp	.L16
.L18:
	nop
	jmp	.L13
.L19:
	nop
.L13:
	movq	ui_base_method(%rip), %rax
	movq	%rax, %rdi
	call	UI_method_get_writer@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L17
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L16
.L17:
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	ui_write, .-ui_write
	.type	ui_close, @function
ui_close:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	ui_base_method(%rip), %rax
	movq	%rax, %rdi
	call	UI_method_get_closer@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L21
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L22
.L21:
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	ui_close, .-ui_close
	.section	.rodata
.LC1:
	.string	"pass phrase"
	.text
	.type	ui_prompt_construct, @function
ui_prompt_construct:
.LFB475:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_user_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L24
	leaq	.LC1(%rip), %rax
	movq	%rax, -32(%rbp)
.L24:
	cmpq	$0, -40(%rbp)
	jne	.L25
	cmpq	$0, -8(%rbp)
	je	.L25
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.L25:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	UI_construct_prompt@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	ui_prompt_construct, .-ui_prompt_construct
	.globl	set_base_ui_method
	.type	set_base_ui_method, @function
set_base_ui_method:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L28
	call	UI_null@PLT
	movq	%rax, -8(%rbp)
.L28:
	movq	-8(%rbp), %rax
	movq	%rax, ui_base_method(%rip)
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	set_base_ui_method, .-set_base_ui_method
	.section	.rodata
	.align 8
.LC2:
	.string	"OpenSSL application user interface"
	.text
	.globl	setup_ui_method
	.type	setup_ui_method, @function
setup_ui_method:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	UI_null@PLT
	movq	%rax, ui_base_method(%rip)
	call	UI_OpenSSL@PLT
	movq	%rax, ui_base_method(%rip)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	UI_create_method@PLT
	movq	%rax, ui_method(%rip)
	movq	ui_method(%rip), %rax
	testq	%rax, %rax
	je	.L31
	movq	ui_method(%rip), %rax
	leaq	ui_open(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_method_set_opener@PLT
	testl	%eax, %eax
	jne	.L31
	movq	ui_method(%rip), %rax
	leaq	ui_read(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_method_set_reader@PLT
	testl	%eax, %eax
	jne	.L31
	movq	ui_method(%rip), %rax
	leaq	ui_write(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_method_set_writer@PLT
	testl	%eax, %eax
	jne	.L31
	movq	ui_method(%rip), %rax
	leaq	ui_close(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_method_set_closer@PLT
	testl	%eax, %eax
	jne	.L31
	movq	ui_method(%rip), %rax
	leaq	ui_prompt_construct(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_method_set_prompt_constructor@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$1, %eax
	jmp	.L33
.L31:
	movl	$0, %eax
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	setup_ui_method, .-setup_ui_method
	.globl	destroy_ui_method
	.type	destroy_ui_method, @function
destroy_ui_method:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ui_method(%rip), %rax
	testq	%rax, %rax
	je	.L36
	movq	ui_method(%rip), %rax
	movq	%rax, %rdi
	call	UI_destroy_method@PLT
	movq	$0, ui_method(%rip)
.L36:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	destroy_ui_method, .-destroy_ui_method
	.globl	get_ui_method
	.type	get_ui_method, @function
get_ui_method:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ui_method(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	get_ui_method, .-get_ui_method
	.section	.rodata
.LC3:
	.string	"../apps/lib/apps_ui.c"
	.align 8
.LC4:
	.string	"Could not allocate %d bytes for %s\n"
	.text
	.type	ui_malloc, @function
ui_malloc:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	.LC3(%rip), %rcx
	movl	$154, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L40
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$1, %edi
	call	exit@PLT
.L40:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	ui_malloc, .-ui_malloc
	.section	.rodata
.LC5:
	.string	"Out of memory\n"
.LC6:
	.string	"password buffer"
.LC7:
	.string	"User interface error\n"
.LC8:
	.string	"aborted!\n"
	.text
	.globl	password_callback
	.type	password_callback, @function
password_callback:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -24(%rbp)
	movq	ui_method(%rip), %rax
	movq	%rax, %rdi
	call	UI_new_method@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	cmpq	$0, -72(%rbp)
	je	.L45
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L45:
	movq	-24(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	UI_construct_prompt@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L46
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	UI_free@PLT
	movl	$0, %eax
	jmp	.L44
.L46:
	orl	$2, -28(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	UI_ctrl@PLT
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_add_user_data@PLT
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edi
	movq	-56(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r9d
	movl	$4, %r8d
	movq	%rax, %rdi
	call	UI_add_input_string@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	js	.L47
	cmpl	$0, -64(%rbp)
	je	.L47
	leaq	.LC6(%rip), %rdx
	movl	-60(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ui_malloc
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %eax
	leal	-1(%rax), %edi
	movq	-16(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movl	%edi, %r9d
	movl	$4, %r8d
	movq	%rax, %rdi
	call	UI_add_verify_string@PLT
	addq	$16, %rsp
	movl	%eax, -8(%rbp)
.L47:
	cmpl	$0, -8(%rbp)
	js	.L48
.L49:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	UI_process@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L48
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	UI_ctrl@PLT
	testl	%eax, %eax
	jne	.L49
.L48:
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$205, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	cmpl	$0, -8(%rbp)
	js	.L50
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
.L50:
	cmpl	$-1, -8(%rbp)
	jne	.L51
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, -4(%rbp)
.L51:
	cmpl	$-2, -8(%rbp)
	jne	.L52
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-60(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$0, -4(%rbp)
.L52:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	UI_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$221, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	password_callback, .-password_callback
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
