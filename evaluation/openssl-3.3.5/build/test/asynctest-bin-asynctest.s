	.file	"asynctest.c"
	.text
	.local	ctr
	.comm	ctr,4,4
	.local	currjob
	.comm	currjob,8,8
	.local	custom_alloc_used
	.comm	custom_alloc_used,4,4
	.local	custom_free_used
	.comm	custom_free_used,4,4
	.type	only_pause, @function
only_pause:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASYNC_pause_job@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	only_pause, .-only_pause
	.type	add_two, @function
add_two:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	ctr(%rip), %eax
	addl	$1, %eax
	movl	%eax, ctr(%rip)
	call	ASYNC_pause_job@PLT
	movl	ctr(%rip), %eax
	addl	$1, %eax
	movl	%eax, ctr(%rip)
	movl	$2, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	add_two, .-add_two
	.type	save_current, @function
save_current:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASYNC_get_current_job@PLT
	movq	%rax, currjob(%rip)
	call	ASYNC_pause_job@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	save_current, .-save_current
	.type	change_deflt_libctx, @function
change_deflt_libctx:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -24(%rbp)
	call	ASYNC_pause_job@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L13
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -24(%rbp)
	call	ASYNC_pause_job@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L14
	movl	$1, -4(%rbp)
	jmp	.L11
.L13:
	nop
	jmp	.L11
.L14:
	nop
.L11:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-4(%rbp), %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	change_deflt_libctx, .-change_deflt_libctx
	.type	waitfd, @function
waitfd:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ASYNC_get_current_job@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_get_wait_ctx@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L17
.L18:
	call	ASYNC_pause_job@PLT
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$99, %edx
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_set_wait_fd@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L17
.L19:
	call	ASYNC_pause_job@PLT
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_clear_fd@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L17
.L20:
	call	ASYNC_pause_job@PLT
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$99, %edx
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_set_wait_fd@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$0, %eax
	jmp	.L17
.L21:
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_clear_fd@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L17
.L22:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	waitfd, .-waitfd
	.type	blockpause, @function
blockpause:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASYNC_block_pause@PLT
	call	ASYNC_pause_job@PLT
	call	ASYNC_unblock_pause@PLT
	call	ASYNC_pause_job@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	blockpause, .-blockpause
	.section	.rodata
	.align 8
.LC0:
	.string	"test_ASYNC_init_thread() failed\n"
	.text
	.type	test_ASYNC_init_thread, @function
