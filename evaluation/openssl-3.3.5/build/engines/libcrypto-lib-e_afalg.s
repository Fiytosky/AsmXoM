	.file	"e_afalg.c"
	.text
	.section	.rodata
.LC0:
	.string	"eventfd failed"
.LC1:
	.string	"failed to get platform info"
.LC2:
	.string	"init failed"
.LC3:
	.string	"io setup failed"
.LC4:
	.string	"kernel does not support afalg"
	.align 8
.LC5:
	.string	"kernel does not support async afalg"
.LC6:
	.string	"kernel op failed"
.LC7:
	.string	"mem alloc failed"
.LC8:
	.string	"socket accept failed"
.LC9:
	.string	"socket bind failed"
.LC10:
	.string	"socket create failed"
.LC11:
	.string	"socket operation failed"
.LC12:
	.string	"socket set key failed"
	.section	.data.rel.local,"aw"
	.align 32
	.type	AFALG_str_reasons, @object
	.size	AFALG_str_reasons, 224
AFALG_str_reasons:
	.quad	108
	.quad	.LC0
	.quad	111
	.quad	.LC1
	.quad	100
	.quad	.LC2
	.quad	105
	.quad	.LC3
	.quad	101
	.quad	.LC4
	.quad	107
	.quad	.LC5
	.quad	112
	.quad	.LC6
	.quad	102
	.quad	.LC7
	.quad	110
	.quad	.LC8
	.quad	103
	.quad	.LC9
	.quad	109
	.quad	.LC10
	.quad	104
	.quad	.LC11
	.quad	106
	.quad	.LC12
	.quad	0
	.quad	0
	.local	lib_code
	.comm	lib_code,4,4
	.local	error_loaded
	.comm	error_loaded,4,4
	.text
	.type	ERR_load_AFALG_strings, @function
ERR_load_AFALG_strings:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	lib_code(%rip), %eax
	testl	%eax, %eax
	jne	.L2
	call	ERR_get_next_error_library@PLT
	movl	%eax, lib_code(%rip)
.L2:
	movl	error_loaded(%rip), %eax
	testl	%eax, %eax
	jne	.L3
	movl	lib_code(%rip), %eax
	leaq	AFALG_str_reasons(%rip), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ERR_load_strings@PLT
	movl	$1, error_loaded(%rip)
.L3:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	ERR_load_AFALG_strings, .-ERR_load_AFALG_strings
	.type	ERR_unload_AFALG_strings, @function
ERR_unload_AFALG_strings:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	error_loaded(%rip), %eax
	testl	%eax, %eax
	je	.L7
	movl	lib_code(%rip), %eax
	leaq	AFALG_str_reasons(%rip), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ERR_unload_strings@PLT
	movl	$0, error_loaded(%rip)
.L7:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	ERR_unload_AFALG_strings, .-ERR_unload_AFALG_strings
	.section	.rodata
.LC13:
	.string	"../engines/e_afalg_err.c"
	.text
	.type	ERR_AFALG_error, @function
ERR_AFALG_error:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	lib_code(%rip), %eax
	testl	%eax, %eax
	jne	.L9
	call	ERR_get_next_error_library@PLT
	movl	%eax, lib_code(%rip)
.L9:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	lib_code(%rip), %eax
	movl	-8(%rbp), %ecx
	movl	$0, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	ERR_AFALG_error, .-ERR_AFALG_error
	.section	.rodata
.LC14:
	.string	"afalg"
	.section	.data.rel.local
	.align 8
	.type	engine_afalg_id, @object
	.size	engine_afalg_id, 8
engine_afalg_id:
	.quad	.LC14
	.section	.rodata
.LC15:
	.string	"AFALG engine support"
	.section	.data.rel.local
	.align 8
	.type	engine_afalg_name, @object
	.size	engine_afalg_name, 8
engine_afalg_name:
	.quad	.LC15
	.data
	.align 8
	.type	afalg_cipher_nids, @object
	.size	afalg_cipher_nids, 12
afalg_cipher_nids:
	.long	419
	.long	423
	.long	427
	.align 32
	.type	cbc_handle, @object
	.size	cbc_handle, 48
cbc_handle:
	.long	16
	.zero	4
	.quad	0
	.long	24
	.zero	4
	.quad	0
	.long	32
	.zero	4
	.quad	0
	.text
	.type	io_setup, @function
