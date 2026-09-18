	.file	"ffc_key_validate.c"
	.text
	.globl	ossl_ffc_validate_public_key_partial
	.type	ossl_ffc_validate_public_key_partial, @function
ossl_ffc_validate_public_key_partial:
.LFB320:
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
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -40(%rbp)
	je	.L2
	cmpq	$0, -48(%rbp)
	je	.L2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L3
.L2:
	movq	-56(%rbp), %rax
	movl	$64, (%rax)
	movl	$1, %eax
	jmp	.L4
.L3:
	movl	$0, %edi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L14
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L15
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L15
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jg	.L9
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L9:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L16
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_sub_word@PLT
	testl	%eax, %eax
	je	.L16
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L12
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L12:
	movl	$1, -4(%rbp)
	jmp	.L6
.L14:
	nop
	jmp	.L6
.L15:
	nop
	jmp	.L6
.L16:
	nop
.L6:
	cmpq	$0, -24(%rbp)
	je	.L13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
.L13:
	movl	-4(%rbp), %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	ossl_ffc_validate_public_key_partial, .-ossl_ffc_validate_public_key_partial
	.globl	ossl_ffc_validate_public_key
	.type	ossl_ffc_validate_public_key, @function
ossl_ffc_validate_public_key:
.LFB321:
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
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_validate_public_key_partial@PLT
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L20
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movl	$0, %edi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L26
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L27
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L20
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L20:
	movl	$1, -4(%rbp)
	jmp	.L22
.L26:
	nop
	jmp	.L22
.L27:
	nop
.L22:
	cmpq	$0, -16(%rbp)
	je	.L25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
.L25:
	movl	-4(%rbp), %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	ossl_ffc_validate_public_key, .-ossl_ffc_validate_public_key
	.globl	ossl_ffc_validate_private_key
	.type	ossl_ffc_validate_private_key, @function
ossl_ffc_validate_private_key:
.LFB322:
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
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L29
	cmpq	$0, -24(%rbp)
	jne	.L30
.L29:
	movq	-40(%rbp), %rax
	movl	$64, (%rax)
	jmp	.L31
.L30:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jns	.L32
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L31
.L32:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L33
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L31
.L33:
	movl	$1, -4(%rbp)
.L31:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	ossl_ffc_validate_private_key, .-ossl_ffc_validate_private_key
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
