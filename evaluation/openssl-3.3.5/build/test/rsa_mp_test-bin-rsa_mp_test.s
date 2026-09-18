	.file	"rsa_mp_test.c"
	.text
	.type	sk_BIGNUM_new_null, @function
sk_BIGNUM_new_null:
.LFB471:
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
.LFE471:
	.size	sk_BIGNUM_new_null, .-sk_BIGNUM_new_null
	.type	sk_BIGNUM_free, @function
sk_BIGNUM_free:
.LFB474:
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
.LFE474:
	.size	sk_BIGNUM_free, .-sk_BIGNUM_free
	.type	sk_BIGNUM_push, @function
sk_BIGNUM_push:
.LFB478:
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
.LFE478:
	.size	sk_BIGNUM_push, .-sk_BIGNUM_push
	.type	sk_BIGNUM_pop_free, @function
sk_BIGNUM_pop_free:
.LFB482:
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
.LFE482:
	.size	sk_BIGNUM_pop_free, .-sk_BIGNUM_pop_free
	.section	.rodata
	.align 32
	.type	n, @object
	.size	n, 257
n:
	.base64	"kmDQdQrhF+7lXD896rp0kXUhomLudgB834pWdVrXOhWYoUCEEKAUNMP1vFSoi1f6GfxDKNrqB1CkxE6Iz/OyOCYhuA9nBGRDPkM25tAD6M1lv/IR2hRLiCkcIlmgCnK3EcEW73aG6P7jTk2TPIaBh73Cb3vgcUk8hvellBw1EIBq1nsPlNiPXPXAKgkoIdhibokytlxb2MkgScIQkyt6+nrFnA6IauXB7bANjOLFdjPbJr1mOb/3PO6CvpJ1xAK0zypDiNqM+MZO7+HFoPWrgFfDn6XAWJw+JT8JYDMjAPlL6kSHe1iOHtvel88jYHJ6Cbd1Ji1+5VKzMZuSZvBa"
	.string	"%"
	.type	e, @object
	.size	e, 4
e:
	.base64	"AQABAA=="
	.align 32
	.type	d, @object
	.size	d, 257
d:
	.base64	"an3yymPq1N2hkdYUtrOF4NkFaj1tXP4H2x2qvuAi2wghLZdhPTMo4CZ8ndI9eHq94q/LMGrrffzmkkbMc/XIf98GAwF5ohFLdn2x8IP/hBwCXX3ADNgkNbmpD2lTaelN8j0s5Fi8OzKDrYu6K4+humLi3Omsz/N5mq58hAAW87qOAEjAtsxDOa9xYQA6W+uGSgFkssHJI3tkvIdVaZQ1GydQbDPUvN/OD5xJGn1rBijHyFK+TwqcMTKy7TosiIHpqrB+IOF96wdGkb5nd3ani1xQLgXZvd5yEms3OGleLdGgqYoUJHxl2KfueUMqCSywchoS33mORPfPzgxJgUep"
	.string	"\261"
	.align 32
	.type	p, @object
	.size	p, 87
p:
	.base64	"BnfN1UabwdVYAIHi8wo2sW4pidUvMV+SIjubdTCC+sX13oo228blj+8UN9YA+auQm11XTPUfd8S7i92bZxFFsmTorKgDDxYNXS1TByP7Yg3mFtMj6LMA"
	.align 32
	.type	q, @object
	.size	q, 87
q:
	.base64	"BmaacFPWcnT96kXDwBeu3nkXrnne/A73pDqMQ4/HiqIsUcTQcolzXGG+/VQ/kmXeTWVxcPby5Zi5D9EL5pUJSnrf8xAW0GD8pRA0lzdvCtVdj9TDoFsA"
	.align 32
	.type	dmp1, @object
	.size	dmp1, 87
dmp1:
	.base64	"BXyeHL2QJedAhvWoO3o/mVaVYDp7lUu4oNel8czcX7WM9GKVVO0uEmLC6Pbezu2Od23AQCV0s1otquGsEcviLwpRIx5HsgWIArIPS/BnMPAPbu9f9+cA"
	.align 32
	.type	dmq1, @object
	.size	dmq1, 87
