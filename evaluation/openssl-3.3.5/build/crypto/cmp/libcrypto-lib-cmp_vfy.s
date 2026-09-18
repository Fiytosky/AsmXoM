	.file	"cmp_vfy.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
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
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB409:
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
.LFE409:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB410:
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
.LFE410:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.section	.rodata
.LC0:
	.string	"../crypto/cmp/cmp_vfy.c"
.LC1:
	.string	"\n"
	.text
	.type	verify_signature, @function
verify_signature:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L13
	cmpq	$0, -96(%rbp)
	je	.L13
	cmpq	$0, -104(%rbp)
	je	.L13
	movl	$1, %eax
	jmp	.L14
.L13:
	movl	$0, %eax
.L14:
	cltq
	testq	%rax, %rax
	jne	.L15
	movl	$0, %eax
	jmp	.L23
.L15:
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L17
	movl	$0, %eax
	jmp	.L23
.L17:
	movq	-88(%rbp), %rax
	movl	184(%rax), %eax
	testl	%eax, %eax
	jne	.L18
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_key_usage@PLT
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L18:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_pubkey@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L19
.L20:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %r14
	movq	-88(%rbp), %rax
	movq	(%rax), %r13
	movq	-96(%rbp), %rax
	movq	16(%rax), %r12
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rbx
	call	OSSL_CMP_PROTECTEDPART_it@PLT
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx
	leaq	-80(%rbp), %rax
	pushq	%r14
	pushq	%r13
	movq	%rdx, %r9
	movl	$0, %r8d
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	ASN1_item_verify_ex@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jle	.L24
	movl	$1, -44(%rbp)
	jmp	.L21
.L24:
	nop
