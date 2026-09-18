	.file	"stack_test.c"
	.text
	.type	sk_sint_num, @function
sk_sint_num:
.LFB468:
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
.LFE468:
	.size	sk_sint_num, .-sk_sint_num
	.type	sk_sint_value, @function
sk_sint_value:
.LFB469:
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
.LFE469:
	.size	sk_sint_value, .-sk_sint_value
	.type	sk_sint_new_null, @function
sk_sint_new_null:
.LFB471:
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
.LFE471:
	.size	sk_sint_new_null, .-sk_sint_new_null
	.type	sk_sint_reserve, @function
sk_sint_reserve:
.LFB473:
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
	call	OPENSSL_sk_reserve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	sk_sint_reserve, .-sk_sint_reserve
	.type	sk_sint_free, @function
sk_sint_free:
.LFB474:
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
.LFE474:
	.size	sk_sint_free, .-sk_sint_free
	.type	sk_sint_push, @function
sk_sint_push:
.LFB478:
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
.LFE478:
	.size	sk_sint_push, .-sk_sint_push
	.type	sk_sint_shift, @function
sk_sint_shift:
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
	movq	%rax, %rdi
	call	OPENSSL_sk_shift@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	sk_sint_shift, .-sk_sint_shift
	.type	sk_sint_find, @function
sk_sint_find:
.LFB485:
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
	call	OPENSSL_sk_find@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	sk_sint_find, .-sk_sint_find
	.type	sk_sint_find_ex, @function
sk_sint_find_ex:
.LFB486:
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
	call	OPENSSL_sk_find_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	sk_sint_find_ex, .-sk_sint_find_ex
	.type	sk_sint_sort, @function
sk_sint_sort:
.LFB488:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	sk_sint_sort, .-sk_sint_sort
	.type	sk_sint_is_sorted, @function
sk_sint_is_sorted:
.LFB489:
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
	call	OPENSSL_sk_is_sorted@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	sk_sint_is_sorted, .-sk_sint_is_sorted
	.type	sk_sint_set_cmp_func, @function
sk_sint_set_cmp_func:
.LFB492:
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
	call	OPENSSL_sk_set_cmp_func@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	sk_sint_set_cmp_func, .-sk_sint_set_cmp_func
	.type	sk_uchar_num, @function
sk_uchar_num:
.LFB493:
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
.LFE493:
	.size	sk_uchar_num, .-sk_uchar_num
	.type	sk_uchar_value, @function
sk_uchar_value:
.LFB494:
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
.LFE494:
	.size	sk_uchar_value, .-sk_uchar_value
	.type	sk_uchar_new, @function
sk_uchar_new:
.LFB495:
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
	call	OPENSSL_sk_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	sk_uchar_new, .-sk_uchar_new
	.type	sk_uchar_reserve, @function
sk_uchar_reserve:
.LFB498:
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
	call	OPENSSL_sk_reserve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	sk_uchar_reserve, .-sk_uchar_reserve
	.type	sk_uchar_free, @function
sk_uchar_free:
.LFB499:
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
.LFE499:
	.size	sk_uchar_free, .-sk_uchar_free
	.type	sk_uchar_zero, @function
sk_uchar_zero:
.LFB500:
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
	call	OPENSSL_sk_zero@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	sk_uchar_zero, .-sk_uchar_zero
	.type	sk_uchar_delete, @function
sk_uchar_delete:
.LFB501:
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
.LFE501:
	.size	sk_uchar_delete, .-sk_uchar_delete
	.type	sk_uchar_unshift, @function
sk_uchar_unshift:
.LFB504:
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
	call	OPENSSL_sk_unshift@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	sk_uchar_unshift, .-sk_uchar_unshift
	.type	sk_uchar_pop, @function
sk_uchar_pop:
.LFB505:
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
.LFE505:
	.size	sk_uchar_pop, .-sk_uchar_pop
	.type	sk_uchar_insert, @function
sk_uchar_insert:
.LFB508:
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
	call	OPENSSL_sk_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	sk_uchar_insert, .-sk_uchar_insert
	.type	sk_uchar_set, @function
