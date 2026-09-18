	.file	"mac_legacy_kmgmt.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB499:
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
.LFE499:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB500:
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
.LFE500:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	CRYPTO_UP_REF, @function
CRYPTO_UP_REF:
.LFB515:
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
.LFE515:
	.size	CRYPTO_UP_REF, .-CRYPTO_UP_REF
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB516:
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
.LFE516:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB518:
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
.LFE518:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB519:
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
.LFE519:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/keymgmt/mac_legacy_kmgmt.c"
	.text
	.globl	ossl_mac_key_new
	.type	ossl_mac_key_new, @function
ossl_mac_key_new:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	leaq	.LC0(%rip), %rax
	movl	$71, %edx
	movq	%rax, %rsi
	movl	$72, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L15
.L16:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L17
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$76, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L15
.L17:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 64(%rax)
	movq	-8(%rbp), %rax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	ossl_mac_key_new, .-ossl_mac_key_new
	.globl	ossl_mac_key_free
	.type	ossl_mac_key_free, @function
ossl_mac_key_free:
.LFB521:
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
	je	.L23
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L24
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$96, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$97, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_reset@PLT
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L18
.L23:
	nop
	jmp	.L18
.L24:
	nop
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	ossl_mac_key_free, .-ossl_mac_key_free
	.globl	ossl_mac_key_up_ref
	.type	ossl_mac_key_up_ref, @function
ossl_mac_key_up_ref:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L26
	movl	$0, %eax
	jmp	.L28
.L26:
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	movl	$1, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	ossl_mac_key_up_ref, .-ossl_mac_key_up_ref
	.type	mac_new, @function
mac_new:
.LFB523:
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
	call	ossl_prov_ctx_get0_libctx@PLT
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_mac_key_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	mac_new, .-mac_new
	.type	mac_new_cmac, @function
mac_new_cmac:
.LFB524:
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
	call	ossl_prov_ctx_get0_libctx@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_mac_key_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	mac_new_cmac, .-mac_new_cmac
	.type	mac_free, @function
mac_free:
.LFB525:
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
	call	ossl_mac_key_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	mac_free, .-mac_free
	.type	mac_has, @function
mac_has:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L35
	cmpq	$0, -16(%rbp)
	je	.L35
	movl	$1, -4(%rbp)
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L35
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L35:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	mac_has, .-mac_has
	.type	mac_match, @function
mac_match:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L40
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L42
.L41:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L42
.L43:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L42
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L42
.L44:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L45
.L42:
	movl	$0, -4(%rbp)
	jmp	.L46
.L45:
	cmpl	$0, -4(%rbp)
	je	.L47
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L47
.L48:
	movl	$1, %eax
	jmp	.L49
.L47:
	movl	$0, %eax
.L49:
	movl	%eax, -4(%rbp)
.L46:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L40
	cmpl	$0, -4(%rbp)
	je	.L50
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	je	.L50
	movl	$1, %eax
	jmp	.L51
.L50:
	movl	$0, %eax
.L51:
	movl	%eax, -4(%rbp)
.L40:
	movl	-4(%rbp), %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	mac_match, .-mac_match
	.section	.rodata
.LC1:
	.string	"priv"
.LC2:
	.string	"properties"
	.text
	.type	mac_key_fromdata, @function
mac_key_fromdata:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L54
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L55
.L54:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$192, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L57
.L56:
	movl	$1, %eax
.L57:
	leaq	.LC0(%rip), %rcx
	movl	$194, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L58
	movl	$0, %eax
	jmp	.L55
.L58:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
.L53:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L59
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	je	.L60
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L55
.L60:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$207, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$208, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	movl	$0, %eax
	jmp	.L55
.L59:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L61
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_cipher_load_from_params@PLT
	testl	%eax, %eax
	jne	.L61
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$215, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L55
.L61:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movl	$1, %eax
	jmp	.L55
.L62:
	movl	$0, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	mac_key_fromdata, .-mac_key_fromdata
	.type	mac_import, @function
mac_import:
.LFB529:
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
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L64
	cmpq	$0, -8(%rbp)
	jne	.L65
.L64:
	movl	$0, %eax
	jmp	.L66
.L65:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L66
.L67:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mac_key_fromdata
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	mac_import, .-mac_import
	.section	.rodata
.LC3:
	.string	"cipher"
.LC4:
	.string	"engine"
	.text
	.type	key_to_params, @function
key_to_params:
.LFB530:
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
	jne	.L69
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	.LC1(%rip), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L71
	movl	$0, %eax
	jmp	.L70