test_ASYNC_init_thread:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, %esi
	movl	$2, %edi
	call	ASYNC_init_thread@PLT
	testl	%eax, %eax
	je	.L26
	call	ASYNC_WAIT_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L26
	leaq	only_pause(%rip), %rcx
	leaq	-36(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$2, %eax
	jne	.L26
	leaq	only_pause(%rip), %rcx
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$2, %eax
	jne	.L26
	leaq	only_pause(%rip), %rcx
	leaq	-44(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$1, %eax
	jne	.L26
	leaq	only_pause(%rip), %rcx
	leaq	-36(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$3, %eax
	jne	.L26
	leaq	only_pause(%rip), %rcx
	leaq	-44(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$2, %eax
	jne	.L26
	leaq	only_pause(%rip), %rcx
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$3, %eax
	jne	.L26
	leaq	only_pause(%rip), %rcx
	leaq	-44(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$3, %eax
	jne	.L26
	movl	-36(%rbp), %eax
	cmpl	$1, %eax
	jne	.L26
	movl	-40(%rbp), %eax
	cmpl	$1, %eax
	jne	.L26
	movl	-44(%rbp), %eax
	cmpl	$1, %eax
	je	.L27
.L26:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$32, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$0, %eax
	jmp	.L29
.L27:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	test_ASYNC_init_thread, .-test_ASYNC_init_thread
	.section	.rodata
.LC1:
	.string	"callback test pass"
	.text
	.type	test_callback, @function
test_callback:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	test_callback, .-test_callback
	.section	.rodata
	.align 8
.LC2:
	.string	"test_ASYNC_callback_status() failed\n"
	.text
	.type	test_ASYNC_callback_status, @function
test_ASYNC_callback_status:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movl	$100, -16(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, %esi
	movl	$1, %edi
	call	ASYNC_init_thread@PLT
	testl	%eax, %eax
	je	.L33
	call	ASYNC_WAIT_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L33
	leaq	-16(%rbp), %rdx
	leaq	test_callback(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_set_callback@PLT
	cmpl	$1, %eax
	jne	.L33
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_callback@PLT
	cmpl	$1, %eax
	jne	.L33
	movq	-24(%rbp), %rdx
	leaq	test_callback(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L33
	movq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L33
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	cmpl	$1, %eax
	jne	.L33
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_set_status@PLT
	cmpl	$1, %eax
	jne	.L33
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_status@PLT
	cmpl	%eax, -12(%rbp)
	je	.L34
.L33:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$0, %eax
	jmp	.L36
.L34:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	test_ASYNC_callback_status, .-test_ASYNC_callback_status
	.section	.rodata
	.align 8
.LC3:
	.string	"test_ASYNC_start_job() failed\n"
	.text
	.type	test_ASYNC_start_job, @function
test_ASYNC_start_job:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, ctr(%rip)
	movl	$0, %esi
	movl	$1, %edi
	call	ASYNC_init_thread@PLT
	testl	%eax, %eax
	je	.L38
	call	ASYNC_WAIT_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L38
	leaq	add_two(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$2, %eax
	jne	.L38
	movl	ctr(%rip), %eax
	cmpl	$1, %eax
	jne	.L38
	leaq	add_two(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$3, %eax
	jne	.L38
	movl	ctr(%rip), %eax
	cmpl	$2, %eax
	jne	.L38
	movl	-20(%rbp), %eax
	cmpl	$2, %eax
	je	.L39
.L38:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$30, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$0, %eax
	jmp	.L41
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	test_ASYNC_start_job, .-test_ASYNC_start_job
	.section	.rodata
	.align 8
.LC4:
	.string	"test_ASYNC_get_current_job() failed\n"
	.text
	.type	test_ASYNC_get_current_job, @function
test_ASYNC_get_current_job:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, currjob(%rip)
	movl	$0, %esi
	movl	$1, %edi
	call	ASYNC_init_thread@PLT
	testl	%eax, %eax
	je	.L43
	call	ASYNC_WAIT_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L43
	leaq	save_current(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$2, %eax
	jne	.L43
	movq	currjob(%rip), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L43
	leaq	save_current(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$3, %eax
	jne	.L43
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	je	.L44
.L43:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rcx
	movl	$36, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$0, %eax
	jmp	.L46
.L44:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	test_ASYNC_get_current_job, .-test_ASYNC_get_current_job
	.section	.rodata
	.align 8
.LC5:
	.string	"test_ASYNC_get_wait_fd() failed\n"
	.text
	.type	test_ASYNC_WAIT_CTX_get_all_fds, @function
test_ASYNC_WAIT_CTX_get_all_fds:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$-1, -24(%rbp)
	movl	$-1, -28(%rbp)
	movl	$0, %esi
	movl	$1, %edi
	call	ASYNC_init_thread@PLT
	testl	%eax, %eax
	je	.L48
	call	ASYNC_WAIT_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L48
	leaq	waitfd(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$2, %eax
	jne	.L48
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_all_fds@PLT
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L48
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_changed_fds@PLT
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L48
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L48
	leaq	waitfd(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$2, %eax
	jne	.L48
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_all_fds@PLT
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rax
	cmpq	$1, %rax
	jne	.L48
	leaq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_all_fds@PLT
	testl	%eax, %eax
	je	.L48
	movl	-24(%rbp), %eax
	cmpl	$99, %eax
	jne	.L48
	movl	$-1, -24(%rbp)
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_changed_fds@PLT
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rax
	cmpq	$1, %rax
	jne	.L48
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L48
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_changed_fds@PLT
	testl	%eax, %eax
	je	.L48
	movl	-24(%rbp), %eax
	cmpl	$99, %eax
	jne	.L48
	leaq	waitfd(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$2, %eax
	jne	.L48
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_all_fds@PLT
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L48
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_changed_fds@PLT
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L48
	movq	-48(%rbp), %rax
	cmpq	$1, %rax
	jne	.L48
	leaq	-48(%rbp), %rsi
	leaq	-28(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_changed_fds@PLT
	testl	%eax, %eax
	je	.L48
	movl	-28(%rbp), %eax
	cmpl	$99, %eax
	jne	.L48
	leaq	waitfd(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$3, %eax
	jne	.L48
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_all_fds@PLT
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L48
	leaq	-48(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_changed_fds@PLT
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L48
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L48
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	je	.L49
.L48:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC5(%rip), %rdi
	movq	%rax, %rcx
	movl	$32, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$0, %eax
	jmp	.L51
.L49:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	test_ASYNC_WAIT_CTX_get_all_fds, .-test_ASYNC_WAIT_CTX_get_all_fds
	.section	.rodata
	.align 8
.LC6:
	.string	"test_ASYNC_block_pause() failed\n"
	.text
	.type	test_ASYNC_block_pause, @function
test_ASYNC_block_pause:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, %esi
	movl	$1, %edi
	call	ASYNC_init_thread@PLT
	testl	%eax, %eax
	je	.L53
	call	ASYNC_WAIT_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L53
	leaq	blockpause(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$2, %eax
	jne	.L53
	leaq	blockpause(%rip), %rcx
	leaq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$3, %eax
	jne	.L53
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	je	.L54
.L53:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$32, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$0, %eax
	jmp	.L56
.L54:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	test_ASYNC_block_pause, .-test_ASYNC_block_pause
	.section	.rodata
	.align 8
.LC7:
	.string	"test_ASYNC_start_job_ex() failed to create libctx\n"
	.align 8
.LC8:
	.string	"test_ASYNC_start_job_ex() failed to start job\n"
	.align 8
.LC9:
	.string	"test_ASYNC_start_job_ex() failed - unexpected libctx\n"
	.align 8
.LC10:
	.string	"test_ASYNC_start_job_ex() - restarting job failed\n"
	.align 8
.LC11:
	.string	"test_ASYNC_start_job_ex() - finishing job failed\n"
	.align 8
.LC12:
	.string	"test_ASYNC_start_job_ex() failed - global libctx check failed\n"
	.text
	.type	test_ASYNC_start_job_ex, @function
test_ASYNC_start_job_ex:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L58
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC7(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L59
.L58:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	call	ASYNC_WAIT_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L60
	leaq	change_deflt_libctx(%rip), %rcx
	leaq	-60(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$2, %eax
	je	.L61
.L60:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$46, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L59
.L61:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L62
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$53, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L59
.L62:
	leaq	change_deflt_libctx(%rip), %rcx
	leaq	-60(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$2, %eax
	je	.L63
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L59
.L63:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L64
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC9(%rip), %rdi
	movq	%rax, %rcx
	movl	$53, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L59
.L64:
	leaq	change_deflt_libctx(%rip), %rcx
	leaq	-60(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ASYNC_start_job@PLT
	cmpl	$3, %eax
	jne	.L65
	movl	-60(%rbp), %eax
	cmpl	$1, %eax
	je	.L66
.L65:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rcx
	movl	$49, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L59
.L66:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L67
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdi
	movq	%rax, %rcx
	movl	$62, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L59
.L67:
	movl	$1, -12(%rbp)
.L59:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_free@PLT
	call	ASYNC_cleanup_thread@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	test_ASYNC_start_job_ex, .-test_ASYNC_start_job_ex
	.section	.rodata
.LC13:
	.string	"../test/asynctest.c"
	.text
	.type	test_alloc_stack, @function
test_alloc_stack:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, custom_alloc_used(%rip)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rcx
	movl	$422, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	test_alloc_stack, .-test_alloc_stack
	.type	test_free_stack, @function
test_free_stack:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, custom_free_used(%rip)
	leaq	.LC13(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$428, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	test_free_stack, .-test_free_stack
	.section	.rodata
	.align 8
.LC14:
	.string	"test_ASYNC_set_mem_functions() - setting and retrieving custom allocators failed\n"
	.align 8
.LC15:
	.string	"test_ASYNC_set_mem_functions() - failed initialising ctx pool\n"
	.align 8
.LC16:
	.string	"test_ASYNC_set_mem_functions() - custom allocation functions not used\n"
	.text
	.type	test_ASYNC_set_mem_functions, @function
test_ASYNC_set_mem_functions:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	test_free_stack(%rip), %rdx
	leaq	test_alloc_stack(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASYNC_set_mem_functions@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$1, %eax
	jmp	.L80
.L73:
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASYNC_get_mem_functions@PLT
	movq	-8(%rbp), %rdx
	leaq	test_alloc_stack(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L75
	movq	-16(%rbp), %rdx
	leaq	test_free_stack(%rip), %rax
	cmpq	%rax, %rdx
	je	.L76
.L75:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rcx
	movl	$81, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$0, %eax
	jmp	.L80
.L76:
	movl	$1, %esi
	movl	$1, %edi
	call	ASYNC_init_thread@PLT
	testl	%eax, %eax
	jne	.L77
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC15(%rip), %rdi
	movq	%rax, %rcx
	movl	$62, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$0, %eax
	jmp	.L80
.L77:
	call	ASYNC_cleanup_thread@PLT
	movl	custom_alloc_used(%rip), %eax
	testl	%eax, %eax
	je	.L78
	movl	custom_free_used(%rip), %eax
	testl	%eax, %eax
	jne	.L79
.L78:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$70, %edx
	movl	$1, %esi
	call	fwrite@PLT
	movl	$0, %eax
	jmp	.L80
.L79:
	movl	$1, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	test_ASYNC_set_mem_functions, .-test_ASYNC_set_mem_functions
	.section	.rodata
	.align 8
.LC17:
	.string	"OpenSSL build is not ASYNC capable - skipping async tests\n"
.LC18:
	.string	"PASS"
	.text
	.globl	main
	.type	main, @function
main:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASYNC_is_capable@PLT
	testl	%eax, %eax
	jne	.L82
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC17(%rip), %rdi
	movq	%rax, %rcx
	movl	$58, %edx
	movl	$1, %esi
	call	fwrite@PLT
	jmp	.L83
.L82:
	call	test_ASYNC_init_thread
	testl	%eax, %eax
	je	.L84
	call	test_ASYNC_callback_status
	testl	%eax, %eax
	je	.L84
	call	test_ASYNC_start_job
	testl	%eax, %eax
	je	.L84
	call	test_ASYNC_get_current_job
	testl	%eax, %eax
	je	.L84
	call	test_ASYNC_WAIT_CTX_get_all_fds
	testl	%eax, %eax
	je	.L84
	call	test_ASYNC_block_pause
	testl	%eax, %eax
	je	.L84
	call	test_ASYNC_start_job_ex
	testl	%eax, %eax
	je	.L84
	call	test_ASYNC_set_mem_functions
	testl	%eax, %eax
	jne	.L83
.L84:
	movl	$1, %eax
	jmp	.L85
.L83:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