sk_uchar_set:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_set@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	sk_uchar_set, .-sk_uchar_set
	.type	sk_uchar_sort, @function
sk_uchar_sort:
.LFB513:
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
	call	OPENSSL_sk_sort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	sk_uchar_sort, .-sk_uchar_sort
	.type	sk_uchar_dup, @function
sk_uchar_dup:
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
	call	OPENSSL_sk_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	sk_uchar_dup, .-sk_uchar_dup
	.type	sk_SS_num, @function
sk_SS_num:
.LFB518:
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
.LFE518:
	.size	sk_SS_num, .-sk_SS_num
	.type	sk_SS_value, @function
sk_SS_value:
.LFB519:
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
.LFE519:
	.size	sk_SS_value, .-sk_SS_value
	.type	sk_SS_new_null, @function
sk_SS_new_null:
.LFB521:
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
.LFE521:
	.size	sk_SS_new_null, .-sk_SS_new_null
	.type	sk_SS_free, @function
sk_SS_free:
.LFB524:
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
.LFE524:
	.size	sk_SS_free, .-sk_SS_free
	.type	sk_SS_delete_ptr, @function
sk_SS_delete_ptr:
.LFB527:
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
	call	OPENSSL_sk_delete_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	sk_SS_delete_ptr, .-sk_SS_delete_ptr
	.type	sk_SS_push, @function
sk_SS_push:
.LFB528:
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
.LFE528:
	.size	sk_SS_push, .-sk_SS_push
	.type	sk_SS_pop_free, @function
sk_SS_pop_free:
.LFB532:
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
.LFE532:
	.size	sk_SS_pop_free, .-sk_SS_pop_free
	.type	sk_SS_deep_copy, @function
sk_SS_deep_copy:
.LFB541:
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
	call	OPENSSL_sk_deep_copy@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	sk_SS_deep_copy, .-sk_SS_deep_copy
	.type	sk_SU_num, @function
sk_SU_num:
.LFB543:
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
.LFE543:
	.size	sk_SU_num, .-sk_SU_num
	.type	sk_SU_value, @function
sk_SU_value:
.LFB544:
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
.LFE544:
	.size	sk_SU_value, .-sk_SU_value
	.type	sk_SU_new_null, @function
sk_SU_new_null:
.LFB546:
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
.LFE546:
	.size	sk_SU_new_null, .-sk_SU_new_null
	.type	sk_SU_free, @function
sk_SU_free:
.LFB549:
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
.LFE549:
	.size	sk_SU_free, .-sk_SU_free
	.type	sk_SU_push, @function
sk_SU_push:
.LFB553:
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
.LFE553:
	.size	sk_SU_push, .-sk_SU_push
	.type	int_compare, @function
int_compare:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L70
	movl	$-1, %eax
	jmp	.L71
.L70:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L72
	movl	$1, %eax
	jmp	.L71
.L72:
	movl	$0, %eax
.L71:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	int_compare, .-int_compare
	.section	.rodata
.LC0:
	.string	"s"
.LC1:
	.string	"../test/stack_test.c"
	.align 8
.LC2:
	.string	"sk_sint_reserve(s, 5 * reserve)"
.LC3:
	.string	"i"
.LC4:
	.string	"sk_sint_num(s)"
.LC5:
	.string	"int stack size %d"
.LC6:
	.string	"n"
.LC7:
	.string	"v + i"
.LC8:
	.string	"sk_sint_value(s, i)"
.LC9:
	.string	"int value %d"
.LC10:
	.string	"finds[i].unsorted"
.LC11:
	.string	"sk_sint_find(s, val)"
.LC12:
	.string	"int unsorted find %d"
.LC13:
	.string	"sk_sint_find_ex(s, val)"
.LC14:
	.string	"int unsorted find_ex %d"
.LC15:
	.string	"sk_sint_is_sorted(s)"
.LC16:
	.string	"finds[i].sorted"
	.align 8
.LC17:
	.string	"sk_sint_find(s, &finds[i].value)"
.LC18:
	.string	"int sorted find %d"
