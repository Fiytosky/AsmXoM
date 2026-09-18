	.file	"v3_ist.c"
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
	.section	.rodata
.LC0:
	.string	"signTool"
.LC1:
	.string	"cATool"
.LC2:
	.string	"signToolCert"
.LC3:
	.string	"cAToolCert"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ISSUER_SIGN_TOOL_seq_tt, @object
	.size	ISSUER_SIGN_TOOL_seq_tt, 160
ISSUER_SIGN_TOOL_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_UTF8STRING_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_UTF8STRING_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	ASN1_UTF8STRING_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC3
	.quad	ASN1_UTF8STRING_it
	.text
	.globl	ISSUER_SIGN_TOOL_it
	.type	ISSUER_SIGN_TOOL_it, @function
ISSUER_SIGN_TOOL_it:
.LFB623:
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
.LFE623:
	.size	ISSUER_SIGN_TOOL_it, .-ISSUER_SIGN_TOOL_it
	.globl	d2i_ISSUER_SIGN_TOOL
	.type	d2i_ISSUER_SIGN_TOOL, @function
d2i_ISSUER_SIGN_TOOL:
.LFB624:
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
	call	ISSUER_SIGN_TOOL_it@PLT
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
.LFE624:
	.size	d2i_ISSUER_SIGN_TOOL, .-d2i_ISSUER_SIGN_TOOL
	.globl	i2d_ISSUER_SIGN_TOOL
	.type	i2d_ISSUER_SIGN_TOOL, @function
i2d_ISSUER_SIGN_TOOL:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ISSUER_SIGN_TOOL_it@PLT
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
.LFE625:
	.size	i2d_ISSUER_SIGN_TOOL, .-i2d_ISSUER_SIGN_TOOL
	.globl	ISSUER_SIGN_TOOL_new
	.type	ISSUER_SIGN_TOOL_new, @function
ISSUER_SIGN_TOOL_new:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ISSUER_SIGN_TOOL_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ISSUER_SIGN_TOOL_new, .-ISSUER_SIGN_TOOL_new
	.globl	ISSUER_SIGN_TOOL_free
	.type	ISSUER_SIGN_TOOL_free, @function
ISSUER_SIGN_TOOL_free:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ISSUER_SIGN_TOOL_it@PLT
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
.LFE627:
	.size	ISSUER_SIGN_TOOL_free, .-ISSUER_SIGN_TOOL_free
	.section	.rodata
.LC4:
	.string	"../crypto/x509/v3_ist.c"
	.text
	.type	v2i_issuer_sign_tool, @function
v2i_issuer_sign_tool:
.LFB628:
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
	call	ISSUER_SIGN_TOOL_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	movl	$0, -4(%rbp)
	jmp	.L19
.L31:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L22
	call	ASN1_UTF8STRING_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L21
.L23:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L22:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L25
	call	ASN1_UTF8STRING_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L21
.L26:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L25:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L27
	call	ASN1_UTF8STRING_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L21
.L28:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L27:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L29
	call	ASN1_UTF8STRING_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L21
.L30:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L29:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L32:
	nop
.L21:
	addl	$1, -4(%rbp)
.L19:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L31
	movq	-16(%rbp), %rax
	jmp	.L18
.L24:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ISSUER_SIGN_TOOL_free@PLT
	movl	$0, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	v2i_issuer_sign_tool, .-v2i_issuer_sign_tool
	.section	.rodata
.LC5:
	.string	""
.LC6:
	.string	"%*ssignTool    : "
.LC7:
	.string	"\n"
.LC8:
	.string	"%*scATool      : "
.LC9:
	.string	"%*ssignToolCert: "
.LC10:
	.string	"%*scAToolCert  : "
	.text
	.type	i2r_issuer_sign_tool, @function
i2r_issuer_sign_tool:
.LFB629:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L36
	leaq	.LC5(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC6(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	$1, -4(%rbp)
.L36:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L37
	cmpl	$1, -4(%rbp)
	jne	.L38
	leaq	.LC7(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L38:
	leaq	.LC5(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC8(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	$1, -4(%rbp)
.L37:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L39
	cmpl	$1, -4(%rbp)
	jne	.L40
	leaq	.LC7(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L40:
	leaq	.LC5(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC9(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	$1, -4(%rbp)
.L39:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L41
	cmpl	$1, -4(%rbp)
	jne	.L42
	leaq	.LC7(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L42:
	leaq	.LC5(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC10(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	$1, -4(%rbp)
.L41:
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	i2r_issuer_sign_tool, .-i2r_issuer_sign_tool
	.globl	ossl_v3_issuer_sign_tool
	.section	.data.rel.ro
	.align 32
	.type	ossl_v3_issuer_sign_tool, @object
	.size	ossl_v3_issuer_sign_tool, 104
ossl_v3_issuer_sign_tool:
	.long	1008
	.long	4
	.quad	ISSUER_SIGN_TOOL_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	v2i_issuer_sign_tool
	.quad	i2r_issuer_sign_tool
	.quad	0
	.quad	0
	.section	.rodata
.LC11:
	.string	"ISSUER_SIGN_TOOL"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	ISSUER_SIGN_TOOL_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC11
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"v2i_issuer_sign_tool"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"i2r_issuer_sign_tool"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
