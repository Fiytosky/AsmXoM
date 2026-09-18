	.file	"rsa_pk1.c"
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
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB425:
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
.LFE425:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB426:
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
.LFE426:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_pk1.c"
	.text
	.globl	RSA_padding_add_PKCS1_type_1
	.type	RSA_padding_add_PKCS1_type_1, @function
RSA_padding_add_PKCS1_type_1:
.LFB471:
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
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	subl	$10, %eax
	cmpl	%eax, -32(%rbp)
	jl	.L26
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$39, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$1, (%rax)
	movl	-28(%rbp), %eax
	subl	$3, %eax
	subl	-32(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	RSA_padding_add_PKCS1_type_1, .-RSA_padding_add_PKCS1_type_1
	.globl	RSA_padding_check_PKCS1_type_1
	.type	RSA_padding_check_PKCS1_type_1, @function
RSA_padding_check_PKCS1_type_1:
.LFB472:
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
	movl	%ecx, -48(%rbp)
	movl	%r8d, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$10, -60(%rbp)
	jg	.L29
	movl	$-1, %eax
	jmp	.L30
.L29:
	movl	-60(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.L31
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L32
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L30
.L32:
	subl	$1, -48(%rbp)
.L31:
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -60(%rbp)
	jne	.L33
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	cmpb	$1, %al
	je	.L34
.L33:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L30
.L34:
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L35
.L39:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$-1, %al
	je	.L36
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L37
	addq	$1, -16(%rbp)
	jmp	.L38
.L37:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L30
.L36:
	addq	$1, -16(%rbp)
	addl	$1, -4(%rbp)
.L35:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L39
.L38:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L40
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L30
.L40:
	cmpl	$7, -4(%rbp)
	jg	.L41
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L30
.L41:
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	subl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.L42
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L30
.L42:
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-20(%rbp), %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	RSA_padding_check_PKCS1_type_1, .-RSA_padding_check_PKCS1_type_1
	.globl	ossl_rsa_padding_add_PKCS1_type_2_ex
	.type	ossl_rsa_padding_add_PKCS1_type_2_ex, @function
ossl_rsa_padding_add_PKCS1_type_2_ex:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -56(%rbp)
	movl	-52(%rbp), %eax
	subl	$10, %eax
	cmpl	%eax, -56(%rbp)
	jl	.L44
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$133, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L45
.L44:
	cmpl	$0, -56(%rbp)
	jns	.L46
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$136, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L45
.L46:
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$2, (%rax)
	movl	-52(%rbp), %eax
	subl	$3, %eax
	subl	-56(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L47
	movl	$0, %eax
	jmp	.L45
.L47:
	movl	$0, -4(%rbp)
	jmp	.L48
.L52:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L49
.L51:
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L50
	movl	$0, %eax
	jmp	.L45
.L50:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L51
.L49:
	addq	$1, -16(%rbp)
	addl	$1, -4(%rbp)
.L48:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L52
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$0, (%rax)
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	ossl_rsa_padding_add_PKCS1_type_2_ex, .-ossl_rsa_padding_add_PKCS1_type_2_ex
	.globl	RSA_padding_add_PKCS1_type_2
	.type	RSA_padding_add_PKCS1_type_2, @function
RSA_padding_add_PKCS1_type_2:
.LFB474:
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
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %esi
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_rsa_padding_add_PKCS1_type_2_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	RSA_padding_add_PKCS1_type_2, .-RSA_padding_add_PKCS1_type_2
	.globl	RSA_padding_check_PKCS1_type_2
	.type	RSA_padding_check_PKCS1_type_2, @function
RSA_padding_check_PKCS1_type_2:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -80(%rbp)
	movl	%r8d, -92(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	$-1, -48(%rbp)
	cmpl	$0, -76(%rbp)
	jle	.L56
	cmpl	$0, -80(%rbp)
	jg	.L57
.L56:
	movl	$-1, %eax
	jmp	.L58
.L57:
	movl	-80(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jg	.L59
	cmpl	$10, -92(%rbp)
	jg	.L60
.L59:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$190, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L58
.L60:
	movl	-92(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$194, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L61
	movl	$-1, %eax
	jmp	.L58
.L61:
	movl	-80(%rbp), %eax
	cltq
	addq	%rax, -88(%rbp)
	movl	-92(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L62
.L63:
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	notl	%eax
	movl	%eax, -56(%rbp)
	movl	-80(%rbp), %eax
	movl	-56(%rbp), %edx
	andl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -80(%rbp)
	movl	-56(%rbp), %eax
	andl	$1, %eax
	negq	%rax
	addq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movl	-56(%rbp), %edx
	subq	$1, -32(%rbp)
	andl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	addl	$1, -20(%rbp)
.L62:
	movl	-20(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L63
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	constant_time_eq
	andl	%eax, -52(%rbp)
	movl	$0, -36(%rbp)
	movl	$2, -20(%rbp)
	jmp	.L64
.L65:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	notl	%eax
	andl	-60(%rbp), %eax
	movl	-40(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_int
	movl	%eax, -40(%rbp)
	movl	-60(%rbp), %eax
	orl	%eax, -36(%rbp)
	addl	$1, -20(%rbp)
.L64:
	movl	-20(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L65
	movl	-40(%rbp), %eax
	movl	$10, %esi
	movl	%eax, %edi
	call	constant_time_ge
	andl	%eax, -52(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-92(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %edx
	movl	-76(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_ge
	andl	%eax, -52(%rbp)
	movl	-92(%rbp), %eax
	leal	-11(%rax), %ebx
	movl	-76(%rbp), %eax
	movl	-92(%rbp), %edx
	subl	$11, %edx
	movl	%eax, %esi
	movl	%edx, %edi
	call	constant_time_lt
	movl	%eax, %ecx
	movl	-76(%rbp), %eax
	movl	%eax, %edx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	constant_time_select_int
	movl	%eax, -76(%rbp)
	movl	$1, -44(%rbp)
	jmp	.L66
.L69:
	movl	-92(%rbp), %eax
	subl	$11, %eax
	subl	-48(%rbp), %eax
	andl	-44(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	constant_time_eq
	notl	%eax
	movl	%eax, -56(%rbp)
	movl	$11, -20(%rbp)
	jmp	.L67
.L68:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %ecx
	movl	-44(%rbp), %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-56(%rbp), %eax
	movzbl	%al, %eax
	movl	-20(%rbp), %esi
	movslq	%esi, %rdi
	movq	-32(%rbp), %rsi
	leaq	(%rdi,%rsi), %rbx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
.L67:
	movl	-92(%rbp), %eax
	subl	-44(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L68
	sall	-44(%rbp)
.L66:
	movl	-92(%rbp), %eax
	subl	$11, %eax
	cmpl	%eax, -44(%rbp)
	jl	.L69
	movl	$0, -20(%rbp)
	jmp	.L70
.L71:
	movl	-48(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_lt
	andl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %eax
	cltq
	leaq	11(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-56(%rbp), %eax
	movzbl	%al, %eax
	movl	-20(%rbp), %esi
	movslq	%esi, %rdi
	movq	-72(%rbp), %rsi
	leaq	(%rdi,%rsi), %rbx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
.L70:
	movl	-20(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L71
	movl	-92(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$264, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	-52(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edi
	call	err_clear_last_constant_time@PLT
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %eax
	movl	$-1, %edx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_int
.L58:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	RSA_padding_check_PKCS1_type_2, .-RSA_padding_check_PKCS1_type_2
	.section	.rodata
.LC1:
	.string	"sha256"
	.text
	.type	ossl_rsa_prf, @function
ossl_rsa_prf:
.LFB476:
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
	movl	%r8d, -120(%rbp)
	movq	%r9, -136(%rbp)
	movl	16(%rbp), %eax
	movw	%ax, -140(%rbp)
	movl	$-1, -8(%rbp)
	movw	$0, -10(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	-116(%rbp), %eax
	leal	0(,%rax,8), %edx
	movzwl	-140(%rbp), %eax
	cmpl	%eax, %edx
	je	.L73
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$296, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	-8(%rbp), %eax
	jmp	.L88
.L73:
	movzwl	-140(%rbp), %eax
	shrw	$8, %ax
	movb	%al, -36(%rbp)
	movzwl	-140(%rbp), %eax
	movb	%al, -35(%rbp)
	call	HMAC_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L75
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$305, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L75:
	leaq	.LC1(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L77
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$318, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L77:
	movq	-24(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	jg	.L78
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L78:
	movl	$0, -4(%rbp)
	jmp	.L79
.L87:
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	jg	.L80
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$329, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L80:
	movzwl	-10(%rbp), %eax
	shrw	$8, %ax
	movb	%al, -34(%rbp)
	movzwl	-10(%rbp), %eax
	movb	%al, -33(%rbp)
	leaq	-34(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	jg	.L81
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$337, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L81:
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movq	-128(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	jg	.L82
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$341, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L82:
	leaq	-36(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	jg	.L83
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$345, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L83:
	movl	$32, -84(%rbp)
	movl	-4(%rbp), %eax
	addl	$31, %eax
	cmpl	%eax, -116(%rbp)
	jg	.L84
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	jg	.L85
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$357, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L85:
	movl	-116(%rbp), %eax
	subl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-112(%rbp), %rax
	addq	%rax, %rcx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	jmp	.L86
.L84:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-84(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	jg	.L86
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$363, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L86:
	addl	$32, -4(%rbp)
	movzwl	-10(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -10(%rbp)
.L79:
	movl	-4(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L87
	movl	$0, -8(%rbp)
.L76:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-8(%rbp), %eax
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	ossl_rsa_prf, .-ossl_rsa_prf
	.section	.rodata
.LC2:
	.string	"message"
.LC3:
	.string	"length"
	.text
	.globl	ossl_rsa_padding_check_PKCS1_type_2
	.type	ossl_rsa_padding_check_PKCS1_type_2, @function
ossl_rsa_padding_check_PKCS1_type_2:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$376, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movl	%edx, -356(%rbp)
	movq	%rcx, -368(%rbp)
	movl	%r8d, -360(%rbp)
	movl	%r9d, -372(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$-1, -24(%rbp)
	movl	$0, -40(%rbp)
	movl	-372(%rbp), %eax
	cmpl	-360(%rbp), %eax
	jne	.L90
	cmpl	$0, -356(%rbp)
	jle	.L90
	cmpl	$0, -360(%rbp)
	jg	.L91
.L90:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$421, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L105
.L91:
	movl	-360(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$426, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L93
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$428, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L105
.L93:
	movl	-360(%rbp), %eax
	sall	$3, %eax
	movzwl	%ax, %edi
	movq	16(%rbp), %r8
	leaq	.LC2(%rip), %rcx
	movl	-360(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-344(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%r8, %r9
	movl	$7, %r8d
	movq	%rax, %rdi
	call	ossl_rsa_prf
	addq	$16, %rsp
	testl	%eax, %eax
	js	.L106
	movq	16(%rbp), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	-336(%rbp), %rsi
	movq	-344(%rbp), %rax
	subq	$8, %rsp
	pushq	$2048
	movq	%rcx, %r9
	movl	$6, %r8d
	movq	%rdx, %rcx
	movl	$256, %edx
	movq	%rax, %rdi
	call	ossl_rsa_prf
	addq	$16, %rsp
	testl	%eax, %eax
	js	.L107
	movl	-360(%rbp), %eax
	subl	$10, %eax
	movw	%ax, -54(%rbp)
	movzwl	-54(%rbp), %eax
	movw	%ax, -56(%rbp)
	movzwl	-56(%rbp), %eax
	shrw	%ax
	orw	%ax, -56(%rbp)
	movzwl	-56(%rbp), %eax
	shrw	$2, %ax
	orw	%ax, -56(%rbp)
	movzwl	-56(%rbp), %eax
	shrw	$4, %ax
	orw	%ax, -56(%rbp)
	movzwl	-56(%rbp), %eax
	shrw	$8, %ax
	orw	%ax, -56(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L97
.L98:
	movl	-28(%rbp), %eax
	cltq
	movzbl	-336(%rbp,%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltq
	movzbl	-336(%rbp,%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movw	%ax, -70(%rbp)
	movzwl	-56(%rbp), %eax
	andw	%ax, -70(%rbp)
	movzwl	-70(%rbp), %ebx
	movzwl	-54(%rbp), %edx
	movzwl	-70(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_lt
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movl	%ebx, %esi
	movl	%ecx, %edi
	call	constant_time_select_int
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -28(%rbp)
.L97:
	cmpl	$255, -28(%rbp)
	jle	.L98
	movl	-360(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-368(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	movl	%eax, -60(%rbp)
	movq	-368(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	constant_time_eq
	andl	%eax, -60(%rbp)
	movl	$0, -36(%rbp)
	movl	$2, -28(%rbp)
	jmp	.L99
.L100:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-368(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	movl	%eax, -68(%rbp)
	movl	-36(%rbp), %eax
	notl	%eax
	andl	-68(%rbp), %eax
	movl	-40(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_int
	movl	%eax, -40(%rbp)
	movl	-68(%rbp), %eax
	orl	%eax, -36(%rbp)
	addl	$1, -28(%rbp)
.L99:
	movl	-28(%rbp), %eax
	cmpl	-360(%rbp), %eax
	jl	.L100
	movl	-40(%rbp), %eax
	movl	$10, %esi
	movl	%eax, %edi
	call	constant_time_ge
	andl	%eax, -60(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-372(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, %edx
	movl	-356(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_ge
	andl	%eax, -60(%rbp)
	movl	-52(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-60(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_int
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L101
.L103:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-368(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-60(%rbp), %eax
	movzbl	%al, %eax
	movl	-32(%rbp), %esi
	movslq	%esi, %rdi
	movq	-352(%rbp), %rsi
	leaq	(%rdi,%rsi), %rbx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movb	%al, (%rbx)
	addl	$1, -28(%rbp)
	addl	$1, -32(%rbp)
.L101:
	movl	-28(%rbp), %eax
	cmpl	-360(%rbp), %eax
	jge	.L102
	movl	-32(%rbp), %eax
	cmpl	-356(%rbp), %eax
	jl	.L103
.L102:
	movl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L95
.L106:
	nop
	jmp	.L95
.L107:
	nop
.L95:
	cmpl	$0, -24(%rbp)
	jns	.L104
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$521, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L104:
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$522, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-24(%rbp), %eax
.L105:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	ossl_rsa_padding_check_PKCS1_type_2, .-ossl_rsa_padding_check_PKCS1_type_2
	.globl	ossl_rsa_padding_check_PKCS1_type_2_TLS
	.type	ossl_rsa_padding_check_PKCS1_type_2_TLS, @function
ossl_rsa_padding_check_PKCS1_type_2_TLS:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movl	%r9d, -124(%rbp)
	cmpq	$58, -120(%rbp)
	jbe	.L109
	cmpq	$47, -104(%rbp)
	ja	.L110
.L109:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$562, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L118
.L110:
	leaq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$48, %edx
	movq	%rax, %rdi
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L112
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$572, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L118
.L112:
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	constant_time_is_zero
	movl	%eax, -24(%rbp)
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	constant_time_eq
	andl	%eax, -24(%rbp)
	movl	$2, -20(%rbp)
	jmp	.L113
.L114:
	movl	-20(%rbp), %edx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	constant_time_is_zero_8
	movzbl	%al, %eax
	notl	%eax
	andl	%eax, -24(%rbp)
	addl	$1, -20(%rbp)
.L113:
	movl	-20(%rbp), %edx
	movq	-120(%rbp), %rax
	subq	$49, %rax
	cmpq	%rax, %rdx
	jb	.L114
	movq	-120(%rbp), %rax
	leaq	-49(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	constant_time_is_zero_8
	movzbl	%al, %eax
	andl	%eax, -24(%rbp)
	movl	-124(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	leaq	-48(%rax), %rcx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq
	movl	%eax, -28(%rbp)
	movl	-124(%rbp), %eax
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	leaq	-47(%rax), %rcx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq
	andl	%eax, -28(%rbp)
	cmpl	$0, 16(%rbp)
	jle	.L115
	movl	16(%rbp), %eax
	sarl	$8, %eax
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	leaq	-48(%rax), %rcx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq
	movl	%eax, -32(%rbp)
	movl	16(%rbp), %eax
	movzbl	%al, %edx
	movq	-120(%rbp), %rax
	leaq	-47(%rax), %rcx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	constant_time_eq
	andl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	orl	%eax, -28(%rbp)
.L115:
	movl	-28(%rbp), %eax
	andl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L116
.L117:
	movl	-20(%rbp), %eax
	movzbl	-80(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-20(%rbp), %ecx
	movq	-120(%rbp), %rax
	addq	%rcx, %rax
	leaq	-48(%rax), %rcx
	movq	-112(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ecx
	movl	-24(%rbp), %eax
	movzbl	%al, %eax
	movl	-20(%rbp), %edi
	movq	-96(%rbp), %rsi
	leaq	(%rdi,%rsi), %rbx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select_8
	movb	%al, (%rbx)
	addl	$1, -20(%rbp)
.L116:
	cmpl	$47, -20(%rbp)
	jbe	.L117
	movl	$48, %eax
.L118:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	ossl_rsa_padding_check_PKCS1_type_2_TLS, .-ossl_rsa_padding_check_PKCS1_type_2_TLS
	.section	.rodata
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 29
__func__.6:
	.string	"RSA_padding_add_PKCS1_type_1"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 31
__func__.5:
	.string	"RSA_padding_check_PKCS1_type_1"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 37
__func__.4:
	.string	"ossl_rsa_padding_add_PKCS1_type_2_ex"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 31
__func__.3:
	.string	"RSA_padding_check_PKCS1_type_2"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 13
__func__.2:
	.string	"ossl_rsa_prf"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 36
__func__.1:
	.string	"ossl_rsa_padding_check_PKCS1_type_2"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 40
__func__.0:
	.string	"ossl_rsa_padding_check_PKCS1_type_2_TLS"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
