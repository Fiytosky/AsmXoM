	.file	"v3_tlsf.c"
	.text
	.type	ossl_check_ASN1_INTEGER_type, @function
ossl_check_ASN1_INTEGER_type:
.LFB63:
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
.LFE63:
	.size	ossl_check_ASN1_INTEGER_type, .-ossl_check_ASN1_INTEGER_type
	.type	ossl_check_const_ASN1_INTEGER_sk_type, @function
ossl_check_const_ASN1_INTEGER_sk_type:
.LFB64:
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
.LFE64:
	.size	ossl_check_const_ASN1_INTEGER_sk_type, .-ossl_check_const_ASN1_INTEGER_sk_type
	.type	ossl_check_ASN1_INTEGER_sk_type, @function
ossl_check_ASN1_INTEGER_sk_type:
.LFB65:
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
.LFE65:
	.size	ossl_check_ASN1_INTEGER_sk_type, .-ossl_check_ASN1_INTEGER_sk_type
	.type	ossl_check_ASN1_INTEGER_freefunc_type, @function
ossl_check_ASN1_INTEGER_freefunc_type:
.LFB68:
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
.LFE68:
	.size	ossl_check_ASN1_INTEGER_freefunc_type, .-ossl_check_ASN1_INTEGER_freefunc_type
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
.LFB167:
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
.LFE167:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.section	.rodata
.LC0:
	.string	"TLS_FEATURE"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	TLS_FEATURE_item_tt, @object
	.size	TLS_FEATURE_item_tt, 40
TLS_FEATURE_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_INTEGER_it
	.text
	.type	TLS_FEATURE_it, @function
TLS_FEATURE_it:
.LFB703:
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
.LFE703:
	.size	TLS_FEATURE_it, .-TLS_FEATURE_it
	.globl	TLS_FEATURE_new
	.type	TLS_FEATURE_new, @function
TLS_FEATURE_new:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	TLS_FEATURE_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	TLS_FEATURE_new, .-TLS_FEATURE_new
	.globl	TLS_FEATURE_free
	.type	TLS_FEATURE_free, @function
TLS_FEATURE_free:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	TLS_FEATURE_it
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
.LFE705:
	.size	TLS_FEATURE_free, .-TLS_FEATURE_free
	.globl	ossl_v3_tls_feature
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_v3_tls_feature, @object
	.size	ossl_v3_tls_feature, 104
ossl_v3_tls_feature:
	.long	1020
	.long	0
	.quad	TLS_FEATURE_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2v_TLS_FEATURE
	.quad	v2i_TLS_FEATURE
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC1:
	.string	"status_request"
.LC2:
	.string	"status_request_v2"
	.section	.data.rel.local,"aw"
	.align 32
	.type	tls_feature_tbl, @object
	.size	tls_feature_tbl, 32
tls_feature_tbl:
	.quad	5
	.quad	.LC1
	.quad	17
	.quad	.LC2
	.text
	.type	i2v_TLS_FEATURE, @function
i2v_TLS_FEATURE:
.LFB706:
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
	jmp	.L21
.L28:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_INTEGER_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L22
.L25:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	tls_feature_tbl(%rip), %rax
	movq	(%rdx,%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L30
	addq	$1, -16(%rbp)
.L22:
	cmpq	$1, -16(%rbp)
	jbe	.L25
	jmp	.L24
.L30:
	nop
.L24:
	cmpq	$1, -16(%rbp)
	ja	.L26
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+tls_feature_tbl(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509V3_add_value@PLT
	jmp	.L27
.L26:
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509V3_add_value_int@PLT
.L27:
	addl	$1, -4(%rbp)
.L21:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_INTEGER_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L28
	movq	-56(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	i2v_TLS_FEATURE, .-i2v_TLS_FEATURE
	.section	.rodata
.LC3:
	.string	"../crypto/x509/v3_tlsf.c"
.LC4:
	.string	", value="
.LC5:
	.string	"name="
	.text
	.type	v2i_TLS_FEATURE, @function
v2i_TLS_FEATURE:
.LFB707:
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
	movq	$0, -32(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L32
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L48
.L32:
	movl	$0, -36(%rbp)
	jmp	.L34
.L47:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L36
.L35:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L36:
	movq	$0, -48(%rbp)
	jmp	.L37
.L40:
	movq	-48(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+tls_feature_tbl(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L49
	addq	$1, -48(%rbp)
.L37:
	cmpq	$1, -48(%rbp)
	jbe	.L40
	jmp	.L39
.L49:
	nop
.L39:
	cmpq	$1, -48(%rbp)
	ja	.L41
	movq	-48(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	tls_feature_tbl(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L42
.L41:
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L43
	movq	-80(%rbp), %rax
	cmpq	%rax, -24(%rbp)
	je	.L43
	cmpq	$0, -56(%rbp)
	js	.L43
	cmpq	$65535, -56(%rbp)
	jle	.L42
.L43:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-72(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L44
.L42:
	call	ASN1_INTEGER_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L45
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L45
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_INTEGER_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_INTEGER_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jg	.L46
.L45:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L44
.L46:
	movq	$0, -32(%rbp)
	addl	$1, -36(%rbp)
.L34:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -36(%rbp)
	jl	.L47
	movq	-64(%rbp), %rax
	jmp	.L48
.L44:
	movq	ASN1_INTEGER_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_INTEGER_freefunc_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_INTEGER_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movl	$0, %eax
.L48:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	v2i_TLS_FEATURE, .-v2i_TLS_FEATURE
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	0
	.zero	7
	.quad	-1
	.quad	TLS_FEATURE_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"v2i_TLS_FEATURE"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
