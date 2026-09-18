	.file	"err.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB103:
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
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
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
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	lh_ERR_STRING_DATA_hash_thunk, @function
lh_ERR_STRING_DATA_hash_thunk:
.LFB108:
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
.LFE108:
	.size	lh_ERR_STRING_DATA_hash_thunk, .-lh_ERR_STRING_DATA_hash_thunk
	.type	lh_ERR_STRING_DATA_comp_thunk, @function
lh_ERR_STRING_DATA_comp_thunk:
.LFB109:
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
.LFE109:
	.size	lh_ERR_STRING_DATA_comp_thunk, .-lh_ERR_STRING_DATA_comp_thunk
	.type	lh_ERR_STRING_DATA_doall_thunk, @function
lh_ERR_STRING_DATA_doall_thunk:
.LFB110:
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
.LFE110:
	.size	lh_ERR_STRING_DATA_doall_thunk, .-lh_ERR_STRING_DATA_doall_thunk
	.type	lh_ERR_STRING_DATA_doall_arg_thunk, @function
lh_ERR_STRING_DATA_doall_arg_thunk:
.LFB111:
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
.LFE111:
	.size	lh_ERR_STRING_DATA_doall_arg_thunk, .-lh_ERR_STRING_DATA_doall_arg_thunk
	.type	ossl_check_ERR_STRING_DATA_lh_plain_type, @function
ossl_check_ERR_STRING_DATA_lh_plain_type:
.LFB112:
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
.LFE112:
	.size	ossl_check_ERR_STRING_DATA_lh_plain_type, .-ossl_check_ERR_STRING_DATA_lh_plain_type
	.type	ossl_check_const_ERR_STRING_DATA_lh_plain_type, @function
ossl_check_const_ERR_STRING_DATA_lh_plain_type:
.LFB113:
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
.LFE113:
	.size	ossl_check_const_ERR_STRING_DATA_lh_plain_type, .-ossl_check_const_ERR_STRING_DATA_lh_plain_type
	.type	ossl_check_ERR_STRING_DATA_lh_type, @function
ossl_check_ERR_STRING_DATA_lh_type:
.LFB115:
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
.LFE115:
	.size	ossl_check_ERR_STRING_DATA_lh_type, .-ossl_check_ERR_STRING_DATA_lh_type
	.type	ossl_check_ERR_STRING_DATA_lh_compfunc_type, @function
ossl_check_ERR_STRING_DATA_lh_compfunc_type:
.LFB116:
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
.LFE116:
	.size	ossl_check_ERR_STRING_DATA_lh_compfunc_type, .-ossl_check_ERR_STRING_DATA_lh_compfunc_type
	.type	ossl_check_ERR_STRING_DATA_lh_hashfunc_type, @function
ossl_check_ERR_STRING_DATA_lh_hashfunc_type:
.LFB117:
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
.LFE117:
	.size	ossl_check_ERR_STRING_DATA_lh_hashfunc_type, .-ossl_check_ERR_STRING_DATA_lh_hashfunc_type
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
	.type	constant_time_msb, @function
constant_time_msb:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$31, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	constant_time_msb, .-constant_time_msb
	.type	constant_time_is_zero, @function
constant_time_is_zero:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	notl	%eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, %edi
	call	constant_time_msb
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	constant_time_is_zero, .-constant_time_is_zero
	.type	constant_time_eq, @function
