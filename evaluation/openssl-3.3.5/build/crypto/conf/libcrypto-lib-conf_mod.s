	.file	"conf_mod.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
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
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	sk_CONF_MODULE_num, @function
sk_CONF_MODULE_num:
.LFB515:
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
.LFE515:
	.size	sk_CONF_MODULE_num, .-sk_CONF_MODULE_num
	.type	sk_CONF_MODULE_value, @function
sk_CONF_MODULE_value:
.LFB516:
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
.LFE516:
	.size	sk_CONF_MODULE_value, .-sk_CONF_MODULE_value
	.type	sk_CONF_MODULE_new_null, @function
sk_CONF_MODULE_new_null:
.LFB518:
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
.LFE518:
	.size	sk_CONF_MODULE_new_null, .-sk_CONF_MODULE_new_null
	.type	sk_CONF_MODULE_free, @function
sk_CONF_MODULE_free:
.LFB521:
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
.LFE521:
	.size	sk_CONF_MODULE_free, .-sk_CONF_MODULE_free
	.type	sk_CONF_MODULE_delete, @function
sk_CONF_MODULE_delete:
.LFB523:
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
.LFE523:
	.size	sk_CONF_MODULE_delete, .-sk_CONF_MODULE_delete
	.type	sk_CONF_MODULE_push, @function
sk_CONF_MODULE_push:
.LFB525:
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
.LFE525:
	.size	sk_CONF_MODULE_push, .-sk_CONF_MODULE_push
	.type	sk_CONF_MODULE_pop_free, @function
sk_CONF_MODULE_pop_free:
.LFB529:
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
.LFE529:
	.size	sk_CONF_MODULE_pop_free, .-sk_CONF_MODULE_pop_free
	.type	sk_CONF_MODULE_dup, @function
sk_CONF_MODULE_dup:
.LFB537:
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
	call	OPENSSL_sk_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	sk_CONF_MODULE_dup, .-sk_CONF_MODULE_dup
	.type	sk_CONF_IMODULE_num, @function
sk_CONF_IMODULE_num:
.LFB540:
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
.LFE540:
	.size	sk_CONF_IMODULE_num, .-sk_CONF_IMODULE_num
	.type	sk_CONF_IMODULE_new_null, @function
sk_CONF_IMODULE_new_null:
.LFB543:
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
.LFE543:
	.size	sk_CONF_IMODULE_new_null, .-sk_CONF_IMODULE_new_null
	.type	sk_CONF_IMODULE_free, @function
sk_CONF_IMODULE_free:
.LFB546:
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
.LFE546:
	.size	sk_CONF_IMODULE_free, .-sk_CONF_IMODULE_free
	.type	sk_CONF_IMODULE_push, @function
sk_CONF_IMODULE_push:
.LFB550:
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
.LFE550:
	.size	sk_CONF_IMODULE_push, .-sk_CONF_IMODULE_push
	.type	sk_CONF_IMODULE_pop, @function
sk_CONF_IMODULE_pop:
.LFB552:
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
	call	OPENSSL_sk_pop@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	sk_CONF_IMODULE_pop, .-sk_CONF_IMODULE_pop
	.type	sk_CONF_IMODULE_dup, @function
sk_CONF_IMODULE_dup:
.LFB562:
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
	call	OPENSSL_sk_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	sk_CONF_IMODULE_dup, .-sk_CONF_IMODULE_dup
	.local	init_module_list_lock
	.comm	init_module_list_lock,4,4
	.local	module_list_lock
	.comm	module_list_lock,8,8
	.local	supported_modules
	.comm	supported_modules,8,8
	.local	initialized_modules
	.comm	initialized_modules,8,8
	.local	load_builtin_modules
	.comm	load_builtin_modules,4,4
	.type	module_lists_free, @function
