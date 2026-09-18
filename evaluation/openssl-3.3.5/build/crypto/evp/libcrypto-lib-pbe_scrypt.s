	.file	"pbe_scrypt.c"
	.text
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"../crypto/evp/pbe_scrypt.c"
.LC2:
	.string	"SCRYPT"
.LC3:
	.string	"pass"
.LC4:
	.string	"salt"
.LC5:
	.string	"n"
.LC6:
	.string	"r"
.LC7:
	.string	"p"
.LC8:
	.string	"maxmem_bytes"
	.text
	.globl	EVP_PBE_scrypt_ex
	.type	EVP_PBE_scrypt_ex, @function
EVP_PBE_scrypt_ex:
.LFB358:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$424, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movq	%rcx, -368(%rbp)
	movq	%r8, -376(%rbp)
	movq	%r9, -384(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -20(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-384(%rbp), %rax
	movl	$4294967295, %edx
	cmpq	%rax, %rdx
	jb	.L2
	movq	16(%rbp), %rax
	movl	$4294967295, %edx
	cmpq	%rax, %rdx
	jnb	.L3
.L2:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$187, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L10
.L3:
	cmpq	$0, -344(%rbp)
	jne	.L5
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	$0, -352(%rbp)
.L5:
	cmpq	$0, -360(%rbp)
	jne	.L6
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	$0, -368(%rbp)
.L6:
	movq	24(%rbp), %rax
	testq	%rax, %rax
	jne	.L7
	movq	$33554432, 24(%rbp)
.L7:
	movq	56(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	cmpq	$0, -56(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L10
.L8:
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-432(%rbp), %rax
	movq	-352(%rbp), %rcx
	movq	-344(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-432(%rbp), %rax
	movq	-368(%rbp), %rcx
	movq	-360(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-432(%rbp), %rax
	leaq	-376(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-432(%rbp), %rax
	leaq	-384(%rbp), %rdx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-432(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	leaq	16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-432(%rbp), %rax
	leaq	24(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint64@PLT
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-400(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-336(%rbp), %rcx
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	cmpl	$1, %eax
	je	.L9
	movl	$0, -20(%rbp)
.L9:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-20(%rbp), %eax
.L10:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	EVP_PBE_scrypt_ex, .-EVP_PBE_scrypt_ex
	.globl	EVP_PBE_scrypt
	.type	EVP_PBE_scrypt, @function
EVP_PBE_scrypt:
.LFB359:
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
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	40(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PBE_scrypt_ex@PLT
	addq	$48, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	EVP_PBE_scrypt, .-EVP_PBE_scrypt
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"EVP_PBE_scrypt_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
