	.file	"ec_pmeth.c"
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
.LC0:
	.string	"../crypto/ec/ec_pmeth.c"
	.text
	.type	pkey_ec_init, @function
pkey_ec_init:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$51, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movb	$-1, 24(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 25(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 152(%rax)
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	pkey_ec_init, .-pkey_ec_init
	.type	pkey_ec_copy, @function
pkey_ec_copy:
.LFB575:
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
	movq	%rax, %rdi
	call	pkey_ec_init
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_dup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L11
	movl	$0, %eax
	jmp	.L10
.L11:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_dup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	movl	$0, %eax
	jmp	.L10
.L12:
	movq	-8(%rbp), %rax
	movzbl	25(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, 25(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$83, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movl	$0, %eax
	jmp	.L10
.L13:
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.L14:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	pkey_ec_copy, .-pkey_ec_copy
	.type	pkey_ec_cleanup, @function
pkey_ec_cleanup:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L17
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$98, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$99, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 152(%rax)
.L17:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	pkey_ec_cleanup, .-pkey_ec_cleanup
	.type	pkey_ec_sign, @function
pkey_ec_sign:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_size@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L19
	movl	$0, %eax
	jmp	.L26
.L19:
	cmpq	$0, -64(%rbp)
	jne	.L21
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L26
.L21:
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jnb	.L22
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L26
.L22:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -4(%rbp)
	jmp	.L24
.L23:
	movl	$64, -4(%rbp)
.L24:
	movq	-88(%rbp), %rax
	movl	%eax, %r10d
	movq	-24(%rbp), %rdi
	leaq	-36(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movl	-4(%rbp), %eax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movl	%eax, %edi
	call	ECDSA_sign@PLT
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jg	.L25
	movl	-32(%rbp), %eax
	jmp	.L26
.L25:
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	pkey_ec_sign, .-pkey_ec_sign
	.type	pkey_ec_verify, @function
pkey_ec_verify:
.LFB578:
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
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -4(%rbp)
	jmp	.L29
.L28:
	movl	$64, -4(%rbp)
.L29:
	movq	-56(%rbp), %rax
	movl	%eax, %r8d
	movq	-72(%rbp), %rax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movl	-4(%rbp), %eax
	movq	%rcx, %r9
	movq	%rdx, %rcx
	movl	%edi, %edx
	movl	%eax, %edi
	call	ECDSA_verify@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	pkey_ec_verify, .-pkey_ec_verify
	.type	pkey_ec_derive, @function
pkey_ec_derive:
.LFB579:
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
	movq	$0, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-72(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L33
.L32:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$140, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-72(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$140, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L35:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L37
.L36:
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, -8(%rbp)
.L37:
	cmpq	$0, -80(%rbp)
	jne	.L38
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L34
.L39:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L34
.L38:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ECDH_compute_key@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L40
	movl	$0, %eax
	jmp	.L34
.L40:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	pkey_ec_derive, .-pkey_ec_derive
	.type	pkey_ec_kdf_derive, @function
pkey_ec_kdf_derive:
.LFB580:
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
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movzbl	25(%rax), %eax
	cmpb	$1, %al
	jne	.L42
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkey_ec_derive
	jmp	.L51
.L42:
	cmpq	$0, -48(%rbp)
	jne	.L44
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L51
.L44:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, %rdx
	je	.L45
	movl	$0, %eax
	jmp	.L51
.L45:
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pkey_ec_derive
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L51
.L46:
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$230, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L47
	movl	$0, %eax
	jmp	.L51
.L47:
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pkey_ec_derive
	testl	%eax, %eax
	je	.L52
	movq	-40(%rbp), %rax
	movq	16(%rax), %r9
	movq	-40(%rbp), %rax
	movq	8(%rax), %r8
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %r11
	movq	-16(%rbp), %rax
	movq	40(%rax), %r10
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	ossl_ecdh_kdf_X9_63@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L53
	movl	$1, -4(%rbp)
	jmp	.L49
.L52:
	nop
	jmp	.L49
.L53:
	nop
.L49:
	movq	-32(%rbp), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$242, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-4(%rbp), %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	pkey_ec_kdf_derive, .-pkey_ec_kdf_derive
	.type	pkey_ec_ctrl, @function
pkey_ec_ctrl:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$4106, -44(%rbp)
	je	.L55
	cmpl	$4106, -44(%rbp)
	jg	.L56
	cmpl	$4105, -44(%rbp)
	je	.L57
	cmpl	$4105, -44(%rbp)
	jg	.L56
	cmpl	$4104, -44(%rbp)
	je	.L58
	cmpl	$4104, -44(%rbp)
	jg	.L56
	cmpl	$4103, -44(%rbp)
	je	.L59
	cmpl	$4103, -44(%rbp)
	jg	.L56
	cmpl	$4102, -44(%rbp)
	je	.L60
	cmpl	$4102, -44(%rbp)
	jg	.L56
	cmpl	$4101, -44(%rbp)
	je	.L61
	cmpl	$4101, -44(%rbp)
	jg	.L56
	cmpl	$4100, -44(%rbp)
	je	.L62
	cmpl	$4100, -44(%rbp)
	jg	.L56
	cmpl	$4099, -44(%rbp)
	je	.L63
	cmpl	$4099, -44(%rbp)
	jg	.L56
	cmpl	$4098, -44(%rbp)
	je	.L64
	cmpl	$4098, -44(%rbp)
	jg	.L56
	cmpl	$4097, -44(%rbp)
	je	.L65
	cmpl	$4097, -44(%rbp)
	jg	.L56
	cmpl	$13, -44(%rbp)
	je	.L66
	cmpl	$13, -44(%rbp)
	jg	.L56
	cmpl	$11, -44(%rbp)
	je	.L67
	cmpl	$11, -44(%rbp)
	jg	.L56
	cmpl	$7, -44(%rbp)
	je	.L67
	cmpl	$7, -44(%rbp)
	jg	.L56
	cmpl	$5, -44(%rbp)
	je	.L67
	cmpl	$5, -44(%rbp)
	jg	.L56
	cmpl	$1, -44(%rbp)
	je	.L68
	cmpl	$2, -44(%rbp)
	je	.L67
	jmp	.L56
.L65:
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	EC_GROUP_new_by_curve_name@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L69
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L70
.L64:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$264, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L70
.L71:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
	movl	$1, %eax
	jmp	.L70
.L63:
	cmpl	$-2, -48(%rbp)
	jne	.L72
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	cmpb	$-1, %al
	je	.L73
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %eax
	jmp	.L70
.L73:
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_flags@PLT
	andl	$4096, %eax
	shrl	$12, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	jmp	.L70
.L72:
	cmpl	$-1, -48(%rbp)
	jl	.L74
	cmpl	$1, -48(%rbp)
	jle	.L75
.L74:
	movl	$-2, %eax
	jmp	.L70
.L75:
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 24(%rax)
	cmpl	$-1, -48(%rbp)
	je	.L76
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L77
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$290, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524556, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L70
.L77:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L78
	movl	$-2, %eax
	jmp	.L70
.L78:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L79
	movl	$1, %eax
	jmp	.L70
.L79:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L80
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L80
	movl	$0, %eax
	jmp	.L70
.L80:
	cmpl	$0, -48(%rbp)
	je	.L81
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_flags@PLT
	jmp	.L82
.L81:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	EC_KEY_clear_flags@PLT
	jmp	.L82
.L76:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.L82:
	movl	$1, %eax
	jmp	.L70
.L62:
	cmpl	$-2, -48(%rbp)
	jne	.L83
	movq	-8(%rbp), %rax
	movzbl	25(%rax), %eax
	movsbl	%al, %eax
	jmp	.L70
.L83:
	cmpl	$1, -48(%rbp)
	je	.L84
	cmpl	$2, -48(%rbp)
	je	.L84
	movl	$-2, %eax
	jmp	.L70
.L84:
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 25(%rax)
	movl	$1, %eax
	jmp	.L70
.L61:
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
	jmp	.L70
.L60:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L70
.L59:
	cmpl	$0, -48(%rbp)
	jg	.L85
	movl	$-2, %eax
	jmp	.L70
.L85:
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movl	$1, %eax
	jmp	.L70
.L58:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L70
.L57:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$341, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 40(%rax)
	cmpq	$0, -56(%rbp)
	je	.L86
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L87
.L86:
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.L87:
	movl	$1, %eax
	jmp	.L70
.L55:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.L70
.L68:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$64, %eax
	je	.L88
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$416, %eax
	je	.L88
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$675, %eax
	je	.L88
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$672, %eax
	je	.L88
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$673, %eax
	je	.L88
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$674, %eax
	je	.L88
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$1096, %eax
	je	.L88
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$1097, %eax
	je	.L88
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$1098, %eax
	je	.L88
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$1099, %eax
	je	.L88
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$1143, %eax
	je	.L88
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$365, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L70
.L88:
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
	jmp	.L70
.L66:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L70
.L67:
	movl	$1, %eax
	jmp	.L70
.L56:
	movl	$-2, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	pkey_ec_ctrl, .-pkey_ec_ctrl
	.section	.rodata
.LC1:
	.string	"ec_paramgen_curve"
.LC2:
	.string	"ec_param_enc"
.LC3:
	.string	"explicit"
.LC4:
	.string	"named_curve"
.LC5:
	.string	"ecdh_kdf_md"
.LC6:
	.string	"ecdh_cofactor_mode"
	.text
	.type	pkey_ec_ctrl_str, @function
pkey_ec_ctrl_str:
.LFB582:
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
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L90
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_curve_nist2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L91
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -4(%rbp)
.L91:
	cmpl	$0, -4(%rbp)
	jne	.L92
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, -4(%rbp)
.L92:
	cmpl	$0, -4(%rbp)
	jne	.L93
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$399, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L93:
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ec_paramgen_curve_nid@PLT
	jmp	.L94
.L90:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L95
	leaq	.LC3(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, -8(%rbp)
	jmp	.L97
.L96:
	leaq	.LC4(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L98
	movl	$1, -8(%rbp)
	jmp	.L97
.L98:
	movl	$-2, %eax
	jmp	.L94
.L97:
	movl	-8(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ec_param_enc@PLT
	jmp	.L94
.L95:
	leaq	.LC5(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L99
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L100
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$415, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L94
.L100:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ecdh_kdf_md@PLT
	jmp	.L94
.L99:
	leaq	.LC6(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L101
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_ecdh_cofactor_mode@PLT
	jmp	.L94
.L101:
	movl	$-2, %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	pkey_ec_ctrl_str, .-pkey_ec_ctrl_str
	.type	pkey_ec_paramgen, @function
pkey_ec_paramgen:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$435, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L104
.L103:
	call	EC_KEY_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L105
	movl	$0, %eax
	jmp	.L104
.L105:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L106
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L107
.L106:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
.L107:
	movl	-4(%rbp), %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	pkey_ec_paramgen, .-pkey_ec_paramgen
	.type	pkey_ec_keygen, @function
pkey_ec_keygen:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L109
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L109
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$454, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L110
.L109:
	call	EC_KEY_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L110
.L111:
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L112
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
	jmp	.L110
.L112:
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L113
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	movl	%eax, -4(%rbp)
	jmp	.L114
.L113:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_group@PLT
	movl	%eax, -4(%rbp)
.L114:
	cmpl	$0, -4(%rbp)
	je	.L115
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_generate_key@PLT
	jmp	.L110
.L115:
	movl	$0, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	pkey_ec_keygen, .-pkey_ec_keygen
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ec_pkey_meth, @object
	.size	ec_pkey_meth, 256
ec_pkey_meth:
	.long	408
	.long	0
	.quad	pkey_ec_init
	.quad	pkey_ec_copy
	.quad	pkey_ec_cleanup
	.quad	0
	.quad	pkey_ec_paramgen
	.quad	0
	.quad	pkey_ec_keygen
	.quad	0
	.quad	pkey_ec_sign
	.quad	0
	.quad	pkey_ec_verify
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_ec_kdf_derive
	.quad	pkey_ec_ctrl
	.quad	pkey_ec_ctrl_str
	.zero	48
	.text
	.globl	ossl_ec_pkey_method
	.type	ossl_ec_pkey_method, @function
ossl_ec_pkey_method:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ec_pkey_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	ossl_ec_pkey_method, .-ossl_ec_pkey_method
	.section	.rodata
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 13
__func__.5:
	.string	"pkey_ec_sign"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 15
__func__.4:
	.string	"pkey_ec_derive"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 13
__func__.3:
	.string	"pkey_ec_ctrl"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"pkey_ec_ctrl_str"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"pkey_ec_paramgen"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"pkey_ec_keygen"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