.L19:
	movq	-104(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_print_ex_brief@PLT
	movl	%eax, -44(%rbp)
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$171, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpl	$0, -44(%rbp)
	je	.L22
	movq	-56(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ERR_add_error_mem_bio@PLT
.L22:
	movl	$0, -44(%rbp)
.L21:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-44(%rbp), %eax
.L23:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	verify_signature, .-verify_signature
	.type	verify_PBMAC, @function
verify_PBMAC:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_calc_protection@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L28
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L28
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L28
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$1, %eax
	jmp	.L29
.L28:
	movl	$0, %eax
.L29:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_free@PLT
	cmpl	$0, -12(%rbp)
	jne	.L30
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$94, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L30:
	movl	-12(%rbp), %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	verify_PBMAC, .-verify_PBMAC
	.globl	OSSL_CMP_validate_cert_path
	.type	OSSL_CMP_validate_cert_path, @function
OSSL_CMP_validate_cert_path:
.LFB747:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L32
	cmpq	$0, -56(%rbp)
	jne	.L33
.L32:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L33:
	cmpq	$0, -48(%rbp)
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L34
.L35:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	movq	-40(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	je	.L39
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	call	ERR_peek_last_error@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L40
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$147, %eax
	je	.L40
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$133, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L38
.L39:
	nop
	jmp	.L38
.L40:
	nop
.L38:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_print_errors@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movl	-4(%rbp), %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	OSSL_CMP_validate_cert_path, .-OSSL_CMP_validate_cert_path
	.type	verify_cb_cert, @function
verify_cb_cert:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L42
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get_verify_cb@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L43
.L42:
	movl	-4(%rbp), %eax
	jmp	.L44
.L43:
	call	X509_STORE_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L45
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	je	.L45
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_error@PLT
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_CTX_set_current_cert@PLT
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rdx
	movl	%eax, -4(%rbp)
.L45:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movl	-4(%rbp), %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	verify_cb_cert, .-verify_cb_cert
	.section	.rodata
.LC2:
	.string	"WARN"
.LC3:
	.string	"missing %s"
.LC4:
	.string	"INFO"
.LC5:
	.string	" %s matches %s: %s"
.LC6:
	.string	" actual name in %s = %s"
.LC7:
	.string	" does not match %s = %s"
	.text
	.type	check_name, @function
check_name:
.LFB749:
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
	cmpq	$0, -64(%rbp)
	jne	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	cmpq	$0, -48(%rbp)
	jne	.L49
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.11(%rip), %rdx
	movq	-24(%rbp), %rax
	pushq	-40(%rbp)
	leaq	.LC3(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$172, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L48
.L49:
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_cmp@PLT
	testl	%eax, %eax
	jne	.L50
	cmpl	$0, -28(%rbp)
	je	.L51
	cmpq	$0, -8(%rbp)
	je	.L51
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.11(%rip), %rdx
	movq	-24(%rbp), %rax
	pushq	-8(%rbp)
	pushq	-56(%rbp)
	pushq	-40(%rbp)
	leaq	.LC5(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$178, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
.L51:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$180, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L48
.L50:
	cmpq	$0, -8(%rbp)
	je	.L52
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.11(%rip), %rdx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-8(%rbp)
	pushq	-40(%rbp)
	leaq	.LC6(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$185, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
.L52:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$186, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L53
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.11(%rip), %rdx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-8(%rbp)
	pushq	-56(%rbp)
	leaq	.LC7(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$188, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
.L53:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$189, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	check_name, .-check_name
	.section	.rodata
	.align 8
.LC8:
	.string	"missing Subject Key Identifier in certificate"
.LC9:
	.string	"%s"
	.align 8
.LC10:
	.string	" subjectKID matches senderKID: %s"
	.align 8
.LC11:
	.string	" cert Subject Key Identifier = %s"
	.align 8
.LC12:
	.string	" does not match senderKID    = %s"
	.text
	.type	check_kid, @function
check_kid:
.LFB750:
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
	cmpq	$0, -40(%rbp)
	jne	.L55
	movl	$1, %eax
	jmp	.L56
.L55:
	cmpq	$0, -32(%rbp)
	jne	.L57
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.10(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$205, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L56
.L57:
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_OCTET_STRING@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	testl	%eax, %eax
	jne	.L58
	cmpq	$0, -8(%rbp)
	je	.L59
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.10(%rip), %rdx
	movq	-24(%rbp), %rax
	pushq	-8(%rbp)
	leaq	.LC10(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$211, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L59:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$212, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	jmp	.L56
.L58:
	cmpq	$0, -8(%rbp)
	je	.L60
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.10(%rip), %rdx
	movq	-24(%rbp), %rax
	pushq	-8(%rbp)
	leaq	.LC11(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$217, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L60:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$218, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_OCTET_STRING@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L61
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.10(%rip), %rdx
	movq	-24(%rbp), %rax
	pushq	-8(%rbp)
	leaq	.LC12(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$220, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L61:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$221, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	check_kid, .-check_kid
	.type	already_checked, @function
already_checked:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -20(%rbp)
	jmp	.L63
.L66:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	X509_cmp@PLT
	testl	%eax, %eax
	jne	.L64
	movl	$1, %eax
	jmp	.L65
.L64:
	subl	$1, -20(%rbp)
.L63:
	cmpl	$0, -20(%rbp)
	jg	.L66
	movl	$0, %eax
.L65:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	already_checked, .-already_checked
	.section	.rodata
.LC13:
	.string	"self-issued "
.LC14:
	.string	""
.LC15:
	.string	" considering %s%s %s with.."
.LC16:
	.string	"  subject = %s"
.LC17:
	.string	"  issuer  = %s"
	.align 8
.LC18:
	.string	" cert has already been checked"
.LC19:
	.string	"cert has expired"
.LC20:
	.string	"cert is not yet valid"
.LC21:
	.string	"sender field"
.LC22:
	.string	"cert subject"
.LC23:
	.string	"cert appears to be invalid"
	.align 8
.LC24:
	.string	"msg signature verification failed"
.LC25:
	.string	" cert seems acceptable"
	.text
	.type	cert_acceptable, @function
cert_acceptable:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_issued@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L68
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	movq	%rax, -24(%rbp)
	jmp	.L69
.L68:
	movq	$0, -24(%rbp)
.L69:
	cmpl	$0, -44(%rbp)
	je	.L70
	leaq	.LC13(%rip), %rax
	jmp	.L71
.L70:
	leaq	.LC14(%rip), %rax
.L71:
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.9(%rip), %rdx
	movq	-72(%rbp), %rsi
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	pushq	%rax
	leaq	.LC15(%rip), %rax
	pushq	%rax
	movq	%rdi, %r9
	movl	$256, %r8d
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$32, %rsp
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L72
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.9(%rip), %rdx
	movq	-72(%rbp), %rax
	pushq	-56(%rbp)
	leaq	.LC16(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$259, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L72:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$260, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -44(%rbp)
	jne	.L73
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L74
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.9(%rip), %rdx
	movq	-72(%rbp), %rax
	pushq	-56(%rbp)
	leaq	.LC17(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$264, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L74:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$265, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L73:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	already_checked
	testl	%eax, %eax
	jne	.L75
	movq	-112(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	already_checked
	testl	%eax, %eax
	je	.L76
.L75:
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.9(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$270, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notBefore@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_cmp_timeframe@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L78
	cmpl	$0, -60(%rbp)
	jle	.L79
	movl	$10, -28(%rbp)
	jmp	.L80
.L79:
	movl	$9, -28(%rbp)
.L80:
	cmpl	$0, -60(%rbp)
	jle	.L81
	leaq	.LC19(%rip), %rax
	jmp	.L82
.L81:
	leaq	.LC20(%rip), %rax
.L82:
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.9(%rip), %rdx
	movq	-72(%rbp), %rsi
	pushq	%rax
	leaq	.LC9(%rip), %rax
	pushq	%rax
	movq	%rdi, %r9
	movl	$280, %r8d
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movl	-28(%rbp), %edx
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	verify_cb_cert
	testl	%eax, %eax
	jg	.L78
	movl	$0, %eax
	jmp	.L77
.L78:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rcx
	leaq	.LC21(%rip), %rsi
	leaq	.LC22(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$1, %esi
	movq	%rax, %rdi
	call	check_name
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L77
.L83:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_subject_key_id@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_kid
	testl	%eax, %eax
	jne	.L84
	movl	$0, %eax
	jmp	.L77
.L84:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509v3_cache_extensions@PLT
	testl	%eax, %eax
	jne	.L85
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.9(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC23(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$296, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L77
.L85:
	movq	-96(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	verify_signature
	testl	%eax, %eax
	jne	.L86
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.9(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC24(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$300, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L77
.L86:
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.9(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC25(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$304, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$1, %eax
.L77:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	cert_acceptable, .-cert_acceptable
	.section	.rodata
	.align 8
.LC26:
	.string	"msg signature validates but cert path validation failed"
	.text
	.type	check_cert_path, @function
check_cert_path:
.LFB753:
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
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_validate_cert_path@PLT
	testl	%eax, %eax
	je	.L88
	movl	$1, %eax
	jmp	.L89
.L88:
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.8(%rip), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC26(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$314, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$0, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	check_cert_path, .-check_cert_path
	.section	.rodata
	.align 8
.LC27:
	.string	"also exceptional 3GPP mode cert path validation failed"
	.text
	.type	check_cert_path_3gpp, @function
check_cert_path_3gpp:
.LFB754:
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
	movq	-40(%rbp), %rax
	movl	188(%rax), %eax
	testl	%eax, %eax
	jne	.L91
	movl	$0, %eax
	jmp	.L92
.L91:
	call	X509_STORE_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L97
	movq	-48(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_X509_STORE_add1_certs@PLT
	testl	%eax, %eax
	je	.L97
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_validate_cert_path@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L96
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.7(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC27(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$343, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L95
.L96:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_certrepmessage_get0_certresponse@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_certresponse_get1_cert@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_validate_cert_path@PLT
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L95
.L97:
	nop
.L95:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movl	-4(%rbp), %eax
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	check_cert_path_3gpp, .-check_cert_path_3gpp
	.section	.rodata
.LC28:
	.string	"sender cert"
.LC29:
	.string	"previously validated"
	.text
	.type	check_msg_given_cert, @function
check_msg_given_cert:
.LFB755:
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
	movq	-16(%rbp), %rdx
	leaq	.LC28(%rip), %rdi
	leaq	.LC29(%rip), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	cert_acceptable
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L99
	movq	-8(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_cert_path
	testl	%eax, %eax
	jne	.L100
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_cert_path_3gpp
	testl	%eax, %eax
	je	.L99
.L100:
	movl	$1, %eax
	jmp	.L102
.L99:
	movl	$0, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	check_msg_given_cert, .-check_msg_given_cert
	.section	.rodata
.LC30:
	.string	"no %s"
.LC31:
	.string	"cert from"
	.align 8
.LC32:
	.string	"no acceptable cert in extraCerts"
	.text
	.type	check_msg_with_certs, @function
check_msg_with_certs:
.LFB756:
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
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	cmpq	$0, -64(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L104
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.6(%rip), %rdx
	movq	-40(%rbp), %rax
	pushq	-56(%rbp)
	leaq	.LC30(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$393, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L105
.L104:
	movl	$0, -8(%rbp)
	jmp	.L106
.L112:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L107
	movl	$0, %eax
	jmp	.L105
.L107:
	movq	-72(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	.LC31(%rip), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-80(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	cert_acceptable
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L114
	addl	$1, -4(%rbp)
	cmpl	$0, 16(%rbp)
	je	.L110
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_cert_path_3gpp
	testl	%eax, %eax
	setne	%al
	jmp	.L111
.L110:
	movq	-40(%rbp), %rax
	movq	168(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_cert_path
	testl	%eax, %eax
	setne	%al
.L111:
	testb	%al, %al
	je	.L109
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_validatedSrvCert@PLT
	jmp	.L105
.L114:
	nop
.L109:
	addl	$1, -8(%rbp)
.L106:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L112
	cmpl	$0, -12(%rbp)
	je	.L113
	cmpl	$0, -4(%rbp)
	jne	.L113
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.6(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	.LC32(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$413, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L113:
	movl	$0, %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE756:
	.size	check_msg_with_certs, .-check_msg_with_certs
	.section	.rodata
	.align 8
.LC33:
	.string	"normal mode failed; trying now 3GPP mode trusting extraCerts"
	.align 8
.LC34:
	.string	"trying first normal mode using trust store"
.LC35:
	.string	"extraCerts"
.LC36:
	.string	"untrusted certs"
.LC37:
	.string	"no self-issued extraCerts"
.LC38:
	.string	"no trusted store"
.LC39:
	.string	"self-issued extraCerts"
.LC40:
	.string	"certs in trusted store"
	.text
	.type	check_msg_all_certs, @function
check_msg_all_certs:
.LFB757:
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
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	188(%rax), %eax
	testl	%eax, %eax
	je	.L116
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$1, %eax
	jne	.L116
	cmpl	$0, -36(%rbp)
	je	.L117
	leaq	.LC33(%rip), %rax
	jmp	.L118
.L117:
	leaq	.LC34(%rip), %rax
.L118:
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.5(%rip), %rdx
	movq	-24(%rbp), %rsi
	pushq	%rax
	leaq	.LC9(%rip), %rax
	pushq	%rax
	movq	%rdi, %r9
	movl	$429, %r8d
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L119
.L116:
	cmpl	$0, -36(%rbp)
	je	.L119
	movl	$0, %eax
	jmp	.L120
.L119:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC35(%rip), %rdx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	movl	-36(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	check_msg_with_certs
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L121
	movl	$1, %eax
	jmp	.L120
.L121:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	176(%rax), %rsi
	movq	-32(%rbp), %r8
	leaq	.LC36(%rip), %rdi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	movl	-36(%rbp), %ecx
	pushq	%rcx
	movq	%r8, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	check_msg_with_certs
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L122
	movl	$1, %eax
	jmp	.L120
.L122:
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L123
	cmpl	$0, -36(%rbp)
	je	.L124
	leaq	.LC37(%rip), %rax
	jmp	.L125
.L124:
	leaq	.LC38(%rip), %rax
.L125:
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.5(%rip), %rdx
	movq	-24(%rbp), %rsi
	pushq	%rax
	leaq	.LC9(%rip), %rax
	pushq	%rax
	movq	%rdi, %r9
	movl	$443, %r8d
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L126
.L123:
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	X509_STORE_get1_all_certs@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %r8
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	cmpl	$0, -36(%rbp)
	je	.L127
	leaq	.LC39(%rip), %rax
	jmp	.L128
.L127:
	leaq	.LC40(%rip), %rax
.L128:
	movq	-32(%rbp), %r9
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	subq	$8, %rsp
	movl	-36(%rbp), %ecx
	pushq	%rcx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	check_msg_with_certs
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
.L126:
	movl	-4(%rbp), %eax
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	check_msg_all_certs, .-check_msg_all_certs
	.section	.rodata
	.align 8
.LC41:
	.string	"trying to verify msg signature with previously validated cert"
	.align 8
.LC42:
	.string	"trying to verify msg signature with a valid cert that.."
.LC43:
	.string	"matches msg sender    = %s"
.LC44:
	.string	"matches msg senderKID = %s"
	.align 8
.LC45:
	.string	"while msg header does not contain senderKID"
.LC46:
	.string	"for msg sender name = "
.LC47:
	.string	"for msg senderKID = "
.LC48:
	.string	" and "
	.text
	.type	check_msg_find_cert, @function
check_msg_find_cert:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L130
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L131
.L130:
	movl	$0, %eax
	jmp	.L132
.L131:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L133
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$476, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L132
.L133:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_print_errors@PLT
	call	ERR_set_mark@PLT
	movq	-72(%rbp), %rax
	movq	$0, 16(%rax)
	cmpq	$0, -24(%rbp)
	je	.L134
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_msg_given_cert
	testl	%eax, %eax
	je	.L135
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	call	ERR_pop_to_mark@PLT
	movl	$1, %eax
	jmp	.L132
.L135:
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_validatedSrvCert@PLT
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.4(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC41(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$500, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_msg_given_cert
.L134:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_msg_all_certs
	testl	%eax, %eax
	jne	.L136
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_msg_all_certs
	testl	%eax, %eax
	je	.L137
.L136:
	movl	$1, %eax
	jmp	.L138
.L137:
	movl	$0, %eax
.L138:
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpl	$0, -52(%rbp)
	je	.L139
	call	ERR_pop_to_mark@PLT
	jmp	.L140
.L139:
	call	ERR_clear_last_mark@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L141
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_OCTET_STRING@PLT
	movq	%rax, -16(%rbp)
	jmp	.L142
.L141:
	movq	$0, -16(%rbp)
.L142:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L143
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.4(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC42(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$519, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	cmpq	$0, -8(%rbp)
	je	.L144
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.4(%rip), %rdx
	movq	-72(%rbp), %rax
	pushq	-8(%rbp)
	leaq	.LC43(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$521, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L144:
	cmpq	$0, -16(%rbp)
	je	.L145
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.4(%rip), %rdx
	movq	-72(%rbp), %rax
	pushq	-16(%rbp)
	leaq	.LC44(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$523, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L146
.L145:
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.4(%rip), %rdx
	movq	-72(%rbp), %rax
	leaq	.LC45(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$525, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L146:
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_msg_all_certs
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_msg_all_certs
.L143:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$531, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$145, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	cmpq	$0, -8(%rbp)
	je	.L147
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ERR_add_error_txt@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ERR_add_error_txt@PLT
.L147:
	cmpq	$0, -16(%rbp)
	je	.L148
	leaq	.LC47(%rip), %rdx
	leaq	.LC48(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_add_error_txt@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ERR_add_error_txt@PLT
	jmp	.L140
.L148:
	nop
.L140:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$542, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$543, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-52(%rbp), %eax
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	check_msg_find_cert, .-check_msg_find_cert
	.section	.rodata
.LC49:
	.string	"DEBUG"
.LC50:
	.string	"validating CMP message"
	.align 8
.LC51:
	.string	"no secret available for verifying PBM-based CMP message protection"
	.align 8
.LC52:
	.string	"successfully validated PBM-based CMP message protection"
	.align 8
.LC53:
	.string	"verifying PBM-based CMP message protection failed"
	.align 8
.LC54:
	.string	"no trust store nor pinned server cert available for verifying signature-based CMP message protection"
	.align 8
.LC55:
	.string	"successfully validated signature-based CMP message protection using trust store"
	.align 8
.LC56:
	.string	"successfully validated signature-based CMP message protection using pinned server cert"
	.align 8
.LC57:
	.string	"CMP message signature verification failed"
	.text
	.globl	OSSL_CMP_validate_msg
	.type	OSSL_CMP_validate_msg, @function
OSSL_CMP_validate_msg:
.LFB759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC49(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.3(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC50(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$567, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	cmpq	$0, -24(%rbp)
	je	.L150
	cmpq	$0, -32(%rbp)
	je	.L150
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L150
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L151
.L150:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$570, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L152
.L151:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L154
.L153:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$576, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L152
.L154:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_get_protection_nid@PLT
	cmpl	$782, %eax
	je	.L155
	cmpl	$783, %eax
	je	.L156
	jmp	.L170
.L155:
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	jne	.L158
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.3(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC51(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$584, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$585, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$178, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L152
.L158:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	verify_PBMAC
	testl	%eax, %eax
	je	.L159
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$14, %eax
	je	.L160
	cmpl	$14, %eax
	jg	.L171
	cmpl	$8, %eax
	je	.L160
	cmpl	$8, %eax
	jg	.L171
	cmpl	$3, %eax
	je	.L160
	cmpl	$3, %eax
	jg	.L171
	cmpl	$-1, %eax
	je	.L162
	cmpl	$1, %eax
	je	.L160
	jmp	.L171
.L162:
	movl	$0, %eax
	jmp	.L152
.L160:
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L172
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_X509_STORE_add1_certs@PLT
	testl	%eax, %eax
	jne	.L172
	movl	$0, %eax
	jmp	.L152
.L171:
	nop
	jmp	.L164
.L172:
	nop
.L164:
	leaq	.LC49(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.3(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC52(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$614, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$1, %eax
	jmp	.L152
.L159:
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.3(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC53(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$618, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	jmp	.L165
.L156:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$626, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$154, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L165
.L170:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L166
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L167
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	testq	%rax, %rax
	je	.L167
	leaq	.LC4(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.3(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC54(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$636, %r8d
	movq	%rax, %rsi
	movl	$6, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$637, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$179, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L152
.L167:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	check_msg_find_cert
	testl	%eax, %eax
	je	.L173
	leaq	.LC49(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.3(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC55(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$641, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movl	$1, %eax
	jmp	.L152
.L166:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	verify_signature
	testl	%eax, %eax
	je	.L169
	leaq	.LC49(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.3(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC56(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$648, %r8d
	movq	%rax, %rsi
	movl	$7, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_validatedSrvCert@PLT
	jmp	.L152
.L169:
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.3(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	.LC57(%rip), %rsi
	pushq	%rsi
	leaq	.LC9(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$652, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$653, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$151, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L173:
	nop
.L165:
	movl	$0, %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	OSSL_CMP_validate_msg, .-OSSL_CMP_validate_msg
	.section	.rodata
.LC58:
	.string	"?"
.LC59:
	.string	"(none)"
.LC60:
	.string	"expected = %s, actual = %s"
	.text
	.type	check_transactionID_or_nonce, @function
check_transactionID_or_nonce:
.LFB760:
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
	cmpq	$0, -24(%rbp)
	je	.L175
	cmpq	$0, -32(%rbp)
	je	.L176
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_cmp@PLT
	testl	%eax, %eax
	je	.L175
.L176:
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_OCTET_STRING@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L177
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2s_ASN1_OCTET_STRING@PLT
	movq	%rax, -8(%rbp)
	jmp	.L178
.L177:
	movq	$0, -8(%rbp)
.L178:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$670, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpq	$0, -32(%rbp)
	je	.L179
	cmpq	$0, -8(%rbp)
	je	.L180
	movq	-8(%rbp), %rax
	jmp	.L181
.L180:
	leaq	.LC58(%rip), %rax
	jmp	.L181
.L179:
	leaq	.LC59(%rip), %rax
.L181:
	cmpq	$0, -16(%rbp)
	je	.L182
	movq	-16(%rbp), %rdx
	jmp	.L183
.L182:
	leaq	.LC58(%rip), %rdx
.L183:
	leaq	.LC60(%rip), %rdi
	movl	-36(%rbp), %esi
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$675, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$676, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L184
.L175:
	movl	$1, %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	check_transactionID_or_nonce, .-check_transactionID_or_nonce
	.section	.rodata
.LC61:
	.string	"expected sender"
.LC62:
	.string	"sender DN field"
.LC63:
	.string	"<unknown>"
	.align 8
.LC64:
	.string	"received CMP message contains %d extraCerts"
	.text
	.globl	ossl_cmp_msg_check_update
	.type	ossl_cmp_msg_check_update, @function
ossl_cmp_msg_check_update:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -92(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L186
	cmpq	$0, -80(%rbp)
	je	.L186
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L186
	movl	$1, %eax
	jmp	.L187
.L186:
	movl	$0, %eax
.L187:
	cltq
	testq	%rax, %rax
	jne	.L188
	movl	$0, %eax
	jmp	.L189
.L188:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get0_header@PLT
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L190
	movq	-72(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L190
	movq	-72(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -8(%rbp)
.L190:
	cmpq	$0, -8(%rbp)
	je	.L191
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L192
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$723, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L189
.L192:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rcx
	leaq	.LC61(%rip), %rdi
	movq	-40(%rbp), %rdx
	leaq	.LC62(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	check_name
	testl	%eax, %eax
	jne	.L191
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	movq	%rax, -48(%rbp)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$735, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpq	$0, -48(%rbp)
	je	.L193
	movq	-48(%rbp), %rax
	jmp	.L194
.L193:
	leaq	.LC63(%rip), %rax
.L194:
	movq	%rax, %rdx
	movl	$106, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$737, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L189
.L191:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -16(%rbp)
	cmpl	$10, -16(%rbp)
	jle	.L195
	leaq	.LC2(%rip), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	__func__.1(%rip), %rdx
	movq	-72(%rbp), %rax
	movl	-16(%rbp), %esi
	pushq	%rsi
	leaq	.LC64(%rip), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$745, %r8d
	movq	%rax, %rsi
	movl	$4, %edi
	movl	$0, %eax
	call	ossl_cmp_print_log@PLT
	addq	$16, %rsp
.L195:
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -12(%rbp)
	jmp	.L197
.L196:
	movl	$0, -12(%rbp)
.L197:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	176(%rdx), %rcx
	movl	$7, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ossl_x509_add_certs_new@PLT
	movl	%eax, -20(%rbp)
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L198
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	jmp	.L199
.L198:
	movl	$0, %eax
.L199:
	subl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L200
	jmp	.L201
.L202:
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_shift@PLT
	movq	%rax, %rdi
	call	X509_free@PLT
.L201:
	movl	-16(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -16(%rbp)
	testl	%eax, %eax
	jg	.L202
	movl	$0, %eax
	jmp	.L189
.L200:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L203
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_validate_msg@PLT
	testl	%eax, %eax
	jne	.L204
	cmpq	$0, -88(%rbp)
	je	.L205
	movl	-92(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %r8
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jle	.L205
.L204:
	movl	$1, %eax
	jmp	.L206
.L205:
	movl	$0, %eax
.L206:
	movl	%eax, -20(%rbp)
	jmp	.L207
.L203:
	cmpq	$0, -88(%rbp)
	je	.L208
	movl	-92(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jle	.L208
	movl	$1, %eax
	jmp	.L209
.L208:
	movl	$0, %eax
.L209:
	movl	%eax, -20(%rbp)
.L207:
	movq	-72(%rbp), %rax
	movl	140(%rax), %eax
	testl	%eax, %eax
	je	.L210
	jmp	.L211
.L212:
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_shift@PLT
	movq	%rax, %rdi
	call	X509_free@PLT
.L211:
	movl	-16(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -16(%rbp)
	testl	%eax, %eax
	jg	.L212
.L210:
	cmpl	$0, -20(%rbp)
	jne	.L213
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L214
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$787, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$140, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L215
.L214:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$789, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L215:
	movl	$0, %eax
	jmp	.L189
.L213:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_get_pvno@PLT
	cmpl	$2, %eax
	je	.L216
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_get_pvno@PLT
	cmpl	$3, %eax
	je	.L216
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$797, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$153, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L189
.L216:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	testl	%eax, %eax
	jns	.L217
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$804, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L189
.L217:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	280(%rax), %rax
	movl	$152, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_transactionID_or_nonce
	testl	%eax, %eax
	jne	.L218
	movl	$0, %eax
	jmp	.L189
.L218:
	call	ERR_set_mark@PLT
	movq	-32(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	288(%rax), %rax
	movl	$148, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_transactionID_or_nonce
	testl	%eax, %eax
	jne	.L219
	movq	-72(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	je	.L220
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$26, %eax
	je	.L220
	movq	-32(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	304(%rax), %rax
	movl	$148, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	check_transactionID_or_nonce
	testl	%eax, %eax
	jne	.L219
.L220:
	call	ERR_clear_last_mark@PLT
	movl	$0, %eax
	jmp	.L189
.L219:
	call	ERR_pop_to_mark@PLT
	movq	-72(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L221
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_set1_transactionID@PLT
	testl	%eax, %eax
	jne	.L221
	movl	$0, %eax
	jmp	.L189
.L221:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_ctx_set1_recipNonce@PLT
	testl	%eax, %eax
	jne	.L222
	movl	$0, %eax
	jmp	.L189
.L222:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_hdr_get_protection_nid@PLT
	cmpl	$782, %eax
	jne	.L223
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_MSG_get_bodytype@PLT
	cmpl	$14, %eax
	je	.L224
	cmpl	$14, %eax
	jg	.L227
	cmpl	$8, %eax
	je	.L224
	cmpl	$8, %eax
	jg	.L227
	cmpl	$1, %eax
	je	.L224
	cmpl	$3, %eax
	jne	.L227
.L224:
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L228
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	movq	-56(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_cmp_X509_STORE_add1_certs@PLT
	testl	%eax, %eax
	jne	.L228
	movl	$0, %eax
	jmp	.L189
.L227:
	nop
	jmp	.L223
.L228:
	nop
.L223:
	movl	$1, %eax
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	ossl_cmp_msg_check_update, .-ossl_cmp_msg_check_update
	.globl	ossl_cmp_verify_popo
	.type	ossl_cmp_verify_popo, @function
ossl_cmp_verify_popo:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L230
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L230
	movl	$1, %eax
	jmp	.L231
.L230:
	movl	$0, %eax
.L231:
	cltq
	testq	%rax, %rax
	jne	.L232
	movl	$0, %eax
	jmp	.L233
.L232:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$7, %eax
	je	.L234
	cmpl	$7, %eax
	jg	.L235
	cmpl	$4, %eax
	je	.L236
	cmpl	$4, %eax
	jg	.L235
	testl	%eax, %eax
	je	.L234
	cmpl	$2, %eax
	je	.L234
	jmp	.L235
.L236:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %r12
	movq	-40(%rbp), %rax
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get0_pubkey@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	X509_REQ_verify_ex@PLT
	testl	%eax, %eax
	jg	.L240
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$889, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$149, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L233
.L234:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-52(%rbp), %edx
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	OSSL_CRMF_MSGS_verify_popo@PLT
	testl	%eax, %eax
	jne	.L241
	movl	$0, %eax
	jmp	.L233
.L235:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$907, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L233
.L240:
	nop
	jmp	.L238
.L241:
	nop
.L238:
	movl	$1, %eax
.L233:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	ossl_cmp_verify_popo, .-ossl_cmp_verify_popo
	.section	.rodata
	.align 16
	.type	__func__.14, @object
	.size	__func__.14, 17
__func__.14:
	.string	"verify_signature"
	.align 8
	.type	__func__.13, @object
	.size	__func__.13, 13
__func__.13:
	.string	"verify_PBMAC"
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 28
__func__.12:
	.string	"OSSL_CMP_validate_cert_path"
	.align 8
	.type	__func__.11, @object
	.size	__func__.11, 11
__func__.11:
	.string	"check_name"
	.align 8
	.type	__func__.10, @object
	.size	__func__.10, 10
__func__.10:
	.string	"check_kid"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 16
__func__.9:
	.string	"cert_acceptable"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 16
__func__.8:
	.string	"check_cert_path"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 21
__func__.7:
	.string	"check_cert_path_3gpp"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 21
__func__.6:
	.string	"check_msg_with_certs"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 20
__func__.5:
	.string	"check_msg_all_certs"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 20
__func__.4:
	.string	"check_msg_find_cert"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 22
__func__.3:
	.string	"OSSL_CMP_validate_msg"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 29
__func__.2:
	.string	"check_transactionID_or_nonce"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 26
__func__.1:
	.string	"ossl_cmp_msg_check_update"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"ossl_cmp_verify_popo"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
