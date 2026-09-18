	.file	"store_register.c"
	.text
	.type	lh_OSSL_STORE_LOADER_hfn_thunk, @function
lh_OSSL_STORE_LOADER_hfn_thunk:
.LFB501:
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
.LFE501:
	.size	lh_OSSL_STORE_LOADER_hfn_thunk, .-lh_OSSL_STORE_LOADER_hfn_thunk
	.type	lh_OSSL_STORE_LOADER_cfn_thunk, @function
lh_OSSL_STORE_LOADER_cfn_thunk:
.LFB502:
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
.LFE502:
	.size	lh_OSSL_STORE_LOADER_cfn_thunk, .-lh_OSSL_STORE_LOADER_cfn_thunk
	.type	lh_OSSL_STORE_LOADER_free, @function
lh_OSSL_STORE_LOADER_free:
.LFB503:
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
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	lh_OSSL_STORE_LOADER_free, .-lh_OSSL_STORE_LOADER_free
	.type	lh_OSSL_STORE_LOADER_insert, @function
lh_OSSL_STORE_LOADER_insert:
.LFB505:
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
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	lh_OSSL_STORE_LOADER_insert, .-lh_OSSL_STORE_LOADER_insert
	.type	lh_OSSL_STORE_LOADER_delete, @function
lh_OSSL_STORE_LOADER_delete:
.LFB506:
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
	call	OPENSSL_LH_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	lh_OSSL_STORE_LOADER_delete, .-lh_OSSL_STORE_LOADER_delete
	.type	lh_OSSL_STORE_LOADER_retrieve, @function
lh_OSSL_STORE_LOADER_retrieve:
.LFB507:
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
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	lh_OSSL_STORE_LOADER_retrieve, .-lh_OSSL_STORE_LOADER_retrieve
	.type	lh_OSSL_STORE_LOADER_error, @function
lh_OSSL_STORE_LOADER_error:
.LFB508:
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
	call	OPENSSL_LH_error@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	lh_OSSL_STORE_LOADER_error, .-lh_OSSL_STORE_LOADER_error
	.type	lh_OSSL_STORE_LOADER_doall_thunk, @function
lh_OSSL_STORE_LOADER_doall_thunk:
.LFB512:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	lh_OSSL_STORE_LOADER_doall_thunk, .-lh_OSSL_STORE_LOADER_doall_thunk
	.type	lh_OSSL_STORE_LOADER_doall_arg_thunk, @function
lh_OSSL_STORE_LOADER_doall_arg_thunk:
.LFB513:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	lh_OSSL_STORE_LOADER_doall_arg_thunk, .-lh_OSSL_STORE_LOADER_doall_arg_thunk
	.type	lh_OSSL_STORE_LOADER_new, @function
lh_OSSL_STORE_LOADER_new:
.LFB515:
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
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_OSSL_STORE_LOADER_doall_arg_thunk(%rip), %rsi
	leaq	lh_OSSL_STORE_LOADER_doall_thunk(%rip), %rcx
	leaq	lh_OSSL_STORE_LOADER_cfn_thunk(%rip), %rdx
	leaq	lh_OSSL_STORE_LOADER_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	lh_OSSL_STORE_LOADER_new, .-lh_OSSL_STORE_LOADER_new
	.local	registry_lock
	.comm	registry_lock,8,8
	.local	registry_init
	.comm	registry_init,4,4
	.local	do_registry_init_ossl_ret_
	.comm	do_registry_init_ossl_ret_,4,4
	.type	do_registry_init_ossl_, @function
do_registry_init_ossl_:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	do_registry_init
	movl	%eax, do_registry_init_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	do_registry_init_ossl_, .-do_registry_init_ossl_
	.type	do_registry_init, @function
