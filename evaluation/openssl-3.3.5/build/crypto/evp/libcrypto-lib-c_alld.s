	.file	"c_alld.c"
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
	.string	"MD5"
.LC1:
	.string	"ssl3-md5"
.LC2:
	.string	"SHA1"
.LC3:
	.string	"ssl3-sha1"
.LC4:
	.string	"RSA-SHA1"
.LC5:
	.string	"RSA-SHA1-2"
.LC6:
	.string	"RIPEMD160"
.LC7:
	.string	"ripemd"
.LC8:
	.string	"rmd160"
	.text
	.globl	openssl_add_all_digests_int
	.type	openssl_add_all_digests_int, @function
openssl_add_all_digests_int:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	EVP_md4@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_md5@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$32769, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_add@PLT
	call	EVP_md5_sha1@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_sha1@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$32769, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_add@PLT
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movl	$32769, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_add@PLT
	call	EVP_mdc2@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_ripemd160@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	leaq	.LC6(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$32769, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_add@PLT
	leaq	.LC6(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$32769, %esi
	movq	%rax, %rdi
	call	OBJ_NAME_add@PLT
	call	EVP_sha224@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_sha256@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_sha384@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_sha512@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_sha512_224@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_sha512_256@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_whirlpool@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_sm3@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_blake2b512@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_blake2s256@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_sha3_224@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_sha3_256@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_sha3_384@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_sha3_512@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_shake128@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	call	EVP_shake256@PLT
	movq	%rax, %rdi
	call	EVP_add_digest@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	openssl_add_all_digests_int, .-openssl_add_all_digests_int
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