dmq1:
	.base64	"AaVrvM3jDkbGcvUEVigBIlh0XbwcPClBSWyBXHLi9+WjjlgW4A43rB+7df2v59/pH3Cij1IDwEbZ+ZZjACd+Xzhg1mth4q++6ljTnbx1A41CZdZrhZcA"
	.align 32
	.type	iqmp, @object
	.size	iqmp, 87
iqmp:
	.base64	"A6GLgOTYhyUXXcyNqYoiK2wVNG+AzBxEBGi8A82Vu2k3YUi0IxMIFlRqoXz11DrhT6QM9a+AhScGDXDAxRko/u6OhiGYije35TAlcJNRLUmFVrMMK5YA"
	.align 32
	.type	ex_prime, @object
	.size	ex_prime, 87
ex_prime:
	.base64	"A4kioLc6kcteDP1z3qc4qUdD1gK/Krk8SPMG1lg1UFYWXDSbYYfIqgpdigrNnEHZliTgqZsmt6gIyercpxX7YqAtkOanVW7GbP/WEG36LgRQ7Fxm5AUA"
	.align 32
	.type	ex_exponent, @object
	.size	ex_exponent, 87
ex_exponent:
	.base64	"AgrNw4LSA7AxrNMggDSaV7xgBFcl0CmaFpC5HElq0fJHjA6eySDC2OSPztIanOy0HzNByPVi0aXvHaHYvXHG99qJNy7i7EfFuOO041yCqt23WC6vB3kA"
	.align 32
	.type	ex_coefficient, @object
	.size	ex_coefficient, 87
ex_coefficient:
	.base64	"AJwJiJvIVwhpaastnikcPG1ZMxINKwkurwEsJwH8vSYT+S0JIk5JEQOCiIf0Qx2syuyG9yPxZPP1gfA3Ns9n/xr/esf5+WctoJ1h+PZHXC/nZug8OugA"
.LC0:
	.string	"1"
	.align 8
.LC1:
	.string	"RSA_set0_key(key, BN_bin2bn(n, sizeof(n) - 1, NULL), BN_bin2bn(e, sizeof(e) - 1, NULL), BN_bin2bn(d, sizeof(d) - 1, NULL))"
.LC2:
	.string	"../test/rsa_mp_test.c"
	.text
	.type	key2048_key, @function
key2048_key:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	leaq	d(%rip), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %r12
	leaq	e(%rip), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	n(%rip), %rax
	movl	$0, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$141, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
.L9:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	key2048_key, .-key2048_key
	.section	.rodata
	.align 8
.LC3:
	.string	"RSA_set0_factors(key, BN_bin2bn(p, sizeof(p) - 1, NULL), BN_bin2bn(q, sizeof(q) - 1, NULL))"
	.align 8
.LC4:
	.string	"RSA_set0_crt_params(key, BN_bin2bn(dmp1, sizeof(dmp1) - 1, NULL), BN_bin2bn(dmq1, sizeof(dmq1) - 1, NULL), BN_bin2bn(iqmp, sizeof(iqmp) - 1, NULL))"
.LC5:
	.string	"pris"
.LC6:
	.string	"exps"
.LC7:
	.string	"coeffs"
.LC8:
	.string	"pris[0]"
.LC9:
	.string	"exps[0]"
.LC10:
	.string	"coeffs[0]"
	.align 8
.LC11:
	.string	"RSA_set0_multi_prime_params(key, pris, exps, coeffs, NUM_EXTRA_PRIMES)"
	.text
	.type	key2048p3_v1, @function
