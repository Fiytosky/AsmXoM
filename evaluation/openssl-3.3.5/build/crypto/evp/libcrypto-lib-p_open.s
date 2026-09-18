	.file	"p_open.c"
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
	.string	"../crypto/evp/p_open.c"
	.text
	.globl	EVP_OpenInit
	.type	EVP_OpenInit, @function
EVP_OpenInit:
.LFB509:
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
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L6
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_reset@PLT
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	testl	%eax, %eax
	je	.L18
.L6:
	cmpq	$0, -80(%rbp)
	jne	.L8
	movl	$1, %eax
	jmp	.L17
.L8:
	movq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L10
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L10:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	testl	%eax, %eax
	jle	.L19
	movl	-60(%rbp), %eax
	movslq	%eax, %rsi
	movq	-56(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	testl	%eax, %eax
	jle	.L19
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$45, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L20
	movl	-60(%rbp), %eax
	movslq	%eax, %rdi
	movq	-56(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	testl	%eax, %eax
	jle	.L21
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_key_length@PLT
	testl	%eax, %eax
	jle	.L22
	movq	-72(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	testl	%eax, %eax
	je	.L22
	movl	$1, -12(%rbp)
	jmp	.L7
.L18:
	nop
	jmp	.L7
.L19:
	nop
	jmp	.L7
.L20:
	nop
	jmp	.L7
.L21:
	nop
	jmp	.L7
.L22:
	nop
.L7:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-32(%rbp), %rsi
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$58, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-12(%rbp), %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	EVP_OpenInit, .-EVP_OpenInit
	.globl	EVP_OpenFinal
	.type	EVP_OpenFinal, @function
EVP_OpenFinal:
.LFB510:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal_ex@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L24
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	movl	%eax, -4(%rbp)
.L24:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	EVP_OpenFinal, .-EVP_OpenFinal
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 13
__func__.0:
	.string	"EVP_OpenInit"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
