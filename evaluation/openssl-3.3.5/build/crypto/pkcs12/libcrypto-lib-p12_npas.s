	.file	"p12_npas.c"
	.text
	.type	ossl_check_PKCS7_type, @function
ossl_check_PKCS7_type:
.LFB426:
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
.LFE426:
	.size	ossl_check_PKCS7_type, .-ossl_check_PKCS7_type
	.type	ossl_check_const_PKCS7_sk_type, @function
ossl_check_const_PKCS7_sk_type:
.LFB427:
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
.LFE427:
	.size	ossl_check_const_PKCS7_sk_type, .-ossl_check_const_PKCS7_sk_type
	.type	ossl_check_PKCS7_sk_type, @function
ossl_check_PKCS7_sk_type:
.LFB428:
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
.LFE428:
	.size	ossl_check_PKCS7_sk_type, .-ossl_check_PKCS7_sk_type
	.type	ossl_check_PKCS7_freefunc_type, @function
ossl_check_PKCS7_freefunc_type:
.LFB431:
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
.LFE431:
	.size	ossl_check_PKCS7_freefunc_type, .-ossl_check_PKCS7_freefunc_type
	.type	ossl_check_const_PKCS12_SAFEBAG_sk_type, @function
ossl_check_const_PKCS12_SAFEBAG_sk_type:
.LFB466:
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
.LFE466:
	.size	ossl_check_const_PKCS12_SAFEBAG_sk_type, .-ossl_check_const_PKCS12_SAFEBAG_sk_type
	.type	ossl_check_PKCS12_SAFEBAG_sk_type, @function
ossl_check_PKCS12_SAFEBAG_sk_type:
.LFB467:
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
.LFE467:
	.size	ossl_check_PKCS12_SAFEBAG_sk_type, .-ossl_check_PKCS12_SAFEBAG_sk_type
	.type	ossl_check_PKCS12_SAFEBAG_freefunc_type, @function
ossl_check_PKCS12_SAFEBAG_freefunc_type:
.LFB470:
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
.LFE470:
	.size	ossl_check_PKCS12_SAFEBAG_freefunc_type, .-ossl_check_PKCS12_SAFEBAG_freefunc_type
	.section	.rodata
.LC0:
	.string	"../crypto/pkcs12/p12_npas.c"
	.text
	.globl	PKCS12_newpass
	.type	PKCS12_newpass, @function
PKCS12_newpass:
.LFB471:
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
	cmpq	$0, -8(%rbp)
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$39, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_verify_mac@PLT
	testl	%eax, %eax
	jne	.L18
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$113, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L18:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	newpass_p12
	testl	%eax, %eax
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$35, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L19:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	PKCS12_newpass, .-PKCS12_newpass
	.type	newpass_p12, @function
