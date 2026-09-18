	.file	"constant_time_test.c"
	.text
	.type	constant_time_msb, @function
constant_time_msb:
.LFB6:
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
.LFE6:
	.size	constant_time_msb, .-constant_time_msb
	.type	constant_time_msb_32, @function
constant_time_msb_32:
.LFB7:
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
.LFE7:
	.size	constant_time_msb_32, .-constant_time_msb_32
	.type	constant_time_msb_64, @function
constant_time_msb_64:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$63, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	constant_time_msb_64, .-constant_time_msb_64
	.type	constant_time_msb_s, @function
constant_time_msb_s:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$63, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	constant_time_msb_s, .-constant_time_msb_s
	.type	constant_time_lt, @function
constant_time_lt:
.LFB10:
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
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	xorl	-8(%rbp), %eax
	orl	%edx, %eax
	xorl	-4(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_msb
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	constant_time_lt, .-constant_time_lt
	.type	constant_time_lt_s, @function
constant_time_lt_s:
.LFB11:
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
	xorq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	xorq	-16(%rbp), %rax
	orq	%rdx, %rax
	xorq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_msb_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	constant_time_lt_s, .-constant_time_lt_s
	.type	constant_time_lt_8, @function
constant_time_lt_8:
.LFB12:
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
	call	constant_time_lt
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	constant_time_lt_8, .-constant_time_lt_8
	.type	constant_time_lt_64, @function
constant_time_lt_64:
.LFB13:
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
	xorq	-16(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	xorq	-16(%rbp), %rax
	orq	%rdx, %rax
	xorq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_msb_64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	constant_time_lt_64, .-constant_time_lt_64
	.type	constant_time_ge, @function
constant_time_ge:
.LFB14:
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
	call	constant_time_lt
	notl	%eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	constant_time_ge, .-constant_time_ge
	.type	constant_time_ge_s, @function
constant_time_ge_s:
.LFB15:
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
	call	constant_time_lt_s
	notq	%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	constant_time_ge_s, .-constant_time_ge_s
	.type	constant_time_ge_8, @function
constant_time_ge_8:
.LFB16:
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
	call	constant_time_ge
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	constant_time_ge_8, .-constant_time_ge_8
	.type	constant_time_is_zero, @function
constant_time_is_zero:
.LFB18:
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
.LFE18:
	.size	constant_time_is_zero, .-constant_time_is_zero
	.type	constant_time_is_zero_s, @function
constant_time_is_zero_s:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	notq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	subq	$1, %rax
	andq	%rdx, %rax
	movq	%rax, %rdi
	call	constant_time_msb_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	constant_time_is_zero_s, .-constant_time_is_zero_s
	.type	constant_time_is_zero_8, @function
constant_time_is_zero_8:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	constant_time_is_zero_8, .-constant_time_is_zero_8
	.type	constant_time_is_zero_32, @function
constant_time_is_zero_32:
.LFB21:
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
	call	constant_time_msb_32
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	constant_time_is_zero_32, .-constant_time_is_zero_32
	.type	constant_time_eq, @function
constant_time_eq:
.LFB23:
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
.LFE23:
	.size	constant_time_eq, .-constant_time_eq
	.type	constant_time_eq_s, @function
constant_time_eq_s:
.LFB24:
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
	xorq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_is_zero_s
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	constant_time_eq_s, .-constant_time_eq_s
	.type	constant_time_eq_8, @function
constant_time_eq_8:
.LFB25:
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
.LFE25:
	.size	constant_time_eq_8, .-constant_time_eq_8
	.type	constant_time_eq_int, @function
constant_time_eq_int:
.LFB27:
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
.LFE27:
	.size	constant_time_eq_int, .-constant_time_eq_int
	.type	constant_time_eq_int_8, @function
constant_time_eq_int_8:
.LFB28:
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
	call	constant_time_eq_8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	constant_time_eq_int_8, .-constant_time_eq_int_8
	.type	value_barrier, @function
value_barrier:
.LFB29:
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
.LFE29:
	.size	value_barrier, .-value_barrier
	.type	value_barrier_32, @function
value_barrier_32:
.LFB30:
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
.LFE30:
	.size	value_barrier_32, .-value_barrier_32
	.type	value_barrier_64, @function
value_barrier_64:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	value_barrier_64, .-value_barrier_64
	.type	value_barrier_s, @function
value_barrier_s:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	value_barrier_s, .-value_barrier_s
	.type	constant_time_select, @function
constant_time_select:
.LFB34:
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
.LFE34:
	.size	constant_time_select, .-constant_time_select
	.type	constant_time_select_s, @function
constant_time_select_s:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	value_barrier_s
	andq	-24(%rbp), %rax
	movq	%rax, %rbx
	movq	-16(%rbp), %rax
	notq	%rax
	movq	%rax, %rdi
	call	value_barrier_s
	andq	-32(%rbp), %rax
	orq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	constant_time_select_s, .-constant_time_select_s
	.type	constant_time_select_8, @function
constant_time_select_8:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%esi, %ecx
	movl	%edx, %eax
	movl	%edi, %edx
	movb	%dl, -4(%rbp)
	movl	%ecx, %edx
	movb	%dl, -8(%rbp)
	movb	%al, -12(%rbp)
	movzbl	-12(%rbp), %edx
	movzbl	-8(%rbp), %ecx
	movzbl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	constant_time_select_8, .-constant_time_select_8
	.type	constant_time_select_int, @function
constant_time_select_int:
.LFB37:
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
.LFE37:
	.size	constant_time_select_int, .-constant_time_select_int
	.type	constant_time_select_32, @function
constant_time_select_32:
.LFB39:
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
	call	value_barrier_32
	andl	-16(%rbp), %eax
	movl	%eax, %ebx
	movl	-12(%rbp), %eax
	notl	%eax
	movl	%eax, %edi
	call	value_barrier_32
	andl	-20(%rbp), %eax
	orl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	constant_time_select_32, .-constant_time_select_32
	.type	constant_time_select_64, @function
constant_time_select_64:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	value_barrier_64
	andq	-24(%rbp), %rax
	movq	%rax, %rbx
	movq	-16(%rbp), %rax
	notq	%rax
	movq	%rax, %rdi
	call	value_barrier_64
	andq	-32(%rbp), %rax
	orq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	constant_time_select_64, .-constant_time_select_64
	.section	.rodata
	.align 4
	.type	CONSTTIME_TRUE, @object
	.size	CONSTTIME_TRUE, 4
CONSTTIME_TRUE:
	.long	-1
	.align 4
	.type	CONSTTIME_FALSE, @object
	.size	CONSTTIME_FALSE, 4
CONSTTIME_FALSE:
	.zero	4
	.type	CONSTTIME_TRUE_8, @object
	.size	CONSTTIME_TRUE_8, 1
CONSTTIME_TRUE_8:
	.byte	-1
	.type	CONSTTIME_FALSE_8, @object
	.size	CONSTTIME_FALSE_8, 1
CONSTTIME_FALSE_8:
	.zero	1
	.align 8
	.type	CONSTTIME_TRUE_S, @object
	.size	CONSTTIME_TRUE_S, 8
CONSTTIME_TRUE_S:
	.quad	-1
	.align 8
	.type	CONSTTIME_FALSE_S, @object
	.size	CONSTTIME_FALSE_S, 8
CONSTTIME_FALSE_S:
	.zero	8
	.data
	.align 4
	.type	CONSTTIME_TRUE_32, @object
	.size	CONSTTIME_TRUE_32, 4
CONSTTIME_TRUE_32:
	.long	-1
	.local	CONSTTIME_FALSE_32
	.comm	CONSTTIME_FALSE_32,4,4
	.align 8
	.type	CONSTTIME_TRUE_64, @object
	.size	CONSTTIME_TRUE_64, 8
CONSTTIME_TRUE_64:
	.quad	-1
	.local	CONSTTIME_FALSE_64
	.comm	CONSTTIME_FALSE_64,8,8
	.align 32
	.type	test_values, @object
	.size	test_values, 40
test_values:
	.long	0
	.long	1
	.long	1024
	.long	12345
	.long	32000
	.long	2147483646
	.long	2147483647
	.long	-2147483648
	.long	-2
	.long	-1
	.align 8
	.type	test_values_8, @object
	.size	test_values_8, 9
test_values_8:
	.base64	"AAECFCB/gIH/"
	.align 32
	.type	signed_test_values, @object
	.size	signed_test_values, 52
signed_test_values:
	.long	0
	.long	1
	.long	-1
	.long	1024
	.long	-1024
	.long	12345
	.long	-12345
	.long	32000
	.long	-32000
	.long	2147483647
	.long	-2147483648
	.long	2147483646
	.long	-2147483647
	.align 32
	.type	test_values_s, @object
	.size	test_values_s, 80
test_values_s:
	.quad	0
	.quad	1
	.quad	1024
	.quad	12345
	.quad	32000
	.quad	9223372036854775806
	.quad	9223372036854775807
	.quad	-9223372036854775808
	.quad	-2
	.quad	-1
	.align 32
	.type	test_values_32, @object
	.size	test_values_32, 36
test_values_32:
	.long	0
	.long	1
	.long	1024
	.long	12345
	.long	32000
	.long	2147483647
	.long	-2147483648
	.long	-2
	.long	-1
	.align 32
	.type	test_values_64, @object
	.size	test_values_64, 88
test_values_64:
	.quad	0
	.quad	1
	.quad	1024
	.quad	12345
	.quad	32000
	.quad	32000000
	.quad	32000000001
	.quad	9223372036854775807
	.quad	-9223372036854775808
	.quad	-2
	.quad	-1
	.section	.rodata
.LC0:
	.string	"CONSTTIME_TRUE"
.LC1:
	.string	"op(a, b)"
.LC2:
	.string	"../test/constant_time_test.c"
.LC3:
	.string	"CONSTTIME_FALSE"
	.text
	.type	test_binary_op, @function
test_binary_op:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L62
	movl	$-1, %ebx
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movl	%eax, %edi
	call	*%rcx
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L63
.L62:
	cmpl	$0, -44(%rbp)
	jne	.L64
	movl	$0, %ebx
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movl	%eax, %edi
	call	*%rcx
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$67, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L63
.L64:
	movl	$1, %eax
.L63:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	test_binary_op, .-test_binary_op
	.section	.rodata
.LC4:
	.string	"CONSTTIME_TRUE_8"
.LC5:
	.string	"CONSTTIME_FALSE_8"
	.text
	.type	test_binary_op_8, @function
test_binary_op_8:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L66
	movl	$-1, %eax
	movzbl	%al, %ebx
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movl	%eax, %edi
	call	*%rcx
	movzbl	%al, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	cmpl	$0, -44(%rbp)
	jne	.L68
	movl	$0, %eax
	movzbl	%al, %ebx
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%edx, %esi
	movl	%eax, %edi
	call	*%rcx
	movzbl	%al, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$79, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L68
	movl	$0, %eax
	jmp	.L67
.L68:
	movl	$1, %eax
.L67:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	test_binary_op_8, .-test_binary_op_8
	.section	.rodata
.LC6:
	.string	"CONSTTIME_TRUE_S"
.LC7:
	.string	"CONSTTIME_FALSE_S"
	.text
	.type	test_binary_op_s, @function
test_binary_op_s:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L70
	movq	$-1, %rbx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	cmpl	$0, -52(%rbp)
	jne	.L72
	movl	$0, %eax
	movl	%eax, %ebx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$90, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L72
	movl	$0, %eax
	jmp	.L71
.L72:
	movl	$1, %eax
.L71:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	test_binary_op_s, .-test_binary_op_s
	.section	.rodata
.LC8:
	.string	"TRUE %s op failed"
.LC9:
	.string	"a=%jx b=%jx\n"
.LC10:
	.string	"FALSE %s op failed"
	.text
	.type	test_binary_op_64, @function
test_binary_op_64:
.LFB510:
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
	movl	%r8d, -52(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -8(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L74
	movq	CONSTTIME_TRUE_64(%rip), %rax
	cmpq	%rax, -8(%rbp)
	je	.L74
	movq	-32(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$102, %esi
	movl	$0, %eax
	call	test_error@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L75
.L74:
	cmpl	$0, -52(%rbp)
	jne	.L76
	movq	CONSTTIME_FALSE_64(%rip), %rax
	cmpq	%rax, -8(%rbp)
	je	.L76
	movq	-32(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$106, %esi
	movl	$0, %eax
	call	test_error@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L75
.L76:
	movl	$1, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	test_binary_op_64, .-test_binary_op_64
	.section	.rodata
.LC11:
	.string	"constant_time_is_zero(a)"
	.text
	.type	test_is_zero, @function
test_is_zero:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	test_values(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L78
	movl	$-1, %ebx
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$117, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L79
.L78:
	cmpl	$0, -20(%rbp)
	je	.L80
	movl	$0, %ebx
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$119, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L79
.L80:
	movl	$1, %eax
.L79:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	test_is_zero, .-test_is_zero
	.section	.rodata
.LC12:
	.string	"constant_time_is_zero_8(a)"
	.text
	.type	test_is_zero_8, @function
test_is_zero_8:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	test_values_8(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L82
	movl	$-1, %eax
	movzbl	%al, %ebx
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero_8
	movzbl	%al, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$128, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L82
	movl	$0, %eax
	jmp	.L83
.L82:
	cmpl	$0, -20(%rbp)
	je	.L84
	movl	$0, %eax
	movzbl	%al, %ebx
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero_8
	movzbl	%al, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$130, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L84
	movl	$0, %eax
	jmp	.L83
.L84:
	movl	$1, %eax
.L83:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	test_is_zero_8, .-test_is_zero_8
	.section	.rodata
	.align 8
.LC13:
	.string	"constant_time_is_zero_32(a) == CONSTTIME_TRUE_32"
	.align 8
.LC14:
	.string	"constant_time_is_zero_32(a) == CONSTTIME_FALSE_32"
	.text
	.type	test_is_zero_32, @function
test_is_zero_32:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	test_values_32(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L86
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero_32
	movl	%eax, %edx
	movl	CONSTTIME_TRUE_32(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$139, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L86
	movl	$0, %eax
	jmp	.L87
.L86:
	cmpl	$0, -4(%rbp)
	je	.L88
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero_32
	movl	%eax, %edx
	movl	CONSTTIME_FALSE_32(%rip), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$141, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L88
	movl	$0, %eax
	jmp	.L87
.L88:
	movl	$1, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	test_is_zero_32, .-test_is_zero_32
	.section	.rodata
.LC15:
	.string	"constant_time_is_zero_s(a)"
	.text
	.type	test_is_zero_s, @function
test_is_zero_s:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	test_values_s(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L90
	movq	$-1, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_is_zero_s
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$150, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	cmpq	$0, -24(%rbp)
	je	.L92
	movl	$0, %eax
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	constant_time_is_zero_s
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$152, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L92
	movl	$0, %eax
	jmp	.L91
.L92:
	movl	$1, %eax
.L91:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	test_is_zero_s, .-test_is_zero_s
	.section	.rodata
.LC16:
	.string	"a"
	.align 8
.LC17:
	.string	"constant_time_select(CONSTTIME_TRUE, a, b)"
.LC18:
	.string	"b"
	.align 8
.LC19:
	.string	"constant_time_select(CONSTTIME_FALSE, a, b)"
	.text
	.type	test_select, @function
test_select:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$-1, %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	constant_time_select
	movl	%eax, %esi
	movl	-4(%rbp), %edi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$159, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L95
.L94:
	movl	$0, %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	constant_time_select
	movl	%eax, %esi
	movl	-8(%rbp), %edi
	leaq	.LC18(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L95
.L96:
	movl	$1, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	test_select, .-test_select
	.section	.rodata
	.align 8
.LC20:
	.string	"constant_time_select_8(CONSTTIME_TRUE_8, a, b)"
	.align 8
.LC21:
	.string	"constant_time_select_8(CONSTTIME_FALSE_8, a, b)"
	.text
	.type	test_select_8, @function
test_select_8:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -20(%rbp)
	movb	%al, -24(%rbp)
	movzbl	-20(%rbp), %ebx
	movzbl	-24(%rbp), %edx
	movzbl	-20(%rbp), %ecx
	movl	$-1, %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movzbl	%al, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$168, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L98
	movl	$0, %eax
	jmp	.L99
.L98:
	movzbl	-24(%rbp), %ebx
	movzbl	-24(%rbp), %edx
	movzbl	-20(%rbp), %ecx
	movl	$0, %eax
	movzbl	%al, %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movzbl	%al, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$170, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L99
.L100:
	movl	$1, %eax
.L99:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	test_select_8, .-test_select_8
	.section	.rodata
	.align 8
.LC22:
	.string	"constant_time_select_32(CONSTTIME_TRUE_32, a, b) == a"
	.align 8
.LC23:
	.string	"constant_time_select_32(CONSTTIME_FALSE_32, a, b) == b"
	.text
	.type	test_select_32, @function
test_select_32:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	CONSTTIME_TRUE_32(%rip), %eax
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_32
	cmpl	%eax, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$177, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L102
	movl	$0, %eax
	jmp	.L103
.L102:
	movl	CONSTTIME_FALSE_32(%rip), %eax
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_32
	cmpl	%eax, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$179, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L104
	movl	$0, %eax
	jmp	.L103
.L104:
	movl	$1, %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	test_select_32, .-test_select_32
	.section	.rodata
	.align 8
.LC24:
	.string	"constant_time_select_s(CONSTTIME_TRUE_S, a, b)"
	.align 8
.LC25:
	.string	"constant_time_select_s(CONSTTIME_FALSE_S, a, b)"
	.text
	.type	test_select_s, @function
test_select_s:
.LFB518:
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
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, %ebx
	movq	$-1, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	constant_time_select_s
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$186, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L107
.L106:
	movq	-32(%rbp), %rax
	movl	%eax, %ebx
	movl	$0, %ecx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	constant_time_select_s
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$188, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L108
	movl	$0, %eax
	jmp	.L107
.L108:
	movl	$1, %eax
.L107:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	test_select_s, .-test_select_s
	.section	.rodata
.LC26:
	.string	"test_select_64 TRUE failed"
.LC27:
	.string	"a=%jx b=%jx got %jx wanted a\n"
.LC28:
	.string	"a=%jx b=%jx got %jx wanted b\n"
	.text
	.type	test_select_64, @function
test_select_64:
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
	movq	CONSTTIME_TRUE_64(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	constant_time_select_64
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L110
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$198, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC27(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L111
.L110:
	movq	CONSTTIME_FALSE_64(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	constant_time_select_64
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L112
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	.LC28(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L111
.L112:
	movl	$1, %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	test_select_64, .-test_select_64
	.section	.rodata
	.align 8
.LC29:
	.string	"constant_time_select_int(CONSTTIME_TRUE, a, b)"
	.align 8
.LC30:
	.string	"constant_time_select_int(CONSTTIME_FALSE, a, b)"
	.text
	.type	test_select_int, @function
test_select_int:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$-1, %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	constant_time_select_int
	movl	%eax, %esi
	movl	-4(%rbp), %edi
	leaq	.LC16(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$212, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L114
	movl	$0, %eax
	jmp	.L115
.L114:
	movl	$0, %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	call	constant_time_select_int
	movl	%eax, %esi
	movl	-8(%rbp), %edi
	leaq	.LC18(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$214, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L116
	movl	$0, %eax
	jmp	.L115
.L116:
	movl	$1, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	test_select_int, .-test_select_int
	.section	.rodata
.LC31:
	.string	"constant_time_eq_int_8(a, b)"
	.text
	.type	test_eq_int_8, @function
test_eq_int_8:
.LFB521:
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
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L118
	movl	$-1, %eax
	movzbl	%al, %ebx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq_int_8
	movzbl	%al, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$221, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L118
	movl	$0, %eax
	jmp	.L119
.L118:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L120
	movl	$0, %eax
	movzbl	%al, %ebx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq_int_8
	movzbl	%al, %esi
	leaq	.LC5(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$223, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L119
.L120:
	movl	$1, %eax
.L119:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	test_eq_int_8, .-test_eq_int_8
	.section	.rodata
.LC32:
	.string	"constant_time_eq_s(a, b)"
	.text
	.type	test_eq_s, @function
test_eq_s:
.LFB522:
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
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L122
	movq	$-1, %rbx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_eq_s
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$230, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L122
	movl	$0, %eax
	jmp	.L123
.L122:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L124
	movl	$0, %eax
	movl	%eax, %ebx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_eq_s
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$232, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L124
	movl	$0, %eax
	jmp	.L123
.L124:
	movl	$1, %eax
.L123:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	test_eq_s, .-test_eq_s
	.section	.rodata
.LC33:
	.string	"constant_time_eq_int(a, b)"
	.text
	.type	test_eq_int, @function
test_eq_int:
.LFB523:
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
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.L126
	movl	$-1, %ebx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$239, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L126
	movl	$0, %eax
	jmp	.L127
.L126:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L128
	movl	$0, %ebx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$241, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L128
	movl	$0, %eax
	jmp	.L127
.L128:
	movl	$1, %eax
.L127:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	test_eq_int, .-test_eq_int
	.section	.rodata
.LC34:
	.string	"OSSL_NELEM(test_values_s)"
.LC35:
	.string	"OSSL_NELEM(test_values)"
	.text
	.type	test_sizeofs, @function
test_sizeofs:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$10, %r9d
	movl	$10, %r8d
	movl	$248, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L130
	movl	$0, %eax
	jmp	.L131
.L130:
	movl	$1, %eax
.L131:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	test_sizeofs, .-test_sizeofs
	.section	.rodata
.LC36:
	.string	"ct_lt"
.LC37:
	.string	"constant_time_lt"
.LC38:
	.string	"constant_time_ge"
.LC39:
	.string	"constant_time_eq"
	.text
	.type	test_binops, @function
test_binops:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	test_values(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -12(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L133
.L136:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	test_values(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	test_select
	testl	%eax, %eax
	je	.L134
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	setb	%al
	movzbl	%al, %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	leaq	.LC36(%rip), %rsi
	leaq	constant_time_lt(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op
	testl	%eax, %eax
	je	.L134
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	setb	%al
	movzbl	%al, %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	leaq	.LC37(%rip), %rsi
	leaq	constant_time_lt(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op
	testl	%eax, %eax
	je	.L134
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	setnb	%al
	movzbl	%al, %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	leaq	.LC38(%rip), %rsi
	leaq	constant_time_ge(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op
	testl	%eax, %eax
	je	.L134
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	setnb	%al
	movzbl	%al, %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	leaq	.LC38(%rip), %rsi
	leaq	constant_time_ge(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op
	testl	%eax, %eax
	je	.L134
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	sete	%al
	movzbl	%al, %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	leaq	.LC39(%rip), %rsi
	leaq	constant_time_eq(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op
	testl	%eax, %eax
	je	.L134
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	sete	%al
	movzbl	%al, %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	leaq	.LC39(%rip), %rsi
	leaq	constant_time_eq(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op
	testl	%eax, %eax
	jne	.L135
.L134:
	movl	$0, -8(%rbp)
.L135:
	addl	$1, -4(%rbp)
.L133:
	cmpl	$9, -4(%rbp)
	jle	.L136
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	test_binops, .-test_binops
	.section	.rodata
.LC40:
	.string	"constant_time_lt_8"
.LC41:
	.string	"constant_time_ge_8"
.LC42:
	.string	"constant_time_eq_8"
	.text
	.type	test_binops_8, @function
test_binops_8:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	test_values_8(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L139
.L142:
	movl	-4(%rbp), %eax
	cltq
	leaq	test_values_8(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	setb	%al
	movzbl	%al, %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	leaq	.LC40(%rip), %rsi
	leaq	constant_time_lt_8(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op_8
	testl	%eax, %eax
	je	.L140
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	setb	%al
	movzbl	%al, %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	leaq	.LC40(%rip), %rsi
	leaq	constant_time_lt_8(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op_8
	testl	%eax, %eax
	je	.L140
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	setnb	%al
	movzbl	%al, %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	leaq	.LC41(%rip), %rsi
	leaq	constant_time_ge_8(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op_8
	testl	%eax, %eax
	je	.L140
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	setnb	%al
	movzbl	%al, %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	leaq	.LC41(%rip), %rsi
	leaq	constant_time_ge_8(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op_8
	testl	%eax, %eax
	je	.L140
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	sete	%al
	movzbl	%al, %ecx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	leaq	.LC42(%rip), %rsi
	leaq	constant_time_eq_8(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op_8
	testl	%eax, %eax
	je	.L140
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	sete	%al
	movzbl	%al, %ecx
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	leaq	.LC42(%rip), %rsi
	leaq	constant_time_eq_8(%rip), %rdi
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%eax, %edx
	call	test_binary_op_8
	testl	%eax, %eax
	jne	.L141
.L140:
	movl	$0, -8(%rbp)
.L141:
	addl	$1, -4(%rbp)
.L139:
	cmpl	$8, -4(%rbp)
	jle	.L142
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	test_binops_8, .-test_binops_8
	.section	.rodata
.LC43:
	.string	"constant_time_lt_s"
.LC44:
	.string	"constant_time_ge_s"
.LC45:
	.string	"constant_time_eq_s"
	.text
	.type	test_binops_s, @function
test_binops_s:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	test_values_s(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L145
.L148:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	test_values_s(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_select_s
	testl	%eax, %eax
	je	.L146
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_eq_s
	testl	%eax, %eax
	je	.L146
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setb	%al
	movzbl	%al, %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC43(%rip), %rsi
	leaq	constant_time_lt_s(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_binary_op_s
	testl	%eax, %eax
	je	.L146
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setb	%al
	movzbl	%al, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC43(%rip), %rsi
	leaq	constant_time_lt_s(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_binary_op_s
	testl	%eax, %eax
	je	.L146
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setnb	%al
	movzbl	%al, %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC44(%rip), %rsi
	leaq	constant_time_ge_s(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_binary_op_s
	testl	%eax, %eax
	je	.L146
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	setnb	%al
	movzbl	%al, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC44(%rip), %rsi
	leaq	constant_time_ge_s(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_binary_op_s
	testl	%eax, %eax
	je	.L146
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	sete	%al
	movzbl	%al, %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	leaq	constant_time_eq_s(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_binary_op_s
	testl	%eax, %eax
	je	.L146
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	sete	%al
	movzbl	%al, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	leaq	constant_time_eq_s(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_binary_op_s
	testl	%eax, %eax
	jne	.L147
.L146:
	movl	$0, -8(%rbp)
.L147:
	addl	$1, -4(%rbp)
.L145:
	cmpl	$9, -4(%rbp)
	jle	.L148
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_binops_s, .-test_binops_s
	.type	test_signed, @function
test_signed:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	signed_test_values(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -12(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L151
.L154:
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	signed_test_values(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	test_select_int
	testl	%eax, %eax
	je	.L152
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	test_eq_int
	testl	%eax, %eax
	je	.L152
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	test_eq_int_8
	testl	%eax, %eax
	jne	.L153
.L152:
	movl	$0, -8(%rbp)
.L153:
	addl	$1, -4(%rbp)
.L151:
	cmpl	$12, -4(%rbp)
	jbe	.L154
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_signed, .-test_signed
	.type	test_8values, @function
test_8values:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	test_values_8(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movb	%al, -9(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L157
.L159:
	movl	-4(%rbp), %eax
	leaq	test_values_8(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movb	%al, -10(%rbp)
	movzbl	-10(%rbp), %edx
	movzbl	-9(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	test_select_8
	testl	%eax, %eax
	jne	.L158
	movl	$0, -8(%rbp)
.L158:
	addl	$1, -4(%rbp)
.L157:
	cmpl	$8, -4(%rbp)
	jbe	.L159
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	test_8values, .-test_8values
	.type	test_32values, @function
test_32values:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	test_values_32(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -16(%rbp)
	movl	$1, -12(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L162
.L164:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	leaq	test_values_32(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	test_select_32
	testl	%eax, %eax
	jne	.L163
	movl	$0, -12(%rbp)
.L163:
	addq	$1, -8(%rbp)
.L162:
	cmpq	$8, -8(%rbp)
	jbe	.L164
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	test_32values, .-test_32values
	.section	.rodata
.LC46:
	.string	"constant_time_lt_64"
	.align 8
.LC47:
	.string	"test_64values failed i=%d j=%d"
	.text
	.type	test_64values, @function
test_64values:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	test_values_64(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -8(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L167
.L170:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	test_values_64(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setb	%al
	movzbl	%al, %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	leaq	.LC46(%rip), %rsi
	leaq	constant_time_lt_64(%rip), %rdi
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	test_binary_op_64
	testl	%eax, %eax
	je	.L168
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_select_64
	testl	%eax, %eax
	jne	.L169
.L168:
	movl	-4(%rbp), %ecx
	movl	-36(%rbp), %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$392, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, -8(%rbp)
.L169:
	addl	$1, -4(%rbp)
.L167:
	cmpl	$10, -4(%rbp)
	jle	.L170
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	test_64values, .-test_64values
	.section	.rodata
.LC48:
	.string	"test_sizeofs"
.LC49:
	.string	"test_is_zero"
.LC50:
	.string	"test_is_zero_8"
.LC51:
	.string	"test_is_zero_32"
.LC52:
	.string	"test_is_zero_s"
.LC53:
	.string	"test_binops"
.LC54:
	.string	"test_binops_8"
.LC55:
	.string	"test_binops_s"
.LC56:
	.string	"test_signed"
.LC57:
	.string	"test_8values"
.LC58:
	.string	"test_32values"
.LC59:
	.string	"test_64values"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_sizeofs(%rip), %rdx
	leaq	.LC48(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_is_zero(%rip), %rsi
	leaq	.LC49(%rip), %rax
	movl	$1, %ecx
	movl	$10, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_is_zero_8(%rip), %rsi
	leaq	.LC50(%rip), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_is_zero_32(%rip), %rsi
	leaq	.LC51(%rip), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_is_zero_s(%rip), %rsi
	leaq	.LC52(%rip), %rax
	movl	$1, %ecx
	movl	$10, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_binops(%rip), %rsi
	leaq	.LC53(%rip), %rax
	movl	$1, %ecx
	movl	$10, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_binops_8(%rip), %rsi
	leaq	.LC54(%rip), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_binops_s(%rip), %rsi
	leaq	.LC55(%rip), %rax
	movl	$1, %ecx
	movl	$10, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_signed(%rip), %rsi
	leaq	.LC56(%rip), %rax
	movl	$1, %ecx
	movl	$13, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_8values(%rip), %rsi
	leaq	.LC57(%rip), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_32values(%rip), %rsi
	leaq	.LC58(%rip), %rax
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_64values(%rip), %rsi
	leaq	.LC59(%rip), %rax
	movl	$1, %ecx
	movl	$11, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