.LC19:
	.string	"finds[i].ex"
	.align 8
.LC20:
	.string	"sk_sint_find_ex(s, &finds[i].value)"
.LC21:
	.string	"int sorted find_ex present %d"
.LC22:
	.string	"exfinds[i].ex"
	.align 8
.LC23:
	.string	"sk_sint_find_ex(s, &exfinds[i].value)"
.LC24:
	.string	"int sorted find_ex absent %d"
.LC25:
	.string	"v + 6"
.LC26:
	.string	"sk_sint_shift(s)"
	.text
	.type	test_int_stack, @function
test_int_stack:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movl	$9, -44(%rbp)
	movl	$5, -48(%rbp)
	movl	$6, -52(%rbp)
	call	sk_sint_new_null
	movq	%rax, -64(%rbp)
	movl	$0, -24(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$87, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L107
	cmpl	$0, -68(%rbp)
	jle	.L75
	movl	-68(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_sint_reserve
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$88, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L107
.L75:
	movl	$0, -20(%rbp)
	jmp	.L77
.L79:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_sint_num
	movl	%eax, %esi
	movl	-20(%rbp), %edi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L78
	movl	-20(%rbp), %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$94, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L76
.L78:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	v.4(%rip), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_sint_push
	addl	$1, -20(%rbp)
.L77:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L79
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_sint_num
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$99, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L108
	movl	$0, -20(%rbp)
	jmp	.L81
.L83:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	v.4(%rip), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-20(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_sint_value
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$104, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L82
	movl	-20(%rbp), %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$105, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L76
.L82:
	addl	$1, -20(%rbp)
.L81:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L83
	movl	$0, -20(%rbp)
	jmp	.L84
.L88:
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+finds.3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$-1, %eax
	je	.L85
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+finds.3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	v.4(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L86
.L85:
	leaq	notpresent.2(%rip), %rax
	movq	%rax, -32(%rbp)
.L86:
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+finds.3(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_sint_find
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L87
	movl	-20(%rbp), %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$115, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L76
.L87:
	addl	$1, -20(%rbp)
.L84:
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L88
	movl	$0, -20(%rbp)
	jmp	.L89
.L93:
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+finds.3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$-1, %eax
	je	.L90
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+finds.3(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	v.4(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	jmp	.L91
.L90:
	leaq	notpresent.2(%rip), %rax
	movq	%rax, -40(%rbp)
.L91:
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	4+finds.3(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_sint_find_ex
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$125, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L92
	movl	-20(%rbp), %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$126, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L76
.L92:
	addl	$1, -20(%rbp)
.L89:
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L93
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_sint_is_sorted
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$132, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L109
	leaq	int_compare(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_sint_set_cmp_func
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_sint_sort
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_sint_is_sorted
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$136, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L110
	movl	$0, -20(%rbp)
	jmp	.L96
.L98:
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+finds.3(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	finds.3(%rip), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_sint_find
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$141, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L97
	movl	-20(%rbp), %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$142, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L76
.L97:
	addl	$1, -20(%rbp)
.L96:
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L98
	movl	$0, -20(%rbp)
	jmp	.L99
.L101:
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	12+finds.3(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	finds.3(%rip), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_sint_find_ex
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L100
	movl	-20(%rbp), %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$149, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L76
.L100:
	addl	$1, -20(%rbp)
.L99:
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L101
	movl	$0, -20(%rbp)
	jmp	.L102
.L104:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	4+exfinds.1(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	exfinds.1(%rip), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_sint_find_ex
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$153, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L103
	movl	-20(%rbp), %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$154, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L76
.L103:
	addl	$1, -20(%rbp)
.L102:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L104
	leaq	24+v.4(%rip), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_sint_shift
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$159, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L111
	movl	$1, -24(%rbp)
	jmp	.L76
.L107:
	nop
	jmp	.L76
.L108:
	nop
	jmp	.L76
.L109:
	nop
	jmp	.L76
.L110:
	nop
	jmp	.L76
.L111:
	nop
.L76:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_sint_free
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	test_int_stack, .-test_int_stack
	.type	uchar_compare, @function
uchar_compare:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	uchar_compare, .-uchar_compare
	.section	.rodata
	.align 8
.LC27:
	.string	"sk_uchar_reserve(s, 5 * reserve)"
.LC28:
	.string	"sk_uchar_num(s)"
.LC29:
	.string	"uchar stack size %d"
.LC30:
	.string	"sk_uchar_num(r)"
.LC31:
	.string	"sk_uchar_pop(s)"
.LC32:
	.string	"uchar pop %d"
.LC33:
	.string	"0"
.LC34:
	.string	"sk_uchar_value(r, i)"
.LC35:
	.string	"uchar insert %d"
.LC36:
	.string	"sk_uchar_delete(r, 12)"
.LC37:
	.string	"v + 1"
.LC38:
	.string	"sk_uchar_delete(r, 1)"
.LC39:
	.string	"uchar set %d"
	.text
	.type	test_uchar_stack, @function
test_uchar_stack:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movl	$6, -44(%rbp)
	leaq	uchar_compare(%rip), %rax
	movq	%rax, %rdi
	call	sk_uchar_new
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$182, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L138
	cmpl	$0, -52(%rbp)
	jle	.L116
	movl	-52(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_uchar_reserve
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$183, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L138
.L116:
	movl	$0, -36(%rbp)
	jmp	.L118
.L120:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_num
	movl	%eax, %esi
	movl	-36(%rbp), %edi
	leaq	.LC3(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$188, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L119
	movl	-36(%rbp), %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$189, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L117
.L119:
	movl	-36(%rbp), %eax
	cltq
	leaq	v.0(%rip), %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_uchar_unshift
	addl	$1, -36(%rbp)
.L118:
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L120
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_num
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$194, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L139
	movl	$0, %edi
	call	sk_uchar_dup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_num
	testl	%eax, %eax
	jne	.L140
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_dup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_num
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$203, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L141
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_sort
	movl	$0, -36(%rbp)
	jmp	.L124
.L126:
	movl	-36(%rbp), %eax
	cltq
	leaq	v.0(%rip), %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_pop
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$209, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L125
	movl	-36(%rbp), %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$210, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L117
.L125:
	addl	$1, -36(%rbp)
.L124:
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L126
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_free
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_num
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$219, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L142
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_zero
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_num
	movl	%eax, %esi
	leaq	.LC33(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$224, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L143
	leaq	v.0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_uchar_insert
	leaq	2+v.0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_uchar_insert
	leaq	1+v.0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_uchar_insert
	movl	$0, -36(%rbp)
	jmp	.L129
.L131:
	movl	-36(%rbp), %eax
	cltq
	leaq	v.0(%rip), %rdx
	leaq	(%rax,%rdx), %rbx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_uchar_value
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$232, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L130
	movl	-36(%rbp), %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$233, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L117
.L130:
	addl	$1, -36(%rbp)
.L129:
	cmpl	$2, -36(%rbp)
	jle	.L131
	movq	-32(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	sk_uchar_delete
	movq	%rax, %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$238, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L144
	leaq	1+v.0(%rip), %rbx
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	sk_uchar_delete
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$240, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L145
	leaq	1+v.0(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	sk_uchar_set
	movl	$0, -36(%rbp)
	jmp	.L134
.L136:
	movl	-36(%rbp), %eax
	cltq
	leaq	v.0(%rip), %rdx
	leaq	(%rax,%rdx), %rbx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_uchar_value
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$246, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L135
	movl	-36(%rbp), %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$247, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L117
.L135:
	addl	$1, -36(%rbp)
.L134:
	cmpl	$1, -36(%rbp)
	jle	.L136
	movl	$1, -40(%rbp)
	jmp	.L117
.L138:
	nop
	jmp	.L117
.L139:
	nop
	jmp	.L117
.L140:
	nop
	jmp	.L117
.L141:
	nop
	jmp	.L117
.L142:
	nop
	jmp	.L117
.L143:
	nop
	jmp	.L117
.L144:
	nop
	jmp	.L117
.L145:
	nop
.L117:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_uchar_free
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	test_uchar_stack, .-test_uchar_stack
	.type	SS_copy, @function
SS_copy:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$260, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L147
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L147:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	SS_copy, .-SS_copy
	.type	SS_free, @function
SS_free:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$268, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	SS_free, .-SS_free
	.section	.rodata
.LC40:
	.string	"v[i]"
.LC41:
	.string	"sk_SS_num(s)"
.LC42:
	.string	"SS stack size %d"
.LC43:
	.string	"r"
.LC44:
	.string	"p"
.LC45:
	.string	"SS deepcopy non-copy %d"
.LC46:
	.string	"v[i]->n"
.LC47:
	.string	"p->n"
.LC48:
	.string	"test SS deepcopy int %d"
.LC49:
	.string	"v[i]->c"
.LC50:
	.string	"p->c"
.LC51:
	.string	"SS deepcopy char %d"
.LC52:
	.string	"n - 1"
.LC53:
	.string	"v[i<3 ? i : 1+i]"
.LC54:
	.string	"sk_SS_value(s, i)"
.LC55:
	.string	"SS delete ptr item %d"
	.text
	.type	test_SS_stack, @function
test_SS_stack:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	call	sk_SS_new_null
	movq	%rax, -40(%rbp)
	movq	$0, -24(%rbp)
	movl	$10, -44(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L151
.L155:
	leaq	.LC1(%rip), %rax
	movl	$282, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	cltq
	movq	%rdx, -144(%rbp,%rax,8)
	movl	-28(%rbp), %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$284, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L172
	movl	-28(%rbp), %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movl	-28(%rbp), %eax
	leal	65(%rax), %edx
	movl	-28(%rbp), %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	movb	%dl, 4(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_SS_num
	movl	%eax, %esi
	movl	-28(%rbp), %edi
	leaq	.LC3(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$288, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L154
	movl	-28(%rbp), %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$289, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L153
.L154:
	movl	-28(%rbp), %eax
	cltq
	movq	-144(%rbp,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_SS_push
	addl	$1, -28(%rbp)
.L151:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L155
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_SS_num
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$294, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L173
	leaq	SS_free(%rip), %rdx
	leaq	SS_copy(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	sk_SS_deep_copy
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_SS_num
	testl	%eax, %eax
	jne	.L174
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_SS_free
	leaq	SS_free(%rip), %rdx
	leaq	SS_copy(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_SS_deep_copy
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC43(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$303, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L175
	movl	$0, -28(%rbp)
	jmp	.L159
.L163:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_SS_value
	movq	%rax, -56(%rbp)
	movl	-28(%rbp), %eax
	cltq
	movq	-144(%rbp,%rax,8), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC40(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$307, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	jne	.L160
	movl	-28(%rbp), %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$308, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L153
.L160:
	movl	-28(%rbp), %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	movl	(%rax), %edi
	movq	-56(%rbp), %rax
	movl	(%rax), %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$311, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L161
	movl	-28(%rbp), %eax
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$312, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L153
.L161:
	movl	-28(%rbp), %eax
	cltq
	movq	-144(%rbp,%rax,8), %rax
	movzbl	4(%rax), %eax
	movsbl	%al, %edi
	movq	-56(%rbp), %rax
	movzbl	4(%rax), %eax
	movsbl	%al, %esi
	leaq	.LC49(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$315, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	jne	.L162
	movl	-28(%rbp), %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$316, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L153
.L162:
	addl	$1, -28(%rbp)
.L159:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L163
	leaq	SS_free(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_SS_pop_free
	movq	$0, -24(%rbp)
	movq	-120(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_SS_delete_ptr
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC44(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$327, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L176
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SS_free
	movl	-44(%rbp), %eax
	leal	-1(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_SS_num
	movl	%eax, %esi
	leaq	.LC52(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$330, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L177
	movl	$0, -28(%rbp)
	jmp	.L166
.L170:
	cmpl	$2, -28(%rbp)
	jle	.L167
	movl	-28(%rbp), %eax
	addl	$1, %eax
	jmp	.L168
.L167:
	movl	-28(%rbp), %eax
.L168:
	cltq
	movq	-144(%rbp,%rax,8), %rbx
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_SS_value
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$333, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L169
	movl	-28(%rbp), %eax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$334, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L153
.L169:
	addl	$1, -28(%rbp)
.L166:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -28(%rbp)
	jl	.L170
	movl	$1, -32(%rbp)
	jmp	.L153
.L172:
	nop
	jmp	.L153
.L173:
	nop
	jmp	.L153
.L174:
	nop
	jmp	.L153
.L175:
	nop
	jmp	.L153
.L176:
	nop
	jmp	.L153
.L177:
	nop
.L153:
	leaq	SS_free(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_SS_pop_free
	leaq	SS_free(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_SS_pop_free
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	test_SS_stack, .-test_SS_stack
	.section	.rodata
.LC56:
	.string	"sk_SU_num(s)"
.LC57:
	.string	"SU stack size %d"
.LC58:
	.string	"sk_SU_value(s, i)"
.LC59:
	.string	"SU pointer check %d"
	.text
	.type	test_SU_stack, @function
test_SU_stack:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	call	sk_SU_new_null
	movq	%rax, -32(%rbp)
	movl	$10, -36(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L179
.L184:
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L180
	movl	-20(%rbp), %eax
	cltq
	movl	-20(%rbp), %edx
	movl	%edx, -80(%rbp,%rax,4)
	jmp	.L181
.L180:
	movl	-20(%rbp), %eax
	addl	$65, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	cltq
	movb	%dl, -80(%rbp,%rax,4)
.L181:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_SU_num
	movl	%eax, %esi
	movl	-20(%rbp), %edi
	leaq	.LC3(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$359, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L182
	movl	-20(%rbp), %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$360, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L183
.L182:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_SU_push
	addl	$1, -20(%rbp)
.L179:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L184
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_SU_num
	movl	%eax, %esi
	movl	-36(%rbp), %edi
	leaq	.LC6(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$365, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L190
	movl	$0, -20(%rbp)
	jmp	.L186
.L188:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-80(%rbp), %rax
	leaq	(%rax,%rdx), %rbx
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_SU_value
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$370, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L187
	movl	-20(%rbp), %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$371, %esi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L183
.L187:
	addl	$1, -20(%rbp)
.L186:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L188
	movl	$1, -24(%rbp)
	jmp	.L183
.L190:
	nop
.L183:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_SU_free
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	test_SU_stack, .-test_SU_stack
	.section	.rodata
.LC60:
	.string	"test_int_stack"
.LC61:
	.string	"test_uchar_stack"
.LC62:
	.string	"test_SS_stack"
.LC63:
	.string	"test_SU_stack"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_int_stack(%rip), %rsi
	leaq	.LC60(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_uchar_stack(%rip), %rsi
	leaq	.LC61(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_SS_stack(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_SU_stack(%rip), %rdx
	leaq	.LC63(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	setup_tests, .-setup_tests
	.data
	.align 32
	.type	v.4, @object
	.size	v.4, 36
v.4:
	.long	1
	.long	2
	.long	-4
	.long	16
	.long	999
	.long	1
	.long	-173
	.long	1
	.long	9
	.align 32
	.type	finds.3, @object
	.size	finds.3, 80
finds.3:
	.long	2
	.long	1
	.long	5
	.long	5
	.long	9
	.long	7
	.long	6
	.long	6
	.long	-173
	.long	5
	.long	0
	.long	0
	.long	999
	.long	3
	.long	8
	.long	8
	.long	0
	.long	-1
	.long	-1
	.long	1
	.align 4
	.type	notpresent.2, @object
	.size	notpresent.2, 4
notpresent.2:
	.long	-1
	.align 32
	.type	exfinds.1, @object
	.size	exfinds.1, 48
exfinds.1:
	.long	3
	.long	5
	.long	1000
	.long	8
	.long	20
	.long	8
	.long	-999
	.long	0
	.long	-5
	.long	0
	.long	8
	.long	5
	.section	.rodata
	.type	v.0, @object
	.size	v.0, 6
v.0:
	.base64	"AQMHBf8A"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
