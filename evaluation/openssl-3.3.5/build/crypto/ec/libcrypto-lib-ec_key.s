	.file	"ec_key.c"
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
	.type	CRYPTO_UP_REF, @function
CRYPTO_UP_REF:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	CRYPTO_UP_REF, .-CRYPTO_UP_REF
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	negl	%edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L8
.L8:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.globl	EC_KEY_new
	.type	EC_KEY_new, @function
EC_KEY_new:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_ec_key_new_method_int@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	EC_KEY_new, .-EC_KEY_new
	.globl	EC_KEY_new_ex
	.type	EC_KEY_new_ex, @function
EC_KEY_new_ex:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_new_method_int@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	EC_KEY_new_ex, .-EC_KEY_new_ex
	.globl	EC_KEY_new_by_curve_name_ex
	.type	EC_KEY_new_by_curve_name_ex, @function
EC_KEY_new_by_curve_name_ex:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_new_by_curve_name_ex@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
	jmp	.L17
.L18:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L19
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
	jmp	.L17
.L19:
	movq	-8(%rbp), %rax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	EC_KEY_new_by_curve_name_ex, .-EC_KEY_new_by_curve_name_ex
	.globl	EC_KEY_new_by_curve_name
	.type	EC_KEY_new_by_curve_name, @function
EC_KEY_new_by_curve_name:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	EC_KEY_new_by_curve_name_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	EC_KEY_new_by_curve_name, .-EC_KEY_new_by_curve_name
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ec_key.c"
	.text
	.globl	EC_KEY_free
	.type	EC_KEY_free, @function
