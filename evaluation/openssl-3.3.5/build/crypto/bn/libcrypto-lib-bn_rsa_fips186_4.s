	.file	"bn_rsa_fips186_4.c"
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
	.section	.rodata
	.align 32
	.type	inv_sqrt_2_val, @object
	.size	inv_sqrt_2_val, 32
inv_sqrt_2_val:
	.quad	-1362430672824461034
	.quad	2121020303797364812
	.quad	6448461645324402335
	.quad	-5402926248376769404
	.globl	ossl_bn_inv_sqrt_2
	.section	.data.rel.ro.local,"aw"
	.align 16
	.type	ossl_bn_inv_sqrt_2, @object
	.size	ossl_bn_inv_sqrt_2, 24
ossl_bn_inv_sqrt_2:
	.quad	inv_sqrt_2_val
	.long	4
	.long	4
	.long	0
	.long	2
	.text
	.type	bn_rsa_fips186_5_aux_prime_MR_rounds, @function
bn_rsa_fips186_5_aux_prime_MR_rounds:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$4095, -4(%rbp)
	jle	.L6
	movl	$44, %eax
	jmp	.L7
.L6:
	cmpl	$3071, -4(%rbp)
	jle	.L8
	movl	$41, %eax
	jmp	.L7
.L8:
	cmpl	$2047, -4(%rbp)
	jle	.L9
	movl	$38, %eax
	jmp	.L7
.L9:
	movl	$0, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	bn_rsa_fips186_5_aux_prime_MR_rounds, .-bn_rsa_fips186_5_aux_prime_MR_rounds
	.type	bn_rsa_fips186_5_prime_MR_rounds, @function
bn_rsa_fips186_5_prime_MR_rounds:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$3071, -4(%rbp)
	jle	.L11
	movl	$4, %eax
	jmp	.L12
.L11:
	cmpl	$2047, -4(%rbp)
	jle	.L13
	movl	$5, %eax
	jmp	.L12
.L13:
	movl	$0, %eax
.L12:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	bn_rsa_fips186_5_prime_MR_rounds, .-bn_rsa_fips186_5_prime_MR_rounds
	.type	bn_rsa_fips186_5_aux_prime_min_size, @function
bn_rsa_fips186_5_aux_prime_min_size:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$4095, -4(%rbp)
	jle	.L15
	movl	$201, %eax
	jmp	.L16
.L15:
	cmpl	$3071, -4(%rbp)
	jle	.L17
	movl	$171, %eax
	jmp	.L16
.L17:
	cmpl	$2047, -4(%rbp)
	jle	.L18
	movl	$141, %eax
	jmp	.L16
.L18:
	movl	$0, %eax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	bn_rsa_fips186_5_aux_prime_min_size, .-bn_rsa_fips186_5_aux_prime_min_size
	.type	bn_rsa_fips186_5_aux_prime_max_sum_size_for_prob_primes, @function
bn_rsa_fips186_5_aux_prime_max_sum_size_for_prob_primes:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$4095, -4(%rbp)
	jle	.L20
	movl	$2030, %eax
	jmp	.L21
.L20:
	cmpl	$3071, -4(%rbp)
	jle	.L22
	movl	$1518, %eax
	jmp	.L21
.L22:
	cmpl	$2047, -4(%rbp)
	jle	.L23
	movl	$1007, %eax
	jmp	.L21
.L23:
	movl	$0, %eax
.L21:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	bn_rsa_fips186_5_aux_prime_max_sum_size_for_prob_primes, .-bn_rsa_fips186_5_aux_prime_max_sum_size_for_prob_primes
	.type	bn_rsa_fips186_4_find_aux_prob_prime, @function
bn_rsa_fips186_4_find_aux_prob_prime:
.LFB165:
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
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L32:
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_bn_check_generated_prime@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L34
	cmpl	$0, -12(%rbp)
	js	.L35
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L36
	jmp	.L32
.L34:
	nop
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	movl	$1, -4(%rbp)
	jmp	.L30
.L35:
	nop
	jmp	.L30
.L36:
	nop
.L30:
	movl	-4(%rbp), %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	bn_rsa_fips186_4_find_aux_prob_prime, .-bn_rsa_fips186_4_find_aux_prob_prime
	.globl	ossl_bn_rsa_fips186_4_gen_prob_primes
	.type	ossl_bn_rsa_fips186_4_gen_prob_primes, @function
ossl_bn_rsa_fips186_4_gen_prob_primes:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L38
	cmpq	$0, -80(%rbp)
	jne	.L39
.L38:
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	cmpq	$0, -88(%rbp)
	jne	.L41
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	jmp	.L42
.L41:
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
.L42:
	cmpq	$0, -96(%rbp)
	jne	.L43
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	jmp	.L44
.L43:
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
.L44:
	cmpq	$0, -112(%rbp)
	jne	.L45
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	jmp	.L46
.L45:
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
.L46:
	cmpq	$0, 16(%rbp)
	jne	.L47
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	jmp	.L48
.L47:
	movq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
