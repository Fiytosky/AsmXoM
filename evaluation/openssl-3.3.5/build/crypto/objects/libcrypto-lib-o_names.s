	.file	"o_names.c"
	.text
	.type	sk_NAME_FUNCS_num, @function
sk_NAME_FUNCS_num:
.LFB116:
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
.LFE116:
	.size	sk_NAME_FUNCS_num, .-sk_NAME_FUNCS_num
	.type	sk_NAME_FUNCS_value, @function
sk_NAME_FUNCS_value:
.LFB117:
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
.LFE117:
	.size	sk_NAME_FUNCS_value, .-sk_NAME_FUNCS_value
	.type	sk_NAME_FUNCS_new_null, @function
sk_NAME_FUNCS_new_null:
.LFB119:
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
.LFE119:
	.size	sk_NAME_FUNCS_new_null, .-sk_NAME_FUNCS_new_null
	.type	sk_NAME_FUNCS_push, @function
sk_NAME_FUNCS_push:
.LFB126:
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
.LFE126:
	.size	sk_NAME_FUNCS_push, .-sk_NAME_FUNCS_push
	.type	sk_NAME_FUNCS_pop_free, @function
sk_NAME_FUNCS_pop_free:
.LFB130:
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
.LFE130:
	.size	sk_NAME_FUNCS_pop_free, .-sk_NAME_FUNCS_pop_free
	.type	lh_OBJ_NAME_hfn_thunk, @function
lh_OBJ_NAME_hfn_thunk:
.LFB141:
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
.LFE141:
	.size	lh_OBJ_NAME_hfn_thunk, .-lh_OBJ_NAME_hfn_thunk
	.type	lh_OBJ_NAME_cfn_thunk, @function
lh_OBJ_NAME_cfn_thunk:
.LFB142:
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
.LFE142:
	.size	lh_OBJ_NAME_cfn_thunk, .-lh_OBJ_NAME_cfn_thunk
	.type	lh_OBJ_NAME_free, @function
lh_OBJ_NAME_free:
.LFB143:
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
.LFE143:
	.size	lh_OBJ_NAME_free, .-lh_OBJ_NAME_free
	.type	lh_OBJ_NAME_insert, @function
lh_OBJ_NAME_insert:
.LFB145:
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
.LFE145:
	.size	lh_OBJ_NAME_insert, .-lh_OBJ_NAME_insert
	.type	lh_OBJ_NAME_delete, @function
lh_OBJ_NAME_delete:
.LFB146:
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
.LFE146:
	.size	lh_OBJ_NAME_delete, .-lh_OBJ_NAME_delete
	.type	lh_OBJ_NAME_retrieve, @function
lh_OBJ_NAME_retrieve:
.LFB147:
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
.LFE147:
	.size	lh_OBJ_NAME_retrieve, .-lh_OBJ_NAME_retrieve
	.type	lh_OBJ_NAME_error, @function
lh_OBJ_NAME_error:
.LFB148:
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
.LFE148:
	.size	lh_OBJ_NAME_error, .-lh_OBJ_NAME_error
	.type	lh_OBJ_NAME_num_items, @function
lh_OBJ_NAME_num_items:
.LFB149:
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
.LFE149:
	.size	lh_OBJ_NAME_num_items, .-lh_OBJ_NAME_num_items
	.type	lh_OBJ_NAME_get_down_load, @function
lh_OBJ_NAME_get_down_load:
.LFB150:
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
.LFE150:
	.size	lh_OBJ_NAME_get_down_load, .-lh_OBJ_NAME_get_down_load
	.type	lh_OBJ_NAME_set_down_load, @function
lh_OBJ_NAME_set_down_load:
.LFB151:
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
.LFE151:
	.size	lh_OBJ_NAME_set_down_load, .-lh_OBJ_NAME_set_down_load
	.type	lh_OBJ_NAME_doall_thunk, @function
lh_OBJ_NAME_doall_thunk:
.LFB152:
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
.LFE152:
	.size	lh_OBJ_NAME_doall_thunk, .-lh_OBJ_NAME_doall_thunk
	.type	lh_OBJ_NAME_doall_arg_thunk, @function
lh_OBJ_NAME_doall_arg_thunk:
.LFB153:
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
.LFE153:
	.size	lh_OBJ_NAME_doall_arg_thunk, .-lh_OBJ_NAME_doall_arg_thunk
	.type	lh_OBJ_NAME_doall, @function
