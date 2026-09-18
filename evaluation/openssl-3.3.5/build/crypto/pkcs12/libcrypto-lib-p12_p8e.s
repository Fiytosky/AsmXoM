	.file	"p12_p8e.c"
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
	.string	"../crypto/pkcs12/p12_p8e.c"
	.text
	.globl	PKCS8_encrypt_ex
	.type	PKCS8_encrypt_ex, @function
PKCS8_encrypt_ex:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	$0, -16(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L6
	cmpq	$0, -32(%rbp)
	jne	.L7
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$27, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	16(%rbp), %esi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	movl	$-1, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PKCS5_pbe2_set_iv_ex@PLT
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	jmp	.L9
.L6:
	call	ERR_set_mark@PLT
	movl	-20(%rbp), %eax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	EVP_PBE_find@PLT
	testl	%eax, %eax
	je	.L10
	call	ERR_clear_last_mark@PLT
	cmpq	$0, -32(%rbp)
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L11:
	movl	-20(%rbp), %edi
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	16(%rbp), %esi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	movl	%edi, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PKCS5_pbe2_set_iv_ex@PLT
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	jmp	.L9
.L10:
	call	ERR_pop_to_mark@PLT
	movq	32(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	16(%rbp), %esi
	movl	-20(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	PKCS5_pbe_set_ex@PLT
	movq	%rax, -8(%rbp)
.L9:
	cmpq	$0, -8(%rbp)
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L12:
	movq	40(%rbp), %r8
	movq	32(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	24(%rbp), %rdx
	movl	-24(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS8_set0_pbe_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
	movl	$0, %eax
	jmp	.L8
.L13:
	movq	-16(%rbp), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PKCS8_encrypt_ex, .-PKCS8_encrypt_ex
	.globl	PKCS8_encrypt
	.type	PKCS8_encrypt, @function
PKCS8_encrypt:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -8(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-36(%rbp), %r9d
	movq	-32(%rbp), %r8
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	pushq	$0
	pushq	$0
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movl	%eax, %edi
	call	PKCS8_encrypt_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	PKCS8_encrypt, .-PKCS8_encrypt
	.globl	PKCS8_set0_pbe_ex
	.type	PKCS8_set0_pbe_ex, @function
PKCS8_set0_pbe_ex:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	call	PKCS8_PRIV_KEY_INFO_it@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PKCS12_item_i2d_encrypt_ex@PLT
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	leaq	.LC0(%rip), %rax
	movl	$84, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L19
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
	jmp	.L18
.L19:
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PKCS8_set0_pbe_ex, .-PKCS8_set0_pbe_ex
	.globl	PKCS8_set0_pbe
	.type	PKCS8_set0_pbe, @function
PKCS8_set0_pbe:
.LFB523:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	PKCS8_set0_pbe_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	PKCS8_set0_pbe, .-PKCS8_set0_pbe
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"PKCS8_encrypt_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"PKCS8_set0_pbe_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
