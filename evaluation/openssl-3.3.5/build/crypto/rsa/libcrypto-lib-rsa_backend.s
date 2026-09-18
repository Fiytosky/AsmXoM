	.file	"rsa_backend.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB518:
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
.LFE518:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB519:
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
.LFE519:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	sk_RSA_PRIME_INFO_num, @function
sk_RSA_PRIME_INFO_num:
.LFB539:
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
.LFE539:
	.size	sk_RSA_PRIME_INFO_num, .-sk_RSA_PRIME_INFO_num
	.type	sk_RSA_PRIME_INFO_value, @function
sk_RSA_PRIME_INFO_value:
.LFB540:
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
.LFE540:
	.size	sk_RSA_PRIME_INFO_value, .-sk_RSA_PRIME_INFO_value
	.type	sk_RSA_PRIME_INFO_new_reserve, @function
sk_RSA_PRIME_INFO_new_reserve:
.LFB543:
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
	call	OPENSSL_sk_new_reserve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	sk_RSA_PRIME_INFO_new_reserve, .-sk_RSA_PRIME_INFO_new_reserve
	.type	sk_RSA_PRIME_INFO_push, @function
sk_RSA_PRIME_INFO_push:
.LFB549:
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
.LFE549:
	.size	sk_RSA_PRIME_INFO_push, .-sk_RSA_PRIME_INFO_push
	.type	sk_BIGNUM_num, @function
sk_BIGNUM_num:
.LFB564:
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
.LFE564:
	.size	sk_BIGNUM_num, .-sk_BIGNUM_num
	.type	sk_BIGNUM_value, @function
sk_BIGNUM_value:
.LFB565:
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
.LFE565:
	.size	sk_BIGNUM_value, .-sk_BIGNUM_value
	.type	sk_BIGNUM_new_null, @function
sk_BIGNUM_new_null:
.LFB567:
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
.LFE567:
	.size	sk_BIGNUM_new_null, .-sk_BIGNUM_new_null
	.type	sk_BIGNUM_free, @function
sk_BIGNUM_free:
.LFB570:
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
.LFE570:
	.size	sk_BIGNUM_free, .-sk_BIGNUM_free
	.type	sk_BIGNUM_push, @function
sk_BIGNUM_push:
.LFB574:
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
.LFE574:
	.size	sk_BIGNUM_push, .-sk_BIGNUM_push
	.type	sk_BIGNUM_pop, @function
sk_BIGNUM_pop:
.LFB576:
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
.LFE576:
	.size	sk_BIGNUM_pop, .-sk_BIGNUM_pop
	.type	sk_BIGNUM_pop_free, @function
sk_BIGNUM_pop_free:
.LFB578:
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
.LFE578:
	.size	sk_BIGNUM_pop_free, .-sk_BIGNUM_pop_free
	.type	collect_numbers, @function
collect_numbers:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movl	$0, -4(%rbp)
	jmp	.L28
.L33:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L29
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L27
.L30:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_push
	testl	%eax, %eax
	jne	.L29
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	$0, %eax
	jmp	.L27
.L29:
	addl	$1, -4(%rbp)
.L28:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L33
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	collect_numbers, .-collect_numbers
	.section	.rodata
.LC0:
	.string	"n"
.LC1:
	.string	"e"
.LC2:
	.string	"../crypto/rsa/rsa_backend.c"
.LC3:
	.string	"rsa-derive-from-pq"
.LC4:
	.string	"d"
.LC5:
	.string	"rsa-factor1"
.LC6:
	.string	"rsa-factor2"
	.align 8
.LC7:
	.string	"There are %d, %d, %d elements left on our factors, exps, coeffs stacks\n"
	.text
	.globl	ossl_rsa_fromdata
	.type	ossl_rsa_fromdata, @function
