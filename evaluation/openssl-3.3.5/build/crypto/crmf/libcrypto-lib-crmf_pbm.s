	.file	"crmf_pbm.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/crmf/crmf_pbm.c"
	.text
	.globl	OSSL_CRMF_pbmp_new
	.type	OSSL_CRMF_pbmp_new, @function
OSSL_CRMF_pbmp_new:
.LFB641:
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
	movq	%rcx, -48(%rbp)
	movl	%r8d, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	call	OSSL_CRMF_PBMPARAMETER_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L13
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$54, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L14
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L5
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$57, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L5:
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L15
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	jne	.L7
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$69, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L7:
	cmpq	$99, -48(%rbp)
	ja	.L8
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L8:
	cmpq	$100000, -48(%rbp)
	jbe	.L9
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L9:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	jne	.L10
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L10:
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	testl	%eax, %eax
	jne	.L11
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L3
.L11:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$107, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	jmp	.L12
.L13:
	nop
	jmp	.L3
.L14:
	nop
	jmp	.L3
.L15:
	nop
.L3:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CRMF_PBMPARAMETER_free@PLT
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	OSSL_CRMF_pbmp_new, .-OSSL_CRMF_pbmp_new
	.section	.rodata
.LC1:
	.string	"HMAC"
	.text
	.globl	OSSL_CRMF_pbm_new
	.type	OSSL_CRMF_pbm_new, @function
OSSL_CRMF_pbm_new:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$416, %rsp
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movq	%rdx, -392(%rbp)
	movq	%rcx, -400(%rbp)
	movq	%r8, -408(%rbp)
	movq	%r9, -416(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$64, -228(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L17
	cmpq	$0, -392(%rbp)
	je	.L17
	movq	-392(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-392(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L17
	cmpq	$0, -400(%rbp)
	je	.L17
	cmpq	$0, -416(%rbp)
	jne	.L18
.L17:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$146, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L18:
	leaq	.LC0(%rip), %rax
	movl	$149, %edx
	movq	%rax, %rsi
	movl	$64, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L41
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	movq	-384(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-376(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L21
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L21:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L42
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L43
	movq	16(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L44
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L45
	leaq	-228(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L46
	movq	-392(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_get_int64@PLT
	testl	%eax, %eax
	je	.L27
	movq	-240(%rbp), %rax
	cmpq	$99, %rax
	jle	.L27
	movq	-240(%rbp), %rax
	cmpq	$100000, %rax
	jle	.L29
.L27:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$180, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L32:
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L47
	movl	-228(%rbp), %eax
	movl	%eax, %edx
	leaq	-224(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-228(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L49
.L29:
	movq	-240(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	testq	%rax, %rax
	jg	.L32
	movq	-392(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -32(%rbp)
	leaq	-36(%rbp), %rdx
	movl	-32(%rbp), %eax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %esi
	movl	$1, %edi
	call	EVP_PBE_find@PLT
	testl	%eax, %eax
	je	.L33
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rdx
	leaq	-160(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jg	.L34
.L33:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$56, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L34:
	movl	-228(%rbp), %eax
	movl	%eax, %r8d
	leaq	-224(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	movq	-384(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movq	-376(%rbp), %rax
	pushq	32(%rbp)
	pushq	$64
	pushq	-24(%rbp)
	pushq	-408(%rbp)
	pushq	-400(%rbp)
	pushq	%r8
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	EVP_Q_mac@PLT
	addq	$48, %rsp
	testq	%rax, %rax
	je	.L50
	movl	$1, -28(%rbp)
	jmp	.L19
.L41:
	nop
	jmp	.L19
.L42:
	nop
	jmp	.L19
.L43:
	nop
	jmp	.L19
.L44:
	nop
	jmp	.L19
.L45:
	nop
	jmp	.L19
.L46:
	nop
	jmp	.L19
.L47:
	nop
	jmp	.L19
.L48:
	nop
	jmp	.L19
.L49:
	nop
	jmp	.L19
.L50:
	nop
.L19:
	movl	-228(%rbp), %eax
	movl	%eax, %edx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	cmpl	$1, -28(%rbp)
	jne	.L36
	movq	24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L40
.L36:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$224, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -392(%rbp)
	je	.L38
	movq	-392(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-392(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdx
	leaq	-368(%rbp), %rax
	movl	$0, %ecx
	movl	$128, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-368(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L38:
	movl	$0, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	OSSL_CRMF_pbm_new, .-OSSL_CRMF_pbm_new
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 19
__func__.1:
	.string	"OSSL_CRMF_pbmp_new"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"OSSL_CRMF_pbm_new"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