EC_KEY_free:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L29
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L30
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L26:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	360(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L27:
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$101, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$103, %ecx
	movl	$104, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L22
.L29:
	nop
	jmp	.L22
.L30:
	nop
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	EC_KEY_free, .-EC_KEY_free
	.globl	EC_KEY_copy
	.type	EC_KEY_copy, @function
EC_KEY_copy:
.LFB529:
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
	je	.L32
	cmpq	$0, -16(%rbp)
	jne	.L33
.L32:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L35
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L36:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	360(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L37:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L34
.L38:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.L35:
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_group_new_ex@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	movl	$0, %eax
	jmp	.L34
.L40:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_copy@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L34
.L41:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	movl	$0, %eax
	jmp	.L34
.L43:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_copy@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$0, %eax
	jmp	.L34
.L42:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	call	BN_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	movl	$0, %eax
	jmp	.L34
.L44:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	jne	.L45
	movl	$0, %eax
	jmp	.L34
.L45:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	352(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L34
.L39:
	movq	-16(%rbp), %rax
	movl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 52(%rax)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_dup_ex_data@PLT
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L34
.L46:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L47
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L48
	movl	$0, %eax
	jmp	.L34
.L48:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L47:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L34
.L49:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	EC_KEY_copy, .-EC_KEY_copy
	.globl	EC_KEY_dup
	.type	EC_KEY_dup, @function
EC_KEY_dup:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ossl_ec_key_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	EC_KEY_dup, .-EC_KEY_dup
	.globl	EC_KEY_up_ref
	.type	EC_KEY_up_ref, @function
EC_KEY_up_ref:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	56(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L53
	movl	$0, %eax
	jmp	.L55
.L53:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	EC_KEY_up_ref, .-EC_KEY_up_ref
	.globl	EC_KEY_get0_engine
	.type	EC_KEY_get0_engine, @function
EC_KEY_get0_engine:
.LFB532:
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
.LFE532:
	.size	EC_KEY_get0_engine, .-EC_KEY_get0_engine
	.globl	EC_KEY_generate_key
	.type	EC_KEY_generate_key, @function
EC_KEY_generate_key:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L59
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L60
.L59:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L63
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 96(%rax)
.L63:
	movl	-4(%rbp), %eax
	jmp	.L61
.L62:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$152, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	EC_KEY_generate_key, .-EC_KEY_generate_key
	.globl	ossl_ec_key_gen
	.type	ossl_ec_key_gen, @function
ossl_ec_key_gen:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	328(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L65
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 96(%rax)
.L65:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	ossl_ec_key_gen, .-ossl_ec_key_gen
	.section	.rodata
.LC1:
	.string	"ECDSA"
.LC2:
	.string	"Conditional_KAT"
	.text
	.type	ecdsa_keygen_knownanswer_test, @function
ecdsa_keygen_knownanswer_test:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movq	%rdi, -552(%rbp)
	movq	%rsi, -560(%rbp)
	movq	%rdx, -568(%rbp)
	movq	%rcx, -576(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	-544(%rbp), %rdx
	movl	$0, %eax
	movl	$64, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	$0, -24(%rbp)
	movq	-576(%rbp), %rdx
	movq	-568(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L68
	movl	$0, %eax
	jmp	.L75
.L68:
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_onbegin@PLT
	movq	-552(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L76
	movq	-552(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-552(%rbp), %rax
	movq	24(%rax), %rax
	movq	-560(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	je	.L77
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$4096, %eax
	jg	.L78
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-544(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	%eax, -28(%rbp)
	leaq	-544(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_oncorrupt_byte@PLT
	testl	%eax, %eax
	je	.L74
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-28(%rbp), %ecx
	leaq	-544(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L79
.L74:
	movq	-552(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-552(%rbp), %rax
	movq	24(%rax), %rax
	movq	-560(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L71
.L76:
	nop
	jmp	.L71
.L77:
	nop
	jmp	.L71
.L78:
	nop
	jmp	.L71
.L79:
	nop
.L71:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_onend@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	-4(%rbp), %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	ecdsa_keygen_knownanswer_test, .-ecdsa_keygen_knownanswer_test
	.section	.rodata
.LC3:
	.string	"Conditional_PCT"
	.text
	.type	ec_generate_key, @function
ec_generate_key:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_secure_new_ex@PLT
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_flags@PLT
	andl	$4, %eax
	shrl	$2, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L98
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L83
	call	BN_secure_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L84
	jmp	.L82
.L83:
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.L84:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L99
	cmpl	$0, -60(%rbp)
	je	.L86
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L100
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L90
	jmp	.L100
.L86:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L101
.L90:
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_range_ex@PLT
	testl	%eax, %eax
	je	.L102
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L90
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L91
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L92
	jmp	.L82
.L91:
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.L92:
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	je	.L103
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 96(%rax)
	movl	$1, -4(%rbp)
	cmpl	$0, -92(%rbp)
	je	.L104
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_get_callback@PLT
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecdsa_keygen_pairwise_test
	testl	%eax, %eax
	je	.L94
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ecdsa_keygen_knownanswer_test
	testl	%eax, %eax
	je	.L94
	movl	$1, %eax
	jmp	.L95
.L94:
	movl	$0, %eax
.L95:
	movl	%eax, -4(%rbp)
	jmp	.L82
.L98:
	nop
	jmp	.L82
.L99:
	nop
	jmp	.L82
.L100:
	nop
	jmp	.L82
.L101:
	nop
	jmp	.L82
.L102:
	nop
	jmp	.L82
.L103:
	nop
	jmp	.L82
.L104:
	nop
.L82:
	cmpl	$0, -4(%rbp)
	jne	.L96
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	ossl_set_error_state@PLT
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear@PLT
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L96
	movq	-88(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
.L96:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	ec_generate_key, .-ec_generate_key
	.globl	ossl_ec_generate_key_dhkem
	.type	ossl_ec_generate_key_dhkem, @function
ossl_ec_generate_key_dhkem:
.LFB537:
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
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L106
	call	BN_secure_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L113
.L106:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_dhkem_derive_private@PLT
	testl	%eax, %eax
	jle	.L114
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L109
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L115
.L109:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_simple_generate_public_key@PLT
	testl	%eax, %eax
	je	.L116
	movl	$1, -4(%rbp)
	jmp	.L107
.L113:
	nop
	jmp	.L107
.L114:
	nop
	jmp	.L107
.L115:
	nop
	jmp	.L107
.L116:
	nop
.L107:
	cmpl	$0, -4(%rbp)
	jne	.L111
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
.L111:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	ossl_ec_generate_key_dhkem, .-ossl_ec_generate_key_dhkem
	.globl	ossl_ec_key_simple_generate_key
	.type	ossl_ec_key_simple_generate_key, @function
ossl_ec_key_simple_generate_key:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ec_generate_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	ossl_ec_key_simple_generate_key, .-ossl_ec_key_simple_generate_key
	.globl	ossl_ec_key_simple_generate_public_key
	.type	ossl_ec_key_simple_generate_public_key, @function
ossl_ec_key_simple_generate_public_key:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	cmpl	$1, -12(%rbp)
	jne	.L122
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 96(%rax)
.L122:
	movl	-12(%rbp), %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	ossl_ec_key_simple_generate_public_key, .-ossl_ec_key_simple_generate_public_key
	.globl	EC_KEY_check_key
	.type	EC_KEY_check_key, @function
EC_KEY_check_key:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L124
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L125
.L124:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$472, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L126
.L125:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	336(%rax), %rax
	testq	%rax, %rax
	jne	.L127
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$477, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L126
.L127:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	336(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	EC_KEY_check_key, .-EC_KEY_check_key
	.type	ec_key_public_range_check, @function
ec_key_public_range_check:
.LFB541:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L137
	movq	-48(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L138
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	cmpl	$406, %eax
	jne	.L132
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L139
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L139
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L139
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L134
	jmp	.L139
.L132:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L140
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L140
.L134:
	movl	$1, -4(%rbp)
	jmp	.L130
.L137:
	nop
	jmp	.L130
.L138:
	nop
	jmp	.L130
.L139:
	nop
	jmp	.L130
.L140:
	nop
.L130:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	ec_key_public_range_check, .-ec_key_public_range_check
	.globl	ossl_ec_key_public_check_quick
	.type	ossl_ec_key_public_check_quick, @function
ossl_ec_key_public_check_quick:
.LFB542:
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
	je	.L142
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L142
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L143
.L142:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$533, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L144
.L143:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L145
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$539, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L144
.L145:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ec_key_public_range_check
	testl	%eax, %eax
	jne	.L146
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$545, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L144
.L146:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_on_curve@PLT
	testl	%eax, %eax
	jg	.L147
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$551, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L144
.L147:
	movl	$1, %eax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	ossl_ec_key_public_check_quick, .-ossl_ec_key_public_check_quick
	.globl	ossl_ec_key_public_check
	.type	ossl_ec_key_public_check, @function
ossl_ec_key_public_check:
.LFB543:
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
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_public_check_quick@PLT
	testl	%eax, %eax
	jne	.L149
	movl	$0, %eax
	jmp	.L150
.L149:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L151
	movl	$0, %eax
	jmp	.L150
.L151:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L152
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$576, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L153
.L152:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	jne	.L154
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$581, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L153
.L154:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	jne	.L155
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$585, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L153
.L155:
	movl	$1, -4(%rbp)
.L153:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	-4(%rbp), %eax
.L150:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	ossl_ec_key_public_check, .-ossl_ec_key_public_check
	.globl	ossl_ec_key_private_check
	.type	ossl_ec_key_private_check, @function
ossl_ec_key_private_check:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L157
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L157
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L158
.L157:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$602, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L159
.L158:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L160
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L161
.L160:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$607, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L159
.L161:
	movl	$1, %eax
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	ossl_ec_key_private_check, .-ossl_ec_key_private_check
	.globl	ossl_ec_key_pairwise_check
	.type	ossl_ec_key_pairwise_check, @function
ossl_ec_key_pairwise_check:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L163
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L164
.L163:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$627, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L165
.L164:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L170
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_POINT_mul@PLT
	testl	%eax, %eax
	jne	.L168
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$637, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L167
.L168:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	EC_POINT_cmp@PLT
	testl	%eax, %eax
	je	.L169
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$641, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L167
.L169:
	movl	$1, -4(%rbp)
	jmp	.L167
.L170:
	nop
.L167:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	-4(%rbp), %eax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	ossl_ec_key_pairwise_check, .-ossl_ec_key_pairwise_check
	.globl	ossl_ec_key_simple_check_key
	.type	ossl_ec_key_simple_check_key, @function
ossl_ec_key_simple_check_key:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L172
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$667, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L173
.L172:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L174
	movl	$0, %eax
	jmp	.L173
.L174:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_public_check@PLT
	testl	%eax, %eax
	je	.L179
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L177
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_private_check@PLT
	testl	%eax, %eax
	je	.L180
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_pairwise_check@PLT
	testl	%eax, %eax
	je	.L180
.L177:
	movl	$1, -4(%rbp)
	jmp	.L176
.L179:
	nop
	jmp	.L176
.L180:
	nop
.L176:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L173:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	ossl_ec_key_simple_check_key, .-ossl_ec_key_simple_check_key
	.globl	EC_KEY_set_public_key_affine_coordinates
	.type	EC_KEY_set_public_key_affine_coordinates, @function
EC_KEY_set_public_key_affine_coordinates:
.LFB547:
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
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L182
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L182
	cmpq	$0, -64(%rbp)
	je	.L182
	cmpq	$0, -72(%rbp)
	jne	.L183
.L182:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$696, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L184
.L183:
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L185
	movl	$0, %eax
	jmp	.L184
.L185:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L195
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L196
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L197
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L198
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L191
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L192
.L191:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$724, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L187
.L192:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_set_public_key@PLT
	testl	%eax, %eax
	je	.L199
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_check_key@PLT
	testl	%eax, %eax
	je	.L200
	movl	$1, -4(%rbp)
	jmp	.L187
.L195:
	nop
	jmp	.L187
.L196:
	nop
	jmp	.L187
.L197:
	nop
	jmp	.L187
.L198:
	nop
	jmp	.L187
.L199:
	nop
	jmp	.L187
.L200:
	nop
.L187:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movl	-4(%rbp), %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	EC_KEY_set_public_key_affine_coordinates, .-EC_KEY_set_public_key_affine_coordinates
	.globl	ossl_ec_key_get_libctx
	.type	ossl_ec_key_get_libctx, @function
ossl_ec_key_get_libctx:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	ossl_ec_key_get_libctx, .-ossl_ec_key_get_libctx
	.globl	ossl_ec_key_get0_propq
	.type	ossl_ec_key_get0_propq, @function
ossl_ec_key_get0_propq:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	ossl_ec_key_get0_propq, .-ossl_ec_key_get0_propq
	.globl	ossl_ec_key_set0_libctx
	.type	ossl_ec_key_set0_libctx, @function
ossl_ec_key_set0_libctx:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 80(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	ossl_ec_key_set0_libctx, .-ossl_ec_key_set0_libctx
	.globl	EC_KEY_get0_group
	.type	EC_KEY_get0_group, @function
EC_KEY_get0_group:
.LFB551:
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
.LFE551:
	.size	EC_KEY_get0_group, .-EC_KEY_get0_group
	.globl	EC_KEY_set_group
	.type	EC_KEY_set_group, @function
EC_KEY_set_group:
.LFB552:
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
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L209
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L209
	movl	$0, %eax
	jmp	.L210
.L209:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	cmpl	$1172, %eax
	jne	.L211
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	EC_KEY_set_flags@PLT
.L211:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	EC_KEY_set_group, .-EC_KEY_set_group
	.globl	EC_KEY_get0_private_key
	.type	EC_KEY_get0_private_key, @function
EC_KEY_get0_private_key:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	EC_KEY_get0_private_key, .-EC_KEY_get0_private_key
	.globl	EC_KEY_set_private_key
	.type	EC_KEY_set_private_key, @function
EC_KEY_set_private_key:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L215
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L216
.L215:
	movl	$0, %eax
	jmp	.L217
.L216:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L218
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L219
.L218:
	movl	$0, %eax
	jmp	.L217
.L219:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	320(%rax), %rax
	testq	%rax, %rax
	je	.L220
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	320(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L220
	movl	$0, %eax
	jmp	.L217
.L220:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L221
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L221
	movl	$0, %eax
	jmp	.L217
.L221:
	cmpq	$0, -48(%rbp)
	jne	.L222
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$0, %eax
	jmp	.L217
.L222:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L223
	movl	$0, %eax
	jmp	.L217
.L223:
	movq	-16(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_get_top@PLT
	addl	$2, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	jne	.L224
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	$0, %eax
	jmp	.L217
.L224:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 96(%rax)
	movl	$1, %eax
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	EC_KEY_set_private_key, .-EC_KEY_set_private_key
	.globl	EC_KEY_get0_public_key
	.type	EC_KEY_get0_public_key, @function
EC_KEY_get0_public_key:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	EC_KEY_get0_public_key, .-EC_KEY_get0_public_key
	.globl	EC_KEY_set_public_key
	.type	EC_KEY_set_public_key, @function
EC_KEY_set_public_key:
.LFB556:
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
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L228
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	56(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L228
	movl	$0, %eax
	jmp	.L229
.L228:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L229:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	EC_KEY_set_public_key, .-EC_KEY_set_public_key
	.globl	EC_KEY_get_enc_flags
	.type	EC_KEY_get_enc_flags, @function
EC_KEY_get_enc_flags:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	EC_KEY_get_enc_flags, .-EC_KEY_get_enc_flags
	.globl	EC_KEY_set_enc_flags
	.type	EC_KEY_set_enc_flags, @function
EC_KEY_set_enc_flags:
.LFB558:
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
	movl	%edx, 48(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	EC_KEY_set_enc_flags, .-EC_KEY_set_enc_flags
	.globl	EC_KEY_get_conv_form
	.type	EC_KEY_get_conv_form, @function
EC_KEY_get_conv_form:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	EC_KEY_get_conv_form, .-EC_KEY_get_conv_form
	.globl	EC_KEY_set_conv_form
	.type	EC_KEY_set_conv_form, @function
EC_KEY_set_conv_form:
.LFB560:
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
	movl	-12(%rbp), %edx
	movl	%edx, 52(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L237
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_point_conversion_form@PLT
.L237:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	EC_KEY_set_conv_form, .-EC_KEY_set_conv_form
	.globl	EC_KEY_set_asn1_flag
	.type	EC_KEY_set_asn1_flag, @function
EC_KEY_set_asn1_flag:
.LFB561:
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
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L240
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EC_GROUP_set_asn1_flag@PLT
.L240:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	EC_KEY_set_asn1_flag, .-EC_KEY_set_asn1_flag
	.globl	EC_KEY_precompute_mult
	.type	EC_KEY_precompute_mult, @function
EC_KEY_precompute_mult:
.LFB562:
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
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L242
	movl	$0, %eax
	jmp	.L243
.L242:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_GROUP_precompute_mult@PLT
.L243:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	EC_KEY_precompute_mult, .-EC_KEY_precompute_mult
	.globl	EC_KEY_get_flags
	.type	EC_KEY_get_flags, @function
EC_KEY_get_flags:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	EC_KEY_get_flags, .-EC_KEY_get_flags
	.globl	EC_KEY_set_flags
	.type	EC_KEY_set_flags, @function
EC_KEY_set_flags:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	orl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	EC_KEY_set_flags, .-EC_KEY_set_flags
	.globl	EC_KEY_clear_flags
	.type	EC_KEY_clear_flags, @function
EC_KEY_clear_flags:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	movl	-12(%rbp), %edx
	notl	%edx
	andl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	EC_KEY_clear_flags, .-EC_KEY_clear_flags
	.globl	EC_KEY_decoded_from_explicit_params
	.type	EC_KEY_decoded_from_explicit_params, @function
EC_KEY_decoded_from_explicit_params:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L249
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L250
.L249:
	movl	$-1, %eax
	jmp	.L251
.L250:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	40(%rax), %eax
.L251:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	EC_KEY_decoded_from_explicit_params, .-EC_KEY_decoded_from_explicit_params
	.globl	EC_KEY_key2buf
	.type	EC_KEY_key2buf, @function
EC_KEY_key2buf:
.LFB567:
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
	cmpq	$0, -8(%rbp)
	je	.L253
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L253
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L254
.L253:
	movl	$0, %eax
	jmp	.L255
.L254:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_point2buf@PLT
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	EC_KEY_key2buf, .-EC_KEY_key2buf
	.globl	EC_KEY_oct2key
	.type	EC_KEY_oct2key, @function
EC_KEY_oct2key:
.LFB568:
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
	je	.L257
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L258
.L257:
	movl	$0, %eax
	jmp	.L259
.L258:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L260
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_POINT_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L260:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L261
	movl	$0, %eax
	jmp	.L259
.L261:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_oct2point@PLT
	testl	%eax, %eax
	jne	.L262
	movl	$0, %eax
	jmp	.L259
.L262:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L263
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 52(%rax)
.L263:
	movl	$1, %eax
.L259:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	EC_KEY_oct2key, .-EC_KEY_oct2key
	.globl	EC_KEY_priv2oct
	.type	EC_KEY_priv2oct, @function
EC_KEY_priv2oct:
.LFB569:
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
	je	.L265
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L266
.L265:
	movl	$0, %eax
	jmp	.L267
.L266:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	jne	.L268
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$994, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L267
.L268:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	304(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	EC_KEY_priv2oct, .-EC_KEY_priv2oct
	.globl	ossl_ec_key_simple_priv2oct
	.type	ossl_ec_key_simple_priv2oct, @function
ossl_ec_key_simple_priv2oct:
.LFB570:
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
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EC_GROUP_order_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L270
	movl	$0, %eax
	jmp	.L271
.L270:
	cmpq	$0, -32(%rbp)
	jne	.L272
	movq	-8(%rbp), %rax
	jmp	.L271
.L272:
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L273
	movl	$0, %eax
	jmp	.L271
.L273:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	cmpl	$-1, %eax
	jne	.L274
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1017, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L271
.L274:
	movq	-8(%rbp), %rax
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	ossl_ec_key_simple_priv2oct, .-ossl_ec_key_simple_priv2oct
	.globl	EC_KEY_oct2priv
	.type	EC_KEY_oct2priv, @function
EC_KEY_oct2priv:
.LFB571:
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
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L276
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L277
.L276:
	movl	$0, %eax
	jmp	.L278
.L277:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	312(%rax), %rax
	testq	%rax, %rax
	jne	.L279
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
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
	jmp	.L278
.L279:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	312(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L280
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 96(%rax)
.L280:
	movl	-4(%rbp), %eax
.L278:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	EC_KEY_oct2priv, .-EC_KEY_oct2priv
	.globl	ossl_ec_key_simple_oct2priv
	.type	ossl_ec_key_simple_oct2priv, @function
ossl_ec_key_simple_oct2priv:
.LFB572:
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
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L282
	call	BN_secure_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
.L282:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L283
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1046, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L284
.L283:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	jne	.L285
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1050, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L284
.L285:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	movl	$1, %eax
.L284:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	ossl_ec_key_simple_oct2priv, .-ossl_ec_key_simple_oct2priv
	.globl	EC_KEY_priv2buf
	.type	EC_KEY_priv2buf, @function
EC_KEY_priv2buf:
.LFB573:
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
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EC_KEY_priv2oct@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L287
	movl	$0, %eax
	jmp	.L288
.L287:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1065, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L289
	movl	$0, %eax
	jmp	.L288
.L289:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_priv2oct@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L290
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1069, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L288
.L290:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
.L288:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	EC_KEY_priv2buf, .-EC_KEY_priv2buf
	.globl	EC_KEY_can_sign
	.type	EC_KEY_can_sign, @function
EC_KEY_can_sign:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L292
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L292
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L293
.L292:
	movl	$0, %eax
	jmp	.L294
.L293:
	movl	$1, %eax
.L294:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	EC_KEY_can_sign, .-EC_KEY_can_sign
	.type	ecdsa_keygen_pairwise_test, @function
ecdsa_keygen_pairwise_test:
.LFB575:
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
	movl	$0, -4(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$16, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L296
	movl	$0, %eax
	jmp	.L301
.L296:
	leaq	.LC1(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_onbegin@PLT
	movq	-56(%rbp), %rdx
	movl	-8(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ECDSA_do_sign@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L302
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_oncorrupt_byte@PLT
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %esi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_do_verify@PLT
	cmpl	$1, %eax
	jne	.L303
	movl	$1, -4(%rbp)
	jmp	.L299
.L302:
	nop
	jmp	.L299
.L303:
	nop
.L299:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_onend@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ECDSA_SIG_free@PLT
	movl	-4(%rbp), %eax
.L301:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	ecdsa_keygen_pairwise_test, .-ecdsa_keygen_pairwise_test
	.section	.rodata
	.align 8
	.type	__func__.12, @object
	.size	__func__.12, 12
__func__.12:
	.string	"EC_KEY_copy"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 20
__func__.11:
	.string	"EC_KEY_generate_key"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 17
__func__.10:
	.string	"EC_KEY_check_key"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 31
__func__.9:
	.string	"ossl_ec_key_public_check_quick"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 25
__func__.8:
	.string	"ossl_ec_key_public_check"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 26
__func__.7:
	.string	"ossl_ec_key_private_check"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 27
__func__.6:
	.string	"ossl_ec_key_pairwise_check"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 29
__func__.5:
	.string	"ossl_ec_key_simple_check_key"
	.align 32
	.type	__func__.4, @object
	.size	__func__.4, 41
__func__.4:
	.string	"EC_KEY_set_public_key_affine_coordinates"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"EC_KEY_priv2oct"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 28
__func__.2:
	.string	"ossl_ec_key_simple_priv2oct"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"EC_KEY_oct2priv"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 28
__func__.0:
	.string	"ossl_ec_key_simple_oct2priv"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
