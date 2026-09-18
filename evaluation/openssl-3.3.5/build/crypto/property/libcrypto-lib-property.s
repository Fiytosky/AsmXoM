	.file	"property.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	sk_IMPLEMENTATION_num, @function
sk_IMPLEMENTATION_num:
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
	.size	sk_IMPLEMENTATION_num, .-sk_IMPLEMENTATION_num
	.type	sk_IMPLEMENTATION_value, @function
sk_IMPLEMENTATION_value:
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
	.size	sk_IMPLEMENTATION_value, .-sk_IMPLEMENTATION_value
	.type	sk_IMPLEMENTATION_new_null, @function
sk_IMPLEMENTATION_new_null:
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
	.size	sk_IMPLEMENTATION_new_null, .-sk_IMPLEMENTATION_new_null
	.type	sk_IMPLEMENTATION_delete, @function
sk_IMPLEMENTATION_delete:
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
	.size	sk_IMPLEMENTATION_delete, .-sk_IMPLEMENTATION_delete
	.type	sk_IMPLEMENTATION_push, @function
sk_IMPLEMENTATION_push:
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
	.size	sk_IMPLEMENTATION_push, .-sk_IMPLEMENTATION_push
	.type	sk_IMPLEMENTATION_pop_free, @function
sk_IMPLEMENTATION_pop_free:
.LFB416:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	sk_IMPLEMENTATION_pop_free, .-sk_IMPLEMENTATION_pop_free
	.type	lh_QUERY_hfn_thunk, @function
lh_QUERY_hfn_thunk:
.LFB427:
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
.LFE427:
	.size	lh_QUERY_hfn_thunk, .-lh_QUERY_hfn_thunk
	.type	lh_QUERY_cfn_thunk, @function
lh_QUERY_cfn_thunk:
.LFB428:
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
.LFE428:
	.size	lh_QUERY_cfn_thunk, .-lh_QUERY_cfn_thunk
	.type	lh_QUERY_free, @function
lh_QUERY_free:
.LFB429:
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
.LFE429:
	.size	lh_QUERY_free, .-lh_QUERY_free
	.type	lh_QUERY_flush, @function
lh_QUERY_flush:
.LFB430:
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
	call	OPENSSL_LH_flush@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	lh_QUERY_flush, .-lh_QUERY_flush
	.type	lh_QUERY_insert, @function
lh_QUERY_insert:
.LFB431:
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
.LFE431:
	.size	lh_QUERY_insert, .-lh_QUERY_insert
	.type	lh_QUERY_delete, @function
lh_QUERY_delete:
.LFB432:
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
.LFE432:
	.size	lh_QUERY_delete, .-lh_QUERY_delete
	.type	lh_QUERY_retrieve, @function
lh_QUERY_retrieve:
.LFB433:
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
.LFE433:
	.size	lh_QUERY_retrieve, .-lh_QUERY_retrieve
	.type	lh_QUERY_error, @function
lh_QUERY_error:
.LFB434:
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
.LFE434:
	.size	lh_QUERY_error, .-lh_QUERY_error
	.type	lh_QUERY_num_items, @function
lh_QUERY_num_items:
.LFB435:
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
	call	OPENSSL_LH_num_items@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	lh_QUERY_num_items, .-lh_QUERY_num_items
	.type	lh_QUERY_get_down_load, @function
lh_QUERY_get_down_load:
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
	call	OPENSSL_LH_get_down_load@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE436:
	.size	lh_QUERY_get_down_load, .-lh_QUERY_get_down_load
	.type	lh_QUERY_set_down_load, @function
lh_QUERY_set_down_load:
.LFB437:
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
	call	OPENSSL_LH_set_down_load@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	lh_QUERY_set_down_load, .-lh_QUERY_set_down_load
	.type	lh_QUERY_doall_thunk, @function
lh_QUERY_doall_thunk:
.LFB438:
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
.LFE438:
	.size	lh_QUERY_doall_thunk, .-lh_QUERY_doall_thunk
	.type	lh_QUERY_doall_arg_thunk, @function
