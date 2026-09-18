	.file	"v3_crld.c"
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
	.type	ossl_check_const_X509_NAME_ENTRY_sk_type, @function
ossl_check_const_X509_NAME_ENTRY_sk_type:
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
	.size	ossl_check_const_X509_NAME_ENTRY_sk_type, .-ossl_check_const_X509_NAME_ENTRY_sk_type
	.type	ossl_check_X509_NAME_ENTRY_sk_type, @function
ossl_check_X509_NAME_ENTRY_sk_type:
.LFB451:
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
.LFE451:
	.size	ossl_check_X509_NAME_ENTRY_sk_type, .-ossl_check_X509_NAME_ENTRY_sk_type
	.type	ossl_check_X509_NAME_ENTRY_freefunc_type, @function
ossl_check_X509_NAME_ENTRY_freefunc_type:
.LFB454:
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
.LFE454:
	.size	ossl_check_X509_NAME_ENTRY_freefunc_type, .-ossl_check_X509_NAME_ENTRY_freefunc_type
	.type	ossl_check_GENERAL_NAME_type, @function
ossl_check_GENERAL_NAME_type:
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
	.size	ossl_check_GENERAL_NAME_type, .-ossl_check_GENERAL_NAME_type
	.type	ossl_check_const_GENERAL_NAME_sk_type, @function
ossl_check_const_GENERAL_NAME_sk_type:
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
	.size	ossl_check_const_GENERAL_NAME_sk_type, .-ossl_check_const_GENERAL_NAME_sk_type
	.type	ossl_check_GENERAL_NAME_sk_type, @function
ossl_check_GENERAL_NAME_sk_type:
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
	.size	ossl_check_GENERAL_NAME_sk_type, .-ossl_check_GENERAL_NAME_sk_type
	.type	ossl_check_GENERAL_NAME_freefunc_type, @function
ossl_check_GENERAL_NAME_freefunc_type:
.LFB532:
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
.LFE532:
	.size	ossl_check_GENERAL_NAME_freefunc_type, .-ossl_check_GENERAL_NAME_freefunc_type
	.type	ossl_check_DIST_POINT_type, @function
ossl_check_DIST_POINT_type:
.LFB539:
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
.LFE539:
	.size	ossl_check_DIST_POINT_type, .-ossl_check_DIST_POINT_type
	.type	ossl_check_const_DIST_POINT_sk_type, @function
ossl_check_const_DIST_POINT_sk_type:
.LFB540:
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
.LFE540:
	.size	ossl_check_const_DIST_POINT_sk_type, .-ossl_check_const_DIST_POINT_sk_type
	.type	ossl_check_DIST_POINT_sk_type, @function
ossl_check_DIST_POINT_sk_type:
.LFB541:
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
.LFE541:
	.size	ossl_check_DIST_POINT_sk_type, .-ossl_check_DIST_POINT_sk_type
	.type	ossl_check_DIST_POINT_compfunc_type, @function
ossl_check_DIST_POINT_compfunc_type:
.LFB542:
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
.LFE542:
	.size	ossl_check_DIST_POINT_compfunc_type, .-ossl_check_DIST_POINT_compfunc_type
	.type	ossl_check_DIST_POINT_freefunc_type, @function
ossl_check_DIST_POINT_freefunc_type:
.LFB544:
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
.LFE544:
	.size	ossl_check_DIST_POINT_freefunc_type, .-ossl_check_DIST_POINT_freefunc_type
	.globl	ossl_v3_crld
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_crld, @object
	.size	ossl_v3_crld, 104
ossl_v3_crld:
	.long	103
	.long	0
	.quad	CRL_DIST_POINTS_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	v2i_crld
	.quad	i2r_crldp
	.quad	0
	.quad	0
	.globl	ossl_v3_freshest_crl
	.align 32
	.type	ossl_v3_freshest_crl, @object
	.size	ossl_v3_freshest_crl, 104
