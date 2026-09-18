	.file	"v3_san.c"
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
.LFB498:
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
.LFE498:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_sk_type, @function
ossl_check_CONF_VALUE_sk_type:
.LFB499:
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
.LFE499:
	.size	ossl_check_CONF_VALUE_sk_type, .-ossl_check_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_freefunc_type, @function
ossl_check_CONF_VALUE_freefunc_type:
.LFB502:
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
.LFE502:
	.size	ossl_check_CONF_VALUE_freefunc_type, .-ossl_check_CONF_VALUE_freefunc_type
	.type	ossl_check_GENERAL_NAME_type, @function
ossl_check_GENERAL_NAME_type:
.LFB526:
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
.LFE526:
	.size	ossl_check_GENERAL_NAME_type, .-ossl_check_GENERAL_NAME_type
	.type	ossl_check_const_GENERAL_NAME_sk_type, @function
ossl_check_const_GENERAL_NAME_sk_type:
.LFB527:
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
.LFE527:
	.size	ossl_check_const_GENERAL_NAME_sk_type, .-ossl_check_const_GENERAL_NAME_sk_type
	.type	ossl_check_GENERAL_NAME_sk_type, @function
ossl_check_GENERAL_NAME_sk_type:
.LFB528:
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
.LFE528:
	.size	ossl_check_GENERAL_NAME_sk_type, .-ossl_check_GENERAL_NAME_sk_type
	.type	ossl_check_GENERAL_NAME_compfunc_type, @function
ossl_check_GENERAL_NAME_compfunc_type:
.LFB529:
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
.LFE529:
	.size	ossl_check_GENERAL_NAME_compfunc_type, .-ossl_check_GENERAL_NAME_compfunc_type
	.type	ossl_check_GENERAL_NAME_freefunc_type, @function
ossl_check_GENERAL_NAME_freefunc_type:
.LFB531:
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
.LFE531:
	.size	ossl_check_GENERAL_NAME_freefunc_type, .-ossl_check_GENERAL_NAME_freefunc_type
	.globl	ossl_v3_alt
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_alt, @object
	.size	ossl_v3_alt, 312
ossl_v3_alt:
	.long	85
	.long	0
	.quad	GENERAL_NAMES_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2v_GENERAL_NAMES
	.quad	v2i_subject_alt
	.quad	0
	.quad	0
	.quad	0
	.long	86
	.long	0
	.quad	GENERAL_NAMES_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2v_GENERAL_NAMES
	.quad	v2i_issuer_alt
	.quad	0
	.quad	0
	.quad	0
	.long	771
	.long	0
	.quad	GENERAL_NAMES_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2v_GENERAL_NAMES
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.text
	.globl	i2v_GENERAL_NAMES
	.type	i2v_GENERAL_NAMES, @function
i2v_GENERAL_NAMES:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L22
.L26:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	i2v_GENERAL_NAME@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L23
	cmpq	$0, -40(%rbp)
	jne	.L24
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
.L24:
	movl	$0, %eax
	jmp	.L25
.L23:
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	addl	$1, -20(%rbp)
.L22:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L26
	cmpq	$0, -72(%rbp)
	jne	.L27
	call	OPENSSL_sk_new_null@PLT
	jmp	.L25
.L27:
	movq	-72(%rbp), %rax
.L25:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	i2v_GENERAL_NAMES, .-i2v_GENERAL_NAMES
	.section	.rodata
.LC0:
	.string	"othername: SmtpUTF8Mailbox:"
.LC1:
	.string	"othername: XmppAddr:"
.LC2:
	.string	"othername: SRVName:"
.LC3:
	.string	"othername: UPN:"
.LC4:
	.string	"othername: NAIRealm:"
.LC5:
	.string	"othername: %s:"
.LC6:
	.string	"othername:"
.LC7:
	.string	"<unsupported>"
.LC8:
	.string	"X400Name"
.LC9:
	.string	"EdiPartyName"
.LC10:
	.string	"email"
.LC11:
	.string	"DNS"
.LC12:
	.string	"URI"
.LC13:
	.string	"DirName"
.LC14:
	.string	"IP Address"
.LC15:
	.string	"../crypto/x509/v3_san.c"
