	.file	"t_req.c"
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
	.type	ossl_check_const_X509_EXTENSION_sk_type, @function
ossl_check_const_X509_EXTENSION_sk_type:
.LFB433:
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
.LFE433:
	.size	ossl_check_const_X509_EXTENSION_sk_type, .-ossl_check_const_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_sk_type, @function
ossl_check_X509_EXTENSION_sk_type:
.LFB434:
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
.LFE434:
	.size	ossl_check_X509_EXTENSION_sk_type, .-ossl_check_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_freefunc_type, @function
ossl_check_X509_EXTENSION_freefunc_type:
.LFB437:
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
.LFE437:
	.size	ossl_check_X509_EXTENSION_freefunc_type, .-ossl_check_X509_EXTENSION_freefunc_type
	.section	.rodata
.LC0:
	.string	"../crypto/x509/t_req.c"
	.text
	.globl	X509_REQ_print_fp
	.type	X509_REQ_print_fp, @function
X509_REQ_print_fp:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$27, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_print@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	X509_REQ_print_fp, .-X509_REQ_print_fp
	.section	.rodata
.LC1:
	.string	"Certificate Request:\n"
.LC2:
	.string	"    Data:\n"
.LC3:
	.string	""
.LC4:
	.string	"%8sVersion: %ld (0x%lx)\n"
.LC5:
	.string	"%8sVersion: Unknown (%ld)\n"
.LC6:
	.string	"        Subject:%c"
.LC7:
	.string	"\n"
	.align 8
.LC8:
	.string	"        Subject Public Key Info:\n"
.LC9:
	.string	"%12sPublic Key Algorithm: "
	.align 8
.LC10:
	.string	"%12sUnable to load Public Key\n"
.LC11:
	.string	"%8sAttributes:\n"
.LC12:
	.string	"%12s(none)\n"
.LC13:
	.string	"%12s"
.LC14:
	.string	" "
.LC15:
	.string	":"
.LC16:
	.string	"unable to print attribute\n"
.LC17:
	.string	"%12sRequested Extensions:\n"
.LC18:
	.string	"%16s"
.LC19:
	.string	"critical"
.LC20:
	.string	": %s\n"
.LC21:
	.string	"%20s"
	.text
	.globl	X509_REQ_print_ex
	.type	X509_REQ_print_ex, @function