lh_QUERY_doall_arg_thunk:
.LFB439:
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
.LFE439:
	.size	lh_QUERY_doall_arg_thunk, .-lh_QUERY_doall_arg_thunk
	.type	lh_QUERY_doall, @function
lh_QUERY_doall:
.LFB440:
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
	call	OPENSSL_LH_doall@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	lh_QUERY_doall, .-lh_QUERY_doall
	.type	lh_QUERY_new, @function
lh_QUERY_new:
.LFB441:
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
	leaq	lh_QUERY_doall_arg_thunk(%rip), %rsi
	leaq	lh_QUERY_doall_thunk(%rip), %rcx
	leaq	lh_QUERY_cfn_thunk(%rip), %rdx
	leaq	lh_QUERY_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	lh_QUERY_new, .-lh_QUERY_new
	.type	ossl_sa_ALGORITHM_new, @function
ossl_sa_ALGORITHM_new:
.LFB443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_sa_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	ossl_sa_ALGORITHM_new, .-ossl_sa_ALGORITHM_new
	.type	ossl_sa_ALGORITHM_free, @function
ossl_sa_ALGORITHM_free:
.LFB444:
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
	call	ossl_sa_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	ossl_sa_ALGORITHM_free, .-ossl_sa_ALGORITHM_free
	.type	ossl_sa_ALGORITHM_num, @function
ossl_sa_ALGORITHM_num:
.LFB446:
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
	call	ossl_sa_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	ossl_sa_ALGORITHM_num, .-ossl_sa_ALGORITHM_num
	.type	ossl_sa_ALGORITHM_doall, @function
ossl_sa_ALGORITHM_doall:
.LFB447:
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
	call	ossl_sa_doall@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	ossl_sa_ALGORITHM_doall, .-ossl_sa_ALGORITHM_doall
	.type	ossl_sa_ALGORITHM_doall_arg, @function
ossl_sa_ALGORITHM_doall_arg:
.LFB448:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_doall_arg@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	ossl_sa_ALGORITHM_doall_arg, .-ossl_sa_ALGORITHM_doall_arg
	.type	ossl_sa_ALGORITHM_get, @function
ossl_sa_ALGORITHM_get:
.LFB449:
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
	call	ossl_sa_get@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	ossl_sa_ALGORITHM_get, .-ossl_sa_ALGORITHM_get
	.type	ossl_sa_ALGORITHM_set, @function
ossl_sa_ALGORITHM_set:
.LFB450:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_set@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	ossl_sa_ALGORITHM_set, .-ossl_sa_ALGORITHM_set
	.type	sk_ALGORITHM_num, @function
sk_ALGORITHM_num:
.LFB451:
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
.LFE451:
	.size	sk_ALGORITHM_num, .-sk_ALGORITHM_num
	.type	sk_ALGORITHM_value, @function
sk_ALGORITHM_value:
.LFB452:
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
.LFE452:
	.size	sk_ALGORITHM_value, .-sk_ALGORITHM_value
	.type	sk_ALGORITHM_new_reserve, @function
sk_ALGORITHM_new_reserve:
.LFB455:
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
	call	OPENSSL_sk_new_reserve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	sk_ALGORITHM_new_reserve, .-sk_ALGORITHM_new_reserve
	.type	sk_ALGORITHM_free, @function
sk_ALGORITHM_free:
.LFB457:
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
.LFE457:
	.size	sk_ALGORITHM_free, .-sk_ALGORITHM_free
	.type	sk_ALGORITHM_push, @function
sk_ALGORITHM_push:
.LFB461:
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
.LFE461:
	.size	sk_ALGORITHM_push, .-sk_ALGORITHM_push
	.section	.rodata
.LC0:
	.string	"../crypto/property/property.c"
	.text
	.globl	ossl_ctx_global_properties_free
	.type	ossl_ctx_global_properties_free, @function
