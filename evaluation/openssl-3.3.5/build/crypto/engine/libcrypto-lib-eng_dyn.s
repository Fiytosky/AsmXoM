	.file	"eng_dyn.c"
	.text
	.type	ossl_check_OPENSSL_STRING_type, @function
ossl_check_OPENSSL_STRING_type:
.LFB6:
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
.LFE6:
	.size	ossl_check_OPENSSL_STRING_type, .-ossl_check_OPENSSL_STRING_type
	.type	ossl_check_const_OPENSSL_STRING_sk_type, @function
ossl_check_const_OPENSSL_STRING_sk_type:
.LFB7:
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
.LFE7:
	.size	ossl_check_const_OPENSSL_STRING_sk_type, .-ossl_check_const_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_sk_type, @function
ossl_check_OPENSSL_STRING_sk_type:
.LFB8:
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
.LFE8:
	.size	ossl_check_OPENSSL_STRING_sk_type, .-ossl_check_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_freefunc_type, @function
ossl_check_OPENSSL_STRING_freefunc_type:
.LFB11:
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
.LFE11:
	.size	ossl_check_OPENSSL_STRING_freefunc_type, .-ossl_check_OPENSSL_STRING_freefunc_type
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
	.type	lh_ENGINE_PILE_hfn_thunk, @function
lh_ENGINE_PILE_hfn_thunk:
.LFB570:
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
.LFE570:
	.size	lh_ENGINE_PILE_hfn_thunk, .-lh_ENGINE_PILE_hfn_thunk
	.type	lh_ENGINE_PILE_cfn_thunk, @function
lh_ENGINE_PILE_cfn_thunk:
.LFB571:
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
.LFE571:
	.size	lh_ENGINE_PILE_cfn_thunk, .-lh_ENGINE_PILE_cfn_thunk
	.section	.rodata
.LC0:
	.string	"dynamic"
	.section	.data.rel.local,"aw"
	.align 8
	.type	engine_dynamic_id, @object
	.size	engine_dynamic_id, 8
engine_dynamic_id:
	.quad	.LC0
	.section	.rodata
	.align 8
.LC1:
	.string	"Dynamic engine loading support"
	.section	.data.rel.local
	.align 8
	.type	engine_dynamic_name, @object
	.size	engine_dynamic_name, 8
engine_dynamic_name:
	.quad	.LC1
	.section	.rodata
.LC2:
	.string	"SO_PATH"
	.align 8
.LC3:
	.string	"Specifies the path to the new ENGINE shared library"
.LC4:
	.string	"NO_VCHECK"
	.align 8
.LC5:
	.string	"Specifies to continue even if version checking fails (boolean)"
.LC6:
	.string	"ID"
	.align 8
.LC7:
	.string	"Specifies an ENGINE id name for loading"
.LC8:
	.string	"LIST_ADD"
	.align 8
.LC9:
	.string	"Whether to add a loaded ENGINE to the internal list (0=no,1=yes,2=mandatory)"
.LC10:
	.string	"DIR_LOAD"
	.align 8
.LC11:
	.string	"Specifies whether to load from 'DIR_ADD' directories (0=no,1=yes,2=mandatory)"
.LC12:
	.string	"DIR_ADD"
	.align 8
.LC13:
	.string	"Adds a directory from which ENGINEs can be loaded"
.LC14:
	.string	"LOAD"
	.align 8
.LC15:
	.string	"Load up the ENGINE specified by other settings"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	dynamic_cmd_defns, @object
	.size	dynamic_cmd_defns, 256
dynamic_cmd_defns:
	.long	200
	.zero	4
	.quad	.LC2
	.quad	.LC3
	.long	2
	.zero	4
	.long	201
	.zero	4
	.quad	.LC4
	.quad	.LC5
	.long	1
	.zero	4
	.long	202
	.zero	4
	.quad	.LC6
	.quad	.LC7
	.long	2
	.zero	4
	.long	203
	.zero	4
	.quad	.LC8
	.quad	.LC9
	.long	1
	.zero	4
	.long	204
	.zero	4
	.quad	.LC10
	.quad	.LC11
	.long	1
	.zero	4
	.long	205
	.zero	4
	.quad	.LC12
	.quad	.LC13
	.long	2
	.zero	4
	.long	206
	.zero	4
	.quad	.LC14
	.quad	.LC15
	.long	4
	.zero	4
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.data
	.align 4
	.type	dynamic_ex_data_idx, @object
	.size	dynamic_ex_data_idx, 4
dynamic_ex_data_idx:
	.long	-1
	.section	.rodata
.LC16:
	.string	"../crypto/engine/eng_dyn.c"
	.text
	.type	int_free_str, @function
