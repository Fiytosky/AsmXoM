	.file	"rsa_sp800_56b_check.c"
	.text
	.globl	ossl_rsa_check_crt_components
	.type	ossl_rsa_check_crt_components, @function
ossl_rsa_check_crt_components:
.LFB146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L2
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L2
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L3
.L2:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L5
.L4:
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$1, %eax
	jmp	.L6
.L3:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L7
	movq	-16(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movl	$1, -4(%rbp)
	jmp	.L8
.L7:
	movl	$0, -4(%rbp)
.L8:
	cmpl	$0, -4(%rbp)
	je	.L9
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L9
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L9
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L9
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L9
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L9
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L9
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L9
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L9
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L9
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L9
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L9
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L9
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L9
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L9
	movq	-40(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	96(%rax), %rsi
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L9
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movl	$0, %eax
.L10:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	ossl_rsa_check_crt_components, .-ossl_rsa_check_crt_components
	.globl	ossl_rsa_check_prime_factor_range
	.type	ossl_rsa_check_prime_factor_range, @function
ossl_rsa_check_prime_factor_range:
.LFB147:
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
	movl	$0, -4(%rbp)
	sarl	-28(%rbp)
	movq	ossl_bn_inv_sqrt_2@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	-28(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -28(%rbp)
	je	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L20
	movq	ossl_bn_inv_sqrt_2@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L21
	cmpl	$0, -8(%rbp)
	js	.L17
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	jne	.L18
	jmp	.L15
.L17:
	movl	-8(%rbp), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L22
.L18:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L23
	movl	$1, -4(%rbp)
	jmp	.L15
.L20:
	nop
	jmp	.L15
.L21:
	nop
	jmp	.L15
.L22:
	nop
	jmp	.L15
.L23:
	nop
.L15:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	ossl_rsa_check_prime_factor_range, .-ossl_rsa_check_prime_factor_range
	.globl	ossl_rsa_check_prime_factor
	.type	ossl_rsa_check_prime_factor, @function
ossl_rsa_check_prime_factor:
.LFB148:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	cmpl	$1, %eax
	jne	.L25
	movq	-64(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor_range@PLT
	cmpl	$1, %eax
	je	.L26
.L25:
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L28
	movq	-16(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movl	$1, -4(%rbp)
	jmp	.L29
.L28:
	movl	$0, -4(%rbp)
.L29:
	cmpl	$0, -4(%rbp)
	je	.L30
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L30
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L30
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_gcd@PLT
	testl	%eax, %eax
	je	.L30
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L30
	movl	$1, %eax
	jmp	.L31
.L30:
	movl	$0, %eax
.L31:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	ossl_rsa_check_prime_factor, .-ossl_rsa_check_prime_factor
	.globl	ossl_rsa_check_private_exponent
	.type	ossl_rsa_check_private_exponent, @function
ossl_rsa_check_private_exponent:
.LFB149:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	-76(%rbp), %edx
	sarl	%edx
	cmpl	%edx, %eax
	jg	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L35
	movq	-16(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-56(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movl	$1, -4(%rbp)
	jmp	.L36
.L35:
	movl	$0, -4(%rbp)
.L36:
	cmpl	$0, -4(%rbp)
	je	.L37
	movq	-72(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-24(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-88(%rbp), %rax
	pushq	-48(%rbp)
	pushq	-32(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_rsa_get_lcm@PLT
	addq	$16, %rsp
	cmpl	$1, %eax
	jne	.L37
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L37
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L37
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L37
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	ossl_rsa_check_private_exponent, .-ossl_rsa_check_private_exponent
	.globl	ossl_rsa_check_public_exponent
	.type	ossl_rsa_check_public_exponent, @function
ossl_rsa_check_public_exponent:
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
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L40
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L40
	movl	$1, %eax
	jmp	.L42
.L40:
	movl	$0, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	ossl_rsa_check_public_exponent, .-ossl_rsa_check_public_exponent
	.globl	ossl_rsa_check_pminusq_diff
	.type	ossl_rsa_check_pminusq_diff, @function
ossl_rsa_check_pminusq_diff:
.LFB151:
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
	movl	%ecx, -44(%rbp)
	movl	-44(%rbp), %eax
	sarl	%eax
	subl	$100, %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$-1, %eax
	jmp	.L45
.L44:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L46
	movl	$0, %eax
	jmp	.L45
.L46:
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$-1, %eax
	jmp	.L45
.L47:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -4(%rbp)
	setl	%al
	movzbl	%al, %eax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	ossl_rsa_check_pminusq_diff, .-ossl_rsa_check_pminusq_diff
	.globl	ossl_rsa_get_lcm
	.type	ossl_rsa_get_lcm, @function
ossl_rsa_get_lcm:
.LFB152:
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
	movq	%r9, -48(%rbp)
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L49
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L49
	movq	-8(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L49
	movq	-8(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_gcd@PLT
	testl	%eax, %eax
	je	.L49
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L49
	movl	$1, %eax
	jmp	.L51
.L49:
	movl	$0, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE152:
	.size	ossl_rsa_get_lcm, .-ossl_rsa_get_lcm
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/rsa/rsa_sp800_56b_check.c"
	.text
	.globl	ossl_rsa_sp800_56b_check_public
	.type	ossl_rsa_sp800_56b_check_public, @function
ossl_rsa_sp800_56b_check_public:
.LFB153:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L54
.L53:
	movl	$0, %eax
	jmp	.L66
.L54:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -28(%rbp)
	cmpl	$16384, -28(%rbp)
	jle	.L56
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$293, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L66
.L56:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$308, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$174, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L66
.L57:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_public_exponent@PLT
	testl	%eax, %eax
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$313, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$178, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L66
.L58:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L67
	cmpq	$0, -24(%rbp)
	je	.L67
	call	ossl_bn_get0_small_factors@PLT
	movq	%rax, %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	BN_gcd@PLT
	testl	%eax, %eax
	je	.L62
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L63
.L62:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$328, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$174, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L61
.L63:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_bn_miller_rabin_is_prime@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L64
	movl	-32(%rbp), %eax
	cmpl	$2, %eax
	je	.L65
	cmpl	$511, -28(%rbp)
	jg	.L64
	movl	-32(%rbp), %eax
	cmpl	$1, %eax
	je	.L65
.L64:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$341, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$174, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
	jmp	.L61
.L65:
	movl	$1, -4(%rbp)
	jmp	.L61
.L67:
	nop
.L61:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE153:
	.size	ossl_rsa_sp800_56b_check_public, .-ossl_rsa_sp800_56b_check_public
	.globl	ossl_rsa_sp800_56b_check_private
	.type	ossl_rsa_sp800_56b_check_private, @function
ossl_rsa_sp800_56b_check_private:
.LFB154:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L70
.L69:
	movl	$0, %eax
	jmp	.L71
.L70:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L72
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L72
	movl	$1, %eax
	jmp	.L71
.L72:
	movl	$0, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE154:
	.size	ossl_rsa_sp800_56b_check_private, .-ossl_rsa_sp800_56b_check_private
	.globl	ossl_rsa_sp800_56b_check_keypair
	.type	ossl_rsa_sp800_56b_check_keypair, @function
ossl_rsa_sp800_56b_check_keypair:
.LFB155:
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
	movl	%ecx, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L76
.L75:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$386, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$175, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L77
.L76:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ossl_rsa_sp800_56b_validate_strength@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L77
.L78:
	cmpq	$0, -48(%rbp)
	je	.L79
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L79
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$397, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$175, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L77
.L79:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_public_exponent@PLT
	testl	%eax, %eax
	jne	.L80
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$404, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$178, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L77
.L80:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -56(%rbp)
	je	.L81
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$409, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$171, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L77
.L81:
	cmpl	$0, -56(%rbp)
	jle	.L82
	movl	-56(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L83
.L82:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$414, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$171, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L77
.L83:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L84
	movl	$0, %eax
	jmp	.L77
.L84:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L91
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L91
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L88
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$428, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$175, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L87
.L88:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	-56(%rbp), %edx
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor@PLT
	testl	%eax, %eax
	je	.L89
	movq	-40(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	-56(%rbp), %edx
	movq	%rax, %rdi
	call	ossl_rsa_check_prime_factor@PLT
	testl	%eax, %eax
	je	.L89
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	movl	-56(%rbp), %ecx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_pminusq_diff@PLT
	testl	%eax, %eax
	jle	.L89
	movq	-16(%rbp), %rdx
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_check_private_exponent@PLT
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_crt_components@PLT
	testl	%eax, %eax
	je	.L89
	movl	$1, %eax
	jmp	.L90
.L89:
	movl	$0, %eax
.L90:
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	je	.L92
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$441, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$171, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L87
.L91:
	nop
	jmp	.L87
.L92:
	nop
.L87:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE155:
	.size	ossl_rsa_sp800_56b_check_keypair, .-ossl_rsa_sp800_56b_check_keypair
	.section	.rodata
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 32
__func__.1:
	.string	"ossl_rsa_sp800_56b_check_public"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 33
__func__.0:
	.string	"ossl_rsa_sp800_56b_check_keypair"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