.L71:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rcx
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L72
	movl	$0, %eax
	jmp	.L70
.L72:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_get_id@PLT
	movq	%rax, %rcx
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L70
.L73:
	movl	$1, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	key_to_params, .-key_to_params
	.type	mac_export, @function
mac_export:
.LFB531:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L75
	cmpq	$0, -16(%rbp)
	jne	.L76
.L75:
	movl	$0, %eax
	jmp	.L77
.L76:
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L77
.L78:
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L79
	movl	$0, %eax
	jmp	.L77
.L79:
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L80
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	key_to_params
	testl	%eax, %eax
	je	.L83
.L80:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L84
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	jmp	.L81
.L83:
	nop
	jmp	.L81
.L84:
	nop
.L81:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-4(%rbp), %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	mac_export, .-mac_export
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	mac_key_types, @object
	.size	mac_key_types, 120
mac_key_types:
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	mac_imexport_types, @function
mac_imexport_types:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L86
	leaq	mac_key_types(%rip), %rax
	jmp	.L87
.L86:
	movl	$0, %eax
.L87:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	mac_imexport_types, .-mac_imexport_types
	.section	.data.rel.ro.local
	.align 32
	.type	cmac_key_types, @object
	.size	cmac_key_types, 200
cmac_key_types:
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	cmac_imexport_types, @function
cmac_imexport_types:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L89
	leaq	cmac_key_types(%rip), %rax
	jmp	.L90
.L89:
	movl	$0, %eax
.L90:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	cmac_imexport_types, .-cmac_imexport_types
	.type	mac_get_params, @function
mac_get_params:
.LFB534:
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
	movl	$0, %esi
	movq	%rax, %rdi
	call	key_to_params
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	mac_get_params, .-mac_get_params
	.type	mac_gettable_params, @function