do_registry_init:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, registry_lock(%rip)
	movq	registry_lock(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	do_registry_init, .-do_registry_init
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/store/store_register.c"
	.text
	.globl	OSSL_STORE_LOADER_new
	.type	OSSL_STORE_LOADER_new, @function
OSSL_STORE_LOADER_new:
.LFB519:
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
	cmpq	$0, -32(%rbp)
	jne	.L22
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L23
.L22:
	leaq	.LC0(%rip), %rax
	movl	$46, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L23
.L24:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	OSSL_STORE_LOADER_new, .-OSSL_STORE_LOADER_new
	.globl	OSSL_STORE_LOADER_get0_engine
	.type	OSSL_STORE_LOADER_get0_engine, @function
OSSL_STORE_LOADER_get0_engine:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	OSSL_STORE_LOADER_get0_engine, .-OSSL_STORE_LOADER_get0_engine
	.globl	OSSL_STORE_LOADER_get0_scheme
	.type	OSSL_STORE_LOADER_get0_scheme, @function
OSSL_STORE_LOADER_get0_scheme:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	OSSL_STORE_LOADER_get0_scheme, .-OSSL_STORE_LOADER_get0_scheme
	.globl	OSSL_STORE_LOADER_set_open
	.type	OSSL_STORE_LOADER_set_open, @function
OSSL_STORE_LOADER_set_open:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	OSSL_STORE_LOADER_set_open, .-OSSL_STORE_LOADER_set_open
	.globl	OSSL_STORE_LOADER_set_open_ex
	.type	OSSL_STORE_LOADER_set_open_ex, @function
OSSL_STORE_LOADER_set_open_ex:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	OSSL_STORE_LOADER_set_open_ex, .-OSSL_STORE_LOADER_set_open_ex
	.globl	OSSL_STORE_LOADER_set_attach
	.type	OSSL_STORE_LOADER_set_attach, @function
OSSL_STORE_LOADER_set_attach:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	OSSL_STORE_LOADER_set_attach, .-OSSL_STORE_LOADER_set_attach
	.globl	OSSL_STORE_LOADER_set_ctrl
	.type	OSSL_STORE_LOADER_set_ctrl, @function
OSSL_STORE_LOADER_set_ctrl:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	OSSL_STORE_LOADER_set_ctrl, .-OSSL_STORE_LOADER_set_ctrl
	.globl	OSSL_STORE_LOADER_set_expect
	.type	OSSL_STORE_LOADER_set_expect, @function
OSSL_STORE_LOADER_set_expect:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	OSSL_STORE_LOADER_set_expect, .-OSSL_STORE_LOADER_set_expect
	.globl	OSSL_STORE_LOADER_set_find
	.type	OSSL_STORE_LOADER_set_find, @function
OSSL_STORE_LOADER_set_find:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	OSSL_STORE_LOADER_set_find, .-OSSL_STORE_LOADER_set_find
	.globl	OSSL_STORE_LOADER_set_load
	.type	OSSL_STORE_LOADER_set_load, @function
OSSL_STORE_LOADER_set_load:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	OSSL_STORE_LOADER_set_load, .-OSSL_STORE_LOADER_set_load
	.globl	OSSL_STORE_LOADER_set_eof
	.type	OSSL_STORE_LOADER_set_eof, @function
OSSL_STORE_LOADER_set_eof:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	OSSL_STORE_LOADER_set_eof, .-OSSL_STORE_LOADER_set_eof
	.globl	OSSL_STORE_LOADER_set_error
	.type	OSSL_STORE_LOADER_set_error, @function
OSSL_STORE_LOADER_set_error:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	OSSL_STORE_LOADER_set_error, .-OSSL_STORE_LOADER_set_error
	.globl	OSSL_STORE_LOADER_set_close
	.type	OSSL_STORE_LOADER_set_close, @function
OSSL_STORE_LOADER_set_close:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	OSSL_STORE_LOADER_set_close, .-OSSL_STORE_LOADER_set_close
	.type	store_loader_hash, @function
store_loader_hash:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_strhash@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	store_loader_hash, .-store_loader_hash
	.type	store_loader_cmp, @function
store_loader_cmp:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	store_loader_cmp, .-store_loader_cmp
	.local	loader_register
	.comm	loader_register,8,8
	.type	ossl_store_register_init, @function
ossl_store_register_init:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	loader_register(%rip), %rax
	testq	%rax, %rax
	jne	.L54
	leaq	store_loader_cmp(%rip), %rdx
	leaq	store_loader_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OSSL_STORE_LOADER_new
	movq	%rax, loader_register(%rip)
.L54:
	movq	loader_register(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	ossl_store_register_init, .-ossl_store_register_init
	.section	.rodata
.LC1:
	.string	"+-."
.LC2:
	.string	"scheme=%s"
	.text
	.globl	ossl_store_register_loader_int
	.type	ossl_store_register_loader_int, @function
ossl_store_register_loader_int:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	je	.L57
	jmp	.L58
.L59:
	addq	$1, -8(%rbp)
.L58:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L57
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ossl_isdigit@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leaq	.LC1(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	jne	.L59
.L57:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L60
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$179, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$106, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L63
.L62:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L63:
	leaq	do_registry_init_ossl_(%rip), %rdx
	leaq	registry_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L64
	movl	do_registry_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L65
.L64:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$193, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L65:
	movq	registry_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L61
.L66:
	call	ossl_store_register_init
	testl	%eax, %eax
	je	.L67
	movq	loader_register(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OSSL_STORE_LOADER_insert
	testq	%rax, %rax
	jne	.L68
	movq	loader_register(%rip), %rax
	movq	%rax, %rdi
	call	lh_OSSL_STORE_LOADER_error
	testl	%eax, %eax
	jne	.L67
.L68:
	movl	$1, -12(%rbp)
.L67:
	movq	registry_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-12(%rbp), %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	ossl_store_register_loader_int, .-ossl_store_register_loader_int
	.globl	OSSL_STORE_register_loader
	.type	OSSL_STORE_register_loader, @function
OSSL_STORE_register_loader:
.LFB536:
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
	call	ossl_store_register_loader_int@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	OSSL_STORE_register_loader, .-OSSL_STORE_register_loader
	.globl	ossl_store_get0_loader_int
	.type	ossl_store_get0_loader_int, @function
ossl_store_get0_loader_int:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	$0, -8(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	leaq	do_registry_init_ossl_(%rip), %rdx
	leaq	registry_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L72
	movl	do_registry_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L73
.L72:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$227, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L78
.L73:
	movq	registry_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L78
.L75:
	call	ossl_store_register_init
	testl	%eax, %eax
	jne	.L76
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$234, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L77
.L76:
	movq	loader_register(%rip), %rax
	leaq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OSSL_STORE_LOADER_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L77
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$237, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$105, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L77:
	movq	registry_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	ossl_store_get0_loader_int, .-ossl_store_get0_loader_int
	.globl	ossl_store_unregister_loader_int
	.type	ossl_store_unregister_loader_int, @function
ossl_store_unregister_loader_int:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	$0, -8(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -144(%rbp)
	leaq	do_registry_init_ossl_(%rip), %rdx
	leaq	registry_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L80
	movl	do_registry_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L81
.L80:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$258, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L86
.L81:
	movq	registry_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L86
.L83:
	call	ossl_store_register_init
	testl	%eax, %eax
	jne	.L84
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$265, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L85
.L84:
	movq	loader_register(%rip), %rax
	leaq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OSSL_STORE_LOADER_delete
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L85
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$268, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-232(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movl	$105, %esi
	movl	$44, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L85:
	movq	registry_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	ossl_store_unregister_loader_int, .-ossl_store_unregister_loader_int
	.globl	OSSL_STORE_unregister_loader
	.type	OSSL_STORE_unregister_loader, @function
OSSL_STORE_unregister_loader:
.LFB539:
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
	call	ossl_store_unregister_loader_int@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	OSSL_STORE_unregister_loader, .-OSSL_STORE_unregister_loader
	.globl	ossl_store_destroy_loaders_int
	.type	ossl_store_destroy_loaders_int, @function
ossl_store_destroy_loaders_int:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	loader_register(%rip), %rax
	movq	%rax, %rdi
	call	lh_OSSL_STORE_LOADER_free
	movq	$0, loader_register(%rip)
	movq	registry_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, registry_lock(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	ossl_store_destroy_loaders_int, .-ossl_store_destroy_loaders_int
	.type	lh_OSSL_STORE_LOADER_doall_void_thunk, @function
lh_OSSL_STORE_LOADER_doall_void_thunk:
.LFB541:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	lh_OSSL_STORE_LOADER_doall_void_thunk, .-lh_OSSL_STORE_LOADER_doall_void_thunk
	.type	lh_OSSL_STORE_LOADER_doall_void, @function
lh_OSSL_STORE_LOADER_doall_void:
.LFB542:
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
	leaq	lh_OSSL_STORE_LOADER_doall_void_thunk(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg_thunk@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	lh_OSSL_STORE_LOADER_doall_void, .-lh_OSSL_STORE_LOADER_doall_void
	.globl	OSSL_STORE_do_all_loaders
	.type	OSSL_STORE_do_all_loaders, @function
OSSL_STORE_do_all_loaders:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ossl_store_register_init
	testl	%eax, %eax
	je	.L93
	movq	loader_register(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_OSSL_STORE_LOADER_doall_void
.L93:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	OSSL_STORE_do_all_loaders, .-OSSL_STORE_do_all_loaders
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 22
__func__.3:
	.string	"OSSL_STORE_LOADER_new"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 31
__func__.2:
	.string	"ossl_store_register_loader_int"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 27
__func__.1:
	.string	"ossl_store_get0_loader_int"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 33
__func__.0:
	.string	"ossl_store_unregister_loader_int"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
