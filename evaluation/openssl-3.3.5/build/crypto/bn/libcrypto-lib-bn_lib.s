	.file	"bn_lib.c"
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
	.type	bn_expand, @function
bn_expand:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$2147483584, -12(%rbp)
	jle	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	-12(%rbp), %eax
	addl	$63, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, %edx
	jg	.L8
	movq	-8(%rbp), %rax
	jmp	.L7
.L8:
	movl	-12(%rbp), %eax
	addl	$63, %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_expand2@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	bn_expand, .-bn_expand
	.type	constant_time_msb, @function
constant_time_msb:
.LFB161:
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
.LFE161:
	.size	constant_time_msb, .-constant_time_msb
	.type	constant_time_msb_bn, @function
constant_time_msb_bn:
.LFB169:
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
.LFE169:
	.size	constant_time_msb_bn, .-constant_time_msb_bn
	.type	constant_time_lt_bn, @function
constant_time_lt_bn:
.LFB170:
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
	call	constant_time_msb_bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	constant_time_lt_bn, .-constant_time_lt_bn
	.type	constant_time_is_zero_bn, @function
constant_time_is_zero_bn:
.LFB171:
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
	call	constant_time_msb_bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	constant_time_is_zero_bn, .-constant_time_is_zero_bn
	.type	constant_time_eq_bn, @function
constant_time_eq_bn:
.LFB172:
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
	call	constant_time_is_zero_bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	constant_time_eq_bn, .-constant_time_eq_bn
	.type	constant_time_is_zero, @function
constant_time_is_zero:
.LFB177:
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
.LFE177:
	.size	constant_time_is_zero, .-constant_time_is_zero
	.type	constant_time_eq, @function
constant_time_eq:
.LFB182:
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
.LFE182:
	.size	constant_time_eq, .-constant_time_eq
	.type	constant_time_eq_int, @function
constant_time_eq_int:
.LFB186:
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
.LFE186:
	.size	constant_time_eq_int, .-constant_time_eq_int
	.type	value_barrier, @function
value_barrier:
.LFB188:
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
.LFE188:
	.size	value_barrier, .-value_barrier
	.type	constant_time_select, @function
constant_time_select:
.LFB193:
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
.LFE193:
	.size	constant_time_select, .-constant_time_select
	.type	constant_time_select_int, @function
constant_time_select_int:
.LFB196:
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
.LFE196:
	.size	constant_time_select_int, .-constant_time_select_int
	.local	bn_limit_bits
	.comm	bn_limit_bits,4,4
	.data
	.align 4
	.type	bn_limit_num, @object
	.size	bn_limit_num, 4
bn_limit_num:
	.long	8
	.local	bn_limit_bits_low
	.comm	bn_limit_bits_low,4,4
	.align 4
	.type	bn_limit_num_low, @object
	.size	bn_limit_num_low, 4
bn_limit_num_low:
	.long	8
	.local	bn_limit_bits_high
	.comm	bn_limit_bits_high,4,4
	.align 4
	.type	bn_limit_num_high, @object
	.size	bn_limit_num_high, 4
bn_limit_num_high:
	.long	8
	.local	bn_limit_bits_mont
	.comm	bn_limit_bits_mont,4,4
	.align 4
	.type	bn_limit_num_mont, @object
	.size	bn_limit_num_mont, 4
bn_limit_num_mont:
	.long	8
	.text
	.globl	BN_set_params
	.type	BN_set_params, @function
BN_set_params:
.LFB204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L32
	cmpl	$31, -4(%rbp)
	jle	.L33
	movl	$31, -4(%rbp)