mac_gettable_params:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	gettable_params.7(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	mac_gettable_params, .-mac_gettable_params
	.type	cmac_gettable_params, @function
cmac_gettable_params:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	gettable_params.6(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	cmac_gettable_params, .-cmac_gettable_params
	.type	mac_set_params, @function
mac_set_params:
.LFB537:
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
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L98
	movl	$0, %eax
	jmp	.L99
.L98:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L100
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mac_key_fromdata
	jmp	.L99
.L100:
	movl	$1, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	mac_set_params, .-mac_set_params
	.type	mac_settable_params, @function
mac_settable_params:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	settable_params.5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	mac_settable_params, .-mac_settable_params
	.type	mac_gen_init_common, @function
mac_gen_init_common:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L104
	movl	$0, %eax
	jmp	.L105
.L104:
	leaq	.LC0(%rip), %rax
	movl	$383, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L106
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
.L106:
	movq	-16(%rbp), %rax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	mac_gen_init_common, .-mac_gen_init_common
	.type	mac_gen_init, @function
mac_gen_init:
.LFB540:
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
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mac_gen_init_common
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L108
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mac_gen_set_params
	testl	%eax, %eax
	jne	.L108
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	mac_gen_cleanup
	movq	$0, -8(%rbp)
.L108:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	mac_gen_init, .-mac_gen_init
	.type	cmac_gen_init, @function
cmac_gen_init:
.LFB541:
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
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mac_gen_init_common
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L111
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cmac_gen_set_params
	testl	%eax, %eax
	jne	.L111
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	mac_gen_cleanup
	movq	$0, -8(%rbp)
.L111:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	cmac_gen_init, .-cmac_gen_init
	.type	mac_gen_set_params, @function
mac_gen_set_params:
.LFB542:
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
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L114
	movl	$0, %eax
	jmp	.L115
.L114:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L116
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$5, %eax
	je	.L117
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$425, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L115
.L117:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$428, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L118
	movl	$0, %eax
	jmp	.L115
.L118:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
.L116:
	movl	$1, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	mac_gen_set_params, .-mac_gen_set_params
	.type	cmac_gen_set_params, @function
cmac_gen_set_params:
.LFB543:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mac_gen_set_params
	testl	%eax, %eax
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_prov_cipher_load_from_params@PLT
	testl	%eax, %eax
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$447, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L121
.L122:
	movl	$1, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	cmac_gen_set_params, .-cmac_gen_set_params
	.type	mac_gen_settable_params, @function
mac_gen_settable_params:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	settable.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	mac_gen_settable_params, .-mac_gen_settable_params
	.type	cmac_gen_settable_params, @function
cmac_gen_settable_params:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	settable.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	cmac_gen_settable_params, .-cmac_gen_settable_params
	.type	mac_gen, @function
mac_gen:
.LFB546:
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
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L128
	cmpq	$0, -8(%rbp)
	jne	.L129
.L128:
	movl	$0, %eax
	jmp	.L130
.L129:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_mac_key_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L131
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$484, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524345, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L130
.L131:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L132
	movq	-16(%rbp), %rax
	jmp	.L130
.L132:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L133
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$493, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_mac_key_free@PLT
	movl	$0, %eax
	jmp	.L130
.L133:
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_prov_cipher_copy@PLT
	testl	%eax, %eax
	jne	.L134
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_mac_key_free@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$506, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L130
.L134:
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_reset@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	mac_gen, .-mac_gen
	.type	mac_gen_cleanup, @function
mac_gen_cleanup:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L138
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$525, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	ossl_prov_cipher_reset@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$527, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L135
.L138:
	nop
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	mac_gen_cleanup, .-mac_gen_cleanup
	.globl	ossl_mac_legacy_keymgmt_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_mac_legacy_keymgmt_functions, @object
	.size	ossl_mac_legacy_keymgmt_functions, 288
ossl_mac_legacy_keymgmt_functions:
	.long	1
	.zero	4
	.quad	mac_new
	.long	10
	.zero	4
	.quad	mac_free
	.long	11
	.zero	4
	.quad	mac_get_params
	.long	12
	.zero	4
	.quad	mac_gettable_params
	.long	13
	.zero	4
	.quad	mac_set_params
	.long	14
	.zero	4
	.quad	mac_settable_params
	.long	21
	.zero	4
	.quad	mac_has
	.long	23
	.zero	4
	.quad	mac_match
	.long	40
	.zero	4
	.quad	mac_import
	.long	41
	.zero	4
	.quad	mac_imexport_types
	.long	42
	.zero	4
	.quad	mac_export
	.long	43
	.zero	4
	.quad	mac_imexport_types
	.long	2
	.zero	4
	.quad	mac_gen_init
	.long	4
	.zero	4
	.quad	mac_gen_set_params
	.long	5
	.zero	4
	.quad	mac_gen_settable_params
	.long	6
	.zero	4
	.quad	mac_gen
	.long	7
	.zero	4
	.quad	mac_gen_cleanup
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_cmac_legacy_keymgmt_functions
	.align 32
	.type	ossl_cmac_legacy_keymgmt_functions, @object
	.size	ossl_cmac_legacy_keymgmt_functions, 288
ossl_cmac_legacy_keymgmt_functions:
	.long	1
	.zero	4
	.quad	mac_new_cmac
	.long	10
	.zero	4
	.quad	mac_free
	.long	11
	.zero	4
	.quad	mac_get_params
	.long	12
	.zero	4
	.quad	cmac_gettable_params
	.long	13
	.zero	4
	.quad	mac_set_params
	.long	14
	.zero	4
	.quad	mac_settable_params
	.long	21
	.zero	4
	.quad	mac_has
	.long	23
	.zero	4
	.quad	mac_match
	.long	40
	.zero	4
	.quad	mac_import
	.long	41
	.zero	4
	.quad	cmac_imexport_types
	.long	42
	.zero	4
	.quad	mac_export
	.long	43
	.zero	4
	.quad	cmac_imexport_types
	.long	2
	.zero	4
	.quad	cmac_gen_init
	.long	4
	.zero	4
	.quad	cmac_gen_set_params
	.long	5
	.zero	4
	.quad	cmac_gen_settable_params
	.long	6
	.zero	4
	.quad	mac_gen
	.long	7
	.zero	4
	.quad	mac_gen_cleanup
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 17
__func__.8:
	.string	"mac_key_fromdata"
	.section	.data.rel.ro.local
	.align 32
	.type	gettable_params.7, @object
	.size	gettable_params.7, 80
gettable_params.7:
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	gettable_params.6, @object
	.size	gettable_params.6, 160
gettable_params.6:
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC4
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	settable_params.5, @object
	.size	settable_params.5, 80
settable_params.5:
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 19
__func__.4:
	.string	"mac_gen_set_params"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 20
__func__.3:
	.string	"cmac_gen_set_params"
	.section	.data.rel.local,"aw"
	.align 32
	.type	settable.2, @object
	.size	settable.2, 80
settable.2:
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	settable.1, @object
	.size	settable.1, 120
settable.1:
	.quad	.LC1
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 8
__func__.0:
	.string	"mac_gen"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