X509_REQ_print_ex:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	$0, -32(%rbp)
	movb	$32, -33(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-200(%rbp), %rax
	andl	$983040, %eax
	cmpq	$262144, %rax
	jne	.L15
	movb	$10, -33(%rbp)
	movl	$12, -40(%rbp)
.L15:
	cmpq	$0, -200(%rbp)
	jne	.L16
	movl	$1, -44(%rbp)
.L16:
	movq	-208(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L17
	leaq	.LC1(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$21, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L69
	leaq	.LC2(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L70
.L17:
	movq	-208(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L20
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_version@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L21
	movq	-80(%rbp), %rdi
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movq	-184(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L20
	jmp	.L19
.L21:
	movq	-80(%rbp), %rdx
	leaq	.LC3(%rip), %rdi
	leaq	.LC5(%rip), %rsi
	movq	-184(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L71
.L20:
	movq	-208(%rbp), %rax
	andl	$64, %eax
	testq	%rax, %rax
	jne	.L22
	movsbl	-33(%rbp), %edx
	leaq	.LC6(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L72
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, %rsi
	movq	-200(%rbp), %rcx
	movl	-40(%rbp), %edx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	cmpl	%eax, -44(%rbp)
	jg	.L73
	leaq	.LC7(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L74
.L22:
	movq	-208(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	jne	.L25
	leaq	.LC8(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$33, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L75
	leaq	.LC3(%rip), %rdx
	leaq	.LC9(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L76
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_X509_PUBKEY@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	leaq	-152(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_PUBKEY_get0_param@PLT
	movq	-152(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	testl	%eax, %eax
	jle	.L77
	leaq	.LC7(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L78
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get0_pubkey@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L31
	leaq	.LC3(%rip), %rdx
	leaq	.LC10(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L79
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L25
.L31:
	movq	-96(%rbp), %rsi
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_public@PLT
	testl	%eax, %eax
	jle	.L80
.L25:
	movq	-208(%rbp), %rax
	andl	$2048, %eax
	testq	%rax, %rax
	jne	.L34
	leaq	.LC3(%rip), %rdx
	leaq	.LC11(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L81
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_attr_count@PLT
	testl	%eax, %eax
	jne	.L36
	leaq	.LC3(%rip), %rdx
	leaq	.LC12(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L34
	jmp	.L19
.L36:
	movl	$0, -20(%rbp)
	jmp	.L37
.L54:
	movq	$0, -56(%rbp)
	movl	$0, -64(%rbp)
	movl	$1, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	-20(%rbp), %edx
	movq	-192(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_REQ_get_attr@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_get0_object@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edi
	call	X509_REQ_extension_nid@PLT
	testl	%eax, %eax
	jne	.L82
	leaq	.LC3(%rip), %rdx
	leaq	.LC13(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L83
	movq	-112(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jle	.L41
	movl	$0, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_count@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L84
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L43
.L84:
	nop
	jmp	.L42
.L90:
	nop
.L42:
	movl	-72(%rbp), %edx
	movq	-104(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_ATTRIBUTE_get0_type@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.L41:
	movl	$25, %eax
	subl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.L44
.L46:
	leaq	.LC14(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$1, %eax
	jne	.L85
	subl	$1, -60(%rbp)
.L44:
	cmpl	$0, -60(%rbp)
	jg	.L46
	leaq	.LC15(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L86
	cmpl	$22, -64(%rbp)
	je	.L48
	cmpl	$22, -64(%rbp)
	jg	.L49
	cmpl	$12, -64(%rbp)
	je	.L48
	cmpl	$12, -64(%rbp)
	jl	.L49
	movl	-64(%rbp), %eax
	subl	$18, %eax
	cmpl	$2, %eax
	ja	.L49
.L48:
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L87
	leaq	.LC7(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L88
	jmp	.L19
.L49:
	leaq	.LC16(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L89
	jmp	.L52
.L88:
	nop
.L52:
	addl	$1, -72(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L90
	jmp	.L39
.L82:
	nop
.L39:
	addl	$1, -20(%rbp)
.L37:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_attr_count@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L54
.L34:
	movq	-208(%rbp), %rax
	andl	$256, %eax
	testq	%rax, %rax
	jne	.L55
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_extensions@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L55
	leaq	.LC3(%rip), %rdx
	leaq	.LC17(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L91
	movl	$0, -20(%rbp)
	jmp	.L57
.L66:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -128(%rbp)
	leaq	.LC3(%rip), %rdx
	leaq	.LC18(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L92
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_object@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	testl	%eax, %eax
	jle	.L93
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_critical@PLT
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	.L60
	leaq	.LC19(%rip), %rax
	jmp	.L61
.L60:
	leaq	.LC3(%rip), %rax
.L61:
	leaq	.LC20(%rip), %rsi
	movq	-184(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L94
	movq	-208(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-184(%rbp), %rax
	movl	$20, %ecx
	movq	%rax, %rdi
	call	X509V3_EXT_print@PLT
	testl	%eax, %eax
	jne	.L63
	leaq	.LC3(%rip), %rdx
	leaq	.LC21(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L95
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_data@PLT
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print@PLT
	testl	%eax, %eax
	jle	.L95
.L63:
	leaq	.LC7(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L96
	addl	$1, -20(%rbp)
.L57:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L66
	movq	X509_EXTENSION_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	$0, -32(%rbp)
.L55:
	movq	-208(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	jne	.L67
	leaq	-160(%rbp), %rdx
	leaq	-168(%rbp), %rcx
	movq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_get0_signature@PLT
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_print@PLT
	testl	%eax, %eax
	je	.L97
.L67:
	movl	$1, %eax
	jmp	.L43
.L69:
	nop
	jmp	.L19
.L70:
	nop
	jmp	.L19
.L71:
	nop
	jmp	.L19
.L72:
	nop
	jmp	.L19
.L73:
	nop
	jmp	.L19
.L74:
	nop
	jmp	.L19
.L75:
	nop
	jmp	.L19
.L76:
	nop
	jmp	.L19
.L77:
	nop
	jmp	.L19
.L78:
	nop
	jmp	.L19
.L79:
	nop
	jmp	.L19
.L80:
	nop
	jmp	.L19
.L81:
	nop
	jmp	.L19
.L83:
	nop
	jmp	.L19
.L85:
	nop
	jmp	.L19
.L86:
	nop
	jmp	.L19
.L87:
	nop
	jmp	.L19
.L89:
	nop
	jmp	.L19
.L91:
	nop
	jmp	.L19
.L92:
	nop
	jmp	.L19
.L93:
	nop
	jmp	.L19
.L94:
	nop
	jmp	.L19
.L95:
	nop
	jmp	.L19
.L96:
	nop
	jmp	.L19
.L97:
	nop
.L19:
	movq	X509_EXTENSION_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_EXTENSION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L43:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	X509_REQ_print_ex, .-X509_REQ_print_ex
	.globl	X509_REQ_print
	.type	X509_REQ_print, @function
X509_REQ_print:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_REQ_print_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	X509_REQ_print, .-X509_REQ_print
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"X509_REQ_print_fp"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"X509_REQ_print_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
