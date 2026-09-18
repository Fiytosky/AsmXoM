	.file	"p5_crpt.c"
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
	.globl	PKCS5_PBE_add
	.type	PKCS5_PBE_add, @function
PKCS5_PBE_add:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	PKCS5_PBE_add, .-PKCS5_PBE_add
	.section	.rodata
.LC0:
	.string	"../crypto/evp/p5_crpt.c"
.LC1:
	.string	"PBKDF1"
.LC2:
	.string	"pass"
.LC3:
	.string	"salt"
.LC4:
	.string	"iter"
.LC5:
	.string	"digest"
	.text
	.globl	PKCS5_PBE_keyivgen_ex
	.type	PKCS5_PBE_keyivgen_ex, @function
PKCS5_PBE_keyivgen_ex:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$536, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -456(%rbp)
	movq	%rsi, -464(%rbp)
	movl	%edx, -468(%rbp)
	movq	%rcx, -480(%rbp)
	movq	%r8, -488(%rbp)
	movq	%r9, -496(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -480(%rbp)
	je	.L7
	movq	-480(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	jne	.L7
	movq	-480(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L8
.L7:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L8:
	call	PBEPARAM_it@PLT
	movq	%rax, %rdx
	movq	-480(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L10
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$53, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L10:
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	js	.L11
	cmpl	$16, -60(%rbp)
	jle	.L12
.L11:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$194, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L13
.L12:
	movq	-488(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_key_length@PLT
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	js	.L14
	cmpl	$64, -64(%rbp)
	jle	.L15
.L14:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L13
.L15:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movl	$1, -244(%rbp)
	jmp	.L17
.L16:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movl	%eax, -244(%rbp)
.L17:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -76(%rbp)
	cmpq	$0, -464(%rbp)
	jne	.L18
	movl	$0, -468(%rbp)
	jmp	.L19
.L18:
	cmpl	$-1, -468(%rbp)
	jne	.L19
	movq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -468(%rbp)
.L19:
	movq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	js	.L25
	movq	32(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	cmpq	$0, -32(%rbp)
	je	.L26
	movl	-468(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-544(%rbp), %rax
	movq	-464(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-544(%rbp), %rax
	movq	-536(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-512(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-76(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-544(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-544(%rbp), %rax
	movq	-536(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-512(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-544(%rbp), %rax
	leaq	-244(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-544(%rbp), %rax
	movq	-536(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-512(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-544(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-544(%rbp), %rax
	movq	-536(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-512(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-544(%rbp), %rax
	movq	-536(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-512(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-448(%rbp), %rcx
	leaq	-160(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	cmpl	$1, %eax
	jne	.L27
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-160(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movl	$16, %eax
	subl	-60(%rbp), %eax
	cltq
	leaq	-160(%rbp), %rcx
	addq	%rax, %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	16(%rbp), %edi
	leaq	-240(%rbp), %rcx
	leaq	-224(%rbp), %rdx
	movq	-488(%rbp), %rsi
	movq	-456(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	je	.L28
	leaq	-160(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-224(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	-240(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	$1, -20(%rbp)
	jmp	.L13
.L25:
	nop
	jmp	.L13
.L26:
	nop
	jmp	.L13
.L27:
	nop
	jmp	.L13
.L28:
	nop
.L13:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PBEPARAM_free@PLT
	movl	-20(%rbp), %eax
.L24:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	PKCS5_PBE_keyivgen_ex, .-PKCS5_PBE_keyivgen_ex
	.globl	PKCS5_PBE_keyivgen
	.type	PKCS5_PBE_keyivgen, @function
PKCS5_PBE_keyivgen:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	PKCS5_PBE_keyivgen_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	PKCS5_PBE_keyivgen, .-PKCS5_PBE_keyivgen
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"PKCS5_PBE_keyivgen_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