.L48:
	cmpq	$0, -32(%rbp)
	je	.L63
	cmpq	$0, -40(%rbp)
	je	.L63
	cmpq	$0, -48(%rbp)
	je	.L63
	cmpq	$0, -56(%rbp)
	je	.L63
	movl	24(%rbp), %eax
	movl	%eax, %edi
	call	bn_rsa_fips186_5_aux_prime_min_size
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L64
	movl	24(%rbp), %eax
	movl	%eax, %edi
	call	bn_rsa_fips186_5_aux_prime_MR_rounds
	movl	%eax, -64(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L53
	movq	40(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	je	.L65
.L53:
	cmpq	$0, 16(%rbp)
	jne	.L54
	movq	40(%rbp), %rdx
	movl	-60(%rbp), %esi
	movq	-56(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	je	.L66
.L54:
	movq	48(%rbp), %rdi
	movl	-64(%rbp), %ecx
	movq	40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_rsa_fips186_4_find_aux_prob_prime
	testl	%eax, %eax
	je	.L67
	movq	48(%rbp), %rdi
	movl	-64(%rbp), %ecx
	movq	40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_rsa_fips186_4_find_aux_prob_prime
	testl	%eax, %eax
	je	.L67
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	%eax, %ebx
	movl	24(%rbp), %eax
	movl	%eax, %edi
	call	bn_rsa_fips186_5_aux_prime_max_sum_size_for_prob_primes
	cmpl	%eax, %ebx
	jge	.L68
	movl	24(%rbp), %r8d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	48(%rbp)
	pushq	40(%rbp)
	pushq	32(%rbp)
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_bn_rsa_fips186_4_derive_prime@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L69
	movl	$1, -20(%rbp)
	jmp	.L51
.L63:
	nop
	jmp	.L51
.L64:
	nop
	jmp	.L51
.L65:
	nop
	jmp	.L51
.L66:
	nop
	jmp	.L51
.L67:
	nop
	jmp	.L51
.L68:
	nop
	jmp	.L51
.L69:
	nop
.L51:
	cmpq	$0, -88(%rbp)
	jne	.L59
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
.L59:
	cmpq	$0, -96(%rbp)
	jne	.L60
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
.L60:
	cmpq	$0, -112(%rbp)
	jne	.L61
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
.L61:
	cmpq	$0, 16(%rbp)
	jne	.L62
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
.L62:
	movq	40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-20(%rbp), %eax
.L40:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	ossl_bn_rsa_fips186_4_gen_prob_primes, .-ossl_bn_rsa_fips186_4_gen_prob_primes
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/bn/bn_rsa_fips186_4.c"
	.text
	.globl	ossl_bn_rsa_fips186_4_derive_prime
	.type	ossl_bn_rsa_fips186_4_derive_prime, @function
ossl_bn_rsa_fips186_4_derive_prime:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	%r9d, -140(%rbp)
	movl	$0, -4(%rbp)
	movl	-140(%rbp), %eax
	sarl	%eax
	movl	%eax, -12(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L99
	cmpq	$0, -120(%rbp)
	je	.L73
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L100
.L73:
	cmpq	$0, -120(%rbp)
	jne	.L74
	movq	ossl_bn_inv_sqrt_2@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L101
	movq	ossl_bn_inv_sqrt_2@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	-12(%rbp), %edx
	subl	%eax, %edx
	movq	ossl_bn_inv_sqrt_2@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	je	.L102
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	je	.L102
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L102
.L74:
	movq	-128(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	je	.L103
	movq	24(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L103
	movq	24(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L103
	movq	24(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L103
	movq	24(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L103
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L103
	movq	24(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L103
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L79
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L104
.L79:
	movl	-140(%rbp), %eax
	movl	%eax, %edi
	call	bn_rsa_fips186_5_prime_MR_rounds
	movl	%eax, -76(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, -80(%rbp)
.L95:
	cmpq	$0, -120(%rbp)
	jne	.L80
	movq	24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	testl	%eax, %eax
	je	.L105
	movq	-24(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L105
.L80:
	movq	24(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_sub@PLT
	testl	%eax, %eax
	je	.L106
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L106
	movl	$0, -8(%rbp)
.L94:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -12(%rbp)
	jge	.L84
	cmpq	$0, -120(%rbp)
	jne	.L107
	jmp	.L97
.L84:
	movq	32(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L108
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L108
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_are_coprime@PLT
	testl	%eax, %eax
	je	.L89
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_bn_check_generated_prime@PLT
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jg	.L109
	cmpl	$0, -84(%rbp)
	js	.L110
.L89:
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L92
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$392, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L72
.L92:
	movq	-56(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L111
	jmp	.L94
.L97:
	jmp	.L95
.L109:
	nop
.L91:
	movl	$1, -4(%rbp)
	movq	32(%rbp), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	jmp	.L72
.L99:
	nop
	jmp	.L72
.L100:
	nop
	jmp	.L72
.L101:
	nop
	jmp	.L72
.L102:
	nop
	jmp	.L72
.L103:
	nop
	jmp	.L72
.L104:
	nop
	jmp	.L72
.L105:
	nop
	jmp	.L72
.L106:
	nop
	jmp	.L72
.L107:
	nop
	jmp	.L72
.L108:
	nop
	jmp	.L72
.L110:
	nop
	jmp	.L72
.L111:
	nop
.L72:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	ossl_bn_rsa_fips186_4_derive_prime, .-ossl_bn_rsa_fips186_4_derive_prime
	.section	.rodata
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 35
__func__.0:
	.string	"ossl_bn_rsa_fips186_4_derive_prime"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
