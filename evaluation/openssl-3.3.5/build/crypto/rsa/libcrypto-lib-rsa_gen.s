	.file	"rsa_gen.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
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
	.type	sk_RSA_PRIME_INFO_value, @function
sk_RSA_PRIME_INFO_value:
.LFB408:
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
.LFE408:
	.size	sk_RSA_PRIME_INFO_value, .-sk_RSA_PRIME_INFO_value
	.type	sk_RSA_PRIME_INFO_new_reserve, @function
sk_RSA_PRIME_INFO_new_reserve:
.LFB411:
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
.LFE411:
	.size	sk_RSA_PRIME_INFO_new_reserve, .-sk_RSA_PRIME_INFO_new_reserve
	.type	sk_RSA_PRIME_INFO_push, @function
sk_RSA_PRIME_INFO_push:
.LFB417:
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
.LFE417:
	.size	sk_RSA_PRIME_INFO_push, .-sk_RSA_PRIME_INFO_push
	.type	sk_RSA_PRIME_INFO_pop_free, @function
sk_RSA_PRIME_INFO_pop_free:
.LFB421:
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
.LFE421:
	.size	sk_RSA_PRIME_INFO_pop_free, .-sk_RSA_PRIME_INFO_pop_free
	.globl	RSA_generate_key_ex
	.type	RSA_generate_key_ex, @function
