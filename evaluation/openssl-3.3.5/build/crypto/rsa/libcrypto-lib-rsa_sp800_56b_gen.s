	.file	"rsa_sp800_56b_gen.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/rsa/rsa_sp800_56b_gen.c"
	.text
	.globl	ossl_rsa_fips186_4_gen_prob_primes
	.type	ossl_rsa_fips186_4_gen_prob_primes, @function
ossl_rsa_fips186_4_gen_prob_primes:
.LFB388:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	cmpl	$2047, -148(%rbp)
	jg	.L2
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$89, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_public_exponent@PLT
	testl	%eax, %eax
	jne	.L4
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$94, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$178, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L22
	cmpq	$0, -16(%rbp)
	je	.L22
	cmpq	$0, -24(%rbp)
	je	.L22
	movq	-16(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L8
	call	BN_secure_new@PLT
	movq	-136(%rbp), %rdx
	movq	%rax, 64(%rdx)
.L8:
	movq	-136(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L9
	call	BN_secure_new@PLT
	movq	-136(%rbp), %rdx
	movq	%rax, 72(%rdx)
.L9:
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-136(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-136(%rbp), %rax
	movq	72(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	movq	-80(%rbp), %r9
	movq	-72(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	$8, %rsp
	pushq	-176(%rbp)
	pushq	-168(%rbp)
	pushq	-160(%rbp)
	movl	-148(%rbp), %edi
	pushq	%rdi
	pushq	-88(%rbp)
	movq	%rax, %rdi
	call	ossl_bn_rsa_fips186_4_gen_prob_primes@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L24
.L12:
	movq	-136(%rbp), %rax
	movq	72(%rax), %rax
	movq	-104(%rbp), %r9
	movq	-96(%rbp), %r8
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	subq	$8, %rsp
	pushq	-176(%rbp)
	pushq	-168(%rbp)
	pushq	-160(%rbp)
	movl	-148(%rbp), %edi
	pushq	%rdi
	pushq	-112(%rbp)
	movq	%rax, %rdi
	call	ossl_bn_rsa_fips186_4_gen_prob_primes@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L25
	movl	-148(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_pminusq_diff@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	js	.L26
	cmpl	$0, -116(%rbp)
	je	.L27
	movq	-136(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	64(%rax), %rsi
	movl	-148(%rbp), %ecx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_pminusq_diff@PLT
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	js	.L28
	cmpl	$0, -116(%rbp)
	jne	.L29
	jmp	.L16
.L27:
	nop
.L16:
	jmp	.L12
.L29:
	nop
	movq	-136(%rbp), %rax
	movl	216(%rax), %eax
	leal	1(%rax), %edx
	movq	-136(%rbp), %rax
	movl	%edx, 216(%rax)
	movl	$1, -4(%rbp)
	jmp	.L7
.L22:
	nop
	jmp	.L7
.L23:
	nop
	jmp	.L7
.L24:
	nop
	jmp	.L7
.L25:
	nop
	jmp	.L7
.L26:
	nop
	jmp	.L7
.L28:
	nop
.L7:
	cmpq	$0, -16(%rbp)
	je	.L20
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
.L20:
	cmpq	$0, -24(%rbp)
	je	.L21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
.L21:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	ossl_rsa_fips186_4_gen_prob_primes, .-ossl_rsa_fips186_4_gen_prob_primes
	.globl	ossl_rsa_sp800_56b_validate_strength
	.type	ossl_rsa_sp800_56b_validate_strength, @function
ossl_rsa_sp800_56b_validate_strength:
.LFB389:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ossl_ifc_ffc_compute_security_bits@PLT
	movzwl	%ax, %eax
	movl	%eax, -4(%rbp)
	cmpl	$-1, -24(%rbp)
	je	.L31
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L31
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L31:
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	ossl_rsa_sp800_56b_validate_strength, .-ossl_rsa_sp800_56b_validate_strength
	.type	rsa_validate_rng_strength, @function
rsa_validate_rng_strength:
.LFB390:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movl	$1, %eax
.L35:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	rsa_validate_rng_strength, .-rsa_validate_rng_strength
	.globl	ossl_rsa_sp800_56b_derive_params_from_pq
	.type	ossl_rsa_sp800_56b_derive_params_from_pq, @function
ossl_rsa_sp800_56b_derive_params_from_pq:
.LFB391:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$-1, -4(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L57
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
	movq	72(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-16(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rax
	pushq	-40(%rbp)
	pushq	-24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_rsa_get_lcm@PLT
	addq	$16, %rsp
	cmpl	$1, %eax
	jne	.L58
	cmpq	$0, -72(%rbp)
	je	.L40
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L59
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	call	BN_secure_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L60
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L61
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	-60(%rbp), %edx
	sarl	%edx
	cmpl	%edx, %eax
	jg	.L44
	movl	$0, -4(%rbp)
	jmp	.L38
.L44:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	call	BN_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 40(%rdx)
.L45:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L62
.L40:
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L47
	call	BN_secure_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 80(%rdx)
.L47:
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	-80(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L64
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L50
	call	BN_secure_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 88(%rdx)
.L50:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	-80(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L66
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	call	BN_secure_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-56(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L68
	movq	-56(%rbp), %rax
	movl	216(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 216(%rax)
	movl	$1, -4(%rbp)
	jmp	.L38
.L57:
	nop
	jmp	.L38
.L58:
	nop
	jmp	.L38
.L59:
	nop
	jmp	.L38
.L60:
	nop
	jmp	.L38
.L61:
	nop
	jmp	.L38
.L62:
	nop
	jmp	.L38
.L63:
	nop
	jmp	.L38
.L64:
	nop
	jmp	.L38
.L65:
	nop
	jmp	.L38
.L66:
	nop
	jmp	.L38
.L67:
	nop
	jmp	.L38
.L68:
	nop
.L38:
	cmpl	$1, -4(%rbp)
	je	.L55
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 80(%rax)
.L55:
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
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	ossl_rsa_sp800_56b_derive_params_from_pq, .-ossl_rsa_sp800_56b_derive_params_from_pq
	.globl	ossl_rsa_sp800_56b_generate_key
	.type	ossl_rsa_sp800_56b_generate_key, @function
ossl_rsa_sp800_56b_generate_key:
.LFB392:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movl	-60(%rbp), %eax
	movl	$-1, %esi
	movl	%eax, %edi
	call	ossl_rsa_sp800_56b_validate_strength@PLT
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	RAND_get0_private@PLT
	movq	%rax, %rdx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	rsa_validate_rng_strength
	testl	%eax, %eax
	jne	.L72
	movl	$0, %eax
	jmp	.L71
.L72:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L73
	movl	$0, %eax
	jmp	.L71
.L73:
	cmpq	$0, -72(%rbp)
	jne	.L74
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L86
	movq	-16(%rbp), %rax
	movl	$65537, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	jne	.L83
	jmp	.L86
.L74:
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.L83:
	movq	-80(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_rsa_fips186_4_gen_prob_primes@PLT
	testl	%eax, %eax
	je	.L87
	cmpq	$0, -32(%rbp)
	jne	.L79
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L79
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 72(%rax)
.L79:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_derive_params_from_pq@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L88
	cmpl	$0, -44(%rbp)
	jg	.L89
	jmp	.L83
.L89:
	nop
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_pairwise_test@PLT
	movl	%eax, -4(%rbp)
	jmp	.L77
.L86:
	nop
	jmp	.L77
.L87:
	nop
	jmp	.L77
.L88:
	nop
.L77:
	cmpq	$0, -72(%rbp)
	jne	.L84
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L84:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE392:
	.size	ossl_rsa_sp800_56b_generate_key, .-ossl_rsa_sp800_56b_generate_key
	.globl	ossl_rsa_sp800_56b_pairwise_test
	.type	ossl_rsa_sp800_56b_pairwise_test, @function
ossl_rsa_sp800_56b_pairwise_test:
.LFB393:
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
	cmpq	$0, -24(%rbp)
	je	.L96
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L93
	movq	-40(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L93
	movq	-40(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L93
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L93
	movl	$1, %eax
	jmp	.L94
.L93:
	movl	$0, %eax
.L94:
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L97
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$450, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$177, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L92
.L96:
	nop
	jmp	.L92
.L97:
	nop
.L92:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE393:
	.size	ossl_rsa_sp800_56b_pairwise_test, .-ossl_rsa_sp800_56b_pairwise_test
	.section	.rodata
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 35
__func__.2:
	.string	"ossl_rsa_fips186_4_gen_prob_primes"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 37
__func__.1:
	.string	"ossl_rsa_sp800_56b_validate_strength"
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 33
__func__.0:
	.string	"ossl_rsa_sp800_56b_pairwise_test"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
