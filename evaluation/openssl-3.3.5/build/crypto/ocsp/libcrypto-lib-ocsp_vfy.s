	.file	"ocsp_vfy.c"
	.text
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.type	ossl_check_const_OCSP_SINGLERESP_sk_type, @function
ossl_check_const_OCSP_SINGLERESP_sk_type:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	ossl_check_const_OCSP_SINGLERESP_sk_type, .-ossl_check_const_OCSP_SINGLERESP_sk_type
	.section	.rodata
.LC0:
	.string	"../crypto/ocsp/ocsp_vfy.c"
.LC1:
	.string	"Verify error: %s"
	.text
	.type	ocsp_verify_signer, @function
ocsp_verify_signer:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	call	X509_STORE_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movl	$-1, -4(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$39, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L9
.L8:
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	jne	.L10
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$43, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L9
.L10:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_param@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L16
	movq	-64(%rbp), %rax
	andl	$4096, %eax
	testq	%rax, %rax
	je	.L12
	movq	-24(%rbp), %rax
	movl	$524288, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
.L12:
	cmpl	$0, -44(%rbp)
	je	.L13
	movq	-40(%rbp), %rax
	movl	$-1, %edx
	movl	$369, %esi
	movq	%rax, %rdi
	call	X509_get_ext_by_NID@PLT
	testl	%eax, %eax
	js	.L13
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_clear_flags@PLT
.L13:
	movq	-16(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_purpose@PLT
	movq	-16(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_trust@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L14
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -28(%rbp)
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-28(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$101, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L9
.L14:
	cmpq	$0, -80(%rbp)
	je	.L17
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get1_chain@PLT
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L9
.L16:
	nop
	jmp	.L9
.L17:
	nop
.L9:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	ocsp_verify_signer, .-ocsp_verify_signer
	.type	ocsp_verify, @function
ocsp_verify:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	$1, -52(%rbp)
	movq	-96(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L19
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L21
.L20:
	cmpq	$0, -72(%rbp)
	je	.L22
	movq	-88(%rbp), %rax
	movq	376(%rax), %r14
	movq	-88(%rbp), %rax
	movq	368(%rax), %r13
	movq	-72(%rbp), %r12
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %r15
	call	OCSP_REQINFO_it@PLT
	movq	-64(%rbp), %rdx
	pushq	%r14
	pushq	%r13
	movq	%rdx, %r9
	movl	$0, %r8d
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	ASN1_item_verify_ex@PLT
	addq	$16, %rsp
	movl	%eax, -52(%rbp)
	jmp	.L23
.L22:
	movq	-88(%rbp), %rax
	movq	376(%rax), %r15
	movq	-88(%rbp), %rax
	movq	368(%rax), %r14
	movq	-80(%rbp), %r12
	movq	-80(%rbp), %rax
	movq	64(%rax), %rbx
	movq	-80(%rbp), %rax
	leaq	48(%rax), %r13
	call	OCSP_RESPDATA_it@PLT
	movq	-64(%rbp), %rdx
	pushq	%r15
	pushq	%r14
	movq	%rdx, %r9
	movl	$0, %r8d
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	ASN1_item_verify_ex@PLT
	addq	$16, %rsp
	movl	%eax, -52(%rbp)
.L23:
	cmpl	$0, -52(%rbp)
	jg	.L19
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L19:
	movl	-52(%rbp), %eax
.L21:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	ocsp_verify, .-ocsp_verify
	.globl	OCSP_basic_verify
	.type	OCSP_basic_verify, @function
OCSP_basic_verify:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ocsp_find_signer
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L25
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L26
.L25:
	cmpl	$2, -28(%rbp)
	jne	.L27
	movq	-96(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L27
	orq	$16, -96(%rbp)
.L27:
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ocsp_verify
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L37
	movq	-96(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L38
	movl	$-1, -28(%rbp)
	movq	-96(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L29
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_dup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L39
	movq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_certs@PLT
	testl	%eax, %eax
	je	.L40
.L29:
	movq	-48(%rbp), %rax
	leaq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1, %esi
	movq	%rax, %rdi
	call	ocsp_verify_signer
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L41
	movq	-96(%rbp), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L32
	movl	$1, -28(%rbp)
	jmp	.L26
.L32:
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocsp_check_issuer
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L42
	movq	-96(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	jne	.L43
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leal	-1(%rax), %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$180, %esi
	movq	%rax, %rdi
	call	X509_check_trust@PLT
	cmpl	$1, %eax
	je	.L35
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$149, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, -28(%rbp)
	jmp	.L26
.L35:
	movl	$1, -28(%rbp)
	jmp	.L26
.L37:
	nop
	jmp	.L26
.L38:
	nop
	jmp	.L26
.L39:
	nop
	jmp	.L26
.L40:
	nop
	jmp	.L26
.L41:
	nop
	jmp	.L26
.L42:
	nop
	jmp	.L26
.L43:
	nop
.L26:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	OCSP_basic_verify, .-OCSP_basic_verify
	.globl	OCSP_resp_get0_signer
	.type	OCSP_resp_get0_signer, @function
OCSP_resp_get0_signer:
.LFB605:
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
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ocsp_find_signer
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	OCSP_resp_get0_signer, .-OCSP_resp_get0_signer
	.type	ocsp_find_signer, @function
ocsp_find_signer:
.LFB606:
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
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocsp_find_signer_sk
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L47
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$2, %eax
	jmp	.L48
.L47:
	movq	-48(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L49
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocsp_find_signer_sk
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L49
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L48
.L49:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	ocsp_find_signer, .-ocsp_find_signer
	.section	.rodata
.LC2:
	.string	"SHA1"
	.text
	.type	ocsp_find_signer_sk, @function
ocsp_find_signer_sk:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L51
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_find_by_subject@PLT
	jmp	.L60
.L51:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$20, %eax
	je	.L53
	movl	$0, %eax
	jmp	.L60
.L53:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L54
.L59:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L55
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L61
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_pubkey_digest@PLT
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	cmpl	$0, -36(%rbp)
	je	.L62
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L55
	movq	-24(%rbp), %rax
	jmp	.L60
.L55:
	addl	$1, -4(%rbp)
.L54:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L59
	jmp	.L57
.L61:
	nop
	jmp	.L57
.L62:
	nop
.L57:
	movl	$0, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	ocsp_find_signer_sk, .-ocsp_find_signer_sk
	.type	ocsp_check_issuer, @function
ocsp_check_issuer:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L64
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L70
.L64:
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ocsp_check_ids
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L66
	movl	-12(%rbp), %eax
	jmp	.L70
.L66:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	jle	.L67
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	$1, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ocsp_match_issuerid
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L68
	movl	-12(%rbp), %eax
	jmp	.L70
.L68:
	cmpl	$0, -12(%rbp)
	je	.L67
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ocsp_check_delegated
	testl	%eax, %eax
	je	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
	jmp	.L70
.L67:
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ocsp_match_issuerid
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	ocsp_check_issuer, .-ocsp_check_issuer
	.type	ocsp_check_ids, @function
ocsp_check_ids:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L72
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$274, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L73
.L72:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L74
.L77:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OCSP_id_issuer_cmp@PLT
	testl	%eax, %eax
	je	.L75
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	testl	%eax, %eax
	je	.L76
	movl	$2, %eax
	jmp	.L73
.L76:
	movl	$0, %eax
	jmp	.L73
.L75:
	addl	$1, -4(%rbp)
.L74:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L77
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	ocsp_check_ids, .-ocsp_check_ids
	.type	ocsp_match_issuerid, @function
ocsp_match_issuerid:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movl	$-1, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -192(%rbp)
	je	.L79
	movq	-192(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-176(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	call	ERR_set_mark@PLT
	leaq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L80
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -16(%rbp)
.L80:
	cmpq	$0, -16(%rbp)
	jne	.L81
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$325, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L89
.L81:
	call	ERR_pop_to_mark@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L83
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$332, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L89
.L83:
	movq	-192(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L84
	movq	-192(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	%eax, -36(%rbp)
	je	.L85
.L84:
	movl	$0, -4(%rbp)
	jmp	.L89
.L85:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -48(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_NAME_digest@PLT
	testl	%eax, %eax
	je	.L94
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	movq	24(%rax), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L87
	movl	$0, -4(%rbp)
	jmp	.L89
.L87:
	leaq	-112(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_pubkey_digest@PLT
	testl	%eax, %eax
	jne	.L88
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$348, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L89
.L88:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	movq	48(%rax), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L89
.L79:
	movl	$0, -20(%rbp)
	jmp	.L90
.L93:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-184(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ocsp_match_issuerid
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L91
	movl	-4(%rbp), %eax
	jmp	.L92
.L91:
	addl	$1, -20(%rbp)
.L90:
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L93
	movl	$1, %eax
	jmp	.L92
.L94:
	nop
.L89:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	ocsp_match_issuerid, .-ocsp_match_issuerid
	.type	ocsp_check_delegated, @function
ocsp_check_delegated:
.LFB611:
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
	call	X509_get_extension_flags@PLT
	andl	$4, %eax
	testl	%eax, %eax
	je	.L96
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_extended_key_usage@PLT
	andl	$32, %eax
	testl	%eax, %eax
	je	.L96
	movl	$1, %eax
	jmp	.L97
.L96:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$376, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	ocsp_check_delegated, .-ocsp_check_delegated
	.globl	OCSP_request_verify
	.type	OCSP_request_verify, @function
OCSP_request_verify:
.LFB612:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L99
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$394, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L109
.L99:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L101
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L102
.L101:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$399, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L109
.L102:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ocsp_req_find_signer
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L103
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$405, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L109
.L103:
	cmpl	$2, -20(%rbp)
	jne	.L104
	movq	-64(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L104
	orq	$16, -64(%rbp)
.L104:
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ocsp_verify
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L105
	movl	$0, %eax
	jmp	.L109
.L105:
	movq	-64(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	je	.L106
	movl	$1, %eax
	jmp	.L109
.L106:
	movq	-64(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L107
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rsi
	jmp	.L108
.L107:
	movl	$0, %esi
.L108:
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ocsp_verify_signer
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	OCSP_request_verify, .-OCSP_request_verify
	.type	ocsp_req_find_signer, @function
ocsp_req_find_signer:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L111
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_find_by_subject@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L111
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L112
.L111:
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_find_by_subject@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L113
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$2, %eax
	jmp	.L112
.L113:
	movl	$0, %eax
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	ocsp_req_find_signer, .-ocsp_req_find_signer
	.section	.rodata
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 19
__func__.7:
	.string	"ocsp_verify_signer"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 12
__func__.6:
	.string	"ocsp_verify"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 18
__func__.5:
	.string	"OCSP_basic_verify"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 18
__func__.4:
	.string	"ocsp_check_issuer"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 15
__func__.3:
	.string	"ocsp_check_ids"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"ocsp_match_issuerid"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"ocsp_check_delegated"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"OCSP_request_verify"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
