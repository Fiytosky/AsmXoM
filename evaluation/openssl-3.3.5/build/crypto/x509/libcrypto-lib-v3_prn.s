	.file	"v3_prn.c"
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
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB161:
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
.LFE161:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_sk_type, @function
ossl_check_CONF_VALUE_sk_type:
.LFB162:
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
.LFE162:
	.size	ossl_check_CONF_VALUE_sk_type, .-ossl_check_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_freefunc_type, @function
ossl_check_CONF_VALUE_freefunc_type:
.LFB165:
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
.LFE165:
	.size	ossl_check_CONF_VALUE_freefunc_type, .-ossl_check_CONF_VALUE_freefunc_type
	.type	ossl_check_const_X509_EXTENSION_sk_type, @function
ossl_check_const_X509_EXTENSION_sk_type:
.LFB450:
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
.LFE450:
	.size	ossl_check_const_X509_EXTENSION_sk_type, .-ossl_check_const_X509_EXTENSION_sk_type
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"%*s"
.LC2:
	.string	"<EMPTY>\n"
.LC3:
	.string	"\n"
.LC4:
	.string	", "
.LC5:
	.string	"%s:%s"
	.text
	.globl	X509V3_EXT_val_prn
	.type	X509V3_EXT_val_prn, @function
X509V3_EXT_val_prn:
.LFB617:
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
	movl	%ecx, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L26
	cmpl	$0, -40(%rbp)
	je	.L16
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L17
.L16:
	leaq	.LC0(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC1(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L17
	leaq	.LC2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L17:
	movl	$0, -4(%rbp)
	jmp	.L18
.L25:
	cmpl	$0, -40(%rbp)
	je	.L19
	cmpl	$0, -4(%rbp)
	jle	.L20
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L20:
	leaq	.LC0(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC1(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L21
.L19:
	cmpl	$0, -4(%rbp)
	jle	.L21
	leaq	.LC4(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L21:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L23
.L22:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L23
.L24:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.LC5(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L23:
	addl	$1, -4(%rbp)
.L18:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L25
	jmp	.L13
.L26:
	nop
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	X509V3_EXT_val_prn, .-X509V3_EXT_val_prn
	.section	.rodata
.LC6:
	.string	"%*s%s"
.LC7:
	.string	"../crypto/x509/v3_prn.c"
	.text
	.globl	X509V3_EXT_print
	.type	X509V3_EXT_print, @function
X509V3_EXT_print:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$1, -44(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_data@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, -60(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_get@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L28
	movq	-80(%rbp), %rsi
	movl	-108(%rbp), %edi
	movq	-104(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	unknown_ext_print
	jmp	.L41
.L28:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	call	*%rax
	movq	%rax, %rcx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_item_d2i@PLT
	movq	%rax, -24(%rbp)
	jmp	.L31
.L30:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rcx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -24(%rbp)
.L31:
	cmpq	$0, -24(%rbp)
	jne	.L32
	movq	-80(%rbp), %rsi
	movl	-108(%rbp), %edi
	movq	-104(%rbp), %rcx
	movl	-60(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	$1, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	unknown_ext_print
	jmp	.L41
.L32:
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-72(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L34
	movl	$0, -44(%rbp)
	jmp	.L35
.L34:
	movq	-32(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	movl	-108(%rbp), %edx
	leaq	.LC6(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L35
.L33:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-72(%rbp), %rax
	movq	64(%rax), %r8
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L37
	movl	$0, -44(%rbp)
	jmp	.L35
.L37:
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	andl	$4, %eax
	movl	%eax, %ecx
	movl	-108(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_val_prn@PLT
	jmp	.L35
.L36:
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-72(%rbp), %rax
	movq	80(%rax), %r8
	movl	-108(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L35
	movl	$0, -44(%rbp)
	jmp	.L35
.L38:
	movl	$0, -44(%rbp)
.L35:
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	leaq	.LC7(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$131, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	jmp	.L40
.L39:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L40:
	movl	-44(%rbp), %eax
.L41:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	X509V3_EXT_print, .-X509V3_EXT_print
	.section	.rodata
.LC8:
	.string	"%*s%s:\n"
.LC9:
	.string	"critical"
.LC10:
	.string	": %s\n"
	.text
	.globl	X509V3_extensions_print
	.type	X509V3_extensions_print, @function
X509V3_extensions_print:
.LFB619:
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
	movl	%r8d, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L43
	movl	$1, %eax
	jmp	.L44
.L43:
	cmpq	$0, -48(%rbp)
	je	.L45
	movq	-48(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	movl	-68(%rbp), %edx
	leaq	.LC8(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$4, -68(%rbp)
.L45:
	movl	$0, -4(%rbp)
	jmp	.L46
.L54:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_object@PLT
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	andl	$8192, %eax
	testq	%rax, %rax
	je	.L47
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$82, %eax
	je	.L47
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$90, %eax
	jne	.L55
.L47:
	cmpl	$0, -68(%rbp)
	je	.L49
	leaq	.LC0(%rip), %rcx
	movl	-68(%rbp), %edx
	leaq	.LC1(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L49
	movl	$0, %eax
	jmp	.L44
.L49:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_critical@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L50
	leaq	.LC9(%rip), %rax
	jmp	.L51
.L50:
	leaq	.LC0(%rip), %rax
.L51:
	leaq	.LC10(%rip), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L52
	movl	$0, %eax
	jmp	.L44
.L52:
	movl	-68(%rbp), %eax
	leal	4(%rax), %ecx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_print@PLT
	testl	%eax, %eax
	jne	.L53
	movl	-68(%rbp), %eax
	leal	4(%rax), %edx
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_data@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print@PLT
.L53:
	leaq	.LC3(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L48
	movl	$0, %eax
	jmp	.L44
.L55:
	nop
.L48:
	addl	$1, -4(%rbp)
.L46:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_EXTENSION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L54
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	X509V3_extensions_print, .-X509V3_extensions_print
	.section	.rodata
.LC11:
	.string	"%*s<Parse Error>"
.LC12:
	.string	"%*s<Not Supported>"
	.text
	.type	unknown_ext_print, @function
unknown_ext_print:
.LFB620:
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
	movl	%r8d, -24(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-32(%rbp), %rax
	andl	$983040, %eax
	cmpq	$196608, %rax
	je	.L57
	cmpq	$196608, %rax
	ja	.L58
	cmpq	$131072, %rax
	je	.L59
	cmpq	$131072, %rax
	ja	.L58
	testq	%rax, %rax
	je	.L60
	cmpq	$65536, %rax
	je	.L61
	jmp	.L58
.L60:
	movl	$0, %eax
	jmp	.L62
.L61:
	cmpl	$0, -36(%rbp)
	je	.L63
	leaq	.LC0(%rip), %rcx
	movl	-24(%rbp), %edx
	leaq	.LC11(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L64
.L63:
	leaq	.LC0(%rip), %rcx
	movl	-24(%rbp), %edx
	leaq	.LC12(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L64:
	movl	$1, %eax
	jmp	.L62
.L59:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$-1, %r8d
	movq	%rax, %rdi
	call	ASN1_parse_dump@PLT
	jmp	.L62
.L57:
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_dump_indent@PLT
	jmp	.L62
.L58:
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	unknown_ext_print, .-unknown_ext_print
	.globl	X509V3_EXT_print_fp
	.type	X509V3_EXT_print_fp, @function
X509V3_EXT_print_fp:
.LFB621:
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
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_fp@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L66
	movl	$0, %eax
	jmp	.L67
.L66:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-40(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_print@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	X509V3_EXT_print_fp, .-X509V3_EXT_print_fp
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