.LC16:
	.string	"Registered ID"
	.text
	.globl	i2v_GENERAL_NAME
	.type	i2v_GENERAL_NAME, @function
i2v_GENERAL_NAME:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$608, %rsp
	movq	%rdi, -584(%rbp)
	movq	%rsi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-592(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	je	.L29
	cmpl	$8, %eax
	jg	.L30
	cmpl	$7, %eax
	je	.L31
	cmpl	$7, %eax
	jg	.L30
	cmpl	$6, %eax
	je	.L32
	cmpl	$6, %eax
	jg	.L30
	cmpl	$5, %eax
	je	.L33
	cmpl	$5, %eax
	jg	.L30
	cmpl	$4, %eax
	je	.L34
	cmpl	$4, %eax
	jg	.L30
	cmpl	$3, %eax
	je	.L35
	cmpl	$3, %eax
	jg	.L30
	cmpl	$2, %eax
	je	.L36
	cmpl	$2, %eax
	jg	.L30
	testl	%eax, %eax
	je	.L37
	cmpl	$1, %eax
	je	.L38
	jmp	.L30
.L37:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$1211, %eax
	je	.L39
	cmpl	$1211, %eax
	jg	.L40
	cmpl	$1210, %eax
	je	.L41
	cmpl	$1210, %eax
	jg	.L40
	cmpl	$1209, %eax
	je	.L42
	cmpl	$1209, %eax
	jg	.L40
	cmpl	$649, %eax
	je	.L43
	cmpl	$1208, %eax
	jne	.L40
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	jne	.L44
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	leaq	-600(%rbp), %rcx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rsi
	call	x509v3_add_len_value_uchar@PLT
	testl	%eax, %eax
	jne	.L72
.L44:
	movl	$0, %eax
	jmp	.L71
.L42:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	jne	.L48
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	leaq	-600(%rbp), %rcx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rsi
	call	x509v3_add_len_value_uchar@PLT
	testl	%eax, %eax
	jne	.L73
.L48:
	movl	$0, %eax
	jmp	.L71
.L41:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$22, %eax
	jne	.L50
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	leaq	-600(%rbp), %rcx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rsi
	call	x509v3_add_len_value_uchar@PLT
	testl	%eax, %eax
	jne	.L74
.L50:
	movl	$0, %eax
	jmp	.L71
.L43:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	jne	.L52
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	leaq	-600(%rbp), %rcx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rsi
	call	x509v3_add_len_value_uchar@PLT
	testl	%eax, %eax
	jne	.L75
.L52:
	movl	$0, %eax
	jmp	.L71
.L39:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	jne	.L54
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	leaq	-600(%rbp), %rcx
	leaq	.LC4(%rip), %rdi
	movq	%rax, %rsi
	call	x509v3_add_len_value_uchar@PLT
	testl	%eax, %eax
	jne	.L76
.L54:
	movl	$0, %eax
	jmp	.L71
.L40:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	leaq	-576(%rbp), %rax
	movl	$0, %ecx
	movl	$256, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jle	.L56
	leaq	-576(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	leaq	-320(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$300, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L57
.L56:
	leaq	.LC6(%rip), %rcx
	leaq	-320(%rbp), %rax
	movl	$300, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcpy@PLT
.L57:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$22, %eax
	jne	.L58
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-600(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	x509v3_add_len_value_uchar@PLT
	testl	%eax, %eax
	je	.L58
	movq	-600(%rbp), %rax
	jmp	.L71
.L58:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	jne	.L59
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rsi
	leaq	-600(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	x509v3_add_len_value_uchar@PLT
	testl	%eax, %eax
	je	.L59
	movq	-600(%rbp), %rax
	jmp	.L71
.L59:
	leaq	-600(%rbp), %rdx
	leaq	.LC7(%rip), %rcx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L71
.L72:
	nop
	jmp	.L30
.L73:
	nop
	jmp	.L30
.L74:
	nop
	jmp	.L30
.L75:
	nop
	jmp	.L30
.L76:
	nop
	jmp	.L30
.L77:
	nop
	jmp	.L30
.L35:
	leaq	-600(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	leaq	.LC8(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	jne	.L78
	movl	$0, %eax
	jmp	.L71
.L33:
	leaq	-600(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	leaq	.LC9(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	jne	.L79
	movl	$0, %eax
	jmp	.L71
.L38:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	leaq	-600(%rbp), %rcx
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rsi
	call	x509v3_add_len_value_uchar@PLT
	testl	%eax, %eax
	jne	.L80
	movl	$0, %eax
	jmp	.L71
.L36:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	leaq	-600(%rbp), %rcx
	leaq	.LC11(%rip), %rdi
	movq	%rax, %rsi
	call	x509v3_add_len_value_uchar@PLT
	testl	%eax, %eax
	jne	.L81
	movl	$0, %eax
	jmp	.L71
.L32:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	leaq	-600(%rbp), %rcx
	leaq	.LC12(%rip), %rdi
	movq	%rax, %rsi
	call	x509v3_add_len_value_uchar@PLT
	testl	%eax, %eax
	jne	.L82
	movl	$0, %eax
	jmp	.L71
.L34:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-576(%rbp), %rcx
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_NAME_oneline@PLT
	testq	%rax, %rax
	je	.L66
	leaq	-600(%rbp), %rdx
	leaq	-576(%rbp), %rax
	leaq	.LC13(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	jne	.L83
.L66:
	movl	$0, %eax
	jmp	.L71
.L31:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-592(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ipaddr_to_asc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L68
	leaq	-600(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC14(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	jne	.L69
.L68:
	movq	$0, -600(%rbp)
.L69:
	leaq	.LC15(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$195, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L30
.L29:
	movq	-592(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-576(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	i2t_ASN1_OBJECT@PLT
	leaq	-600(%rbp), %rdx
	leaq	-576(%rbp), %rax
	leaq	.LC16(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509V3_add_value@PLT
	testl	%eax, %eax
	jne	.L84
	movl	$0, %eax
	jmp	.L71
.L78:
	nop
	jmp	.L30
.L79:
	nop
	jmp	.L30
.L80:
	nop
	jmp	.L30
.L81:
	nop
	jmp	.L30
.L82:
	nop
	jmp	.L30
.L83:
	nop
	jmp	.L30
.L84:
	nop
.L30:
	movq	-600(%rbp), %rax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	i2v_GENERAL_NAME, .-i2v_GENERAL_NAME
	.section	.rodata
.LC17:
	.string	"othername:<unsupported>"
	.align 8
.LC18:
	.string	"othername:SmtpUTF8Mailbox:%.*s"
.LC19:
	.string	"othername:XmppAddr:%.*s"
.LC20:
	.string	"othername:SRVName:%.*s"
.LC21:
	.string	"othername:UPN:%.*s"
.LC22:
	.string	"othername:NAIRealm:%.*s"
.LC23:
	.string	"X400Name:<unsupported>"
.LC24:
	.string	"EdiPartyName:<unsupported>"
.LC25:
	.string	"email:"
.LC26:
	.string	"DNS:"
.LC27:
	.string	"URI:"
.LC28:
	.string	"DirName:"
.LC29:
	.string	"IP Address:%s"
.LC30:
	.string	"Registered ID:"
	.text
	.globl	GENERAL_NAME_print
	.type	GENERAL_NAME_print, @function
GENERAL_NAME_print:
.LFB624:
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
	movl	(%rax), %eax
	cmpl	$8, %eax
	je	.L86
	cmpl	$8, %eax
	jg	.L87
	cmpl	$7, %eax
	je	.L88
	cmpl	$7, %eax
	jg	.L87
	cmpl	$6, %eax
	je	.L89
	cmpl	$6, %eax
	jg	.L87
	cmpl	$5, %eax
	je	.L90
	cmpl	$5, %eax
	jg	.L87
	cmpl	$4, %eax
	je	.L91
	cmpl	$4, %eax
	jg	.L87
	cmpl	$3, %eax
	je	.L92
	cmpl	$3, %eax
	jg	.L87
	cmpl	$2, %eax
	je	.L93
	cmpl	$2, %eax
	jg	.L87
	testl	%eax, %eax
	je	.L94
	cmpl	$1, %eax
	je	.L95
	jmp	.L87
.L94:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -12(%rbp)
	cmpl	$1210, -12(%rbp)
	jne	.L96
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$22, %eax
	jne	.L97
.L96:
	cmpl	$1210, -12(%rbp)
	je	.L98
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$12, %eax
	je	.L98
.L97:
	leaq	.LC17(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L87
.L98:
	cmpl	$1211, -12(%rbp)
	je	.L99
	cmpl	$1211, -12(%rbp)
	jg	.L100
	cmpl	$1210, -12(%rbp)
	je	.L101
	cmpl	$1210, -12(%rbp)
	jg	.L100
	cmpl	$1209, -12(%rbp)
	je	.L102
	cmpl	$1209, -12(%rbp)
	jg	.L100
	cmpl	$649, -12(%rbp)
	je	.L103
	cmpl	$1208, -12(%rbp)
	jne	.L100
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	leaq	.LC18(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L104
.L102:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	leaq	.LC19(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L104
.L101:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	leaq	.LC20(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L104
.L103:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	leaq	.LC21(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L104
.L99:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	leaq	.LC22(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L104
.L100:
	leaq	.LC17(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	nop
.L104:
	jmp	.L87
.L92:
	leaq	.LC23(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L87
.L90:
	leaq	.LC24(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L87
.L95:
	leaq	.LC25(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print@PLT
	jmp	.L87
.L93:
	leaq	.LC26(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print@PLT
	jmp	.L87
.L89:
	leaq	.LC27(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print@PLT
	jmp	.L87
.L91:
	leaq	.LC28(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	$8520479, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	jmp	.L87
.L88:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_ipaddr_to_asc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L105
	movl	$0, %eax
	jmp	.L106
.L105:
	movq	-8(%rbp), %rdx
	leaq	.LC29(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC15(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$290, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L87
.L86:
	leaq	.LC30(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	nop
.L87:
	movl	$1, %eax
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	GENERAL_NAME_print, .-GENERAL_NAME_print
	.section	.rodata
.LC31:
	.string	"issuer"
.LC32:
	.string	"copy"
	.text
	.type	v2i_issuer_alt, @function
v2i_issuer_alt:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -24(%rbp)
	movl	$0, %edi
	call	ossl_check_GENERAL_NAME_compfunc_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$310, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L109
.L108:
	movl	$0, -20(%rbp)
	jmp	.L110
.L116:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L111
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L111
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L111
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	copy_issuer
	testl	%eax, %eax
	jne	.L114
	jmp	.L113
.L111:
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	v2i_GENERAL_NAME@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L117
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
.L114:
	addl	$1, -20(%rbp)
.L110:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L116
	movq	-32(%rbp), %rax
	jmp	.L109
.L117:
	nop
.L113:
	movq	GENERAL_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
.L109:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	v2i_issuer_alt, .-v2i_issuer_alt
	.type	copy_issuer, @function
copy_issuer:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L119
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L119
	movl	$1, %eax
	jmp	.L120
.L119:
	cmpq	$0, -72(%rbp)
	je	.L121
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L122
.L121:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$347, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L123
.L122:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	$-1, %edx
	movl	$85, %esi
	movq	%rax, %rdi
	call	X509_get_ext_by_NID@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L124
	movl	$1, %eax
	jmp	.L120
.L124:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_get_ext@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L125
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_d2i@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L126
.L125:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$355, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L123
.L126:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_reserve@PLT
	testl	%eax, %eax
	jne	.L127
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$361, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L123
.L127:
	movl	$0, -28(%rbp)
	jmp	.L128
.L129:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_type
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	addl	$1, -28(%rbp)
.L128:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L129
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$1, %eax
	jmp	.L120
.L123:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
.L120:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	copy_issuer, .-copy_issuer
	.section	.rodata
.LC33:
	.string	"move"
	.text
	.type	v2i_subject_alt, @function
v2i_subject_alt:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -24(%rbp)
	movl	$0, %edi
	call	ossl_check_GENERAL_NAME_compfunc_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L131
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$390, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L132
.L131:
	movl	$0, -20(%rbp)
	jmp	.L133
.L141:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L134
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L134
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_email
	testl	%eax, %eax
	jne	.L137
	jmp	.L136
.L134:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L138
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L138
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L138
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	copy_email
	testl	%eax, %eax
	jne	.L137
	jmp	.L136
.L138:
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	v2i_GENERAL_NAME@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L142
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
.L137:
	addl	$1, -20(%rbp)
.L133:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L141
	movq	-32(%rbp), %rax
	jmp	.L132
.L142:
	nop
.L136:
	movq	GENERAL_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
.L132:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	v2i_subject_alt, .-v2i_subject_alt
	.type	copy_email, @function
copy_email:
.LFB628:
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
	movl	%edx, -84(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$-1, -44(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L144
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L144
	movl	$1, %eax
	jmp	.L145
.L144:
	cmpq	$0, -72(%rbp)
	je	.L146
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L147
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L147
.L146:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$434, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L145
.L147:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L148
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -24(%rbp)
	jmp	.L150
.L148:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	X509_REQ_get_subject_name@PLT
	movq	%rax, -24(%rbp)
	jmp	.L150
.L156:
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_entry@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_get_data@PLT
	movq	%rax, %rdi
	call	ASN1_STRING_dup@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L151
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_NAME_delete_entry@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_ENTRY_free@PLT
	subl	$1, -44(%rbp)
.L151:
	cmpq	$0, -32(%rbp)
	je	.L152
	call	GENERAL_NAME_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L153
.L152:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$453, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L154
.L153:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_type
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L155
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$460, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L154
.L155:
	movq	$0, -40(%rbp)
.L150:
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	X509_NAME_get_index_by_NID@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L156
	movl	$1, %eax
	jmp	.L145
.L154:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_IA5STRING_free@PLT
	movl	$0, %eax
.L145:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	copy_email, .-copy_email
	.globl	v2i_GENERAL_NAMES
	.type	v2i_GENERAL_NAMES, @function
v2i_GENERAL_NAMES:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -24(%rbp)
	movl	$0, %edi
	call	ossl_check_GENERAL_NAME_compfunc_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L158
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$486, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L159
.L158:
	movl	$0, -20(%rbp)
	jmp	.L160
.L163:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	v2i_GENERAL_NAME@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L165
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	addl	$1, -20(%rbp)
.L160:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L163
	movq	-32(%rbp), %rax
	jmp	.L159
.L165:
	nop
.L162:
	movq	GENERAL_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
.L159:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	v2i_GENERAL_NAMES, .-v2i_GENERAL_NAMES
	.globl	v2i_GENERAL_NAME
	.type	v2i_GENERAL_NAME, @function
v2i_GENERAL_NAME:
.LFB630:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$0, %edi
	call	v2i_GENERAL_NAME_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	v2i_GENERAL_NAME, .-v2i_GENERAL_NAME
	.section	.rodata
.LC34:
	.string	"value=%s"
	.text
	.globl	a2i_GENERAL_NAME
	.type	a2i_GENERAL_NAME, @function
a2i_GENERAL_NAME:
.LFB631:
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
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movl	%r9d, -64(%rbp)
	movb	$0, -1(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L169
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$518, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L170
.L169:
	cmpq	$0, -40(%rbp)
	je	.L171
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L172
.L171:
	call	GENERAL_NAME_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L172
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$527, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L170
.L172:
	cmpl	$8, -60(%rbp)
	je	.L173
	cmpl	$8, -60(%rbp)
	jg	.L174
	cmpl	$7, -60(%rbp)
	je	.L175
	cmpl	$7, -60(%rbp)
	jg	.L174
	cmpl	$6, -60(%rbp)
	je	.L176
	cmpl	$6, -60(%rbp)
	jg	.L174
	cmpl	$4, -60(%rbp)
	je	.L177
	cmpl	$4, -60(%rbp)
	jg	.L174
	cmpl	$0, -60(%rbp)
	je	.L178
	cmpl	$0, -60(%rbp)
	js	.L174
	movl	-60(%rbp), %eax
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L174
.L176:
	movb	$1, -1(%rbp)
	jmp	.L179
.L173:
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L180
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$543, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rax, %rcx
	movl	$119, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L181
.L180:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L179
.L175:
	cmpl	$0, -64(%rbp)
	je	.L182
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	a2i_IPADDRESS_NC@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L183
.L182:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	a2i_IPADDRESS@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L183:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L190
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$557, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	leaq	.LC34(%rip), %rdx
	movq	%rax, %rcx
	movl	$118, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L181
.L177:
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_dirname
	testl	%eax, %eax
	jne	.L191
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$565, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$149, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L181
.L178:
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_othername
	testl	%eax, %eax
	jne	.L192
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$572, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L181
.L174:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$577, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L181
.L190:
	nop
	jmp	.L179
.L191:
	nop
	jmp	.L179
.L192:
	nop
.L179:
	cmpb	$0, -1(%rbp)
	je	.L187
	call	ASN1_IA5STRING_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L188
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L187
.L188:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_IA5STRING_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$587, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L181
.L187:
	movq	-16(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	jmp	.L170
.L181:
	cmpq	$0, -40(%rbp)
	jne	.L189
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
.L189:
	movl	$0, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	a2i_GENERAL_NAME, .-a2i_GENERAL_NAME
	.section	.rodata
.LC35:
	.string	"RID"
.LC36:
	.string	"IP"
.LC37:
	.string	"dirName"
.LC38:
	.string	"otherName"
.LC39:
	.string	"name=%s"
	.text
	.globl	v2i_GENERAL_NAME_ex
	.type	v2i_GENERAL_NAME_ex, @function
v2i_GENERAL_NAME_ex:
.LFB632:
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
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L194
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$614, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L195
.L194:
	leaq	.LC10(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L196
	movl	$1, -4(%rbp)
	jmp	.L197
.L196:
	leaq	.LC12(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L198
	movl	$6, -4(%rbp)
	jmp	.L197
.L198:
	leaq	.LC11(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L199
	movl	$2, -4(%rbp)
	jmp	.L197
.L199:
	leaq	.LC35(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L200
	movl	$8, -4(%rbp)
	jmp	.L197
.L200:
	leaq	.LC36(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L201
	movl	$7, -4(%rbp)
	jmp	.L197
.L201:
	leaq	.LC37(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L202
	movl	$4, -4(%rbp)
	jmp	.L197
.L202:
	leaq	.LC38(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_v3_name_cmp@PLT
	testl	%eax, %eax
	jne	.L203
	movl	$0, -4(%rbp)
	jmp	.L197
.L203:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$633, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-16(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	movq	%rax, %rcx
	movl	$117, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L195
.L197:
	movl	-68(%rbp), %r8d
	movq	-24(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	a2i_GENERAL_NAME@PLT
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	v2i_GENERAL_NAME_ex, .-v2i_GENERAL_NAME_ex
	.type	do_othername, @function
do_othername:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	-64(%rbp), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L205
	movl	$0, %eax
	jmp	.L206
.L205:
	call	OTHERNAME_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L207
	movl	$0, %eax
	jmp	.L206
.L207:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_generate_v3@PLT
	movq	%rax, 8(%rbx)
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.L212
	movq	-32(%rbp), %rax
	subq	-64(%rbp), %rax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC15(%rip), %rdx
	movq	-64(%rbp), %rax
	movl	$659, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L213
	movq	-56(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, (%rbx)
	leaq	.LC15(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$663, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L214
	movl	$1, %eax
	jmp	.L206
.L212:
	nop
	jmp	.L209
.L213:
	nop
	jmp	.L209
.L214:
	nop
.L209:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OTHERNAME_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
	movl	$0, %eax
.L206:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	do_othername, .-do_othername
	.section	.rodata
.LC40:
	.string	"section=%s"
	.text
	.type	do_dirname, @function
do_dirname:
.LFB634:
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
	call	X509_NAME_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L222
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_section@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L218
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movl	$684, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	leaq	.LC40(%rip), %rdx
	movq	%rax, %rcx
	movl	$150, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L217
.L218:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$4097, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509V3_NAME_from_section@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L223
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L217
.L222:
	nop
	jmp	.L217
.L223:
	nop
.L217:
	cmpl	$0, -4(%rbp)
	jne	.L220
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
.L220:
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_section_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	do_dirname, .-do_dirname
	.section	.rodata
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 15
__func__.7:
	.string	"v2i_issuer_alt"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 12
__func__.6:
	.string	"copy_issuer"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 16
__func__.5:
	.string	"v2i_subject_alt"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 11
__func__.4:
	.string	"copy_email"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"v2i_GENERAL_NAMES"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"a2i_GENERAL_NAME"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"v2i_GENERAL_NAME_ex"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"do_dirname"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
