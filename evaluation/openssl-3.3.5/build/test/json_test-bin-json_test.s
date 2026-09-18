	.file	"json_test.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"h->mem_bio = BIO_new(BIO_s_mem())"
.LC1:
	.string	"../test/json_test.c"
	.text
	.type	helper_ensure, @function
helper_ensure:
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
	movl	88(%rax), %eax
	testl	%eax, %eax
	je	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$28, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
	movl	92(%rax), %edx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_json_init@PLT
	testl	%eax, %eax
	jne	.L5
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movl	$0, %eax
	jmp	.L3
.L5:
	movq	-8(%rbp), %rax
	movl	$1, 88(%rax)
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	helper_ensure, .-helper_ensure
	.type	helper_cleanup, @function
helper_cleanup:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	je	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_cleanup@PLT
	movq	-8(%rbp), %rax
	movl	$0, 88(%rax)
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	helper_cleanup, .-helper_cleanup
	.type	helper_set_flags, @function
helper_set_flags:
.LFB470:
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
	call	helper_cleanup
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 92(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	helper_set_flags, .-helper_set_flags
	.type	get_script_null, @function
get_script_null:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.199(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	get_script_null, .-get_script_null
	.type	get_script_obj_empty, @function
get_script_obj_empty:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.195(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	get_script_obj_empty, .-get_script_obj_empty
	.type	get_script_array_empty, @function
get_script_array_empty:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.191(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	get_script_array_empty, .-get_script_array_empty
	.type	get_script_bool_false, @function
get_script_bool_false:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.187(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	get_script_bool_false, .-get_script_bool_false
	.type	get_script_bool_true, @function
get_script_bool_true:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.183(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	get_script_bool_true, .-get_script_bool_true
	.type	get_script_u64_0, @function
get_script_u64_0:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.179(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	get_script_u64_0, .-get_script_u64_0
	.type	get_script_u64_1, @function
get_script_u64_1:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.175(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	get_script_u64_1, .-get_script_u64_1
	.type	get_script_u64_10, @function
get_script_u64_10:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.171(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	get_script_u64_10, .-get_script_u64_10
	.type	get_script_u64_12345, @function
get_script_u64_12345:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.167(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	get_script_u64_12345, .-get_script_u64_12345
	.type	get_script_u64_18446744073709551615, @function
get_script_u64_18446744073709551615:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.163(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	get_script_u64_18446744073709551615, .-get_script_u64_18446744073709551615
	.type	get_script_i64_0, @function
get_script_i64_0:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.159(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	get_script_i64_0, .-get_script_i64_0
	.type	get_script_i64_1, @function
get_script_i64_1:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.155(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	get_script_i64_1, .-get_script_i64_1
	.type	get_script_i64_2, @function
get_script_i64_2:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.151(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	get_script_i64_2, .-get_script_i64_2
	.type	get_script_i64_10, @function
get_script_i64_10:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.147(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	get_script_i64_10, .-get_script_i64_10
	.type	get_script_i64_12345, @function
get_script_i64_12345:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.143(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	get_script_i64_12345, .-get_script_i64_12345
	.type	get_script_i64_9223372036854775807, @function
get_script_i64_9223372036854775807:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.139(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	get_script_i64_9223372036854775807, .-get_script_i64_9223372036854775807
	.type	get_script_i64_m1, @function
get_script_i64_m1:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.135(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	get_script_i64_m1, .-get_script_i64_m1
	.type	get_script_i64_m2, @function
get_script_i64_m2:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.131(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	get_script_i64_m2, .-get_script_i64_m2
	.type	get_script_i64_m10, @function
get_script_i64_m10:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.127(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	get_script_i64_m10, .-get_script_i64_m10
	.type	get_script_i64_m12345, @function
get_script_i64_m12345:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.123(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	get_script_i64_m12345, .-get_script_i64_m12345
	.type	get_script_i64_m9223372036854775807, @function
get_script_i64_m9223372036854775807:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.119(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	get_script_i64_m9223372036854775807, .-get_script_i64_m9223372036854775807
	.type	get_script_i64_m9223372036854775808, @function
get_script_i64_m9223372036854775808:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.115(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	get_script_i64_m9223372036854775808, .-get_script_i64_m9223372036854775808
	.type	get_script_str_empty, @function
get_script_str_empty:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.111(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	get_script_str_empty, .-get_script_str_empty
	.type	get_script_str_a, @function
get_script_str_a:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.107(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	get_script_str_a, .-get_script_str_a
	.type	get_script_str_abc, @function
get_script_str_abc:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.103(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	get_script_str_abc, .-get_script_str_abc
	.type	get_script_str_quote, @function
get_script_str_quote:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.99(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	get_script_str_quote, .-get_script_str_quote
	.type	get_script_str_quote2, @function
get_script_str_quote2:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.95(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	get_script_str_quote2, .-get_script_str_quote2
	.type	get_script_str_escape, @function
get_script_str_escape:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.91(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	get_script_str_escape, .-get_script_str_escape
	.type	get_script_str_len, @function
get_script_str_len:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.87(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	get_script_str_len, .-get_script_str_len
	.type	get_script_str_len0, @function
get_script_str_len0:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.83(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	get_script_str_len0, .-get_script_str_len0
	.type	get_script_str_len_nul, @function
get_script_str_len_nul:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.79(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	get_script_str_len_nul, .-get_script_str_len_nul
	.type	get_script_hex_data0, @function
get_script_hex_data0:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.75(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	get_script_hex_data0, .-get_script_hex_data0
	.type	get_script_hex_data, @function
get_script_hex_data:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.71(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	get_script_hex_data, .-get_script_hex_data
	.type	get_script_array_nest1, @function
get_script_array_nest1:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.67(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	get_script_array_nest1, .-get_script_array_nest1
	.type	get_script_array_nest2, @function
get_script_array_nest2:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.63(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	get_script_array_nest2, .-get_script_array_nest2
	.type	get_script_array_nest3, @function
get_script_array_nest3:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.59(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	get_script_array_nest3, .-get_script_array_nest3
	.type	get_script_array_nest4, @function
get_script_array_nest4:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.55(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	get_script_array_nest4, .-get_script_array_nest4
	.type	get_script_obj_nontrivial1, @function
get_script_obj_nontrivial1:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.51(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	get_script_obj_nontrivial1, .-get_script_obj_nontrivial1
	.type	get_script_obj_nontrivial2, @function
get_script_obj_nontrivial2:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.47(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	get_script_obj_nontrivial2, .-get_script_obj_nontrivial2
	.type	get_script_obj_nest1, @function
get_script_obj_nest1:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.43(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	get_script_obj_nest1, .-get_script_obj_nest1
	.type	get_script_err_obj_no_key, @function
get_script_err_obj_no_key:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.39(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	get_script_err_obj_no_key, .-get_script_err_obj_no_key
	.type	get_script_err_obj_multi_key, @function
get_script_err_obj_multi_key:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.35(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	get_script_err_obj_multi_key, .-get_script_err_obj_multi_key
	.type	get_script_err_obj_no_value, @function
get_script_err_obj_no_value:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.31(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	get_script_err_obj_no_value, .-get_script_err_obj_no_value
	.type	get_script_err_utf8, @function
get_script_err_utf8:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.27(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	get_script_err_utf8, .-get_script_err_utf8
	.type	get_script_utf8_2, @function
get_script_utf8_2:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.23(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	get_script_utf8_2, .-get_script_utf8_2
	.type	get_script_utf8_3, @function
get_script_utf8_3:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.19(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	get_script_utf8_3, .-get_script_utf8_3
	.type	get_script_utf8_4, @function
get_script_utf8_4:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.15(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	get_script_utf8_4, .-get_script_utf8_4
	.type	get_script_ijson_int, @function
get_script_ijson_int:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.11(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	get_script_ijson_int, .-get_script_ijson_int
	.type	get_script_multi_item, @function
get_script_multi_item:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.7(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	get_script_multi_item, .-get_script_multi_item
	.type	get_script_seq, @function
get_script_seq:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	script_info.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	get_script_seq, .-get_script_seq
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	scripts, @object
	.size	scripts, 400
scripts:
	.quad	get_script_null
	.quad	get_script_obj_empty
	.quad	get_script_array_empty
	.quad	get_script_bool_false
	.quad	get_script_bool_true
	.quad	get_script_u64_0
	.quad	get_script_u64_1
	.quad	get_script_u64_10
	.quad	get_script_u64_12345
	.quad	get_script_u64_18446744073709551615
	.quad	get_script_i64_0
	.quad	get_script_i64_1
	.quad	get_script_i64_2
	.quad	get_script_i64_10
	.quad	get_script_i64_12345
	.quad	get_script_i64_9223372036854775807
	.quad	get_script_i64_m1
	.quad	get_script_i64_m2
	.quad	get_script_i64_m10
	.quad	get_script_i64_m12345
	.quad	get_script_i64_m9223372036854775807
	.quad	get_script_i64_m9223372036854775808
	.quad	get_script_str_empty
	.quad	get_script_str_a
	.quad	get_script_str_abc
	.quad	get_script_str_quote
	.quad	get_script_str_quote2
	.quad	get_script_str_escape
	.quad	get_script_str_len
	.quad	get_script_str_len0
	.quad	get_script_str_len_nul
	.quad	get_script_hex_data0
	.quad	get_script_hex_data
	.quad	get_script_array_nest1
	.quad	get_script_array_nest2
	.quad	get_script_array_nest3
	.quad	get_script_array_nest4
	.quad	get_script_obj_nontrivial1
	.quad	get_script_obj_nontrivial2
	.quad	get_script_obj_nest1
	.quad	get_script_err_obj_no_key
	.quad	get_script_err_obj_multi_key
	.quad	get_script_err_obj_no_value
	.quad	get_script_err_utf8
	.quad	get_script_utf8_2
	.quad	get_script_utf8_3
	.quad	get_script_utf8_4
	.quad	get_script_ijson_int
	.quad	get_script_multi_item
	.quad	get_script_seq
	.section	.rodata
.LC2:
	.string	"running script '%s' (%s)"
.LC3:
	.string	"helper_ensure(&h)"
.LC4:
	.string	"asserted"
.LC5:
	.string	"ossl_json_in_error(&h.j)"
.LC6:
	.string	"unknown opcode"
.LC7:
	.string	"ossl_json_flush(&h.j)"
	.align 8
.LC8:
	.string	"BIO_get_mem_ptr(h.mem_bio, &bufp)"
.LC9:
	.string	"info->expected_output"
.LC10:
	.string	"bufp->data"
.LC11:
	.string	"script '%s' failed"
	.text
	.type	run_script, @function
run_script:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -280(%rbp)
	movl	$0, -20(%rbp)
	movl	$-1, -24(%rbp)
	movq	-280(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	leaq	-256(%rbp), %rdx
	movl	$0, %eax
	movl	$13, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	$0, -264(%rbp)
	movq	-280(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$552, %esi
	movl	$0, %eax
	call	test_info@PLT
.L132:
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	cmpq	$9, %rax
	je	.L111
	cmpq	$9, %rax
	ja	.L112
	cmpq	$8, %rax
	je	.L113
	cmpq	$8, %rax
	ja	.L112
	cmpq	$7, %rax
	je	.L114
	cmpq	$7, %rax
	ja	.L112
	cmpq	$5, %rax
	je	.L115
	cmpq	$5, %rax
	ja	.L112
	cmpq	$4, %rax
	je	.L116
	cmpq	$4, %rax
	ja	.L112
	cmpq	$3, %rax
	je	.L117
	cmpq	$3, %rax
	ja	.L112
	cmpq	$2, %rax
	je	.L118
	cmpq	$2, %rax
	ja	.L112
	testq	%rax, %rax
	je	.L142
	cmpq	$1, %rax
	je	.L120
	jmp	.L112
.L111:
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movl	%eax, %edx
	leaq	-256(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	helper_set_flags
	jmp	.L122
.L120:
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	helper_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$571, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L143
	leaq	-256(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L122
.L117:
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	helper_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$581, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L144
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	leaq	-256(%rbp), %rax
	movq	-88(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L122
.L116:
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	helper_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$591, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L145
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L122
.L115:
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	helper_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$601, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L146
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L122
.L118:
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	helper_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$611, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L147
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-144(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L122
.L114:
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	helper_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$623, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L148
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	leaq	-256(%rbp), %rax
	movq	-48(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L122
.L113:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	helper_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$633, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -144(%rbp)
	movq	%rbx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -128(%rbp)
	movq	%rbx, -120(%rbp)
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movl	%eax, -24(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_in_error@PLT
	movl	%eax, %esi
	movl	-24(%rbp), %edi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$637, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L150
	jmp	.L124
.L112:
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$645, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	jmp	.L124
.L150:
	nop
.L122:
	jmp	.L132
.L142:
	nop
.L121:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	helper_ensure
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$650, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L151
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_flush@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$653, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L152
	cmpl	$0, -24(%rbp)
	jns	.L135
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_json_in_error@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$657, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L153
.L135:
	movq	-160(%rbp), %rax
	leaq	-264(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$660, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L154
	movq	-280(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$-1, %rax
	jne	.L137
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	jmp	.L138
.L137:
	movq	-280(%rbp), %rax
	movq	40(%rax), %rax
.L138:
	movq	-280(%rbp), %rdx
	movq	32(%rdx), %rsi
	movq	-264(%rbp), %rdx
	movq	(%rdx), %r9
	movq	-264(%rbp), %rdx
	movq	8(%rdx), %r8
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	pushq	%rax
	pushq	%rsi
	movl	$663, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L155
	movl	$1, -20(%rbp)
	jmp	.L124
.L143:
	nop
	jmp	.L124
.L144:
	nop
	jmp	.L124
.L145:
	nop
	jmp	.L124
.L146:
	nop
	jmp	.L124
.L147:
	nop
	jmp	.L124
.L148:
	nop
	jmp	.L124
.L149:
	nop
	jmp	.L124
.L151:
	nop
	jmp	.L124
.L152:
	nop
	jmp	.L124
.L153:
	nop
	jmp	.L124
.L154:
	nop
	jmp	.L124
.L155:
	nop
.L124:
	cmpl	$0, -20(%rbp)
	jne	.L140
	movq	-280(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$673, %esi
	movl	$0, %eax
	call	test_error@PLT
.L140:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	helper_cleanup
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	run_script, .-run_script
	.section	.rodata
.LC12:
	.string	"run_script(scripts[i]())"
	.text
	.type	test_json_enc, @function
test_json_enc:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L157
.L159:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	scripts(%rip), %rax
	movq	(%rdx,%rax), %rax
	call	*%rax
	movq	%rax, %rdi
	call	run_script
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$685, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L158
	movl	$0, -4(%rbp)
.L158:
	addq	$1, -16(%rbp)
.L157:
	cmpq	$49, -16(%rbp)
	jbe	.L159
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	test_json_enc, .-test_json_enc
	.section	.rodata
.LC13:
	.string	"test_json_enc"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_json_enc(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC14:
	.string	"null"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.199, @object
	.size	script_info.199, 48
script_info.199:
	.quad	script_name.196
	.quad	script_title.197
	.quad	script_words.198
	.quad	5
	.quad	.LC14
	.quad	4
	.section	.data.rel.ro,"aw"
	.align 32
	.type	script_words.198, @object
	.size	script_words.198, 200
script_words.198:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.197, @object
	.size	script_title.197, 26
script_title.197:
	.string	"\"serialize a single null\""
	.type	script_name.196, @object
	.size	script_name.196, 5
script_name.196:
	.string	"null"
.LC15:
	.string	"{}"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.195, @object
	.size	script_info.195, 48
script_info.195:
	.quad	script_name.192
	.quad	script_title.193
	.quad	script_words.194
	.quad	7
	.quad	.LC15
	.quad	2
	.section	.data.rel.ro
	.align 32
	.type	script_words.194, @object
	.size	script_words.194, 280
script_words.194:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.193, @object
	.size	script_title.193, 28
script_title.193:
	.string	"\"serialize an empty object\""
	.align 8
	.type	script_name.192, @object
	.size	script_name.192, 10
script_name.192:
	.string	"obj_empty"
.LC16:
	.string	"[]"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.191, @object
	.size	script_info.191, 48
script_info.191:
	.quad	script_name.188
	.quad	script_title.189
	.quad	script_words.190
	.quad	7
	.quad	.LC16
	.quad	2
	.section	.data.rel.ro
	.align 32
	.type	script_words.190, @object
	.size	script_words.190, 280
script_words.190:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.189, @object
	.size	script_title.189, 27
script_title.189:
	.string	"\"serialize an empty array\""
	.align 8
	.type	script_name.188, @object
	.size	script_name.188, 12
script_name.188:
	.string	"array_empty"
.LC17:
	.string	"false"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.187, @object
	.size	script_info.187, 48
script_info.187:
	.quad	script_name.184
	.quad	script_title.185
	.quad	script_words.186
	.quad	6
	.quad	.LC17
	.quad	5
	.section	.data.rel.ro
	.align 32
	.type	script_words.186, @object
	.size	script_words.186, 240
script_words.186:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	3
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_bool
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.185, @object
	.size	script_title.185, 18
script_title.185:
	.string	"\"serialize false\""
	.align 8
	.type	script_name.184, @object
	.size	script_name.184, 11
script_name.184:
	.string	"bool_false"
.LC18:
	.string	"true"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.183, @object
	.size	script_info.183, 48
script_info.183:
	.quad	script_name.180
	.quad	script_title.181
	.quad	script_words.182
	.quad	6
	.quad	.LC18
	.quad	4
	.section	.data.rel.ro
	.align 32
	.type	script_words.182, @object
	.size	script_words.182, 240
script_words.182:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	3
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_bool
	.quad	0
	.quad	0
	.quad	1
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.181, @object
	.size	script_title.181, 17
script_title.181:
	.string	"\"serialize true\""
	.align 8
	.type	script_name.180, @object
	.size	script_name.180, 10
script_name.180:
	.string	"bool_true"
.LC19:
	.string	"0"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.179, @object
	.size	script_info.179, 48
script_info.179:
	.quad	script_name.176
	.quad	script_title.177
	.quad	script_words.178
	.quad	6
	.quad	.LC19
	.quad	1
	.section	.data.rel.ro
	.align 32
	.type	script_words.178, @object
	.size	script_words.178, 240
script_words.178:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.177, @object
	.size	script_title.177, 19
script_title.177:
	.string	"\"serialize u64(0)\""
	.type	script_name.176, @object
	.size	script_name.176, 6
script_name.176:
	.string	"u64_0"
.LC20:
	.string	"1"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.175, @object
	.size	script_info.175, 48
script_info.175:
	.quad	script_name.172
	.quad	script_title.173
	.quad	script_words.174
	.quad	6
	.quad	.LC20
	.quad	1
	.section	.data.rel.ro
	.align 32
	.type	script_words.174, @object
	.size	script_words.174, 240
script_words.174:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.173, @object
	.size	script_title.173, 19
script_title.173:
	.string	"\"serialize u64(1)\""
	.type	script_name.172, @object
	.size	script_name.172, 6
script_name.172:
	.string	"u64_1"
.LC21:
	.string	"10"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.171, @object
	.size	script_info.171, 48
script_info.171:
	.quad	script_name.168
	.quad	script_title.169
	.quad	script_words.170
	.quad	6
	.quad	.LC21
	.quad	2
	.section	.data.rel.ro
	.align 32
	.type	script_words.170, @object
	.size	script_words.170, 240
script_words.170:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	10
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.169, @object
	.size	script_title.169, 20
script_title.169:
	.string	"\"serialize u64(10)\""
	.type	script_name.168, @object
	.size	script_name.168, 7
script_name.168:
	.string	"u64_10"
.LC22:
	.string	"12345"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.167, @object
	.size	script_info.167, 48
script_info.167:
	.quad	script_name.164
	.quad	script_title.165
	.quad	script_words.166
	.quad	6
	.quad	.LC22
	.quad	5
	.section	.data.rel.ro
	.align 32
	.type	script_words.166, @object
	.size	script_words.166, 240
script_words.166:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	12345
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.165, @object
	.size	script_title.165, 23
script_title.165:
	.string	"\"serialize u64(12345)\""
	.align 8
	.type	script_name.164, @object
	.size	script_name.164, 10
script_name.164:
	.string	"u64_12345"
.LC23:
	.string	"18446744073709551615"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.163, @object
	.size	script_info.163, 48
script_info.163:
	.quad	script_name.160
	.quad	script_title.161
	.quad	script_words.162
	.quad	6
	.quad	.LC23
	.quad	20
	.section	.data.rel.ro
	.align 32
	.type	script_words.162, @object
	.size	script_words.162, 240
script_words.162:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	-1
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.161, @object
	.size	script_title.161, 38
script_title.161:
	.string	"\"serialize u64(18446744073709551615)\""
	.align 16
	.type	script_name.160, @object
	.size	script_name.160, 25
script_name.160:
	.string	"u64_18446744073709551615"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.159, @object
	.size	script_info.159, 48
script_info.159:
	.quad	script_name.156
	.quad	script_title.157
	.quad	script_words.158
	.quad	6
	.quad	.LC19
	.quad	1
	.section	.data.rel.ro
	.align 32
	.type	script_words.158, @object
	.size	script_words.158, 240
script_words.158:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.157, @object
	.size	script_title.157, 19
script_title.157:
	.string	"\"serialize i64(0)\""
	.type	script_name.156, @object
	.size	script_name.156, 6
script_name.156:
	.string	"i64_0"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.155, @object
	.size	script_info.155, 48
script_info.155:
	.quad	script_name.152
	.quad	script_title.153
	.quad	script_words.154
	.quad	6
	.quad	.LC20
	.quad	1
	.section	.data.rel.ro
	.align 32
	.type	script_words.154, @object
	.size	script_words.154, 240
script_words.154:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	1
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.153, @object
	.size	script_title.153, 19
script_title.153:
	.string	"\"serialize i64(1)\""
	.type	script_name.152, @object
	.size	script_name.152, 6
script_name.152:
	.string	"i64_1"
.LC24:
	.string	"2"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.151, @object
	.size	script_info.151, 48
script_info.151:
	.quad	script_name.148
	.quad	script_title.149
	.quad	script_words.150
	.quad	6
	.quad	.LC24
	.quad	1
	.section	.data.rel.ro
	.align 32
	.type	script_words.150, @object
	.size	script_words.150, 240
script_words.150:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	2
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.149, @object
	.size	script_title.149, 19
script_title.149:
	.string	"\"serialize i64(2)\""
	.type	script_name.148, @object
	.size	script_name.148, 6
script_name.148:
	.string	"i64_2"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.147, @object
	.size	script_info.147, 48
script_info.147:
	.quad	script_name.144
	.quad	script_title.145
	.quad	script_words.146
	.quad	6
	.quad	.LC21
	.quad	2
	.section	.data.rel.ro
	.align 32
	.type	script_words.146, @object
	.size	script_words.146, 240
script_words.146:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	10
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.145, @object
	.size	script_title.145, 20
script_title.145:
	.string	"\"serialize i64(10)\""
	.type	script_name.144, @object
	.size	script_name.144, 7
script_name.144:
	.string	"i64_10"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.143, @object
	.size	script_info.143, 48
script_info.143:
	.quad	script_name.140
	.quad	script_title.141
	.quad	script_words.142
	.quad	6
	.quad	.LC22
	.quad	5
	.section	.data.rel.ro
	.align 32
	.type	script_words.142, @object
	.size	script_words.142, 240
script_words.142:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	12345
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.141, @object
	.size	script_title.141, 23
script_title.141:
	.string	"\"serialize i64(12345)\""
	.align 8
	.type	script_name.140, @object
	.size	script_name.140, 10
script_name.140:
	.string	"i64_12345"
.LC25:
	.string	"9223372036854775807"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.139, @object
	.size	script_info.139, 48
script_info.139:
	.quad	script_name.136
	.quad	script_title.137
	.quad	script_words.138
	.quad	6
	.quad	.LC25
	.quad	19
	.section	.data.rel.ro
	.align 32
	.type	script_words.138, @object
	.size	script_words.138, 240
script_words.138:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	9223372036854775807
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.137, @object
	.size	script_title.137, 37
script_title.137:
	.string	"\"serialize i64(9223372036854775807)\""
	.align 16
	.type	script_name.136, @object
	.size	script_name.136, 24
script_name.136:
	.string	"i64_9223372036854775807"
.LC26:
	.string	"-1"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.135, @object
	.size	script_info.135, 48
script_info.135:
	.quad	script_name.132
	.quad	script_title.133
	.quad	script_words.134
	.quad	6
	.quad	.LC26
	.quad	2
	.section	.data.rel.ro
	.align 32
	.type	script_words.134, @object
	.size	script_words.134, 240
script_words.134:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	-1
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.133, @object
	.size	script_title.133, 20
script_title.133:
	.string	"\"serialize i64(-1)\""
	.type	script_name.132, @object
	.size	script_name.132, 7
script_name.132:
	.string	"i64_m1"
.LC27:
	.string	"-2"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.131, @object
	.size	script_info.131, 48
script_info.131:
	.quad	script_name.128
	.quad	script_title.129
	.quad	script_words.130
	.quad	6
	.quad	.LC27
	.quad	2
	.section	.data.rel.ro
	.align 32
	.type	script_words.130, @object
	.size	script_words.130, 240
script_words.130:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	-2
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.129, @object
	.size	script_title.129, 20
script_title.129:
	.string	"\"serialize i64(-2)\""
	.type	script_name.128, @object
	.size	script_name.128, 7
script_name.128:
	.string	"i64_m2"
.LC28:
	.string	"-10"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.127, @object
	.size	script_info.127, 48
script_info.127:
	.quad	script_name.124
	.quad	script_title.125
	.quad	script_words.126
	.quad	6
	.quad	.LC28
	.quad	3
	.section	.data.rel.ro
	.align 32
	.type	script_words.126, @object
	.size	script_words.126, 240
script_words.126:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	-10
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.125, @object
	.size	script_title.125, 21
script_title.125:
	.string	"\"serialize i64(-10)\""
	.align 8
	.type	script_name.124, @object
	.size	script_name.124, 8
script_name.124:
	.string	"i64_m10"
.LC29:
	.string	"-12345"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.123, @object
	.size	script_info.123, 48
script_info.123:
	.quad	script_name.120
	.quad	script_title.121
	.quad	script_words.122
	.quad	6
	.quad	.LC29
	.quad	6
	.section	.data.rel.ro
	.align 32
	.type	script_words.122, @object
	.size	script_words.122, 240
script_words.122:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	-12345
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.121, @object
	.size	script_title.121, 24
script_title.121:
	.string	"\"serialize i64(-12345)\""
	.align 8
	.type	script_name.120, @object
	.size	script_name.120, 11
script_name.120:
	.string	"i64_m12345"
.LC30:
	.string	"-9223372036854775807"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.119, @object
	.size	script_info.119, 48
script_info.119:
	.quad	script_name.116
	.quad	script_title.117
	.quad	script_words.118
	.quad	6
	.quad	.LC30
	.quad	20
	.section	.data.rel.ro
	.align 32
	.type	script_words.118, @object
	.size	script_words.118, 240
script_words.118:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	-9223372036854775807
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.117, @object
	.size	script_title.117, 38
script_title.117:
	.string	"\"serialize i64(-9223372036854775807)\""
	.align 16
	.type	script_name.116, @object
	.size	script_name.116, 25
script_name.116:
	.string	"i64_m9223372036854775807"
.LC31:
	.string	"-9223372036854775808"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.115, @object
	.size	script_info.115, 48
script_info.115:
	.quad	script_name.112
	.quad	script_title.113
	.quad	script_words.114
	.quad	6
	.quad	.LC31
	.quad	20
	.section	.data.rel.ro
	.align 32
	.type	script_words.114, @object
	.size	script_words.114, 240
script_words.114:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	-9223372036854775808
	.zero	16
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.113, @object
	.size	script_title.113, 38
script_title.113:
	.string	"\"serialize i64(-9223372036854775808)\""
	.align 16
	.type	script_name.112, @object
	.size	script_name.112, 25
script_name.112:
	.string	"i64_m9223372036854775808"
.LC32:
	.string	"\"\""
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.111, @object
	.size	script_info.111, 48
script_info.111:
	.quad	script_name.108
	.quad	script_title.109
	.quad	script_words.110
	.quad	6
	.quad	.LC32
	.quad	2
	.section	.rodata
.LC33:
	.string	""
	.section	.data.rel.ro
	.align 32
	.type	script_words.110, @object
	.size	script_words.110, 240
script_words.110:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str
	.quad	.LC33
	.zero	32
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.109, @object
	.size	script_title.109, 17
script_title.109:
	.string	"\"serialize \\\"\\\"\""
	.align 8
	.type	script_name.108, @object
	.size	script_name.108, 10
script_name.108:
	.string	"str_empty"
.LC34:
	.string	"\"a\""
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.107, @object
	.size	script_info.107, 48
script_info.107:
	.quad	script_name.104
	.quad	script_title.105
	.quad	script_words.106
	.quad	6
	.quad	.LC34
	.quad	3
	.section	.rodata
.LC35:
	.string	"a"
	.section	.data.rel.ro
	.align 32
	.type	script_words.106, @object
	.size	script_words.106, 240
script_words.106:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str
	.quad	.LC35
	.zero	32
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.105, @object
	.size	script_title.105, 18
script_title.105:
	.string	"\"serialize \\\"a\\\"\""
	.type	script_name.104, @object
	.size	script_name.104, 6
script_name.104:
	.string	"str_a"
.LC36:
	.string	"\"abc\""
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.103, @object
	.size	script_info.103, 48
script_info.103:
	.quad	script_name.100
	.quad	script_title.101
	.quad	script_words.102
	.quad	6
	.quad	.LC36
	.quad	5
	.section	.rodata
.LC37:
	.string	"abc"
	.section	.data.rel.ro
	.align 32
	.type	script_words.102, @object
	.size	script_words.102, 240
script_words.102:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str
	.quad	.LC37
	.zero	32
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.101, @object
	.size	script_title.101, 20
script_title.101:
	.string	"\"serialize \\\"abc\\\"\""
	.align 8
	.type	script_name.100, @object
	.size	script_name.100, 8
script_name.100:
	.string	"str_abc"
.LC38:
	.string	"\"abc\\\"def\""
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.99, @object
	.size	script_info.99, 48
script_info.99:
	.quad	script_name.96
	.quad	script_title.97
	.quad	script_words.98
	.quad	6
	.quad	.LC38
	.quad	10
	.section	.rodata
.LC39:
	.string	"abc\"def"
	.section	.data.rel.ro
	.align 32
	.type	script_words.98, @object
	.size	script_words.98, 240
script_words.98:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str
	.quad	.LC39
	.zero	32
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.97, @object
	.size	script_title.97, 23
script_title.97:
	.string	"\"serialize with quote\""
	.align 8
	.type	script_name.96, @object
	.size	script_name.96, 10
script_name.96:
	.string	"str_quote"
.LC40:
	.string	"\"abc\\\"\\\"def\""
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.95, @object
	.size	script_info.95, 48
script_info.95:
	.quad	script_name.92
	.quad	script_title.93
	.quad	script_words.94
	.quad	6
	.quad	.LC40
	.quad	12
	.section	.rodata
.LC41:
	.string	"abc\"\"def"
	.section	.data.rel.ro
	.align 32
	.type	script_words.94, @object
	.size	script_words.94, 240
script_words.94:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str
	.quad	.LC41
	.zero	32
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.93, @object
	.size	script_title.93, 23
script_title.93:
	.string	"\"serialize with quote\""
	.align 8
	.type	script_name.92, @object
	.size	script_name.92, 11
script_name.92:
	.string	"str_quote2"
	.align 8
.LC42:
	.string	"\"abc\\\"\\\"de'f\\r\\n\\t\\b\\f\\\\\\u0001\\u000b\\u007f\\\\\""
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.91, @object
	.size	script_info.91, 48
script_info.91:
	.quad	script_name.88
	.quad	script_title.89
	.quad	script_words.90
	.quad	6
	.quad	.LC42
	.quad	45
	.section	.rodata
.LC43:
	.base64	"YWJjIiJkZSdmDQoJCAxcAQt/XAA="
	.section	.data.rel.ro
	.align 32
	.type	script_words.90, @object
	.size	script_words.90, 240
script_words.90:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str
	.quad	.LC43
	.zero	32
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.89, @object
	.size	script_title.89, 33
script_title.89:
	.string	"\"serialize with various escapes\""
	.align 8
	.type	script_name.88, @object
	.size	script_name.88, 11
script_name.88:
	.string	"str_escape"
.LC44:
	.string	"\"abcdef\""
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.87, @object
	.size	script_info.87, 48
script_info.87:
	.quad	script_name.84
	.quad	script_title.85
	.quad	script_words.86
	.quad	7
	.quad	.LC44
	.quad	8
	.section	.rodata
.LC45:
	.string	"abcdef"
	.section	.data.rel.ro
	.align 32
	.type	script_words.86, @object
	.size	script_words.86, 280
script_words.86:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	7
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str_len
	.quad	.LC45
	.zero	32
	.quad	0
	.quad	6
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.85, @object
	.size	script_title.85, 26
script_title.85:
	.string	"\"length-signalled string\""
	.align 8
	.type	script_name.84, @object
	.size	script_name.84, 8
script_name.84:
	.string	"str_len"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.83, @object
	.size	script_info.83, 48
script_info.83:
	.quad	script_name.80
	.quad	script_title.81
	.quad	script_words.82
	.quad	7
	.quad	.LC32
	.quad	2
	.section	.data.rel.ro
	.align 32
	.type	script_words.82, @object
	.size	script_words.82, 280
script_words.82:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	7
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str_len
	.quad	.LC33
	.zero	32
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.81, @object
	.size	script_title.81, 28
script_title.81:
	.string	"\"0-length-signalled string\""
	.align 8
	.type	script_name.80, @object
	.size	script_name.80, 9
script_name.80:
	.string	"str_len0"
.LC46:
	.string	"\"x\\u0000y\""
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.79, @object
	.size	script_info.79, 48
script_info.79:
	.quad	script_name.76
	.quad	script_title.77
	.quad	script_words.78
	.quad	7
	.quad	.LC46
	.quad	10
	.section	.rodata
.LC47:
	.string	"x"
	.string	"y"
	.section	.data.rel.ro
	.align 32
	.type	script_words.78, @object
	.size	script_words.78, 280
script_words.78:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	7
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str_len
	.quad	.LC47
	.zero	32
	.quad	0
	.quad	3
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.77, @object
	.size	script_title.77, 18
script_title.77:
	.string	"\"string with NUL\""
	.align 8
	.type	script_name.76, @object
	.size	script_name.76, 12
script_name.76:
	.string	"str_len_nul"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.75, @object
	.size	script_info.75, 48
script_info.75:
	.quad	script_name.72
	.quad	script_title.73
	.quad	script_words.74
	.quad	7
	.quad	.LC32
	.quad	2
	.section	.data.rel.ro
	.align 32
	.type	script_words.74, @object
	.size	script_words.74, 280
script_words.74:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	7
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str_hex
	.quad	.LC33
	.zero	32
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.73, @object
	.size	script_title.73, 23
script_title.73:
	.string	"\"zero-length hex data\""
	.align 8
	.type	script_name.72, @object
	.size	script_name.72, 10
script_name.72:
	.string	"hex_data0"
.LC48:
	.string	"\"00015afbff\""
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.71, @object
	.size	script_info.71, 48
script_info.71:
	.quad	script_name.68
	.quad	script_title.69
	.quad	script_words.70
	.quad	7
	.quad	.LC48
	.quad	12
	.section	.rodata
.LC49:
	.base64	"AAFa+/8A"
	.section	.data.rel.ro
	.align 32
	.type	script_words.70, @object
	.size	script_words.70, 280
script_words.70:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	7
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str_hex
	.quad	.LC49
	.zero	32
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 8
	.type	script_title.69, @object
	.size	script_title.69, 11
script_title.69:
	.string	"\"hex data\""
	.align 8
	.type	script_name.68, @object
	.size	script_name.68, 9
script_name.68:
	.string	"hex_data"
.LC50:
	.string	"[[]]"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.67, @object
	.size	script_info.67, 48
script_info.67:
	.quad	script_name.64
	.quad	script_title.65
	.quad	script_words.66
	.quad	11
	.quad	.LC50
	.quad	4
	.section	.data.rel.ro
	.align 32
	.type	script_words.66, @object
	.size	script_words.66, 440
script_words.66:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.65, @object
	.size	script_title.65, 32
script_title.65:
	.string	"\"serialize nested empty arrays\""
	.align 8
	.type	script_name.64, @object
	.size	script_name.64, 12
script_name.64:
	.string	"array_nest1"
.LC51:
	.string	"[[[]]]"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.63, @object
	.size	script_info.63, 48
script_info.63:
	.quad	script_name.60
	.quad	script_title.61
	.quad	script_words.62
	.quad	15
	.quad	.LC51
	.quad	6
	.section	.data.rel.ro
	.align 32
	.type	script_words.62, @object
	.size	script_words.62, 600
script_words.62:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.61, @object
	.size	script_title.61, 32
script_title.61:
	.string	"\"serialize nested empty arrays\""
	.align 8
	.type	script_name.60, @object
	.size	script_name.60, 12
script_name.60:
	.string	"array_nest2"
.LC52:
	.string	"[[[],[],[]],[]]"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.59, @object
	.size	script_info.59, 48
script_info.59:
	.quad	script_name.56
	.quad	script_title.57
	.quad	script_words.58
	.quad	27
	.quad	.LC52
	.quad	-1
	.section	.data.rel.ro
	.align 32
	.type	script_words.58, @object
	.size	script_words.58, 1080
script_words.58:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.57, @object
	.size	script_title.57, 32
script_title.57:
	.string	"\"serialize nested empty arrays\""
	.align 8
	.type	script_name.56, @object
	.size	script_name.56, 12
script_name.56:
	.string	"array_nest3"
	.align 8
.LC53:
	.string	"[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]],null]"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.55, @object
	.size	script_info.55, 48
script_info.55:
	.quad	script_name.52
	.quad	script_title.53
	.quad	script_words.54
	.quad	85
	.quad	.LC53
	.quad	-1
	.section	.data.rel.ro
	.align 32
	.type	script_words.54, @object
	.size	script_words.54, 3400
script_words.54:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.53, @object
	.size	script_title.53, 21
script_title.53:
	.string	"\"deep nested arrays\""
	.align 8
	.type	script_name.52, @object
	.size	script_name.52, 12
script_name.52:
	.string	"array_nest4"
.LC54:
	.string	"{\"\":null}"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.51, @object
	.size	script_info.51, 48
script_info.51:
	.quad	script_name.48
	.quad	script_title.49
	.quad	script_words.50
	.quad	12
	.quad	.LC54
	.quad	-1
	.section	.data.rel.ro
	.align 32
	.type	script_words.50, @object
	.size	script_words.50, 480
script_words.50:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_begin
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC33
	.zero	32
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.49, @object
	.size	script_title.49, 30
script_title.49:
	.string	"\"serialize nontrivial object\""
	.align 16
	.type	script_name.48, @object
	.size	script_name.48, 16
script_name.48:
	.string	"obj_nontrivial1"
.LC55:
	.string	"{\"\":null,\"x\":null}"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.47, @object
	.size	script_info.47, 48
script_info.47:
	.quad	script_name.44
	.quad	script_title.45
	.quad	script_words.46
	.quad	17
	.quad	.LC55
	.quad	-1
	.section	.rodata
.LC56:
	.string	"x"
	.section	.data.rel.ro
	.align 32
	.type	script_words.46, @object
	.size	script_words.46, 680
script_words.46:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_begin
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC33
	.zero	32
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC56
	.zero	32
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.45, @object
	.size	script_title.45, 30
script_title.45:
	.string	"\"serialize nontrivial object\""
	.align 16
	.type	script_name.44, @object
	.size	script_name.44, 16
script_name.44:
	.string	"obj_nontrivial2"
	.align 8
.LC57:
	.string	"{\"\":{\"x\":42},\"x\":[42,101],\"y\":null,\"z\":{\"z0\":-1,\"z1\":-2}}"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.43, @object
	.size	script_info.43, 48
script_info.43:
	.quad	script_name.40
	.quad	script_title.41
	.quad	script_words.42
	.quad	57
	.quad	.LC57
	.quad	-1
	.section	.rodata
.LC58:
	.string	"y"
.LC59:
	.string	"z"
.LC60:
	.string	"z0"
.LC61:
	.string	"z1"
	.section	.data.rel.ro
	.align 32
	.type	script_words.42, @object
	.size	script_words.42, 2280
script_words.42:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_begin
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC33
	.zero	32
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_begin
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC56
	.zero	32
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	42
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_end
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC56
	.zero	32
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	42
	.zero	24
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	101
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC58
	.zero	32
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC59
	.zero	32
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_begin
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC60
	.zero	32
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	-1
	.zero	16
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC61
	.zero	32
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	-2
	.zero	16
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.41, @object
	.size	script_title.41, 27
script_title.41:
	.string	"\"serialize nested objects\""
	.align 8
	.type	script_name.40, @object
	.size	script_name.40, 10
script_name.40:
	.string	"obj_nest1"
.LC62:
	.string	"{"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.39, @object
	.size	script_info.39, 48
script_info.39:
	.quad	script_name.36
	.quad	script_title.37
	.quad	script_words.38
	.quad	15
	.quad	.LC62
	.quad	-1
	.section	.data.rel.ro
	.align 32
	.type	script_words.38, @object
	.size	script_words.38, 600
script_words.38:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_begin
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_end
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.37, @object
	.size	script_title.37, 38
script_title.37:
	.string	"\"error test: object item without key\""
	.align 8
	.type	script_name.36, @object
	.size	script_name.36, 15
script_name.36:
	.string	"err_obj_no_key"
.LC63:
	.string	"{\"x\":"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.35, @object
	.size	script_info.35, 48
script_info.35:
	.quad	script_name.32
	.quad	script_title.33
	.quad	script_words.34
	.quad	19
	.quad	.LC63
	.quad	-1
	.section	.data.rel.ro
	.align 32
	.type	script_words.34, @object
	.size	script_words.34, 760
script_words.34:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_begin
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC56
	.zero	32
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC58
	.zero	32
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.33, @object
	.size	script_title.33, 44
script_title.33:
	.string	"\"error test: object item with repeated key\""
	.align 16
	.type	script_name.32, @object
	.size	script_name.32, 18
script_name.32:
	.string	"err_obj_multi_key"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.31, @object
	.size	script_info.31, 48
script_info.31:
	.quad	script_name.28
	.quad	script_title.29
	.quad	script_words.30
	.quad	14
	.quad	.LC63
	.quad	-1
	.section	.data.rel.ro
	.align 32
	.type	script_words.30, @object
	.size	script_words.30, 560
script_words.30:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_begin
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC56
	.zero	32
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_end
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.29, @object
	.size	script_title.29, 40
script_title.29:
	.string	"\"error test: object item with no value\""
	.align 16
	.type	script_name.28, @object
	.size	script_name.28, 17
script_name.28:
	.string	"err_obj_no_value"
.LC64:
	.string	"\"\\u0080\""
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.27, @object
	.size	script_info.27, 48
script_info.27:
	.quad	script_name.24
	.quad	script_title.25
	.quad	script_words.26
	.quad	8
	.quad	.LC64
	.quad	-1
	.section	.rodata
.LC65:
	.string	"\200"
	.section	.data.rel.ro
	.align 32
	.type	script_words.26, @object
	.size	script_words.26, 320
script_words.26:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str
	.quad	.LC65
	.zero	32
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.25, @object
	.size	script_title.25, 41
script_title.25:
	.string	"\"error test: only basic ASCII supported\""
	.align 8
	.type	script_name.24, @object
	.size	script_name.24, 9
script_name.24:
	.string	"err_utf8"
.LC66:
	.base64	"Imxvdz3CgCwgaGlnaD3fvyIA"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.23, @object
	.size	script_info.23, 48
script_info.23:
	.quad	script_name.20
	.quad	script_title.21
	.quad	script_words.22
	.quad	8
	.quad	.LC66
	.quad	-1
	.section	.rodata
.LC67:
	.base64	"bG93PcKALCBoaWdoPd+/AA=="
	.section	.data.rel.ro
	.align 32
	.type	script_words.22, @object
	.size	script_words.22, 320
script_words.22:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str
	.quad	.LC67
	.zero	32
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.21, @object
	.size	script_title.21, 36
script_title.21:
	.string	"\"test: valid UTF-8 2byte supported\""
	.type	script_name.20, @object
	.size	script_name.20, 7
script_name.20:
	.string	"utf8_2"
.LC68:
	.base64	"Imxvdz3goIAsIGhpZ2g977+/IgA="
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.19, @object
	.size	script_info.19, 48
script_info.19:
	.quad	script_name.16
	.quad	script_title.17
	.quad	script_words.18
	.quad	8
	.quad	.LC68
	.quad	-1
	.section	.rodata
.LC69:
	.base64	"bG93PeCggCwgaGlnaD3vv78A"
	.section	.data.rel.ro
	.align 32
	.type	script_words.18, @object
	.size	script_words.18, 320
script_words.18:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str
	.quad	.LC69
	.zero	32
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.17, @object
	.size	script_title.17, 36
script_title.17:
	.string	"\"test: valid UTF-8 3byte supported\""
	.type	script_name.16, @object
	.size	script_name.16, 7
script_name.16:
	.string	"utf8_3"
.LC70:
	.base64	"Imxvdz3wkL+/LCBoaWdoPfSPv78iAA=="
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.15, @object
	.size	script_info.15, 48
script_info.15:
	.quad	script_name.12
	.quad	script_title.13
	.quad	script_words.14
	.quad	8
	.quad	.LC70
	.quad	-1
	.section	.rodata
.LC71:
	.base64	"bG93PfCQv78sIGhpZ2g99I+/vwA="
	.section	.data.rel.ro
	.align 32
	.type	script_words.14, @object
	.size	script_words.14, 320
script_words.14:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_str
	.quad	.LC71
	.zero	32
	.quad	0
	.quad	8
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 32
	.type	script_title.13, @object
	.size	script_title.13, 36
script_title.13:
	.string	"\"test: valid UTF-8 4byte supported\""
	.type	script_name.12, @object
	.size	script_name.12, 7
script_name.12:
	.string	"utf8_4"
	.align 8
.LC72:
	.string	"[1,-1,9007199254740991,\"9007199254740992\",-9007199254740991,\"-9007199254740992\"]"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.11, @object
	.size	script_info.11, 48
script_info.11:
	.quad	script_name.8
	.quad	script_title.9
	.quad	script_words.10
	.quad	25
	.quad	.LC72
	.quad	-1
	.section	.data.rel.ro
	.align 32
	.type	script_words.10, @object
	.size	script_words.10, 1000
script_words.10:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	-1
	.zero	16
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	9007199254740991
	.zero	24
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	9007199254740992
	.zero	24
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	-9007199254740991
	.zero	16
	.quad	0
	.quad	5
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_i64
	.quad	0
	.quad	0
	.quad	-9007199254740992
	.zero	16
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.9, @object
	.size	script_title.9, 24
script_title.9:
	.string	"\"I-JSON: large integer\""
	.align 8
	.type	script_name.8, @object
	.size	script_name.8, 10
script_name.8:
	.string	"ijson_int"
.LC73:
	.string	"nullnull[][]"
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.7, @object
	.size	script_info.7, 48
script_info.7:
	.quad	script_name.4
	.quad	script_title.5
	.quad	script_words.6
	.quad	15
	.quad	.LC73
	.quad	-1
	.section	.data.rel.ro
	.align 32
	.type	script_words.6, @object
	.size	script_words.6, 600
script_words.6:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	0
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_array_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	script_title.5, @object
	.size	script_title.5, 27
script_title.5:
	.string	"\"multiple top level items\""
	.align 8
	.type	script_name.4, @object
	.size	script_name.4, 11
script_name.4:
	.string	"multi_item"
	.align 8
.LC74:
	.base64	"Hm51bGwKHm51bGwKHm51bGwKHnsieCI6MSwieSI6e319CgA="
	.section	.data.rel.ro.local
	.align 32
	.type	script_info.3, @object
	.size	script_info.3, 48
script_info.3:
	.quad	script_name.0
	.quad	script_title.1
	.quad	script_words.2
	.quad	26
	.quad	.LC74
	.quad	-1
	.section	.data.rel.ro
	.align 32
	.type	script_words.2, @object
	.size	script_words.2, 1040
script_words.2:
	.quad	0
	.quad	9
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_null
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_begin
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC56
	.zero	32
	.quad	0
	.quad	4
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_u64
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	2
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_key
	.quad	.LC58
	.zero	32
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_begin
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_end
	.quad	0
	.quad	1
	.zero	24
	.quad	0
	.quad	0
	.quad	0
	.long	0
	.long	0
	.quad	ossl_json_object_end
	.quad	0
	.quad	0
	.zero	24
	.section	.rodata
	.align 8
	.type	script_title.1, @object
	.size	script_title.1, 11
script_title.1:
	.string	"\"JSON-SEQ\""
	.type	script_name.0, @object
	.size	script_name.0, 4
script_name.0:
	.string	"seq"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
