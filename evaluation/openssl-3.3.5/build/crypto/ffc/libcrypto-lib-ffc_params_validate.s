	.file	"ffc_params_validate.c"
	.text
	.globl	ossl_ffc_params_validate_unverifiable_g
	.type	ossl_ffc_params_validate_unverifiable_g, @function
ossl_ffc_params_validate_unverifiable_g:
.LFB358:
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
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L2
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L3
.L2:
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L4
.L3:
	movq	-16(%rbp), %r8
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L4
.L5:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L6
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L4
.L6:
	movl	$1, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	ossl_ffc_params_validate_unverifiable_g, .-ossl_ffc_params_validate_unverifiable_g
	.globl	ossl_ffc_params_FIPS186_4_validate
	.type	ossl_ffc_params_FIPS186_4_validate, @function
ossl_ffc_params_FIPS186_4_validate:
.LFB359:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L8
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L9
.L8:
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cltq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_4_gen_verify@PLT
	addq	$16, %rsp
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	ossl_ffc_params_FIPS186_4_validate, .-ossl_ffc_params_FIPS186_4_validate
	.globl	ossl_ffc_params_FIPS186_2_validate
	.type	ossl_ffc_params_FIPS186_2_validate, @function
ossl_ffc_params_FIPS186_2_validate:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L12
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L13
.L12:
	movq	-48(%rbp), %rax
	movl	$2048, (%rax)
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cltq
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cltq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_2_gen_verify@PLT
	addq	$16, %rsp
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	ossl_ffc_params_FIPS186_2_validate, .-ossl_ffc_params_FIPS186_2_validate
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/ffc/ffc_params_validate.c"
	.text
	.globl	ossl_ffc_params_simple_validate
	.type	ossl_ffc_params_simple_validate, @function
ossl_ffc_params_simple_validate:
.LFB361:
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
	movq	%rcx, -144(%rbp)
	movl	$0, -8(%rbp)
	leaq	-112(%rbp), %rdx
	movl	$0, %eax
	movl	$12, %ecx
	movq	%rdx, %rdi
	rep stosq
	cmpq	$0, -128(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L23
.L16:
	cmpq	$0, -144(%rbp)
	jne	.L18
	leaq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)
.L18:
	movq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_copy@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L23
.L19:
	movl	$2, -48(%rbp)
	movl	$-1, -56(%rbp)
	movq	-128(%rbp), %rax
	movl	64(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L20
	movq	-144(%rbp), %rcx
	movl	-132(%rbp), %edx
	leaq	-112(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_2_validate@PLT
	movl	%eax, -4(%rbp)
	jmp	.L21
.L20:
	movq	-144(%rbp), %rcx
	movl	-132(%rbp), %edx
	leaq	-112(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_4_validate@PLT
	movl	%eax, -4(%rbp)
.L21:
	cmpl	$0, -4(%rbp)
	jne	.L22
	movq	-144(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L22
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L22:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_cleanup@PLT
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	ossl_ffc_params_simple_validate, .-ossl_ffc_params_simple_validate
	.globl	ossl_ffc_params_full_validate
	.type	ossl_ffc_params_full_validate, @function
ossl_ffc_params_full_validate:
.LFB362:
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
	movl	$0, -20(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L25
	movl	$0, %eax
	jmp	.L34
.L25:
	cmpq	$0, -64(%rbp)
	jne	.L27
	leaq	-20(%rbp), %rax
	movq	%rax, -64(%rbp)
.L27:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-48(%rbp), %rax
	movl	64(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L29
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_2_validate@PLT
	jmp	.L34
.L29:
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_4_validate@PLT
	jmp	.L34
.L28:
	movl	$0, -4(%rbp)
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_simple_validate@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L30
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L34
.L31:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	cmpl	$1, %eax
	je	.L32
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$172, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
.L32:
	cmpl	$0, -4(%rbp)
	je	.L33
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	cmpl	$1, %eax
	je	.L33
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$115, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -4(%rbp)
.L33:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
.L30:
	movl	-4(%rbp), %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	ossl_ffc_params_full_validate, .-ossl_ffc_params_full_validate
	.section	.rodata
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 32
__func__.1:
	.string	"ossl_ffc_params_simple_validate"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 30
__func__.0:
	.string	"ossl_ffc_params_full_validate"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
