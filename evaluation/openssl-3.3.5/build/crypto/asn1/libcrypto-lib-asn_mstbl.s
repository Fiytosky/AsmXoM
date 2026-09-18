	.file	"asn_mstbl.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/asn_mstbl.c"
	.text
	.type	stbl_module_init, @function
stbl_module_init:
.LFB617:
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
	call	CONF_imodule_get_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L12
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$29, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L13
.L12:
	movl	$0, -4(%rbp)
	jmp	.L14
.L16:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_tcreate
	testl	%eax, %eax
	jne	.L15
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$35, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$219, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L13
.L15:
	addl	$1, -4(%rbp)
.L14:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L16
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	stbl_module_init, .-stbl_module_init
	.type	stbl_module_finish, @function
stbl_module_finish:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_STRING_TABLE_cleanup@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	stbl_module_finish, .-stbl_module_finish
	.section	.rodata
.LC1:
	.string	"stbl_section"
	.text
	.globl	ASN1_add_stable_module
	.type	ASN1_add_stable_module, @function
ASN1_add_stable_module:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	stbl_module_finish(%rip), %rdx
	leaq	stbl_module_init(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CONF_module_add@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	ASN1_add_stable_module, .-ASN1_add_stable_module
	.section	.rodata
.LC2:
	.string	"min"
.LC3:
	.string	"max"
.LC4:
	.string	"mask"
.LC5:
	.string	"flags"
.LC6:
	.string	"nomask"
.LC7:
	.string	"none"
.LC8:
	.string	"field=%s, value=%s"
.LC9:
	.string	"name=%s, value=%s"
	.text
	.type	do_tcreate, @function
do_tcreate:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	$0, -28(%rbp)
	movq	$-1, -40(%rbp)
	movq	$-1, -48(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L20
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_ln2nid@PLT
	movl	%eax, -20(%rbp)
.L20:
	cmpl	$0, -20(%rbp)
	je	.L41
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_parse_list@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L42
	movl	$0, -24(%rbp)
	jmp	.L24
.L34:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L26
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-80(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L27
	jmp	.L22
.L26:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L28
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-80(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L27
	jmp	.L22
.L28:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L29
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_str2mask@PLT
	testl	%eax, %eax
	je	.L44
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L27
	jmp	.L44
.L29:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L45
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L32
	movq	$2, -56(%rbp)
	jmp	.L27
.L32:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L46
	movq	$1, -56(%rbp)
.L27:
	addl	$1, -24(%rbp)
.L24:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -24(%rbp)
	jl	.L34
	movl	$1, -28(%rbp)
	jmp	.L22
.L41:
	nop
	jmp	.L22
.L42:
	nop
	jmp	.L22
.L43:
	nop
	jmp	.L22
.L44:
	nop
	jmp	.L22
.L45:
	nop
	jmp	.L22
.L46:
	nop
.L22:
	cmpl	$0, -28(%rbp)
	jne	.L35
	cmpq	$0, -72(%rbp)
	je	.L36
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L38
.L37:
	movq	-104(%rbp), %rax
.L38:
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$218, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L36:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rcx
	movq	-112(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$218, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L39
.L35:
	movq	-88(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %eax
	movq	%rdi, %r8
	movl	%eax, %edi
	call	ASN1_STRING_TABLE_add@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L39:
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	do_tcreate, .-do_tcreate
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"stbl_module_init"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"do_tcreate"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
