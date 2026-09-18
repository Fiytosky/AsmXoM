	.file	"v3_conf.c"
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
	.type	ossl_check_X509_EXTENSION_sk_type, @function
ossl_check_X509_EXTENSION_sk_type:
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
	.size	ossl_check_X509_EXTENSION_sk_type, .-ossl_check_X509_EXTENSION_sk_type
	.type	ossl_check_X509_EXTENSION_freefunc_type, @function
ossl_check_X509_EXTENSION_freefunc_type:
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
	.size	ossl_check_X509_EXTENSION_freefunc_type, .-ossl_check_X509_EXTENSION_freefunc_type
	.section	.rodata
.LC0:
	.string	"../crypto/x509/v3_conf.c"
.LC1:
	.string	"section=%s, name=%s, value=%s"
.LC2:
	.string	"name=%s, value=%s"
	.text
	.type	X509V3_EXT_nconf_int, @function
X509V3_EXT_nconf_int:
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
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	v3_check_critical
	movl	%eax, -20(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	v3_check_generic
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L16
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	v3_generic_extension
	jmp	.L17
.L16:
	movq	-72(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, %edi
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rbx, %r8
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	do_ext_nconf
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L18
	cmpq	$0, -56(%rbp)
	je	.L19
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$128, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L18
.L19:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$52, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$128, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L18:
	movq	-32(%rbp), %rax
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	X509V3_EXT_nconf_int, .-X509V3_EXT_nconf_int
	.globl	X509V3_EXT_nconf
	.type	X509V3_EXT_nconf, @function
X509V3_EXT_nconf:
.LFB623:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509V3_EXT_nconf_int
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	X509V3_EXT_nconf, .-X509V3_EXT_nconf
	.globl	X509V3_EXT_nconf_nid
	.type	X509V3_EXT_nconf_nid, @function
X509V3_EXT_nconf_nid:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	v3_check_critical
	movl	%eax, -20(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	v3_check_generic
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L23
	movq	-64(%rbp), %rbx
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rcx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	%eax, %edx
	movq	%rbx, %rsi
	call	v3_generic_extension
	jmp	.L24
.L23:
	movq	-64(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_ext_nconf
.L24:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	X509V3_EXT_nconf_nid, .-X509V3_EXT_nconf_nid
	.section	.rodata
.LC3:
	.string	"name=%s,section=%s"
.LC4:
	.string	"name=%s"
	.text
	.type	do_ext_nconf, @function
do_ext_nconf:
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
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movq	%r8, -80(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$130, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L27
.L26:
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	X509V3_EXT_get_nid@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L27
.L28:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L30
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -24(%rbp)
	jmp	.L31
.L30:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_parse_list@PLT
	movq	%rax, -24(%rbp)
.L31:
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L33
.L32:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	leaq	.LC3(%rip), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$105, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	je	.L34
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
.L34:
	movl	$0, %eax
	jmp	.L27
.L33:
	movq	-40(%rbp), %rax
	movq	72(%rax), %r8
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	je	.L35
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
.L35:
	cmpq	$0, -32(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L27
.L29:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-40(%rbp), %rax
	movq	56(%rax), %r8
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L27
.L37:
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L40
.L39:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$118, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$136, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L27
.L40:
	movq	-40(%rbp), %rax
	movq	88(%rax), %r8
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L36
	movl	$0, %eax
	jmp	.L27
.L38:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$124, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$103, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L27
.L36:
	movq	-32(%rbp), %rcx
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	do_ext_i2d
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	jmp	.L42
.L41:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L42:
	movq	-48(%rbp), %rax
.L27:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	do_ext_nconf, .-do_ext_nconf
	.type	do_ext_i2d, @function
do_ext_i2d:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	-32(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L45
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L44:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L47
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L47:
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$163, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L54
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rcx
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L45:
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L50:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rcx
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	X509_EXTENSION_create_by_NID@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524322, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L46
.L51:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-24(%rbp), %rax
	jmp	.L53
.L54:
	nop
.L46:
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$186, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	do_ext_i2d, .-do_ext_i2d
	.globl	X509V3_EXT_i2d
	.type	X509V3_EXT_i2d, @function
X509V3_EXT_i2d:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	X509V3_EXT_get_nid@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$199, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	do_ext_i2d
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	X509V3_EXT_i2d, .-X509V3_EXT_i2d
	.section	.rodata
.LC5:
	.string	"critical,"
	.text
	.type	v3_check_critical, @function
v3_check_critical:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC5(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L59
	addq	$9, -8(%rbp)
	movl	$0, %eax
	jmp	.L60
.L59:
	movl	$1, %eax
.L60:
	testb	%al, %al
	je	.L63
	movl	$0, %eax
	jmp	.L62
.L64:
	addq	$1, -8(%rbp)
.L63:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L64
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	v3_check_critical, .-v3_check_critical
	.section	.rodata
.LC6:
	.string	"DER:"
.LC7:
	.string	"ASN1:"
	.text
	.type	v3_check_generic, @function
v3_check_generic:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC6(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L66
	addq	$4, -16(%rbp)
	movl	$1, %eax
	jmp	.L67
.L66:
	movl	$0, %eax
.L67:
	testb	%al, %al
	je	.L68
	movl	$1, -4(%rbp)
	jmp	.L74
.L68:
	leaq	.LC7(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L70
	addq	$5, -16(%rbp)
	movl	$1, %eax
	jmp	.L71
.L70:
	movl	$0, %eax
.L71:
	testb	%al, %al
	je	.L72
	movl	$2, -4(%rbp)
	jmp	.L74
.L72:
	movl	$0, %eax
	jmp	.L73
.L75:
	addq	$1, -16(%rbp)
.L74:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	ossl_ctype_check@PLT
	testl	%eax, %eax
	jne	.L75
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	v3_check_generic, .-v3_check_generic
	.section	.rodata
.LC8:
	.string	"value=%s"
	.text
	.type	v3_generic_extension, @function
v3_generic_extension:
.LFB630:
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
	movl	%ecx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L77
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$249, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movl	$115, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L77:
	cmpl	$1, -72(%rbp)
	jne	.L79
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -8(%rbp)
	jmp	.L80
.L79:
	cmpl	$2, -72(%rbp)
	jne	.L80
	leaq	-40(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	generic_asn1
	movq	%rax, -8(%rbp)
.L80:
	cmpq	$0, -8(%rbp)
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$260, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-64(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	movl	$116, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L81:
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L78
.L82:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_EXTENSION_create_by_OBJ@PLT
	movq	%rax, -24(%rbp)
.L78:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$279, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	v3_generic_extension, .-v3_generic_extension
	.type	generic_asn1, @function
generic_asn1:
.LFB631:
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
	movq	$0, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_generate_v3@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L85
	movl	$0, %eax
	jmp	.L87
.L85:
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_TYPE@PLT
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	-16(%rbp), %rax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	generic_asn1, .-generic_asn1
	.type	delete_ext, @function
delete_ext:
.LFB632:
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
	movq	%rax, %rdi
	call	X509_EXTENSION_get_object@PLT
	movq	%rax, -8(%rbp)
	jmp	.L89
.L90:
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_delete_ext@PLT
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
.L89:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_get_ext_by_OBJ@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L90
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	delete_ext, .-delete_ext
	.section	.rodata
.LC9:
	.string	"authorityKeyIdentifier"
.LC10:
	.string	"subjectKeyIdentifier"
	.text
	.globl	X509V3_EXT_add_nconf_sk
	.type	X509V3_EXT_add_nconf_sk, @function
X509V3_EXT_add_nconf_sk:
.LFB633:
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
	movq	%rcx, -80(%rbp)
	movl	$-1, -16(%rbp)
	movl	$-1, -20(%rbp)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L92
	movl	$0, %eax
	jmp	.L93
.L92:
	movl	$0, -12(%rbp)
	jmp	.L94
.L97:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L95
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.L96
.L95:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L96
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
.L96:
	addl	$1, -12(%rbp)
.L94:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L97
	movl	$0, -12(%rbp)
	jmp	.L98
.L104:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L99
	cmpl	$0, -16(%rbp)
	js	.L99
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.L100
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -8(%rbp)
	jmp	.L99
.L100:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.L99
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -8(%rbp)
.L99:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	X509V3_EXT_nconf_int
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L101
	movl	$0, %eax
	jmp	.L93
.L101:
	cmpq	$0, -80(%rbp)
	je	.L102
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L103
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	delete_ext
.L103:
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509v3_add_ext@PLT
	testq	%rax, %rax
	jne	.L102
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	movl	$0, %eax
	jmp	.L93
.L102:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_free@PLT
	addl	$1, -12(%rbp)
.L98:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L104
	movl	$1, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	X509V3_EXT_add_nconf_sk, .-X509V3_EXT_add_nconf_sk
	.globl	X509V3_EXT_add_nconf
	.type	X509V3_EXT_add_nconf, @function
X509V3_EXT_add_nconf:
.LFB634:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L106
	movq	-48(%rbp), %rax
	addq	$104, %rax
	movq	%rax, -8(%rbp)
.L106:
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf_sk@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	X509V3_EXT_add_nconf, .-X509V3_EXT_add_nconf
	.globl	X509V3_EXT_CRL_add_nconf
	.type	X509V3_EXT_CRL_add_nconf, @function
X509V3_EXT_CRL_add_nconf:
.LFB635:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L109
	movq	-48(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -8(%rbp)
.L109:
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf_sk@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	X509V3_EXT_CRL_add_nconf, .-X509V3_EXT_CRL_add_nconf
	.globl	X509V3_EXT_REQ_add_nconf
	.type	X509V3_EXT_REQ_add_nconf, @function
X509V3_EXT_REQ_add_nconf:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -32(%rbp)
	leaq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf_sk@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L112
	cmpq	$0, -64(%rbp)
	je	.L112
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L112
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_REQ_add_extensions@PLT
	movl	%eax, -20(%rbp)
.L112:
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
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	X509V3_EXT_REQ_add_nconf, .-X509V3_EXT_REQ_add_nconf
	.globl	X509V3_get_string
	.type	X509V3_get_string, @function
X509V3_get_string:
.LFB637:
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
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L116
.L115:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$402, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L117
.L116:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L118
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %r8
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L117
.L118:
	movl	$0, %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	X509V3_get_string, .-X509V3_get_string
	.globl	X509V3_get_section
	.type	X509V3_get_section, @function
X509V3_get_section:
.LFB638:
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
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L121
.L120:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$413, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L121:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L123
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L122
.L123:
	movl	$0, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	X509V3_get_section, .-X509V3_get_section
	.globl	X509V3_string_free
	.type	X509V3_string_free, @function
X509V3_string_free:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L127
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L124
.L127:
	nop
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	X509V3_string_free, .-X509V3_string_free
	.globl	X509V3_section_free
	.type	X509V3_section_free, @function
X509V3_section_free:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L131
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L128
.L131:
	nop
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	X509V3_section_free, .-X509V3_section_free
	.type	nconf_get_string, @function
nconf_get_string:
.LFB641:
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
	call	NCONF_get_string@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	nconf_get_string, .-nconf_get_string
	.type	nconf_get_section, @function
nconf_get_section:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	nconf_get_section, .-nconf_get_section
	.section	.data.rel.local,"aw"
	.align 32
	.type	nconf_method, @object
	.size	nconf_method, 32
nconf_method:
	.quad	nconf_get_string
	.quad	nconf_get_section
	.quad	0
	.quad	0
	.text
	.globl	X509V3_set_nconf
	.type	X509V3_set_nconf, @function
X509V3_set_nconf:
.LFB643:
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
	jne	.L137
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$457, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L136
.L137:
	movq	-8(%rbp), %rax
	leaq	nconf_method(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	X509V3_set_nconf, .-X509V3_set_nconf
	.globl	X509V3_set_ctx
	.type	X509V3_set_ctx, @function
X509V3_set_ctx:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L140
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$468, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L139
.L140:
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	X509V3_set_ctx, .-X509V3_set_ctx
	.globl	X509V3_set_issuer_pkey
	.type	X509V3_set_issuer_pkey, @function
X509V3_set_issuer_pkey:
.LFB645:
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
	jne	.L143
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$485, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L144
.L143:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L145
	cmpq	$0, -16(%rbp)
	je	.L145
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$489, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L144
.L145:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movl	$1, %eax
.L144:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	X509V3_set_issuer_pkey, .-X509V3_set_issuer_pkey
	.globl	X509V3_EXT_conf
	.type	X509V3_EXT_conf, @function
X509V3_EXT_conf:
.LFB646:
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
	movl	$0, %edi
	call	NCONF_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L147
	movl	$0, %eax
	jmp	.L148
.L147:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_nconf@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-16(%rbp), %rax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	X509V3_EXT_conf, .-X509V3_EXT_conf
	.globl	X509V3_EXT_conf_nid
	.type	X509V3_EXT_conf_nid, @function
X509V3_EXT_conf_nid:
.LFB647:
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
	movl	$0, %edi
	call	NCONF_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L150
	movl	$0, %eax
	jmp	.L151
.L150:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_nconf_nid@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-16(%rbp), %rax
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	X509V3_EXT_conf_nid, .-X509V3_EXT_conf_nid
	.type	conf_lhash_get_string, @function
conf_lhash_get_string:
.LFB648:
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
	call	CONF_get_string@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	conf_lhash_get_string, .-conf_lhash_get_string
	.type	conf_lhash_get_section, @function
conf_lhash_get_section:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_get_section@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	conf_lhash_get_section, .-conf_lhash_get_section
	.section	.data.rel.local
	.align 32
	.type	conf_lhash_method, @object
	.size	conf_lhash_method, 32
conf_lhash_method:
	.quad	conf_lhash_get_string
	.quad	conf_lhash_get_section
	.quad	0
	.quad	0
	.text
	.globl	X509V3_set_conf_lhash
	.type	X509V3_set_conf_lhash, @function
X509V3_set_conf_lhash:
.LFB650:
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
	jne	.L157
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$548, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L157:
	movq	-8(%rbp), %rax
	leaq	conf_lhash_method(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	X509V3_set_conf_lhash, .-X509V3_set_conf_lhash
	.globl	X509V3_EXT_add_conf
	.type	X509V3_EXT_add_conf, @function
X509V3_EXT_add_conf:
.LFB651:
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
	movl	$0, %edi
	call	NCONF_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L160
	movl	$0, %eax
	jmp	.L161
.L160:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_add_nconf@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	-12(%rbp), %eax
.L161:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	X509V3_EXT_add_conf, .-X509V3_EXT_add_conf
	.globl	X509V3_EXT_CRL_add_conf
	.type	X509V3_EXT_CRL_add_conf, @function
X509V3_EXT_CRL_add_conf:
.LFB652:
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
	movl	$0, %edi
	call	NCONF_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L163
	movl	$0, %eax
	jmp	.L164
.L163:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_CRL_add_nconf@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	-12(%rbp), %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	X509V3_EXT_CRL_add_conf, .-X509V3_EXT_CRL_add_conf
	.globl	X509V3_EXT_REQ_add_conf
	.type	X509V3_EXT_REQ_add_conf, @function
X509V3_EXT_REQ_add_conf:
.LFB653:
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
	movl	$0, %edi
	call	NCONF_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L166
	movl	$0, %eax
	jmp	.L167
.L166:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_EXT_REQ_add_nconf@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CONF_set_nconf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	-12(%rbp), %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	X509V3_EXT_REQ_add_conf, .-X509V3_EXT_REQ_add_conf
	.section	.rodata
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 21
__func__.10:
	.string	"X509V3_EXT_nconf_int"
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 13
__func__.9:
	.string	"do_ext_nconf"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 11
__func__.8:
	.string	"do_ext_i2d"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 15
__func__.7:
	.string	"X509V3_EXT_i2d"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 21
__func__.6:
	.string	"v3_generic_extension"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 18
__func__.5:
	.string	"X509V3_get_string"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 19
__func__.4:
	.string	"X509V3_get_section"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"X509V3_set_nconf"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"X509V3_set_ctx"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 23
__func__.1:
	.string	"X509V3_set_issuer_pkey"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"X509V3_set_conf_lhash"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
