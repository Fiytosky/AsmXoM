	.file	"p_lib.c"
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
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	xchgl	(%rax), %edx
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
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
	.type	ossl_check_X509_ATTRIBUTE_sk_type, @function
ossl_check_X509_ATTRIBUTE_sk_type:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	ossl_check_X509_ATTRIBUTE_sk_type, .-ossl_check_X509_ATTRIBUTE_sk_type
	.type	ossl_check_X509_ATTRIBUTE_freefunc_type, @function
ossl_check_X509_ATTRIBUTE_freefunc_type:
.LFB448:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	ossl_check_X509_ATTRIBUTE_freefunc_type, .-ossl_check_X509_ATTRIBUTE_freefunc_type
	.section	.rodata
.LC0:
	.string	"../crypto/evp/p_lib.c"
	.text
	.globl	EVP_PKEY_get_bits
	.type	EVP_PKEY_get_bits, @function
EVP_PKEY_get_bits:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	movl	136(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L18:
	cmpl	$0, -4(%rbp)
	jg	.L19
	call	ERR_new@PLT
	leaq	__func__.21(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$166, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L20
.L19:
	movl	-4(%rbp), %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	EVP_PKEY_get_bits, .-EVP_PKEY_get_bits
	.globl	EVP_PKEY_get_security_bits
	.type	EVP_PKEY_get_security_bits, @function
EVP_PKEY_get_security_bits:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L22
	movq	-24(%rbp), %rax
	movl	140(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L22:
	cmpl	$0, -4(%rbp)
	jg	.L23
	call	ERR_new@PLT
	leaq	__func__.20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$168, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	movl	-4(%rbp), %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	EVP_PKEY_get_security_bits, .-EVP_PKEY_get_security_bits
	.globl	EVP_PKEY_save_parameters
	.type	EVP_PKEY_save_parameters, @function
EVP_PKEY_save_parameters:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$116, %eax
	jne	.L26
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L27
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
.L27:
	movl	-8(%rbp), %eax
	jmp	.L28
.L26:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$408, %eax
	jne	.L29
	movq	-24(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L30
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 72(%rax)
.L30:
	movl	-4(%rbp), %eax
	jmp	.L28
.L29:
	movl	$0, %eax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	EVP_PKEY_save_parameters, .-EVP_PKEY_save_parameters
	.globl	EVP_PKEY_set_ex_data
	.type	EVP_PKEY_set_ex_data, @function
EVP_PKEY_set_ex_data:
.LFB623:
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
	leaq	80(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	EVP_PKEY_set_ex_data, .-EVP_PKEY_set_ex_data
	.globl	EVP_PKEY_get_ex_data
	.type	EVP_PKEY_get_ex_data, @function
EVP_PKEY_get_ex_data:
.LFB624:
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
	leaq	80(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	EVP_PKEY_get_ex_data, .-EVP_PKEY_get_ex_data
	.globl	EVP_PKEY_copy_parameters
	.type	EVP_PKEY_copy_parameters, @function
EVP_PKEY_copy_parameters:
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
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L36
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-48(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_copy_downgraded@PLT
	testl	%eax, %eax
	je	.L53
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.L36:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L39
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L40
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type@PLT
	testl	%eax, %eax
	jne	.L42
	jmp	.L38
.L40:
	movq	-48(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type_by_keymgmt@PLT
	testl	%eax, %eax
	jne	.L54
	jmp	.L38
.L42:
	jmp	.L54
.L39:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L43
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L43
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$168, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L54:
	nop
.L43:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	je	.L44
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$174, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L44:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_missing_parameters@PLT
	testl	%eax, %eax
	jne	.L45
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_parameters_eq@PLT
	cmpl	$1, %eax
	jne	.L46
	movl	$1, -4(%rbp)
	jmp	.L38
.L46:
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$182, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$153, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L45:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_copy@PLT
	movl	%eax, -4(%rbp)
	jmp	.L38
.L48:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L49
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.19(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$210, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L50:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_dup@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 104(%rdx)
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L38
.L49:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	jmp	.L38
.L53:
	nop
	jmp	.L38
.L55:
	nop
.L38:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	EVP_PKEY_copy_parameters, .-EVP_PKEY_copy_parameters
	.globl	EVP_PKEY_missing_parameters
	.type	EVP_PKEY_missing_parameters, @function
EVP_PKEY_missing_parameters:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L57
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_has@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L59
.L58:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L59
.L57:
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	EVP_PKEY_missing_parameters, .-EVP_PKEY_missing_parameters
	.type	evp_pkey_cmp_any, @function
evp_pkey_cmp_any:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L61
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L62
.L61:
	movl	$1, %eax
	jmp	.L63
.L62:
	movl	$0, %eax
.L63:
	cltq
	testq	%rax, %rax
	jne	.L64
	movl	$-2, %eax
	jmp	.L73
.L64:
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_match@PLT
	jmp	.L73
.L66:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L67
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_is_a@PLT
	testl	%eax, %eax
	jne	.L67
	movl	$-1, %eax
	jmp	.L73
.L67:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L68
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_is_a@PLT
	testl	%eax, %eax
	jne	.L68
	movl	$-1, %eax
	jmp	.L73
.L68:
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L69
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L69
	leaq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L69
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L69:
	cmpq	$0, -24(%rbp)
	jne	.L70
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L70
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L70
	leaq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_pkey_export_to_provider@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L70
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L70:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L71
	movl	$-2, %eax
	jmp	.L73
.L71:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L72
	movl	$-2, %eax
	jmp	.L73
.L72:
	movq	-32(%rbp), %rax
	movl	-68(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_match@PLT
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	evp_pkey_cmp_any, .-evp_pkey_cmp_any
	.globl	EVP_PKEY_cmp_parameters
	.type	EVP_PKEY_cmp_parameters, @function
EVP_PKEY_cmp_parameters:
.LFB628:
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
	call	EVP_PKEY_parameters_eq@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	EVP_PKEY_cmp_parameters, .-EVP_PKEY_cmp_parameters
	.globl	EVP_PKEY_parameters_eq
	.type	EVP_PKEY_parameters_eq, @function
EVP_PKEY_parameters_eq:
.LFB629:
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
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L77
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L78
.L77:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_cmp_any
	jmp	.L79
.L78:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L80
	movl	$-1, %eax
	jmp	.L79
.L80:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L79
.L81:
	movl	$-2, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	EVP_PKEY_parameters_eq, .-EVP_PKEY_parameters_eq
	.globl	EVP_PKEY_cmp
	.type	EVP_PKEY_cmp, @function
EVP_PKEY_cmp:
.LFB630:
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
	call	EVP_PKEY_eq@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	EVP_PKEY_cmp, .-EVP_PKEY_cmp
	.globl	EVP_PKEY_eq
	.type	EVP_PKEY_eq, @function
EVP_PKEY_eq:
.LFB631:
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
	cmpq	-32(%rbp), %rax
	jne	.L85
	movl	$1, %eax
	jmp	.L86
.L85:
	cmpq	$0, -24(%rbp)
	je	.L87
	cmpq	$0, -32(%rbp)
	jne	.L88
.L87:
	movl	$0, %eax
	jmp	.L86
.L88:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L89
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L90
.L89:
	movl	$4, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_has@PLT
	testl	%eax, %eax
	je	.L91
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_has@PLT
	testl	%eax, %eax
	je	.L91
	orl	$2, -4(%rbp)
	jmp	.L92
.L91:
	orl	$3, -4(%rbp)
.L92:
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_cmp_any
	jmp	.L86
.L90:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L93
	movl	$-1, %eax
	jmp	.L86
.L93:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L95
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L95
	movl	-8(%rbp), %eax
	jmp	.L86
.L95:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L86
.L94:
	movl	$-2, %eax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	EVP_PKEY_eq, .-EVP_PKEY_eq
	.section	.rodata
.LC1:
	.string	"priv"
.LC2:
	.string	"pub"
	.text
	.type	new_raw_key_int, @function
new_raw_key_int:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movl	%ecx, -156(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L97
	movq	$0, -40(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L98
	movq	-144(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_find_str@PLT
	movq	%rax, -16(%rbp)
	jmp	.L99
.L98:
	cmpl	$0, -156(%rbp)
	je	.L99
	movl	-156(%rbp), %edx
	leaq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_find@PLT
	movq	%rax, -16(%rbp)
.L99:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L100
	movq	$0, -16(%rbp)
.L100:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
.L97:
	cmpq	$0, -168(%rbp)
	jne	.L101
	cmpq	$0, -16(%rbp)
	jne	.L101
	cmpq	$0, -144(%rbp)
	jne	.L102
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	jmp	.L103
.L102:
	movq	-144(%rbp), %rax
.L103:
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L120
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	cmpl	$1, %eax
	jne	.L106
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	call	ERR_clear_last_mark@PLT
	cmpl	$0, 24(%rbp)
	je	.L107
	leaq	.LC1(%rip), %rax
	jmp	.L108
.L107:
	leaq	.LC2(%rip), %rax
.L108:
	leaq	-224(%rbp), %rdi
	movq	16(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movq	%rax, %rsi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-128(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	cmpl	$1, %eax
	je	.L109
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$437, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L105
.L109:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
	jmp	.L119
.L106:
	call	ERR_pop_to_mark@PLT
.L101:
	call	EVP_PKEY_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L111
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$453, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L105
.L111:
	movq	-32(%rbp), %rax
	movq	-144(%rbp), %rcx
	movl	-156(%rbp), %edx
	movq	-168(%rbp), %rsi
	movl	$0, %r9d
	movl	$-1, %r8d
	movq	%rax, %rdi
	call	pkey_set_type
	testl	%eax, %eax
	je	.L121
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L122
	cmpl	$0, 24(%rbp)
	je	.L114
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	248(%rax), %rax
	testq	%rax, %rax
	jne	.L115
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$467, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L105
.L115:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	248(%rax), %r8
	movq	-32(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L116
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$472, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L105
.L114:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	256(%rax), %rax
	testq	%rax, %rax
	jne	.L117
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$477, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L105
.L117:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	256(%rax), %r8
	movq	-32(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L116
	call	ERR_new@PLT
	leaq	__func__.18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$482, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L105
.L116:
	movl	$1, -20(%rbp)
	jmp	.L105
.L120:
	nop
	jmp	.L105
.L121:
	nop
	jmp	.L105
.L122:
	nop
.L105:
	cmpl	$0, -20(%rbp)
	jne	.L118
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -32(%rbp)
.L118:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	new_raw_key_int, .-new_raw_key_int
	.globl	EVP_PKEY_new_raw_private_key_ex
	.type	EVP_PKEY_new_raw_private_key_ex, @function
EVP_PKEY_new_raw_private_key_ex:
.LFB633:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$1
	pushq	-40(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	new_raw_key_int
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	EVP_PKEY_new_raw_private_key_ex, .-EVP_PKEY_new_raw_private_key_ex
	.globl	EVP_PKEY_new_raw_private_key
	.type	EVP_PKEY_new_raw_private_key, @function
EVP_PKEY_new_raw_private_key:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	pushq	$1
	pushq	-32(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	new_raw_key_int
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	EVP_PKEY_new_raw_private_key, .-EVP_PKEY_new_raw_private_key
	.globl	EVP_PKEY_new_raw_public_key_ex
	.type	EVP_PKEY_new_raw_public_key_ex, @function
EVP_PKEY_new_raw_public_key_ex:
.LFB635:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	-40(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	new_raw_key_int
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	EVP_PKEY_new_raw_public_key_ex, .-EVP_PKEY_new_raw_public_key_ex
	.globl	EVP_PKEY_new_raw_public_key
	.type	EVP_PKEY_new_raw_public_key, @function
EVP_PKEY_new_raw_public_key:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	pushq	$0
	pushq	-32(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	new_raw_key_int
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	EVP_PKEY_new_raw_public_key, .-EVP_PKEY_new_raw_public_key
	.type	get_raw_key_details, @function
get_raw_key_details:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L132
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L133
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	jmp	.L135
.L134:
	movl	$0, %eax
.L135:
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	OSSL_PARAM_get_octet_string@PLT
	jmp	.L136
.L132:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	jne	.L133
	leaq	.LC2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L133
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L137
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	jmp	.L138
.L137:
	movl	$0, %eax
.L138:
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	OSSL_PARAM_get_octet_string@PLT
	jmp	.L136
.L133:
	movl	$0, %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	get_raw_key_details, .-get_raw_key_details
	.globl	EVP_PKEY_get_raw_private_key
	.type	EVP_PKEY_get_raw_private_key, @function
EVP_PKEY_get_raw_private_key:
.LFB638:
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
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L140
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L141
	leaq	-48(%rbp), %rax
	jmp	.L142
.L141:
	movl	$0, %eax
.L142:
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -16(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	get_raw_key_details(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_export@PLT
	jmp	.L143
.L140:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L144
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$573, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L144:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	264(%rax), %rax
	testq	%rax, %rax
	jne	.L145
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$578, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L145:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	264(%rax), %r8
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L146
	call	ERR_new@PLT
	leaq	__func__.17(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$583, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$182, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L143
.L146:
	movl	$1, %eax
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	EVP_PKEY_get_raw_private_key, .-EVP_PKEY_get_raw_private_key
	.globl	EVP_PKEY_get_raw_public_key
	.type	EVP_PKEY_get_raw_public_key, @function
EVP_PKEY_get_raw_public_key:
.LFB639:
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
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L148
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L149
	leaq	-48(%rbp), %rax
	jmp	.L150
.L149:
	movl	$0, %eax
.L150:
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$2, -16(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	get_raw_key_details(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$2, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_export@PLT
	jmp	.L151
.L148:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L152
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$605, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L151
.L152:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	272(%rax), %rax
	testq	%rax, %rax
	jne	.L153
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$610, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L151
.L153:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	272(%rax), %r8
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L154
	call	ERR_new@PLT
	leaq	__func__.16(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$615, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$182, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L151
.L154:
	movl	$1, %eax
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	EVP_PKEY_get_raw_public_key, .-EVP_PKEY_get_raw_public_key
	.section	.rodata
.LC3:
	.string	"CMAC"
.LC4:
	.string	"cipher"
.LC5:
	.string	"properties"
.LC6:
	.string	"engine"
	.text
	.type	new_cmac_key_int, @function
new_cmac_key_int:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -288(%rbp)
	movq	%r8, -296(%rbp)
	movq	%r9, -304(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L156
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, -24(%rbp)
	jmp	.L157
.L156:
	movq	$0, -24(%rbp)
.L157:
	leaq	-240(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -248(%rbp)
	cmpq	$0, -288(%rbp)
	je	.L158
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, -280(%rbp)
.L158:
	cmpq	$0, -280(%rbp)
	jne	.L159
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$640, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L166
.L159:
	movq	-304(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-296(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L167
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata_init@PLT
	testl	%eax, %eax
	jg	.L163
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$649, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L162
.L163:
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-352(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	-264(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-352(%rbp), %rax
	movq	-280(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpq	$0, -304(%rbp)
	je	.L164
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-352(%rbp), %rax
	movq	-304(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
.L164:
	cmpq	$0, -24(%rbp)
	je	.L165
	movq	-32(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -32(%rbp)
	leaq	-352(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
.L165:
	movq	-32(%rbp), %rbx
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-240(%rbp), %rdx
	leaq	-248(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_fromdata@PLT
	testl	%eax, %eax
	jg	.L168
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$668, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L162
.L167:
	nop
	jmp	.L162
.L168:
	nop
.L162:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-248(%rbp), %rax
.L166:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	new_cmac_key_int, .-new_cmac_key_int
	.globl	EVP_PKEY_new_CMAC_key
	.type	EVP_PKEY_new_CMAC_key, @function
EVP_PKEY_new_CMAC_key:
.LFB641:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-8(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	new_cmac_key_int
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	EVP_PKEY_new_CMAC_key, .-EVP_PKEY_new_CMAC_key
	.globl	EVP_PKEY_set_type
	.type	EVP_PKEY_set_type, @function
EVP_PKEY_set_type:
.LFB642:
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
	movl	$0, %r9d
	movl	$-1, %r8d
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pkey_set_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	EVP_PKEY_set_type, .-EVP_PKEY_set_type
	.globl	EVP_PKEY_set_type_str
	.type	EVP_PKEY_set_type_str, @function
EVP_PKEY_set_type_str:
.LFB643:
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
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pkey_set_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	EVP_PKEY_set_type_str, .-EVP_PKEY_set_type_str
	.globl	EVP_PKEY_set1_engine
	.type	EVP_PKEY_set1_engine, @function
EVP_PKEY_set1_engine:
.LFB644:
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
	je	.L176
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L177
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$703, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524326, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L178
.L177:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ENGINE_get_pkey_meth@PLT
	testq	%rax, %rax
	jne	.L176
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$708, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L178
.L176:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L178:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	EVP_PKEY_set1_engine, .-EVP_PKEY_set1_engine
	.globl	EVP_PKEY_get0_engine
	.type	EVP_PKEY_get0_engine, @function
EVP_PKEY_get0_engine:
.LFB645:
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
.LFE645:
	.size	EVP_PKEY_get0_engine, .-EVP_PKEY_get0_engine
	.type	detect_foreign_key, @function
detect_foreign_key:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1172, %eax
	je	.L197
	cmpl	$1172, %eax
	jg	.L183
	cmpl	$912, %eax
	je	.L184
	cmpl	$912, %eax
	jg	.L183
	cmpl	$408, %eax
	je	.L185
	cmpl	$408, %eax
	jg	.L183
	cmpl	$116, %eax
	je	.L186
	cmpl	$116, %eax
	jg	.L183
	cmpl	$6, %eax
	je	.L184
	cmpl	$28, %eax
	je	.L187
	jmp	.L183
.L184:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L188
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_rsa_is_foreign@PLT
	testl	%eax, %eax
	je	.L188
	movl	$1, %eax
	jmp	.L189
.L188:
	movl	$0, %eax
.L189:
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	movl	%eax, %ecx
	movzbl	76(%rdx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 76(%rdx)
	jmp	.L190
.L185:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L191
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_is_foreign@PLT
	testl	%eax, %eax
	je	.L191
	movl	$1, %eax
	jmp	.L192
.L191:
	movl	$0, %eax
.L192:
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	movl	%eax, %ecx
	movzbl	76(%rdx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 76(%rdx)
	jmp	.L190
.L186:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L193
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_dsa_is_foreign@PLT
	testl	%eax, %eax
	je	.L193
	movl	$1, %eax
	jmp	.L194
.L193:
	movl	$0, %eax
.L194:
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	movl	%eax, %ecx
	movzbl	76(%rdx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 76(%rdx)
	jmp	.L190
.L187:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L195
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_dh_is_foreign@PLT
	testl	%eax, %eax
	je	.L195
	movl	$1, %eax
	jmp	.L196
.L195:
	movl	$0, %eax
.L196:
	andl	$1, %eax
	movq	-8(%rbp), %rdx
	andl	$1, %eax
	movl	%eax, %ecx
	movzbl	76(%rdx), %eax
	andl	$-2, %eax
	orl	%ecx, %eax
	movb	%al, 76(%rdx)
	jmp	.L190
.L183:
	movq	-8(%rbp), %rax
	movzbl	76(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 76(%rax)
	jmp	.L190
.L197:
	nop
.L190:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	detect_foreign_key, .-detect_foreign_key
	.globl	EVP_PKEY_assign
	.type	EVP_PKEY_assign, @function
EVP_PKEY_assign:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	EVP_PKEY_type@PLT
	movl	%eax, -4(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L199
	cmpl	$408, -4(%rbp)
	je	.L200
	cmpl	$1172, -4(%rbp)
	jne	.L199
.L200:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L199
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -20(%rbp)
	cmpl	$1172, -20(%rbp)
	jne	.L201
	cmpl	$408, -4(%rbp)
	jne	.L201
	movl	$1172, -44(%rbp)
	jmp	.L199
.L201:
	cmpl	$1172, -20(%rbp)
	je	.L199
	cmpl	$1172, -4(%rbp)
	jne	.L199
	movl	$408, -44(%rbp)
.L199:
	cmpq	$0, -40(%rbp)
	je	.L202
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type@PLT
	testl	%eax, %eax
	jne	.L203
.L202:
	movl	$0, %eax
	jmp	.L204
.L203:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	detect_foreign_key
	cmpq	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	EVP_PKEY_assign, .-EVP_PKEY_assign
	.globl	EVP_PKEY_get0
	.type	EVP_PKEY_get0, @function
EVP_PKEY_get0:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L206
	movl	$0, %eax
	jmp	.L207
.L206:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L208
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	jmp	.L207
.L208:
	movl	$0, %eax
.L207:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	EVP_PKEY_get0, .-EVP_PKEY_get0
	.globl	EVP_PKEY_get0_hmac
	.type	EVP_PKEY_get0_hmac, @function
EVP_PKEY_get0_hmac:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$855, %eax
	je	.L210
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$807, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$174, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L211
.L210:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L212
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L211
.L212:
	movl	$0, %eax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	EVP_PKEY_get0_hmac, .-EVP_PKEY_get0_hmac
	.globl	EVP_PKEY_get0_poly1305
	.type	EVP_PKEY_get0_poly1305, @function
EVP_PKEY_get0_poly1305:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1061, %eax
	je	.L214
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$823, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$164, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L215
.L214:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L216
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L215
.L216:
	movl	$0, %eax
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	EVP_PKEY_get0_poly1305, .-EVP_PKEY_get0_poly1305
	.globl	EVP_PKEY_get0_siphash
	.type	EVP_PKEY_get0_siphash, @function
EVP_PKEY_get0_siphash:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1062, %eax
	je	.L218
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$841, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$175, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L219
.L218:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L220
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L219
.L220:
	movl	$0, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	EVP_PKEY_get0_siphash, .-EVP_PKEY_get0_siphash
	.type	evp_pkey_get0_DSA_int, @function
evp_pkey_get0_DSA_int:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$116, %eax
	je	.L222
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$857, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L223
.L222:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
.L223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	evp_pkey_get0_DSA_int, .-evp_pkey_get0_DSA_int
	.globl	EVP_PKEY_get0_DSA
	.type	EVP_PKEY_get0_DSA, @function
EVP_PKEY_get0_DSA:
.LFB653:
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
	call	evp_pkey_get0_DSA_int
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	EVP_PKEY_get0_DSA, .-EVP_PKEY_get0_DSA
	.globl	EVP_PKEY_set1_DSA
	.type	EVP_PKEY_set1_DSA, @function
EVP_PKEY_set1_DSA:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L227
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_up_ref@PLT
.L227:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	EVP_PKEY_set1_DSA, .-EVP_PKEY_set1_DSA
	.globl	EVP_PKEY_get1_DSA
	.type	EVP_PKEY_get1_DSA, @function
EVP_PKEY_get1_DSA:
.LFB655:
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
	call	evp_pkey_get0_DSA_int
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L230
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_up_ref@PLT
.L230:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	EVP_PKEY_get1_DSA, .-EVP_PKEY_get1_DSA
	.type	evp_pkey_get0_ECX_KEY, @function
evp_pkey_get0_ECX_KEY:
.LFB656:
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
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	%eax, -12(%rbp)
	je	.L233
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$889, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$219, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L234
.L233:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	evp_pkey_get0_ECX_KEY, .-evp_pkey_get0_ECX_KEY
	.type	evp_pkey_get1_ECX_KEY, @function
evp_pkey_get1_ECX_KEY:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	evp_pkey_get0_ECX_KEY
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L236
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_up_ref@PLT
	testl	%eax, %eax
	jne	.L236
	movq	$0, -8(%rbp)
.L236:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	evp_pkey_get1_ECX_KEY, .-evp_pkey_get1_ECX_KEY
	.globl	ossl_evp_pkey_get1_X25519
	.type	ossl_evp_pkey_get1_X25519, @function
ossl_evp_pkey_get1_X25519:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1034, %esi
	movq	%rax, %rdi
	call	evp_pkey_get1_ECX_KEY
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	ossl_evp_pkey_get1_X25519, .-ossl_evp_pkey_get1_X25519
	.globl	ossl_evp_pkey_get1_X448
	.type	ossl_evp_pkey_get1_X448, @function
ossl_evp_pkey_get1_X448:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1035, %esi
	movq	%rax, %rdi
	call	evp_pkey_get1_ECX_KEY
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	ossl_evp_pkey_get1_X448, .-ossl_evp_pkey_get1_X448
	.globl	ossl_evp_pkey_get1_ED25519
	.type	ossl_evp_pkey_get1_ED25519, @function
ossl_evp_pkey_get1_ED25519:
.LFB660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1087, %esi
	movq	%rax, %rdi
	call	evp_pkey_get1_ECX_KEY
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE660:
	.size	ossl_evp_pkey_get1_ED25519, .-ossl_evp_pkey_get1_ED25519
	.globl	ossl_evp_pkey_get1_ED448
	.type	ossl_evp_pkey_get1_ED448, @function
ossl_evp_pkey_get1_ED448:
.LFB661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1088, %esi
	movq	%rax, %rdi
	call	evp_pkey_get1_ECX_KEY
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE661:
	.size	ossl_evp_pkey_get1_ED448, .-ossl_evp_pkey_get1_ED448
	.globl	EVP_PKEY_set1_DH
	.type	EVP_PKEY_set1_DH, @function
EVP_PKEY_set1_DH:
.LFB662:
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
	movq	%rax, %rdi
	call	ossl_dh_is_named_safe_prime_group@PLT
	testl	%eax, %eax
	je	.L247
	movl	$28, -4(%rbp)
	jmp	.L248
.L247:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_q@PLT
	testq	%rax, %rax
	jne	.L249
	movl	$28, -4(%rbp)
	jmp	.L248
.L249:
	movl	$920, -4(%rbp)
.L248:
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L250
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	DH_up_ref@PLT
.L250:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE662:
	.size	EVP_PKEY_set1_DH, .-EVP_PKEY_set1_DH
	.globl	evp_pkey_get0_DH_int
	.type	evp_pkey_get0_DH_int, @function
evp_pkey_get0_DH_int:
.LFB663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$28, %eax
	je	.L253
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$920, %eax
	je	.L253
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$956, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L253:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE663:
	.size	evp_pkey_get0_DH_int, .-evp_pkey_get0_DH_int
	.globl	EVP_PKEY_get0_DH
	.type	EVP_PKEY_get0_DH, @function
EVP_PKEY_get0_DH:
.LFB664:
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
	call	evp_pkey_get0_DH_int@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE664:
	.size	EVP_PKEY_get0_DH, .-EVP_PKEY_get0_DH
	.globl	EVP_PKEY_get1_DH
	.type	EVP_PKEY_get1_DH, @function
EVP_PKEY_get1_DH:
.LFB665:
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
	call	evp_pkey_get0_DH_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L258
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	DH_up_ref@PLT
.L258:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	EVP_PKEY_get1_DH, .-EVP_PKEY_get1_DH
	.globl	EVP_PKEY_type
	.type	EVP_PKEY_type, @function
EVP_PKEY_type:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	-36(%rbp), %edx
	leaq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_find@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L261
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L262
.L261:
	movl	$0, -4(%rbp)
.L262:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	EVP_PKEY_type, .-EVP_PKEY_type
	.globl	EVP_PKEY_get_id
	.type	EVP_PKEY_get_id, @function
EVP_PKEY_get_id:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	EVP_PKEY_get_id, .-EVP_PKEY_get_id
	.globl	EVP_PKEY_get_base_id
	.type	EVP_PKEY_get_base_id, @function
EVP_PKEY_get_base_id:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	EVP_PKEY_type@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	EVP_PKEY_get_base_id, .-EVP_PKEY_get_base_id
	.section	.rodata
.LC7:
	.string	"RSA"
.LC8:
	.string	"RSA-PSS"
.LC9:
	.string	"EC"
.LC10:
	.string	"ED25519"
.LC11:
	.string	"ED448"
.LC12:
	.string	"X25519"
.LC13:
	.string	"X448"
.LC14:
	.string	"SM2"
.LC15:
	.string	"DH"
.LC16:
	.string	"X9.42 DH"
.LC17:
	.string	"DHX"
.LC18:
	.string	"DSA"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	standard_name2type, @object
	.size	standard_name2type, 192
standard_name2type:
	.long	6
	.zero	4
	.quad	.LC7
	.long	912
	.zero	4
	.quad	.LC8
	.long	408
	.zero	4
	.quad	.LC9
	.long	1087
	.zero	4
	.quad	.LC10
	.long	1088
	.zero	4
	.quad	.LC11
	.long	1034
	.zero	4
	.quad	.LC12
	.long	1035
	.zero	4
	.quad	.LC13
	.long	1172
	.zero	4
	.quad	.LC14
	.long	28
	.zero	4
	.quad	.LC15
	.long	920
	.zero	4
	.quad	.LC16
	.long	920
	.zero	4
	.quad	.LC17
	.long	116
	.zero	4
	.quad	.LC18
	.text
	.globl	evp_pkey_name2type
	.type	evp_pkey_name2type, @function
evp_pkey_name2type:
.LFB669:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L269
.L272:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+standard_name2type(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L270
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	standard_name2type(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L271
.L270:
	addq	$1, -8(%rbp)
.L269:
	cmpq	$11, -8(%rbp)
	jbe	.L272
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, %edi
	call	EVP_PKEY_type@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L273
	movl	-12(%rbp), %eax
	jmp	.L271
.L273:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, %edi
	call	EVP_PKEY_type@PLT
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	evp_pkey_name2type, .-evp_pkey_name2type
	.globl	evp_pkey_type2name
	.type	evp_pkey_type2name, @function
evp_pkey_type2name:
.LFB670:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L275
.L278:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	standard_name2type(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	%eax, -20(%rbp)
	jne	.L276
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+standard_name2type(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L277
.L276:
	addq	$1, -8(%rbp)
.L275:
	cmpq	$11, -8(%rbp)
	jbe	.L278
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	evp_pkey_type2name, .-evp_pkey_type2name
	.globl	EVP_PKEY_is_a
	.type	EVP_PKEY_is_a, @function
EVP_PKEY_is_a:
.LFB671:
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
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L280
	movl	$0, %eax
	jmp	.L281
.L280:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L282
	movq	-24(%rbp), %rax
	movl	(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_name2type@PLT
	cmpl	%eax, %ebx
	sete	%al
	movzbl	%al, %eax
	jmp	.L281
.L282:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_is_a@PLT
.L281:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	EVP_PKEY_is_a, .-EVP_PKEY_is_a
	.globl	EVP_PKEY_type_names_do_all
	.type	EVP_PKEY_type_names_do_all, @function
EVP_PKEY_type_names_do_all:
.LFB672:
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
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L284
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L284
	movl	$0, %eax
	jmp	.L285
.L284:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L286
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	$1, %eax
	jmp	.L285
.L286:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_names_do_all@PLT
.L285:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	EVP_PKEY_type_names_do_all, .-EVP_PKEY_type_names_do_all
	.globl	EVP_PKEY_can_sign
	.type	EVP_PKEY_can_sign, @function
EVP_PKEY_can_sign:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L288
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$1088, %eax
	jg	.L296
	cmpl	$1087, %eax
	jge	.L290
	cmpl	$912, %eax
	je	.L291
	cmpl	$912, %eax
	jg	.L296
	cmpl	$408, %eax
	je	.L292
	cmpl	$408, %eax
	jg	.L296
	cmpl	$6, %eax
	je	.L291
	cmpl	$116, %eax
	je	.L293
	jmp	.L296
.L291:
	movl	$1, %eax
	jmp	.L294
.L293:
	movl	$1, %eax
	jmp	.L294
.L290:
	movl	$1, %eax
	jmp	.L294
.L292:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EC_KEY_can_sign@PLT
	jmp	.L294
.L288:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	evp_keymgmt_util_query_operation_name@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_SIGNATURE_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L295
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_SIGNATURE_free@PLT
	movl	$1, %eax
	jmp	.L294
.L296:
	nop
.L295:
	movl	$0, %eax
.L294:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	EVP_PKEY_can_sign, .-EVP_PKEY_can_sign
	.type	print_reset_indent, @function
print_reset_indent:
.LFB674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	cmpl	$0, -28(%rbp)
	je	.L298
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L298:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE674:
	.size	print_reset_indent, .-print_reset_indent
	.type	print_set_indent, @function
print_set_indent:
.LFB675:
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
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -48(%rbp)
	jle	.L301
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$81, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L302
	call	BIO_f_prefix@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L303
	movl	$0, %eax
	jmp	.L304
.L303:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
.L302:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L301
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_reset_indent
	movl	$0, %eax
	jmp	.L304
.L301:
	movl	$1, %eax
.L304:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	print_set_indent, .-print_set_indent
	.section	.rodata
	.align 8
.LC19:
	.string	"%s algorithm \"%s\" unsupported\n"
	.text
	.type	unsup_alg, @function
unsup_alg:
.LFB676:
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
	movq	%rcx, -32(%rbp)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L306
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	leaq	.LC19(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L306
	movl	$1, %eax
	jmp	.L308
.L306:
	movl	$0, %eax
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE676:
	.size	unsup_alg, .-unsup_alg
	.section	.rodata
.LC20:
	.string	"TEXT"
.LC21:
	.string	"Public Key"
	.text
	.type	print_pkey, @function
print_pkey:
.LFB677:
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
	movq	$0, -16(%rbp)
	movl	$-2, -4(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-32(%rbp), %rdx
	leaq	-20(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	print_set_indent
	testl	%eax, %eax
	jne	.L310
	movl	$0, %eax
	jmp	.L316
.L310:
	movq	-64(%rbp), %rcx
	leaq	.LC20(%rip), %rdx
	movl	-56(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_new_for_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_get_num_encoders@PLT
	testl	%eax, %eax
	je	.L312
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_ENCODER_to_bio@PLT
	movl	%eax, -4(%rbp)
.L312:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ENCODER_CTX_free@PLT
	cmpl	$-2, -4(%rbp)
	jne	.L317
	cmpq	$0, -72(%rbp)
	je	.L315
	movq	-48(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	jmp	.L314
.L315:
	movq	-48(%rbp), %rax
	leaq	.LC21(%rip), %rdx
	movq	-40(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	unsup_alg
	movl	%eax, -4(%rbp)
	jmp	.L314
.L317:
	nop
.L314:
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_reset_indent
	movl	-4(%rbp), %eax
.L316:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	print_pkey, .-print_pkey
	.globl	EVP_PKEY_print_public
	.type	EVP_PKEY_print_public, @function
EVP_PKEY_print_public:
.LFB678:
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
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L319
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rcx
	jmp	.L320
.L319:
	movl	$0, %ecx
.L320:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$134, %ecx
	movq	%rax, %rdi
	call	print_pkey
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE678:
	.size	EVP_PKEY_print_public, .-EVP_PKEY_print_public
	.globl	EVP_PKEY_print_private
	.type	EVP_PKEY_print_private, @function
EVP_PKEY_print_private:
.LFB679:
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
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L323
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rcx
	jmp	.L324
.L323:
	movl	$0, %ecx
.L324:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$133, %ecx
	movq	%rax, %rdi
	call	print_pkey
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE679:
	.size	EVP_PKEY_print_private, .-EVP_PKEY_print_private
	.globl	EVP_PKEY_print_params
	.type	EVP_PKEY_print_params, @function
EVP_PKEY_print_params:
.LFB680:
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
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L327
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rax), %rcx
	jmp	.L328
.L327:
	movl	$0, %ecx
.L328:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	$132, %ecx
	movq	%rax, %rdi
	call	print_pkey
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	EVP_PKEY_print_params, .-EVP_PKEY_print_params
	.globl	EVP_PKEY_print_public_fp
	.type	EVP_PKEY_print_public_fp, @function
EVP_PKEY_print_public_fp:
.LFB681:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L331
	movl	$0, %eax
	jmp	.L332
.L331:
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_print_public@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L332:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	EVP_PKEY_print_public_fp, .-EVP_PKEY_print_public_fp
	.globl	EVP_PKEY_print_private_fp
	.type	EVP_PKEY_print_private_fp, @function
EVP_PKEY_print_private_fp:
.LFB682:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L334
	movl	$0, %eax
	jmp	.L335
.L334:
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_print_private@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L335:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	EVP_PKEY_print_private_fp, .-EVP_PKEY_print_private_fp
	.globl	EVP_PKEY_print_params_fp
	.type	EVP_PKEY_print_params_fp, @function
EVP_PKEY_print_params_fp:
.LFB683:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L337
	movl	$0, %eax
	jmp	.L338
.L337:
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_print_params@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L338:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	EVP_PKEY_print_params_fp, .-EVP_PKEY_print_params_fp
	.type	mdname2nid, @function
mdname2nid:
.LFB684:
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
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L342
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L339
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	jmp	.L339
.L342:
	nop
.L339:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	mdname2nid, .-mdname2nid
	.type	legacy_asn1_ctrl_to_param, @function
legacy_asn1_ctrl_to_param:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movl	%edx, -144(%rbp)
	movq	%rcx, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L344
	movl	$0, %eax
	jmp	.L345
.L344:
	cmpl	$3, -140(%rbp)
	jne	.L346
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	leaq	-128(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_default_digest_name@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L347
	movq	-136(%rbp), %rax
	movq	96(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -40(%rbp)
	call	ERR_set_mark@PLT
	leaq	-128(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	call	ERR_pop_to_mark@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_namemap_stored@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_namemap_name2num@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L348
	movl	$0, %eax
	jmp	.L345
.L348:
	leaq	-40(%rbp), %rdx
	leaq	mdname2nid(%rip), %rdi
	movl	-36(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_namemap_doall_names@PLT
	testl	%eax, %eax
	jne	.L350
	movl	$0, %eax
	jmp	.L345
.L350:
	movl	-40(%rbp), %edx
	movq	-152(%rbp), %rax
	movl	%edx, (%rax)
.L347:
	movl	-4(%rbp), %eax
	jmp	.L345
.L346:
	movl	$-2, %eax
.L345:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	legacy_asn1_ctrl_to_param, .-legacy_asn1_ctrl_to_param
	.type	evp_pkey_asn1_ctrl, @function
evp_pkey_asn1_ctrl:
.LFB686:
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
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L353
	movq	-24(%rbp), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	legacy_asn1_ctrl_to_param
	jmp	.L354
.L353:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	jne	.L355
	movl	$-2, %eax
	jmp	.L354
.L355:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	176(%rax), %r8
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L354:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	evp_pkey_asn1_ctrl, .-evp_pkey_asn1_ctrl
	.globl	EVP_PKEY_get_default_digest_nid
	.type	EVP_PKEY_get_default_digest_nid, @function
EVP_PKEY_get_default_digest_nid:
.LFB687:
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
	jne	.L357
	movl	$0, %eax
	jmp	.L358
.L357:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	evp_pkey_asn1_ctrl
.L358:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	EVP_PKEY_get_default_digest_nid, .-EVP_PKEY_get_default_digest_nid
	.globl	EVP_PKEY_get_default_digest_name
	.type	EVP_PKEY_get_default_digest_name, @function
EVP_PKEY_get_default_digest_name:
.LFB688:
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
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L360
	movq	-24(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	call	evp_keymgmt_util_get_deflt_digest_name@PLT
	jmp	.L361
.L360:
	movl	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_default_digest_nid@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L362
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -8(%rbp)
	jmp	.L363
.L362:
	movq	$0, -8(%rbp)
.L363:
	cmpl	$0, -12(%rbp)
	jle	.L364
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
.L364:
	movl	-12(%rbp), %eax
.L361:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	EVP_PKEY_get_default_digest_name, .-EVP_PKEY_get_default_digest_name
	.section	.rodata
.LC22:
	.string	"group"
	.text
	.globl	EVP_PKEY_get_group_name
	.type	EVP_PKEY_get_group_name, @function
EVP_PKEY_get_group_name:
.LFB689:
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
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	.LC22(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	EVP_PKEY_get_group_name, .-EVP_PKEY_get_group_name
	.globl	EVP_PKEY_digestsign_supports_digest
	.type	EVP_PKEY_digestsign_supports_digest, @function
EVP_PKEY_digestsign_supports_digest:
.LFB690:
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
	movq	$0, -8(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L368
	movl	$-1, %eax
	jmp	.L369
.L368:
	call	ERR_set_mark@PLT
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestSignInit_ex@PLT
	addq	$16, %rsp
	movl	%eax, -12(%rbp)
	call	ERR_pop_to_mark@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-12(%rbp), %eax
.L369:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	EVP_PKEY_digestsign_supports_digest, .-EVP_PKEY_digestsign_supports_digest
	.section	.rodata
.LC23:
	.string	"encoded-pub-key"
	.text
	.globl	EVP_PKEY_set1_encoded_public_key
	.type	EVP_PKEY_set1_encoded_public_key, @function
EVP_PKEY_set1_encoded_public_key:
.LFB691:
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
	cmpq	$0, -8(%rbp)
	jne	.L371
	movl	$0, %eax
	jmp	.L372
.L371:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L373
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	.LC23(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_set_octet_string_param@PLT
	jmp	.L372
.L373:
	cmpq	$2147483647, -24(%rbp)
	jbe	.L374
	movl	$0, %eax
	jmp	.L372
.L374:
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	%esi, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	evp_pkey_asn1_ctrl
	testl	%eax, %eax
	jg	.L375
	movl	$0, %eax
	jmp	.L372
.L375:
	movl	$1, %eax
.L372:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	EVP_PKEY_set1_encoded_public_key, .-EVP_PKEY_set1_encoded_public_key
	.globl	EVP_PKEY_get1_encoded_public_key
	.type	EVP_PKEY_get1_encoded_public_key, @function
EVP_PKEY_get1_encoded_public_key:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L377
	movl	$0, %eax
	jmp	.L378
.L377:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L379
	movq	$-1, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	.LC23(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	movq	-24(%rbp), %rax
	cmpq	$-1, %rax
	jne	.L380
	movl	$0, %eax
	jmp	.L378
.L380:
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1427, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L382
	movl	$0, %eax
	jmp	.L378
.L382:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	.LC23(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EVP_PKEY_get_octet_string_param@PLT
	testl	%eax, %eax
	jne	.L383
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1434, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L378
.L383:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L378
.L379:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	evp_pkey_asn1_ctrl
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L384
	movl	$0, %eax
	jmp	.L378
.L384:
	movl	-4(%rbp), %eax
	cltq
.L378:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	EVP_PKEY_get1_encoded_public_key, .-EVP_PKEY_get1_encoded_public_key
	.globl	EVP_PKEY_new
	.type	EVP_PKEY_new, @function
EVP_PKEY_new:
.LFB693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$1454, %edx
	movq	%rax, %rsi
	movl	$152, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L386
	movl	$0, %eax
	jmp	.L387
.L386:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	je	.L392
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L390
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1467, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L389
.L390:
	movq	-8(%rbp), %rax
	movl	$1, 72(%rax)
	movq	-8(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$17, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	jne	.L391
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1474, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L389
.L391:
	movq	-8(%rbp), %rax
	jmp	.L387
.L392:
	nop
.L389:
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1483, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L387:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	EVP_PKEY_new, .-EVP_PKEY_new
	.type	pkey_set_type, @function
pkey_set_type:
.LFB694:
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
	movq	%rcx, -64(%rbp)
	movl	%r8d, -56(%rbp)
	movq	%r9, -72(%rbp)
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L394
	leaq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L395
.L394:
	movq	$0, -16(%rbp)
.L395:
	cmpl	$0, -52(%rbp)
	je	.L396
	cmpq	$0, -72(%rbp)
	jne	.L397
.L396:
	movl	$1, %eax
	jmp	.L398
.L397:
	movl	$0, %eax
.L398:
	cltq
	testq	%rax, %rax
	je	.L399
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L400
	cmpq	$0, -72(%rbp)
	jne	.L401
.L400:
	movl	$1, %eax
	jmp	.L402
.L401:
	movl	$0, %eax
.L402:
	cltq
	testq	%rax, %rax
	jne	.L403
.L399:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1514, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L404
.L403:
	cmpq	$0, -40(%rbp)
	je	.L405
	movl	$0, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L406
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L407
.L406:
	movl	$1, %eax
	jmp	.L408
.L407:
	movl	$0, %eax
.L408:
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L409
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L410
.L409:
	movl	$1, %eax
	jmp	.L411
.L410:
	movl	$0, %eax
.L411:
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L412
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_free_it
.L412:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L413
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jne	.L413
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L413
	movl	$1, %eax
	jmp	.L404
.L413:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
.L405:
	cmpq	$0, -64(%rbp)
	je	.L414
	movl	-56(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_find_str@PLT
	movq	%rax, -8(%rbp)
	jmp	.L415
.L414:
	cmpl	$0, -52(%rbp)
	je	.L415
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_find@PLT
	movq	%rax, -8(%rbp)
.L415:
	cmpq	$0, -40(%rbp)
	jne	.L416
	cmpq	$0, -16(%rbp)
	je	.L416
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
.L416:
	movl	$1, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L417
	cmpq	$0, -8(%rbp)
	jne	.L417
	movl	$1, %eax
	jmp	.L418
.L417:
	movl	$0, %eax
.L418:
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L419
	cmpq	$0, -72(%rbp)
	jne	.L419
	movl	$1, %eax
	jmp	.L420
.L419:
	movl	$0, %eax
.L420:
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L421
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1565, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L404
.L421:
	cmpq	$0, -40(%rbp)
	je	.L422
	cmpq	$0, -72(%rbp)
	je	.L423
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_up_ref@PLT
	testl	%eax, %eax
	jne	.L423
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1571, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L404
.L423:
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	cmpq	$0, -72(%rbp)
	jne	.L424
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L424:
	cmpq	$0, -8(%rbp)
	je	.L425
	cmpl	$0, -52(%rbp)
	jne	.L426
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L426
.L425:
	movq	-40(%rbp), %rax
	movl	$-1, (%rax)
.L426:
	cmpq	$0, -16(%rbp)
	jne	.L427
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L427
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L427
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1605, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$134, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L404
.L427:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
.L422:
	movl	$1, %eax
.L404:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	pkey_set_type, .-pkey_set_type
	.type	find_ameth, @function
find_ameth:
.LFB695:
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
	call	ERR_set_mark@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	%edx, %r8d
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	pkey_set_type
	testl	%eax, %eax
	je	.L429
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L430
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L429
.L430:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L429
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
.L429:
	call	ERR_pop_to_mark@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	find_ameth, .-find_ameth
	.globl	EVP_PKEY_set_type_by_keymgmt
	.type	EVP_PKEY_set_type_by_keymgmt, @function
EVP_PKEY_set_type_by_keymgmt:
.LFB696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	find_ameth(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_names_do_all@PLT
	testl	%eax, %eax
	je	.L432
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L433
.L432:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1652, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L437
.L433:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L435
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %esi
	jmp	.L436
.L435:
	movl	$-1, %esi
.L436:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %r9
	movl	%esi, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pkey_set_type
.L437:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	EVP_PKEY_set_type_by_keymgmt, .-EVP_PKEY_set_type_by_keymgmt
	.globl	EVP_PKEY_up_ref
	.type	EVP_PKEY_up_ref, @function
EVP_PKEY_up_ref:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L439
	movl	$0, %eax
	jmp	.L441
.L439:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L441:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	EVP_PKEY_up_ref, .-EVP_PKEY_up_ref
	.globl	EVP_PKEY_dup
	.type	EVP_PKEY_dup, @function
EVP_PKEY_dup:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L443
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1685, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L444
.L443:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L445
	movl	$0, %eax
	jmp	.L444
.L445:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L446
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L458
.L446:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L448
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$135, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_copy@PLT
	testl	%eax, %eax
	jne	.L459
	jmp	.L450
.L448:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L460
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L460
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L452
	movq	-16(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	jne	.L453
.L452:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L454
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type@PLT
	testl	%eax, %eax
	jne	.L461
.L454:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1709, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$224, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L450
.L453:
	movq	-16(%rbp), %rax
	movq	304(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L462
	jmp	.L447
.L458:
	nop
	jmp	.L447
.L459:
	nop
	jmp	.L447
.L461:
	nop
.L447:
	movq	-24(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rsi
	movl	$17, %edi
	call	CRYPTO_dup_ex_data@PLT
	testl	%eax, %eax
	je	.L463
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L457
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_x509at_dup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L464
.L457:
	movq	-8(%rbp), %rax
	jmp	.L444
.L460:
	nop
	jmp	.L450
.L462:
	nop
	jmp	.L450
.L463:
	nop
	jmp	.L450
.L464:
	nop
.L450:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
.L444:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	EVP_PKEY_dup, .-EVP_PKEY_dup
	.globl	evp_pkey_free_legacy
	.type	evp_pkey_free_legacy, @function
evp_pkey_free_legacy:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L466
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L466
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	leaq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_asn1_find@PLT
	movq	%rax, -8(%rbp)
.L466:
	cmpq	$0, -8(%rbp)
	je	.L467
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L468
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
.L468:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L469
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L469:
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
.L467:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	evp_pkey_free_legacy, .-evp_pkey_free_legacy
	.type	evp_pkey_free_it, @function
evp_pkey_free_it:
.LFB700:
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
	call	evp_keymgmt_util_clear_operation_cache@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_free_legacy@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L471
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
.L471:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	evp_pkey_free_it, .-evp_pkey_free_it
	.globl	EVP_PKEY_free
	.type	EVP_PKEY_free, @function
EVP_PKEY_free:
.LFB701:
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
	cmpq	$0, -40(%rbp)
	je	.L477
	movq	-40(%rbp), %rax
	leaq	48(%rax), %rdx
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	jg	.L478
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_free_it
	movq	-40(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$17, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	movq	X509_ATTRIBUTE_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_ATTRIBUTE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1808, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L472
.L477:
	nop
	jmp	.L472
.L478:
	nop
.L472:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	EVP_PKEY_free, .-EVP_PKEY_free
	.globl	EVP_PKEY_get_size
	.type	EVP_PKEY_get_size, @function
EVP_PKEY_get_size:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L480
	movq	-24(%rbp), %rax
	movl	144(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L480
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L480
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L480:
	cmpl	$0, -4(%rbp)
	jg	.L481
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1823, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L482
.L481:
	movl	-4(%rbp), %eax
.L482:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	EVP_PKEY_get_size, .-EVP_PKEY_get_size
	.globl	EVP_PKEY_get0_description
	.type	EVP_PKEY_get0_description, @function
EVP_PKEY_get0_description:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L484
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L484
	movl	$0, %eax
	jmp	.L485
.L484:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L486
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L486
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	24(%rax), %rax
	jmp	.L485
.L486:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L487
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	jmp	.L485
.L487:
	movl	$0, %eax
.L485:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	EVP_PKEY_get0_description, .-EVP_PKEY_get0_description
	.globl	evp_pkey_export_to_provider
	.type	evp_pkey_export_to_provider, @function
evp_pkey_export_to_provider:
.LFB704:
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
	movq	%rcx, -96(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$135, -28(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L489
	movl	$0, %eax
	jmp	.L490
.L489:
	movl	$1, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L491
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L491
	movl	$1, %eax
	jmp	.L492
.L491:
	movl	$0, %eax
.L492:
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L493
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L493
	movl	$1, %eax
	jmp	.L494
.L493:
	movl	$0, %eax
.L494:
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L495
	movl	$0, %eax
	jmp	.L490
.L495:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L496
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L497
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	jne	.L496
.L497:
	movl	$0, %eax
	jmp	.L490
.L496:
	cmpq	$0, -88(%rbp)
	je	.L498
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
.L498:
	cmpq	$0, -16(%rbp)
	jne	.L499
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L517
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L499:
	cmpq	$0, -16(%rbp)
	je	.L518
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L503
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	280(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L504
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	je	.L519
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_find_operation_cache@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L506
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L506
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L501
.L506:
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L504:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KEYMGMT_is_a@PLT
	testl	%eax, %eax
	je	.L520
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_newdata@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L521
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	288(%rax), %r9
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L509
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movq	$0, -24(%rbp)
	jmp	.L501
.L509:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_up_ref@PLT
	testl	%eax, %eax
	jne	.L510
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movq	$0, -24(%rbp)
	jmp	.L501
.L510:
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L522
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	280(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	128(%rax), %rax
	cmpq	%rax, %rdx
	je	.L512
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_util_clear_operation_cache@PLT
	testl	%eax, %eax
	jne	.L512
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	jmp	.L501
.L512:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_find_operation_cache@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L513
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L513
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L501
.L513:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	evp_keymgmt_util_cache_keydata@PLT
	testl	%eax, %eax
	jne	.L514
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_freedata@PLT
	movq	$0, -24(%rbp)
	jmp	.L501
.L514:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	280(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-72(%rbp), %rdx
	movq	%rax, 128(%rdx)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L501
.L503:
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_util_export_to_provider@PLT
	movq	%rax, -24(%rbp)
	jmp	.L501
.L517:
	nop
	jmp	.L501
.L518:
	nop
	jmp	.L501
.L519:
	nop
	jmp	.L501
.L520:
	nop
	jmp	.L501
.L521:
	nop
	jmp	.L501
.L522:
	nop
.L501:
	cmpq	$0, -24(%rbp)
	jne	.L515
	movq	$0, -16(%rbp)
.L515:
	cmpq	$0, -88(%rbp)
	je	.L516
	cmpq	$0, -16(%rbp)
	je	.L516
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -8(%rbp)
.L516:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_free@PLT
	movq	-24(%rbp), %rax
.L490:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	evp_pkey_export_to_provider, .-evp_pkey_export_to_provider
	.section	.rodata
	.align 8
.LC24:
	.string	"keymgmt key type = %s but legacy type = EVP_PKEY_NONE"
.LC25:
	.string	"key type = %s"
	.text
	.globl	evp_pkey_copy_downgraded
	.type	evp_pkey_copy_downgraded, @function
evp_pkey_copy_downgraded:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -88(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L524
	movl	$0, %eax
	jmp	.L525
.L524:
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L526
	movq	-96(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L527
.L526:
	movq	-96(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L527
	movq	-96(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_name@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, -52(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L528
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2045, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rcx
	movl	$786691, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L525
.L528:
	cmpl	$-1, -52(%rbp)
	je	.L529
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -32(%rbp)
.L529:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L530
	call	EVP_PKEY_new@PLT
	movq	-88(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L531
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2059, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L525
.L530:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	evp_pkey_free_it
.L531:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_set_type@PLT
	testl	%eax, %eax
	je	.L527
	cmpq	$0, -48(%rbp)
	jne	.L532
	movl	$1, %eax
	jmp	.L525
.L532:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	jne	.L533
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2072, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rax, %rcx
	movl	$206, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L534
.L533:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L535
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2085, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L535:
	cmpq	$0, -72(%rbp)
	je	.L536
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	296(%rax), %rdx
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$135, %edx
	movq	%rax, %rdi
	call	evp_keymgmt_export@PLT
	testl	%eax, %eax
	je	.L536
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	280(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	(%rcx), %rbx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, 128(%rbx)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movl	$1, %eax
	jmp	.L525
.L536:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L534:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2101, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rax, %rcx
	movl	$205, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L527:
	cmpq	$0, -24(%rbp)
	je	.L537
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
.L537:
	movl	$0, %eax
.L525:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	evp_pkey_copy_downgraded, .-evp_pkey_copy_downgraded
	.globl	evp_pkey_get_legacy
	.type	evp_pkey_get_legacy, @function
evp_pkey_get_legacy:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L539
	movl	$0, %eax
	jmp	.L550
.L539:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L541
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L541
	movl	$0, %eax
	jmp	.L550
.L541:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L542
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	jmp	.L550
.L542:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L543
	movl	$0, %eax
	jmp	.L550
.L543:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	testl	%eax, %eax
	jne	.L544
	movl	$0, %eax
	jmp	.L550
.L544:
	cmpq	$0, -8(%rbp)
	je	.L545
	movq	-8(%rbp), %rax
	jmp	.L550
.L545:
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_copy_downgraded@PLT
	testl	%eax, %eax
	je	.L551
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L552
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L549
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.L549:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	testl	%eax, %eax
	jne	.L553
	movq	$0, -8(%rbp)
	jmp	.L547
.L551:
	nop
	jmp	.L547
.L552:
	nop
	jmp	.L547
.L553:
	nop
.L547:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-8(%rbp), %rax
.L550:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	evp_pkey_get_legacy, .-evp_pkey_get_legacy
	.globl	EVP_PKEY_get_bn_param
	.type	EVP_PKEY_get_bn_param, @function
EVP_PKEY_get_bn_param:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2240, %rsp
	movq	%rdi, -2168(%rbp)
	movq	%rsi, -2176(%rbp)
	movq	%rdx, -2184(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -2176(%rbp)
	je	.L555
	cmpq	$0, -2184(%rbp)
	jne	.L556
.L555:
	movl	$0, %eax
	jmp	.L567
.L556:
	leaq	-2160(%rbp), %rax
	movl	$2048, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-2240(%rbp), %rax
	leaq	-2160(%rbp), %rdx
	movq	-2176(%rbp), %rsi
	movl	$2048, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_BN@PLT
	movq	-2240(%rbp), %rax
	movq	-2232(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-2224(%rbp), %rax
	movq	-2216(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-2208(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	-2240(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-2240(%rbp), %rax
	movq	-2232(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-2224(%rbp), %rax
	movq	-2216(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-2208(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-2168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_params@PLT
	testl	%eax, %eax
	jne	.L558
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L559
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jne	.L560
.L559:
	movl	$0, %eax
	jmp	.L567
.L560:
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$2191, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L561
	movl	$0, %eax
	jmp	.L567
.L561:
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-2168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_params@PLT
	testl	%eax, %eax
	je	.L568
.L558:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L569
	movq	-2184(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	movl	%eax, -4(%rbp)
	jmp	.L562
.L568:
	nop
	jmp	.L562
.L569:
	nop
.L562:
	cmpq	$0, -16(%rbp)
	je	.L564
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L565
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$2207, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L566
.L565:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$2209, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L566
.L564:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L566
	movq	-88(%rbp), %rdx
	leaq	-2160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L566:
	movl	-4(%rbp), %eax
.L567:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	EVP_PKEY_get_bn_param, .-EVP_PKEY_get_bn_param
	.globl	EVP_PKEY_get_octet_string_param
	.type	EVP_PKEY_get_octet_string_param, @function
EVP_PKEY_get_octet_string_param:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L571
	movl	$0, %eax
	jmp	.L577
.L571:
	leaq	-192(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_params@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L573
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	movl	%eax, -4(%rbp)
.L573:
	cmpl	$0, -4(%rbp)
	je	.L574
	cmpq	$0, -136(%rbp)
	je	.L574
	movq	-64(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
.L574:
	cmpl	$0, -8(%rbp)
	je	.L575
	cmpl	$0, -4(%rbp)
	je	.L575
	movl	$1, %eax
	jmp	.L577
.L575:
	movl	$0, %eax
.L577:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	EVP_PKEY_get_octet_string_param, .-EVP_PKEY_get_octet_string_param
	.globl	EVP_PKEY_get_utf8_string_param
	.type	EVP_PKEY_get_utf8_string_param, @function
EVP_PKEY_get_utf8_string_param:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L579
	movl	$0, %eax
	jmp	.L587
.L579:
	leaq	-192(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_params@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L581
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	movl	%eax, -4(%rbp)
.L581:
	cmpl	$0, -4(%rbp)
	je	.L582
	cmpq	$0, -136(%rbp)
	je	.L582
	movq	-64(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
.L582:
	cmpl	$0, -4(%rbp)
	je	.L583
	movq	-64(%rbp), %rax
	cmpq	%rax, -128(%rbp)
	jne	.L583
	movl	$0, %eax
	jmp	.L587
.L583:
	cmpl	$0, -4(%rbp)
	je	.L584
	cmpq	$0, -120(%rbp)
	je	.L584
	movq	-64(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L584:
	cmpl	$0, -8(%rbp)
	je	.L585
	cmpl	$0, -4(%rbp)
	je	.L585
	movl	$1, %eax
	jmp	.L587
.L585:
	movl	$0, %eax
.L587:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	EVP_PKEY_get_utf8_string_param, .-EVP_PKEY_get_utf8_string_param
	.globl	EVP_PKEY_get_int_param
	.type	EVP_PKEY_get_int_param, @function
EVP_PKEY_get_int_param:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L589
	movl	$0, %eax
	jmp	.L593
.L589:
	leaq	-160(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_params@PLT
	testl	%eax, %eax
	je	.L591
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L591
	movl	$1, %eax
	jmp	.L593
.L591:
	movl	$0, %eax
.L593:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	EVP_PKEY_get_int_param, .-EVP_PKEY_get_int_param
	.globl	EVP_PKEY_get_size_t_param
	.type	EVP_PKEY_get_size_t_param, @function
EVP_PKEY_get_size_t_param:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L595
	movl	$0, %eax
	jmp	.L599
.L595:
	leaq	-160(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_get_params@PLT
	testl	%eax, %eax
	je	.L597
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L597
	movl	$1, %eax
	jmp	.L599
.L597:
	movl	$0, %eax
.L599:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	EVP_PKEY_get_size_t_param, .-EVP_PKEY_get_size_t_param
	.globl	EVP_PKEY_set_int_param
	.type	EVP_PKEY_set_int_param, @function
EVP_PKEY_set_int_param:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L601
	movl	$0, %eax
	jmp	.L603
.L601:
	leaq	-160(%rbp), %rax
	leaq	-100(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_params@PLT
.L603:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	EVP_PKEY_set_int_param, .-EVP_PKEY_set_int_param
	.globl	EVP_PKEY_set_size_t_param
	.type	EVP_PKEY_set_size_t_param, @function
EVP_PKEY_set_size_t_param:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L605
	movl	$0, %eax
	jmp	.L607
.L605:
	leaq	-160(%rbp), %rax
	leaq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_params@PLT
.L607:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	EVP_PKEY_set_size_t_param, .-EVP_PKEY_set_size_t_param
	.globl	EVP_PKEY_set_bn_param
	.type	EVP_PKEY_set_bn_param, @function
EVP_PKEY_set_bn_param:
.LFB714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2224, %rsp
	movq	%rdi, -2152(%rbp)
	movq	%rsi, -2160(%rbp)
	movq	%rdx, -2168(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -2160(%rbp)
	je	.L609
	cmpq	$0, -2168(%rbp)
	je	.L609
	cmpq	$0, -2152(%rbp)
	je	.L609
	movq	-2152(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L610
	movq	-2152(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L610
.L609:
	movl	$0, %eax
	jmp	.L614
.L610:
	movq	-2168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -4(%rbp)
	cmpl	$2048, -4(%rbp)
	setle	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L612
	movl	$0, %eax
	jmp	.L614
.L612:
	movl	-4(%rbp), %edx
	leaq	-2144(%rbp), %rcx
	movq	-2168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2nativepad@PLT
	testl	%eax, %eax
	jns	.L613
	movl	$0, %eax
	jmp	.L614
.L613:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-2224(%rbp), %rax
	leaq	-2144(%rbp), %rdx
	movq	-2160(%rbp), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_BN@PLT
	movq	-2224(%rbp), %rax
	movq	-2216(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-2208(%rbp), %rax
	movq	-2200(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-2192(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-2224(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-2224(%rbp), %rax
	movq	-2216(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-2208(%rbp), %rax
	movq	-2200(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-2192(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-2152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_params@PLT
.L614:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	EVP_PKEY_set_bn_param, .-EVP_PKEY_set_bn_param
	.globl	EVP_PKEY_set_utf8_string_param
	.type	EVP_PKEY_set_utf8_string_param, @function
EVP_PKEY_set_utf8_string_param:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L616
	movl	$0, %eax
	jmp	.L618
.L616:
	leaq	-160(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_params@PLT
.L618:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	EVP_PKEY_set_utf8_string_param, .-EVP_PKEY_set_utf8_string_param
	.globl	EVP_PKEY_set_octet_string_param
	.type	EVP_PKEY_set_octet_string_param, @function
EVP_PKEY_set_octet_string_param:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L620
	movl	$0, %eax
	jmp	.L622
.L620:
	leaq	-160(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set_params@PLT
.L622:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	EVP_PKEY_set_octet_string_param, .-EVP_PKEY_set_octet_string_param
	.globl	EVP_PKEY_settable_params
	.type	EVP_PKEY_settable_params, @function
EVP_PKEY_settable_params:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L624
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L624
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_settable_params@PLT
	jmp	.L626
.L624:
	movl	$0, %eax
.L626:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	EVP_PKEY_settable_params, .-EVP_PKEY_settable_params
	.globl	EVP_PKEY_set_params
	.type	EVP_PKEY_set_params, @function
EVP_PKEY_set_params:
.LFB718:
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
	je	.L628
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L628
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_set_params@PLT
	jmp	.L629
.L628:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2393, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$163, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L629:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	EVP_PKEY_set_params, .-EVP_PKEY_set_params
	.globl	EVP_PKEY_gettable_params
	.type	EVP_PKEY_gettable_params, @function
EVP_PKEY_gettable_params:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L631
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L631
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_gettable_params@PLT
	jmp	.L633
.L631:
	movl	$0, %eax
.L633:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	EVP_PKEY_gettable_params, .-EVP_PKEY_gettable_params
	.globl	EVP_PKEY_get_params
	.type	EVP_PKEY_get_params, @function
EVP_PKEY_get_params:
.LFB720:
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
	je	.L635
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L636
	movq	-8(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_keymgmt_get_params@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L637
.L636:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L635
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L635
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_get_params_to_ctrl@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L637
.L635:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2414, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$163, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L637:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	EVP_PKEY_get_params, .-EVP_PKEY_get_params
	.section	.rodata
.LC26:
	.string	"point-format"
.LC27:
	.string	"uncompressed"
.LC28:
	.string	"compressed"
.LC29:
	.string	"hybrid"
	.text
	.globl	EVP_PKEY_get_ec_point_conv_form
	.type	EVP_PKEY_get_ec_point_conv_form, @function
EVP_PKEY_get_ec_point_conv_form:
.LFB721:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L639
	movl	$0, %eax
	jmp	.L648
.L639:
	movq	-120(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L641
	movq	-120(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L642
.L641:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L643
	movl	$0, %eax
	jmp	.L648
.L643:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_conv_form@PLT
	jmp	.L648
.L642:
	leaq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	.LC26(%rip), %rsi
	movq	-120(%rbp), %rax
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	jne	.L644
	movl	$0, %eax
	jmp	.L648
.L644:
	leaq	.LC27(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L645
	movl	$4, %eax
	jmp	.L648
.L645:
	leaq	.LC28(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L646
	movl	$2, %eax
	jmp	.L648
.L646:
	leaq	.LC29(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L647
	movl	$6, %eax
	jmp	.L648
.L647:
	movl	$0, %eax
.L648:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	EVP_PKEY_get_ec_point_conv_form, .-EVP_PKEY_get_ec_point_conv_form
	.section	.rodata
.LC30:
	.string	"field-type"
.LC31:
	.string	"prime-field"
.LC32:
	.string	"characteristic-two-field"
	.text
	.globl	EVP_PKEY_get_field_type
	.type	EVP_PKEY_get_field_type, @function
EVP_PKEY_get_field_type:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L650
	movl	$0, %eax
	jmp	.L659
.L650:
	movq	-120(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L652
	movq	-120(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L653
.L652:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_EC_KEY@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L654
	movl	$0, %eax
	jmp	.L659
.L654:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L655
	movl	$0, %eax
	jmp	.L659
.L655:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	jmp	.L659
.L653:
	leaq	-104(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	.LC30(%rip), %rsi
	movq	-120(%rbp), %rax
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	jne	.L656
	movl	$0, %eax
	jmp	.L659
.L656:
	leaq	.LC31(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L657
	movl	$406, %eax
	jmp	.L659
.L657:
	leaq	.LC32(%rip), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L658
	movl	$407, %eax
	jmp	.L659
.L658:
	movl	$0, %eax
.L659:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	EVP_PKEY_get_field_type, .-EVP_PKEY_get_field_type
	.section	.rodata
	.align 16
	.type	__func__.21, @object
	.size	__func__.21, 18
__func__.21:
	.string	"EVP_PKEY_get_bits"
	.align 16
	.type	__func__.20, @object
	.size	__func__.20, 27
__func__.20:
	.string	"EVP_PKEY_get_security_bits"
	.align 16
	.type	__func__.19, @object
	.size	__func__.19, 25
__func__.19:
	.string	"EVP_PKEY_copy_parameters"
	.align 16
	.type	__func__.18, @object
	.size	__func__.18, 16
__func__.18:
	.string	"new_raw_key_int"
	.align 16
	.type	__func__.17, @object
	.size	__func__.17, 29
__func__.17:
	.string	"EVP_PKEY_get_raw_private_key"
	.align 16
	.type	__func__.16, @object
	.size	__func__.16, 28
__func__.16:
	.string	"EVP_PKEY_get_raw_public_key"
	.align 16
	.type	__func__.15, @object
	.size	__func__.15, 17
__func__.15:
	.string	"new_cmac_key_int"
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 21
__func__.14:
	.string	"EVP_PKEY_set1_engine"
	.align 16
	.type	__func__.13, @object
	.size	__func__.13, 19
__func__.13:
	.string	"EVP_PKEY_get0_hmac"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 23
__func__.12:
	.string	"EVP_PKEY_get0_poly1305"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 22
__func__.11:
	.string	"EVP_PKEY_get0_siphash"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 22
__func__.10:
	.string	"evp_pkey_get0_DSA_int"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 22
__func__.9:
	.string	"evp_pkey_get0_ECX_KEY"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 21
__func__.8:
	.string	"evp_pkey_get0_DH_int"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 13
__func__.7:
	.string	"EVP_PKEY_new"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 14
__func__.6:
	.string	"pkey_set_type"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 29
__func__.5:
	.string	"EVP_PKEY_set_type_by_keymgmt"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 13
__func__.4:
	.string	"EVP_PKEY_dup"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"EVP_PKEY_get_size"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 25
__func__.2:
	.string	"evp_pkey_copy_downgraded"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"EVP_PKEY_set_params"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"EVP_PKEY_get_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