lh_OBJ_NAME_doall:
.LFB154:
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
.LFE154:
	.size	lh_OBJ_NAME_doall, .-lh_OBJ_NAME_doall
	.type	lh_OBJ_NAME_new, @function
lh_OBJ_NAME_new:
.LFB155:
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
	leaq	lh_OBJ_NAME_doall_arg_thunk(%rip), %rsi
	leaq	lh_OBJ_NAME_doall_thunk(%rip), %rcx
	leaq	lh_OBJ_NAME_cfn_thunk(%rip), %rdx
	leaq	lh_OBJ_NAME_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	lh_OBJ_NAME_new, .-lh_OBJ_NAME_new
	.type	lh_ADDED_OBJ_hfn_thunk, @function
lh_ADDED_OBJ_hfn_thunk:
.LFB157:
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
.LFE157:
	.size	lh_ADDED_OBJ_hfn_thunk, .-lh_ADDED_OBJ_hfn_thunk
	.type	lh_ADDED_OBJ_cfn_thunk, @function
lh_ADDED_OBJ_cfn_thunk:
.LFB158:
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
.LFE158:
	.size	lh_ADDED_OBJ_cfn_thunk, .-lh_ADDED_OBJ_cfn_thunk
	.local	names_lh
	.comm	names_lh,8,8
	.data
	.align 4
	.type	names_type_num, @object
	.size	names_type_num, 4
names_type_num:
	.long	7
	.local	obj_lock
	.comm	obj_lock,8,8
	.local	name_funcs_stack
	.comm	name_funcs_stack,8,8
	.local	init
	.comm	init,4,4
	.local	o_names_init_ossl_ret_
	.comm	o_names_init_ossl_ret_,4,4
	.text
	.type	o_names_init_ossl_, @function
o_names_init_ossl_:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	o_names_init
	movl	%eax, o_names_init_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	o_names_init_ossl_, .-o_names_init_ossl_
	.type	o_names_init, @function
o_names_init:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, names_lh(%rip)
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, obj_lock(%rip)
	movq	obj_lock(%rip), %rax
	testq	%rax, %rax
	je	.L39
	leaq	obj_name_cmp(%rip), %rdx
	leaq	obj_name_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OBJ_NAME_new
	movq	%rax, names_lh(%rip)
.L39:
	movq	names_lh(%rip), %rax
	testq	%rax, %rax
	jne	.L40
	movq	obj_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, obj_lock(%rip)
.L40:
	movq	names_lh(%rip), %rax
	testq	%rax, %rax
	je	.L41
	movq	obj_lock(%rip), %rax
	testq	%rax, %rax
	je	.L41
	movl	$1, %eax
	jmp	.L43
.L41:
	movl	$0, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	o_names_init, .-o_names_init
	.globl	OBJ_NAME_init
	.type	OBJ_NAME_init, @function
OBJ_NAME_init:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	o_names_init_ossl_(%rip), %rdx
	leaq	init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L45
	movl	o_names_init_ossl_ret_(%rip), %eax
	jmp	.L47
.L45:
	movl	$0, %eax
.L47:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	OBJ_NAME_init, .-OBJ_NAME_init
	.section	.rodata
.LC0:
	.string	"../crypto/objects/o_names.c"
	.text
	.globl	OBJ_NAME_new_index
	.type	OBJ_NAME_new_index, @function
OBJ_NAME_new_index:
.LFB176:
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
	movl	$0, -4(%rbp)
	call	OBJ_NAME_init@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L50
.L49:
	movq	obj_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L51
	movl	$0, %eax
	jmp	.L50
.L51:
	movq	name_funcs_stack(%rip), %rax
	testq	%rax, %rax
	jne	.L52
	call	sk_NAME_FUNCS_new_null
	movq	%rax, name_funcs_stack(%rip)
