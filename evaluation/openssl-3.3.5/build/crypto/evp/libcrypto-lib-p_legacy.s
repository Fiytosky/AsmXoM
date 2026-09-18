	.file	"p_legacy.c"
	.text
	.globl	EVP_PKEY_set1_RSA
	.type	EVP_PKEY_set1_RSA, @function
EVP_PKEY_set1_RSA:
.LFB438:
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
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L2
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_up_ref@PLT
.L2:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	EVP_PKEY_set1_RSA, .-EVP_PKEY_set1_RSA
	.section	.rodata
.LC0:
	.string	"../crypto/evp/p_legacy.c"
	.text
	.globl	evp_pkey_get0_RSA_int
	.type	evp_pkey_get0_RSA_int, @function
evp_pkey_get0_RSA_int:
.LFB439:
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
	cmpl	$6, %eax
	je	.L5
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$912, %eax
	je	.L5
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	evp_pkey_get0_RSA_int, .-evp_pkey_get0_RSA_int
	.globl	EVP_PKEY_get0_RSA
	.type	EVP_PKEY_get0_RSA, @function
EVP_PKEY_get0_RSA:
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
	call	evp_pkey_get0_RSA_int@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	EVP_PKEY_get0_RSA, .-EVP_PKEY_get0_RSA
	.globl	EVP_PKEY_get1_RSA
	.type	EVP_PKEY_get1_RSA, @function
EVP_PKEY_get1_RSA:
.LFB441:
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
	call	evp_pkey_get0_RSA_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_up_ref@PLT
.L10:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	EVP_PKEY_get1_RSA, .-EVP_PKEY_get1_RSA
	.globl	EVP_PKEY_set1_EC_KEY
	.type	EVP_PKEY_set1_EC_KEY, @function
EVP_PKEY_set1_EC_KEY:
.LFB442:
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
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$408, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	jne	.L15
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
	jmp	.L14
.L15:
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	EVP_PKEY_set1_EC_KEY, .-EVP_PKEY_set1_EC_KEY
	.globl	evp_pkey_get0_EC_KEY_int
	.type	evp_pkey_get0_EC_KEY_int, @function
evp_pkey_get0_EC_KEY_int:
.LFB443:
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
	call	EVP_PKEY_get_base_id@PLT
	cmpl	$408, %eax
	je	.L17
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	evp_pkey_get0_EC_KEY_int, .-evp_pkey_get0_EC_KEY_int
	.globl	EVP_PKEY_get0_EC_KEY
	.type	EVP_PKEY_get0_EC_KEY, @function
EVP_PKEY_get0_EC_KEY:
.LFB444:
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
	call	evp_pkey_get0_EC_KEY_int@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	EVP_PKEY_get0_EC_KEY, .-EVP_PKEY_get0_EC_KEY
	.globl	EVP_PKEY_get1_EC_KEY
	.type	EVP_PKEY_get1_EC_KEY, @function
EVP_PKEY_get1_EC_KEY:
.LFB445:
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
	call	evp_pkey_get0_EC_KEY_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L22
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_up_ref@PLT
	testl	%eax, %eax
	jne	.L22
	movq	$0, -8(%rbp)
.L22:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	EVP_PKEY_get1_EC_KEY, .-EVP_PKEY_get1_EC_KEY
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 22
__func__.1:
	.string	"evp_pkey_get0_RSA_int"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 25
__func__.0:
	.string	"evp_pkey_get0_EC_KEY_int"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
