	.file	"ui_util.c"
	.text
	.globl	UI_UTIL_read_pw_string
	.type	UI_UTIL_read_pw_string, @function
UI_UTIL_read_pw_string:
.LFB455:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8240, %rsp
	movq	%rdi, -8216(%rbp)
	movl	%esi, -8220(%rbp)
	movq	%rdx, -8232(%rbp)
	movl	%ecx, -8224(%rbp)
	movl	-8220(%rbp), %eax
	movl	$8192, %edx
	cmpl	%edx, %eax
	cmovle	%eax, %edx
	movl	-8224(%rbp), %edi
	movq	-8232(%rbp), %rcx
	leaq	-8208(%rbp), %rsi
	movq	-8216(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	UI_UTIL_read_pw@PLT
	movl	%eax, -4(%rbp)
	leaq	-8208(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	UI_UTIL_read_pw_string, .-UI_UTIL_read_pw_string
	.globl	UI_UTIL_read_pw
	.type	UI_UTIL_read_pw, @function
UI_UTIL_read_pw:
.LFB456:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -40(%rbp)
	movl	$-2, -4(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L4
	movl	$-1, %eax
	jmp	.L5
.L4:
	call	UI_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L6
	movl	-36(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	UI_add_input_string@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L7
	cmpl	$0, -40(%rbp)
	je	.L7
	movl	-36(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	UI_add_verify_string@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L7:
	cmpl	$0, -4(%rbp)
	js	.L8
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	UI_process@PLT
	movl	%eax, -4(%rbp)
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	UI_free@PLT
.L6:
	movl	-4(%rbp), %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	UI_UTIL_read_pw, .-UI_UTIL_read_pw
	.type	ui_new_method_data, @function
ui_new_method_data:
.LFB457:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	ui_new_method_data, .-ui_new_method_data
	.section	.rodata
.LC0:
	.string	"../crypto/ui/ui_util.c"
	.text
	.type	ui_dup_method_data, @function
ui_dup_method_data:
.LFB458:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$75, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movl	$1, %eax
	jmp	.L12
.L11:
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	ui_dup_method_data, .-ui_dup_method_data
	.type	ui_free_method_data, @function
ui_free_method_data:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$85, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	ui_free_method_data, .-ui_free_method_data
	.local	get_index_once
	.comm	get_index_once,4,4
	.data
	.align 4
	.type	ui_method_data_index, @object
	.size	ui_method_data_index, 4
ui_method_data_index:
	.long	-1
	.local	ui_method_data_index_init_ossl_ret_
	.comm	ui_method_data_index_init_ossl_ret_,4,4
	.text
	.type	ui_method_data_index_init_ossl_, @function
ui_method_data_index_init_ossl_:
.LFB460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ui_method_data_index_init
	movl	%eax, ui_method_data_index_init_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	ui_method_data_index_init_ossl_, .-ui_method_data_index_init_ossl_
	.type	ui_method_data_index_init, @function
ui_method_data_index_init:
.LFB461:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ui_free_method_data(%rip), %rcx
	leaq	ui_dup_method_data(%rip), %rdx
	leaq	ui_new_method_data(%rip), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$14, %edi
	call	CRYPTO_get_ex_new_index@PLT
	movl	%eax, ui_method_data_index(%rip)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	ui_method_data_index_init, .-ui_method_data_index_init
	.type	ui_open, @function
ui_open:
.LFB462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	ui_open, .-ui_open
	.type	ui_read, @function
ui_read:
.LFB463:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1080, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -1080(%rbp)
	movq	%rsi, -1088(%rbp)
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_string_type@PLT
	cmpl	$5, %eax
	ja	.L20
	cmpl	$2, %eax
	jnb	.L29
	testl	%eax, %eax
	je	.L29
	cmpl	$1, %eax
	jne	.L20
	movl	ui_method_data_index(%rip), %ebx
	movq	-1080(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_method@PLT
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	UI_method_get_ex_data@PLT
	movq	%rax, -32(%rbp)
	movq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get_result_maxsize@PLT
	movl	%eax, -20(%rbp)
	cmpl	$1024, -20(%rbp)
	jle	.L22
	movl	$1024, -20(%rbp)
.L22:
	movq	-32(%rbp), %rax
	movq	(%rax), %rbx
	movq	-1080(%rbp), %rax
	movq	%rax, %rdi
	call	UI_get0_user_data@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movl	-20(%rbp), %esi
	leaq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	*%rbx
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L23
	movl	$-1, %eax
	jmp	.L28
.L23:
	cmpl	$0, -36(%rbp)
	js	.L25
	movl	-36(%rbp), %eax
	cltq
	movb	$0, -1072(%rbp,%rax)
.L25:
	cmpl	$0, -36(%rbp)
	jns	.L26
	movl	-36(%rbp), %eax
	jmp	.L28
.L26:
	movl	-36(%rbp), %ecx
	leaq	-1072(%rbp), %rdx
	movq	-1088(%rbp), %rsi
	movq	-1080(%rbp), %rax
	movq	%rax, %rdi
	call	UI_set_result_ex@PLT
	testl	%eax, %eax
	js	.L27
	movl	$1, %eax
	jmp	.L28
.L27:
	movl	$0, %eax
	jmp	.L28
.L29:
	nop
.L20:
	movl	$1, %eax
.L28:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	ui_read, .-ui_read
	.type	ui_write, @function
ui_write:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	ui_write, .-ui_write
	.type	ui_close, @function
ui_close:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	ui_close, .-ui_close
	.section	.rodata
.LC1:
	.string	"PEM password callback wrapper"
	.text
	.globl	UI_UTIL_wrap_read_pem_callback
	.type	UI_UTIL_wrap_read_pem_callback, @function
UI_UTIL_wrap_read_pem_callback:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$151, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L35
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	UI_create_method@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L35
	leaq	ui_open(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_method_set_opener@PLT
	testl	%eax, %eax
	js	.L35
	leaq	ui_read(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_method_set_reader@PLT
	testl	%eax, %eax
	js	.L35
	leaq	ui_write(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_method_set_writer@PLT
	testl	%eax, %eax
	js	.L35
	leaq	ui_close(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	UI_method_set_closer@PLT
	testl	%eax, %eax
	js	.L35
	leaq	ui_method_data_index_init_ossl_(%rip), %rdx
	leaq	get_index_once(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L35
	movl	ui_method_data_index_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	je	.L35
	movl	ui_method_data_index(%rip), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	UI_method_set_ex_data@PLT
	testl	%eax, %eax
	jne	.L36
.L35:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	UI_destroy_method@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$160, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	cmpq	$0, -24(%rbp)
	je	.L38
	movq	-24(%rbp), %rax
	jmp	.L39
.L38:
	movq	PEM_def_callback@GOTPCREL(%rip), %rax
.L39:
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	UI_UTIL_wrap_read_pem_callback, .-UI_UTIL_wrap_read_pem_callback
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