.L52:
	movq	name_funcs_stack(%rip), %rax
	testq	%rax, %rax
	je	.L61
	movl	names_type_num(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	names_type_num(%rip), %eax
	addl	$1, %eax
	movl	%eax, names_type_num(%rip)
	movq	name_funcs_stack(%rip), %rax
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_num
	movl	%eax, -8(%rbp)
	jmp	.L55
.L58:
	leaq	.LC0(%rip), %rax
	movl	$90, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L56
	movl	$0, -4(%rbp)
	jmp	.L54
.L56:
	movq	-16(%rbp), %rax
	movq	ossl_lh_strcasehash@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	OPENSSL_strcasecmp@GOTPCREL(%rip), %rdx
	movq	%rdx, 8(%rax)
	movq	name_funcs_stack(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_push
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$8, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$101, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, -4(%rbp)
	jmp	.L54
.L57:
	addl	$1, -8(%rbp)
.L55:
	movl	names_type_num(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L58
	movq	name_funcs_stack(%rip), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_value
	movq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L59
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
.L59:
	cmpq	$0, -48(%rbp)
	je	.L60
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L60:
	cmpq	$0, -56(%rbp)
	je	.L62
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L54
.L61:
	nop
	jmp	.L54
.L62:
	nop
.L54:
	movq	obj_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	OBJ_NAME_new_index, .-OBJ_NAME_new_index
	.type	obj_name_cmp, @function
obj_name_cmp:
.LFB177:
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
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L64
	movq	name_funcs_stack(%rip), %rax
	testq	%rax, %rax
	je	.L65
	movq	name_funcs_stack(%rip), %rax
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_num
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L65
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	name_funcs_stack(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_value
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	jmp	.L64
.L65:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	movl	%eax, -4(%rbp)
.L64:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	obj_name_cmp, .-obj_name_cmp
	.type	obj_name_hash, @function
obj_name_hash:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	name_funcs_stack(%rip), %rax
	testq	%rax, %rax
	je	.L68
	movq	name_funcs_stack(%rip), %rax
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_num
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L68
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	name_funcs_stack(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_value
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	jmp	.L69
.L68:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lh_strcasehash@PLT
	movq	%rax, -8(%rbp)
.L69:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	obj_name_hash, .-obj_name_hash
	.globl	OBJ_NAME_get
	.type	OBJ_NAME_get, @function
OBJ_NAME_get:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L72
	movl	$0, %eax
	jmp	.L81
.L72:
	call	OBJ_NAME_init@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L81
.L74:
	movq	obj_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L81
.L75:
	movl	-76(%rbp), %eax
	andl	$32768, %eax
	movl	%eax, -20(%rbp)
	andl	$-32769, -76(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -64(%rbp)
.L80:
	movq	names_lh(%rip), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OBJ_NAME_retrieve
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L82
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L78
	cmpl	$0, -20(%rbp)
	jne	.L78
	addl	$1, -4(%rbp)
	cmpl	$10, -4(%rbp)
	jg	.L83
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L80
.L78:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L77
.L82:
	nop
	jmp	.L77
.L83:
	nop
.L77:
	movq	obj_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-16(%rbp), %rax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	OBJ_NAME_get, .-OBJ_NAME_get
	.globl	OBJ_NAME_add
	.type	OBJ_NAME_add, @function
OBJ_NAME_add:
.LFB180:
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
	movl	$0, -4(%rbp)
	call	OBJ_NAME_init@PLT
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L86
.L85:
	movl	-44(%rbp), %eax
	andl	$32768, %eax
	movl	%eax, -8(%rbp)
	andl	$-32769, -44(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$199, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L87
	movl	$0, %eax
	jmp	.L86
.L87:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	obj_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L88
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$209, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L86
.L88:
	movq	names_lh(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OBJ_NAME_insert
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L89
	movq	name_funcs_stack(%rip), %rax
	testq	%rax, %rax
	je	.L90
	movq	name_funcs_stack(%rip), %rax
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_num
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L90
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	name_funcs_stack(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_value
	movq	16(%rax), %r8
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
.L90:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$226, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L91
.L89:
	movq	names_lh(%rip), %rax
	movq	%rax, %rdi
	call	lh_OBJ_NAME_error
	testl	%eax, %eax
	je	.L91
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$230, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L92
.L91:
	movl	$1, -4(%rbp)
.L92:
	movq	obj_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	OBJ_NAME_add, .-OBJ_NAME_add
	.globl	OBJ_NAME_remove
	.type	OBJ_NAME_remove, @function
OBJ_NAME_remove:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	$0, -4(%rbp)
	call	OBJ_NAME_init@PLT
	testl	%eax, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L99
.L94:
	movq	obj_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L99
.L96:
	andl	$-32769, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	names_lh(%rip), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OBJ_NAME_delete
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L97
	movq	name_funcs_stack(%rip), %rax
	testq	%rax, %rax
	je	.L98
	movq	name_funcs_stack(%rip), %rax
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_num
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L98
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	name_funcs_stack(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_value
	movq	16(%rax), %r8
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
.L98:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$269, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, -4(%rbp)
.L97:
	movq	obj_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	OBJ_NAME_remove, .-OBJ_NAME_remove
	.type	do_all_fn, @function
do_all_fn:
.LFB182:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L102
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L102:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	do_all_fn, .-do_all_fn
	.type	lh_OBJ_NAME_doall_OBJ_DOALL_thunk, @function
lh_OBJ_NAME_doall_OBJ_DOALL_thunk:
.LFB183:
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
.LFE183:
	.size	lh_OBJ_NAME_doall_OBJ_DOALL_thunk, .-lh_OBJ_NAME_doall_OBJ_DOALL_thunk
	.type	lh_OBJ_NAME_doall_OBJ_DOALL, @function
lh_OBJ_NAME_doall_OBJ_DOALL:
.LFB184:
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
	leaq	lh_OBJ_NAME_doall_OBJ_DOALL_thunk(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg_thunk@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	lh_OBJ_NAME_doall_OBJ_DOALL, .-lh_OBJ_NAME_doall_OBJ_DOALL
	.globl	OBJ_NAME_do_all
	.type	OBJ_NAME_do_all, @function
OBJ_NAME_do_all:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	names_lh(%rip), %rax
	leaq	-32(%rbp), %rdx
	leaq	do_all_fn(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_OBJ_NAME_doall_OBJ_DOALL
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	OBJ_NAME_do_all, .-OBJ_NAME_do_all
	.type	do_all_sorted_fn, @function
do_all_sorted_fn:
.LFB186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L109
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	cltq
	salq	$3, %rax
	leaq	(%rsi,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L106
.L109:
	nop
.L106:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	do_all_sorted_fn, .-do_all_sorted_fn
	.type	do_all_sorted_cmp, @function
do_all_sorted_cmp:
.LFB187:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	do_all_sorted_cmp, .-do_all_sorted_cmp
	.globl	OBJ_NAME_do_all_sorted
	.type	OBJ_NAME_do_all_sorted, @function
OBJ_NAME_do_all_sorted:
.LFB188:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	names_lh(%rip), %rax
	movq	%rax, %rdi
	call	lh_OBJ_NAME_num_items
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$336, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L116
	movl	$0, -28(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	do_all_sorted_fn(%rip), %rcx
	movl	-36(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	OBJ_NAME_do_all@PLT
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rax
	leaq	do_all_sorted_cmp(%rip), %rdx
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	movl	$0, -4(%rbp)
	jmp	.L114
.L115:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	addl	$1, -4(%rbp)
.L114:
	movl	-28(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L115
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$347, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L116:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	OBJ_NAME_do_all_sorted, .-OBJ_NAME_do_all_sorted
	.local	free_type
	.comm	free_type,4,4
	.type	names_lh_free_doall, @function
names_lh_free_doall:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L121
	movl	free_type(%rip), %eax
	testl	%eax, %eax
	js	.L120
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movl	free_type(%rip), %eax
	cmpl	%eax, %edx
	jne	.L117
.L120:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_remove@PLT
	jmp	.L117
.L121:
	nop
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	names_lh_free_doall, .-names_lh_free_doall
	.type	name_funcs_free, @function
name_funcs_free:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$364, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	name_funcs_free, .-name_funcs_free
	.globl	OBJ_NAME_cleanup
	.type	OBJ_NAME_cleanup, @function
OBJ_NAME_cleanup:
.LFB191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	names_lh(%rip), %rax
	testq	%rax, %rax
	je	.L127
	movl	-20(%rbp), %eax
	movl	%eax, free_type(%rip)
	movq	names_lh(%rip), %rax
	movq	%rax, %rdi
	call	lh_OBJ_NAME_get_down_load
	movq	%rax, -8(%rbp)
	movq	names_lh(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	lh_OBJ_NAME_set_down_load
	movq	names_lh(%rip), %rax
	leaq	names_lh_free_doall(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OBJ_NAME_doall
	cmpl	$0, -20(%rbp)
	jns	.L126
	movq	names_lh(%rip), %rax
	movq	%rax, %rdi
	call	lh_OBJ_NAME_free
	movq	name_funcs_stack(%rip), %rax
	leaq	name_funcs_free(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_NAME_FUNCS_pop_free
	movq	obj_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, names_lh(%rip)
	movq	$0, name_funcs_stack(%rip)
	movq	$0, obj_lock(%rip)
	jmp	.L123
.L126:
	movq	names_lh(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_OBJ_NAME_set_down_load
	jmp	.L123
.L127:
	nop
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	OBJ_NAME_cleanup, .-OBJ_NAME_cleanup
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"OBJ_NAME_new_index"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