ossl_rsa_fromdata:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	%edx, -180(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -148(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L35
	movl	$0, %eax
	jmp	.L59
.L35:
	leaq	.LC0(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -88(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L37
	leaq	-128(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L37
	cmpq	$0, -96(%rbp)
	je	.L37
	leaq	-136(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	jne	.L38
.L37:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L38:
	cmpl	$0, -180(%rbp)
	je	.L40
	leaq	.LC3(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L41
	leaq	-148(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L60
.L41:
	leaq	.LC4(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L42
	leaq	-144(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L42:
	movl	-148(%rbp), %eax
	testl	%eax, %eax
	je	.L40
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L61
	leaq	.LC5(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -104(%rbp)
	leaq	.LC6(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L44
	leaq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L44
	cmpq	$0, -64(%rbp)
	je	.L44
	leaq	-120(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	jne	.L40
.L44:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$111, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L40:
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	je	.L62
	movq	$0, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -128(%rbp)
	cmpl	$0, -76(%rbp)
	je	.L46
	call	sk_BIGNUM_new_null
	movq	%rax, -32(%rbp)
	movq	ossl_rsa_mp_factor_names@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	collect_numbers
	testl	%eax, %eax
	je	.L63
	call	sk_BIGNUM_new_null
	movq	%rax, -40(%rbp)
	movq	ossl_rsa_mp_exp_names@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	collect_numbers
	testl	%eax, %eax
	je	.L63
	call	sk_BIGNUM_new_null
	movq	%rax, -48(%rbp)
	movq	ossl_rsa_mp_coeff_names@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	collect_numbers
	testl	%eax, %eax
	je	.L63
	movl	-148(%rbp), %eax
	testl	%eax, %eax
	je	.L49
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	testl	%eax, %eax
	jne	.L49
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	testl	%eax, %eax
	jne	.L49
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	cmpl	$1, %eax
	jg	.L50
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$140, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L50:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	cmpl	$2, %eax
	jle	.L51
	cmpq	$0, -88(%rbp)
	je	.L52
	cmpq	$0, -24(%rbp)
	jne	.L51
.L52:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L51:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	cmpl	$2, %eax
	jne	.L53
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, %rcx
	movq	-168(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	testl	%eax, %eax
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L54:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_pop
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_pop
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_bits@PLT
	movl	%eax, %esi
	movq	-56(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_derive_params_from_pq@PLT
	testl	%eax, %eax
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L53:
	movq	-168(%rbp), %rax
	movq	48(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %r12d
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_bits@PLT
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-168(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rbx, %rcx
	movl	%r12d, %edx
	movq	%rax, %rdi
	call	ossl_rsa_multiprime_derive@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$191, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L56:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_set0_all_params@PLT
	testl	%eax, %eax
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$200, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L49:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	testl	%eax, %eax
	je	.L57
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_set0_all_params@PLT
	testl	%eax, %eax
	je	.L65
	jmp	.L57
.L64:
	nop
.L57:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	testl	%eax, %eax
	jne	.L58
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	testl	%eax, %eax
	jne	.L58
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	testl	%eax, %eax
	je	.L46
.L58:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$224, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %r12d
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %edx
	leaq	.LC7(%rip), %rax
	movl	%r12d, %r9d
	movl	%ebx, %r8d
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L46:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_free
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_free
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_free
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	$1, %eax
	jmp	.L59
.L60:
	nop
	jmp	.L39
.L61:
	nop
	jmp	.L39
.L62:
	nop
	jmp	.L39
.L63:
	nop
	jmp	.L39
.L65:
	nop
.L39:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	BN_clear_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_pop_free
	movq	BN_clear_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_pop_free
	movq	BN_clear_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_pop_free
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	$0, %eax
.L59:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	ossl_rsa_fromdata, .-ossl_rsa_fromdata
	.type	sk_BIGNUM_const_new_null, @function
sk_BIGNUM_const_new_null:
.LFB594:
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
.LFE594:
	.size	sk_BIGNUM_const_new_null, .-sk_BIGNUM_const_new_null
	.type	sk_BIGNUM_const_free, @function
sk_BIGNUM_const_free:
.LFB597:
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
.LFE597:
	.size	sk_BIGNUM_const_free, .-sk_BIGNUM_const_free
	.globl	ossl_rsa_todata
	.type	ossl_rsa_todata, @function
ossl_rsa_todata:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	call	sk_BIGNUM_const_new_null
	movq	%rax, -16(%rbp)
	call	sk_BIGNUM_const_new_null
	movq	%rax, -24(%rbp)
	call	sk_BIGNUM_const_new_null
	movq	%rax, -32(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L78
	cmpq	$0, -16(%rbp)
	je	.L78
	cmpq	$0, -24(%rbp)
	je	.L78
	cmpq	$0, -32(%rbp)
	je	.L78
	leaq	-40(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_key@PLT
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_all_params@PLT
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rdi
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	je	.L79
	movq	-56(%rbp), %rdx
	leaq	.LC1(%rip), %rdi
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	je	.L79
	cmpl	$0, -92(%rbp)
	je	.L75
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L75
	movq	-40(%rbp), %rdx
	leaq	.LC4(%rip), %rdi
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	je	.L80
	movq	-16(%rbp), %rdx
	movq	ossl_rsa_mp_factor_names@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_multi_key_bn@PLT
	testl	%eax, %eax
	je	.L80
	movq	-24(%rbp), %rdx
	movq	ossl_rsa_mp_exp_names@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_multi_key_bn@PLT
	testl	%eax, %eax
	je	.L80
	movq	-32(%rbp), %rdx
	movq	ossl_rsa_mp_coeff_names@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_multi_key_bn@PLT
	testl	%eax, %eax
	je	.L80
.L75:
	movl	$1, -4(%rbp)
	jmp	.L72
.L78:
	nop
	jmp	.L72
.L79:
	nop
	jmp	.L72
.L80:
	nop
.L72:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_const_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_const_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_const_free
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	ossl_rsa_todata, .-ossl_rsa_todata
	.section	.rodata
.LC8:
	.string	"digest"
.LC9:
	.string	"mgf"
.LC10:
	.string	"mgf1-digest"
.LC11:
	.string	"saltlen"
	.text
	.globl	ossl_rsa_pss_params_30_todata
	.type	ossl_rsa_pss_params_30_todata, @function
ossl_rsa_pss_params_30_todata:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	jne	.L82
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_hashalg@PLT
	movl	%eax, -28(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_maskgenalg@PLT
	movl	%eax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_maskgenhashalg@PLT
	movl	%eax, -36(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_saltlen@PLT
	movl	%eax, -40(%rbp)
	movl	$0, %edi
	call	ossl_rsa_pss_params_30_hashalg@PLT
	movl	%eax, -44(%rbp)
	movl	$0, %edi
	call	ossl_rsa_pss_params_30_maskgenalg@PLT
	movl	%eax, -48(%rbp)
	movl	$0, %edi
	call	ossl_rsa_pss_params_30_maskgenhashalg@PLT
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	je	.L83
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rsa_oaeppss_nid2name@PLT
	movq	%rax, -8(%rbp)
	jmp	.L84
.L83:
	movq	$0, -8(%rbp)
.L84:
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	.L85
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rsa_oaeppss_nid2name@PLT
	movq	%rax, -16(%rbp)
	jmp	.L86
.L85:
	movq	$0, -16(%rbp)
.L86:
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L87
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rsa_oaeppss_nid2name@PLT
	movq	%rax, -24(%rbp)
	jmp	.L88
.L87:
	movq	$0, -24(%rbp)
.L88:
	leaq	.LC8(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L89
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	je	.L90
.L89:
	cmpq	$0, -16(%rbp)
	je	.L91
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	je	.L90
.L91:
	cmpq	$0, -24(%rbp)
	je	.L92
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	je	.L90
.L92:
	movl	-40(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	jne	.L82
.L90:
	movl	$0, %eax
	jmp	.L93
.L82:
	movl	$1, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	ossl_rsa_pss_params_30_todata, .-ossl_rsa_pss_params_30_todata
	.section	.rodata
.LC12:
	.string	"properties"
	.text
	.globl	ossl_rsa_pss_params_30_fromdata
	.type	ossl_rsa_pss_params_30_fromdata, @function
ossl_rsa_pss_params_30_fromdata:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L95
	movl	$0, %eax
	jmp	.L121
.L95:
	leaq	.LC12(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC8(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC9(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	leaq	.LC10(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	leaq	.LC11(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L97
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L97
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L97:
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L98
	cmpq	$0, -48(%rbp)
	jne	.L99
	cmpq	$0, -56(%rbp)
	jne	.L99
	cmpq	$0, -64(%rbp)
	jne	.L99
	cmpq	$0, -72(%rbp)
	je	.L98
.L99:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_defaults@PLT
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L121
.L100:
	movq	-128(%rbp), %rax
	movl	$1, (%rax)
.L98:
	cmpq	$0, -56(%rbp)
	je	.L101
	movl	$0, %edi
	call	ossl_rsa_pss_params_30_maskgenalg@PLT
	movl	%eax, -76(%rbp)
	movq	$0, -88(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L102
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.L103
.L102:
	leaq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L103
	movl	$0, %eax
	jmp	.L121
.L103:
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rsa_mgf_nid2name@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L101
	movl	$0, %eax
	jmp	.L121
.L101:
	cmpq	$0, -48(%rbp)
	je	.L106
	movq	$0, -96(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L107
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.L108
.L107:
	leaq	-96(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_ptr@PLT
	testl	%eax, %eax
	je	.L122
.L108:
	movq	-96(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L123
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_oaeppss_md2nid@PLT
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_hashalg@PLT
	testl	%eax, %eax
	je	.L123
.L106:
	cmpq	$0, -64(%rbp)
	je	.L113
	movq	$0, -104(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L114
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.L115
.L114:
	leaq	-104(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_ptr@PLT
	testl	%eax, %eax
	je	.L124
.L115:
	movq	-104(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L125
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_oaeppss_md2nid@PLT
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_maskgenhashalg@PLT
	testl	%eax, %eax
	je	.L125
.L113:
	cmpq	$0, -72(%rbp)
	je	.L119
	leaq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	je	.L126
	movl	-80(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_saltlen@PLT
	testl	%eax, %eax
	je	.L126
.L119:
	movl	$1, -28(%rbp)
	jmp	.L112
.L122:
	nop
	jmp	.L112
.L123:
	nop
	jmp	.L112
.L124:
	nop
	jmp	.L112
.L125:
	nop
	jmp	.L112
.L126:
	nop
.L112:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-28(%rbp), %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	ossl_rsa_pss_params_30_fromdata, .-ossl_rsa_pss_params_30_fromdata
	.globl	ossl_rsa_is_foreign
	.type	ossl_rsa_is_foreign, @function
ossl_rsa_is_foreign:
.LFB619:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get_method@PLT
	movq	%rax, %rbx
	call	RSA_PKCS1_OpenSSL@PLT
	cmpq	%rax, %rbx
	je	.L129
.L128:
	movl	$1, %eax
	jmp	.L130
.L129:
	movl	$0, %eax
.L130:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	ossl_rsa_is_foreign, .-ossl_rsa_is_foreign
	.type	rsa_bn_dup_check, @function
rsa_bn_dup_check:
.LFB620:
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
	je	.L132
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L132
	movl	$0, %eax
	jmp	.L133
.L132:
	movl	$1, %eax
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	rsa_bn_dup_check, .-rsa_bn_dup_check
	.globl	ossl_rsa_dup
	.type	ossl_rsa_dup, @function
ossl_rsa_dup:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_is_foreign@PLT
	testl	%eax, %eax
	je	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_rsa_new_with_ctx@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L137
	movl	$0, %eax
	jmp	.L136
.L137:
	movl	-76(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L138
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$40, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rsa_bn_dup_check
	testl	%eax, %eax
	je	.L157
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$48, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rsa_bn_dup_check
	testl	%eax, %eax
	je	.L158
.L138:
	movl	-76(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L141
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$56, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rsa_bn_dup_check
	testl	%eax, %eax
	je	.L159
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$64, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rsa_bn_dup_check
	testl	%eax, %eax
	je	.L160
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$72, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rsa_bn_dup_check
	testl	%eax, %eax
	je	.L161
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$80, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rsa_bn_dup_check
	testl	%eax, %eax
	je	.L162
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$88, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rsa_bn_dup_check
	testl	%eax, %eax
	je	.L163
	movq	-72(%rbp), %rax
	movq	96(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$96, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rsa_bn_dup_check
	testl	%eax, %eax
	je	.L164
.L141:
	movq	-72(%rbp), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-72(%rbp), %rax
	movl	164(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 164(%rax)
	movq	-32(%rbp), %rcx
	movq	-72(%rbp), %rsi
	movq	104(%rsi), %rax
	movq	112(%rsi), %rdx
	movq	%rax, 104(%rcx)
	movq	%rdx, 112(%rcx)
	movl	120(%rsi), %eax
	movl	%eax, 120(%rcx)
	movl	-76(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L147
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_num
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.L147
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	sk_RSA_PRIME_INFO_new_reserve
	movq	-32(%rbp), %rdx
	movq	%rax, 136(%rdx)
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L165
	movl	$0, -20(%rbp)
	jmp	.L149
.L154:
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$522, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L166
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_push
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rsa_bn_dup_check
	testl	%eax, %eax
	je	.L167
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rsa_bn_dup_check
	testl	%eax, %eax
	je	.L168
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	rsa_bn_dup_check
	testl	%eax, %eax
	je	.L169
	addl	$1, -20(%rbp)
.L149:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L154
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_multip_calc_product@PLT
	testl	%eax, %eax
	je	.L170
.L147:
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L155
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_dup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 128(%rdx)
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L155
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L155
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	128(%rdx), %rbx
	movq	%rax, %rdi
	call	ossl_x509_algor_mgf1_decode@PLT
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L171
.L155:
	movq	-72(%rbp), %rax
	leaq	144(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rsi
	movl	$9, %edi
	call	CRYPTO_dup_ex_data@PLT
	testl	%eax, %eax
	je	.L172
	movq	-32(%rbp), %rax
	jmp	.L136
.L157:
	nop
	jmp	.L140
.L158:
	nop
	jmp	.L140
.L159:
	nop
	jmp	.L140
.L160:
	nop
	jmp	.L140
.L161:
	nop
	jmp	.L140
.L162:
	nop
	jmp	.L140
.L163:
	nop
	jmp	.L140
.L164:
	nop
	jmp	.L140
.L165:
	nop
	jmp	.L140
.L166:
	nop
	jmp	.L140
.L167:
	nop
	jmp	.L140
.L168:
	nop
	jmp	.L140
.L169:
	nop
	jmp	.L140
.L170:
	nop
	jmp	.L140
.L171:
	nop
	jmp	.L140
.L172:
	nop
.L140:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	$0, %eax
.L136:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	ossl_rsa_dup, .-ossl_rsa_dup
	.globl	ossl_rsa_pss_decode
	.type	ossl_rsa_pss_decode, @function
ossl_rsa_pss_decode:
.LFB622:
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
	movq	8(%rax), %rbx
	call	RSA_PSS_PARAMS_it@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L174
	movl	$0, %eax
	jmp	.L175
.L174:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L176
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_x509_algor_mgf1_decode@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L176
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_free@PLT
	movl	$0, %eax
	jmp	.L175
.L176:
	movq	-24(%rbp), %rax
.L175:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	ossl_rsa_pss_decode, .-ossl_rsa_pss_decode
	.type	ossl_rsa_sync_to_pss_params_30, @function
ossl_rsa_sync_to_pss_params_30:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L178
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_pss_params@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L178
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_pss_params_30@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L178
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-44(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_rsa_pss_get_param_unverified@PLT
	testl	%eax, %eax
	jne	.L179
	movl	$0, %eax
	jmp	.L183
.L179:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -24(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_defaults@PLT
	testl	%eax, %eax
	je	.L181
	movl	-20(%rbp), %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_hashalg@PLT
	testl	%eax, %eax
	je	.L181
	movl	-24(%rbp), %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_maskgenhashalg@PLT
	testl	%eax, %eax
	je	.L181
	movl	-44(%rbp), %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_saltlen@PLT
	testl	%eax, %eax
	je	.L181
	movl	-48(%rbp), %edx
	leaq	-80(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_trailerfield@PLT
	testl	%eax, %eax
	jne	.L182
.L181:
	movl	$0, %eax
	jmp	.L183
.L182:
	movq	-16(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	-64(%rbp), %eax
	movl	%eax, 16(%rcx)
.L178:
	movl	$1, %eax
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	ossl_rsa_sync_to_pss_params_30, .-ossl_rsa_sync_to_pss_params_30
	.globl	ossl_rsa_pss_get_param_unverified
	.type	ossl_rsa_pss_get_param_unverified, @function
ossl_rsa_pss_get_param_unverified:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_defaults@PLT
	cmpq	$0, -40(%rbp)
	jne	.L185
	movl	$0, %eax
	jmp	.L193
.L185:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_x509_algor_get_md@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L187
	movl	$0, %eax
	jmp	.L193
.L187:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_x509_algor_get_md@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L188
	movl	$0, %eax
	jmp	.L193
.L188:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L189
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L190
.L189:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_saltlen@PLT
	movq	-64(%rbp), %rdx
	movl	%eax, (%rdx)
.L190:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L191
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L192
.L191:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_trailerfield@PLT
	movq	-72(%rbp), %rdx
	movl	%eax, (%rdx)
.L192:
	movl	$1, %eax
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	ossl_rsa_pss_get_param_unverified, .-ossl_rsa_pss_get_param_unverified
	.globl	ossl_rsa_param_decode
	.type	ossl_rsa_param_decode, @function
ossl_rsa_param_decode:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$912, %eax
	je	.L195
	movl	$1, %eax
	jmp	.L202
.L195:
	movl	-28(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L197
	movl	$1, %eax
	jmp	.L202
.L197:
	movl	-28(%rbp), %eax
	cmpl	$16, %eax
	je	.L198
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$663, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$149, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L202
.L198:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_decode@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L199
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_set0_pss_params@PLT
	testl	%eax, %eax
	jne	.L200
.L199:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_PSS_PARAMS_free@PLT
	movl	$0, %eax
	jmp	.L202
.L200:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sync_to_pss_params_30
	testl	%eax, %eax
	jne	.L201
	movl	$0, %eax
	jmp	.L202
.L201:
	movl	$1, %eax
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	ossl_rsa_param_decode, .-ossl_rsa_param_decode
	.globl	ossl_rsa_key_from_pkcs8
	.type	ossl_rsa_key_from_pkcs8, @function
ossl_rsa_key_from_pkcs8:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rsi
	leaq	-32(%rbp), %rcx
	leaq	-20(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	jne	.L204
	movl	$0, %eax
	jmp	.L212
.L204:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_RSAPrivateKey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L206
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$688, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L212
.L206:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_param_decode@PLT
	testl	%eax, %eax
	jne	.L207
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	$0, %eax
	jmp	.L212
.L207:
	movq	-8(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_clear_flags@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$6, %eax
	je	.L208
	cmpl	$912, %eax
	je	.L209
	jmp	.L211
.L208:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	RSA_set_flags@PLT
	jmp	.L211
.L209:
	movq	-8(%rbp), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	RSA_set_flags@PLT
	nop
.L211:
	movq	-8(%rbp), %rax
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ossl_rsa_key_from_pkcs8, .-ossl_rsa_key_from_pkcs8
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 18
__func__.2:
	.string	"ossl_rsa_fromdata"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"ossl_rsa_param_decode"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"ossl_rsa_key_from_pkcs8"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