newpass_p12:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -60(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_unpack_authsafes@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L44
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L45
	movl	$0, -36(%rbp)
	jmp	.L24
.L36:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -84(%rbp)
	cmpl	$21, -84(%rbp)
	jne	.L25
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_unpack_p7data@PLT
	movq	%rax, -32(%rbp)
	jmp	.L26
.L25:
	cmpl	$26, -84(%rbp)
	jne	.L46
	movq	-208(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	PKCS12_unpack_p7encdata@PLT
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	leaq	-100(%rbp), %rdi
	leaq	-96(%rbp), %rcx
	leaq	-92(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	alg_get
	testl	%eax, %eax
	je	.L47
.L26:
	cmpq	$0, -32(%rbp)
	je	.L48
	movq	-80(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	newpass_bags
	testl	%eax, %eax
	je	.L49
	cmpl	$21, -84(%rbp)
	jne	.L32
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_pack_p7data@PLT
	movq	%rax, -48(%rbp)
	jmp	.L33
.L32:
	movq	-80(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-92(%rbp), %r8d
	movl	-96(%rbp), %edi
	movl	-88(%rbp), %eax
	movq	-216(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rcx
	pushq	%rdx
	pushq	-32(%rbp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movl	%eax, %edi
	call	PKCS12_pack_p7encdata_ex@PLT
	addq	$32, %rsp
	movq	%rax, -48(%rbp)
.L33:
	cmpq	$0, -48(%rbp)
	je	.L50
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L50
	movq	PKCS12_SAFEBAG_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	$0, -32(%rbp)
	jmp	.L29
.L46:
	nop
.L29:
	addl	$1, -36(%rbp)
.L24:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS7_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -36(%rbp)
	jl	.L36
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-200(%rbp), %rax
	movq	16(%rax), %rbx
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, 32(%rbx)
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.L51
	movq	-24(%rbp), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS12_pack_authsafes@PLT
	testl	%eax, %eax
	je	.L52
	movq	-200(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L39
	leaq	-180(%rbp), %rcx
	leaq	-176(%rbp), %rdx
	movq	-216(%rbp), %rsi
	movq	-200(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	PKCS12_gen_mac@PLT
	testl	%eax, %eax
	je	.L53
	movq	-200(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	leaq	-112(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_SIG_getm@PLT
	movl	-180(%rbp), %eax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	leaq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L54
.L39:
	movl	$1, -60(%rbp)
	jmp	.L22
.L44:
	nop
	jmp	.L22
.L45:
	nop
	jmp	.L22
.L47:
	nop
	jmp	.L22
.L48:
	nop
	jmp	.L22
.L49:
	nop
	jmp	.L22
.L50:
	nop
	jmp	.L22
.L51:
	nop
	jmp	.L22
.L52:
	nop
	jmp	.L22
.L53:
	nop
	jmp	.L22
.L54:
	nop
.L22:
	cmpl	$1, -60(%rbp)
	jne	.L41
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	jmp	.L42
.L41:
	cmpq	$0, -56(%rbp)
	je	.L42
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L42:
	movq	PKCS12_SAFEBAG_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS12_SAFEBAG_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	PKCS7_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	PKCS7_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_PKCS7_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	newpass_p12, .-newpass_p12
	.type	newpass_bags, @function
newpass_bags:
.LFB473:
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
	movl	$0, -4(%rbp)
	jmp	.L56
.L59:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS12_SAFEBAG_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	newpass_bag
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	addl	$1, -4(%rbp)
.L56:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_PKCS12_SAFEBAG_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L59
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	newpass_bags, .-newpass_bags
	.type	newpass_bag, @function
newpass_bag:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS12_SAFEBAG_get_nid@PLT
	cmpl	$151, %eax
	je	.L61
	movl	$1, %eax
	jmp	.L67
.L61:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	PKCS8_decrypt_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L63
	movl	$0, %eax
	jmp	.L67
.L63:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-48(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_SIG_get0@PLT
	movq	-48(%rbp), %rax
	leaq	-40(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	leaq	-28(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	alg_get
	testl	%eax, %eax
	jne	.L64
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movl	$0, %eax
	jmp	.L67
.L64:
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	je	.L65
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L65
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movl	$0, %eax
	jmp	.L67
.L65:
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edi
	movl	-28(%rbp), %eax
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rsi
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	pushq	-16(%rbp)
	pushq	%rcx
	movl	%edi, %r9d
	movl	$0, %r8d
	movl	$-1, %ecx
	movl	%eax, %edi
	call	PKCS8_encrypt_ex@PLT
	addq	$32, %rsp
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	cmpq	$0, -24(%rbp)
	jne	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_SIG_free@PLT
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	newpass_bag, .-newpass_bag
	.type	alg_get, @function
alg_get:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-60(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -52(%rbp)
	cmpl	$161, -52(%rbp)
	jne	.L69
	movl	-60(%rbp), %eax
	cmpl	$16, %eax
	jne	.L70
	call	PBE2PARAM_it@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_unpack@PLT
	movq	%rax, -40(%rbp)
.L70:
	cmpq	$0, -40(%rbp)
	je	.L84
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-60(%rbp), %rsi
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -56(%rbp)
	movl	-60(%rbp), %eax
	cmpl	$16, %eax
	jne	.L73
	call	PBKDF2PARAM_it@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_unpack@PLT
	movq	%rax, -48(%rbp)
.L73:
	cmpq	$0, -48(%rbp)
	je	.L85
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L86
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L76
	movl	$163, -24(%rbp)
	jmp	.L77
.L76:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -24(%rbp)
.L77:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-112(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-96(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	movq	-120(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, (%rax)
	jmp	.L78
.L69:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rbx
	call	PBEPARAM_it@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L87
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movq	-96(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-112(%rbp), %rax
	movl	%edx, (%rax)
	movq	-120(%rbp), %rax
	movl	$0, (%rax)
	movl	$1, -20(%rbp)
	nop
.L78:
	movl	$1, -20(%rbp)
	jmp	.L72
.L84:
	nop
	jmp	.L72
.L85:
	nop
	jmp	.L72
.L86:
	nop
	jmp	.L72
.L87:
	nop
.L72:
	cmpq	$0, -48(%rbp)
	je	.L80
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	PBKDF2PARAM_free@PLT
.L80:
	cmpq	$0, -40(%rbp)
	je	.L81
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	PBE2PARAM_free@PLT
.L81:
	cmpq	$0, -32(%rbp)
	je	.L82
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PBEPARAM_free@PLT
.L82:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	alg_get, .-alg_get
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"PKCS12_newpass"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