key2048p3_v1:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, -44(%rbp)
	leaq	q(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	p(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$156, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L23
	leaq	iqmp(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %r12
	leaq	dmq1(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rbx
	leaq	dmp1(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	RSA_set0_crt_params@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	leaq	.LC2(%rip), %rax
	movl	$168, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$169, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$170, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$171, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	movq	-32(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$171, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	movq	-40(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$171, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L24
	leaq	ex_prime(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	ex_exponent(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	ex_coefficient(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$177, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$177, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$177, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L25
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	RSA_set0_multi_prime_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$180, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L26
	nop
.L19:
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$185, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$186, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$187, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-44(%rbp), %eax
	jmp	.L14
.L23:
	nop
	jmp	.L12
.L24:
	nop
	jmp	.L12
.L25:
	nop
	jmp	.L12
.L26:
	nop
.L12:
	cmpq	$0, -24(%rbp)
	je	.L20
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L20:
	cmpq	$0, -32(%rbp)
	je	.L21
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L21:
	cmpq	$0, -40(%rbp)
	je	.L22
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L22:
	movl	$0, -44(%rbp)
	jmp	.L19
.L14:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	key2048p3_v1, .-key2048p3_v1
	.section	.rodata
.LC12:
	.string	"primes = sk_BIGNUM_new_null()"
.LC13:
	.string	"exps = sk_BIGNUM_new_null()"
.LC14:
	.string	"coeffs = sk_BIGNUM_new_null()"
	.align 8
.LC15:
	.string	"num = BN_bin2bn(p, sizeof(p) - 1, NULL)"
.LC16:
	.string	"0"
.LC17:
	.string	"sk_BIGNUM_push(primes, num)"
	.align 8
.LC18:
	.string	"num = BN_bin2bn(q, sizeof(q) - 1, NULL)"
	.align 8
.LC19:
	.string	"num = BN_bin2bn(ex_prime, sizeof(ex_prime) - 1, NULL)"
	.align 8
.LC20:
	.string	"num = BN_bin2bn(dmp1, sizeof(dmp1) - 1, NULL)"
.LC21:
	.string	"sk_BIGNUM_push(exps, num)"
	.align 8
.LC22:
	.string	"num = BN_bin2bn(dmq1, sizeof(dmq1) - 1, NULL)"
	.align 8
.LC23:
	.string	"num = BN_bin2bn(ex_exponent, sizeof(ex_exponent) - 1, NULL)"
	.align 8
.LC24:
	.string	"num = BN_bin2bn(iqmp, sizeof(iqmp) - 1, NULL)"
.LC25:
	.string	"sk_BIGNUM_push(coeffs, num)"
	.align 8
.LC26:
	.string	"num = BN_bin2bn(ex_coefficient, sizeof(ex_coefficient) - 1, NULL)"
	.align 8
.LC27:
	.string	"ossl_rsa_set0_all_params(key, primes, exps, coeffs)"
	.text
	.type	key2048p3_v2, @function
key2048p3_v2:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, -28(%rbp)
	call	sk_BIGNUM_new_null
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$206, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L40
	call	sk_BIGNUM_new_null
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$207, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L40
	call	sk_BIGNUM_new_null
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$208, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L40
	leaq	p(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$211, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_push
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$212, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L41
	leaq	q(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$213, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_push
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$214, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L41
	leaq	ex_prime(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$215, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L41
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_push
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$216, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L41
	leaq	dmp1(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$219, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_push
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$220, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L42
	leaq	dmq1(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$221, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_push
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$222, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L42
	leaq	ex_exponent(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$223, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L42
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_push
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$224, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L42
	leaq	iqmp(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$227, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_push
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$228, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L43
	leaq	ex_coefficient(%rip), %rax
	movl	$0, %edx
	movl	$86, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$229, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L43
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_push
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$230, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L43
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_set0_all_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$233, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	nop
.L37:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_free
	movl	-28(%rbp), %eax
	jmp	.L39
.L40:
	nop
	jmp	.L30
.L41:
	nop
	jmp	.L30
.L42:
	nop
	jmp	.L30
.L43:
	nop
	jmp	.L30
.L44:
	nop
.L30:
	movq	BN_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_pop_free
	movq	BN_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_pop_free
	movq	BN_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_BIGNUM_pop_free
	movq	$0, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L37
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	key2048p3_v2, .-key2048p3_v2
	.section	.rodata
.LC28:
	.string	"key"
.LC29:
	.string	"256"
.LC30:
	.string	"(clen = key2048_key(key))"
.LC31:
	.string	"(clen = param_set[i](key))"
.LC32:
	.string	"RSA_check_key_ex(key, NULL)"
.LC33:
	.string	"clen"
.LC34:
	.string	"num"
.LC35:
	.string	"ptext_ex"
.LC36:
	.string	"ptext"
	.text
	.type	test_rsa_mp, @function
test_rsa_mp:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movl	%edi, -548(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$8, -12(%rbp)
	call	RSA_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$267, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	key2048_key
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$256, %r9d
	movl	%esi, %r8d
	movl	$270, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L55
	movl	-548(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	param_set.1(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$256, %r9d
	movl	%esi, %r8d
	movl	$271, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L55
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	RSA_check_key_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$274, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
	movq	-24(%rbp), %rcx
	leaq	-544(%rbp), %rdx
	leaq	ptext_ex.0(%rip), %rsi
	movl	-12(%rbp), %eax
	movl	$1, %r8d
	movl	%eax, %edi
	call	RSA_public_encrypt@PLT
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %edi
	movl	-28(%rbp), %esi
	leaq	.LC33(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$279, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	-24(%rbp), %rcx
	leaq	-288(%rbp), %rdx
	leaq	-544(%rbp), %rsi
	movl	-28(%rbp), %eax
	movl	$1, %r8d
	movl	%eax, %edi
	call	RSA_private_decrypt@PLT
	movl	%eax, -28(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rsi
	movl	-28(%rbp), %eax
	movslq	%eax, %r8
	leaq	-288(%rbp), %rdi
	leaq	.LC35(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	ptext_ex.0(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$283, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L58
	movl	$1, -4(%rbp)
	jmp	.L47
.L54:
	nop
	jmp	.L47
.L55:
	nop
	jmp	.L47
.L56:
	nop
	jmp	.L47
.L57:
	nop
	jmp	.L47
.L58:
	nop
.L47:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	test_rsa_mp, .-test_rsa_mp
	.section	.rodata
.LC37:
	.string	"rsa = RSA_new()"
.LC38:
	.string	"ebn = BN_new()"
.LC39:
	.string	"BN_set_word(ebn, 65537)"
	.align 8
.LC40:
	.string	"RSA_generate_multi_prime_key(rsa, 1024, 2, NULL, NULL)"
	.align 8
.LC41:
	.string	"RSA_generate_multi_prime_key(rsa, 500, 2, ebn, NULL)"
	.align 8
.LC42:
	.string	"RSA_generate_multi_prime_key(rsa, 1024, 1, ebn, NULL)"
	.text
	.type	test_rsa_mp_gen_bad_input, @function
test_rsa_mp_gen_bad_input:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	call	RSA_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$298, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L68
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$301, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L69
	movq	-16(%rbp), %rax
	movl	$65537, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$2, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	RSA_generate_multi_prime_key@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$307, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L71
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$500, %esi
	movq	%rax, %rdi
	call	RSA_generate_multi_prime_key@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$311, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L72
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	RSA_generate_multi_prime_key@PLT
	movl	%eax, %esi
	leaq	.LC16(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$315, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L73
	movl	$1, -4(%rbp)
	jmp	.L61
.L68:
	nop
	jmp	.L61
.L69:
	nop
	jmp	.L61
.L70:
	nop
	jmp	.L61
.L71:
	nop
	jmp	.L61
.L72:
	nop
	jmp	.L61
.L73:
	nop
.L61:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	test_rsa_mp_gen_bad_input, .-test_rsa_mp_gen_bad_input
	.section	.rodata
.LC43:
	.string	"test_rsa_mp_gen_bad_input"
.LC44:
	.string	"test_rsa_mp"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_rsa_mp_gen_bad_input(%rip), %rdx
	leaq	.LC43(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_rsa_mp(%rip), %rsi
	leaq	.LC44(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	setup_tests, .-setup_tests
	.section	.data.rel.local,"aw"
	.align 16
	.type	param_set.1, @object
	.size	param_set.1, 16
param_set.1:
	.quad	key2048p3_v1
	.quad	key2048p3_v2
	.data
	.align 8
	.type	ptext_ex.0, @object
	.size	ptext_ex.0, 9
ptext_ex.0:
	.base64	"VIWbNCxJ6ioA"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
