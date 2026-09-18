	.file	"evp_lib.c"
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
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.globl	EVP_CIPHER_param_to_asn1
	.type	EVP_CIPHER_param_to_asn1, @function
EVP_CIPHER_param_to_asn1:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_cipher_param_to_asn1_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	EVP_CIPHER_param_to_asn1, .-EVP_CIPHER_param_to_asn1
	.globl	EVP_CIPHER_asn1_to_param
	.type	EVP_CIPHER_asn1_to_param, @function
EVP_CIPHER_asn1_to_param:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_cipher_asn1_to_param_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	EVP_CIPHER_asn1_to_param, .-EVP_CIPHER_asn1_to_param
	.globl	EVP_CIPHER_get_asn1_iv
	.type	EVP_CIPHER_get_asn1_iv, @function
EVP_CIPHER_get_asn1_iv:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -8(%rbp)
	cmpl	$16, -8(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L12
	movl	$-1, %eax
	jmp	.L16
.L12:
	movl	-8(%rbp), %edx
	leaq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_TYPE_get_octetstring@PLT
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	je	.L14
	movl	$-1, %eax
	jmp	.L16
.L14:
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$-1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_CipherInit_ex@PLT
	testl	%eax, %eax
	jne	.L11
	movl	$-1, %eax
	jmp	.L16
.L11:
	movl	-4(%rbp), %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	EVP_CIPHER_get_asn1_iv, .-EVP_CIPHER_get_asn1_iv
	.section	.rodata
.LC0:
	.string	"../crypto/evp/evp_lib.c"
	.align 8
.LC1:
	.string	"assertion failed: j <= sizeof(c->iv)"
	.text
	.globl	EVP_CIPHER_set_asn1_iv
	.type	EVP_CIPHER_set_asn1_iv, @function
EVP_CIPHER_set_asn1_iv:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L18
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_original_iv@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_iv_length@PLT
	movl	%eax, -20(%rbp)
	cmpl	$16, -20(%rbp)
	jbe	.L19
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$74, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L19:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_TYPE_set_octetstring@PLT
	movl	%eax, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	EVP_CIPHER_set_asn1_iv, .-EVP_CIPHER_set_asn1_iv
	.section	.rodata
.LC2:
	.string	"id-smime-alg-CMS3DESwrap"
.LC3:
	.string	"alg_id_param"
	.text
	.globl	evp_cipher_param_to_asn1_ex
	.type	evp_cipher_param_to_asn1_ex, @function
evp_cipher_param_to_asn1_ex:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movl	$-1, -20(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L41
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-32(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -20(%rbp)
	jmp	.L24
.L25:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$16777216, %eax
	testq	%rax, %rax
	jne	.L26
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65539, %eax
	je	.L27
	cmpl	$65539, %eax
	jg	.L28
	cmpl	$65538, %eax
	je	.L29
	cmpl	$65538, %eax
	jg	.L28
	cmpl	$65537, %eax
	je	.L27
	cmpl	$65537, %eax
	jg	.L28
	cmpl	$6, %eax
	je	.L30
	cmpl	$7, %eax
	je	.L27
	jmp	.L28
.L29:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_is_a@PLT
	testl	%eax, %eax
	je	.L31
	movq	-192(%rbp), %rax
	movl	$0, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
.L31:
	movl	$1, -20(%rbp)
	jmp	.L24
.L30:
	movq	-192(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_cipher_set_asn1_aead_params@PLT
	movl	%eax, -20(%rbp)
	jmp	.L24
.L27:
	movl	$-2, -20(%rbp)
	jmp	.L24
.L28:
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_set_asn1_iv@PLT
	movl	%eax, -20(%rbp)
	jmp	.L24
.L26:
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L33
	leaq	-176(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-256(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_params@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L24
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	je	.L24
	movq	-144(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$148, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L24
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_set_all_unmodified@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_params@PLT
	testl	%eax, %eax
	je	.L36
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L36
	movq	-144(%rbp), %rax
	movq	%rax, %rdx
	leaq	-56(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_ASN1_TYPE@PLT
	testq	%rax, %rax
	je	.L36
	movl	$1, -20(%rbp)
.L36:
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$159, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L24
.L33:
	movl	$-2, -20(%rbp)
	jmp	.L24
.L41:
	nop
	jmp	.L24
.L42:
	nop
.L24:
	cmpl	$-2, -20(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$167, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L37:
	cmpl	$0, -20(%rbp)
	jg	.L38
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L38:
	cmpl	$-1, -20(%rbp)
	jge	.L39
	movl	$-1, -20(%rbp)
.L39:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	evp_cipher_param_to_asn1_ex, .-evp_cipher_param_to_asn1_ex
	.globl	evp_cipher_asn1_to_param_ex
	.type	evp_cipher_asn1_to_param_ex, @function
evp_cipher_asn1_to_param_ex:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movl	$-1, -20(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L62
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-32(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -20(%rbp)
	jmp	.L46
.L47:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$16777216, %eax
	testq	%rax, %rax
	jne	.L48
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_mode@PLT
	cmpl	$65539, %eax
	je	.L49
	cmpl	$65539, %eax
	jg	.L50
	cmpl	$65538, %eax
	je	.L51
	cmpl	$65538, %eax
	jg	.L50
	cmpl	$65537, %eax
	je	.L49
	cmpl	$65537, %eax
	jg	.L50
	cmpl	$6, %eax
	je	.L52
	cmpl	$7, %eax
	je	.L49
	jmp	.L50
.L51:
	movl	$1, -20(%rbp)
	jmp	.L46
.L52:
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_cipher_get_asn1_aead_params@PLT
	movl	%eax, -20(%rbp)
	jmp	.L46
.L49:
	movl	$-2, -20(%rbp)
	jmp	.L46
.L50:
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_get_asn1_iv@PLT
	testl	%eax, %eax
	js	.L54
	movl	$1, -20(%rbp)
	jmp	.L46
.L54:
	movl	$-1, -20(%rbp)
	jmp	.L46
.L48:
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L55
	leaq	-176(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
	movl	$-1, -44(%rbp)
	leaq	-56(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_TYPE@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L46
	movl	-44(%rbp), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-256(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-256(%rbp), %rax
	movq	-248(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-224(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_params@PLT
	testl	%eax, %eax
	je	.L57
	movl	$1, -20(%rbp)
.L57:
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$235, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L46
.L55:
	movl	$-2, -20(%rbp)
	jmp	.L46
.L62:
	nop
.L46:
	cmpl	$-2, -20(%rbp)
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$243, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L59
.L58:
	cmpl	$0, -20(%rbp)
	jg	.L59
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$245, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L59:
	cmpl	$-1, -20(%rbp)
	jge	.L60
	movl	$-1, -20(%rbp)
.L60:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	evp_cipher_asn1_to_param_ex, .-evp_cipher_asn1_to_param_ex
	.globl	evp_cipher_get_asn1_aead_params
	.type	evp_cipher_get_asn1_aead_params, @function
evp_cipher_get_asn1_aead_params:
.LFB513:
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
	cmpq	$0, -48(%rbp)
	je	.L64
	cmpq	$0, -56(%rbp)
	jne	.L65
.L64:
	movl	$0, %eax
	jmp	.L68
.L65:
	leaq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$16, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_asn1_type_get_octetstring_int@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L67
	movl	$-1, %eax
	jmp	.L68
.L67:
	movl	-4(%rbp), %ecx
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_asn1_type_get_octetstring_int@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	-4(%rbp), %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	evp_cipher_get_asn1_aead_params, .-evp_cipher_get_asn1_aead_params
	.globl	evp_cipher_set_asn1_aead_params
	.type	evp_cipher_set_asn1_aead_params, @function
evp_cipher_set_asn1_aead_params:
.LFB514:
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
	cmpq	$0, -16(%rbp)
	je	.L70
	cmpq	$0, -24(%rbp)
	jne	.L71
.L70:
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_asn1_type_set_octetstring_int@PLT
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	evp_cipher_set_asn1_aead_params, .-evp_cipher_set_asn1_aead_params
	.globl	EVP_CIPHER_get_type
	.type	EVP_CIPHER_get_type, @function
EVP_CIPHER_get_type:
.LFB515:
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
	call	EVP_CIPHER_get_nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$659, -4(%rbp)
	jg	.L74
	cmpl	$658, -4(%rbp)
	jge	.L75
	cmpl	$657, -4(%rbp)
	jg	.L74
	cmpl	$656, -4(%rbp)
	jge	.L76
	cmpl	$655, -4(%rbp)
	je	.L77
	cmpl	$655, -4(%rbp)
	jg	.L74
	cmpl	$654, -4(%rbp)
	je	.L78
	cmpl	$654, -4(%rbp)
	jg	.L74
	cmpl	$653, -4(%rbp)
	je	.L79
	cmpl	$653, -4(%rbp)
	jg	.L74
	cmpl	$652, -4(%rbp)
	je	.L77
	cmpl	$652, -4(%rbp)
	jg	.L74
	cmpl	$651, -4(%rbp)
	je	.L78
	cmpl	$651, -4(%rbp)
	jg	.L74
	cmpl	$650, -4(%rbp)
	je	.L79
	cmpl	$650, -4(%rbp)
	jg	.L74
	cmpl	$429, -4(%rbp)
	je	.L77
	cmpl	$429, -4(%rbp)
	jg	.L74
	cmpl	$425, -4(%rbp)
	je	.L78
	cmpl	$425, -4(%rbp)
	jg	.L74
	cmpl	$421, -4(%rbp)
	je	.L79
	cmpl	$421, -4(%rbp)
	jg	.L74
	cmpl	$166, -4(%rbp)
	je	.L80
	cmpl	$166, -4(%rbp)
	jg	.L74
	cmpl	$98, -4(%rbp)
	je	.L80
	cmpl	$98, -4(%rbp)
	jg	.L74
	cmpl	$97, -4(%rbp)
	je	.L81
	cmpl	$97, -4(%rbp)
	jg	.L74
	cmpl	$61, -4(%rbp)
	je	.L75
	cmpl	$61, -4(%rbp)
	jg	.L74
	cmpl	$37, -4(%rbp)
	je	.L80
	cmpl	$37, -4(%rbp)
	jg	.L74
	cmpl	$5, -4(%rbp)
	je	.L81
	cmpl	$30, -4(%rbp)
	je	.L76
	jmp	.L74
.L80:
	movl	$37, %eax
	jmp	.L82
.L81:
	movl	$5, %eax
	jmp	.L82
.L79:
	movl	$421, %eax
	jmp	.L82
.L78:
	movl	$425, %eax
	jmp	.L82
.L77:
	movl	$429, %eax
	jmp	.L82
.L76:
	movl	$30, %eax
	jmp	.L82
.L75:
	movl	$30, %eax
	jmp	.L82
.L74:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_get0_data@PLT
	testq	%rax, %rax
	jne	.L83
	movl	$0, -4(%rbp)
.L83:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movl	-4(%rbp), %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	EVP_CIPHER_get_type, .-EVP_CIPHER_get_type
	.section	.rodata
.LC4:
	.string	"blocksize"
.LC5:
	.string	"ivlen"
.LC6:
	.string	"keylen"
.LC7:
	.string	"mode"
.LC8:
	.string	"aead"
.LC9:
	.string	"custom-iv"
.LC10:
	.string	"cts"
.LC11:
	.string	"tls-multi"
.LC12:
	.string	"has-randkey"
	.text
	.globl	evp_cipher_cache_constants
	.type	evp_cipher_cache_constants, @function
evp_cipher_cache_constants:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$528, %rsp
	movq	%rdi, -472(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	leaq	-528(%rbp), %rax
	leaq	-40(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, -464(%rbp)
	movq	%rdx, -456(%rbp)
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rdx
	movq	%rax, -448(%rbp)
	movq	%rdx, -440(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -432(%rbp)
	leaq	-528(%rbp), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, -424(%rbp)
	movq	%rdx, -416(%rbp)
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rdx
	movq	%rax, -408(%rbp)
	movq	%rdx, -400(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -392(%rbp)
	leaq	-528(%rbp), %rax
	leaq	-48(%rbp), %rdx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, -384(%rbp)
	movq	%rdx, -376(%rbp)
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rdx
	movq	%rax, -368(%rbp)
	movq	%rdx, -360(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -352(%rbp)
	leaq	-528(%rbp), %rax
	leaq	-52(%rbp), %rdx
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, -344(%rbp)
	movq	%rdx, -336(%rbp)
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rdx
	movq	%rax, -328(%rbp)
	movq	%rdx, -320(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -312(%rbp)
	leaq	-528(%rbp), %rax
	leaq	-8(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -272(%rbp)
	leaq	-528(%rbp), %rax
	leaq	-12(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, -264(%rbp)
	movq	%rdx, -256(%rbp)
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rdx
	movq	%rax, -248(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -232(%rbp)
	leaq	-528(%rbp), %rax
	leaq	-16(%rbp), %rdx
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-528(%rbp), %rax
	leaq	-20(%rbp), %rdx
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rdx
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-528(%rbp), %rax
	leaq	-24(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-528(%rbp), %rax
	movq	-520(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-512(%rbp), %rax
	movq	-504(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-464(%rbp), %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_do_ciph_getparams@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L85
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-472(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-472(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-48(%rbp), %rax
	movl	%eax, %edx
	movq	-472(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	movq	-472(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	je	.L86
	movq	-472(%rbp), %rax
	movq	16(%rax), %rax
	orq	$2097152, %rax
	movq	%rax, %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, 16(%rax)
.L86:
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L87
	movq	-472(%rbp), %rax
	movq	16(%rax), %rax
	orq	$16, %rax
	movq	%rax, %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, 16(%rax)
.L87:
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.L88
	movq	-472(%rbp), %rax
	movq	16(%rax), %rax
	orb	$64, %ah
	movq	%rax, %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, 16(%rax)
.L88:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L89
	movq	-472(%rbp), %rax
	movq	16(%rax), %rax
	orq	$4194304, %rax
	movq	%rax, %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, 16(%rax)
.L89:
	movq	-472(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-472(%rbp), %rax
	movq	16(%rax), %rax
	orq	$1048576, %rax
	movq	%rax, %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, 16(%rax)
.L90:
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L91
	movq	-472(%rbp), %rax
	movq	16(%rax), %rax
	orb	$2, %ah
	movq	%rax, %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, 16(%rax)
.L91:
	movq	-472(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_gettable_ctx_params@PLT
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OSSL_PARAM_locate_const@PLT
	testq	%rax, %rax
	je	.L85
	movq	-472(%rbp), %rax
	movq	16(%rax), %rax
	orq	$16777216, %rax
	movq	%rax, %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, 16(%rax)
.L85:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	evp_cipher_cache_constants, .-evp_cipher_cache_constants
	.globl	EVP_CIPHER_get_block_size
	.type	EVP_CIPHER_get_block_size, @function
EVP_CIPHER_get_block_size:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L94
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	jmp	.L96
.L94:
	movl	$0, %eax
.L96:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	EVP_CIPHER_get_block_size, .-EVP_CIPHER_get_block_size
	.globl	EVP_CIPHER_CTX_get_block_size
	.type	EVP_CIPHER_CTX_get_block_size, @function
EVP_CIPHER_CTX_get_block_size:
.LFB518:
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
	call	EVP_CIPHER_get_block_size@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	EVP_CIPHER_CTX_get_block_size, .-EVP_CIPHER_CTX_get_block_size
	.globl	EVP_CIPHER_impl_ctx_size
	.type	EVP_CIPHER_impl_ctx_size, @function
EVP_CIPHER_impl_ctx_size:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	EVP_CIPHER_impl_ctx_size, .-EVP_CIPHER_impl_ctx_size
	.globl	EVP_Cipher
	.type	EVP_Cipher, @function
EVP_Cipher:
.LFB520:
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
	movl	%ecx, -60(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L102
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L103
.L102:
	movl	$0, %eax
	jmp	.L104
.L103:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movl	$-1, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get_block_size@PLT
	cltq
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L106
	movl	$0, %eax
	jmp	.L104
.L106:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L108
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	176(%rax), %r10
	movl	-60(%rbp), %r8d
	movl	-60(%rbp), %edx
	cmpq	$1, -16(%rbp)
	je	.L109
	movq	-16(%rbp), %rax
	jmp	.L110
.L109:
	movl	$0, %eax
.L110:
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	-56(%rbp), %rdi
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L111
	movq	-24(%rbp), %rax
	movl	%eax, -4(%rbp)
	jmp	.L112
.L111:
	movl	$-1, -4(%rbp)
	jmp	.L112
.L108:
	cmpq	$0, -56(%rbp)
	je	.L113
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	160(%rax), %r10
	movl	-60(%rbp), %r8d
	movl	-60(%rbp), %edx
	cmpq	$1, -16(%rbp)
	je	.L114
	movq	-16(%rbp), %rax
	jmp	.L115
.L114:
	movl	$0, %eax
.L115:
	leaq	(%rax,%rdx), %rcx
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	-56(%rbp), %rdi
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movl	%eax, -4(%rbp)
	jmp	.L112
.L113:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	168(%rax), %r8
	cmpq	$1, -16(%rbp)
	je	.L116
	movq	-16(%rbp), %rax
	jmp	.L117
.L116:
	movl	$0, %eax
.L117:
	movq	-40(%rbp), %rdx
	movq	168(%rdx), %rdi
	leaq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rax, %rcx
	call	*%r8
	movl	%eax, -4(%rbp)
.L112:
	movl	-4(%rbp), %eax
	jmp	.L104
.L105:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %r8
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	EVP_Cipher, .-EVP_Cipher
	.globl	EVP_CIPHER_CTX_cipher
	.type	EVP_CIPHER_CTX_cipher, @function
EVP_CIPHER_CTX_cipher:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L119
	movl	$0, %eax
	jmp	.L120
.L119:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L120:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	EVP_CIPHER_CTX_cipher, .-EVP_CIPHER_CTX_cipher
	.globl	EVP_CIPHER_CTX_get0_cipher
	.type	EVP_CIPHER_CTX_get0_cipher, @function
EVP_CIPHER_CTX_get0_cipher:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L122
	movl	$0, %eax
	jmp	.L123
.L122:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L123:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	EVP_CIPHER_CTX_get0_cipher, .-EVP_CIPHER_CTX_get0_cipher
	.globl	EVP_CIPHER_CTX_get1_cipher
	.type	EVP_CIPHER_CTX_get1_cipher, @function
EVP_CIPHER_CTX_get1_cipher:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L125
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L126
.L125:
	movl	$0, %eax
	jmp	.L127
.L126:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_up_ref@PLT
	testl	%eax, %eax
	jne	.L128
	movl	$0, %eax
	jmp	.L127
.L128:
	movq	-8(%rbp), %rax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	EVP_CIPHER_CTX_get1_cipher, .-EVP_CIPHER_CTX_get1_cipher
	.globl	EVP_CIPHER_CTX_is_encrypting
	.type	EVP_CIPHER_CTX_is_encrypting, @function
EVP_CIPHER_CTX_is_encrypting:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	EVP_CIPHER_CTX_is_encrypting, .-EVP_CIPHER_CTX_is_encrypting
	.globl	EVP_CIPHER_get_flags
	.type	EVP_CIPHER_get_flags, @function
EVP_CIPHER_get_flags:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L132
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L134
.L132:
	movl	$0, %eax
.L134:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	EVP_CIPHER_get_flags, .-EVP_CIPHER_get_flags
	.globl	EVP_CIPHER_CTX_get_app_data
	.type	EVP_CIPHER_CTX_get_app_data, @function
EVP_CIPHER_CTX_get_app_data:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	EVP_CIPHER_CTX_get_app_data, .-EVP_CIPHER_CTX_get_app_data
	.globl	EVP_CIPHER_CTX_set_app_data
	.type	EVP_CIPHER_CTX_set_app_data, @function
EVP_CIPHER_CTX_set_app_data:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	EVP_CIPHER_CTX_set_app_data, .-EVP_CIPHER_CTX_set_app_data
	.globl	EVP_CIPHER_CTX_get_cipher_data
	.type	EVP_CIPHER_CTX_get_cipher_data, @function
EVP_CIPHER_CTX_get_cipher_data:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	EVP_CIPHER_CTX_get_cipher_data, .-EVP_CIPHER_CTX_get_cipher_data
	.globl	EVP_CIPHER_CTX_set_cipher_data
	.type	EVP_CIPHER_CTX_set_cipher_data, @function
EVP_CIPHER_CTX_set_cipher_data:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 120(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	EVP_CIPHER_CTX_set_cipher_data, .-EVP_CIPHER_CTX_set_cipher_data
	.globl	EVP_CIPHER_get_iv_length
	.type	EVP_CIPHER_get_iv_length, @function
EVP_CIPHER_get_iv_length:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L143
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	jmp	.L145
.L143:
	movl	$0, %eax
.L145:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	EVP_CIPHER_get_iv_length, .-EVP_CIPHER_get_iv_length
	.globl	EVP_CIPHER_CTX_get_iv_length
	.type	EVP_CIPHER_CTX_get_iv_length, @function
EVP_CIPHER_CTX_get_iv_length:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L147
	movl	$0, %eax
	jmp	.L148
.L147:
	movq	-104(%rbp), %rax
	movl	108(%rax), %eax
	testl	%eax, %eax
	jns	.L149
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_iv_length@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L150
	leaq	-160(%rbp), %rax
	leaq	-16(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_do_ciph_ctx_getparams@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L151
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L152
	leaq	-8(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L152
	movl	$-1, %eax
	jmp	.L148
.L151:
	cmpl	$-1, -4(%rbp)
	je	.L152
	movl	$-1, %eax
	jmp	.L148
.L150:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$2048, %eax
	testq	%rax, %rax
	je	.L152
	leaq	-8(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$37, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L152
	movl	$-1, %eax
	jmp	.L148
.L152:
	movl	-8(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, 108(%rax)
.L149:
	movq	-104(%rbp), %rax
	movl	108(%rax), %eax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	EVP_CIPHER_CTX_get_iv_length, .-EVP_CIPHER_CTX_get_iv_length
	.section	.rodata
.LC13:
	.string	"taglen"
	.text
	.globl	EVP_CIPHER_CTX_get_tag_length
	.type	EVP_CIPHER_CTX_get_tag_length, @function
EVP_CIPHER_CTX_get_tag_length:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	$0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-16(%rbp), %rdx
	leaq	.LC13(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_do_ciph_ctx_getparams@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L155
	movq	-16(%rbp), %rax
	jmp	.L157
.L155:
	movl	$0, %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	EVP_CIPHER_CTX_get_tag_length, .-EVP_CIPHER_CTX_get_tag_length
	.section	.rodata
.LC14:
	.string	"iv"
	.text
	.globl	EVP_CIPHER_CTX_original_iv
	.type	EVP_CIPHER_CTX_original_iv, @function
EVP_CIPHER_CTX_original_iv:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-16(%rbp), %rdx
	leaq	.LC14(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_ptr@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_do_ciph_ctx_getparams@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L159
	movq	-16(%rbp), %rax
	jmp	.L161
.L159:
	movl	$0, %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	EVP_CIPHER_CTX_original_iv, .-EVP_CIPHER_CTX_original_iv
	.section	.rodata
.LC15:
	.string	"updated-iv"
	.text
	.globl	EVP_CIPHER_CTX_iv
	.type	EVP_CIPHER_CTX_iv, @function
EVP_CIPHER_CTX_iv:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-16(%rbp), %rdx
	leaq	.LC15(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_ptr@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_do_ciph_ctx_getparams@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L163
	movq	-16(%rbp), %rax
	jmp	.L165
.L163:
	movl	$0, %eax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	EVP_CIPHER_CTX_iv, .-EVP_CIPHER_CTX_iv
	.globl	EVP_CIPHER_CTX_iv_noconst
	.type	EVP_CIPHER_CTX_iv_noconst, @function
EVP_CIPHER_CTX_iv_noconst:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -16(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-16(%rbp), %rdx
	leaq	.LC15(%rip), %rsi
	movl	$16, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_ptr@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_do_ciph_ctx_getparams@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L167
	movq	-16(%rbp), %rax
	jmp	.L169
.L167:
	movl	$0, %eax
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	EVP_CIPHER_CTX_iv_noconst, .-EVP_CIPHER_CTX_iv_noconst
	.globl	EVP_CIPHER_CTX_get_updated_iv
	.type	EVP_CIPHER_CTX_get_updated_iv, @function
EVP_CIPHER_CTX_get_updated_iv:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm0, -16(%rbp)
	leaq	-160(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC15(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_do_ciph_ctx_getparams@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	EVP_CIPHER_CTX_get_updated_iv, .-EVP_CIPHER_CTX_get_updated_iv
	.globl	EVP_CIPHER_CTX_get_original_iv
	.type	EVP_CIPHER_CTX_get_original_iv, @function
EVP_CIPHER_CTX_get_original_iv:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm0, -16(%rbp)
	leaq	-160(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_do_ciph_ctx_getparams@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	EVP_CIPHER_CTX_get_original_iv, .-EVP_CIPHER_CTX_get_original_iv
	.globl	EVP_CIPHER_CTX_buf_noconst
	.type	EVP_CIPHER_CTX_buf_noconst, @function
EVP_CIPHER_CTX_buf_noconst:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$56, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	EVP_CIPHER_CTX_buf_noconst, .-EVP_CIPHER_CTX_buf_noconst
	.section	.rodata
.LC16:
	.string	"num"
	.text
	.globl	EVP_CIPHER_CTX_get_num
	.type	EVP_CIPHER_CTX_get_num, @function
EVP_CIPHER_CTX_get_num:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	88(%rax), %eax
	movl	%eax, -8(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-8(%rbp), %rdx
	leaq	.LC16(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_do_ciph_ctx_getparams@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L177
	movl	-8(%rbp), %eax
	jmp	.L179
.L177:
	movl	$-1, %eax
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	EVP_CIPHER_CTX_get_num, .-EVP_CIPHER_CTX_get_num
	.globl	EVP_CIPHER_CTX_set_num
	.type	EVP_CIPHER_CTX_set_num, @function
EVP_CIPHER_CTX_set_num:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -8(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-8(%rbp), %rdx
	leaq	.LC16(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_do_ciph_ctx_setparams@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L181
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 88(%rax)
.L181:
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	EVP_CIPHER_CTX_set_num, .-EVP_CIPHER_CTX_set_num
	.globl	EVP_CIPHER_get_key_length
	.type	EVP_CIPHER_get_key_length, @function
EVP_CIPHER_get_key_length:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	EVP_CIPHER_get_key_length, .-EVP_CIPHER_get_key_length
	.globl	EVP_CIPHER_CTX_get_key_length
	.type	EVP_CIPHER_CTX_get_key_length, @function
EVP_CIPHER_CTX_get_key_length:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	jg	.L186
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L186
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-16(%rbp), %rdx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	evp_do_ciph_ctx_getparams@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L187
	movl	$-1, %eax
	jmp	.L190
.L187:
	movq	-104(%rbp), %rax
	leaq	104(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L189
	movl	$-1, %eax
	jmp	.L190
.L189:
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 104(%rax)
.L186:
	movq	-104(%rbp), %rax
	movl	104(%rax), %eax
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	EVP_CIPHER_CTX_get_key_length, .-EVP_CIPHER_CTX_get_key_length
	.globl	EVP_CIPHER_get_nid
	.type	EVP_CIPHER_get_nid, @function
EVP_CIPHER_get_nid:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L192
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L194
.L192:
	movl	$0, %eax
.L194:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	EVP_CIPHER_get_nid, .-EVP_CIPHER_get_nid
	.globl	EVP_CIPHER_CTX_get_nid
	.type	EVP_CIPHER_CTX_get_nid, @function
EVP_CIPHER_CTX_get_nid:
.LFB544:
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
	call	EVP_CIPHER_get_nid@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	EVP_CIPHER_CTX_get_nid, .-EVP_CIPHER_CTX_get_nid
	.globl	EVP_CIPHER_is_a
	.type	EVP_CIPHER_is_a, @function
EVP_CIPHER_is_a:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L198
	movl	$0, %eax
	jmp	.L199
.L198:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L200
	movq	-8(%rbp), %rax
	movl	96(%rax), %esi
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	evp_is_a@PLT
	jmp	.L199
.L200:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get0_name@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	call	evp_is_a@PLT
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	EVP_CIPHER_is_a, .-EVP_CIPHER_is_a
	.globl	evp_cipher_get_number
	.type	evp_cipher_get_number, @function
evp_cipher_get_number:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	evp_cipher_get_number, .-evp_cipher_get_number
	.globl	EVP_CIPHER_get0_name
	.type	EVP_CIPHER_get0_name, @function
EVP_CIPHER_get0_name:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L204
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	jmp	.L205
.L204:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
.L205:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	EVP_CIPHER_get0_name, .-EVP_CIPHER_get0_name
	.globl	EVP_CIPHER_get0_description
	.type	EVP_CIPHER_get0_description, @function
EVP_CIPHER_get0_description:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L207
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	jmp	.L208
.L207:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_get_nid@PLT
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	EVP_CIPHER_get0_description, .-EVP_CIPHER_get0_description
	.globl	EVP_CIPHER_names_do_all
	.type	EVP_CIPHER_names_do_all, @function
EVP_CIPHER_names_do_all:
.LFB549:
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
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L210
	movq	-8(%rbp), %rax
	movl	96(%rax), %esi
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	evp_names_do_all@PLT
	jmp	.L211
.L210:
	movl	$1, %eax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	EVP_CIPHER_names_do_all, .-EVP_CIPHER_names_do_all
	.globl	EVP_CIPHER_get0_provider
	.type	EVP_CIPHER_get0_provider, @function
EVP_CIPHER_get0_provider:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	EVP_CIPHER_get0_provider, .-EVP_CIPHER_get0_provider
	.globl	EVP_CIPHER_get_mode
	.type	EVP_CIPHER_get_mode, @function
EVP_CIPHER_get_mode:
.LFB551:
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
	call	EVP_CIPHER_get_flags@PLT
	andl	$983047, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	EVP_CIPHER_get_mode, .-EVP_CIPHER_get_mode
	.globl	EVP_MD_is_a
	.type	EVP_MD_is_a, @function
EVP_MD_is_a:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L217
	movl	$0, %eax
	jmp	.L218
.L217:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L219
	movq	-8(%rbp), %rax
	movl	88(%rax), %esi
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	evp_is_a@PLT
	jmp	.L218
.L219:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %esi
	movl	$0, %edi
	call	evp_is_a@PLT
.L218:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	EVP_MD_is_a, .-EVP_MD_is_a
	.globl	evp_md_get_number
	.type	evp_md_get_number, @function
evp_md_get_number:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	88(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	evp_md_get_number, .-evp_md_get_number
	.globl	EVP_MD_get0_description
	.type	EVP_MD_get0_description, @function
EVP_MD_get0_description:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L223
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	jmp	.L224
.L223:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	EVP_MD_get0_description, .-EVP_MD_get0_description
	.globl	EVP_MD_get0_name
	.type	EVP_MD_get0_name, @function
EVP_MD_get0_name:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L226
	movl	$0, %eax
	jmp	.L227
.L226:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L228
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	jmp	.L227
.L228:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	EVP_MD_get0_name, .-EVP_MD_get0_name
	.globl	EVP_MD_names_do_all
	.type	EVP_MD_names_do_all, @function
EVP_MD_names_do_all:
.LFB556:
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
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L230
	movq	-8(%rbp), %rax
	movl	88(%rax), %esi
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	evp_names_do_all@PLT
	jmp	.L231
.L230:
	movl	$1, %eax
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	EVP_MD_names_do_all, .-EVP_MD_names_do_all
	.globl	EVP_MD_get0_provider
	.type	EVP_MD_get0_provider, @function
EVP_MD_get0_provider:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	EVP_MD_get0_provider, .-EVP_MD_get0_provider
	.globl	EVP_MD_get_type
	.type	EVP_MD_get_type, @function
EVP_MD_get_type:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	EVP_MD_get_type, .-EVP_MD_get_type
	.globl	EVP_MD_get_pkey_type
	.type	EVP_MD_get_pkey_type, @function
EVP_MD_get_pkey_type:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	EVP_MD_get_pkey_type, .-EVP_MD_get_pkey_type
	.globl	EVP_MD_get_block_size
	.type	EVP_MD_get_block_size, @function
EVP_MD_get_block_size:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L239
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$829, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L240
.L239:
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	EVP_MD_get_block_size, .-EVP_MD_get_block_size
	.globl	EVP_MD_get_size
	.type	EVP_MD_get_size, @function
EVP_MD_get_size:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L242
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$838, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L243
.L242:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
.L243:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	EVP_MD_get_size, .-EVP_MD_get_size
	.globl	EVP_MD_get_flags
	.type	EVP_MD_get_flags, @function
EVP_MD_get_flags:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	EVP_MD_get_flags, .-EVP_MD_get_flags
	.globl	EVP_MD_meth_new
	.type	EVP_MD_meth_new, @function
EVP_MD_meth_new:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	call	evp_md_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L247
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 24(%rax)
.L247:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	EVP_MD_meth_new, .-EVP_MD_meth_new
	.globl	EVP_MD_meth_dup
	.type	EVP_MD_meth_dup, @function
EVP_MD_meth_dup:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L250
	movl	$0, %eax
	jmp	.L251
.L250:
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	EVP_MD_meth_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L252
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$240, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 120(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 24(%rax)
.L252:
	movq	-8(%rbp), %rax
.L251:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	EVP_MD_meth_dup, .-EVP_MD_meth_dup
	.globl	evp_md_free_int
	.type	evp_md_free_int, @function
evp_md_free_int:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$884, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	ossl_provider_free@PLT
	movq	-8(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$887, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	evp_md_free_int, .-evp_md_free_int
	.globl	EVP_MD_meth_free
	.type	EVP_MD_meth_free, @function
EVP_MD_meth_free:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L258
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L258
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_md_free_int@PLT
	jmp	.L254
.L258:
	nop
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	EVP_MD_meth_free, .-EVP_MD_meth_free
	.globl	EVP_MD_meth_set_input_blocksize
	.type	EVP_MD_meth_set_input_blocksize, @function
EVP_MD_meth_set_input_blocksize:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L260
	movl	$0, %eax
	jmp	.L261
.L260:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 72(%rax)
	movl	$1, %eax
.L261:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	EVP_MD_meth_set_input_blocksize, .-EVP_MD_meth_set_input_blocksize
	.globl	EVP_MD_meth_set_result_size
	.type	EVP_MD_meth_set_result_size, @function
EVP_MD_meth_set_result_size:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L263
	movl	$0, %eax
	jmp	.L264
.L263:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	$1, %eax
.L264:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	EVP_MD_meth_set_result_size, .-EVP_MD_meth_set_result_size
	.globl	EVP_MD_meth_set_app_datasize
	.type	EVP_MD_meth_set_app_datasize, @function
EVP_MD_meth_set_app_datasize:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	je	.L266
	movl	$0, %eax
	jmp	.L267
.L266:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 76(%rax)
	movl	$1, %eax
.L267:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	EVP_MD_meth_set_app_datasize, .-EVP_MD_meth_set_app_datasize
	.globl	EVP_MD_meth_set_flags
	.type	EVP_MD_meth_set_flags, @function
EVP_MD_meth_set_flags:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L269
	movl	$0, %eax
	jmp	.L270
.L269:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L270:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	EVP_MD_meth_set_flags, .-EVP_MD_meth_set_flags
	.globl	EVP_MD_meth_set_init
	.type	EVP_MD_meth_set_init, @function
EVP_MD_meth_set_init:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L272
	movl	$0, %eax
	jmp	.L273
.L272:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L273:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	EVP_MD_meth_set_init, .-EVP_MD_meth_set_init
	.globl	EVP_MD_meth_set_update
	.type	EVP_MD_meth_set_update, @function
EVP_MD_meth_set_update:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L275
	movl	$0, %eax
	jmp	.L276
.L275:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L276:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	EVP_MD_meth_set_update, .-EVP_MD_meth_set_update
	.globl	EVP_MD_meth_set_final
	.type	EVP_MD_meth_set_final, @function
EVP_MD_meth_set_final:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L278
	movl	$0, %eax
	jmp	.L279
.L278:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movl	$1, %eax
.L279:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	EVP_MD_meth_set_final, .-EVP_MD_meth_set_final
	.globl	EVP_MD_meth_set_copy
	.type	EVP_MD_meth_set_copy, @function
EVP_MD_meth_set_copy:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L281
	movl	$0, %eax
	jmp	.L282
.L281:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movl	$1, %eax
.L282:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	EVP_MD_meth_set_copy, .-EVP_MD_meth_set_copy
	.globl	EVP_MD_meth_set_cleanup
	.type	EVP_MD_meth_set_cleanup, @function
EVP_MD_meth_set_cleanup:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L284
	movl	$0, %eax
	jmp	.L285
.L284:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$1, %eax
.L285:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	EVP_MD_meth_set_cleanup, .-EVP_MD_meth_set_cleanup
	.globl	EVP_MD_meth_set_ctrl
	.type	EVP_MD_meth_set_ctrl, @function
EVP_MD_meth_set_ctrl:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L287
	movl	$0, %eax
	jmp	.L288
.L287:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movl	$1, %eax
.L288:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	EVP_MD_meth_set_ctrl, .-EVP_MD_meth_set_ctrl
	.globl	EVP_MD_meth_get_input_blocksize
	.type	EVP_MD_meth_get_input_blocksize, @function
EVP_MD_meth_get_input_blocksize:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	EVP_MD_meth_get_input_blocksize, .-EVP_MD_meth_get_input_blocksize
	.globl	EVP_MD_meth_get_result_size
	.type	EVP_MD_meth_get_result_size, @function
EVP_MD_meth_get_result_size:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	EVP_MD_meth_get_result_size, .-EVP_MD_meth_get_result_size
	.globl	EVP_MD_meth_get_app_datasize
	.type	EVP_MD_meth_get_app_datasize, @function
EVP_MD_meth_get_app_datasize:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	EVP_MD_meth_get_app_datasize, .-EVP_MD_meth_get_app_datasize
	.globl	EVP_MD_meth_get_flags
	.type	EVP_MD_meth_get_flags, @function
EVP_MD_meth_get_flags:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	EVP_MD_meth_get_flags, .-EVP_MD_meth_get_flags
	.globl	EVP_MD_meth_get_init
	.type	EVP_MD_meth_get_init, @function
EVP_MD_meth_get_init:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	EVP_MD_meth_get_init, .-EVP_MD_meth_get_init
	.globl	EVP_MD_meth_get_update
	.type	EVP_MD_meth_get_update, @function
EVP_MD_meth_get_update:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	EVP_MD_meth_get_update, .-EVP_MD_meth_get_update
	.globl	EVP_MD_meth_get_final
	.type	EVP_MD_meth_get_final, @function
EVP_MD_meth_get_final:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	EVP_MD_meth_get_final, .-EVP_MD_meth_get_final
	.globl	EVP_MD_meth_get_copy
	.type	EVP_MD_meth_get_copy, @function
EVP_MD_meth_get_copy:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	EVP_MD_meth_get_copy, .-EVP_MD_meth_get_copy
	.globl	EVP_MD_meth_get_cleanup
	.type	EVP_MD_meth_get_cleanup, @function
EVP_MD_meth_get_cleanup:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	EVP_MD_meth_get_cleanup, .-EVP_MD_meth_get_cleanup
	.globl	EVP_MD_meth_get_ctrl
	.type	EVP_MD_meth_get_ctrl, @function
EVP_MD_meth_get_ctrl:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	EVP_MD_meth_get_ctrl, .-EVP_MD_meth_get_ctrl
	.globl	EVP_MD_CTX_md
	.type	EVP_MD_CTX_md, @function
EVP_MD_CTX_md:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L310
	movl	$0, %eax
	jmp	.L311
.L310:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L311:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	EVP_MD_CTX_md, .-EVP_MD_CTX_md
	.globl	EVP_MD_CTX_get0_md
	.type	EVP_MD_CTX_get0_md, @function
EVP_MD_CTX_get0_md:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L313
	movl	$0, %eax
	jmp	.L314
.L313:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L314:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	EVP_MD_CTX_get0_md, .-EVP_MD_CTX_get0_md
	.globl	EVP_MD_CTX_get1_md
	.type	EVP_MD_CTX_get1_md, @function
EVP_MD_CTX_get1_md:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L316
	movl	$0, %eax
	jmp	.L317
.L316:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L318
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	jne	.L319
.L318:
	movl	$0, %eax
	jmp	.L317
.L319:
	movq	-8(%rbp), %rax
.L317:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	EVP_MD_CTX_get1_md, .-EVP_MD_CTX_get1_md
	.globl	EVP_MD_CTX_get_pkey_ctx
	.type	EVP_MD_CTX_get_pkey_ctx, @function
EVP_MD_CTX_get_pkey_ctx:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	EVP_MD_CTX_get_pkey_ctx, .-EVP_MD_CTX_get_pkey_ctx
	.globl	EVP_MD_CTX_set_pkey_ctx
	.type	EVP_MD_CTX_set_pkey_ctx, @function
EVP_MD_CTX_set_pkey_ctx:
.LFB591:
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
	movl	$1024, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_test_flags@PLT
	testl	%eax, %eax
	jne	.L323
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L323:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	cmpq	$0, -16(%rbp)
	je	.L324
	movq	-8(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_flags@PLT
	jmp	.L326
.L324:
	movq	-8(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	EVP_MD_CTX_clear_flags@PLT
.L326:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	EVP_MD_CTX_set_pkey_ctx, .-EVP_MD_CTX_set_pkey_ctx
	.globl	EVP_MD_CTX_get0_md_data
	.type	EVP_MD_CTX_get0_md_data, @function
EVP_MD_CTX_get0_md_data:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	EVP_MD_CTX_get0_md_data, .-EVP_MD_CTX_get0_md_data
	.globl	EVP_MD_CTX_update_fn
	.type	EVP_MD_CTX_update_fn, @function
EVP_MD_CTX_update_fn:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	EVP_MD_CTX_update_fn, .-EVP_MD_CTX_update_fn
	.globl	EVP_MD_CTX_set_update_fn
	.type	EVP_MD_CTX_set_update_fn, @function
EVP_MD_CTX_set_update_fn:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	EVP_MD_CTX_set_update_fn, .-EVP_MD_CTX_set_update_fn
	.globl	EVP_MD_CTX_set_flags
	.type	EVP_MD_CTX_set_flags, @function
EVP_MD_CTX_set_flags:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	orq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	EVP_MD_CTX_set_flags, .-EVP_MD_CTX_set_flags
	.globl	EVP_MD_CTX_clear_flags
	.type	EVP_MD_CTX_clear_flags, @function
EVP_MD_CTX_clear_flags:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-12(%rbp), %eax
	notl	%eax
	cltq
	andq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	EVP_MD_CTX_clear_flags, .-EVP_MD_CTX_clear_flags
	.globl	EVP_MD_CTX_test_flags
	.type	EVP_MD_CTX_test_flags, @function
EVP_MD_CTX_test_flags:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	andl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	EVP_MD_CTX_test_flags, .-EVP_MD_CTX_test_flags
	.section	.rodata
.LC17:
	.string	"use-bits"
	.text
	.type	evp_cipher_ctx_enable_use_bits, @function
evp_cipher_ctx_enable_use_bits:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm0, -16(%rbp)
	leaq	-144(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_set_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	evp_cipher_ctx_enable_use_bits, .-evp_cipher_ctx_enable_use_bits
	.globl	EVP_CIPHER_CTX_set_flags
	.type	EVP_CIPHER_CTX_set_flags, @function
EVP_CIPHER_CTX_set_flags:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	orq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 112(%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	xorq	%rdx, %rax
	andl	$8192, %eax
	testq	%rax, %rax
	je	.L340
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	evp_cipher_ctx_enable_use_bits
.L340:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	EVP_CIPHER_CTX_set_flags, .-EVP_CIPHER_CTX_set_flags
	.globl	EVP_CIPHER_CTX_clear_flags
	.type	EVP_CIPHER_CTX_clear_flags, @function
EVP_CIPHER_CTX_clear_flags:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movl	-28(%rbp), %eax
	notl	%eax
	cltq
	andq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 112(%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	xorq	%rdx, %rax
	andl	$8192, %eax
	testq	%rax, %rax
	je	.L343
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	evp_cipher_ctx_enable_use_bits
.L343:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	EVP_CIPHER_CTX_clear_flags, .-EVP_CIPHER_CTX_clear_flags
	.globl	EVP_CIPHER_CTX_test_flags
	.type	EVP_CIPHER_CTX_test_flags, @function
EVP_CIPHER_CTX_test_flags:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	andl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	EVP_CIPHER_CTX_test_flags, .-EVP_CIPHER_CTX_test_flags
	.section	.rodata
.LC18:
	.string	"group"
	.text
	.globl	EVP_PKEY_CTX_set_group_name
	.type	EVP_PKEY_CTX_set_group_name, @function
EVP_PKEY_CTX_set_group_name:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm0, -16(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L347
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L348
	movq	-88(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L348
.L347:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1156, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L351
.L348:
	cmpq	$0, -96(%rbp)
	jne	.L350
	movl	$-1, %eax
	jmp	.L351
.L350:
	leaq	-144(%rbp), %rax
	movq	-96(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
.L351:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	EVP_PKEY_CTX_set_group_name, .-EVP_PKEY_CTX_set_group_name
	.globl	EVP_PKEY_CTX_get_group_name
	.type	EVP_PKEY_CTX_get_group_name, @function
EVP_PKEY_CTX_get_group_name:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L353
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L354
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L354
.L353:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L358
.L354:
	cmpq	$0, -128(%rbp)
	jne	.L356
	movl	$-1, %eax
	jmp	.L358
.L356:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-192(%rbp), %rax
	movq	-136(%rbp), %rcx
	movq	-128(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-160(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_params@PLT
	testl	%eax, %eax
	jne	.L357
	movl	$-1, %eax
	jmp	.L358
.L357:
	movl	$1, %eax
.L358:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	EVP_PKEY_CTX_get_group_name, .-EVP_PKEY_CTX_get_group_name
	.type	evp_pkey_keygen, @function
evp_pkey_keygen:
.LFB604:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L360
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	testl	%eax, %eax
	jle	.L360
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_params@PLT
	testl	%eax, %eax
	je	.L360
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_generate@PLT
.L360:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	evp_pkey_keygen, .-evp_pkey_keygen
	.section	.rodata
.LC19:
	.string	"RSA"
.LC20:
	.string	"bits"
.LC21:
	.string	"EC"
.LC22:
	.string	"ED25519"
.LC23:
	.string	"X25519"
.LC24:
	.string	"ED448"
.LC25:
	.string	"X448"
.LC26:
	.string	"SM2"
	.text
	.globl	EVP_PKEY_Q_keygen
	.type	EVP_PKEY_Q_keygen, @function
EVP_PKEY_Q_keygen:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L373
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L373:
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -304(%rbp)
	movaps	%xmm0, -288(%rbp)
	movaps	%xmm0, -272(%rbp)
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -240(%rbp)
	movq	$0, -184(%rbp)
	movl	$24, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	.LC19(%rip), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L364
	movl	-216(%rbp), %eax
	cmpl	$47, %eax
	ja	.L365
	movq	-200(%rbp), %rax
	movl	-216(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L366
.L365:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
.L366:
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)
	leaq	-384(%rbp), %rax
	leaq	-224(%rbp), %rdx
	leaq	.LC20(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_size_t@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -272(%rbp)
	jmp	.L367
.L364:
	leaq	.LC21(%rip), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	jne	.L368
	movl	-216(%rbp), %eax
	cmpl	$47, %eax
	ja	.L369
	movq	-200(%rbp), %rax
	movl	-216(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L370
.L369:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
.L370:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	leaq	-384(%rbp), %rax
	movq	-192(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-384(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rax, -304(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-368(%rbp), %rax
	movq	-360(%rbp), %rdx
	movq	%rax, -288(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -272(%rbp)
	jmp	.L367
.L368:
	leaq	.LC22(%rip), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L367
	leaq	.LC23(%rip), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L367
	leaq	.LC24(%rip), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L367
	leaq	.LC25(%rip), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L367
	leaq	.LC26(%rip), %rdx
	movq	-328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L367
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1238, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L371
.L367:
	leaq	-304(%rbp), %rcx
	movq	-320(%rbp), %rdx
	movq	-328(%rbp), %rsi
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	evp_pkey_keygen
	movq	%rax, -184(%rbp)
.L371:
	movq	-184(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	EVP_PKEY_Q_keygen, .-EVP_PKEY_Q_keygen
	.section	.rodata
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 28
__func__.6:
	.string	"evp_cipher_param_to_asn1_ex"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 28
__func__.5:
	.string	"evp_cipher_asn1_to_param_ex"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 22
__func__.4:
	.string	"EVP_MD_get_block_size"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"EVP_MD_get_size"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 28
__func__.2:
	.string	"EVP_PKEY_CTX_set_group_name"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 28
__func__.1:
	.string	"EVP_PKEY_CTX_get_group_name"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"EVP_PKEY_Q_keygen"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