constant_time_eq:
.LFB181:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	-8(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	constant_time_eq, .-constant_time_eq
	.type	constant_time_eq_int, @function
constant_time_eq_int:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	constant_time_eq_int, .-constant_time_eq_int
	.type	value_barrier, @function
value_barrier:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	value_barrier, .-value_barrier
	.type	constant_time_select, @function
constant_time_select:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	value_barrier
	andl	-16(%rbp), %eax
	movl	%eax, %ebx
	movl	-12(%rbp), %eax
	notl	%eax
	movl	%eax, %edi
	call	value_barrier
	andl	-20(%rbp), %eax
	orl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	constant_time_select, .-constant_time_select
	.type	constant_time_select_int, @function
constant_time_select_int:
.LFB195:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	constant_time_select_int, .-constant_time_select_int
	.section	.rodata
.LC0:
	.string	"../crypto/err/err_local.h"
	.text
	.type	err_clear_data, @function
err_clear_data:
.LFB204:
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
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	(%rax,%rdx,4), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L42
	cmpl	$0, -20(%rbp)
	je	.L43
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC0(%rip), %rcx
	movl	$25, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	$0, (%rax,%rdx,4)
	jmp	.L45
.L43:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L45
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	$1, (%rax,%rdx,4)
	jmp	.L45
.L42:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	$0, (%rax,%rdx,4)
.L45:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	err_clear_data, .-err_clear_data
	.type	err_set_data, @function
err_set_data:
.LFB207:
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
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	(%rax,%rdx,4), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L47
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC0(%rip), %rcx
	movl	$78, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L47:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	32(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	128(%rdx), %rcx
	movl	-36(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	err_set_data, .-err_set_data
	.type	err_clear, @function
err_clear:
.LFB208:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear_data
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	movl	$0, (%rax,%rdx,4)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	$0, (%rax,%rdx,4)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$176, %rdx
	movl	$-1, (%rax,%rdx,4)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC0(%rip), %rcx
	movl	$91, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC0(%rip), %rcx
	movl	$93, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	$0, (%rax,%rdx,8)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	err_clear, .-err_clear
	.section	.rodata
.LC1:
	.string	"unknown library"
.LC2:
	.string	"system library"
.LC3:
	.string	"bignum routines"
.LC4:
	.string	"rsa routines"
.LC5:
	.string	"Diffie-Hellman routines"
.LC6:
	.string	"digital envelope routines"
.LC7:
	.string	"memory buffer routines"
.LC8:
	.string	"object identifier routines"
.LC9:
	.string	"PEM routines"
.LC10:
	.string	"dsa routines"
.LC11:
	.string	"x509 certificate routines"
.LC12:
	.string	"asn1 encoding routines"
.LC13:
	.string	"configuration file routines"
.LC14:
	.string	"common libcrypto routines"
.LC15:
	.string	"elliptic curve routines"
.LC16:
	.string	"ECDSA routines"
.LC17:
	.string	"ECDH routines"
.LC18:
	.string	"SSL routines"
.LC19:
	.string	"BIO routines"
.LC20:
	.string	"PKCS7 routines"
.LC21:
	.string	"X509 V3 routines"
.LC22:
	.string	"PKCS12 routines"
.LC23:
	.string	"random number generator"
.LC24:
	.string	"DSO support routines"
.LC25:
	.string	"time stamp routines"
.LC26:
	.string	"engine routines"
.LC27:
	.string	"OCSP routines"
.LC28:
	.string	"UI routines"
.LC29:
	.string	"FIPS routines"
.LC30:
	.string	"CMS routines"
.LC31:
	.string	"CRMF routines"
.LC32:
	.string	"CMP routines"
.LC33:
	.string	"HMAC routines"
.LC34:
	.string	"CT routines"
.LC35:
	.string	"ASYNC routines"
.LC36:
	.string	"KDF routines"
.LC37:
	.string	"STORE routines"
.LC38:
	.string	"SM2 routines"
.LC39:
	.string	"ESS routines"
.LC40:
	.string	"Provider routines"
.LC41:
	.string	"ENCODER routines"
.LC42:
	.string	"DECODER routines"
.LC43:
	.string	"HTTP routines"
	.section	.data.rel.local,"aw"
	.align 32
	.type	ERR_str_libraries, @object
	.size	ERR_str_libraries, 704
ERR_str_libraries:
	.quad	8388608
	.quad	.LC1
	.quad	16777216
	.quad	.LC2
	.quad	25165824
	.quad	.LC3
	.quad	33554432
	.quad	.LC4
	.quad	41943040
	.quad	.LC5
	.quad	50331648
	.quad	.LC6
	.quad	58720256
	.quad	.LC7
	.quad	67108864
	.quad	.LC8
	.quad	75497472
	.quad	.LC9
	.quad	83886080
	.quad	.LC10
	.quad	92274688
	.quad	.LC11
	.quad	109051904
	.quad	.LC12
	.quad	117440512
	.quad	.LC13
	.quad	125829120
	.quad	.LC14
	.quad	134217728
	.quad	.LC15
	.quad	352321536
	.quad	.LC16
	.quad	360710144
	.quad	.LC17
	.quad	167772160
	.quad	.LC18
	.quad	268435456
	.quad	.LC19
	.quad	276824064
	.quad	.LC20
	.quad	285212672
	.quad	.LC21
	.quad	293601280
	.quad	.LC22
	.quad	301989888
	.quad	.LC23
	.quad	310378496
	.quad	.LC24
	.quad	394264576
	.quad	.LC25
	.quad	318767104
	.quad	.LC26
	.quad	327155712
	.quad	.LC27
	.quad	335544320
	.quad	.LC28
	.quad	377487360
	.quad	.LC29
	.quad	385875968
	.quad	.LC30
	.quad	469762048
	.quad	.LC31
	.quad	486539264
	.quad	.LC32
	.quad	402653184
	.quad	.LC33
	.quad	419430400
	.quad	.LC34
	.quad	427819008
	.quad	.LC35
	.quad	436207616
	.quad	.LC36
	.quad	369098752
	.quad	.LC37
	.quad	444596224
	.quad	.LC38
	.quad	452984832
	.quad	.LC39
	.quad	478150656
	.quad	.LC40
	.quad	494927872
	.quad	.LC41
	.quad	503316480
	.quad	.LC42
	.quad	511705088
	.quad	.LC43
	.quad	0
	.quad	0
	.section	.rodata
.LC44:
	.string	"system lib"
.LC45:
	.string	"BN lib"
.LC46:
	.string	"RSA lib"
.LC47:
	.string	"DH lib"
.LC48:
	.string	"EVP lib"
.LC49:
	.string	"BUF lib"
.LC50:
	.string	"OBJ lib"
.LC51:
	.string	"PEM lib"
.LC52:
	.string	"DSA lib"
.LC53:
	.string	"X509 lib"
.LC54:
	.string	"ASN1 lib"
.LC55:
	.string	"CRYPTO lib"
.LC56:
	.string	"EC lib"
.LC57:
	.string	"BIO lib"
.LC58:
	.string	"PKCS7 lib"
.LC59:
	.string	"X509V3 lib"
.LC60:
	.string	"ENGINE lib"
.LC61:
	.string	"UI lib"
.LC62:
	.string	"ECDSA lib"
.LC63:
	.string	"OSSL_STORE lib"
.LC64:
	.string	"OSSL_DECODER lib"
.LC65:
	.string	"fatal"
.LC66:
	.string	"malloc failure"
	.align 8
.LC67:
	.string	"called a function you should not call"
.LC68:
	.string	"passed a null parameter"
.LC69:
	.string	"internal error"
	.align 8
.LC70:
	.string	"called a function that was disabled at compile-time"
.LC71:
	.string	"init fail"
.LC72:
	.string	"passed invalid argument"
.LC73:
	.string	"operation fail"
.LC74:
	.string	"invalid provider functions"
.LC75:
	.string	"interrupted or cancelled"
.LC76:
	.string	"nested asn1 error"
.LC77:
	.string	"missing asn1 eos"
.LC78:
	.string	"unsupported"
.LC79:
	.string	"fetch failed"
.LC80:
	.string	"invalid property definition"
.LC81:
	.string	"unable to get read lock"
.LC82:
	.string	"unable to get write lock"
	.section	.data.rel.local
	.align 32
	.type	ERR_str_reasons, @object
	.size	ERR_str_reasons, 640
ERR_str_reasons:
	.quad	524290
	.quad	.LC44
	.quad	524291
	.quad	.LC45
	.quad	524292
	.quad	.LC46
	.quad	524293
	.quad	.LC47
	.quad	524294
	.quad	.LC48
	.quad	524295
	.quad	.LC49
	.quad	524296
	.quad	.LC50
	.quad	524297
	.quad	.LC51
	.quad	524298
	.quad	.LC52
	.quad	524299
	.quad	.LC53
	.quad	524301
	.quad	.LC54
	.quad	524303
	.quad	.LC55
	.quad	524304
	.quad	.LC56
	.quad	524320
	.quad	.LC57
	.quad	524321
	.quad	.LC58
	.quad	524322
	.quad	.LC59
	.quad	524326
	.quad	.LC60
	.quad	524328
	.quad	.LC61
	.quad	524330
	.quad	.LC62
	.quad	524332
	.quad	.LC63
	.quad	524348
	.quad	.LC64
	.quad	786432
	.quad	.LC65
	.quad	786688
	.quad	.LC66
	.quad	786689
	.quad	.LC67
	.quad	786690
	.quad	.LC68
	.quad	786691
	.quad	.LC69
	.quad	786692
	.quad	.LC70
	.quad	786693
	.quad	.LC71
	.quad	524550
	.quad	.LC72
	.quad	786695
	.quad	.LC73
	.quad	786696
	.quad	.LC74
	.quad	524553
	.quad	.LC75
	.quad	524554
	.quad	.LC76
	.quad	524555
	.quad	.LC77
	.quad	524556
	.quad	.LC78
	.quad	524557
	.quad	.LC79
	.quad	524558
	.quad	.LC80
	.quad	786703
	.quad	.LC81
	.quad	786704
	.quad	.LC82
	.quad	0
	.quad	0
	.local	err_init
	.comm	err_init,4,4
	.local	set_err_thread_local
	.comm	set_err_thread_local,4,4
	.local	err_thread_local
	.comm	err_thread_local,4,4
	.local	err_string_init
	.comm	err_string_init,4,4
	.local	err_string_lock
	.comm	err_string_lock,8,8
	.local	int_error_hash
	.comm	int_error_hash,8,8
	.data
	.align 4
	.type	int_err_library_number, @object
	.size	int_err_library_number, 4
int_err_library_number:
	.long	128
	.text
	.type	err_string_data_hash, @function
err_string_data_hash:
.LFB209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cltq
	xorq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movabsq	$-2912643801112034465, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$4, %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	xorq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	err_string_data_hash, .-err_string_data_hash
	.type	err_string_data_cmp, @function
err_string_data_cmp:
.LFB210:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L54
	movl	$1, %eax
	jmp	.L53
.L54:
	movl	$-1, %eax
.L53:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	err_string_data_cmp, .-err_string_data_cmp
	.type	int_err_get_item, @function
int_err_get_item:
.LFB211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	err_string_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ERR_STRING_DATA_lh_plain_type
	movq	%rax, %rbx
	movq	int_error_hash(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ERR_STRING_DATA_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_retrieve@PLT
	movq	%rax, -24(%rbp)
	movq	err_string_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rax
.L58:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	int_err_get_item, .-int_err_get_item
	.section	.rodata
.LC83:
	.string	"../crypto/err/err.c"
	.text
	.globl	OSSL_ERR_STATE_free
	.type	OSSL_ERR_STATE_free, @function
OSSL_ERR_STATE_free:
.LFB212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L64
	movl	$0, -4(%rbp)
	jmp	.L62
.L63:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	addl	$1, -4(%rbp)
.L62:
	cmpl	$15, -4(%rbp)
	jle	.L63
	leaq	.LC83(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$210, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L59
.L64:
	nop
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	OSSL_ERR_STATE_free, .-OSSL_ERR_STATE_free
	.local	do_err_strings_init_ossl_ret_
	.comm	do_err_strings_init_ossl_ret_,4,4
	.type	do_err_strings_init_ossl_, @function
do_err_strings_init_ossl_:
.LFB213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	do_err_strings_init
	movl	%eax, do_err_strings_init_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE213:
	.size	do_err_strings_init_ossl_, .-do_err_strings_init_ossl_
	.type	do_err_strings_init, @function
do_err_strings_init:
.LFB214:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movl	$0, %esi
	movl	$262144, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, err_string_lock(%rip)
	movq	err_string_lock(%rip), %rax
	testq	%rax, %rax
	jne	.L69
	movl	$0, %eax
	jmp	.L68
.L69:
	leaq	err_string_data_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ERR_STRING_DATA_lh_compfunc_type
	movq	%rax, %rbx
	leaq	err_string_data_hash(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ERR_STRING_DATA_lh_hashfunc_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_ERR_STRING_DATA_doall_arg_thunk(%rip), %rsi
	leaq	lh_ERR_STRING_DATA_doall_thunk(%rip), %rcx
	leaq	lh_ERR_STRING_DATA_comp_thunk(%rip), %rdx
	leaq	lh_ERR_STRING_DATA_hash_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	movq	%rax, int_error_hash(%rip)
	movq	int_error_hash(%rip), %rax
	testq	%rax, %rax
	jne	.L70
	movq	err_string_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, err_string_lock(%rip)
	movl	$0, %eax
	jmp	.L68
.L70:
	movl	$1, %eax
.L68:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE214:
	.size	do_err_strings_init, .-do_err_strings_init
	.globl	err_cleanup
	.type	err_cleanup, @function
err_cleanup:
.LFB215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	set_err_thread_local(%rip), %eax
	testl	%eax, %eax
	je	.L72
	leaq	err_thread_local(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
.L72:
	movq	err_string_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, err_string_lock(%rip)
	movq	int_error_hash(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ERR_STRING_DATA_lh_type
	movq	%rax, %rdi
	call	OPENSSL_LH_free@PLT
	movq	$0, int_error_hash(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE215:
	.size	err_cleanup, .-err_cleanup
	.type	err_patch, @function
err_patch:
.LFB216:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %eax
	cltq
	salq	$23, %rax
	andl	$2139095040, %eax
	movq	%rax, -8(%rbp)
	jmp	.L74
.L75:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	orq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$16, -32(%rbp)
.L74:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L75
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE216:
	.size	err_patch, .-err_patch
	.type	err_load_strings, @function
err_load_strings:
.LFB217:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	err_string_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L78
.L80:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ERR_STRING_DATA_lh_plain_type
	movq	%rax, %rbx
	movq	int_error_hash(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ERR_STRING_DATA_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_insert@PLT
	addq	$16, -24(%rbp)
.L79:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L80
	movq	err_string_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
.L78:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE217:
	.size	err_load_strings, .-err_load_strings
	.globl	ossl_err_load_ERR_strings
	.type	ossl_err_load_ERR_strings, @function
ossl_err_load_ERR_strings:
.LFB218:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	do_err_strings_init_ossl_(%rip), %rdx
	leaq	err_string_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L82
	movl	do_err_strings_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L83
.L82:
	movl	$0, %eax
	jmp	.L84
.L83:
	leaq	ERR_str_libraries(%rip), %rax
	movq	%rax, %rdi
	call	err_load_strings
	leaq	ERR_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	err_load_strings
	movl	$1, %eax
.L84:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE218:
	.size	ossl_err_load_ERR_strings, .-ossl_err_load_ERR_strings
	.globl	ERR_load_strings
	.type	ERR_load_strings, @function
ERR_load_strings:
.LFB219:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	call	ossl_err_load_ERR_strings@PLT
	testl	%eax, %eax
	jne	.L86
	movl	$0, %eax
	jmp	.L87
.L86:
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	err_patch
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	err_load_strings
	movl	$1, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE219:
	.size	ERR_load_strings, .-ERR_load_strings
	.globl	ERR_load_strings_const
	.type	ERR_load_strings_const, @function
ERR_load_strings_const:
.LFB220:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_err_load_ERR_strings@PLT
	testl	%eax, %eax
	jne	.L89
	movl	$0, %eax
	jmp	.L90
.L89:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	err_load_strings
	movl	$1, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE220:
	.size	ERR_load_strings_const, .-ERR_load_strings_const
	.globl	ERR_unload_strings
	.type	ERR_unload_strings, @function
ERR_unload_strings:
.LFB221:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	do_err_strings_init_ossl_(%rip), %rdx
	leaq	err_string_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L92
	movl	do_err_strings_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L93
.L92:
	movl	$0, %eax
	jmp	.L94
.L93:
	movq	err_string_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L94
.L97:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ERR_STRING_DATA_lh_plain_type
	movq	%rax, %rbx
	movq	int_error_hash(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ERR_STRING_DATA_lh_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_delete@PLT
	addq	$16, -32(%rbp)
.L96:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L97
	movq	err_string_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$1, %eax
.L94:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE221:
	.size	ERR_unload_strings, .-ERR_unload_strings
	.globl	err_free_strings_int
	.type	err_free_strings_int, @function
err_free_strings_int:
.LFB222:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE222:
	.size	err_free_strings_int, .-err_free_strings_int
	.globl	ERR_clear_error
	.type	ERR_clear_error, @function
ERR_clear_error:
.LFB223:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ossl_err_get_state_int@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L104
	movl	$0, -4(%rbp)
	jmp	.L102
.L103:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	addl	$1, -4(%rbp)
.L102:
	cmpl	$15, -4(%rbp)
	jle	.L103
	movq	-16(%rbp), %rax
	movl	$0, 900(%rax)
	movq	-16(%rbp), %rax
	movl	900(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 896(%rax)
	jmp	.L99
.L104:
	nop
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE223:
	.size	ERR_clear_error, .-ERR_clear_error
	.globl	ERR_get_error
	.type	ERR_get_error, @function
ERR_get_error:
.LFB224:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	get_error_values
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE224:
	.size	ERR_get_error, .-ERR_get_error
	.globl	ERR_get_error_all
	.type	ERR_get_error_all, @function
ERR_get_error_all:
.LFB225:
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
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE225:
	.size	ERR_get_error_all, .-ERR_get_error_all
	.globl	ERR_get_error_line
	.type	ERR_get_error_line, @function
ERR_get_error_line:
.LFB226:
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
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE226:
	.size	ERR_get_error_line, .-ERR_get_error_line
	.globl	ERR_get_error_line_data
	.type	ERR_get_error_line_data, @function
ERR_get_error_line_data:
.LFB227:
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
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE227:
	.size	ERR_get_error_line_data, .-ERR_get_error_line_data
	.globl	ERR_peek_error
	.type	ERR_peek_error, @function
ERR_peek_error:
.LFB228:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	get_error_values
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE228:
	.size	ERR_peek_error, .-ERR_peek_error
	.globl	ERR_peek_error_line
	.type	ERR_peek_error_line, @function
ERR_peek_error_line:
.LFB229:
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
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$1, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE229:
	.size	ERR_peek_error_line, .-ERR_peek_error_line
	.globl	ERR_peek_error_func
	.type	ERR_peek_error_func, @function
ERR_peek_error_func:
.LFB230:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE230:
	.size	ERR_peek_error_func, .-ERR_peek_error_func
	.globl	ERR_peek_error_data
	.type	ERR_peek_error_data, @function
ERR_peek_error_data:
.LFB231:
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
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE231:
	.size	ERR_peek_error_data, .-ERR_peek_error_data
	.globl	ERR_peek_error_all
	.type	ERR_peek_error_all, @function
ERR_peek_error_all:
.LFB232:
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
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$1, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE232:
	.size	ERR_peek_error_all, .-ERR_peek_error_all
	.globl	ERR_peek_error_line_data
	.type	ERR_peek_error_line_data, @function
ERR_peek_error_line_data:
.LFB233:
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
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$1, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE233:
	.size	ERR_peek_error_line_data, .-ERR_peek_error_line_data
	.globl	ERR_peek_last_error
	.type	ERR_peek_last_error, @function
ERR_peek_last_error:
.LFB234:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$2, %edi
	call	get_error_values
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE234:
	.size	ERR_peek_last_error, .-ERR_peek_last_error
	.globl	ERR_peek_last_error_line
	.type	ERR_peek_last_error_line, @function
ERR_peek_last_error_line:
.LFB235:
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
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$2, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE235:
	.size	ERR_peek_last_error_line, .-ERR_peek_last_error_line
	.globl	ERR_peek_last_error_func
	.type	ERR_peek_last_error_func, @function
ERR_peek_last_error_func:
.LFB236:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$2, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE236:
	.size	ERR_peek_last_error_func, .-ERR_peek_last_error_func
	.globl	ERR_peek_last_error_data
	.type	ERR_peek_last_error_data, @function
ERR_peek_last_error_data:
.LFB237:
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
	movq	%rdx, %r9
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$2, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE237:
	.size	ERR_peek_last_error_data, .-ERR_peek_last_error_data
	.globl	ERR_peek_last_error_all
	.type	ERR_peek_last_error_all, @function
ERR_peek_last_error_all:
.LFB238:
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
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$2, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE238:
	.size	ERR_peek_last_error_all, .-ERR_peek_last_error_all
	.globl	ERR_peek_last_error_line_data
	.type	ERR_peek_last_error_line_data, @function
ERR_peek_last_error_line_data:
.LFB239:
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
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$2, %edi
	call	get_error_values
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE239:
	.size	ERR_peek_last_error_line_data, .-ERR_peek_last_error_line_data
	.section	.rodata
.LC84:
	.string	""
	.text
	.type	get_error_values, @function
get_error_values:
.LFB240:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	call	ossl_err_get_state_int@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L140
	movl	$0, %eax
	jmp	.L139
.L146:
	movq	-16(%rbp), %rax
	movl	896(%rax), %edx
	movq	-16(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L141
	movq	-16(%rbp), %rax
	movl	896(%rax), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	movq	-16(%rbp), %rax
	movl	896(%rax), %eax
	testl	%eax, %eax
	jle	.L142
	movq	-16(%rbp), %rax
	movl	896(%rax), %eax
	leal	-1(%rax), %edx
	jmp	.L143
.L142:
	movl	$15, %edx
.L143:
	movq	-16(%rbp), %rax
	movl	%edx, 896(%rax)
	jmp	.L140
.L141:
	movq	-16(%rbp), %rax
	movl	900(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%eax, %edx
	andl	$15, %edx
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L157
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 900(%rax)
	movq	-16(%rbp), %rax
	movl	900(%rax), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	nop
.L140:
	movq	-16(%rbp), %rax
	movl	900(%rax), %edx
	movq	-16(%rbp), %rax
	movl	896(%rax), %eax
	cmpl	%eax, %edx
	jne	.L146
	jmp	.L145
.L157:
	nop
.L145:
	movq	-16(%rbp), %rax
	movl	900(%rax), %edx
	movq	-16(%rbp), %rax
	movl	896(%rax), %eax
	cmpl	%eax, %edx
	jne	.L147
	movl	$0, %eax
	jmp	.L139
.L147:
	cmpl	$2, -36(%rbp)
	jne	.L148
	movq	-16(%rbp), %rax
	movl	896(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L149
.L148:
	movq	-16(%rbp), %rax
	movl	900(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%eax, %edx
	andl	$15, %edx
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
.L149:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L150
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 900(%rax)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16, %rdx
	movq	$0, (%rax,%rdx,8)
.L150:
	cmpq	$0, -48(%rbp)
	je	.L151
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$72, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L151
	movq	-48(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rdx, (%rax)
.L151:
	cmpq	$0, -56(%rbp)
	je	.L152
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$176, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L152:
	cmpq	$0, -64(%rbp)
	je	.L153
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$96, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L153
	movq	-64(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rdx, (%rax)
.L153:
	cmpq	$0, -80(%rbp)
	je	.L154
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	subq	$-128, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
.L154:
	cmpq	$0, -72(%rbp)
	jne	.L155
	cmpl	$0, -36(%rbp)
	jne	.L156
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear_data
	jmp	.L156
.L155:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L156
	movq	-72(%rbp), %rax
	leaq	.LC84(%rip), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -80(%rbp)
	je	.L156
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
.L156:
	movq	-24(%rbp), %rax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE240:
	.size	get_error_values, .-get_error_values
	.section	.rodata
.LC85:
	.string	"lib(%lu)"
.LC86:
	.string	"reason(%lu)"
.LC87:
	.string	"error:%08lX:%s:%s:%s"
.LC88:
	.string	"err:%lx:%lx:%lx:%lx"
	.text
	.globl	ossl_err_string_int
	.type	ossl_err_string_int, @function
ossl_err_string_int:
.LFB241:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%rcx, -384(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -384(%rbp)
	je	.L166
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cltq
	movq	%rax, -24(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_lib_error_string@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L161
	movq	-24(%rbp), %rdx
	leaq	.LC85(%rip), %rsi
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$64, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
.L161:
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cltq
	movq	%rax, -32(%rbp)
	movq	-360(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L162
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	leaq	-352(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	openssl_strerror_r@PLT
	testl	%eax, %eax
	je	.L163
	leaq	-352(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L163
.L162:
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	movq	%rax, -16(%rbp)
.L163:
	cmpq	$0, -16(%rbp)
	jne	.L164
	movq	-32(%rbp), %rax
	andq	$-8126465, %rax
	movq	%rax, %rcx
	leaq	.LC86(%rip), %rdx
	leaq	-352(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-352(%rbp), %rax
	movq	%rax, -16(%rbp)
.L164:
	movq	-368(%rbp), %r8
	movq	-8(%rbp), %rcx
	movq	-360(%rbp), %rdx
	leaq	.LC87(%rip), %rdi
	movq	-384(%rbp), %rsi
	movq	-376(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	-384(%rbp), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.L158
	movq	-24(%rbp), %rcx
	movq	-360(%rbp), %rdx
	leaq	.LC88(%rip), %rdi
	movq	-384(%rbp), %rsi
	movq	-376(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	jmp	.L158
.L166:
	nop
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE241:
	.size	ossl_err_string_int, .-ossl_err_string_int
	.globl	ERR_error_string_n
	.type	ERR_error_string_n, @function
ERR_error_string_n:
.LFB242:
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
	leaq	.LC84(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_err_string_int@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE242:
	.size	ERR_error_string_n, .-ERR_error_string_n
	.globl	ERR_error_string
	.type	ERR_error_string, @function
ERR_error_string:
.LFB243:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L169
	leaq	buf.0(%rip), %rax
	movq	%rax, -16(%rbp)
.L169:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ERR_error_string_n@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE243:
	.size	ERR_error_string, .-ERR_error_string
	.globl	ERR_lib_error_string
	.type	ERR_lib_error_string, @function
ERR_lib_error_string:
.LFB244:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	do_err_strings_init_ossl_(%rip), %rdx
	leaq	err_string_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L172
	movl	do_err_strings_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L173
.L172:
	movl	$0, %eax
	jmp	.L177
.L173:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$23, %rax
	andl	$2139095040, %eax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	int_err_get_item
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L175
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L177
.L175:
	movl	$0, %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE244:
	.size	ERR_lib_error_string, .-ERR_lib_error_string
	.globl	ERR_func_error_string
	.type	ERR_func_error_string, @function
ERR_func_error_string:
.LFB245:
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
.LFE245:
	.size	ERR_func_error_string, .-ERR_func_error_string
	.globl	ERR_reason_error_string
	.type	ERR_reason_error_string, @function
ERR_reason_error_string:
.LFB246:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	leaq	do_err_strings_init_ossl_(%rip), %rdx
	leaq	err_string_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L181
	movl	do_err_strings_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L182
.L181:
	movl	$0, %eax
	jmp	.L188
.L182:
	movq	-56(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L184
	movl	$0, %eax
	jmp	.L188
.L184:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cltq
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cltq
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	salq	$23, %rax
	andl	$2139095040, %eax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	andl	$8388607, %eax
	orq	%rdx, %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	int_err_get_item
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L185
	movq	-24(%rbp), %rax
	andl	$8388607, %eax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	int_err_get_item
	movq	%rax, -8(%rbp)
.L185:
	cmpq	$0, -8(%rbp)
	je	.L186
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L188
.L186:
	movl	$0, %eax
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE246:
	.size	ERR_reason_error_string, .-ERR_reason_error_string
	.type	err_delete_thread_state, @function
err_delete_thread_state:
.LFB247:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	err_thread_local(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L192
	leaq	err_thread_local(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_free@PLT
	jmp	.L189
.L192:
	nop
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE247:
	.size	err_delete_thread_state, .-err_delete_thread_state
	.globl	ERR_remove_thread_state
	.type	ERR_remove_thread_state, @function
ERR_remove_thread_state:
.LFB248:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE248:
	.size	ERR_remove_thread_state, .-ERR_remove_thread_state
	.globl	ERR_remove_state
	.type	ERR_remove_state, @function
ERR_remove_state:
.LFB249:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE249:
	.size	ERR_remove_state, .-ERR_remove_state
	.local	err_do_init_ossl_ret_
	.comm	err_do_init_ossl_ret_,4,4
	.type	err_do_init_ossl_, @function
err_do_init_ossl_:
.LFB250:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	err_do_init
	movl	%eax, err_do_init_ossl_ret_(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE250:
	.size	err_do_init_ossl_, .-err_do_init_ossl_
	.type	err_do_init, @function
err_do_init:
.LFB251:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, set_err_thread_local(%rip)
	leaq	err_thread_local(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_init_local@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE251:
	.size	err_do_init, .-err_do_init
	.globl	ossl_err_get_state_int
	.type	ossl_err_get_state_int, @function
ossl_err_get_state_int:
.LFB252:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	$0, %esi
	movl	$262144, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	jne	.L199
	movl	$0, %eax
	jmp	.L200
.L199:
	leaq	err_do_init_ossl_(%rip), %rdx
	leaq	err_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L201
	movl	err_do_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L202
.L201:
	movl	$0, %eax
	jmp	.L200
.L202:
	leaq	err_thread_local(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	cmpq	$-1, -8(%rbp)
	jne	.L203
	movl	$0, %eax
	jmp	.L200
.L203:
	cmpq	$0, -8(%rbp)
	jne	.L204
	leaq	err_thread_local(%rip), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	testl	%eax, %eax
	jne	.L205
	movl	$0, %eax
	jmp	.L200
.L205:
	call	OSSL_ERR_STATE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L206
	leaq	err_thread_local(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	movl	$0, %eax
	jmp	.L200
.L206:
	leaq	err_delete_thread_state(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_init_thread_start@PLT
	testl	%eax, %eax
	je	.L207
	movq	-8(%rbp), %rax
	leaq	err_thread_local(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	testl	%eax, %eax
	jne	.L208
.L207:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_free@PLT
	leaq	err_thread_local(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	movl	$0, %eax
	jmp	.L200
.L208:
	movl	$0, %esi
	movl	$2, %edi
	call	OPENSSL_init_crypto@PLT
.L204:
	call	__errno_location@PLT
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE252:
	.size	ossl_err_get_state_int, .-ossl_err_get_state_int
	.globl	ERR_get_state
	.type	ERR_get_state, @function
ERR_get_state:
.LFB253:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ossl_err_get_state_int@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE253:
	.size	ERR_get_state, .-ERR_get_state
	.globl	err_shelve_state
	.type	err_shelve_state, @function
err_shelve_state:
.LFB254:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	$0, %esi
	movl	$262144, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	jne	.L212
	movl	$0, %eax
	jmp	.L213
.L212:
	leaq	err_do_init_ossl_(%rip), %rdx
	leaq	err_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L214
	movl	err_do_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L215
.L214:
	movl	$0, %eax
	jmp	.L213
.L215:
	leaq	err_thread_local(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	err_thread_local(%rip), %rax
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	testl	%eax, %eax
	jne	.L216
	movl	$0, %eax
	jmp	.L213
.L216:
	call	__errno_location@PLT
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE254:
	.size	err_shelve_state, .-err_shelve_state
	.globl	err_unshelve_state
	.type	err_unshelve_state, @function
err_unshelve_state:
.LFB255:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$-1, -8(%rbp)
	je	.L219
	movq	-8(%rbp), %rax
	leaq	err_thread_local(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_THREAD_set_local@PLT
.L219:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE255:
	.size	err_unshelve_state, .-err_unshelve_state
	.globl	ERR_get_next_error_library
	.type	ERR_get_next_error_library, @function
ERR_get_next_error_library:
.LFB256:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	do_err_strings_init_ossl_(%rip), %rdx
	leaq	err_string_init(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L221
	movl	do_err_strings_init_ossl_ret_(%rip), %eax
	testl	%eax, %eax
	jne	.L222
.L221:
	movl	$0, %eax
	jmp	.L223
.L222:
	movq	err_string_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L224
	movl	$0, %eax
	jmp	.L223
.L224:
	movl	int_err_library_number(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, int_err_library_number(%rip)
	movl	%eax, -4(%rbp)
	movq	err_string_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE256:
	.size	ERR_get_next_error_library, .-ERR_get_next_error_library
	.type	err_set_error_data_int, @function
err_set_error_data_int:
.LFB257:
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
	movl	%ecx, -40(%rbp)
	call	ossl_err_get_state_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L226
	movl	$0, %eax
	jmp	.L227
.L226:
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	movslq	%eax, %rcx
	movl	-40(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear_data
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	movslq	%eax, %rsi
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	err_set_data
	movl	$1, %eax
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE257:
	.size	err_set_error_data_int, .-err_set_error_data_int
	.globl	ERR_set_error_data
	.type	ERR_set_error_data, @function
ERR_set_error_data:
.LFB258:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rsi
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	err_set_error_data_int
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE258:
	.size	ERR_set_error_data, .-ERR_set_error_data
	.globl	ERR_add_error_data
	.type	ERR_add_error_data, @function
ERR_add_error_data:
.LFB259:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L231
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L231:
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rdx
	movl	-212(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ERR_add_error_vdata@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE259:
	.size	ERR_add_error_data, .-ERR_add_error_data
	.section	.rodata
.LC89:
	.string	"<NULL>"
	.text
	.globl	ERR_add_error_vdata
	.type	ERR_add_error_vdata, @function
ERR_add_error_vdata:
.LFB260:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$3, -28(%rbp)
	call	ossl_err_get_state_int@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L245
	movq	-40(%rbp), %rax
	movl	896(%rax), %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	subq	$-128, %rdx
	movl	(%rax,%rdx,4), %eax
	andl	-28(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L235
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L235
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$48, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	$32, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	subq	$-128, %rdx
	movl	$0, (%rax,%rdx,4)
	jmp	.L236
.L235:
	movl	$81, -8(%rbp)
	leaq	.LC83(%rip), %rax
	movl	$851, %edx
	movq	%rax, %rsi
	movl	$81, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L246
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
.L236:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	jmp	.L238
.L244:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L239
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-80(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-80(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L240
.L239:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L240:
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L241
	leaq	.LC89(%rip), %rax
	movq	%rax, -24(%rbp)
.L241:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L242
	movl	-4(%rbp), %eax
	addl	$20, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC83(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$867, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L243
	leaq	.LC83(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$869, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L232
.L243:
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
.L242:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
.L238:
	subl	$1, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jns	.L244
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	err_set_error_data_int
	testl	%eax, %eax
	jne	.L232
	leaq	.LC83(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$877, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L232
.L245:
	nop
	jmp	.L232
.L246:
	nop
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE260:
	.size	ERR_add_error_vdata, .-ERR_add_error_vdata
	.globl	err_clear_last_constant_time
	.type	err_clear_last_constant_time, @function
err_clear_last_constant_time:
.LFB261:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	call	ossl_err_get_state_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L250
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	movl	$2, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	constant_time_select_int
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	orl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	jmp	.L247
.L250:
	nop
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE261:
	.size	err_clear_last_constant_time, .-err_clear_last_constant_time
	.local	buf.0
	.comm	buf.0,256,32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