.L33:
	movl	-4(%rbp), %eax
	movl	%eax, bn_limit_bits(%rip)
	movl	-4(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, bn_limit_num(%rip)
.L32:
	cmpl	$0, -8(%rbp)
	js	.L34
	cmpl	$31, -8(%rbp)
	jle	.L35
	movl	$31, -8(%rbp)
.L35:
	movl	-8(%rbp), %eax
	movl	%eax, bn_limit_bits_high(%rip)
	movl	-8(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, bn_limit_num_high(%rip)
.L34:
	cmpl	$0, -12(%rbp)
	js	.L36
	cmpl	$31, -12(%rbp)
	jle	.L37
	movl	$31, -12(%rbp)
.L37:
	movl	-12(%rbp), %eax
	movl	%eax, bn_limit_bits_low(%rip)
	movl	-12(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, bn_limit_num_low(%rip)
.L36:
	cmpl	$0, -16(%rbp)
	js	.L40
	cmpl	$31, -16(%rbp)
	jle	.L39
	movl	$31, -16(%rbp)
.L39:
	movl	-16(%rbp), %eax
	movl	%eax, bn_limit_bits_mont(%rip)
	movl	-16(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, bn_limit_num_mont(%rip)
.L40:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	BN_set_params, .-BN_set_params
	.globl	BN_get_params
	.type	BN_get_params, @function
BN_get_params:
.LFB205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L42
	movl	bn_limit_bits(%rip), %eax
	jmp	.L43
.L42:
	cmpl	$1, -4(%rbp)
	jne	.L44
	movl	bn_limit_bits_high(%rip), %eax
	jmp	.L43
.L44:
	cmpl	$2, -4(%rbp)
	jne	.L45
	movl	bn_limit_bits_low(%rip), %eax
	jmp	.L43
.L45:
	cmpl	$3, -4(%rbp)
	jne	.L46
	movl	bn_limit_bits_mont(%rip), %eax
	jmp	.L43
.L46:
	movl	$0, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	BN_get_params, .-BN_get_params
	.globl	BN_value_one
	.type	BN_value_one, @function
BN_value_one:
.LFB206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	const_one.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	BN_value_one, .-BN_value_one
	.globl	BN_num_bits_word
	.type	BN_num_bits_word, @function
BN_num_bits_word:
.LFB207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	shrq	$32, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	negq	%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andl	$32, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	xorq	-40(%rbp), %rax
	andq	-24(%rbp), %rax
	xorq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$16, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	negq	%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andl	$16, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	xorq	-40(%rbp), %rax
	andq	-24(%rbp), %rax
	xorq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	negq	%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andl	$8, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	xorq	-40(%rbp), %rax
	andq	-24(%rbp), %rax
	xorq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$4, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	negq	%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andl	$4, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	xorq	-40(%rbp), %rax
	andq	-24(%rbp), %rax
	xorq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	$2, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	negq	%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andl	$2, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	xorq	-40(%rbp), %rax
	andq	-24(%rbp), %rax
	xorq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	shrq	%rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	negq	%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	BN_num_bits_word, .-BN_num_bits_word
	.type	bn_num_bits_consttime, @function
bn_num_bits_consttime:
.LFB208:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L52
.L53:
	movl	-4(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	orl	-12(%rbp), %eax
	notl	%eax
	andl	$64, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits_word@PLT
	andl	-20(%rbp), %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-20(%rbp), %eax
	orl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
.L52:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L53
	movl	-16(%rbp), %eax
	movl	$-1, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	notl	%eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	andl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	bn_num_bits_consttime, .-bn_num_bits_consttime
	.globl	BN_num_bits
	.type	BN_num_bits, @function
BN_num_bits:
.LFB209:
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
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L56
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bn_num_bits_consttime
	jmp	.L57
.L56:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L58
	movl	$0, %eax
	jmp	.L57
.L58:
	movl	-20(%rbp), %eax
	sall	$6, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits_word@PLT
	addl	%ebx, %eax
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	BN_num_bits, .-BN_num_bits
	.section	.rodata
.LC0:
	.string	"../crypto/bn/bn_lib.c"
	.text
	.type	bn_free_d, @function
bn_free_d:
.LFB210:
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
	movl	$8, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L60
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$205, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	jmp	.L63
.L60:
	cmpl	$0, -12(%rbp)
	je	.L62
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$207, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L63
.L62:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$209, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L63:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	bn_free_d, .-bn_free_d
	.globl	BN_clear_free
	.type	BN_clear_free, @function
BN_clear_free:
.LFB211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L68
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L67
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	bn_free_d
.L67:
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L64
	movq	-8(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$221, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L64
.L68:
	nop
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	BN_clear_free, .-BN_clear_free
	.globl	BN_free
	.type	BN_free, @function
BN_free:
.LFB212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L73
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L72
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	bn_free_d
.L72:
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L69
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$232, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L69
.L73:
	nop
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	BN_free, .-BN_free
	.globl	bn_init
	.type	bn_init, @function
bn_init:
.LFB213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	nilbn.1(%rip), %rax
	movq	8+nilbn.1(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+nilbn.1(%rip), %rax
	movq	%rax, 16(%rcx)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE213:
	.size	bn_init, .-bn_init
	.globl	BN_new
	.type	BN_new, @function
BN_new:
.LFB214:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$247, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-8(%rbp), %rax
	movl	$1, 20(%rax)
	movq	-8(%rbp), %rax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE214:
	.size	BN_new, .-BN_new
	.globl	BN_secure_new
	.type	BN_secure_new, @function
BN_secure_new:
.LFB215:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L79
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
.L79:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE215:
	.size	BN_secure_new, .-BN_secure_new
	.type	bn_expand_internal, @function
bn_expand_internal:
.LFB216:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	cmpl	$8388607, -28(%rbp)
	jle	.L82
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$269, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L84
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$273, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L84:
	movq	-24(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L85
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$277, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_zalloc@PLT
	movq	%rax, -8(%rbp)
	jmp	.L86
.L85:
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$279, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
.L86:
	cmpq	$0, -8(%rbp)
	jne	.L87
	movl	$0, %eax
	jmp	.L83
.L87:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L88
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L88:
	movq	-8(%rbp), %rax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE216:
	.size	bn_expand_internal, .-bn_expand_internal
	.globl	bn_expand2
	.type	bn_expand2, @function
bn_expand2:
.LFB217:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jle	.L90
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_expand_internal
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L91
	movl	$0, %eax
	jmp	.L92
.L91:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L93
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	bn_free_d
.L93:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 12(%rax)
.L90:
	movq	-24(%rbp), %rax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE217:
	.size	bn_expand2, .-bn_expand2
	.globl	BN_dup
	.type	BN_dup, @function
BN_dup:
.LFB218:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L96
.L95:
	movq	-24(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L97
	call	BN_secure_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.L98
.L97:
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
.L98:
	cmpq	$0, -8(%rbp)
	jne	.L99
	movl	$0, %eax
	jmp	.L96
.L99:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L100
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
	jmp	.L96
.L100:
	movq	-8(%rbp), %rax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE218:
	.size	BN_dup, .-BN_dup
	.globl	BN_copy
	.type	BN_copy, @function
BN_copy:
.LFB219:
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
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L102
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L103
.L102:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
.L103:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L104
	movq	-24(%rbp), %rax
	jmp	.L105
.L104:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L106
	movl	$0, %eax
	jmp	.L105
.L106:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L107
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L107:
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-24(%rbp), %rax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE219:
	.size	BN_copy, .-BN_copy
	.globl	BN_swap
	.type	BN_swap, @function
BN_swap:
.LFB220:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	12(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-48(%rbp), %rax
	movl	16(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-48(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	andl	$14, %eax
	orl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	-8(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	andl	$14, %eax
	orl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 20(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE220:
	.size	BN_swap, .-BN_swap
	.globl	BN_clear
	.type	BN_clear, @function
BN_clear:
.LFB221:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L113
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L112
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L112:
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	jmp	.L109
.L113:
	nop
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE221:
	.size	BN_clear, .-BN_clear
	.globl	BN_get_word
	.type	BN_get_word, @function
BN_get_word:
.LFB222:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jle	.L115
	movq	$-1, %rax
	jmp	.L116
.L115:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L117
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	jmp	.L116
.L117:
	movl	$0, %eax
.L116:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE222:
	.size	BN_get_word, .-BN_get_word
	.globl	BN_set_word
	.type	BN_set_word, @function
BN_set_word:
.LFB223:
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
	movl	$64, %esi
	movq	%rax, %rdi
	call	bn_expand
	testq	%rax, %rax
	jne	.L119
	movl	$0, %eax
	jmp	.L120
.L119:
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$1, %eax
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE223:
	.size	BN_set_word, .-BN_set_word
	.type	bin2bn, @function
bin2bn:
.LFB224:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -96(%rbp)
	movl	%r8d, -108(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$0, -92(%rbp)
	jns	.L122
	movl	$0, %eax
	jmp	.L123
.L122:
	cmpq	$0, -104(%rbp)
	jne	.L124
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
.L124:
	cmpq	$0, -104(%rbp)
	jne	.L125
	movl	$0, %eax
	jmp	.L123
.L125:
	cmpl	$0, -92(%rbp)
	jne	.L126
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-104(%rbp), %rax
	jmp	.L123
.L126:
	cmpl	$1, -96(%rbp)
	jne	.L127
	movl	-92(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movl	$-1, -20(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L128
.L127:
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
	movl	$-1, -4(%rbp)
	movl	-92(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, -88(%rbp)
.L128:
	cmpl	$0, -108(%rbp)
	jne	.L132
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L130
	movl	$255, -28(%rbp)
	jmp	.L131
.L130:
	movl	$0, -28(%rbp)
.L131:
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.L132
.L145:
	nop
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, -16(%rbp)
	subl	$1, -92(%rbp)
.L132:
	cmpl	$0, -92(%rbp)
	jle	.L133
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	%eax, -28(%rbp)
	je	.L145
.L133:
	cmpl	$255, -28(%rbp)
	jne	.L135
	cmpl	$0, -92(%rbp)
	je	.L136
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	js	.L135
.L136:
	addl	$1, -92(%rbp)
.L135:
	cmpl	$0, -92(%rbp)
	jne	.L137
	movq	-104(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-104(%rbp), %rax
	jmp	.L123
.L137:
	movl	-92(%rbp), %eax
	subl	$1, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L138
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$0, %eax
	jmp	.L123
.L138:
	movl	-40(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-104(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	$0, -36(%rbp)
	jmp	.L139
.L143:
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L140
.L142:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorl	-28(%rbp), %eax
	cltq
	movq	%rax, -72(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	andl	$255, %eax
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	cmpq	%rax, -80(%rbp)
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movl	-60(%rbp), %eax
	movq	-80(%rbp), %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rax, -56(%rbp)
	subl	$1, -92(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -88(%rbp)
	addl	$8, -60(%rbp)
.L140:
	cmpl	$0, -92(%rbp)
	jle	.L141
	cmpl	$63, -60(%rbp)
	jbe	.L142
.L141:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -36(%rbp)
.L139:
	movl	-40(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -40(%rbp)
	testl	%eax, %eax
	jne	.L143
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movq	-104(%rbp), %rax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE224:
	.size	bin2bn, .-bin2bn
	.globl	BN_bin2bn
	.type	BN_bin2bn, @function
BN_bin2bn:
.LFB225:
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
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	bin2bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE225:
	.size	BN_bin2bn, .-BN_bin2bn
	.globl	BN_signed_bin2bn
	.type	BN_signed_bin2bn, @function
BN_signed_bin2bn:
.LFB226:
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
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	bin2bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE226:
	.size	BN_signed_bin2bn, .-BN_signed_bin2bn
	.type	bn2binpad, @function
bn2binpad:
.LFB227:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movl	%ecx, -136(%rbp)
	movl	%r8d, -140(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -140(%rbp)
	jne	.L151
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L152
	movl	$255, -8(%rbp)
	jmp	.L153
.L152:
	movl	$0, -8(%rbp)
.L153:
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-40(%rbp), %eax
	sall	$3, %eax
	cmpl	%eax, -36(%rbp)
	jne	.L154
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	jmp	.L151
.L154:
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -16(%rbp)
.L151:
	cmpl	$-1, -132(%rbp)
	jne	.L155
	movl	-40(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -132(%rbp)
	jmp	.L156
.L155:
	movl	-40(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -132(%rbp)
	jge	.L156
	movq	-120(%rbp), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -96(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -132(%rbp)
	jge	.L156
	movl	$-1, %eax
	jmp	.L158
.L156:
	movq	-120(%rbp), %rax
	movl	12(%rax), %eax
	sall	$3, %eax
	cltq
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L159
	cmpl	$0, -132(%rbp)
	je	.L160
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	-128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L160:
	movl	-132(%rbp), %eax
	jmp	.L158
.L159:
	cmpl	$1, -136(%rbp)
	jne	.L161
	movl	$1, -4(%rbp)
	jmp	.L162
.L161:
	movl	$-1, -4(%rbp)
	movl	-132(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, -128(%rbp)
.L162:
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movl	8(%rax), %eax
	sall	$3, %eax
	cltq
	movq	%rax, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L163
.L164:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	andq	$-8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	subq	-48(%rbp), %rax
	sarq	$63, %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	andl	$7, %eax
	sall	$3, %eax
	movq	-64(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	andl	%edx, %eax
	movb	%al, -73(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movzbl	-73(%rbp), %eax
	xorl	%edx, %eax
	movb	%al, -74(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	movzbl	-74(%rbp), %eax
	addl	%eax, %edx
	movq	-128(%rbp), %rax
	movb	%dl, (%rax)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-74(%rbp), %al
	setb	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	shrq	$63, %rax
	addq	%rax, -24(%rbp)
	addq	$1, -32(%rbp)
.L163:
	movl	-132(%rbp), %eax
	cltq
	cmpq	%rax, -32(%rbp)
	jb	.L164
	movl	-132(%rbp), %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE227:
	.size	bn2binpad, .-bn2binpad
	.globl	BN_bn2binpad
	.type	BN_bn2binpad, @function
BN_bn2binpad:
.LFB228:
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
	cmpl	$0, -20(%rbp)
	jns	.L166
	movl	$-1, %eax
	jmp	.L167
.L166:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	bn2binpad
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE228:
	.size	BN_bn2binpad, .-BN_bn2binpad
	.globl	BN_signed_bn2bin
	.type	BN_signed_bn2bin, @function
BN_signed_bn2bin:
.LFB229:
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
	cmpl	$0, -20(%rbp)
	jns	.L169
	movl	$-1, %eax
	jmp	.L170
.L169:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	bn2binpad
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE229:
	.size	BN_signed_bn2bin, .-BN_signed_bn2bin
	.globl	BN_bn2bin
	.type	BN_bn2bin, @function
BN_bn2bin:
.LFB230:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	bn2binpad
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE230:
	.size	BN_bn2bin, .-BN_bn2bin
	.globl	BN_lebin2bn
	.type	BN_lebin2bn, @function
BN_lebin2bn:
.LFB231:
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
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	bin2bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE231:
	.size	BN_lebin2bn, .-BN_lebin2bn
	.globl	BN_signed_lebin2bn
	.type	BN_signed_lebin2bn, @function
BN_signed_lebin2bn:
.LFB232:
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
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	bin2bn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE232:
	.size	BN_signed_lebin2bn, .-BN_signed_lebin2bn
	.globl	BN_bn2lebinpad
	.type	BN_bn2lebinpad, @function
BN_bn2lebinpad:
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
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L178
	movl	$-1, %eax
	jmp	.L179
.L178:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	bn2binpad
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE233:
	.size	BN_bn2lebinpad, .-BN_bn2lebinpad
	.globl	BN_signed_bn2lebin
	.type	BN_signed_bn2lebin, @function
BN_signed_bn2lebin:
.LFB234:
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
	cmpl	$0, -20(%rbp)
	jns	.L181
	movl	$-1, %eax
	jmp	.L182
.L181:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	bn2binpad
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE234:
	.size	BN_signed_bn2lebin, .-BN_signed_bn2lebin
	.globl	BN_native2bn
	.type	BN_native2bn, @function
BN_native2bn:
.LFB235:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L184
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_lebin2bn@PLT
	jmp	.L185
.L184:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE235:
	.size	BN_native2bn, .-BN_native2bn
	.globl	BN_signed_native2bn
	.type	BN_signed_native2bn, @function
BN_signed_native2bn:
.LFB236:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L187
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_signed_lebin2bn@PLT
	jmp	.L188
.L187:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_signed_bin2bn@PLT
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE236:
	.size	BN_signed_native2bn, .-BN_signed_native2bn
	.globl	BN_bn2nativepad
	.type	BN_bn2nativepad, @function
BN_bn2nativepad:
.LFB237:
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
	movl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L190
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2lebinpad@PLT
	jmp	.L191
.L190:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE237:
	.size	BN_bn2nativepad, .-BN_bn2nativepad
	.globl	BN_signed_bn2native
	.type	BN_signed_bn2native, @function
BN_signed_bn2native:
.LFB238:
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
	movl	$1, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L193
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_signed_bn2lebin@PLT
	jmp	.L194
.L193:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_signed_bn2bin@PLT
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE238:
	.size	BN_signed_bn2native, .-BN_signed_bn2native
	.globl	BN_ucmp
	.type	BN_ucmp, @function
BN_ucmp:
.LFB239:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L196
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jne	.L196
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L197
.L198:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_lt_bn
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	$-1, %esi
	movl	%ecx, %edi
	call	constant_time_select_int
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_lt_bn
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	$1, %esi
	movl	%ecx, %edi
	call	constant_time_select_int
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L197:
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L198
	movl	-8(%rbp), %eax
	jmp	.L199
.L196:
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L200
	movl	-4(%rbp), %eax
	jmp	.L199
.L200:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L201
.L205:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L202
	movq	-32(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L203
	movl	$1, %eax
	jmp	.L199
.L203:
	movl	$-1, %eax
	jmp	.L199
.L202:
	subl	$1, -4(%rbp)
.L201:
	cmpl	$0, -4(%rbp)
	jns	.L205
	movl	$0, %eax
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE239:
	.size	BN_ucmp, .-BN_ucmp
	.globl	BN_cmp
	.type	BN_cmp, @function
BN_cmp:
.LFB240:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L207
	cmpq	$0, -48(%rbp)
	jne	.L208
.L207:
	cmpq	$0, -40(%rbp)
	je	.L209
	movl	$-1, %eax
	jmp	.L210
.L209:
	cmpq	$0, -48(%rbp)
	je	.L211
	movl	$1, %eax
	jmp	.L210
.L211:
	movl	$0, %eax
	jmp	.L210
.L208:
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	je	.L212
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L213
	movl	$-1, %eax
	jmp	.L210
.L213:
	movl	$1, %eax
	jmp	.L210
.L212:
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L214
	movl	$1, -8(%rbp)
	movl	$-1, -12(%rbp)
	jmp	.L215
.L214:
	movl	$-1, -8(%rbp)
	movl	$1, -12(%rbp)
.L215:
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jle	.L216
	movl	-8(%rbp), %eax
	jmp	.L210
.L216:
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jge	.L217
	movl	-12(%rbp), %eax
	jmp	.L210
.L217:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L218
.L221:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jnb	.L219
	movl	-8(%rbp), %eax
	jmp	.L210
.L219:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L220
	movl	-12(%rbp), %eax
	jmp	.L210
.L220:
	subl	$1, -4(%rbp)
.L218:
	cmpl	$0, -4(%rbp)
	jns	.L221
	movl	$0, %eax
.L210:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE240:
	.size	BN_cmp, .-BN_cmp
	.globl	BN_set_bit
	.type	BN_set_bit, @function
BN_set_bit:
.LFB241:
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
	jns	.L223
	movl	$0, %eax
	jmp	.L224
.L223:
	movl	-28(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L225
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L226
	movl	$0, %eax
	jmp	.L224
.L226:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L227
.L228:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -4(%rbp)
.L227:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.L228
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
.L225:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	orq	%rsi, %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE241:
	.size	BN_set_bit, .-BN_set_bit
	.globl	BN_clear_bit
	.type	BN_clear_bit, @function
BN_clear_bit:
.LFB242:
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
	jns	.L230
	movl	$0, %eax
	jmp	.L231
.L230:
	movl	-28(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L232
	movl	$0, %eax
	jmp	.L231
.L232:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-8(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	notq	%rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	andq	%rcx, %rsi
	movq	%rsi, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, %eax
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE242:
	.size	BN_clear_bit, .-BN_clear_bit
	.globl	BN_is_bit_set
	.type	BN_is_bit_set, @function
BN_is_bit_set:
.LFB243:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L234
	movl	$0, %eax
	jmp	.L235
.L234:
	movl	-28(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L236
	movl	$0, %eax
	jmp	.L235
.L236:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
.L235:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE243:
	.size	BN_is_bit_set, .-BN_is_bit_set
	.globl	ossl_bn_mask_bits_fixed_top
	.type	ossl_bn_mask_bits_fixed_top, @function
ossl_bn_mask_bits_fixed_top:
.LFB244:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L238
	movl	$0, %eax
	jmp	.L239
.L238:
	movl	-28(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%eax, %edx
	andl	$63, %edx
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L240
	movl	$0, %eax
	jmp	.L239
.L240:
	cmpl	$0, -8(%rbp)
	jne	.L241
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 8(%rax)
	jmp	.L242
.L241:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movl	-8(%rbp), %eax
	movq	$-1, %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	notq	%rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	andq	%rcx, %rsi
	movq	%rsi, %rdx
	movq	%rdx, (%rax)
.L242:
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$1, %eax
.L239:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE244:
	.size	ossl_bn_mask_bits_fixed_top, .-ossl_bn_mask_bits_fixed_top
	.globl	BN_mask_bits
	.type	BN_mask_bits, @function
BN_mask_bits:
.LFB245:
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
	call	ossl_bn_mask_bits_fixed_top@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L244
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
.L244:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE245:
	.size	BN_mask_bits, .-BN_mask_bits
	.globl	BN_set_negative
	.type	BN_set_negative, @function
BN_set_negative:
.LFB246:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L247
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L247
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	jmp	.L248
.L247:
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	nop
.L248:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE246:
	.size	BN_set_negative, .-BN_set_negative
	.globl	bn_cmp_words
	.type	bn_cmp_words, @function
bn_cmp_words:
.LFB247:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L250
	movl	$0, %eax
	jmp	.L251
.L250:
	movl	-52(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L252
	movq	-16(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L253
	movl	$1, %eax
	jmp	.L251
.L253:
	movl	$-1, %eax
	jmp	.L251
.L252:
	movl	-52(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -4(%rbp)
	jmp	.L255
.L259:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L256
	movq	-16(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L257
	movl	$1, %eax
	jmp	.L251
.L257:
	movl	$-1, %eax
	jmp	.L251
.L256:
	subl	$1, -4(%rbp)
.L255:
	cmpl	$0, -4(%rbp)
	jns	.L259
	movl	$0, %eax
.L251:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE247:
	.size	bn_cmp_words, .-bn_cmp_words
	.globl	bn_cmp_part_words
	.type	bn_cmp_part_words, @function
bn_cmp_part_words:
.LFB248:
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
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -40(%rbp)
	jns	.L261
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L262
.L265:
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L263
	movl	$-1, %eax
	jmp	.L264
.L263:
	addl	$1, -4(%rbp)
.L262:
	cmpl	$0, -4(%rbp)
	js	.L265
.L261:
	cmpl	$0, -40(%rbp)
	jle	.L266
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L267
.L269:
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L268
	movl	$1, %eax
	jmp	.L264
.L268:
	subl	$1, -4(%rbp)
.L267:
	cmpl	$0, -4(%rbp)
	jg	.L269
.L266:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_cmp_words@PLT
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE248:
	.size	bn_cmp_part_words, .-bn_cmp_part_words
	.globl	BN_consttime_swap
	.type	BN_consttime_swap, @function
BN_consttime_swap:
.LFB249:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	notq	%rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	subq	$1, %rax
	andq	%rdx, %rax
	shrq	$63, %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	xorl	%edx, %eax
	cltq
	andq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	xorl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	xorl	%edx, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	xorl	%edx, %eax
	cltq
	andq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	xorl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	xorl	%edx, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-32(%rbp), %rax
	movl	20(%rax), %edx
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	xorl	%edx, %eax
	cltq
	andq	-24(%rbp), %rax
	andl	$4, %eax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	xorl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	xorl	%edx, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$0, -4(%rbp)
	jmp	.L271
.L272:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	xorq	%rdx, %rax
	andq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	xorq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rdx
	xorq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
.L271:
	movl	-4(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L272
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE249:
	.size	BN_consttime_swap, .-BN_consttime_swap
	.globl	BN_security_bits
	.type	BN_security_bits, @function
BN_security_bits:
.LFB250:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$15359, -20(%rbp)
	jle	.L274
	movl	$256, -4(%rbp)
	jmp	.L275
.L274:
	cmpl	$7679, -20(%rbp)
	jle	.L276
	movl	$192, -4(%rbp)
	jmp	.L275
.L276:
	cmpl	$3071, -20(%rbp)
	jle	.L277
	movl	$128, -4(%rbp)
	jmp	.L275
.L277:
	cmpl	$2047, -20(%rbp)
	jle	.L278
	movl	$112, -4(%rbp)
	jmp	.L275
.L278:
	cmpl	$1023, -20(%rbp)
	jle	.L279
	movl	$80, -4(%rbp)
	jmp	.L275
.L279:
	movl	$0, %eax
	jmp	.L280
.L275:
	cmpl	$-1, -24(%rbp)
	jne	.L281
	movl	-4(%rbp), %eax
	jmp	.L280
.L281:
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -8(%rbp)
	cmpl	$79, -8(%rbp)
	jg	.L282
	movl	$0, %eax
	jmp	.L280
.L282:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
.L280:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE250:
	.size	BN_security_bits, .-BN_security_bits
	.globl	BN_zero_ex
	.type	BN_zero_ex, @function
BN_zero_ex:
.LFB251:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE251:
	.size	BN_zero_ex, .-BN_zero_ex
	.globl	BN_abs_is_word
	.type	BN_abs_is_word, @function
BN_abs_is_word:
.LFB252:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L285
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L286
.L285:
	cmpq	$0, -16(%rbp)
	jne	.L287
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L287
.L286:
	movl	$1, %eax
	jmp	.L289
.L287:
	movl	$0, %eax
.L289:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE252:
	.size	BN_abs_is_word, .-BN_abs_is_word
	.globl	BN_is_zero
	.type	BN_is_zero, @function
BN_is_zero:
.LFB253:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE253:
	.size	BN_is_zero, .-BN_is_zero
	.globl	BN_is_one
	.type	BN_is_one, @function
BN_is_one:
.LFB254:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	je	.L293
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L293
	movl	$1, %eax
	jmp	.L295
.L293:
	movl	$0, %eax
.L295:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE254:
	.size	BN_is_one, .-BN_is_one
	.globl	BN_is_word
	.type	BN_is_word, @function
BN_is_word:
.LFB255:
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
	call	BN_abs_is_word@PLT
	testl	%eax, %eax
	je	.L297
	cmpq	$0, -16(%rbp)
	je	.L298
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L297
.L298:
	movl	$1, %eax
	jmp	.L300
.L297:
	movl	$0, %eax
.L300:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE255:
	.size	BN_is_word, .-BN_is_word
	.globl	ossl_bn_is_word_fixed_top
	.type	ossl_bn_is_word_fixed_top, @function
ossl_bn_is_word_fixed_top:
.LFB256:
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
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L302
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L303
.L302:
	movl	$0, %eax
	jmp	.L304
.L303:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	constant_time_eq_bn
	movl	$0, %edx
	movl	$1, %esi
	movl	%eax, %edi
	call	constant_time_select_int
	movl	%eax, -4(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L305
.L306:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	constant_time_is_zero_bn
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	constant_time_select_int
	movl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L305:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L306
	movl	-4(%rbp), %eax
.L304:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE256:
	.size	ossl_bn_is_word_fixed_top, .-ossl_bn_is_word_fixed_top
	.globl	BN_is_odd
	.type	BN_is_odd, @function
BN_is_odd:
.LFB257:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L308
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L308
	movl	$1, %eax
	jmp	.L310
.L308:
	movl	$0, %eax
.L310:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE257:
	.size	BN_is_odd, .-BN_is_odd
	.globl	BN_is_negative
	.type	BN_is_negative, @function
BN_is_negative:
.LFB258:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE258:
	.size	BN_is_negative, .-BN_is_negative
	.globl	BN_to_montgomery
	.type	BN_to_montgomery, @function
BN_to_montgomery:
.LFB259:
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
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	BN_mod_mul_montgomery@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE259:
	.size	BN_to_montgomery, .-BN_to_montgomery
	.globl	BN_with_flags
	.type	BN_with_flags, @function
BN_with_flags:
.LFB260:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	andl	$-2, %eax
	orl	%edx, %eax
	orl	$2, %eax
	orl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE260:
	.size	BN_with_flags, .-BN_with_flags
	.globl	BN_GENCB_new
	.type	BN_GENCB_new, @function
BN_GENCB_new:
.LFB261:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$1097, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L317
	movl	$0, %eax
	jmp	.L318
.L317:
	movq	-8(%rbp), %rax
.L318:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE261:
	.size	BN_GENCB_new, .-BN_GENCB_new
	.globl	BN_GENCB_free
	.type	BN_GENCB_free, @function
BN_GENCB_free:
.LFB262:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L322
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1107, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L319
.L322:
	nop
.L319:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE262:
	.size	BN_GENCB_free, .-BN_GENCB_free
	.globl	BN_set_flags
	.type	BN_set_flags, @function
BN_set_flags:
.LFB263:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	orl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 20(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE263:
	.size	BN_set_flags, .-BN_set_flags
	.globl	BN_get_flags
	.type	BN_get_flags, @function
BN_get_flags:
.LFB264:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	andl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE264:
	.size	BN_get_flags, .-BN_get_flags
	.globl	BN_GENCB_set_old
	.type	BN_GENCB_set_old, @function
BN_GENCB_set_old:
.LFB265:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE265:
	.size	BN_GENCB_set_old, .-BN_GENCB_set_old
	.globl	BN_GENCB_set
	.type	BN_GENCB_set, @function
BN_GENCB_set:
.LFB266:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE266:
	.size	BN_GENCB_set, .-BN_GENCB_set
	.globl	BN_GENCB_get_arg
	.type	BN_GENCB_get_arg, @function
BN_GENCB_get_arg:
.LFB267:
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
.LFE267:
	.size	BN_GENCB_get_arg, .-BN_GENCB_get_arg
	.globl	bn_wexpand
	.type	bn_wexpand, @function
bn_wexpand:
.LFB268:
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
	movl	12(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jle	.L331
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_expand2@PLT
	jmp	.L333
.L331:
	movq	-8(%rbp), %rax
.L333:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE268:
	.size	bn_wexpand, .-bn_wexpand
	.globl	bn_correct_top_consttime
	.type	bn_correct_top_consttime, @function
bn_correct_top_consttime:
.LFB269:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L335
.L336:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	negq	%rax
	orq	%rax, -24(%rbp)
	shrq	$63, -24(%rbp)
	negq	-24(%rbp)
	movq	-24(%rbp), %rax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	-4(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edi
	call	constant_time_msb
	andl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_int
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L335:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L336
	movl	-8(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	constant_time_eq_int
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	movl	-12(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	constant_time_select_int
	movq	-40(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movq	-40(%rbp), %rax
	movl	20(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 20(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE269:
	.size	bn_correct_top_consttime, .-bn_correct_top_consttime
	.globl	bn_correct_top
	.type	bn_correct_top, @function
bn_correct_top:
.LFB270:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L338
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L339
.L342:
	subq	$8, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L344
	subl	$1, -12(%rbp)
.L339:
	cmpl	$0, -12(%rbp)
	jg	.L342
	jmp	.L341
.L344:
	nop
.L341:
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
.L338:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L343
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
.L343:
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE270:
	.size	bn_correct_top, .-bn_correct_top
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	const_one.3, @object
	.size	const_one.3, 24
const_one.3:
	.quad	data_one.2
	.long	1
	.long	1
	.long	0
	.long	2
	.section	.rodata
	.align 8
	.type	data_one.2, @object
	.size	data_one.2, 8
data_one.2:
	.quad	1
	.local	nilbn.1
	.comm	nilbn.1,24,16
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"bn_expand_internal"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