io_setup:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$206, %edi
	movl	$0, %eax
	call	syscall@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	io_setup, .-io_setup
	.type	eventfd, @function
eventfd:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$290, %edi
	movl	$0, %eax
	call	syscall@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	eventfd, .-eventfd
	.type	io_destroy, @function
io_destroy:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$207, %edi
	movl	$0, %eax
	call	syscall@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	io_destroy, .-io_destroy
	.type	io_read, @function
io_read:
.LFB507:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$209, %edi
	movl	$0, %eax
	call	syscall@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	io_read, .-io_read
	.type	io_getevents, @function
io_getevents:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$208, %edi
	movl	$0, %eax
	call	syscall@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	io_getevents, .-io_getevents
	.type	afalg_waitfd_cleanup, @function
afalg_waitfd_cleanup:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	afalg_waitfd_cleanup, .-afalg_waitfd_cleanup
	.section	.rodata
.LC16:
	.string	"../engines/e_afalg.c"
	.align 8
.LC17:
	.string	"ALG_PERR: %s(%d): Failed to get eventfd : "
	.text
	.type	afalg_setup_async_event_notification, @function
afalg_setup_async_event_notification:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -32(%rbp)
	call	ASYNC_get_current_job@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L22
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_get_wait_ctx@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L30
.L23:
	movq	-40(%rbp), %rdx
	movq	engine_afalg_id(%rip), %rsi
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_get_fd@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L25
	movl	$0, %edi
	call	eventfd
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L26
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC17(%rip), %rsi
	movl	$210, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	leaq	.LC16(%rip), %rax
	movl	$211, %ecx
	movq	%rax, %rdx
	movl	$108, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	movl	$0, %eax
	jmp	.L30
.L26:
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	engine_afalg_id(%rip), %rsi
	leaq	afalg_waitfd_cleanup(%rip), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASYNC_WAIT_CTX_set_wait_fd@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L27
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$0, %eax
	jmp	.L30
.L27:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	$2048, %edx
	movl	$4, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	fcntl@PLT
.L25:
	movq	-40(%rbp), %rax
	movl	$2, 4(%rax)
	jmp	.L28
.L22:
	movl	$0, %edi
	call	eventfd
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L29
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC17(%rip), %rsi
	movl	$234, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	leaq	.LC16(%rip), %rax
	movl	$235, %ecx
	movq	%rax, %rdx
	movl	$108, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-40(%rbp), %rax
	movl	$1, 4(%rax)
.L28:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	afalg_setup_async_event_notification, .-afalg_setup_async_event_notification
	.section	.rodata
	.align 8
.LC18:
	.string	"ALG_PERR: %s(%d): io_setup error : "
	.text
	.type	afalg_init_aio, @function
afalg_init_aio:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$-1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	io_setup
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L32
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC18(%rip), %rsi
	movl	$252, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	leaq	.LC16(%rip), %rax
	movl	$253, %ecx
	movq	%rax, %rdx
	movl	$105, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, 4(%rax)
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	afalg_init_aio, .-afalg_init_aio
	.section	.rodata
	.align 8
.LC19:
	.string	"ALG_PERR: %s(%d): io_read failed : "
	.align 8
.LC20:
	.string	"ALG_PERR: %s(%d): read failed for event fd : "
	.align 8
.LC21:
	.string	"ALG_PERR: %s(%d): retry %d for io_read failed : "
.LC22:
	.string	"%lld"
.LC23:
	.string	" )"
.LC24:
	.string	"-ENOMEM ( code "
.LC25:
	.string	"code "
	.align 8
.LC26:
	.string	"ALG_PERR: %s(%d): io_getevents failed : "
	.text
	.type	afalg_fin_cipher_aio, @function