ossl_v3_freshest_crl:
	.long	857
	.long	0
	.quad	CRL_DIST_POINTS_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	v2i_crld
	.quad	i2r_crldp
	.quad	0
	.quad	0
	.section	.rodata
.LC0:
	.string	"../crypto/x509/v3_crld.c"
	.text
	.type	gnames_from_sectname, @function
gnames_from_sectname:
.LFB703:
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
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L36
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_section@PLT
	movq	%rax, -24(%rbp)
	jmp	.L37
.L36:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_parse_list@PLT
	movq	%rax, -24(%rbp)
.L37:
	cmpq	$0, -24(%rbp)
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	v2i_GENERAL_NAMES@PLT
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L40
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_section_free@PLT
	jmp	.L41
.L40:
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
.L41:
	movq	-32(%rbp), %rax
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	gnames_from_sectname, .-gnames_from_sectname
	.section	.rodata
.LC1:
	.string	"fullname"
.LC2:
	.string	"relativename"
	.text
	.type	set_dist_point_name, @function
set_dist_point_name:
.LFB704:
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
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$74, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L44
.L43:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L45
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gnames_from_sectname
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L46
	jmp	.L44
.L45:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L47
	call	X509_NAME_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L48
	movl	$-1, %eax
	jmp	.L49
.L48:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_section@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L50
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L49
.L50:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$4097, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509V3_NAME_from_section@PLT
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_section_free@PLT
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	cmpl	$0, -52(%rbp)
	je	.L57
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L57
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	leal	-1(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L46
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$161, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L44
.L47:
	movl	$0, %eax
	jmp	.L49
.L46:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L53
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$160, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L44
.L53:
	call	DIST_POINT_NAME_new@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L58
	cmpq	$0, -24(%rbp)
	je	.L55
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L56
.L55:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L56:
	movl	$1, %eax
	jmp	.L49
.L57:
	nop
	jmp	.L44
.L58:
	nop
.L44:
	movq	GENERAL_NAME_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	X509_NAME_ENTRY_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_NAME_ENTRY_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$-1, %eax
.L49:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	set_dist_point_name, .-set_dist_point_name
	.section	.rodata
.LC3:
	.string	"Unused"
.LC4:
	.string	"unused"
.LC5:
	.string	"Key Compromise"
.LC6:
	.string	"keyCompromise"
.LC7:
	.string	"CA Compromise"
.LC8:
	.string	"CACompromise"
.LC9:
	.string	"Affiliation Changed"
.LC10:
	.string	"affiliationChanged"
.LC11:
	.string	"Superseded"
.LC12:
	.string	"superseded"
.LC13:
	.string	"Cessation Of Operation"
.LC14:
	.string	"cessationOfOperation"
.LC15:
	.string	"Certificate Hold"
.LC16:
	.string	"certificateHold"
.LC17:
	.string	"Privilege Withdrawn"
.LC18:
	.string	"privilegeWithdrawn"
.LC19:
	.string	"AA Compromise"
.LC20:
	.string	"AACompromise"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	reason_flags, @object
	.size	reason_flags, 240
reason_flags:
	.long	0
	.zero	4
	.quad	.LC3
	.quad	.LC4
	.long	1
	.zero	4
	.quad	.LC5
	.quad	.LC6
	.long	2
	.zero	4
	.quad	.LC7
	.quad	.LC8
	.long	3
	.zero	4
	.quad	.LC9
	.quad	.LC10
	.long	4
	.zero	4
	.quad	.LC11
	.quad	.LC12
	.long	5
	.zero	4
	.quad	.LC13
	.quad	.LC14
	.long	6
	.zero	4
	.quad	.LC15
	.quad	.LC16
	.long	7
	.zero	4
	.quad	.LC17
	.quad	.LC18
	.long	8
	.zero	4
	.quad	.LC19
	.quad	.LC20
	.long	-1
	.zero	4
	.quad	0
	.quad	0
	.text
	.type	set_reasons, @function
set_reasons:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_parse_list@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L61
.L60:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L73
	movl	$0, -28(%rbp)
	jmp	.L64
.L72:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L65
	call	ASN1_BIT_STRING_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L74
.L65:
	leaq	reason_flags(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L66
.L70:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L67
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_set_bit@PLT
	testl	%eax, %eax
	jne	.L75
	jmp	.L63
.L67:
	addq	$24, -24(%rbp)
.L66:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	jmp	.L69
.L75:
	nop
.L69:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L76
	addl	$1, -28(%rbp)
.L64:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L72
	movl	$1, -32(%rbp)
	jmp	.L63
.L73:
	nop
	jmp	.L63
.L74:
	nop
	jmp	.L63
.L76:
	nop
.L63:
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
	movl	-32(%rbp), %eax
.L61:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	set_reasons, .-set_reasons
	.section	.rodata
.LC21:
	.string	""
.LC22:
	.string	"%*s%s:\n%*s"
.LC23:
	.string	", "
.LC24:
	.string	"<EMPTY>\n"
.LC25:
	.string	"\n"
	.text
	.type	print_reasons, @function
print_reasons:
.LFB706:
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
	movl	%ecx, -44(%rbp)
	movl	$1, -4(%rbp)
	movl	-44(%rbp), %eax
	leal	2(%rax), %r9d
	movq	-32(%rbp), %r8
	leaq	.LC21(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC22(%rip), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	leaq	.LC21(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	leaq	reason_flags(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L78
.L82:
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_get_bit@PLT
	testl	%eax, %eax
	je	.L79
	cmpl	$0, -4(%rbp)
	je	.L80
	movl	$0, -4(%rbp)
	jmp	.L81
.L80:
	leaq	.LC23(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L81:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L79:
	addq	$24, -16(%rbp)
.L78:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L82
	cmpl	$0, -4(%rbp)
	je	.L83
	leaq	.LC24(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L84
.L83:
	leaq	.LC25(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L84:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	print_reasons, .-print_reasons
	.section	.rodata
.LC26:
	.string	"reasons"
.LC27:
	.string	"CRLissuer"
	.text
	.type	crldp_from_section, @function
crldp_from_section:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	call	DIST_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L96
	movl	$0, -4(%rbp)
	jmp	.L89
.L94:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_dist_point_name
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L97
	cmpl	$0, -28(%rbp)
	js	.L98
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L93
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	set_reasons
	testl	%eax, %eax
	jne	.L91
	jmp	.L88
.L93:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC27(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L91
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gnames_from_sectname
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L99
	jmp	.L91
.L97:
	nop
.L91:
	addl	$1, -4(%rbp)
.L89:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L94
	movq	-16(%rbp), %rax
	jmp	.L95
.L96:
	nop
	jmp	.L88
.L98:
	nop
	jmp	.L88
.L99:
	nop
.L88:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DIST_POINT_free@PLT
	movl	$0, %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	crldp_from_section, .-crldp_from_section
	.type	v2i_crld, @function
v2i_crld:
.LFB708:
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
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -40(%rbp)
	movl	$0, %edi
	call	ossl_check_DIST_POINT_compfunc_type
	movq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$253, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L101:
	movl	$0, -36(%rbp)
	jmp	.L103
.L113:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L104
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_section@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L115
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	crldp_from_section
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_section_free@PLT
	cmpq	$0, -64(%rbp)
	je	.L116
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_DIST_POINT_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_DIST_POINT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	jmp	.L107
.L104:
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	v2i_GENERAL_NAME@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L117
	call	GENERAL_NAMES_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L109
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$274, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L109:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L110
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$278, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L110:
	movq	$0, -32(%rbp)
	call	DIST_POINT_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L111
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$283, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L111:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_DIST_POINT_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_DIST_POINT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	call	DIST_POINT_NAME_new@PLT
	movq	-64(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L112
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$288, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L112:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	$0, -24(%rbp)
.L107:
	addl	$1, -36(%rbp)
.L103:
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L113
	movq	-48(%rbp), %rax
	jmp	.L114
.L115:
	nop
	jmp	.L102
.L116:
	nop
	jmp	.L102
.L117:
	nop
.L102:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAMES_free@PLT
	movq	DIST_POINT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_DIST_POINT_freefunc_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_DIST_POINT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
.L114:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	v2i_crld, .-v2i_crld
	.type	dpn_cb, @function
dpn_cb:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$1, -20(%rbp)
	je	.L119
	cmpl	$3, -20(%rbp)
	je	.L120
	jmp	.L121
.L119:
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L121
.L120:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	nop
.L121:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	dpn_cb, .-dpn_cb
	.section	.data.rel.ro.local
	.align 32
	.type	DIST_POINT_NAME_aux, @object
	.size	DIST_POINT_NAME_aux, 48
DIST_POINT_NAME_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	dpn_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC28:
	.string	"name.fullname"
.LC29:
	.string	"name.relativename"
	.section	.data.rel.ro
	.align 32
	.type	DIST_POINT_NAME_ch_tt, @object
	.size	DIST_POINT_NAME_ch_tt, 80
DIST_POINT_NAME_ch_tt:
	.quad	140
	.quad	0
	.quad	8
	.quad	.LC28
	.quad	GENERAL_NAME_it
	.quad	138
	.quad	1
	.quad	8
	.quad	.LC29
	.quad	X509_NAME_ENTRY_it
	.text
	.globl	DIST_POINT_NAME_it
	.type	DIST_POINT_NAME_it, @function
DIST_POINT_NAME_it:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	DIST_POINT_NAME_it, .-DIST_POINT_NAME_it
	.globl	d2i_DIST_POINT_NAME
	.type	d2i_DIST_POINT_NAME, @function
d2i_DIST_POINT_NAME:
.LFB711:
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
	call	DIST_POINT_NAME_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	d2i_DIST_POINT_NAME, .-d2i_DIST_POINT_NAME
	.globl	i2d_DIST_POINT_NAME
	.type	i2d_DIST_POINT_NAME, @function
i2d_DIST_POINT_NAME:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	DIST_POINT_NAME_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	i2d_DIST_POINT_NAME, .-i2d_DIST_POINT_NAME
	.globl	DIST_POINT_NAME_new
	.type	DIST_POINT_NAME_new, @function
DIST_POINT_NAME_new:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	DIST_POINT_NAME_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	DIST_POINT_NAME_new, .-DIST_POINT_NAME_new
	.globl	DIST_POINT_NAME_free
	.type	DIST_POINT_NAME_free, @function
DIST_POINT_NAME_free:
.LFB714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	DIST_POINT_NAME_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	DIST_POINT_NAME_free, .-DIST_POINT_NAME_free
	.section	.rodata
.LC30:
	.string	"distpoint"
	.section	.data.rel.ro
	.align 32
	.type	DIST_POINT_seq_tt, @object
	.size	DIST_POINT_seq_tt, 120
DIST_POINT_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC30
	.quad	DIST_POINT_NAME_it
	.quad	137
	.quad	1
	.quad	8
	.quad	.LC26
	.quad	ASN1_BIT_STRING_it
	.quad	141
	.quad	2
	.quad	16
	.quad	.LC27
	.quad	GENERAL_NAME_it
	.text
	.globl	DIST_POINT_it
	.type	DIST_POINT_it, @function
DIST_POINT_it:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	DIST_POINT_it, .-DIST_POINT_it
	.globl	d2i_DIST_POINT
	.type	d2i_DIST_POINT, @function
d2i_DIST_POINT:
.LFB716:
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
	call	DIST_POINT_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	d2i_DIST_POINT, .-d2i_DIST_POINT
	.globl	i2d_DIST_POINT
	.type	i2d_DIST_POINT, @function
i2d_DIST_POINT:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	DIST_POINT_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	i2d_DIST_POINT, .-i2d_DIST_POINT
	.globl	DIST_POINT_new
	.type	DIST_POINT_new, @function
DIST_POINT_new:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	DIST_POINT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	DIST_POINT_new, .-DIST_POINT_new
	.globl	DIST_POINT_free
	.type	DIST_POINT_free, @function
DIST_POINT_free:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	DIST_POINT_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	DIST_POINT_free, .-DIST_POINT_free
	.section	.rodata
.LC31:
	.string	"CRLDistributionPoints"
	.section	.data.rel.ro
	.align 32
	.type	CRL_DIST_POINTS_item_tt, @object
	.size	CRL_DIST_POINTS_item_tt, 40
CRL_DIST_POINTS_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC31
	.quad	DIST_POINT_it
	.text
	.globl	CRL_DIST_POINTS_it
	.type	CRL_DIST_POINTS_it, @function
CRL_DIST_POINTS_it:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	CRL_DIST_POINTS_it, .-CRL_DIST_POINTS_it
	.globl	d2i_CRL_DIST_POINTS
	.type	d2i_CRL_DIST_POINTS, @function
d2i_CRL_DIST_POINTS:
.LFB721:
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
	call	CRL_DIST_POINTS_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	d2i_CRL_DIST_POINTS, .-d2i_CRL_DIST_POINTS
	.globl	i2d_CRL_DIST_POINTS
	.type	i2d_CRL_DIST_POINTS, @function
i2d_CRL_DIST_POINTS:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	CRL_DIST_POINTS_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	i2d_CRL_DIST_POINTS, .-i2d_CRL_DIST_POINTS
	.globl	CRL_DIST_POINTS_new
	.type	CRL_DIST_POINTS_new, @function
CRL_DIST_POINTS_new:
.LFB723:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CRL_DIST_POINTS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	CRL_DIST_POINTS_new, .-CRL_DIST_POINTS_new
	.globl	CRL_DIST_POINTS_free
	.type	CRL_DIST_POINTS_free, @function
CRL_DIST_POINTS_free:
.LFB724:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	CRL_DIST_POINTS_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	CRL_DIST_POINTS_free, .-CRL_DIST_POINTS_free
	.section	.rodata
.LC32:
	.string	"onlyuser"
.LC33:
	.string	"onlyCA"
.LC34:
	.string	"onlysomereasons"
.LC35:
	.string	"indirectCRL"
.LC36:
	.string	"onlyattr"
	.section	.data.rel.ro
	.align 32
	.type	ISSUING_DIST_POINT_seq_tt, @object
	.size	ISSUING_DIST_POINT_seq_tt, 240
ISSUING_DIST_POINT_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC30
	.quad	DIST_POINT_NAME_it
	.quad	137
	.quad	1
	.quad	8
	.quad	.LC32
	.quad	ASN1_FBOOLEAN_it
	.quad	137
	.quad	2
	.quad	12
	.quad	.LC33
	.quad	ASN1_FBOOLEAN_it
	.quad	137
	.quad	3
	.quad	16
	.quad	.LC34
	.quad	ASN1_BIT_STRING_it
	.quad	137
	.quad	4
	.quad	24
	.quad	.LC35
	.quad	ASN1_FBOOLEAN_it
	.quad	137
	.quad	5
	.quad	28
	.quad	.LC36
	.quad	ASN1_FBOOLEAN_it
	.text
	.globl	ISSUING_DIST_POINT_it
	.type	ISSUING_DIST_POINT_it, @function
ISSUING_DIST_POINT_it:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	ISSUING_DIST_POINT_it, .-ISSUING_DIST_POINT_it
	.globl	d2i_ISSUING_DIST_POINT
	.type	d2i_ISSUING_DIST_POINT, @function
d2i_ISSUING_DIST_POINT:
.LFB726:
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
	call	ISSUING_DIST_POINT_it@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	d2i_ISSUING_DIST_POINT, .-d2i_ISSUING_DIST_POINT
	.globl	i2d_ISSUING_DIST_POINT
	.type	i2d_ISSUING_DIST_POINT, @function
i2d_ISSUING_DIST_POINT:
.LFB727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ISSUING_DIST_POINT_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	i2d_ISSUING_DIST_POINT, .-i2d_ISSUING_DIST_POINT
	.globl	ISSUING_DIST_POINT_new
	.type	ISSUING_DIST_POINT_new, @function
ISSUING_DIST_POINT_new:
.LFB728:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ISSUING_DIST_POINT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE728:
	.size	ISSUING_DIST_POINT_new, .-ISSUING_DIST_POINT_new
	.globl	ISSUING_DIST_POINT_free
	.type	ISSUING_DIST_POINT_free, @function
ISSUING_DIST_POINT_free:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ISSUING_DIST_POINT_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	ISSUING_DIST_POINT_free, .-ISSUING_DIST_POINT_free
	.globl	ossl_v3_idp
	.section	.data.rel.ro
	.align 32
	.type	ossl_v3_idp, @object
	.size	ossl_v3_idp, 104
ossl_v3_idp:
	.long	770
	.long	4
	.quad	ISSUING_DIST_POINT_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	v2i_idp
	.quad	i2r_idp
	.quad	0
	.quad	0
	.section	.rodata
.LC37:
	.string	"onlyAA"
.LC38:
	.string	", value="
.LC39:
	.string	"name="
	.text
	.type	v2i_idp, @function
v2i_idp:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -16(%rbp)
	call	ISSUING_DIST_POINT_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L160
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$381, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L161
.L160:
	movl	$0, -4(%rbp)
	jmp	.L162
.L171:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_dist_point_name
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L173
	cmpl	$0, -44(%rbp)
	js	.L174
	leaq	.LC32(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L166
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_value_bool@PLT
	testl	%eax, %eax
	jne	.L164
	jmp	.L161
.L166:
	leaq	.LC33(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L167
	movq	-16(%rbp), %rax
	leaq	12(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_value_bool@PLT
	testl	%eax, %eax
	jne	.L164
	jmp	.L161
.L167:
	leaq	.LC37(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L168
	movq	-16(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_value_bool@PLT
	testl	%eax, %eax
	jne	.L164
	jmp	.L161
.L168:
	leaq	.LC35(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L169
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_value_bool@PLT
	testl	%eax, %eax
	jne	.L164
	jmp	.L161
.L169:
	leaq	.LC34(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L170
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	set_reasons
	testl	%eax, %eax
	jne	.L164
	jmp	.L161
.L170:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$409, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC39(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L161
.L173:
	nop
.L164:
	addl	$1, -4(%rbp)
.L162:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L171
	movq	-16(%rbp), %rax
	jmp	.L172
.L174:
	nop
.L161:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ISSUING_DIST_POINT_free@PLT
	movl	$0, %eax
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	v2i_idp, .-v2i_idp
	.section	.rodata
.LC40:
	.string	"%*s"
	.text
	.type	print_gens, @function
print_gens:
.LFB731:
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
	jmp	.L176
.L178:
	cmpl	$0, -4(%rbp)
	jle	.L177
	leaq	.LC25(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L177:
	movl	-36(%rbp), %eax
	leal	2(%rax), %edx
	leaq	.LC21(%rip), %rcx
	leaq	.LC40(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GENERAL_NAME_print@PLT
	addl	$1, -4(%rbp)
.L176:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_GENERAL_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L178
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	print_gens, .-print_gens
	.section	.rodata
.LC41:
	.string	"%*sFull Name:\n"
.LC42:
	.string	"%*sRelative Name:\n%*s"
	.text
	.type	print_distpoint, @function
print_distpoint:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L181
	leaq	.LC21(%rip), %rcx
	movl	-68(%rbp), %edx
	leaq	.LC41(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_gens
	jmp	.L182
.L181:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %eax
	leal	2(%rax), %edi
	leaq	.LC21(%rip), %r8
	leaq	.LC21(%rip), %rcx
	movl	-68(%rbp), %edx
	leaq	.LC42(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$8520479, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	leaq	.LC25(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L182:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	print_distpoint, .-print_distpoint
	.section	.rodata
.LC43:
	.string	"%*sOnly User Certificates\n"
.LC44:
	.string	"%*sOnly CA Certificates\n"
.LC45:
	.string	"%*sIndirect CRL\n"
.LC46:
	.string	"Only Some Reasons"
	.align 8
.LC47:
	.string	"%*sOnly Attribute Certificates\n"
.LC48:
	.string	"%*s<EMPTY>\n"
	.text
	.type	i2r_idp, @function
i2r_idp:
.LFB733:
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
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L185
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_distpoint
.L185:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L186
	leaq	.LC21(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC43(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L186:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jle	.L187
	leaq	.LC21(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC44(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L187:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jle	.L188
	leaq	.LC21(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC45(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L188:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L189
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-44(%rbp), %ecx
	leaq	.LC46(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	print_reasons
.L189:
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jle	.L190
	leaq	.LC21(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC47(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L190:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L191
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jg	.L191
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jg	.L191
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jg	.L191
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L191
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jg	.L191
	leaq	.LC21(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC48(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L191:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	i2r_idp, .-i2r_idp
	.section	.rodata
.LC49:
	.string	"Reasons"
.LC50:
	.string	"%*sCRL Issuer:\n"
	.text
	.type	i2r_crldp, @function
i2r_crldp:
.LFB734:
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
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L194
.L199:
	cmpl	$0, -4(%rbp)
	jle	.L195
	leaq	.LC25(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L195:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_DIST_POINT_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_distpoint
.L196:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L197
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-60(%rbp), %ecx
	leaq	.LC49(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	print_reasons
.L197:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L198
	leaq	.LC21(%rip), %rcx
	movl	-60(%rbp), %edx
	leaq	.LC50(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_gens
.L198:
	addl	$1, -4(%rbp)
.L194:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_DIST_POINT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L199
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	i2r_crldp, .-i2r_crldp
	.globl	DIST_POINT_set_dpname
	.type	DIST_POINT_set_dpname, @function
DIST_POINT_set_dpname:
.LFB735:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L202
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L203
.L202:
	movl	$1, %eax
	jmp	.L204
.L203:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_dup@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L205
	movl	$0, %eax
	jmp	.L204
.L205:
	movl	$0, -4(%rbp)
	jmp	.L206
.L209:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rsi
	movl	%edx, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry@PLT
	testl	%eax, %eax
	je	.L210
	addl	$1, -4(%rbp)
.L206:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_ENTRY_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L209
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	testl	%eax, %eax
	js	.L211
	movl	$1, %eax
	jmp	.L204
.L210:
	nop
	jmp	.L208
.L211:
	nop
.L208:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movl	$0, %eax
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	DIST_POINT_set_dpname, .-DIST_POINT_set_dpname
	.section	.rodata
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 21
__func__.7:
	.string	"gnames_from_sectname"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 20
__func__.6:
	.string	"set_dist_point_name"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 9
__func__.5:
	.string	"v2i_crld"
.LC51:
	.string	"DIST_POINT_NAME"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	2
	.zero	7
	.quad	0
	.quad	DIST_POINT_NAME_ch_tt
	.quad	2
	.quad	DIST_POINT_NAME_aux
	.quad	24
	.quad	.LC51
	.section	.rodata
.LC52:
	.string	"DIST_POINT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	DIST_POINT_seq_tt
	.quad	3
	.quad	0
	.quad	32
	.quad	.LC52
	.section	.rodata
.LC53:
	.string	"CRL_DIST_POINTS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	0
	.zero	7
	.quad	-1
	.quad	CRL_DIST_POINTS_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC53
	.section	.rodata
.LC54:
	.string	"ISSUING_DIST_POINT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	ISSUING_DIST_POINT_seq_tt
	.quad	6
	.quad	0
	.quad	32
	.quad	.LC54
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 8
__func__.0:
	.string	"v2i_idp"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