module_lists_free:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_lock_free@PLT
	movq	$0, module_list_lock(%rip)
	movq	supported_modules(%rip), %rax
	movq	%rax, %rdi
	call	sk_CONF_MODULE_free
	movq	$0, supported_modules(%rip)
	movq	initialized_modules(%rip), %rax
	movq	%rax, %rdi
	call	sk_CONF_IMODULE_free
	movq	$0, initialized_modules(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	module_lists_free, .-module_lists_free
	.local	do_init_module_list_lock_ossl_ret_
	.comm	do_init_module_list_lock_ossl_ret_,4,4
	.type	do_init_module_list_lock_ossl_, @function
do_init_module_list_lock_ossl_:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	do_init_module_list_lock
	movl	%eax, do_init_module_list_lock_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	do_init_module_list_lock_ossl_, .-do_init_module_list_lock_ossl_
	.section	.rodata
.LC0:
	.string	"../crypto/conf/conf_mod.c"
	.text
	.type	do_init_module_list_lock, @function
do_init_module_list_lock:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$1, %edi
	call	ossl_rcu_lock_new@PLT
	movq	%rax, module_list_lock(%rip)
	movq	module_list_lock(%rip), %rax
	testq	%rax, %rax
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L38:
	movl	$1, %eax
.L39:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	do_init_module_list_lock, .-do_init_module_list_lock
	.section	.rodata
.LC1:
	.string	"config_diagnostics"
	.text
	.type	conf_diagnostics, @function
conf_diagnostics:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_CONF_get_number@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	conf_diagnostics, .-conf_diagnostics
	.section	.rodata
.LC2:
	.string	"openssl_conf"
.LC3:
	.string	"openssl_conf=%s"
	.text
	.globl	CONF_modules_load
	.type	CONF_modules_load, @function
CONF_modules_load:
.LFB569:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L43
	movl	$1, %eax
	jmp	.L44
.L43:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	conf_diagnostics
	testl	%eax, %eax
	je	.L45
	andq	$-24, -72(%rbp)
.L45:
	call	ERR_set_mark@PLT
	cmpq	$0, -64(%rbp)
	je	.L46
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -8(%rbp)
.L46:
	cmpq	$0, -64(%rbp)
	je	.L47
	cmpq	$0, -8(%rbp)
	jne	.L48
	movq	-72(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	je	.L48
.L47:
	leaq	.LC2(%rip), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -8(%rbp)
.L48:
	cmpq	$0, -8(%rbp)
	jne	.L49
	call	ERR_pop_to_mark@PLT
	movl	$1, %eax
	jmp	.L44
.L49:
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L50
	movq	-72(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L51
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$153, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	movl	$124, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L52
.L51:
	call	ERR_pop_to_mark@PLT
.L52:
	movl	$0, %eax
	jmp	.L44
.L50:
	call	ERR_pop_to_mark@PLT
	movl	$0, -12(%rbp)
	jmp	.L53
.L55:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	call	ERR_set_mark@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	module_run
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L54
	movq	-72(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L54
	call	ERR_clear_last_mark@PLT
	movl	-36(%rbp), %eax
	jmp	.L44
.L54:
	call	ERR_pop_to_mark@PLT
	addl	$1, -12(%rbp)
.L53:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L55
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	CONF_modules_load, .-CONF_modules_load
	.globl	CONF_modules_load_file_ex
	.type	CONF_modules_load_file_ex, @function
CONF_modules_load_file_ex:
.LFB570:
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
	movq	%rcx, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	call	ERR_set_mark@PLT
	cmpq	$0, -48(%rbp)
	jne	.L57
	call	CONF_get1_default_config_file@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L69
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L60
	movl	$1, -20(%rbp)
	jmp	.L59
.L57:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.L60:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	NCONF_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L70
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_load@PLT
	testl	%eax, %eax
	jg	.L62
	movq	-64(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L71
	call	ERR_peek_last_error@PLT
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$114, %eax
	jne	.L71
	movl	$1, -20(%rbp)
	jmp	.L71
.L62:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CONF_modules_load@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	conf_diagnostics
	movl	%eax, -24(%rbp)
	jmp	.L59
.L69:
	nop
	jmp	.L59
.L70:
	nop
	jmp	.L59
.L71:
	nop
.L59:
	cmpq	$0, -48(%rbp)
	jne	.L64
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$220, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L64:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-64(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L65
	cmpl	$0, -24(%rbp)
	jne	.L65
	movl	$1, -20(%rbp)
.L65:
	cmpl	$0, -20(%rbp)
	jle	.L66
	call	ERR_pop_to_mark@PLT
	jmp	.L67
.L66:
	call	ERR_clear_last_mark@PLT
.L67:
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	CONF_modules_load_file_ex, .-CONF_modules_load_file_ex
	.globl	CONF_modules_load_file
	.type	CONF_modules_load_file, @function
CONF_modules_load_file:
.LFB571:
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
	movl	$0, %edi
	call	CONF_modules_load_file_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	CONF_modules_load_file, .-CONF_modules_load_file
	.local	do_load_builtin_modules_ossl_ret_
	.comm	do_load_builtin_modules_ossl_ret_,4,4
	.type	do_load_builtin_modules_ossl_, @function
do_load_builtin_modules_ossl_:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	do_load_builtin_modules
	movl	%eax, do_load_builtin_modules_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	do_load_builtin_modules_ossl_, .-do_load_builtin_modules_ossl_
	.type	do_load_builtin_modules, @function
do_load_builtin_modules:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_load_builtin_modules@PLT
	call	ENGINE_load_builtin_engines@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	do_load_builtin_modules, .-do_load_builtin_modules
	.section	.rodata
.LC4:
	.string	"module=%s"
	.align 8
.LC5:
	.string	"module=%s, value=%s retcode=%-8d"
	.text
	.type	module_run, @function
module_run:
.LFB574:
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
	movq	%rcx, -48(%rbp)
	leaq	do_load_builtin_modules_ossl_(%rip), %rdx
	leaq	load_builtin_modules(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L78
	movl	do_load_builtin_modules_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L79
.L78:
	movl	$-1, %eax
	jmp	.L80
.L79:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	module_find
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L81
	movq	-48(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L81
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	module_load_dso
	movq	%rax, -8(%rbp)
.L81:
	cmpq	$0, -8(%rbp)
	jne	.L82
	movq	-48(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$267, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movl	$113, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L83:
	movl	$-1, %eax
	jmp	.L80
.L82:
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	module_init
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L84
	movq	-48(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L84
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$277, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$109, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L84:
	movl	-12(%rbp), %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	module_run, .-module_run
	.section	.rodata
.LC6:
	.string	"path"
.LC7:
	.string	"OPENSSL_init"
.LC8:
	.string	"OPENSSL_finish"
.LC9:
	.string	"module=%s, path=%s"
	.text
	.type	module_load_dso, @function
module_load_dso:
.LFB575:
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
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	leaq	.LC6(%rip), %rdx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_CONF_get_string@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L86
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.L86:
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSO_load@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L87
	movl	$110, -12(%rbp)
	jmp	.L88
.L87:
	leaq	.LC7(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DSO_bind_func@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L89
	movl	$112, -12(%rbp)
	jmp	.L88
.L89:
	leaq	.LC8(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DSO_bind_func@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	module_add
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L92
	movq	-48(%rbp), %rax
	jmp	.L91
.L92:
	nop
.L88:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DSO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$322, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	.LC9(%rip), %rsi
	movl	-12(%rbp), %eax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	module_load_dso, .-module_load_dso
	.type	module_add, @function
module_add:
.LFB576:
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
	movq	%rcx, -64(%rbp)
	movq	$0, -8(%rbp)
	leaq	do_init_module_list_lock_ossl_(%rip), %rdx
	leaq	init_module_list_lock(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L94
	movl	do_init_module_list_lock_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L95
.L94:
	movl	$0, %eax
	jmp	.L105
.L95:
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_lock@PLT
	leaq	supported_modules(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_uptr_deref@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L97
	call	sk_CONF_MODULE_new_null
	movq	%rax, -24(%rbp)
	jmp	.L98
.L97:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_MODULE_dup
	movq	%rax, -24(%rbp)
.L98:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L106
	leaq	.LC0(%rip), %rax
	movl	$349, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L107
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$353, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L108
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_CONF_MODULE_push
	testl	%eax, %eax
	je	.L109
	leaq	-24(%rbp), %rax
	leaq	supported_modules(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_rcu_assign_uptr@PLT
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_unlock@PLT
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_synchronize_rcu@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_MODULE_free
	movq	-8(%rbp), %rax
	jmp	.L105
.L106:
	nop
	jmp	.L100
.L107:
	nop
	jmp	.L100
.L108:
	nop
	jmp	.L100
.L109:
	nop
.L100:
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_unlock@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_MODULE_free
	cmpq	$0, -8(%rbp)
	je	.L104
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$373, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$374, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L104:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_MODULE_free
	movl	$0, %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	module_add, .-module_add
	.type	module_find, @function
module_find:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L111
	movq	-16(%rbp), %rax
	subq	-40(%rbp), %rax
	movl	%eax, -8(%rbp)
	jmp	.L112
.L111:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -8(%rbp)
.L112:
	leaq	do_init_module_list_lock_ossl_(%rip), %rdx
	leaq	init_module_list_lock(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L113
	movl	do_init_module_list_lock_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L114
.L113:
	movl	$0, %eax
	jmp	.L115
.L114:
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_read_lock@PLT
	leaq	supported_modules(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_uptr_deref@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L116
.L118:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_CONF_MODULE_value
	movq	%rax, -32(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L117
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_read_unlock@PLT
	movq	-32(%rbp), %rax
	jmp	.L115
.L117:
	addl	$1, -4(%rbp)
.L116:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_MODULE_num
	cmpl	%eax, -4(%rbp)
	jl	.L118
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_read_unlock@PLT
	movl	$0, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	module_find, .-module_find
	.type	module_init, @function
module_init:
.LFB578:
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
	movq	%rcx, -64(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$429, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L135
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$434, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$435, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L137
.L125:
	leaq	do_init_module_list_lock_ossl_(%rip), %rdx
	leaq	init_module_list_lock(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L138
	movl	do_init_module_list_lock_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	je	.L138
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_lock@PLT
	leaq	initialized_modules(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_uptr_deref@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L128
	call	sk_CONF_IMODULE_new_null
	movq	%rax, -32(%rbp)
	jmp	.L129
.L128:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_IMODULE_dup
	movq	%rax, -32(%rbp)
.L129:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L130
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_unlock@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$464, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L121
.L130:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_CONF_IMODULE_push
	testl	%eax, %eax
	jne	.L131
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_unlock@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_IMODULE_free
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$471, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L121
.L131:
	movq	-40(%rbp), %rax
	movl	32(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 32(%rax)
	leaq	-32(%rbp), %rax
	leaq	initialized_modules(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_rcu_assign_uptr@PLT
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_unlock@PLT
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_synchronize_rcu@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_IMODULE_free
	movl	-4(%rbp), %eax
	jmp	.L134
.L135:
	nop
	jmp	.L121
.L137:
	nop
	jmp	.L121
.L138:
	nop
.L121:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L139
	cmpl	$0, -8(%rbp)
	je	.L139
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L124
.L136:
	nop
	jmp	.L124
.L139:
	nop
.L124:
	cmpq	$0, -16(%rbp)
	je	.L133
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$491, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$492, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$493, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L133:
	movl	$-1, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	module_init, .-module_init
	.globl	CONF_modules_unload
	.type	CONF_modules_unload, @function
CONF_modules_unload:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	call	conf_modules_finish_int
	testl	%eax, %eax
	je	.L151
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_lock@PLT
	leaq	supported_modules(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_uptr_deref@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_MODULE_dup
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L143
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_unlock@PLT
	jmp	.L140
.L143:
	call	sk_CONF_MODULE_new_null
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_MODULE_num
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L144
.L148:
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_CONF_MODULE_value
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jg	.L145
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L146
.L145:
	cmpl	$0, -52(%rbp)
	je	.L152
.L146:
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_CONF_MODULE_delete
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_CONF_MODULE_push
	jmp	.L147
.L152:
	nop
.L147:
	subl	$1, -4(%rbp)
.L144:
	cmpl	$0, -4(%rbp)
	jns	.L148
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_MODULE_num
	testl	%eax, %eax
	jne	.L149
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_MODULE_free
	movq	$0, -40(%rbp)
.L149:
	leaq	-40(%rbp), %rax
	leaq	supported_modules(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_rcu_assign_uptr@PLT
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_unlock@PLT
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_synchronize_rcu@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_MODULE_free
	leaq	module_free(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_CONF_MODULE_pop_free
	jmp	.L140
.L151:
	nop
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	CONF_modules_unload, .-CONF_modules_unload
	.type	module_free, @function
module_free:
.LFB580:
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
	call	DSO_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$557, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$558, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	module_free, .-module_free
	.type	conf_modules_finish_int, @function
conf_modules_finish_int:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -24(%rbp)
	leaq	do_init_module_list_lock_ossl_(%rip), %rdx
	leaq	init_module_list_lock(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L155
	movl	do_init_module_list_lock_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L156
.L155:
	movl	$0, %eax
	jmp	.L161
.L156:
	movq	module_list_lock(%rip), %rax
	testq	%rax, %rax
	jne	.L158
	movl	$0, %eax
	jmp	.L161
.L158:
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_lock@PLT
	leaq	initialized_modules(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_uptr_deref@PLT
	movq	%rax, -8(%rbp)
	leaq	-24(%rbp), %rax
	leaq	initialized_modules(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_rcu_assign_uptr@PLT
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_unlock@PLT
	movq	module_list_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_synchronize_rcu@PLT
	jmp	.L159
.L160:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_IMODULE_pop
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	module_finish
.L159:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_IMODULE_num
	testl	%eax, %eax
	jg	.L160
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sk_CONF_IMODULE_free
	movl	$1, %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	conf_modules_finish_int, .-conf_modules_finish_int
	.globl	CONF_modules_finish
	.type	CONF_modules_finish, @function
CONF_modules_finish:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	conf_modules_finish_int
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	CONF_modules_finish, .-CONF_modules_finish
	.type	module_finish, @function
module_finish:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L167
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L166
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L166:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	32(%rax), %edx
	subl	$1, %edx
	movl	%edx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$605, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$606, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$607, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L163
.L167:
	nop
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	module_finish, .-module_finish
	.globl	CONF_module_add
	.type	CONF_module_add, @function
CONF_module_add:
.LFB584:
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
	movl	$0, %edi
	call	module_add
	testq	%rax, %rax
	je	.L169
	movl	$1, %eax
	jmp	.L170
.L169:
	movl	$0, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	CONF_module_add, .-CONF_module_add
	.globl	ossl_config_modules_free
	.type	ossl_config_modules_free, @function
ossl_config_modules_free:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edi
	call	CONF_modules_unload@PLT
	call	module_lists_free
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	ossl_config_modules_free, .-ossl_config_modules_free
	.globl	CONF_imodule_get_name
	.type	CONF_imodule_get_name, @function
CONF_imodule_get_name:
.LFB586:
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
.LFE586:
	.size	CONF_imodule_get_name, .-CONF_imodule_get_name
	.globl	CONF_imodule_get_value
	.type	CONF_imodule_get_value, @function
CONF_imodule_get_value:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	CONF_imodule_get_value, .-CONF_imodule_get_value
	.globl	CONF_imodule_get_usr_data
	.type	CONF_imodule_get_usr_data, @function
CONF_imodule_get_usr_data:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	CONF_imodule_get_usr_data, .-CONF_imodule_get_usr_data
	.globl	CONF_imodule_set_usr_data
	.type	CONF_imodule_set_usr_data, @function
CONF_imodule_set_usr_data:
.LFB589:
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
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	CONF_imodule_set_usr_data, .-CONF_imodule_set_usr_data
	.globl	CONF_imodule_get_module
	.type	CONF_imodule_get_module, @function
CONF_imodule_get_module:
.LFB590:
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
.LFE590:
	.size	CONF_imodule_get_module, .-CONF_imodule_get_module
	.globl	CONF_imodule_get_flags
	.type	CONF_imodule_get_flags, @function
CONF_imodule_get_flags:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	CONF_imodule_get_flags, .-CONF_imodule_get_flags
	.globl	CONF_imodule_set_flags
	.type	CONF_imodule_set_flags, @function
CONF_imodule_set_flags:
.LFB592:
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
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	CONF_imodule_set_flags, .-CONF_imodule_set_flags
	.globl	CONF_module_get_usr_data
	.type	CONF_module_get_usr_data, @function
CONF_module_get_usr_data:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	CONF_module_get_usr_data, .-CONF_module_get_usr_data
	.globl	CONF_module_set_usr_data
	.type	CONF_module_set_usr_data, @function
CONF_module_set_usr_data:
.LFB594:
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
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	CONF_module_set_usr_data, .-CONF_module_set_usr_data
	.section	.rodata
.LC10:
	.string	""
.LC11:
	.string	"OPENSSL_CONF"
.LC12:
	.string	"/"
.LC13:
	.string	"openssl.cnf"
.LC14:
	.string	"%s%s%s"
	.text
	.globl	CONF_get1_default_config_file
	.type	CONF_get1_default_config_file, @function
CONF_get1_default_config_file:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	leaq	.LC10(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	ossl_safe_getenv@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L188
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$682, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	jmp	.L189
.L188:
	call	X509_get_default_cert_area@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$12, %rax
	movq	%rax, -48(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$689, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L190
	movl	$0, %eax
	jmp	.L189
.L190:
	leaq	.LC13(%rip), %r8
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC14(%rip), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-32(%rbp), %rax
.L189:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	CONF_get1_default_config_file, .-CONF_get1_default_config_file
	.globl	CONF_parse_list
	.type	CONF_parse_list, @function
CONF_parse_list:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L192
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$713, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L193
.L192:
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L207:
	cmpl	$0, -48(%rbp)
	je	.L194
	jmp	.L195
.L196:
	addq	$1, -16(%rbp)
.L195:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L194
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L196
.L194:
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L197
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L198
.L197:
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	*%rcx
	movl	%eax, -4(%rbp)
	jmp	.L199
.L198:
	cmpq	$0, -32(%rbp)
	je	.L200
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.L201
.L200:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L201:
	cmpl	$0, -48(%rbp)
	je	.L202
	jmp	.L203
.L204:
	subq	$1, -24(%rbp)
.L203:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L204
.L202:
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	addl	$1, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
.L199:
	cmpl	$0, -4(%rbp)
	jg	.L205
	movl	-4(%rbp), %eax
	jmp	.L193
.L205:
	cmpq	$0, -32(%rbp)
	jne	.L206
	movl	$1, %eax
	jmp	.L193
.L206:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.L207
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	CONF_parse_list, .-CONF_parse_list
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 25
__func__.5:
	.string	"do_init_module_list_lock"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 18
__func__.4:
	.string	"CONF_modules_load"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 11
__func__.3:
	.string	"module_run"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"module_load_dso"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 12
__func__.1:
	.string	"module_init"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"CONF_parse_list"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
