	.file	"ffc_params.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	ossl_ffc_params_init
	.type	ossl_ffc_params_init, @function
ossl_ffc_params_init:
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
	movl	$96, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movl	$-1, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 64(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	ossl_ffc_params_init, .-ossl_ffc_params_init
	.section	.rodata
.LC0:
	.string	"../crypto/ffc/ffc_params.c"
	.text
	.globl	ossl_ffc_params_cleanup
	.type	ossl_ffc_params_cleanup, @function
ossl_ffc_params_cleanup:
.LFB403:
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
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$34, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_init@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	ossl_ffc_params_cleanup, .-ossl_ffc_params_cleanup
	.globl	ossl_ffc_params_set0_pqg
	.type	ossl_ffc_params_set0_pqg, @function
ossl_ffc_params_set0_pqg:
.LFB404:
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
	cmpq	$0, -16(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L8:
	cmpq	$0, -24(%rbp)
	je	.L9
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L9
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L9:
	cmpq	$0, -32(%rbp)
	je	.L11
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L11
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	ossl_ffc_params_set0_pqg, .-ossl_ffc_params_set0_pqg
	.globl	ossl_ffc_params_get0_pqg
	.type	ossl_ffc_params_get0_pqg, @function
ossl_ffc_params_get0_pqg:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L13
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L13:
	cmpq	$0, -24(%rbp)
	je	.L14
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L14:
	cmpq	$0, -32(%rbp)
	je	.L16
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L16:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	ossl_ffc_params_get0_pqg, .-ossl_ffc_params_get0_pqg
	.globl	ossl_ffc_params_set0_j
	.type	ossl_ffc_params_set0_j, @function
ossl_ffc_params_set0_j:
.LFB406:
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
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	cmpq	$0, -16(%rbp)
	je	.L19
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L19:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	ossl_ffc_params_set0_j, .-ossl_ffc_params_set0_j
	.globl	ossl_ffc_params_set_seed
	.type	ossl_ffc_params_set_seed, @function
ossl_ffc_params_set_seed:
.LFB407:
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
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L22
	movl	$1, %eax
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$81, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L21:
	cmpq	$0, -16(%rbp)
	je	.L24
	cmpq	$0, -24(%rbp)
	je	.L24
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$85, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L25
	movl	$0, %eax
	jmp	.L23
.L25:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	jmp	.L26
.L24:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
.L26:
	movl	$1, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_ffc_params_set_seed, .-ossl_ffc_params_set_seed
	.globl	ossl_ffc_params_set_gindex
	.type	ossl_ffc_params_set_gindex, @function
ossl_ffc_params_set_gindex:
.LFB408:
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
	movl	%edx, 56(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_ffc_params_set_gindex, .-ossl_ffc_params_set_gindex
	.globl	ossl_ffc_params_set_pcounter
	.type	ossl_ffc_params_set_pcounter, @function
ossl_ffc_params_set_pcounter:
.LFB409:
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
.LFE409:
	.size	ossl_ffc_params_set_pcounter, .-ossl_ffc_params_set_pcounter
	.globl	ossl_ffc_params_set_h
	.type	ossl_ffc_params_set_h, @function
ossl_ffc_params_set_h:
.LFB410:
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
	movl	%edx, 60(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_ffc_params_set_h, .-ossl_ffc_params_set_h
	.globl	ossl_ffc_params_set_flags
	.type	ossl_ffc_params_set_flags, @function
ossl_ffc_params_set_flags:
.LFB411:
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
	movl	%edx, 64(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ossl_ffc_params_set_flags, .-ossl_ffc_params_set_flags
	.globl	ossl_ffc_params_enable_flags
	.type	ossl_ffc_params_enable_flags, @function
ossl_ffc_params_enable_flags:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L32
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	orl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L34
.L32:
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	movl	-12(%rbp), %edx
	notl	%edx
	andl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
.L34:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_ffc_params_enable_flags, .-ossl_ffc_params_enable_flags
	.globl	ossl_ffc_set_digest
	.type	ossl_ffc_set_digest, @function
ossl_ffc_set_digest:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 80(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ossl_ffc_set_digest, .-ossl_ffc_set_digest
	.globl	ossl_ffc_params_set_validate_params
	.type	ossl_ffc_params_set_validate_params, @function
ossl_ffc_params_set_validate_params:
.LFB414:
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
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_params_set_seed@PLT
	testl	%eax, %eax
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 48(%rax)
	movl	$1, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ossl_ffc_params_set_validate_params, .-ossl_ffc_params_set_validate_params
	.globl	ossl_ffc_params_get_validate_params
	.type	ossl_ffc_params_get_validate_params, @function
ossl_ffc_params_get_validate_params:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L40
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L40:
	cmpq	$0, -24(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L41:
	cmpq	$0, -32(%rbp)
	je	.L43
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L43:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	ossl_ffc_params_get_validate_params, .-ossl_ffc_params_get_validate_params
	.type	ffc_bn_cpy, @function
ffc_bn_cpy:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L45
	movq	$0, -8(%rbp)
	jmp	.L46
.L45:
	movq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	je	.L47
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	testl	%eax, %eax
	jne	.L47
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L46
.L47:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L46
	movl	$0, %eax
	jmp	.L48
.L46:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	ffc_bn_cpy, .-ffc_bn_cpy
	.globl	ossl_ffc_params_copy
	.type	ossl_ffc_params_copy, @function
ossl_ffc_params_copy:
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ffc_bn_cpy
	testl	%eax, %eax
	je	.L50
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ffc_bn_cpy
	testl	%eax, %eax
	je	.L50
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ffc_bn_cpy
	testl	%eax, %eax
	je	.L50
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$24, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ffc_bn_cpy
	testl	%eax, %eax
	jne	.L51
.L50:
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$183, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$186, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	movl	$0, %eax
	jmp	.L52
.L53:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.L54:
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 52(%rax)
	movq	-16(%rbp), %rax
	movl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-16(%rbp), %rax
	movl	56(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-16(%rbp), %rax
	movl	64(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-16(%rbp), %rax
	movl	88(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 88(%rax)
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	ossl_ffc_params_copy, .-ossl_ffc_params_copy
	.globl	ossl_ffc_params_cmp
	.type	ossl_ffc_params_cmp, @function
ossl_ffc_params_cmp:
.LFB418:
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L56
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L56
	cmpl	$0, -20(%rbp)
	jne	.L57
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L56
.L57:
	movl	$1, %eax
	jmp	.L59
.L56:
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	ossl_ffc_params_cmp, .-ossl_ffc_params_cmp
	.section	.rodata
.LC1:
	.string	"p"
.LC2:
	.string	"q"
.LC3:
	.string	"g"
.LC4:
	.string	"j"
.LC5:
	.string	"gindex"
.LC6:
	.string	"pcounter"
.LC7:
	.string	"hindex"
.LC8:
	.string	"seed"
.LC9:
	.string	"group"
.LC10:
	.string	"validate-pq"
.LC11:
	.string	"validate-g"
.LC12:
	.string	"validate-legacy"
.LC13:
	.string	"digest"
.LC14:
	.string	"properties"
	.text
	.globl	ossl_ffc_params_todata
	.type	ossl_ffc_params_todata, @function
ossl_ffc_params_todata:
.LFB419:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC1(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.LC2(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	jne	.L63
	movl	$0, %eax
	jmp	.L62
.L63:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	.LC3(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L62
.L64:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	.LC4(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_bn@PLT
	testl	%eax, %eax
	jne	.L65
	movl	$0, %eax
	jmp	.L62
.L65:
	movq	-40(%rbp), %rax
	movl	56(%rax), %edx
	leaq	.LC5(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L62
.L66:
	movq	-40(%rbp), %rax
	movl	48(%rax), %edx
	leaq	.LC6(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L62
.L67:
	movq	-40(%rbp), %rax
	movl	60(%rax), %edx
	leaq	.LC7(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	jne	.L68
	movl	$0, %eax
	jmp	.L62
.L68:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-40(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	.LC8(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L69
	movl	$0, %eax
	jmp	.L62
.L69:
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L70
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, %edi
	call	ossl_ffc_uid_to_dh_named_group@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_named_group_get_name@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L71
	movq	-16(%rbp), %rdx
	leaq	.LC9(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L70
.L71:
	movl	$0, %eax
	jmp	.L62
.L70:
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	andl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	leaq	.LC10(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	jne	.L72
	movl	$0, %eax
	jmp	.L62
.L72:
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	andl	$2, %eax
	shrl	%eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	leaq	.LC11(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, %eax
	jmp	.L62
.L73:
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	andl	$4, %eax
	shrl	$2, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	leaq	.LC12(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_int@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L62
.L74:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	leaq	.LC13(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L62
.L75:
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	.LC14(%rip), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	ossl_param_build_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L62
.L76:
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ossl_ffc_params_todata, .-ossl_ffc_params_todata
	.section	.rodata
.LC15:
	.string	"prime P:"
.LC16:
	.string	"generator G:"
.LC17:
	.string	"subgroup order Q:"
.LC18:
	.string	"subgroup factor:"
.LC19:
	.string	"seed:"
.LC20:
	.string	"\n"
.LC21:
	.string	""
.LC22:
	.string	":"
.LC23:
	.string	"%02x%s"
.LC24:
	.string	"counter: %d\n"
	.text
	.globl	ossl_ffc_params_print
	.type	ossl_ffc_params_print, @function
ossl_ffc_params_print:
.LFB420:
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %ecx
	leaq	.LC15(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L96
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-36(%rbp), %ecx
	leaq	.LC16(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L97
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-36(%rbp), %ecx
	leaq	.LC17(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L98
.L81:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-36(%rbp), %ecx
	leaq	.LC18(%rip), %rsi
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ASN1_bn_print@PLT
	testl	%eax, %eax
	je	.L99
.L82:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L83
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L100
	leaq	.LC19(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L100
	movq	$0, -8(%rbp)
	jmp	.L86
.L92:
	movq	-8(%rbp), %rcx
	movabsq	$-8608480567731124087, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	testq	%rax, %rax
	jne	.L87
	leaq	.LC20(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L101
	movl	-36(%rbp), %eax
	leal	4(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L101
.L87:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L89
	leaq	.LC21(%rip), %rax
	jmp	.L90
.L89:
	leaq	.LC22(%rip), %rax
.L90:
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	leaq	.LC23(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L102
	addq	$1, -8(%rbp)
.L86:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L92
	leaq	.LC20(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L83
	movl	$0, %eax
	jmp	.L93
.L83:
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$-1, %eax
	je	.L94
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	je	.L103
	movq	-32(%rbp), %rax
	movl	48(%rax), %edx
	leaq	.LC24(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L103
.L94:
	movl	$1, %eax
	jmp	.L93
.L96:
	nop
	jmp	.L79
.L97:
	nop
	jmp	.L79
.L98:
	nop
	jmp	.L79
.L99:
	nop
	jmp	.L79
.L100:
	nop
	jmp	.L79
.L101:
	nop
	jmp	.L79
.L102:
	nop
	jmp	.L79
.L103:
	nop
.L79:
	movl	$0, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	ossl_ffc_params_print, .-ossl_ffc_params_print
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
