	.file	"ec_lib.c"
	.text
	.type	ec_point_is_compat, @function
ec_point_is_compat:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L2
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L3
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L3
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jne	.L2
.L3:
	movl	$1, %eax
	jmp	.L5
.L2:
	movl	$0, %eax
.L5:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	ec_point_is_compat, .-ec_point_is_compat
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ec_lib.c"
	.text
	.globl	ossl_ec_group_new_ex
	.type	ossl_ec_group_new_ex, @function
ossl_ec_group_new_ex:
.LFB367:
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
	cmpq	$0, -40(%rbp)
	jne	.L7
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L9
	call	ERR_new@PLT
	leaq	__func__.28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L9:
	leaq	.LC0(%rip), %rax
	movl	$44, %edx
	movq	%rax, %rsi
	movl	$184, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L8
.L10:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 168(%rax)
	cmpq	$0, -32(%rbp)
	je	.L11
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L16
.L11:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L13
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L17
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L18
.L13:
	movq	-8(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-8(%rbp), %rax
	movl	$4, 44(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	je	.L19
	movq	-8(%rbp), %rax
	jmp	.L8
.L16:
	nop
	jmp	.L12
.L17:
	nop
	jmp	.L12
.L18:
	nop
	jmp	.L12
.L19:
	nop
.L12:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$72, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ossl_ec_group_new_ex, .-ossl_ec_group_new_ex
	.globl	EC_GROUP_new
	.type	EC_GROUP_new, @function
EC_GROUP_new:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_ec_group_new_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	EC_GROUP_new, .-EC_GROUP_new
	.globl	EC_pre_comp_free
	.type	EC_pre_comp_free, @function
EC_pre_comp_free:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$6, %eax
	je	.L23
	cmpl	$6, %eax
	ja	.L24
	cmpl	$5, %eax
	je	.L25
	cmpl	$5, %eax
	ja	.L24
	testl	%eax, %eax
	je	.L28
	subl	$1, %eax
	cmpl	$3, %eax
	ja	.L24
	jmp	.L24
.L25:
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	EC_nistz256_pre_comp_free@PLT
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	EC_ec_pre_comp_free@PLT
	jmp	.L24
.L28:
	nop
.L24:
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	EC_pre_comp_free, .-EC_pre_comp_free
	.globl	EC_GROUP_free
	.type	EC_GROUP_free, @function
EC_GROUP_free:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L33
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L32:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_pre_comp_free@PLT
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$136, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$137, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$138, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L29
.L33:
	nop
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	EC_GROUP_free, .-EC_GROUP_free
	.globl	EC_GROUP_clear_free
	.type	EC_GROUP_clear_free, @function
EC_GROUP_clear_free:
.LFB371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L39
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L38:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_pre_comp_free@PLT
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$157, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$158, %ecx
	movl	$184, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L34
.L39:
	nop
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	EC_GROUP_clear_free, .-EC_GROUP_clear_free
	.globl	EC_GROUP_copy
	.type	EC_GROUP_copy, @function
EC_GROUP_copy:
.LFB372:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L43
	call	ERR_new@PLT
	leaq	__func__.27(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L43:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L44
	movl	$1, %eax
	jmp	.L42
.L44:
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 168(%rax)
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-16(%rbp), %rax
	movl	152(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 152(%rax)
	movq	-16(%rbp), %rax
	movl	152(%rax), %eax
	cmpl	$6, %eax
	je	.L45
	cmpl	$6, %eax
	ja	.L46
	cmpl	$5, %eax
	je	.L47
	cmpl	$5, %eax
	ja	.L46
	testl	%eax, %eax
	je	.L48
	subl	$1, %eax
	cmpl	$3, %eax
	ja	.L46
	jmp	.L46
.L48:
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	jmp	.L46
.L47:
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	EC_nistz256_pre_comp_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 160(%rdx)
	jmp	.L46
.L45:
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	call	EC_ec_pre_comp_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 160(%rdx)
	nop
.L46:
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	call	BN_MONT_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 144(%rdx)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	movl	$0, %eax
	jmp	.L42
.L51:
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_copy@PLT
	testq	%rax, %rax
	jne	.L52
	movl	$0, %eax
	jmp	.L42
.L50:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
.L52:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	movl	$0, %eax
	jmp	.L42
.L54:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	jne	.L55
	movl	$0, %eax
	jmp	.L42
.L53:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.L55:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L56
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L57
	movl	$0, %eax
	jmp	.L42
.L57:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L56
	movl	$0, %eax
	jmp	.L42
.L56:
	movq	-16(%rbp), %rax
	movl	36(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-16(%rbp), %rax
	movl	44(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-16(%rbp), %rax
	movl	40(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$254, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	movl	$0, %eax
	jmp	.L42
.L59:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	testq	%rax, %rax
	jne	.L60
	movl	$0, %eax
	jmp	.L42
.L60:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	jmp	.L61
.L58:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$261, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
.L61:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE372:
	.size	EC_GROUP_copy, .-EC_GROUP_copy
	.globl	EC_GROUP_dup
	.type	EC_GROUP_dup, @function
EC_GROUP_dup:
.LFB373:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_group_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L64
.L65:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_copy@PLT
	testl	%eax, %eax
	je	.L69
	movl	$1, -4(%rbp)
	jmp	.L67
.L69:
	nop
.L67:
	cmpl	$0, -4(%rbp)
	jne	.L68
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$0, %eax
	jmp	.L64
.L68:
	movq	-16(%rbp), %rax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	EC_GROUP_dup, .-EC_GROUP_dup
	.globl	EC_GROUP_method_of
	.type	EC_GROUP_method_of, @function
EC_GROUP_method_of:
.LFB374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE374:
	.size	EC_GROUP_method_of, .-EC_GROUP_method_of
	.globl	EC_METHOD_get_field_type
	.type	EC_METHOD_get_field_type, @function
EC_METHOD_get_field_type:
.LFB375:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE375:
	.size	EC_METHOD_get_field_type, .-EC_METHOD_get_field_type
	.type	ec_guess_cofactor, @function
ec_guess_cofactor:
.LFB376:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$3, %eax
	cmpl	%eax, %ebx
	jg	.L75
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$1, %eax
	jmp	.L76
.L75:
	movq	-56(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L77
	movl	$0, %eax
	jmp	.L76
.L77:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L84
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$407, %eax
	jne	.L80
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_set_bit@PLT
	testl	%eax, %eax
	jne	.L81
	jmp	.L79
.L80:
	movq	-56(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L85
.L81:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_rshift1@PLT
	testl	%eax, %eax
	je	.L86
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L86
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L86
	movq	-56(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L86
	movl	$1, -20(%rbp)
	jmp	.L79
.L84:
	nop
	jmp	.L79
.L85:
	nop
	jmp	.L79
.L86:
	nop
.L79:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
.L76:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE376:
	.size	ec_guess_cofactor, .-ec_guess_cofactor
	.globl	EC_GROUP_set_generator
	.type	EC_GROUP_set_generator, @function
EC_GROUP_set_generator:
.LFB377:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L88
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$371, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L88:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L90
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L91
.L90:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$378, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L91:
	cmpq	$0, -40(%rbp)
	je	.L92
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L92
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L92
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$1, %eax
	cmpl	%eax, %ebx
	jle	.L93
.L92:
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$389, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L93:
	cmpq	$0, -48(%rbp)
	je	.L94
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L94
	call	ERR_new@PLT
	leaq	__func__.26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$399, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$164, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L89
.L94:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L95
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L95
	movl	$0, %eax
	jmp	.L89
.L95:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	jne	.L96
	movl	$0, %eax
	jmp	.L89
.L96:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L97
	movl	$0, %eax
	jmp	.L89
.L97:
	cmpq	$0, -48(%rbp)
	je	.L98
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L98
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L100
	movl	$0, %eax
	jmp	.L89
.L98:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ec_guess_cofactor
	testl	%eax, %eax
	jne	.L100
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$0, %eax
	jmp	.L89
.L100:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L101
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ec_precompute_mont_data
	jmp	.L89
.L101:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 144(%rax)
	movl	$1, %eax
.L89:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE377:
	.size	EC_GROUP_set_generator, .-EC_GROUP_set_generator
	.globl	EC_GROUP_get0_generator
	.type	EC_GROUP_get0_generator, @function
EC_GROUP_get0_generator:
.LFB378:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	EC_GROUP_get0_generator, .-EC_GROUP_get0_generator
	.globl	EC_GROUP_get_mont_data
	.type	EC_GROUP_get_mont_data, @function
EC_GROUP_get_mont_data:
.LFB379:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE379:
	.size	EC_GROUP_get_mont_data, .-EC_GROUP_get_mont_data
	.globl	EC_GROUP_get_order
	.type	EC_GROUP_get_order, @function
EC_GROUP_get_order:
.LFB380:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L107
	movl	$0, %eax
	jmp	.L108
.L107:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L109
	movl	$0, %eax
	jmp	.L108
.L109:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	EC_GROUP_get_order, .-EC_GROUP_get_order
	.globl	EC_GROUP_get0_order
	.type	EC_GROUP_get0_order, @function
EC_GROUP_get0_order:
.LFB381:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE381:
	.size	EC_GROUP_get0_order, .-EC_GROUP_get0_order
	.globl	EC_GROUP_order_bits
	.type	EC_GROUP_order_bits, @function
EC_GROUP_order_bits:
.LFB382:
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
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE382:
	.size	EC_GROUP_order_bits, .-EC_GROUP_order_bits
	.globl	EC_GROUP_get_cofactor
	.type	EC_GROUP_get_cofactor, @function
EC_GROUP_get_cofactor:
.LFB383:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L115
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L117
	movl	$0, %eax
	jmp	.L116
.L117:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE383:
	.size	EC_GROUP_get_cofactor, .-EC_GROUP_get_cofactor
	.globl	EC_GROUP_get0_cofactor
	.type	EC_GROUP_get0_cofactor, @function
EC_GROUP_get0_cofactor:
.LFB384:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE384:
	.size	EC_GROUP_get0_cofactor, .-EC_GROUP_get0_cofactor
	.globl	EC_GROUP_set_curve_name
	.type	EC_GROUP_set_curve_name, @function
EC_GROUP_set_curve_name:
.LFB385:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 32(%rax)
	cmpl	$0, -12(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 36(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE385:
	.size	EC_GROUP_set_curve_name, .-EC_GROUP_set_curve_name
	.globl	EC_GROUP_get_curve_name
	.type	EC_GROUP_get_curve_name, @function
EC_GROUP_get_curve_name:
.LFB386:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE386:
	.size	EC_GROUP_get_curve_name, .-EC_GROUP_get_curve_name
	.globl	EC_GROUP_get0_field
	.type	EC_GROUP_get0_field, @function
EC_GROUP_get0_field:
.LFB387:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE387:
	.size	EC_GROUP_get0_field, .-EC_GROUP_get0_field
	.globl	EC_GROUP_get_field_type
	.type	EC_GROUP_get_field_type, @function
EC_GROUP_get_field_type:
.LFB388:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	EC_GROUP_get_field_type, .-EC_GROUP_get_field_type
	.globl	EC_GROUP_set_asn1_flag
	.type	EC_GROUP_set_asn1_flag, @function
EC_GROUP_set_asn1_flag:
.LFB389:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 36(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	EC_GROUP_set_asn1_flag, .-EC_GROUP_set_asn1_flag
	.globl	EC_GROUP_get_asn1_flag
	.type	EC_GROUP_get_asn1_flag, @function
EC_GROUP_get_asn1_flag:
.LFB390:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	EC_GROUP_get_asn1_flag, .-EC_GROUP_get_asn1_flag
	.globl	EC_GROUP_set_point_conversion_form
	.type	EC_GROUP_set_point_conversion_form, @function
EC_GROUP_set_point_conversion_form:
.LFB391:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 44(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	EC_GROUP_set_point_conversion_form, .-EC_GROUP_set_point_conversion_form
	.globl	EC_GROUP_get_point_conversion_form
	.type	EC_GROUP_get_point_conversion_form, @function
EC_GROUP_get_point_conversion_form:
.LFB392:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE392:
	.size	EC_GROUP_get_point_conversion_form, .-EC_GROUP_get_point_conversion_form
	.globl	EC_GROUP_set_seed
	.type	EC_GROUP_set_seed, @function
EC_GROUP_set_seed:
.LFB393:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$532, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	cmpq	$0, -24(%rbp)
	je	.L134
	cmpq	$0, -16(%rbp)
	jne	.L135
.L134:
	movl	$1, %eax
	jmp	.L136
.L135:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$539, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L137
	movl	$0, %eax
	jmp	.L136
.L137:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-24(%rbp), %rax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE393:
	.size	EC_GROUP_set_seed, .-EC_GROUP_set_seed
	.globl	EC_GROUP_get0_seed
	.type	EC_GROUP_get0_seed, @function
EC_GROUP_get0_seed:
.LFB394:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE394:
	.size	EC_GROUP_get0_seed, .-EC_GROUP_get0_seed
	.globl	EC_GROUP_get_seed_len
	.type	EC_GROUP_get_seed_len, @function
EC_GROUP_get_seed_len:
.LFB395:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE395:
	.size	EC_GROUP_get_seed_len, .-EC_GROUP_get_seed_len
	.globl	EC_GROUP_set_curve
	.type	EC_GROUP_set_curve, @function
EC_GROUP_set_curve:
.LFB396:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L143
	call	ERR_new@PLT
	leaq	__func__.25(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$561, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L144
.L143:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %r9
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE396:
	.size	EC_GROUP_set_curve, .-EC_GROUP_set_curve
	.globl	EC_GROUP_get_curve
	.type	EC_GROUP_get_curve, @function
EC_GROUP_get_curve:
.LFB397:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L146
	call	ERR_new@PLT
	leaq	__func__.24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$571, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L147
.L146:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %r9
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE397:
	.size	EC_GROUP_get_curve, .-EC_GROUP_get_curve
	.globl	EC_GROUP_set_curve_GFp
	.type	EC_GROUP_set_curve_GFp, @function
EC_GROUP_set_curve_GFp:
.LFB398:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE398:
	.size	EC_GROUP_set_curve_GFp, .-EC_GROUP_set_curve_GFp
	.globl	EC_GROUP_get_curve_GFp
	.type	EC_GROUP_get_curve_GFp, @function
EC_GROUP_get_curve_GFp:
.LFB399:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE399:
	.size	EC_GROUP_get_curve_GFp, .-EC_GROUP_get_curve_GFp
	.globl	EC_GROUP_set_curve_GF2m
	.type	EC_GROUP_set_curve_GF2m, @function
EC_GROUP_set_curve_GF2m:
.LFB400:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_set_curve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE400:
	.size	EC_GROUP_set_curve_GF2m, .-EC_GROUP_set_curve_GF2m
	.globl	EC_GROUP_get_curve_GF2m
	.type	EC_GROUP_get_curve_GF2m, @function
EC_GROUP_get_curve_GF2m:
.LFB401:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE401:
	.size	EC_GROUP_get_curve_GF2m, .-EC_GROUP_get_curve_GF2m
	.globl	EC_GROUP_get_degree
	.type	EC_GROUP_get_degree, @function
EC_GROUP_get_degree:
.LFB402:
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
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L157
	call	ERR_new@PLT
	leaq	__func__.23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$608, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L158
.L157:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	EC_GROUP_get_degree, .-EC_GROUP_get_degree
	.globl	EC_GROUP_check_discriminant
	.type	EC_GROUP_check_discriminant, @function
EC_GROUP_check_discriminant:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L160
	call	ERR_new@PLT
	leaq	__func__.22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$617, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L161
.L160:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	EC_GROUP_check_discriminant, .-EC_GROUP_check_discriminant
	.globl	EC_GROUP_cmp
	.type	EC_GROUP_cmp, @function
EC_GROUP_cmp:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	movl	%eax, %ebx
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	cmpl	%eax, %ebx
	je	.L163
	movl	$1, %eax
	jmp	.L164
.L163:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	testl	%eax, %eax
	je	.L165
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	testl	%eax, %eax
	je	.L165
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, %ebx
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	cmpl	%eax, %ebx
	je	.L165
	movl	$1, %eax
	jmp	.L164
.L165:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L166
	movl	$0, %eax
	jmp	.L164
.L166:
	cmpq	$0, -136(%rbp)
	jne	.L167
	call	BN_CTX_new@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -32(%rbp)
.L167:
	cmpq	$0, -136(%rbp)
	jne	.L168
	movl	$-1, %eax
	jmp	.L164
.L168:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L169
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	$-1, %eax
	jmp	.L164
.L169:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %r9
	movq	-136(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-120(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L170
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %r9
	movq	-136(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L171
.L170:
	movl	$1, -20(%rbp)
.L171:
	cmpl	$0, -20(%rbp)
	jne	.L172
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L172
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L172
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L173
.L172:
	movl	$1, -20(%rbp)
.L173:
	cmpl	$0, -20(%rbp)
	jne	.L174
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, %rsi
	movq	-136(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	testl	%eax, %eax
	je	.L175
.L174:
	movl	$1, -20(%rbp)
.L175:
	cmpl	$0, -20(%rbp)
	jne	.L180
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -88(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L177
	cmpq	$0, -96(%rbp)
	jne	.L178
.L177:
	movl	$-1, -20(%rbp)
	jmp	.L176
.L178:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L179
	movl	$1, -20(%rbp)
	jmp	.L176
.L179:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L180
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L180
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L180
	movl	$1, -20(%rbp)
	jmp	.L176
.L180:
	nop
.L176:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
.L164:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	EC_GROUP_cmp, .-EC_GROUP_cmp
	.globl	EC_POINT_new
	.type	EC_POINT_new, @function
EC_POINT_new:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L182
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$722, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L182:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L184
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$726, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L183
.L184:
	leaq	.LC0(%rip), %rax
	movl	$730, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L185
	movl	$0, %eax
	jmp	.L183
.L185:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	32(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L186
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$738, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L183
.L186:
	movq	-8(%rbp), %rax
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	EC_POINT_new, .-EC_POINT_new
	.globl	EC_POINT_free
	.type	EC_POINT_free, @function
EC_POINT_free:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L191
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L190
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L190:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$752, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L187
.L191:
	nop
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	EC_POINT_free, .-EC_POINT_free
	.globl	EC_POINT_clear_free
	.type	EC_POINT_clear_free, @function
EC_POINT_clear_free:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L197
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L195
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L196
.L195:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L196:
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$764, %ecx
	movl	$48, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L192
.L197:
	nop
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	EC_POINT_clear_free, .-EC_POINT_clear_free
	.globl	EC_POINT_copy
	.type	EC_POINT_copy, @function
EC_POINT_copy:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L199
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$770, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L200
.L199:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L201
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	je	.L202
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L202
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L202
.L201:
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$777, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L200
.L202:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L203
	movl	$1, %eax
	jmp	.L200
.L203:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	104(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	EC_POINT_copy, .-EC_POINT_copy
	.globl	EC_POINT_dup
	.type	EC_POINT_dup, @function
EC_POINT_dup:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L205
	movl	$0, %eax
	jmp	.L206
.L205:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L207
	movl	$0, %eax
	jmp	.L206
.L207:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L208
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	$0, %eax
	jmp	.L206
.L208:
	movq	-8(%rbp), %rax
.L206:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	EC_POINT_dup, .-EC_POINT_dup
	.globl	EC_POINT_method_of
	.type	EC_POINT_method_of, @function
EC_POINT_method_of:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	EC_POINT_method_of, .-EC_POINT_method_of
	.globl	EC_POINT_set_to_infinity
	.type	EC_POINT_set_to_infinity, @function
EC_POINT_set_to_infinity:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L212
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$814, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L213
.L212:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L214
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$818, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L213
.L214:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	112(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L213:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	EC_POINT_set_to_infinity, .-EC_POINT_set_to_infinity
	.globl	EC_POINT_set_Jprojective_coordinates_GFp
	.type	EC_POINT_set_Jprojective_coordinates_GFp, @function
EC_POINT_set_Jprojective_coordinates_GFp:
.LFB412:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$406, %eax
	je	.L216
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$831, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L217
.L216:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L218
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$835, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L217
.L218:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ec_GFp_simple_set_Jprojective_coordinates_GFp@PLT
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	EC_POINT_set_Jprojective_coordinates_GFp, .-EC_POINT_set_Jprojective_coordinates_GFp
	.globl	EC_POINT_get_Jprojective_coordinates_GFp
	.type	EC_POINT_get_Jprojective_coordinates_GFp, @function
EC_POINT_get_Jprojective_coordinates_GFp:
.LFB413:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$406, %eax
	je	.L220
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$848, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L221
.L220:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L222
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$852, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L221
.L222:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ec_GFp_simple_get_Jprojective_coordinates_GFp@PLT
.L221:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	EC_POINT_get_Jprojective_coordinates_GFp, .-EC_POINT_get_Jprojective_coordinates_GFp
	.globl	EC_POINT_set_affine_coordinates
	.type	EC_POINT_set_affine_coordinates, @function
EC_POINT_set_affine_coordinates:
.LFB414:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L224
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$865, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L225
.L224:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L226
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$869, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L225
.L226:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	120(%rax), %r9
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L227
	movl	$0, %eax
	jmp	.L225
.L227:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	testl	%eax, %eax
	jg	.L228
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$876, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L225
.L228:
	movl	$1, %eax
.L225:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	EC_POINT_set_affine_coordinates, .-EC_POINT_set_affine_coordinates
	.globl	EC_POINT_set_affine_coordinates_GFp
	.type	EC_POINT_set_affine_coordinates_GFp, @function
EC_POINT_set_affine_coordinates_GFp:
.LFB415:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	EC_POINT_set_affine_coordinates_GFp, .-EC_POINT_set_affine_coordinates_GFp
	.globl	EC_POINT_set_affine_coordinates_GF2m
	.type	EC_POINT_set_affine_coordinates_GF2m, @function
EC_POINT_set_affine_coordinates_GF2m:
.LFB416:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	EC_POINT_set_affine_coordinates_GF2m, .-EC_POINT_set_affine_coordinates_GF2m
	.globl	EC_POINT_get_affine_coordinates
	.type	EC_POINT_get_affine_coordinates, @function
EC_POINT_get_affine_coordinates:
.LFB417:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L234
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$905, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L235
.L234:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L236
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$909, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L235
.L236:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L237
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$913, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L235
.L237:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	128(%rax), %r9
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L235:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	EC_POINT_get_affine_coordinates, .-EC_POINT_get_affine_coordinates
	.globl	EC_POINT_get_affine_coordinates_GFp
	.type	EC_POINT_get_affine_coordinates_GFp, @function
EC_POINT_get_affine_coordinates_GFp:
.LFB418:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	EC_POINT_get_affine_coordinates_GFp, .-EC_POINT_get_affine_coordinates_GFp
	.globl	EC_POINT_get_affine_coordinates_GF2m
	.type	EC_POINT_get_affine_coordinates_GF2m, @function
EC_POINT_get_affine_coordinates_GF2m:
.LFB419:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	EC_POINT_get_affine_coordinates_GF2m, .-EC_POINT_get_affine_coordinates_GF2m
	.globl	EC_POINT_add
	.type	EC_POINT_add, @function
EC_POINT_add:
.LFB420:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	jne	.L243
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$941, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L244
.L243:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	je	.L245
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	je	.L245
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L246
.L245:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$946, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L244
.L246:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	160(%rax), %r9
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	EC_POINT_add, .-EC_POINT_add
	.globl	EC_POINT_dbl
	.type	EC_POINT_dbl, @function
EC_POINT_dbl:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L248
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$956, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L249
.L248:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	je	.L250
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L251
.L250:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$960, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L249
.L251:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	168(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	EC_POINT_dbl, .-EC_POINT_dbl
	.globl	EC_POINT_invert
	.type	EC_POINT_invert, @function
EC_POINT_invert:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	jne	.L253
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$969, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L253:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L255
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$973, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L255:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	EC_POINT_invert, .-EC_POINT_invert
	.globl	EC_POINT_is_at_infinity
	.type	EC_POINT_is_at_infinity, @function
EC_POINT_is_at_infinity:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	jne	.L257
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$982, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L258
.L257:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L259
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$986, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L258
.L259:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	184(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	EC_POINT_is_at_infinity, .-EC_POINT_is_at_infinity
	.globl	EC_POINT_is_on_curve
	.type	EC_POINT_is_on_curve, @function
EC_POINT_is_on_curve:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L261
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1003, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L262
.L261:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L263
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1007, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L262
.L263:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	192(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	EC_POINT_is_on_curve, .-EC_POINT_is_on_curve
	.globl	EC_POINT_cmp
	.type	EC_POINT_cmp, @function
EC_POINT_cmp:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	jne	.L265
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1017, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L266
.L265:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	je	.L267
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L268
.L267:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1021, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L266
.L268:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	200(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L266:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	EC_POINT_cmp, .-EC_POINT_cmp
	.globl	EC_POINT_make_affine
	.type	EC_POINT_make_affine, @function
EC_POINT_make_affine:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L270
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1031, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L271
.L270:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L272
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1035, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L271
.L272:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	EC_POINT_make_affine, .-EC_POINT_make_affine
	.globl	EC_POINTs_make_affine
	.type	EC_POINTs_make_affine, @function
EC_POINTs_make_affine:
.LFB427:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.L274
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1047, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L275
.L274:
	movq	$0, -8(%rbp)
	jmp	.L276
.L278:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L277
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1052, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L275
.L277:
	addq	$1, -8(%rbp)
.L276:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L278
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	216(%rax), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L275:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	EC_POINTs_make_affine, .-EC_POINTs_make_affine
	.globl	EC_POINTs_mul
	.type	EC_POINTs_mul, @function
EC_POINTs_mul:
.LFB428:
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
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L280
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1078, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L281
.L280:
	cmpq	$0, -56(%rbp)
	jne	.L282
	cmpq	$0, -64(%rbp)
	jne	.L282
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	jmp	.L281
.L282:
	movq	$0, -16(%rbp)
	jmp	.L283
.L285:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L284
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1087, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L281
.L284:
	addq	$1, -16(%rbp)
.L283:
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jb	.L285
	cmpq	$0, 16(%rbp)
	jne	.L286
	call	BN_CTX_secure_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, 16(%rbp)
.L286:
	cmpq	$0, 16(%rbp)
	jne	.L287
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1097, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L281
.L287:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	je	.L288
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	224(%rax), %r10
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	jmp	.L289
.L288:
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ec_wNAF_mul@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L289:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L281:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	EC_POINTs_mul, .-EC_POINTs_mul
	.globl	EC_POINT_mul
	.type	EC_POINT_mul, @function
EC_POINT_mul:
.LFB429:
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
	movq	%r9, -80(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	je	.L291
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L292
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_point_is_compat
	testl	%eax, %eax
	jne	.L292
.L291:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1125, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L293
.L292:
	cmpq	$0, -56(%rbp)
	jne	.L294
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L294
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	jmp	.L293
.L294:
	cmpq	$0, -80(%rbp)
	jne	.L295
	call	BN_CTX_secure_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
.L295:
	cmpq	$0, -80(%rbp)
	jne	.L296
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L293
.L296:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L297
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L297
	movl	$1, %eax
	jmp	.L298
.L297:
	movl	$0, %eax
.L298:
	cltq
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	je	.L299
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	224(%rax), %r10
	leaq	-72(%rbp), %r8
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-80(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	jmp	.L300
.L299:
	leaq	-72(%rbp), %r8
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-80(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ec_wNAF_mul@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L300:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L293:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	EC_POINT_mul, .-EC_POINT_mul
	.globl	EC_GROUP_precompute_mult
	.type	EC_GROUP_precompute_mult, @function
EC_GROUP_precompute_mult:
.LFB430:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	224(%rax), %rax
	testq	%rax, %rax
	jne	.L302
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_wNAF_precompute_mult@PLT
	jmp	.L303
.L302:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	je	.L304
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	232(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L303
.L304:
	movl	$1, %eax
.L303:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	EC_GROUP_precompute_mult, .-EC_GROUP_precompute_mult
	.globl	EC_GROUP_have_precompute_mult
	.type	EC_GROUP_have_precompute_mult, @function
EC_GROUP_have_precompute_mult:
.LFB431:
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
	movq	224(%rax), %rax
	testq	%rax, %rax
	jne	.L306
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_wNAF_have_precompute_mult@PLT
	jmp	.L307
.L306:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	240(%rax), %rax
	testq	%rax, %rax
	je	.L308
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	240(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L307
.L308:
	movl	$0, %eax
.L307:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	EC_GROUP_have_precompute_mult, .-EC_GROUP_have_precompute_mult
	.type	ec_precompute_mont_data, @function
ec_precompute_mont_data:
.LFB432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 144(%rax)
	cmpq	$0, -16(%rbp)
	je	.L315
	call	BN_MONT_CTX_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 144(%rdx)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L316
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	jne	.L313
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 144(%rax)
	jmp	.L311
.L313:
	movl	$1, -4(%rbp)
	jmp	.L311
.L315:
	nop
	jmp	.L311
.L316:
	nop
.L311:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	ec_precompute_mont_data, .-ec_precompute_mont_data
	.globl	EC_KEY_set_ex_data
	.type	EC_KEY_set_ex_data, @function
EC_KEY_set_ex_data:
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	EC_KEY_set_ex_data, .-EC_KEY_set_ex_data
	.globl	EC_KEY_get_ex_data
	.type	EC_KEY_get_ex_data, @function
EC_KEY_get_ex_data:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	EC_KEY_get_ex_data, .-EC_KEY_get_ex_data
	.globl	ossl_ec_group_simple_order_bits
	.type	ossl_ec_group_simple_order_bits, @function
ossl_ec_group_simple_order_bits:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L322
	movl	$0, %eax
	jmp	.L323
.L322:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
.L323:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	ossl_ec_group_simple_order_bits, .-ossl_ec_group_simple_order_bits
	.type	ec_field_inverse_mod_ord, @function
ec_field_inverse_mod_ord:
.LFB436:
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
	movq	%rcx, -64(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L325
	movl	$0, %eax
	jmp	.L326
.L325:
	cmpq	$0, -64(%rbp)
	jne	.L327
	call	BN_CTX_secure_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
.L327:
	cmpq	$0, -64(%rbp)
	jne	.L328
	movl	$0, %eax
	jmp	.L326
.L328:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L334
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L335
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L336
	movq	-40(%rbp), %rax
	movq	144(%rax), %r8
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mod_exp_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L337
	movl	$1, -4(%rbp)
	jmp	.L330
.L334:
	nop
	jmp	.L330
.L335:
	nop
	jmp	.L330
.L336:
	nop
	jmp	.L330
.L337:
	nop
.L330:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L326:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE436:
	.size	ec_field_inverse_mod_ord, .-ec_field_inverse_mod_ord
	.globl	ossl_ec_group_do_inverse_ord
	.type	ossl_ec_group_do_inverse_ord, @function
ossl_ec_group_do_inverse_ord:
.LFB437:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	400(%rax), %rax
	testq	%rax, %rax
	je	.L339
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	400(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L340
.L339:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ec_field_inverse_mod_ord
.L340:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	ossl_ec_group_do_inverse_ord, .-ossl_ec_group_do_inverse_ord
	.globl	ossl_ec_point_blind_coordinates
	.type	ossl_ec_point_blind_coordinates, @function
ossl_ec_point_blind_coordinates:
.LFB438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	408(%rax), %rax
	testq	%rax, %rax
	jne	.L342
	movl	$1, %eax
	jmp	.L343
.L342:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	408(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L343:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	ossl_ec_point_blind_coordinates, .-ossl_ec_point_blind_coordinates
	.globl	EC_GROUP_get_basis_type
	.type	EC_GROUP_get_basis_type, @function
EC_GROUP_get_basis_type:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	cmpl	$407, %eax
	je	.L345
	movl	$0, %eax
	jmp	.L346
.L345:
	movl	$0, -4(%rbp)
	jmp	.L347
.L353:
	nop
	addl	$1, -4(%rbp)
.L347:
	cmpl	$5, -4(%rbp)
	jg	.L348
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16, %rdx
	movl	8(%rax,%rdx,4), %eax
	testl	%eax, %eax
	jne	.L353
.L348:
	cmpl	$4, -4(%rbp)
	jne	.L350
	movl	$683, %eax
	jmp	.L346
.L350:
	cmpl	$2, -4(%rbp)
	jne	.L351
	movl	$682, %eax
	jmp	.L346
.L351:
	movl	$0, %eax
.L346:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	EC_GROUP_get_basis_type, .-EC_GROUP_get_basis_type
	.globl	EC_GROUP_get_trinomial_basis
	.type	EC_GROUP_get_trinomial_basis, @function
EC_GROUP_get_trinomial_basis:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L355
	movl	$0, %eax
	jmp	.L356
.L355:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	cmpl	$407, %eax
	jne	.L357
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L357
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	je	.L357
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	je	.L358
.L357:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1354, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L356
.L358:
	cmpq	$0, -16(%rbp)
	je	.L359
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L359:
	movl	$1, %eax
.L356:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	EC_GROUP_get_trinomial_basis, .-EC_GROUP_get_trinomial_basis
	.globl	EC_GROUP_get_pentanomial_basis
	.type	EC_GROUP_get_pentanomial_basis, @function
EC_GROUP_get_pentanomial_basis:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L361
	movl	$0, %eax
	jmp	.L362
.L361:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	cmpl	$407, %eax
	jne	.L363
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L363
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	je	.L363
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	je	.L363
	movq	-8(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	je	.L363
	movq	-8(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	je	.L364
.L363:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1374, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L362
.L364:
	cmpq	$0, -16(%rbp)
	je	.L365
	movq	-8(%rbp), %rax
	movl	84(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L365:
	cmpq	$0, -24(%rbp)
	je	.L366
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L366:
	cmpq	$0, -32(%rbp)
	je	.L367
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L367:
	movl	$1, %eax
.L362:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	EC_GROUP_get_pentanomial_basis, .-EC_GROUP_get_pentanomial_basis
	.type	ec_group_explicit_to_named, @function
ec_group_explicit_to_named:
.LFB442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_seed@PLT
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L376
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_seed@PLT
	cmpq	$1, %rax
	jne	.L376
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	je	.L376
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_curve_nid_from_params@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L372
	movl	-40(%rbp), %edx
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_new_by_curve_name_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L377
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
	cmpl	$0, -36(%rbp)
	je	.L374
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_seed@PLT
	cmpq	$1, %rax
	je	.L374
	jmp	.L371
.L372:
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.L374:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-8(%rbp), %rax
	jmp	.L375
.L376:
	nop
	jmp	.L371
.L377:
	nop
.L371:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$0, %eax
.L375:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	ec_group_explicit_to_named, .-ec_group_explicit_to_named
	.type	group_new_from_name, @function
group_new_from_name:
.LFB443:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L379
	cmpl	$6, %eax
	je	.L380
	jmp	.L381
.L379:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L381
.L380:
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_ptr@PLT
	movl	%eax, -4(%rbp)
	nop
.L381:
	cmpl	$0, -4(%rbp)
	je	.L382
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_curve_name2nid@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L383
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1492, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L385
.L383:
	movl	-8(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_new_by_curve_name_ex@PLT
	jmp	.L385
.L382:
	movl	$0, %eax
.L385:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	group_new_from_name, .-group_new_from_name
	.section	.rodata
.LC1:
	.string	"point-format"
.LC2:
	.string	"encoding"
.LC3:
	.string	"seed"
	.text
	.globl	ossl_ec_group_set_params
	.type	ossl_ec_group_set_params, @function
ossl_ec_group_set_params:
.LFB444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -12(%rbp)
	movl	$-1, -16(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L387
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_pt_format_param2id@PLT
	testl	%eax, %eax
	jne	.L388
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1510, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L394
.L388:
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_point_conversion_form@PLT
.L387:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L390
	leaq	-12(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_encoding_param2id@PLT
	testl	%eax, %eax
	jne	.L391
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1519, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L394
.L391:
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
.L390:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L392
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	jne	.L393
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_set_seed@PLT
	testq	%rax, %rax
	jne	.L392
.L393:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1530, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$175, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L394
.L392:
	movl	$1, %eax
.L394:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	ossl_ec_group_set_params, .-ossl_ec_group_set_params
	.section	.rodata
.LC4:
	.string	"group"
.LC5:
	.string	"decoded-from-explicit"
.LC6:
	.string	"field-type"
.LC7:
	.string	"prime-field"
.LC8:
	.string	"characteristic-two-field"
.LC9:
	.string	"a"
.LC10:
	.string	"b"
.LC11:
	.string	"p"
.LC12:
	.string	"generator"
.LC13:
	.string	"order"
.LC14:
	.string	"cofactor"
	.text
	.globl	EC_GROUP_new_from_params
	.type	EC_GROUP_new_from_params, @function
EC_GROUP_new_from_params:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$1, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$-1, -124(%rbp)
	leaq	.LC4(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L396
	movl	$0, -128(%rbp)
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	group_new_from_name
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L397
	movl	$0, %eax
	jmp	.L436
.L397:
	movq	-136(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_group_set_params@PLT
	testl	%eax, %eax
	jne	.L399
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$0, %eax
	jmp	.L436
.L399:
	leaq	.LC5(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L400
	leaq	-128(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L400
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1571, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$145, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movl	$0, %eax
	jmp	.L436
.L400:
	movl	-128(%rbp), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-8(%rbp), %rax
	jmp	.L436
.L396:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L402
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1585, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L436
.L402:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L403
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1595, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L403:
	leaq	.LC6(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L405
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L406
.L405:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1601, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L406:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L407
	movl	$1, -32(%rbp)
	jmp	.L408
.L407:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L409
	movl	$0, -32(%rbp)
	jmp	.L408
.L409:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1611, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L408:
	leaq	.LC9(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -72(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	jne	.L410
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1617, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$168, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L410:
	leaq	.LC10(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -80(%rbp)
	leaq	-104(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	jne	.L411
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1622, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$169, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L411:
	leaq	.LC11(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	leaq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	jne	.L412
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1629, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L412:
	cmpl	$0, -32(%rbp)
	je	.L413
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L414
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L415
.L414:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1635, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L415:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -28(%rbp)
	cmpl	$661, -28(%rbp)
	jle	.L416
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1640, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L416:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GFp@PLT
	movq	%rax, -8(%rbp)
	jmp	.L417
.L413:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_GROUP_new_curve_GF2m@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L417
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, -28(%rbp)
	cmpl	$661, -28(%rbp)
	jle	.L417
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1656, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L417:
	cmpq	$0, -8(%rbp)
	jne	.L418
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1664, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L418:
	leaq	.LC3(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L419
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L420
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1672, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$175, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L420:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_set_seed@PLT
	testq	%rax, %rax
	je	.L437
.L419:
	leaq	.LC12(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L421
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L422
.L421:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1683, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L422:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L438
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_point_conversion_form@PLT
	movq	-64(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	jne	.L424
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1692, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L424:
	leaq	.LC13(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	je	.L425
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L425
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L425
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	-28(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	jle	.L426
.L425:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1701, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L426:
	leaq	.LC14(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L427
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	je	.L428
	leaq	-120(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	jne	.L427
.L428:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1710, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$171, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L427:
	movq	-120(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_set_generator@PLT
	testl	%eax, %eax
	jne	.L429
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1717, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L429:
	movq	-48(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ec_group_explicit_to_named
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L430
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1723, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$174, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L430:
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L431
	leaq	.LC2(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L432
	leaq	-124(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_encoding_param2id@PLT
	testl	%eax, %eax
	jne	.L432
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1734, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L432:
	movl	-124(%rbp), %eax
	cmpl	$1, %eax
	jne	.L433
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1738, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L404
.L433:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
	jmp	.L434
.L431:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.L434:
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
	movl	$1, -12(%rbp)
	jmp	.L404
.L437:
	nop
	jmp	.L404
.L438:
	nop
.L404:
	cmpl	$0, -12(%rbp)
	jne	.L435
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	$0, -8(%rbp)
.L435:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-8(%rbp), %rax
.L436:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	EC_GROUP_new_from_params, .-EC_GROUP_new_from_params
	.globl	EC_GROUP_to_params
	.type	EC_GROUP_to_params, @function
EC_GROUP_to_params:
.LFB446:
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
	movq	%rcx, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L447
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L448
	cmpq	$0, -64(%rbp)
	jne	.L443
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
.L443:
	cmpq	$0, -64(%rbp)
	je	.L449
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	leaq	-32(%rbp), %rcx
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_ec_group_todata@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L450
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -24(%rbp)
	jmp	.L441
.L447:
	nop
	jmp	.L441
.L448:
	nop
	jmp	.L441
.L449:
	nop
	jmp	.L441
.L450:
	nop
.L441:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1791, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	EC_GROUP_to_params, .-EC_GROUP_to_params
	.section	.rodata
	.align 16
	.type	__func__.28, @object
	.size	__func__.28, 21
__func__.28:
	.string	"ossl_ec_group_new_ex"
	.align 8
	.type	__func__.27, @object
	.size	__func__.27, 14
__func__.27:
	.string	"EC_GROUP_copy"
	.align 16
	.type	__func__.26, @object
	.size	__func__.26, 23
__func__.26:
	.string	"EC_GROUP_set_generator"
	.align 16
	.type	__func__.25, @object
	.size	__func__.25, 19
__func__.25:
	.string	"EC_GROUP_set_curve"
	.align 16
	.type	__func__.24, @object
	.size	__func__.24, 19
__func__.24:
	.string	"EC_GROUP_get_curve"
	.align 16
	.type	__func__.23, @object
	.size	__func__.23, 20
__func__.23:
	.string	"EC_GROUP_get_degree"
	.align 16
	.type	__func__.22, @object
	.size	__func__.22, 28
__func__.22:
	.string	"EC_GROUP_check_discriminant"
	.align 8
	.type	__func__.21, @object
	.size	__func__.21, 13
__func__.21:
	.string	"EC_POINT_new"
	.align 8
	.type	__func__.20, @object
	.size	__func__.20, 14
__func__.20:
	.string	"EC_POINT_copy"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 25
__func__.19:
	.string	"EC_POINT_set_to_infinity"
	.align 32
	.type	__func__.18, @object
	.size	__func__.18, 41
__func__.18:
	.string	"EC_POINT_set_Jprojective_coordinates_GFp"
	.align 32
	.type	__func__.17, @object
	.size	__func__.17, 41
__func__.17:
	.string	"EC_POINT_get_Jprojective_coordinates_GFp"
	.align 32
	.type	__func__.16, @object
	.size	__func__.16, 32
__func__.16:
	.string	"EC_POINT_set_affine_coordinates"
	.align 32
	.type	__func__.15, @object
	.size	__func__.15, 32
__func__.15:
	.string	"EC_POINT_get_affine_coordinates"
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 13
__func__.14:
	.string	"EC_POINT_add"
	.align 8
	.type	__func__.13, @object
	.size	__func__.13, 13
__func__.13:
	.string	"EC_POINT_dbl"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 16
__func__.12:
	.string	"EC_POINT_invert"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 24
__func__.11:
	.string	"EC_POINT_is_at_infinity"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 21
__func__.10:
	.string	"EC_POINT_is_on_curve"
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 13
__func__.9:
	.string	"EC_POINT_cmp"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 21
__func__.8:
	.string	"EC_POINT_make_affine"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 22
__func__.7:
	.string	"EC_POINTs_make_affine"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 14
__func__.6:
	.string	"EC_POINTs_mul"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 13
__func__.5:
	.string	"EC_POINT_mul"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 29
__func__.4:
	.string	"EC_GROUP_get_trinomial_basis"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 31
__func__.3:
	.string	"EC_GROUP_get_pentanomial_basis"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"group_new_from_name"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"ossl_ec_group_set_params"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 25
__func__.0:
	.string	"EC_GROUP_new_from_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