ossl_ctx_global_properties_free:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L62
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L62:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	ossl_ctx_global_properties_free, .-ossl_ctx_global_properties_free
	.globl	ossl_ctx_global_properties_new
	.type	ossl_ctx_global_properties_new, @function
ossl_ctx_global_properties_new:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$125, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	ossl_ctx_global_properties_new, .-ossl_ctx_global_properties_new
	.globl	ossl_ctx_global_properties
	.type	ossl_ctx_global_properties, @function
ossl_ctx_global_properties:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L66
	movl	$0, %esi
	movl	$64, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-24(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L68
	movq	-8(%rbp), %rax
	jmp	.L67
.L68:
	movl	$0, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	ossl_ctx_global_properties, .-ossl_ctx_global_properties
	.globl	ossl_global_properties_no_mirrored
	.type	ossl_global_properties_no_mirrored, @function
ossl_global_properties_no_mirrored:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L71
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L71
	movl	$1, %eax
	jmp	.L73
.L71:
	movl	$0, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	ossl_global_properties_no_mirrored, .-ossl_global_properties_no_mirrored
	.globl	ossl_global_properties_stop_mirroring
	.type	ossl_global_properties_stop_mirroring, @function
ossl_global_properties_stop_mirroring:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L76
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %edx
	orl	$1, %edx
	movb	%dl, 8(%rax)
.L76:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	ossl_global_properties_stop_mirroring, .-ossl_global_properties_stop_mirroring
	.type	ossl_method_up_ref, @function
ossl_method_up_ref:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	ossl_method_up_ref, .-ossl_method_up_ref
	.type	ossl_method_free, @function
ossl_method_free:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	ossl_method_free, .-ossl_method_free
	.type	ossl_property_read_lock, @function
ossl_property_read_lock:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L81
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	jmp	.L83
.L81:
	movl	$0, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	ossl_property_read_lock, .-ossl_property_read_lock
	.type	ossl_property_write_lock, @function
ossl_property_write_lock:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L85
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	jmp	.L87
.L85:
	movl	$0, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	ossl_property_write_lock, .-ossl_property_write_lock
	.type	ossl_property_unlock, @function
ossl_property_unlock:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L89
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L91
.L89:
	movl	$0, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	ossl_property_unlock, .-ossl_property_unlock
	.type	query_hash, @function
query_hash:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_strhash@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	query_hash, .-query_hash
	.type	query_cmp, @function
query_cmp:
.LFB487:
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
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L95
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L95
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L95
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rdx
	jb	.L96
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L97
	movl	$-1, -4(%rbp)
	jmp	.L95
.L97:
	movl	$0, -4(%rbp)
	jmp	.L95
.L96:
	movl	$1, -4(%rbp)
.L95:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	query_cmp, .-query_cmp
	.type	impl_free, @function
impl_free:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L101
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_method_free
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$206, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L101:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	impl_free, .-impl_free
	.type	impl_cache_free, @function
impl_cache_free:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L104
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_method_free
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$214, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L104:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	impl_cache_free, .-impl_cache_free
	.type	impl_cache_flush_alg, @function
impl_cache_flush_alg:
.LFB490:
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
	movq	16(%rax), %rax
	leaq	impl_cache_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUERY_doall
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUERY_flush
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	impl_cache_flush_alg, .-impl_cache_flush_alg
	.type	alg_cleanup, @function
alg_cleanup:
.LFB491:
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
	cmpq	$0, -32(%rbp)
	je	.L107
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	impl_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_pop_free
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	leaq	impl_cache_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUERY_doall
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUERY_free
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$232, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L107:
	cmpq	$0, -8(%rbp)
	je	.L109
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_ALGORITHM_set
.L109:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	alg_cleanup, .-alg_cleanup
	.globl	ossl_method_store_new
	.type	ossl_method_store_new, @function
ossl_method_store_new:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$246, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L111
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	call	ossl_sa_ALGORITHM_new
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L112
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L112
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L111
.L112:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movl	$0, %eax
	jmp	.L113
.L111:
	movq	-8(%rbp), %rax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	ossl_method_store_new, .-ossl_method_store_new
	.globl	ossl_method_store_free
	.type	ossl_method_store_free, @function
ossl_method_store_free:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L117
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L116
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	alg_cleanup(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_ALGORITHM_doall_arg
.L116:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_sa_ALGORITHM_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$267, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L117:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	ossl_method_store_free, .-ossl_method_store_free
	.globl	ossl_method_lock_store
	.type	ossl_method_lock_store, @function
ossl_method_lock_store:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L119
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	jmp	.L121
.L119:
	movl	$0, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	ossl_method_lock_store, .-ossl_method_lock_store
	.globl	ossl_method_unlock_store
	.type	ossl_method_unlock_store, @function
ossl_method_unlock_store:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L123
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L125
.L123:
	movl	$0, %eax
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	ossl_method_unlock_store, .-ossl_method_unlock_store
	.type	ossl_method_store_retrieve, @function
ossl_method_store_retrieve:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_ALGORITHM_get
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	ossl_method_store_retrieve, .-ossl_method_store_retrieve
	.type	ossl_method_store_insert, @function
ossl_method_store_insert:
.LFB497:
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
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_ALGORITHM_set
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	ossl_method_store_insert, .-ossl_method_store_insert
	.section	.rodata
.LC1:
	.string	""
	.text
	.globl	ossl_method_store_add
	.type	ossl_method_store_add, @function
ossl_method_store_add:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.L131
	cmpq	$0, -72(%rbp)
	je	.L131
	cmpq	$0, -40(%rbp)
	jne	.L132
.L131:
	movl	$0, %eax
	jmp	.L133
.L132:
	cmpq	$0, -64(%rbp)
	jne	.L134
	leaq	.LC1(%rip), %rax
	movq	%rax, -64(%rbp)
.L134:
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L135
	movl	$0, %eax
	jmp	.L133
.L135:
	leaq	.LC0(%rip), %rax
	movl	$310, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L136
	movl	$0, %eax
	jmp	.L133
.L136:
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_method_up_ref
	testl	%eax, %eax
	jne	.L137
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$317, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L133
.L137:
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_write_lock
	testl	%eax, %eax
	jne	.L138
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	impl_free
	movl	$0, %eax
	jmp	.L133
.L138:
	movl	-52(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_method_cache_flush
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prop_defn_get@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L139
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_parse_property@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L151
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_prop_defn_set@PLT
	testl	%eax, %eax
	jne	.L139
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	jmp	.L141
.L139:
	movl	-52(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_method_store_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L142
	leaq	.LC0(%rip), %rax
	movl	$341, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L152
	call	sk_IMPLEMENTATION_new_null
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L152
	leaq	query_cmp(%rip), %rdx
	leaq	query_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUERY_new
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L152
	movq	-8(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_method_store_insert
	testl	%eax, %eax
	je	.L153
.L142:
	movl	$0, -16(%rbp)
	jmp	.L145
.L148:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-16(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_value
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L146
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	je	.L154
.L146:
	addl	$1, -16(%rbp)
.L145:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_num
	cmpl	%eax, -16(%rbp)
	jl	.L148
	jmp	.L147
.L154:
	nop
.L147:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_num
	cmpl	%eax, -16(%rbp)
	jne	.L149
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_push
	testl	%eax, %eax
	je	.L149
	movl	$1, -12(%rbp)
.L149:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	cmpl	$0, -12(%rbp)
	jne	.L150
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	impl_free
.L150:
	movl	-12(%rbp), %eax
	jmp	.L133
.L151:
	nop
	jmp	.L141
.L152:
	nop
	jmp	.L141
.L153:
	nop
.L141:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	alg_cleanup
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	impl_free
	movl	$0, %eax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	ossl_method_store_add, .-ossl_method_store_add
	.globl	ossl_method_store_remove
	.type	ossl_method_store_remove, @function
ossl_method_store_remove:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.L156
	cmpq	$0, -56(%rbp)
	je	.L156
	cmpq	$0, -40(%rbp)
	jne	.L157
.L156:
	movl	$0, %eax
	jmp	.L158
.L157:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_write_lock
	testl	%eax, %eax
	jne	.L159
	movl	$0, %eax
	jmp	.L158
.L159:
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_method_cache_flush
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_method_store_retrieve
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L160
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	movl	$0, %eax
	jmp	.L158
.L160:
	movl	$0, -4(%rbp)
	jmp	.L161
.L163:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L162
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	impl_free
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_delete
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	movl	$1, %eax
	jmp	.L158
.L162:
	addl	$1, -4(%rbp)
.L161:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_num
	cmpl	%eax, -4(%rbp)
	jl	.L163
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	movl	$0, %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	ossl_method_store_remove, .-ossl_method_store_remove
	.type	alg_cleanup_by_provider, @function
alg_cleanup_by_provider:
.LFB500:
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
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_num
	movl	%eax, -4(%rbp)
	jmp	.L165
.L166:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L165
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	impl_free
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_delete
	addl	$1, -8(%rbp)
.L165:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	jg	.L166
	cmpl	$0, -8(%rbp)
	jle	.L168
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_method_cache_flush_alg
.L168:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	alg_cleanup_by_provider, .-alg_cleanup_by_provider
	.globl	ossl_method_store_remove_all_provided
	.type	ossl_method_store_remove_all_provided, @function
ossl_method_store_remove_all_provided:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_write_lock
	testl	%eax, %eax
	jne	.L170
	movl	$0, %eax
	jmp	.L172
.L170:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-16(%rbp), %rdx
	leaq	alg_cleanup_by_provider(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_ALGORITHM_doall_arg
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	movl	$1, %eax
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	ossl_method_store_remove_all_provided, .-ossl_method_store_remove_all_provided
	.type	alg_do_one, @function
alg_do_one:
.LFB502:
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
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	*%r8
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	alg_do_one, .-alg_do_one
	.type	alg_copy, @function
alg_copy:
.LFB503:
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
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_ALGORITHM_push
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	alg_copy, .-alg_copy
	.globl	ossl_method_store_do_all
	.type	ossl_method_store_do_all, @function
ossl_method_store_do_all:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L175
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_read_lock
	testl	%eax, %eax
	je	.L183
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_sa_ALGORITHM_num
	movl	%eax, %esi
	movl	$0, %edi
	call	sk_ALGORITHM_new_reserve
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L178
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	jmp	.L175
.L178:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	alg_copy(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_ALGORITHM_doall_arg
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_ALGORITHM_num
	movl	%eax, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L179
.L182:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_ALGORITHM_value
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_num
	movl	%eax, -36(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L180
.L181:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_value
	movq	%rax, %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	alg_do_one
	addl	$1, -8(%rbp)
.L180:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L181
	addl	$1, -4(%rbp)
.L179:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L182
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_ALGORITHM_free
	jmp	.L175
.L183:
	nop
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	ossl_method_store_do_all, .-ossl_method_store_do_all
	.globl	ossl_method_store_fetch
	.type	ossl_method_store_fetch, @function
ossl_method_store_fetch:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L185
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L186
.L185:
	movq	$0, -32(%rbp)
.L186:
	movl	$0, -36(%rbp)
	movl	$-1, -44(%rbp)
	cmpl	$0, -108(%rbp)
	jle	.L187
	cmpq	$0, -136(%rbp)
	je	.L187
	cmpq	$0, -104(%rbp)
	jne	.L188
.L187:
	movl	$0, %eax
	jmp	.L189
.L188:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_is_default@PLT
	testl	%eax, %eax
	je	.L190
	movl	$0, %esi
	movl	$64, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	jne	.L190
	movl	$0, %eax
	jmp	.L189
.L190:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_read_lock
	testl	%eax, %eax
	jne	.L191
	movl	$0, %eax
	jmp	.L189
.L191:
	movl	-108(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_method_store_retrieve
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L192
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	movl	$0, %eax
	jmp	.L189
.L192:
	cmpq	$0, -120(%rbp)
	je	.L193
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_parse_query@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L193:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_ctx_global_properties@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L194
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L194
	cmpq	$0, -16(%rbp)
	jne	.L195
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L194
.L195:
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_merge@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	cmpq	$0, -24(%rbp)
	je	.L211
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L194:
	cmpq	$0, -16(%rbp)
	jne	.L198
	movl	$0, -40(%rbp)
	jmp	.L199
.L203:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-40(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_value
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L200
	cmpq	$0, -32(%rbp)
	je	.L201
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L200
.L201:
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -36(%rbp)
	nop
	jmp	.L197
.L200:
	addl	$1, -40(%rbp)
.L199:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_num
	cmpl	%eax, -40(%rbp)
	jl	.L203
	jmp	.L197
.L198:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_has_optional@PLT
	movl	%eax, -68(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L204
.L207:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	-40(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_value
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L205
	cmpq	$0, -32(%rbp)
	je	.L206
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L205
.L206:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_match_count@PLT
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.L205
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$1, -36(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L212
.L205:
	addl	$1, -40(%rbp)
.L204:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_IMPLEMENTATION_num
	cmpl	%eax, -40(%rbp)
	jl	.L207
	jmp	.L197
.L211:
	nop
	jmp	.L197
.L212:
	nop
.L197:
	cmpl	$0, -36(%rbp)
	je	.L208
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_method_up_ref
	testl	%eax, %eax
	je	.L208
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -128(%rbp)
	je	.L210
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L210
.L208:
	movl	$0, -36(%rbp)
.L210:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movl	-36(%rbp), %eax
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	ossl_method_store_fetch, .-ossl_method_store_fetch
	.type	ossl_method_cache_flush_alg, @function
ossl_method_cache_flush_alg:
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
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUERY_num_items
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	impl_cache_flush_alg
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	ossl_method_cache_flush_alg, .-ossl_method_cache_flush_alg
	.type	ossl_method_cache_flush, @function
ossl_method_cache_flush:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_method_store_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L216
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_method_cache_flush_alg
.L216:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	ossl_method_cache_flush, .-ossl_method_cache_flush
	.globl	ossl_method_store_cache_flush_all
	.type	ossl_method_store_cache_flush_all, @function
ossl_method_store_cache_flush_all:
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
	call	ossl_property_write_lock
	testl	%eax, %eax
	jne	.L218
	movl	$0, %eax
	jmp	.L219
.L218:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	impl_cache_flush_alg(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_ALGORITHM_doall
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	movl	$1, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	ossl_method_store_cache_flush_all, .-ossl_method_store_cache_flush_all
	.type	lh_QUERY_doall_IMPL_CACHE_FLUSH_thunk, @function
lh_QUERY_doall_IMPL_CACHE_FLUSH_thunk:
.LFB509:
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
.LFE509:
	.size	lh_QUERY_doall_IMPL_CACHE_FLUSH_thunk, .-lh_QUERY_doall_IMPL_CACHE_FLUSH_thunk
	.type	lh_QUERY_doall_IMPL_CACHE_FLUSH, @function
lh_QUERY_doall_IMPL_CACHE_FLUSH:
.LFB510:
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
	leaq	lh_QUERY_doall_IMPL_CACHE_FLUSH_thunk(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg_thunk@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	lh_QUERY_doall_IMPL_CACHE_FLUSH, .-lh_QUERY_doall_IMPL_CACHE_FLUSH
	.type	impl_cache_flush_cache, @function
impl_cache_flush_cache:
.LFB511:
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
	movl	16(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$13, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$17, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$5, %eax
	xorl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L223
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUERY_delete
	movq	%rax, %rdi
	call	impl_cache_free
	jmp	.L225
.L223:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
.L225:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	impl_cache_flush_cache, .-impl_cache_flush_cache
	.type	impl_cache_flush_one_alg, @function
impl_cache_flush_one_alg:
.LFB512:
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
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUERY_get_down_load
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	lh_QUERY_set_down_load
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	impl_cache_flush_cache(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_QUERY_doall_IMPL_CACHE_FLUSH
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUERY_set_down_load
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	impl_cache_flush_one_alg, .-impl_cache_flush_one_alg
	.type	ossl_method_cache_flush_some, @function
ossl_method_cache_flush_some:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -24(%rbp)
	movb	$0, -12(%rbp)
	call	OPENSSL_rdtsc@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jne	.L228
	movb	$1, -12(%rbp)
	leaq	global_seed.0(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -16(%rbp)
.L228:
	movq	-56(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	impl_cache_flush_one_alg(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_sa_ALGORITHM_doall_arg
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	movzbl	-12(%rbp), %eax
	testb	%al, %al
	je	.L230
	movl	-16(%rbp), %eax
	lock addl	%eax, global_seed.0(%rip)
.L230:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	ossl_method_cache_flush_some, .-ossl_method_cache_flush_some
	.globl	ossl_method_store_cache_get
	.type	ossl_method_store_cache_get, @function
ossl_method_store_cache_get:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -100(%rbp)
	jle	.L232
	cmpq	$0, -88(%rbp)
	je	.L232
	cmpq	$0, -112(%rbp)
	jne	.L233
.L232:
	movl	$0, %eax
	jmp	.L239
.L233:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_read_lock
	testl	%eax, %eax
	jne	.L235
	movl	$0, %eax
	jmp	.L239
.L235:
	movl	-100(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_method_store_retrieve
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L240
	movq	-112(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUERY_retrieve
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L241
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_method_up_ref
	testl	%eax, %eax
	je	.L242
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L237
.L240:
	nop
	jmp	.L237
.L241:
	nop
	jmp	.L237
.L242:
	nop
.L237:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	movl	-4(%rbp), %eax
.L239:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	ossl_method_store_cache_get, .-ossl_method_store_cache_get
	.globl	ossl_method_store_cache_set
	.type	ossl_method_store_cache_set, @function
ossl_method_store_cache_set:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movq	$0, -8(%rbp)
	movl	$1, -12(%rbp)
	cmpl	$0, -116(%rbp)
	jle	.L244
	cmpq	$0, -104(%rbp)
	je	.L244
	cmpq	$0, -128(%rbp)
	jne	.L245
.L244:
	movl	$0, %eax
	jmp	.L259
.L245:
	cmpq	$0, -112(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L247
	movl	$0, %eax
	jmp	.L259
.L247:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_write_lock
	testl	%eax, %eax
	jne	.L248
	movl	$0, %eax
	jmp	.L259
.L248:
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L249
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_cache_flush_some
.L249:
	movl	-116(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_method_store_retrieve
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L260
	cmpq	$0, -136(%rbp)
	jne	.L252
	movq	-128(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUERY_delete
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L261
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	impl_cache_free
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L261
.L252:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$48, %rax
	leaq	.LC0(%rip), %rcx
	movl	$752, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L262
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_method_up_ref
	testl	%eax, %eax
	je	.L263
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-128(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_QUERY_insert
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L256
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	impl_cache_free
	jmp	.L254
.L256:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	lh_QUERY_error
	testl	%eax, %eax
	jne	.L257
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$499, %rax
	jbe	.L264
	movq	-104(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.L264
.L257:
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	ossl_method_free
	jmp	.L251
.L260:
	nop
	jmp	.L251
.L262:
	nop
	jmp	.L251
.L263:
	nop
.L251:
	movl	$0, -12(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$775, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L254
.L261:
	nop
	jmp	.L254
.L264:
	nop
.L254:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_unlock
	movl	-12(%rbp), %eax
.L259:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	ossl_method_store_cache_set, .-ossl_method_store_cache_set
	.data
	.align 4
	.type	global_seed.0, @object
	.size	global_seed.0, 4
global_seed.0:
	.long	1
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