RSA_generate_key_ex:
.LFB432:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	104(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L20
.L19:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$2, %edx
	movq	%rax, %rdi
	call	RSA_generate_multi_prime_key@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	RSA_generate_key_ex, .-RSA_generate_key_ex
	.globl	RSA_generate_multi_prime_key
	.type	RSA_generate_multi_prime_key, @function
RSA_generate_multi_prime_key:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	112(%rax), %r9
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L24
	cmpl	$2, -16(%rbp)
	jne	.L25
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	104(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L23
.L25:
	movl	$0, %eax
	jmp	.L23
.L24:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsa_keygen
	addq	$16, %rsp
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	RSA_generate_multi_prime_key, .-RSA_generate_multi_prime_key
	.type	sk_BIGNUM_num, @function
sk_BIGNUM_num:
.LFB434:
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
.LFE434:
	.size	sk_BIGNUM_num, .-sk_BIGNUM_num
	.type	sk_BIGNUM_value, @function
sk_BIGNUM_value:
.LFB435:
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
.LFE435:
	.size	sk_BIGNUM_value, .-sk_BIGNUM_value
	.type	sk_BIGNUM_new_null, @function
sk_BIGNUM_new_null:
.LFB437:
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
.LFE437:
	.size	sk_BIGNUM_new_null, .-sk_BIGNUM_new_null
	.type	sk_BIGNUM_free, @function
sk_BIGNUM_free:
.LFB440:
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
.LFE440:
	.size	sk_BIGNUM_free, .-sk_BIGNUM_free
	.type	sk_BIGNUM_delete, @function
sk_BIGNUM_delete:
.LFB442:
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
.LFE442:
	.size	sk_BIGNUM_delete, .-sk_BIGNUM_delete
	.type	sk_BIGNUM_pop_free, @function
sk_BIGNUM_pop_free:
.LFB448:
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
.LFE448:
	.size	sk_BIGNUM_pop_free, .-sk_BIGNUM_pop_free
	.type	sk_BIGNUM_insert, @function
sk_BIGNUM_insert:
.LFB449:
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
.LFE449:
	.size	sk_BIGNUM_insert, .-sk_BIGNUM_insert
	.globl	ossl_rsa_multiprime_derive
	.type	ossl_rsa_multiprime_derive, @function
ossl_rsa_multiprime_derive:
.LFB459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movl	%esi, -188(%rbp)
	movl	%edx, -192(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -208(%rbp)
	movq	%r9, -216(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -96(%rbp)
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L89
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	call	sk_BIGNUM_new_null
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L90
	call	sk_BIGNUM_new_null
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L91
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.L92
	movq	-144(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-152(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-160(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-184(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L93
	movq	-208(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, -128(%rbp)
	movq	-208(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, -136(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L45
.L58:
	cmpl	$0, -92(%rbp)
	je	.L46
	cmpl	$1, -92(%rbp)
	je	.L47
	jmp	.L88
.L46:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L94
	movq	-160(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-184(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-168(%rbp), %rcx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	jne	.L95
	jmp	.L40
.L47:
	movq	-168(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L96
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L97
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %edx
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_insert
	testl	%eax, %eax
	je	.L98
	movq	$0, -88(%rbp)
	jmp	.L51
.L88:
	movl	-92(%rbp), %edx
	movq	-208(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L99
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L100
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %edx
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_insert
	testl	%eax, %eax
	je	.L101
	movq	$0, -88(%rbp)
	jmp	.L51
.L95:
	nop
.L51:
	addl	$1, -92(%rbp)
.L45:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	cmpl	%eax, -92(%rbp)
	jl	.L58
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L102
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L103
	movq	-168(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L104
	movl	$2, -92(%rbp)
	jmp	.L62
.L67:
	movl	-92(%rbp), %edx
	movq	-208(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, -104(%rbp)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L105
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L106
	movq	-168(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L107
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_insert
	testl	%eax, %eax
	je	.L108
	movq	$0, -40(%rbp)
	addl	$1, -92(%rbp)
.L62:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	cmpl	%eax, -92(%rbp)
	jl	.L67
	call	BN_secure_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L109
	call	BN_secure_new@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L110
	movq	-184(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-168(%rbp), %rsi
	movq	-152(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L111
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_insert
	testl	%eax, %eax
	je	.L112
	movq	$0, -64(%rbp)
	movq	-184(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-168(%rbp), %rsi
	movq	-160(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L113
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_insert
	testl	%eax, %eax
	je	.L114
	movq	$0, -72(%rbp)
	movl	$2, -92(%rbp)
	jmp	.L74
.L78:
	movl	-92(%rbp), %eax
	leal	-2(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, -120(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L115
	movq	-184(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-168(%rbp), %rsi
	movq	-120(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L116
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_insert
	testl	%eax, %eax
	je	.L117
	movq	$0, -48(%rbp)
	addl	$1, -92(%rbp)
.L74:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	cmpl	%eax, -92(%rbp)
	jl	.L78
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L118
	movq	-208(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, %rbx
	movq	-208(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, %rsi
	movq	-168(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L119
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_insert
	testl	%eax, %eax
	je	.L120
	movq	$0, -80(%rbp)
	movl	$2, -92(%rbp)
	jmp	.L82
.L86:
	movl	-92(%rbp), %eax
	leal	-2(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, -112(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L121
	movl	-92(%rbp), %edx
	movq	-208(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_value
	movq	%rax, %rdi
	movq	-168(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L122
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_insert
	testl	%eax, %eax
	je	.L123
	movq	$0, -56(%rbp)
	addl	$1, -92(%rbp)
.L82:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	cmpl	%eax, -92(%rbp)
	jl	.L86
	movl	$1, -96(%rbp)
	jmp	.L40
.L89:
	nop
	jmp	.L40
.L90:
	nop
	jmp	.L40
.L91:
	nop
	jmp	.L40
.L92:
	nop
	jmp	.L40
.L93:
	nop
	jmp	.L40
.L94:
	nop
	jmp	.L40
.L96:
	nop
	jmp	.L40
.L97:
	nop
	jmp	.L40
.L98:
	nop
	jmp	.L40
.L99:
	nop
	jmp	.L40
.L100:
	nop
	jmp	.L40
.L101:
	nop
	jmp	.L40
.L102:
	nop
	jmp	.L40
.L103:
	nop
	jmp	.L40
.L104:
	nop
	jmp	.L40
.L105:
	nop
	jmp	.L40
.L106:
	nop
	jmp	.L40
.L107:
	nop
	jmp	.L40
.L108:
	nop
	jmp	.L40
.L109:
	nop
	jmp	.L40
.L110:
	nop
	jmp	.L40
.L111:
	nop
	jmp	.L40
.L112:
	nop
	jmp	.L40
.L113:
	nop
	jmp	.L40
.L114:
	nop
	jmp	.L40
.L115:
	nop
	jmp	.L40
.L116:
	nop
	jmp	.L40
.L117:
	nop
	jmp	.L40
.L118:
	nop
	jmp	.L40
.L119:
	nop
	jmp	.L40
.L120:
	nop
	jmp	.L40
.L121:
	nop
	jmp	.L40
.L122:
	nop
	jmp	.L40
.L123:
	nop
.L40:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	BN_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_pop_free
	movq	BN_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_pop_free
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	-96(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	ossl_rsa_multiprime_derive, .-ossl_rsa_multiprime_derive
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_gen.c"
	.text
	.type	rsa_multiprime_keygen, @function
rsa_multiprime_keygen:
.LFB460:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -200(%rbp)
	movl	%esi, -204(%rbp)
	movl	%edx, -208(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movl	$-1, -76(%rbp)
	cmpl	$511, -204(%rbp)
	jg	.L125
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$280, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L206
.L125:
	cmpq	$0, -216(%rbp)
	jne	.L127
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$284, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L206
.L127:
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_check_public_exponent@PLT
	testl	%eax, %eax
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$289, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$178, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L206
.L128:
	cmpl	$1, -208(%rbp)
	jle	.L129
	movl	-204(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rsa_multip_cap@PLT
	cmpl	%eax, -208(%rbp)
	jle	.L130
.L129:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$294, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$165, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L206
.L130:
	call	sk_BIGNUM_new_null
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L131
	movl	$0, %eax
	jmp	.L206
.L131:
	call	sk_BIGNUM_new_null
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L208
	call	sk_BIGNUM_new_null
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L209
	movq	-200(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L210
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L211
	movl	-204(%rbp), %eax
	cltd
	idivl	-208(%rbp)
	movl	%eax, -116(%rbp)
	movl	-204(%rbp), %eax
	cltd
	idivl	-208(%rbp)
	movl	%edx, -120(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L137
.L140:
	movl	-20(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.L138
	movl	-116(%rbp), %eax
	addl	$1, %eax
	jmp	.L139
.L138:
	movl	-116(%rbp), %eax
.L139:
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, -192(%rbp,%rdx,4)
	addl	$1, -20(%rbp)
.L137:
	movl	-20(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jl	.L140
	movq	-200(%rbp), %rax
	movl	216(%rax), %eax
	leal	1(%rax), %edx
	movq	-200(%rbp), %rax
	movl	%edx, 216(%rax)
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L141
	call	BN_new@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L212
.L141:
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L142
	call	BN_secure_new@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L213
.L142:
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-200(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L143
	call	BN_new@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-200(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L214
.L143:
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L144
	call	BN_secure_new@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L215
.L144:
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-200(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L145
	call	BN_secure_new@PLT
	movq	-200(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-200(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L216
.L145:
	movq	-200(%rbp), %rax
	movq	72(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	cmpl	$2, -208(%rbp)
	jle	.L146
	movq	-200(%rbp), %rax
	movl	$1, 16(%rax)
	movl	-208(%rbp), %eax
	subl	$2, %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	sk_RSA_PRIME_INFO_new_reserve
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L217
	movq	-200(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L148
	movq	-200(%rbp), %rax
	movq	136(%rax), %rax
	movq	ossl_rsa_multip_info_free@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_pop_free
.L148:
	movq	-200(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 136(%rax)
	movl	$2, -20(%rbp)
	jmp	.L149
.L151:
	call	ossl_rsa_multip_info_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L218
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_push
	addl	$1, -20(%rbp)
.L149:
	movl	-20(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jl	.L151
.L146:
	movq	-200(%rbp), %rax
	movq	48(%rax), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L219
	movl	$0, -20(%rbp)
	jmp	.L153
.L190:
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L154
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L155
.L154:
	cmpl	$1, -20(%rbp)
	jne	.L156
	movq	-200(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L155
.L156:
	movl	-20(%rbp), %eax
	leal	-2(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L155:
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L157:
	movl	-20(%rbp), %eax
	cltq
	movl	-192(%rbp,%rax,4), %edx
	movl	-24(%rbp), %eax
	leal	(%rdx,%rax), %esi
	movq	-224(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_generate_prime_ex2@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L220
	movl	$0, -80(%rbp)
	jmp	.L159
.L164:
	cmpl	$0, -80(%rbp)
	jne	.L160
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.L161
.L160:
	cmpl	$1, -80(%rbp)
	jne	.L162
	movq	-200(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.L161
.L162:
	movl	-80(%rbp), %eax
	leal	-2(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
.L161:
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L163
	jmp	.L157
.L163:
	addl	$1, -80(%rbp)
.L159:
	movl	-80(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L164
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L221
	call	ERR_set_mark@PLT
	movq	-112(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-200(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-72(%rbp), %rcx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	jne	.L222
	call	ERR_peek_last_error@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$3, %eax
	jne	.L223
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$108, %eax
	jne	.L223
	call	ERR_pop_to_mark@PLT
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movq	-224(%rbp), %rcx
	movl	%eax, %edx
	movl	$2, %esi
	movq	%rcx, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L224
	jmp	.L157
.L222:
	nop
	movl	-20(%rbp), %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	addl	%eax, -16(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L171
	movq	-200(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	jne	.L172
	jmp	.L133
.L171:
	cmpl	$0, -20(%rbp)
	je	.L173
	movq	-200(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	jne	.L172
	jmp	.L133
.L173:
	movl	-20(%rbp), %edx
	movq	-224(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L225
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L226
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %edx
	movq	-152(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_insert
	testl	%eax, %eax
	jne	.L227
	jmp	.L133
.L172:
	movl	-16(%rbp), %eax
	leal	-4(%rax), %edx
	movq	-104(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	testl	%eax, %eax
	je	.L228
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_get_word@PLT
	movq	%rax, -136(%rbp)
	cmpq	$8, -136(%rbp)
	jbe	.L179
	cmpq	$15, -136(%rbp)
	jbe	.L180
.L179:
	movl	-20(%rbp), %eax
	cltq
	movl	-192(%rbp,%rax,4), %eax
	subl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movq	-224(%rbp), %rcx
	movl	%eax, %edx
	movl	$2, %esi
	movq	%rcx, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L229
	cmpl	$4, -208(%rbp)
	jle	.L182
	cmpq	$8, -136(%rbp)
	ja	.L183
	addl	$1, -24(%rbp)
	jmp	.L184
.L183:
	subl	$1, -24(%rbp)
	jmp	.L184
.L182:
	cmpl	$4, -28(%rbp)
	jne	.L184
	movl	$-1, -20(%rbp)
	movl	$0, -16(%rbp)
	movq	BN_clear_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_pop_free
	call	sk_BIGNUM_new_null
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L230
	jmp	.L133
.L184:
	addl	$1, -28(%rbp)
	jmp	.L157
.L180:
	cmpl	$1, -20(%rbp)
	jle	.L186
	movq	-200(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L231
.L186:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L232
	movl	-20(%rbp), %edx
	movq	-224(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L233
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L234
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_num
	movl	%eax, %edx
	movq	-152(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_insert
	testl	%eax, %eax
	je	.L235
	jmp	.L177
.L227:
	nop
	jmp	.L177
.L230:
	nop
.L177:
	addl	$1, -20(%rbp)
.L153:
	movl	-20(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jl	.L190
	movq	-200(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L191
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-200(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-200(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_insert
	testl	%eax, %eax
	je	.L236
.L191:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L237
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L238
	movq	-72(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L239
	movl	$2, -20(%rbp)
	jmp	.L195
.L198:
	movl	-20(%rbp), %eax
	leal	-2(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -40(%rbp)
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L240
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rcx
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L241
	addl	$1, -20(%rbp)
.L195:
	movl	-20(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jl	.L198
	movq	-96(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-200(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-200(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L242
	movq	-128(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-216(%rbp), %rcx
	movl	-208(%rbp), %edx
	movl	-204(%rbp), %esi
	movq	-200(%rbp), %rax
	subq	$8, %rsp
	pushq	-64(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_rsa_multiprime_derive@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L243
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	-200(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	-200(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	-200(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movl	$2, -20(%rbp)
	jmp	.L201
.L204:
	movl	-20(%rbp), %eax
	leal	-2(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	cmpq	$0, -160(%rbp)
	je	.L244
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_delete
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	cmpq	$0, -160(%rbp)
	je	.L245
	addl	$1, -20(%rbp)
.L201:
	movl	-20(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jl	.L204
	movl	$1, -76(%rbp)
	jmp	.L133
.L208:
	nop
	jmp	.L133
.L209:
	nop
	jmp	.L133
.L210:
	nop
	jmp	.L133
.L211:
	nop
	jmp	.L133
.L212:
	nop
	jmp	.L133
.L213:
	nop
	jmp	.L133
.L214:
	nop
	jmp	.L133
.L215:
	nop
	jmp	.L133
.L216:
	nop
	jmp	.L133
.L217:
	nop
	jmp	.L133
.L218:
	nop
	jmp	.L133
.L219:
	nop
	jmp	.L133
.L220:
	nop
	jmp	.L133
.L221:
	nop
	jmp	.L133
.L223:
	nop
	jmp	.L133
.L224:
	nop
	jmp	.L133
.L225:
	nop
	jmp	.L133
.L226:
	nop
	jmp	.L133
.L228:
	nop
	jmp	.L133
.L229:
	nop
	jmp	.L133
.L231:
	nop
	jmp	.L133
.L232:
	nop
	jmp	.L133
.L233:
	nop
	jmp	.L133
.L234:
	nop
	jmp	.L133
.L235:
	nop
	jmp	.L133
.L236:
	nop
	jmp	.L133
.L237:
	nop
	jmp	.L133
.L238:
	nop
	jmp	.L133
.L239:
	nop
	jmp	.L133
.L240:
	nop
	jmp	.L133
.L241:
	nop
	jmp	.L133
.L242:
	nop
	jmp	.L133
.L243:
	nop
	jmp	.L133
.L244:
	nop
	jmp	.L133
.L245:
	nop
.L133:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_free
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_free
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_free
	cmpl	$-1, -76(%rbp)
	jne	.L205
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$600, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -76(%rbp)
.L205:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-76(%rbp), %eax
.L206:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	rsa_multiprime_keygen, .-rsa_multiprime_keygen
	.section	.rodata
.LC1:
	.string	"Conditional_PCT"
	.text
	.type	rsa_keygen, @function
rsa_keygen:
.LFB461:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$2, -56(%rbp)
	jne	.L247
	cmpl	$2047, -52(%rbp)
	jle	.L247
	cmpq	$0, -64(%rbp)
	je	.L248
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$16, %eax
	jle	.L247
.L248:
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_sp800_56b_generate_key@PLT
	movl	%eax, -4(%rbp)
	jmp	.L249
.L247:
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %esi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsa_multiprime_keygen
	movl	%eax, -4(%rbp)
.L249:
	cmpl	$0, 16(%rbp)
	je	.L250
	cmpl	$0, -4(%rbp)
	jle	.L250
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_get_callback@PLT
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_keygen_pairwise_test
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L250
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	ossl_set_error_state@PLT
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 96(%rax)
.L250:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	rsa_keygen, .-rsa_keygen
	.section	.rodata
.LC2:
	.string	"RSA"
	.text
	.type	rsa_keygen_pairwise_test, @function
rsa_keygen_pairwise_test:
.LFB462:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movl	$4, -28(%rbp)
	movl	$1, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L262
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_onbegin@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	leaq	.LC0(%rip), %rax
	movl	$686, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L263
	movl	-44(%rbp), %edx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %edi
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movl	%edi, %r8d
	movl	%eax, %edi
	call	RSA_public_encrypt@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L264
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.L258
	movl	-28(%rbp), %edx
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L265
.L258:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_oncorrupt_byte@PLT
	movl	-44(%rbp), %eax
	movl	-32(%rbp), %edi
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	%edi, %r8d
	movl	%eax, %edi
	call	RSA_private_decrypt@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.L266
	movl	-48(%rbp), %edx
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L266
	movl	$1, -4(%rbp)
	jmp	.L255
.L262:
	nop
	jmp	.L255
.L263:
	nop
	jmp	.L255
.L264:
	nop
	jmp	.L255
.L265:
	nop
	jmp	.L255
.L266:
	nop
.L255:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_onend@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$711, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	rsa_keygen_pairwise_test, .-rsa_keygen_pairwise_test
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"rsa_multiprime_keygen"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
