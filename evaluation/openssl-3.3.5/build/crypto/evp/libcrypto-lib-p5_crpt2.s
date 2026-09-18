	.file	"p5_crpt2.c"
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
	.string	""
.LC1:
	.string	"PBKDF2"
.LC2:
	.string	"pass"
.LC3:
	.string	"pkcs5"
.LC4:
	.string	"salt"
.LC5:
	.string	"iter"
.LC6:
	.string	"digest"
	.text
	.globl	ossl_pkcs5_pbkdf2_hmac_ex
	.type	ossl_pkcs5_pbkdf2_hmac_ex, @function
ossl_pkcs5_pbkdf2_hmac_ex:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$408, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)
	movl	%esi, -332(%rbp)
	movq	%rdx, -344(%rbp)
	movl	%ecx, -336(%rbp)
	movl	%r8d, -348(%rbp)
	movq	%r9, -360(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -20(%rbp)
	movl	$1, -76(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, -40(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -328(%rbp)
	jne	.L6
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)
	movl	$0, -332(%rbp)
	jmp	.L7
.L6:
	cmpl	$-1, -332(%rbp)
	jne	.L7
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -332(%rbp)
.L7:
	cmpq	$0, -344(%rbp)
	jne	.L8
	cmpl	$0, -336(%rbp)
	jne	.L8
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)
.L8:
	movq	40(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L13
.L9:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	cmpq	$0, -64(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L13
.L11:
	movl	-332(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-416(%rbp), %rax
	movq	-328(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-416(%rbp), %rax
	leaq	-76(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-336(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-416(%rbp), %rax
	movq	-344(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-416(%rbp), %rax
	leaq	-348(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-416(%rbp), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-416(%rbp), %rax
	movq	-408(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-400(%rbp), %rax
	movq	-392(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-384(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-320(%rbp), %rcx
	movq	24(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	cmpl	$1, %eax
	je	.L12
	movl	$0, -20(%rbp)
.L12:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movq	$0, -72(%rbp)
	movl	-20(%rbp), %eax
.L13:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	ossl_pkcs5_pbkdf2_hmac_ex, .-ossl_pkcs5_pbkdf2_hmac_ex
	.globl	PKCS5_PBKDF2_HMAC
	.type	PKCS5_PBKDF2_HMAC, @function
PKCS5_PBKDF2_HMAC:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %r9
	movl	-28(%rbp), %r8d
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_pkcs5_pbkdf2_hmac_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	PKCS5_PBKDF2_HMAC, .-PKCS5_PBKDF2_HMAC
	.section	.rodata
.LC7:
	.string	"SHA1"
	.text
	.globl	PKCS5_PBKDF2_HMAC_SHA1
	.type	PKCS5_PBKDF2_HMAC_SHA1, @function
PKCS5_PBKDF2_HMAC_SHA1:
.LFB591:
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
	movl	%ecx, -32(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC7(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L17
	movq	-16(%rbp), %r9
	movl	-44(%rbp), %r8d
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	16(%rbp)
	movl	-48(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_pkcs5_pbkdf2_hmac_ex@PLT
	addq	$32, %rsp
	movl	%eax, -4(%rbp)
.L17:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	PKCS5_PBKDF2_HMAC_SHA1, .-PKCS5_PBKDF2_HMAC_SHA1
	.section	.rodata
.LC8:
	.string	"../crypto/evp/p5_crpt2.c"
	.text
	.globl	PKCS5_v2_PBE_keyivgen_ex
	.type	PKCS5_v2_PBE_keyivgen_ex, @function
PKCS5_v2_PBE_keyivgen_ex:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%r9, -176(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	PBE2PARAM_it@PLT
	movq	%rax, %rdx
	movq	-160(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L21
.L20:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	leaq	-120(%rbp), %rdx
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$2, %edi
	call	EVP_PBE_find_ex@PLT
	testl	%eax, %eax
	jne	.L22
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$134, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L21
.L22:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jg	.L23
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$142, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L21
.L23:
	call	ERR_set_mark@PLT
	movq	32(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L24
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_cipherbyname@PLT
	movq	%rax, -8(%rbp)
.L24:
	cmpq	$0, -8(%rbp)
	jne	.L25
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L21
.L25:
	call	ERR_pop_to_mark@PLT
	movl	16(%rbp), %edx
	movq	-8(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	%edx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	je	.L29
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_asn1_to_param@PLT
	testl	%eax, %eax
	jg	.L27
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L21
.L27:
	movq	-120(%rbp), %r10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rcx
	movl	-148(%rbp), %edx
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	16(%rbp), %edi
	pushq	%rdi
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	movl	%eax, -20(%rbp)
	jmp	.L21
.L29:
	nop
.L21:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PBE2PARAM_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	PKCS5_v2_PBE_keyivgen_ex, .-PKCS5_v2_PBE_keyivgen_ex
	.globl	PKCS5_v2_PBE_keyivgen
	.type	PKCS5_v2_PBE_keyivgen, @function
PKCS5_v2_PBE_keyivgen:
.LFB593:
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
	call	PKCS5_v2_PBE_keyivgen_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	PKCS5_v2_PBE_keyivgen, .-PKCS5_v2_PBE_keyivgen
	.section	.rodata
	.align 8
.LC9:
	.string	"assertion failed: keylen <= sizeof(key)"
	.text
	.globl	PKCS5_v2_PBKDF2_keyivgen_ex
	.type	PKCS5_v2_PBKDF2_keyivgen_ex, @function
PKCS5_v2_PBKDF2_keyivgen_ex:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	%r9, -192(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	testq	%rax, %rax
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L33:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -8(%rbp)
	cmpl	$64, -8(%rbp)
	jbe	.L35
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rax
	movl	$199, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L35:
	call	PBKDF2PARAM_it@PLT
	movq	%rax, %rdx
	movq	-176(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$206, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L36:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_key_length@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L37
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$212, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L37:
	movl	-44(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	je	.L38
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$220, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L38:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -12(%rbp)
	jmp	.L40
.L39:
	movl	$163, -12(%rbp)
.L40:
	leaq	-132(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	EVP_PBE_find@PLT
	testl	%eax, %eax
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L41:
	call	ERR_set_mark@PLT
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L42
	movl	-132(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -32(%rbp)
.L42:
	cmpq	$0, -32(%rbp)
	jne	.L43
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$240, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L43:
	call	ERR_pop_to_mark@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L44
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$246, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L44:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movl	%eax, -64(%rbp)
	movl	-8(%rbp), %edi
	movq	-32(%rbp), %r9
	movl	-64(%rbp), %r10d
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	-164(%rbp), %esi
	movq	-160(%rbp), %rax
	pushq	32(%rbp)
	pushq	24(%rbp)
	leaq	-128(%rbp), %r8
	pushq	%r8
	pushq	%rdi
	movl	%r10d, %r8d
	movq	%rax, %rdi
	call	ossl_pkcs5_pbkdf2_hmac_ex@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L47
	movl	16(%rbp), %ecx
	leaq	-128(%rbp), %rdx
	movq	-152(%rbp), %rax
	movl	%ecx, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	movl	%eax, -4(%rbp)
	jmp	.L34
.L47:
	nop
.L34:
	movl	-8(%rbp), %edx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PBKDF2PARAM_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	PKCS5_v2_PBKDF2_keyivgen_ex, .-PKCS5_v2_PBKDF2_keyivgen_ex
	.globl	PKCS5_v2_PBKDF2_keyivgen
	.type	PKCS5_v2_PBKDF2_keyivgen, @function
PKCS5_v2_PBKDF2_keyivgen:
.LFB595:
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
	call	PKCS5_v2_PBKDF2_keyivgen_ex@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	PKCS5_v2_PBKDF2_keyivgen, .-PKCS5_v2_PBKDF2_keyivgen
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"PKCS5_v2_PBE_keyivgen_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 28
__func__.0:
	.string	"PKCS5_v2_PBKDF2_keyivgen_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
