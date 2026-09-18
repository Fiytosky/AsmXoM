	.file	"initthread.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	sk_THREAD_EVENT_HANDLER_PTR_num, @function
sk_THREAD_EVENT_HANDLER_PTR_num:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	sk_THREAD_EVENT_HANDLER_PTR_num, .-sk_THREAD_EVENT_HANDLER_PTR_num
	.type	sk_THREAD_EVENT_HANDLER_PTR_value, @function
sk_THREAD_EVENT_HANDLER_PTR_value:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	sk_THREAD_EVENT_HANDLER_PTR_value, .-sk_THREAD_EVENT_HANDLER_PTR_value
	.type	sk_THREAD_EVENT_HANDLER_PTR_new_null, @function
sk_THREAD_EVENT_HANDLER_PTR_new_null:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	sk_THREAD_EVENT_HANDLER_PTR_new_null, .-sk_THREAD_EVENT_HANDLER_PTR_new_null
	.type	sk_THREAD_EVENT_HANDLER_PTR_free, @function
sk_THREAD_EVENT_HANDLER_PTR_free:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	sk_THREAD_EVENT_HANDLER_PTR_free, .-sk_THREAD_EVENT_HANDLER_PTR_free
	.type	sk_THREAD_EVENT_HANDLER_PTR_delete, @function
sk_THREAD_EVENT_HANDLER_PTR_delete:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	sk_THREAD_EVENT_HANDLER_PTR_delete, .-sk_THREAD_EVENT_HANDLER_PTR_delete
	.type	sk_THREAD_EVENT_HANDLER_PTR_push, @function
sk_THREAD_EVENT_HANDLER_PTR_push:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	sk_THREAD_EVENT_HANDLER_PTR_push, .-sk_THREAD_EVENT_HANDLER_PTR_push
	.local	glob_tevent_reg
	.comm	glob_tevent_reg,8,8
	.local	tevent_register_runonce
	.comm	tevent_register_runonce,4,4
	.local	create_global_tevent_register_ossl_ret_
	.comm	create_global_tevent_register_ossl_ret_,4,4
	.type	create_global_tevent_register_ossl_, @function
create_global_tevent_register_ossl_:
.LFB427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	create_global_tevent_register
	movl	%eax, create_global_tevent_register_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	create_global_tevent_register_ossl_, .-create_global_tevent_register_ossl_
	.section	.rodata
.LC0:
	.string	"../crypto/initthread.c"
	.text
	.type	create_global_tevent_register, @function