afalg_fin_cipher_aio:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-136(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L35
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	afalg_setup_async_event_notification
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L35
	movl	$0, %eax
	jmp	.L49
.L35:
	movq	-136(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-32(%rbp), %rax
	movl	-140(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-32(%rbp), %rax
	movw	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 56(%rax)
	movq	-136(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	io_read
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L37
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC19(%rip), %rsi
	movl	$306, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	movl	$0, %eax
	jmp	.L49
.L37:
	call	ASYNC_pause_job@PLT
	movq	-136(%rbp), %rax
	movl	(%rax), %eax
	leaq	-88(%rbp), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L38
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$11, %eax
	je	.L50
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$11, %eax
	je	.L50
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC20(%rip), %rsi
	movl	$319, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	movl	$0, %eax
	jmp	.L49
.L38:
	cmpl	$0, -12(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L41
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	io_getevents
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L43
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jns	.L44
	movq	-64(%rbp), %rax
	cmpq	$-16, %rax
	jne	.L45
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cmpl	$2, %eax
	jg	.L45
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	io_read
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L51
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %ecx
	leaq	.LC16(%rip), %rdx
	leaq	.LC21(%rip), %rsi
	movl	%ecx, %r8d
	movl	$353, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	movl	$0, %eax
	jmp	.L49
.L45:
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	.LC22(%rip), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$32, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-64(%rbp), %rax
	cmpq	$-12, %rax
	jne	.L47
	leaq	.LC16(%rip), %rax
	movl	$380, %ecx
	movq	%rax, %rdx
	movl	$112, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	leaq	.LC23(%rip), %rdx
	leaq	-128(%rbp), %rax
	leaq	.LC24(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L48
.L47:
	leaq	.LC16(%rip), %rax
	movl	$384, %ecx
	movq	%rax, %rdx
	movl	$112, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	leaq	-128(%rbp), %rax
	leaq	.LC25(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	nop
.L48:
	movl	$0, %eax
	jmp	.L49
.L44:
	movl	$1, -8(%rbp)
	jmp	.L41
.L43:
	cmpl	$0, -12(%rbp)
	jns	.L41
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC26(%rip), %rsi
	movl	$394, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	movl	$0, %eax
	jmp	.L49
.L50:
	nop
	jmp	.L41
.L51:
	nop
.L41:
	cmpl	$0, -8(%rbp)
	je	.L37
	movl	$1, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	afalg_fin_cipher_aio, .-afalg_fin_cipher_aio
	.type	afalg_set_op_sk, @function
afalg_set_op_sk:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$279, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 12(%rax)
	movq	-8(%rbp), %rax
	movq	$20, (%rax)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	afalg_set_op_sk, .-afalg_set_op_sk
	.type	afalg_set_iv_sk, @function
afalg_set_iv_sk:
.LFB514:
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
	movq	-24(%rbp), %rax
	movl	$279, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$2, 12(%rax)
	movl	-36(%rbp), %eax
	leaq	20(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	afalg_set_iv_sk, .-afalg_set_iv_sk
	.section	.rodata
	.align 8
.LC27:
	.string	"ALG_PERR: %s(%d): Failed to set socket option : "
	.text
	.type	afalg_set_key, @function
afalg_set_key:
.LFB515:
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
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-32(%rbp), %rdx
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$279, %esi
	movl	%eax, %edi
	call	setsockopt@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L55
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC27(%rip), %rsi
	movl	$434, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	leaq	.LC16(%rip), %rax
	movl	$435, %ecx
	movq	%rax, %rdx
	movl	$106, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	movl	$0, %eax
	jmp	.L56
.L55:
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	afalg_set_key, .-afalg_set_key
	.section	.rodata
	.align 8
.LC28:
	.string	"ALG_PERR: %s(%d): Failed to open socket : "
	.align 8
.LC29:
	.string	"ALG_PERR: %s(%d): Failed to bind socket : "
	.align 8
.LC30:
	.string	"ALG_PERR: %s(%d): Socket Accept Failed : "
	.text
	.type	afalg_create_sk, @function
afalg_create_sk:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	$-1, -4(%rbp)
	movq	-104(%rbp), %rax
	movl	$-1, 4(%rax)
	movq	-104(%rbp), %rax
	movl	4(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	leaq	-96(%rbp), %rax
	movl	$88, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movw	$38, -96(%rbp)
	movq	-112(%rbp), %rax
	leaq	-96(%rbp), %rdx
	leaq	2(%rdx), %rcx
	movl	$14, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	-120(%rbp), %rax
	leaq	-96(%rbp), %rdx
	leaq	24(%rdx), %rcx
	movl	$64, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcpy@PLT
	movl	$0, %edx
	movl	$5, %esi
	movl	$38, %edi
	call	socket@PLT
	movq	-104(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	jne	.L58
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC28(%rip), %rsi
	movl	$456, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	leaq	.LC16(%rip), %rax
	movl	$457, %ecx
	movq	%rax, %rdx
	movl	$109, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	jmp	.L59
.L58:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	$88, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	bind@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L60
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC29(%rip), %rsi
	movl	$463, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	leaq	.LC16(%rip), %rax
	movl	$464, %ecx
	movq	%rax, %rdx
	movl	$103, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	jmp	.L59
.L60:
	movl	$0, %ecx
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	accept@PLT
	movq	-104(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movq	-104(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jns	.L61
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC30(%rip), %rsi
	movl	$470, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	leaq	.LC16(%rip), %rax
	movl	$471, %ecx
	movq	%rax, %rdx
	movl	$110, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	jmp	.L59
.L61:
	movl	$1, %eax
	jmp	.L65
.L59:
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	js	.L63
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
.L63:
	movq	-104(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	js	.L64
	movq	-104(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
.L64:
	movq	-104(%rbp), %rax
	movl	$-1, 4(%rax)
	movq	-104(%rbp), %rax
	movl	4(%rax), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	afalg_create_sk, .-afalg_create_sk
	.section	.rodata
	.align 8
.LC31:
	.string	"ALG_PERR: %s(%d): sendmsg failed for cipher operation : "
	.text
	.type	afalg_start_cipher_sk, @function
afalg_start_cipher_sk:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movl	%r8d, -196(%rbp)
	leaq	-80(%rbp), %rax
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-160(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-160(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$64, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L67
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L68
.L67:
	movq	$0, -8(%rbp)
.L68:
	movl	-196(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	afalg_set_op_sk
	movq	-8(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	__cmsg_nxthdr@PLT
	movq	%rax, -8(%rbp)
	movq	-192(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	afalg_set_iv_sk
	movq	-176(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$32768, -32(%rbp)
	movq	$1, -56(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-168(%rbp), %rax
	movl	4(%rax), %eax
	leaq	-80(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	sendmsg@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jns	.L69
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC31(%rip), %rsi
	movl	$561, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %edi
	call	perror@PLT
	movl	$0, %eax
	jmp	.L72
.L69:
	movq	-184(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	je	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	afalg_start_cipher_sk, .-afalg_start_cipher_sk
	.section	.rodata
.LC32:
	.string	"cbc(aes)"
.LC33:
	.string	"skcipher"
	.text
	.type	afalg_cipher_init, @function
afalg_cipher_init:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L74
	cmpq	$0, -48(%rbp)
	jne	.L75
.L74:
	movl	$0, %eax
	jmp	.L76
.L75:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	testq	%rax, %rax
	jne	.L77
	movl	$0, %eax
	jmp	.L76
.L77:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L78
	movl	$0, %eax
	jmp	.L76
.L78:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_nid@PLT
	movl	%eax, -12(%rbp)
	cmpl	$427, -12(%rbp)
	je	.L79
	cmpl	$427, -12(%rbp)
	jg	.L80
	cmpl	$419, -12(%rbp)
	je	.L79
	cmpl	$423, -12(%rbp)
	jne	.L80
.L79:
	leaq	.LC32(%rip), %rax
	movq	%rax, -24(%rbp)
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	cmpl	$16, %eax
	je	.L82
	jmp	.L88
.L80:
	movl	$0, %eax
	jmp	.L76
.L88:
	movl	$0, %eax
	jmp	.L76
.L82:
	movq	-24(%rbp), %rdx
	leaq	.LC33(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	afalg_create_sk
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L83
	movl	$0, %eax
	jmp	.L76
.L83:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.L89
	movl	-32(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	afalg_set_key
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L90
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	afalg_init_aio
	testl	%eax, %eax
	je	.L91
	movq	-8(%rbp), %rax
	movl	$25757297, (%rax)
	movl	$1, %eax
	jmp	.L76
.L89:
	nop
	jmp	.L85
.L90:
	nop
	jmp	.L85
.L91:
	nop
.L85:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$0, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	afalg_cipher_init, .-afalg_cipher_init
	.type	afalg_do_cipher, @function
afalg_do_cipher:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L93
	cmpq	$0, -64(%rbp)
	je	.L93
	cmpq	$0, -72(%rbp)
	jne	.L94
.L93:
	movl	$0, %eax
	jmp	.L103
.L94:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L96
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$25757297, %eax
	je	.L97
.L96:
	movl	$0, %eax
	jmp	.L103
.L97:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	jne	.L98
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
.L98:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv@PLT
	movq	%rax, %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%ebx, %r8d
	movq	%rax, %rdi
	call	afalg_start_cipher_sk
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L99
	movl	$0, %eax
	jmp	.L103
.L99:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movq	-24(%rbp), %rdx
	leaq	16(%rdx), %rdi
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	%eax, %esi
	call	afalg_fin_cipher_aio
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L100
	movl	$0, %eax
	jmp	.L103
.L100:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_is_encrypting@PLT
	testl	%eax, %eax
	je	.L101
	movq	-80(%rbp), %rax
	leaq	-16(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv_noconst@PLT
	movq	%rax, %rcx
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	jmp	.L102
.L101:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_iv_noconst@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L102:
	movl	$1, %eax
.L103:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	afalg_do_cipher, .-afalg_do_cipher
	.type	afalg_cipher_cleanup, @function
afalg_cipher_cleanup:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L105
	movl	$0, %eax
	jmp	.L106
.L105:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_cipher_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L107
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$25757297, %eax
	je	.L108
.L107:
	movl	$1, %eax
	jmp	.L106
.L108:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$1, %eax
	jne	.L109
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
.L109:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	io_destroy
	movl	$1, %eax
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	afalg_cipher_cleanup, .-afalg_cipher_cleanup
	.type	get_cipher_handle, @function
get_cipher_handle:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$427, -4(%rbp)
	je	.L111
	cmpl	$427, -4(%rbp)
	jg	.L112
	cmpl	$419, -4(%rbp)
	je	.L113
	cmpl	$423, -4(%rbp)
	je	.L114
	jmp	.L112
.L113:
	leaq	cbc_handle(%rip), %rax
	jmp	.L115
.L114:
	leaq	16+cbc_handle(%rip), %rax
	jmp	.L115
.L111:
	leaq	32+cbc_handle(%rip), %rax
	jmp	.L115
.L112:
	movl	$0, %eax
.L115:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	get_cipher_handle, .-get_cipher_handle
	.type	afalg_aes_cbc, @function
afalg_aes_cbc:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	get_cipher_handle
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L117
	movl	$0, %eax
	jmp	.L118
.L117:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L119
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_iv_length@PLT
	testl	%eax, %eax
	je	.L120
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_flags@PLT
	testl	%eax, %eax
	je	.L120
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	afalg_cipher_init(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_init@PLT
	testl	%eax, %eax
	je	.L120
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	afalg_do_cipher(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_do_cipher@PLT
	testl	%eax, %eax
	je	.L120
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	afalg_cipher_cleanup(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_cleanup@PLT
	testl	%eax, %eax
	je	.L120
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_set_impl_ctx_size@PLT
	testl	%eax, %eax
	jne	.L119
.L120:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.L119:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	afalg_aes_cbc, .-afalg_aes_cbc
	.type	afalg_ciphers, @function
afalg_ciphers:
.LFB523:
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
	movl	%ecx, -44(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L122
	movq	-40(%rbp), %rax
	leaq	afalg_cipher_nids(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$3, %eax
	jmp	.L123
.L122:
	cmpl	$427, -44(%rbp)
	je	.L124
	cmpl	$427, -44(%rbp)
	jg	.L125
	cmpl	$419, -44(%rbp)
	je	.L124
	cmpl	$423, -44(%rbp)
	jne	.L125
.L124:
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	afalg_aes_cbc
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L126
.L125:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -4(%rbp)
.L126:
	movl	-4(%rbp), %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	afalg_ciphers, .-afalg_ciphers
	.type	bind_afalg, @function
bind_afalg:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ERR_load_AFALG_strings
	movq	engine_afalg_id(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	je	.L128
	movq	engine_afalg_name(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	je	.L128
	leaq	afalg_destroy(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_destroy_function@PLT
	testl	%eax, %eax
	je	.L128
	leaq	afalg_init(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_init_function@PLT
	testl	%eax, %eax
	je	.L128
	leaq	afalg_finish(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_finish_function@PLT
	testl	%eax, %eax
	jne	.L129
.L128:
	leaq	.LC16(%rip), %rax
	movl	$804, %ecx
	movq	%rax, %rdx
	movl	$100, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	movl	$0, %eax
	jmp	.L130
.L129:
	movw	$0, -2(%rbp)
	jmp	.L131
.L133:
	movzwl	-2(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	afalg_cipher_nids(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %edi
	call	afalg_aes_cbc
	testq	%rax, %rax
	jne	.L132
	leaq	.LC16(%rip), %rax
	movl	$815, %ecx
	movq	%rax, %rdx
	movl	$100, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	movl	$0, %eax
	jmp	.L130
.L132:
	movzwl	-2(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -2(%rbp)
.L131:
	cmpw	$2, -2(%rbp)
	jbe	.L133
	leaq	afalg_ciphers(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_ciphers@PLT
	testl	%eax, %eax
	jne	.L134
	leaq	.LC16(%rip), %rax
	movl	$821, %ecx
	movq	%rax, %rdx
	movl	$100, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	movl	$0, %eax
	jmp	.L130
.L134:
	movl	$1, %eax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	bind_afalg, .-bind_afalg
	.section	.rodata
.LC34:
	.string	"."
	.align 8
.LC35:
	.string	"ALG_ERR: ASYNC AFALG not supported this kernel(%d.%d.%d)\n"
	.align 8
.LC36:
	.string	"ALG_ERR: ASYNC AFALG requires kernel version %d.%d.%d or later\n"
	.text
	.type	afalg_chk_platform, @function
afalg_chk_platform:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$432, %rsp
	movl	$-1, -36(%rbp)
	movl	$-1, -32(%rbp)
	movl	$-1, -28(%rbp)
	leaq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	uname@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L136
	leaq	.LC16(%rip), %rax
	movl	$859, %ecx
	movq	%rax, %rdx
	movl	$111, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	movl	$0, %eax
	jmp	.L143
.L136:
	leaq	.LC34(%rip), %rdx
	leaq	-432(%rbp), %rax
	addq	$130, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L138
.L140:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, -36(%rbp,%rdx,4)
	leaq	.LC34(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -16(%rbp)
	addl	$1, -4(%rbp)
.L138:
	cmpl	$2, -4(%rbp)
	jg	.L139
	cmpq	$0, -16(%rbp)
	jne	.L140
.L139:
	movl	-36(%rbp), %eax
	sall	$16, %eax
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	sall	$8, %eax
	leal	(%rdx,%rax), %ecx
	movl	-28(%rbp), %eax
	movl	$255, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	addl	%ecx, %eax
	cmpl	$262399, %eax
	jg	.L141
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %edx
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC35(%rip), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC36(%rip), %rsi
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	leaq	.LC16(%rip), %rax
	movl	$876, %ecx
	movq	%rax, %rdx
	movl	$107, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	movl	$0, %eax
	jmp	.L143
.L141:
	movl	$0, %edx
	movl	$5, %esi
	movl	$38, %edi
	call	socket@PLT
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.L142
	leaq	.LC16(%rip), %rax
	movl	$884, %ecx
	movq	%rax, %rdx
	movl	$109, %esi
	movl	$0, %edi
	call	ERR_AFALG_error
	movl	$0, %eax
	jmp	.L143
.L142:
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$1, %eax
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	afalg_chk_platform, .-afalg_chk_platform
	.type	engine_afalg, @function
engine_afalg:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ENGINE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L145
	movl	$0, %eax
	jmp	.L146
.L145:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bind_afalg
	testl	%eax, %eax
	jne	.L147
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movl	$0, %eax
	jmp	.L146
.L147:
	movq	-8(%rbp), %rax
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	engine_afalg, .-engine_afalg
	.globl	engine_load_afalg_int
	.type	engine_load_afalg_int, @function
engine_load_afalg_int:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	afalg_chk_platform
	testl	%eax, %eax
	je	.L152
	call	engine_afalg
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L153
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	call	ERR_pop_to_mark@PLT
	jmp	.L148
.L152:
	nop
	jmp	.L148
.L153:
	nop
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	engine_load_afalg_int, .-engine_load_afalg_int
	.type	afalg_init, @function
afalg_init:
.LFB528:
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
.LFE528:
	.size	afalg_init, .-afalg_init
	.type	afalg_finish, @function
afalg_finish:
.LFB529:
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
.LFE529:
	.size	afalg_finish, .-afalg_finish
	.type	free_cbc, @function
free_cbc:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movw	$0, -2(%rbp)
	jmp	.L159
.L160:
	movzwl	-2(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+cbc_handle(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_meth_free@PLT
	movzwl	-2(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+cbc_handle(%rip), %rax
	movq	$0, (%rdx,%rax)
	movzwl	-2(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -2(%rbp)
.L159:
	cmpw	$2, -2(%rbp)
	jbe	.L160
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	free_cbc, .-free_cbc
	.type	afalg_destroy, @function
afalg_destroy:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ERR_unload_AFALG_strings
	call	free_cbc
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	afalg_destroy, .-afalg_destroy
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"ERR_AFALG_error"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