int_free_str:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC16(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$125, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	int_free_str, .-int_free_str
	.type	dynamic_data_ctx_free_func, @function
dynamic_data_ctx_free_func:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L20
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DSO_free@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC16(%rip), %rcx
	movl	$144, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC16(%rip), %rcx
	movl	$145, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	int_free_str(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	leaq	.LC16(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$147, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L20:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	dynamic_data_ctx_free_func, .-dynamic_data_ctx_free_func
	.section	.rodata
.LC17:
	.string	"v_check"
.LC18:
	.string	"bind_engine"
	.text
	.type	dynamic_set_data_ctx, @function
dynamic_set_data_ctx:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC16(%rip), %rax
	movl	$159, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L23
.L22:
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 72(%rax)
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L29
	movl	dynamic_ex_data_idx(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ENGINE_get_ex_data@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movl	dynamic_ex_data_idx(%rip), %ecx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ENGINE_set_ex_data@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L27
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -8(%rbp)
.L27:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, -12(%rbp)
	jmp	.L25
.L29:
	nop
.L25:
	cmpq	$0, -8(%rbp)
	je	.L28
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
.L28:
	leaq	.LC16(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$193, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	dynamic_set_data_ctx, .-dynamic_set_data_ctx
	.type	dynamic_get_data_ctx, @function
dynamic_get_data_ctx:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	dynamic_ex_data_idx(%rip), %eax
	testl	%eax, %eax
	jns	.L31
	leaq	dynamic_data_ctx_free_func(%rip), %rax
	movq	%rax, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$10, %edi
	call	CRYPTO_get_ex_new_index@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L37
.L32:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L37
.L34:
	movl	dynamic_ex_data_idx(%rip), %eax
	testl	%eax, %eax
	jns	.L35
	movl	-4(%rbp), %eax
	movl	%eax, dynamic_ex_data_idx(%rip)
	movl	$-1, -4(%rbp)
.L35:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L31:
	movl	dynamic_ex_data_idx(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ENGINE_get_ex_data@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L36
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dynamic_set_data_ctx
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L37
.L36:
	movq	-16(%rbp), %rax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	dynamic_get_data_ctx, .-dynamic_get_data_ctx
	.type	engine_dynamic, @function
engine_dynamic:
.LFB591:
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
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	engine_dynamic_id(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_id@PLT
	testl	%eax, %eax
	je	.L41
	movq	engine_dynamic_name(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_name@PLT
	testl	%eax, %eax
	je	.L41
	leaq	dynamic_init(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_init_function@PLT
	testl	%eax, %eax
	je	.L41
	leaq	dynamic_finish(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_finish_function@PLT
	testl	%eax, %eax
	je	.L41
	leaq	dynamic_ctrl(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_ctrl_function@PLT
	testl	%eax, %eax
	je	.L41
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ENGINE_set_flags@PLT
	testl	%eax, %eax
	je	.L41
	leaq	dynamic_cmd_defns(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ENGINE_set_cmd_defns@PLT
	testl	%eax, %eax
	jne	.L42
.L41:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	movl	$0, %eax
	jmp	.L40
.L42:
	movq	-8(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	engine_dynamic, .-engine_dynamic
	.globl	engine_load_dynamic_int
	.type	engine_load_dynamic_int, @function
engine_load_dynamic_int:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	engine_dynamic
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L46
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_free@PLT
	call	ERR_pop_to_mark@PLT
	jmp	.L43
.L46:
	nop
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	engine_load_dynamic_int, .-engine_load_dynamic_int
	.type	dynamic_init, @function
dynamic_init:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	dynamic_init, .-dynamic_init
	.type	dynamic_finish, @function
dynamic_finish:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	dynamic_finish, .-dynamic_finish
	.type	dynamic_ctrl, @function
dynamic_ctrl:
.LFB595:
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
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	dynamic_get_data_ctx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L52
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$301, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L54
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$307, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L54:
	cmpl	$206, -60(%rbp)
	je	.L55
	cmpl	$206, -60(%rbp)
	jg	.L78
	cmpl	$205, -60(%rbp)
	je	.L57
	cmpl	$205, -60(%rbp)
	jg	.L78
	cmpl	$204, -60(%rbp)
	je	.L58
	cmpl	$204, -60(%rbp)
	jg	.L78
	cmpl	$203, -60(%rbp)
	je	.L59
	cmpl	$203, -60(%rbp)
	jg	.L78
	cmpl	$202, -60(%rbp)
	je	.L60
	cmpl	$202, -60(%rbp)
	jg	.L78
	cmpl	$200, -60(%rbp)
	je	.L61
	cmpl	$201, -60(%rbp)
	je	.L62
	jmp	.L78
.L61:
	cmpq	$0, -80(%rbp)
	je	.L63
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L63
	movq	$0, -80(%rbp)
.L63:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC16(%rip), %rcx
	movl	$315, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -80(%rbp)
	je	.L64
	leaq	.LC16(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$317, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	.L65
.L64:
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
.L65:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L53
.L62:
	cmpq	$0, -72(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	movl	$1, %eax
	jmp	.L53
.L60:
	cmpq	$0, -80(%rbp)
	je	.L66
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L66
	movq	$0, -80(%rbp)
.L66:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC16(%rip), %rcx
	movl	$328, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -80(%rbp)
	je	.L67
	leaq	.LC16(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$330, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
	jmp	.L68
.L67:
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
.L68:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L53
.L59:
	cmpq	$0, -72(%rbp)
	js	.L69
	cmpq	$2, -72(%rbp)
	jle	.L70
.L69:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L70:
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 48(%rax)
	movl	$1, %eax
	jmp	.L53
.L55:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dynamic_load
	jmp	.L53
.L58:
	cmpq	$0, -72(%rbp)
	js	.L71
	cmpq	$2, -72(%rbp)
	jle	.L72
.L71:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$345, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L72:
	movq	-72(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 72(%rax)
	movl	$1, %eax
	jmp	.L53
.L57:
	cmpq	$0, -80(%rbp)
	je	.L73
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L74
.L73:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L74:
	leaq	.LC16(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$357, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L75
	movl	$0, %eax
	jmp	.L53
.L75:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L76
	leaq	.LC16(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$361, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$362, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L53
.L76:
	movl	$1, %eax
	jmp	.L53
.L78:
	nop
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$370, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L53:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	dynamic_ctrl, .-dynamic_ctrl
	.type	int_load, @function
int_load:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$2, %eax
	je	.L80
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	DSO_load@PLT
	testq	%rax, %rax
	je	.L80
	movl	$1, %eax
	jmp	.L81
.L80:
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L82
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L83
.L82:
	movl	$0, %eax
	jmp	.L81
.L83:
	movl	$0, -4(%rbp)
	jmp	.L84
.L87:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSO_merge@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L85
	movl	$0, %eax
	jmp	.L81
.L85:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	DSO_load@PLT
	testq	%rax, %rax
	je	.L86
	leaq	.LC16(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$392, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L81
.L86:
	leaq	.LC16(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$395, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -4(%rbp)
.L84:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L87
	movl	$0, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	int_load, .-int_load
	.section	.rodata
.LC19:
	.string	"EVP_PKEY_base_id"
	.text
	.type	using_libcrypto_11, @function
using_libcrypto_11:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ERR_set_mark@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DSO_bind_func@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	call	ERR_pop_to_mark@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	using_libcrypto_11, .-using_libcrypto_11
	.type	dynamic_load, @function
dynamic_load:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L91
	call	DSO_new@PLT
	movq	-288(%rbp), %rdx
	movq	%rax, (%rdx)
.L91:
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L92
	movl	$0, %eax
	jmp	.L105
.L92:
	movq	-288(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L94
	movq	-288(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L95
	movl	$0, %eax
	jmp	.L105
.L95:
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	DSO_ctrl@PLT
	movq	-288(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DSO_convert_filename@PLT
	movq	-288(%rbp), %rdx
	movq	%rax, 24(%rdx)
.L94:
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	int_load
	testl	%eax, %eax
	jne	.L96
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$438, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DSO_free@PLT
	movq	-288(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L105
.L96:
	movq	-288(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DSO_bind_func@PLT
	movq	-288(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-288(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L97
	movq	-288(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DSO_free@PLT
	movq	-288(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$451, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L97:
	movq	-288(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L98
	movq	$0, -8(%rbp)
	movq	-288(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DSO_bind_func@PLT
	movq	-288(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-288(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L99
	movq	-288(%rbp), %rax
	movq	8(%rax), %rax
	movl	$196608, %edi
	call	*%rax
	movq	%rax, -8(%rbp)
.L99:
	cmpq	$196607, -8(%rbp)
	jbe	.L100
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	using_libcrypto_11
	testl	%eax, %eax
	je	.L98
.L100:
	movq	-288(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-288(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DSO_free@PLT
	movq	-288(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$477, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$145, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L98:
	movq	-280(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movl	$224, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	call	ENGINE_get_static_state@PLT
	movq	%rax, -272(%rbp)
	leaq	-272(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-272(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-272(%rbp), %rax
	addq	$8, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_get_mem_functions@PLT
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	engine_set_all_null@PLT
	movq	-288(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-280(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	engine_add_dynamic_id@PLT
	testl	%eax, %eax
	je	.L101
	movq	-288(%rbp), %rax
	movq	16(%rax), %r8
	movq	-288(%rbp), %rax
	movq	40(%rax), %rcx
	leaq	-272(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L102
.L101:
	movq	-280(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	engine_remove_dynamic_id@PLT
	movq	-288(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-288(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	DSO_free@PLT
	movq	-288(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$510, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	-240(%rbp), %rcx
	movq	-280(%rbp), %rax
	movl	$224, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$0, %eax
	jmp	.L105
.L102:
	movq	-288(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jle	.L103
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_add@PLT
	testl	%eax, %eax
	jne	.L103
	movq	-288(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jle	.L104
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movl	$526, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L105
.L104:
	call	ERR_clear_error@PLT
.L103:
	movl	$1, %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	dynamic_load, .-dynamic_load
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 21
__func__.3:
	.string	"dynamic_set_data_ctx"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"dynamic_get_data_ctx"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 13
__func__.1:
	.string	"dynamic_ctrl"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"dynamic_load"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