create_global_tevent_register:
.LFB428:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	leaq	.LC0(%rip), %rax
	movl	$60, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, glob_tevent_reg(%rip)
	movq	glob_tevent_reg(%rip), %rax
	testq	%rax, %rax
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	glob_tevent_reg(%rip), %rbx
	call	sk_THREAD_EVENT_HANDLER_PTR_new_null
	movq	%rax, (%rbx)
	movq	glob_tevent_reg(%rip), %rbx
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, 8(%rbx)
	movq	glob_tevent_reg(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	glob_tevent_reg(%rip), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L21
.L20:
	movq	glob_tevent_reg(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_THREAD_EVENT_HANDLER_PTR_free
	movq	glob_tevent_reg(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	glob_tevent_reg(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$69, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, glob_tevent_reg(%rip)
	movl	$0, %eax
	jmp	.L19
.L21:
	movl	$1, %eax
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	create_global_tevent_register, .-create_global_tevent_register
	.type	get_global_tevent_register, @function
get_global_tevent_register:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	create_global_tevent_register_ossl_(%rip), %rdx
	leaq	tevent_register_runonce(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L23
	movl	create_global_tevent_register_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L24
.L23:
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	glob_tevent_reg(%rip), %rax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	get_global_tevent_register, .-get_global_tevent_register
	.type	init_get_thread_local, @function
init_get_thread_local:
.LFB430:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L27
	cmpq	$0, -8(%rbp)
	jne	.L28
	leaq	.LC0(%rip), %rax
	movl	$101, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	testl	%eax, %eax
	jne	.L31
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$105, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L30
.L31:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init_thread_push_handlers
	testl	%eax, %eax
	jne	.L28
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$112, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L30
.L27:
	cmpl	$0, -32(%rbp)
	jne	.L28
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
.L28:
	movq	-8(%rbp), %rax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	init_get_thread_local, .-init_get_thread_local
	.data
	.align 8
	.type	destructor_key, @object
	.size	destructor_key, 8
destructor_key:
	.quad	-1
	.text
	.type	init_thread_push_handlers, @function
init_thread_push_handlers:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	get_global_tevent_register
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L35
	movl	$0, %eax
	jmp	.L34
.L35:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_THREAD_EVENT_HANDLER_PTR_push
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-12(%rbp), %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	init_thread_push_handlers, .-init_thread_push_handlers
	.type	init_thread_remove_handlers, @function
init_thread_remove_handlers:
.LFB432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	call	get_global_tevent_register
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L43
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L44
	movl	$0, -4(%rbp)
	jmp	.L40
.L42:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_THREAD_EVENT_HANDLER_PTR_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L41
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_THREAD_EVENT_HANDLER_PTR_delete
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L36
.L41:
	addl	$1, -4(%rbp)
.L40:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_THREAD_EVENT_HANDLER_PTR_num
	cmpl	%eax, -4(%rbp)
	jl	.L42
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L36
.L43:
	nop
	jmp	.L36
.L44:
	nop
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	init_thread_remove_handlers, .-init_thread_remove_handlers
	.type	init_thread_destructor, @function
init_thread_destructor:
.LFB433:
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
	movl	$0, %edi
	call	init_thread_stop
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init_thread_remove_handlers
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$199, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	init_thread_destructor, .-init_thread_destructor
	.globl	ossl_init_thread
	.type	ossl_init_thread, @function
ossl_init_thread:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	init_thread_destructor(%rip), %rdx
	leaq	destructor_key(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_init_local@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L48
.L47:
	movl	$1, %eax
.L48:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	ossl_init_thread, .-ossl_init_thread
	.globl	ossl_cleanup_thread
	.type	ossl_cleanup_thread, @function
ossl_cleanup_thread:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %esi
	movl	$0, %edi
	call	init_thread_deregister
	leaq	destructor_key(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	movq	$-1, destructor_key(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	ossl_cleanup_thread, .-ossl_cleanup_thread
	.globl	OPENSSL_thread_stop_ex
	.type	OPENSSL_thread_stop_ex, @function
OPENSSL_thread_stop_ex:
.LFB436:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ctx_thread_stop@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE436:
	.size	OPENSSL_thread_stop_ex, .-OPENSSL_thread_stop_ex
	.globl	OPENSSL_thread_stop
	.type	OPENSSL_thread_stop, @function
OPENSSL_thread_stop:
.LFB437:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	destructor_key(%rip), %rax
	cmpq	$-1, %rax
	je	.L53
	leaq	destructor_key(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	init_get_thread_local
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	init_thread_stop
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init_thread_remove_handlers
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$237, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L53:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	OPENSSL_thread_stop, .-OPENSSL_thread_stop
	.globl	ossl_ctx_thread_stop
	.type	ossl_ctx_thread_stop, @function
ossl_ctx_thread_stop:
.LFB438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	destructor_key(%rip), %rax
	cmpq	$-1, %rax
	je	.L56
	leaq	destructor_key(%rip), %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	init_get_thread_local
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	init_thread_stop
.L56:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	ossl_ctx_thread_stop, .-ossl_ctx_thread_stop
	.type	init_thread_stop, @function
init_thread_stop:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L67
	call	get_global_tevent_register
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L68
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L69
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L62
.L66:
	cmpq	$0, -40(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L62
.L63:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	cmpq	$0, -16(%rbp)
	jne	.L64
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L65
.L64:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
.L65:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$360, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L62:
	cmpq	$0, -8(%rbp)
	jne	.L66
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L57
.L67:
	nop
	jmp	.L57
.L68:
	nop
	jmp	.L57
.L69:
	nop
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	init_thread_stop, .-init_thread_stop
	.globl	ossl_init_thread_start
	.type	ossl_init_thread_start, @function
ossl_init_thread_start:
.LFB440:
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
	leaq	destructor_key(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	init_get_thread_local
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	leaq	.LC0(%rip), %rax
	movl	$408, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L73
	movl	$0, %eax
	jmp	.L72
.L73:
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	ossl_init_thread_start, .-ossl_init_thread_start
	.type	init_thread_deregister, @function
init_thread_deregister:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	call	get_global_tevent_register
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L75
	movl	$0, %eax
	jmp	.L76
.L75:
	cmpl	$0, -60(%rbp)
	jne	.L77
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L76
.L77:
	movq	$0, glob_tevent_reg(%rip)
.L78:
	movl	$0, -4(%rbp)
	jmp	.L79
.L89:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_THREAD_EVENT_HANDLER_PTR_value
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L80
	cmpl	$0, -60(%rbp)
	jne	.L81
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L81:
	movl	$0, %eax
	jmp	.L76
.L80:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L82
.L87:
	cmpl	$0, -60(%rbp)
	jne	.L83
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L84
.L83:
	cmpq	$0, -24(%rbp)
	je	.L85
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L86
.L85:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L86:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$457, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L82
.L84:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L82:
	cmpq	$0, -16(%rbp)
	jne	.L87
	cmpl	$0, -60(%rbp)
	je	.L88
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$464, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L88:
	addl	$1, -4(%rbp)
.L79:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_THREAD_EVENT_HANDLER_PTR_num
	cmpl	%eax, -4(%rbp)
	jl	.L89
	cmpl	$0, -60(%rbp)
	je	.L90
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_THREAD_EVENT_HANDLER_PTR_free
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$469, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L91
.L90:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L91:
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	init_thread_deregister, .-init_thread_deregister
	.globl	ossl_init_thread_deregister
	.type	ossl_init_thread_deregister, @function
ossl_init_thread_deregister:
.LFB442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	init_thread_deregister
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	ossl_init_thread_deregister, .-ossl_init_thread_deregister
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
