	.file	"rsa_mp.c"
	.text
	.type	sk_RSA_PRIME_INFO_num, @function
sk_RSA_PRIME_INFO_num:
.LFB121:
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
.LFE121:
	.size	sk_RSA_PRIME_INFO_num, .-sk_RSA_PRIME_INFO_num
	.type	sk_RSA_PRIME_INFO_value, @function
sk_RSA_PRIME_INFO_value:
.LFB122:
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
.LFE122:
	.size	sk_RSA_PRIME_INFO_value, .-sk_RSA_PRIME_INFO_value
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_mp.c"
	.text
	.globl	ossl_rsa_multip_info_free_ex
	.type	ossl_rsa_multip_info_free_ex, @function
ossl_rsa_multip_info_free_ex:
.LFB146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$19, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	ossl_rsa_multip_info_free_ex, .-ossl_rsa_multip_info_free_ex
	.globl	ossl_rsa_multip_info_free
	.type	ossl_rsa_multip_info_free, @function
ossl_rsa_multip_info_free:
.LFB147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_multip_info_free_ex@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	ossl_rsa_multip_info_free, .-ossl_rsa_multip_info_free
	.globl	ossl_rsa_multip_info_new
	.type	ossl_rsa_multip_info_new, @function
ossl_rsa_multip_info_new:
.LFB148:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$36, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	call	BN_secure_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L15
	call	BN_secure_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L16
	call	BN_secure_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L17
	call	BN_secure_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-8(%rbp), %rax
	jmp	.L9
.L15:
	nop
	jmp	.L11
.L16:
	nop
	jmp	.L11
.L17:
	nop
	jmp	.L11
.L18:
	nop
.L11:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$54, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	ossl_rsa_multip_info_new, .-ossl_rsa_multip_info_new
	.globl	ossl_rsa_multip_calc_product
	.type	ossl_rsa_multip_calc_product, @function
ossl_rsa_multip_calc_product:
.LFB149:
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
	movl	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_num
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.L28
	call	BN_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L29
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L23
.L26:
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	call	BN_secure_new@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L30
.L24:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L31
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	addl	$1, -28(%rbp)
.L23:
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L26
	movl	$1, -32(%rbp)
	jmp	.L21
.L28:
	nop
	jmp	.L21
.L29:
	nop
	jmp	.L21
.L30:
	nop
	jmp	.L21
.L31:
	nop
.L21:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-32(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	ossl_rsa_multip_calc_product, .-ossl_rsa_multip_calc_product
	.globl	ossl_rsa_multip_cap
	.type	ossl_rsa_multip_cap, @function
ossl_rsa_multip_cap:
.LFB150:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$5, -4(%rbp)
	cmpl	$1023, -20(%rbp)
	jg	.L33
	movl	$2, -4(%rbp)
	jmp	.L34
.L33:
	cmpl	$4095, -20(%rbp)
	jg	.L35
	movl	$3, -4(%rbp)
	jmp	.L34
.L35:
	cmpl	$8191, -20(%rbp)
	jg	.L34
	movl	$4, -4(%rbp)
.L34:
	cmpl	$5, -4(%rbp)
	jle	.L36
	movl	$5, -4(%rbp)
.L36:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	ossl_rsa_multip_cap, .-ossl_rsa_multip_cap
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
