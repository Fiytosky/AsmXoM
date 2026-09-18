	.file	"v3_info.c"
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
	.type	ossl_check_ACCESS_DESCRIPTION_type, @function
ossl_check_ACCESS_DESCRIPTION_type:
.LFB521:
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
.LFE521:
	.size	ossl_check_ACCESS_DESCRIPTION_type, .-ossl_check_ACCESS_DESCRIPTION_type
	.type	ossl_check_const_ACCESS_DESCRIPTION_sk_type, @function
ossl_check_const_ACCESS_DESCRIPTION_sk_type:
.LFB522:
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
.LFE522:
	.size	ossl_check_const_ACCESS_DESCRIPTION_sk_type, .-ossl_check_const_ACCESS_DESCRIPTION_sk_type
	.type	ossl_check_ACCESS_DESCRIPTION_sk_type, @function
ossl_check_ACCESS_DESCRIPTION_sk_type:
.LFB523:
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
.LFE523:
	.size	ossl_check_ACCESS_DESCRIPTION_sk_type, .-ossl_check_ACCESS_DESCRIPTION_sk_type
	.type	ossl_check_ACCESS_DESCRIPTION_compfunc_type, @function
ossl_check_ACCESS_DESCRIPTION_compfunc_type:
.LFB524:
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
.LFE524:
	.size	ossl_check_ACCESS_DESCRIPTION_compfunc_type, .-ossl_check_ACCESS_DESCRIPTION_compfunc_type
	.type	ossl_check_ACCESS_DESCRIPTION_freefunc_type, @function
ossl_check_ACCESS_DESCRIPTION_freefunc_type:
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
	.size	ossl_check_ACCESS_DESCRIPTION_freefunc_type, .-ossl_check_ACCESS_DESCRIPTION_freefunc_type
	.globl	ossl_v3_info
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_info, @object
	.size	ossl_v3_info, 104
ossl_v3_info:
	.long	177
	.long	4
	.quad	AUTHORITY_INFO_ACCESS_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2v_AUTHORITY_INFO_ACCESS
	.quad	v2i_AUTHORITY_INFO_ACCESS
	.quad	0
	.quad	0
	.quad	0
	.globl	ossl_v3_sinfo
	.align 32
	.type	ossl_v3_sinfo, @object
	.size	ossl_v3_sinfo, 104
ossl_v3_sinfo:
	.long	398
	.long	4
	.quad	AUTHORITY_INFO_ACCESS_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2v_AUTHORITY_INFO_ACCESS
	.quad	v2i_AUTHORITY_INFO_ACCESS
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC0:
	.string	"method"
.LC1:
	.string	"location"
	.section	.data.rel.ro
	.align 32
	.type	ACCESS_DESCRIPTION_seq_tt, @object
	.size	ACCESS_DESCRIPTION_seq_tt, 80
ACCESS_DESCRIPTION_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OBJECT_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	GENERAL_NAME_it
	.text
	.globl	ACCESS_DESCRIPTION_it
	.type	ACCESS_DESCRIPTION_it, @function
ACCESS_DESCRIPTION_it:
.LFB623:
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
.LFE623:
	.size	ACCESS_DESCRIPTION_it, .-ACCESS_DESCRIPTION_it
	.globl	d2i_ACCESS_DESCRIPTION
	.type	d2i_ACCESS_DESCRIPTION, @function
d2i_ACCESS_DESCRIPTION:
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
	call	ACCESS_DESCRIPTION_it@PLT
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
	.size	d2i_ACCESS_DESCRIPTION, .-d2i_ACCESS_DESCRIPTION
	.globl	i2d_ACCESS_DESCRIPTION
	.type	i2d_ACCESS_DESCRIPTION, @function
i2d_ACCESS_DESCRIPTION:
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
	call	ACCESS_DESCRIPTION_it@PLT
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
	.size	i2d_ACCESS_DESCRIPTION, .-i2d_ACCESS_DESCRIPTION
	.globl	ACCESS_DESCRIPTION_new
	.type	ACCESS_DESCRIPTION_new, @function
ACCESS_DESCRIPTION_new:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ACCESS_DESCRIPTION_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ACCESS_DESCRIPTION_new, .-ACCESS_DESCRIPTION_new
	.globl	ACCESS_DESCRIPTION_free
	.type	ACCESS_DESCRIPTION_free, @function
ACCESS_DESCRIPTION_free:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ACCESS_DESCRIPTION_it@PLT
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
	.size	ACCESS_DESCRIPTION_free, .-ACCESS_DESCRIPTION_free
	.section	.rodata
.LC2:
	.string	"GeneralNames"
	.section	.data.rel.ro
	.align 32
	.type	AUTHORITY_INFO_ACCESS_item_tt, @object
	.size	AUTHORITY_INFO_ACCESS_item_tt, 40
AUTHORITY_INFO_ACCESS_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	ACCESS_DESCRIPTION_it
	.text
	.globl	AUTHORITY_INFO_ACCESS_it
	.type	AUTHORITY_INFO_ACCESS_it, @function
AUTHORITY_INFO_ACCESS_it:
.LFB628:
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
.LFE628:
	.size	AUTHORITY_INFO_ACCESS_it, .-AUTHORITY_INFO_ACCESS_it
	.globl	d2i_AUTHORITY_INFO_ACCESS
	.type	d2i_AUTHORITY_INFO_ACCESS, @function
d2i_AUTHORITY_INFO_ACCESS:
.LFB629:
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
	call	AUTHORITY_INFO_ACCESS_it@PLT
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
.LFE629:
	.size	d2i_AUTHORITY_INFO_ACCESS, .-d2i_AUTHORITY_INFO_ACCESS
	.globl	i2d_AUTHORITY_INFO_ACCESS
	.type	i2d_AUTHORITY_INFO_ACCESS, @function
i2d_AUTHORITY_INFO_ACCESS:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	AUTHORITY_INFO_ACCESS_it@PLT
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
.LFE630:
	.size	i2d_AUTHORITY_INFO_ACCESS, .-i2d_AUTHORITY_INFO_ACCESS
	.globl	AUTHORITY_INFO_ACCESS_new
	.type	AUTHORITY_INFO_ACCESS_new, @function
AUTHORITY_INFO_ACCESS_new:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	AUTHORITY_INFO_ACCESS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	AUTHORITY_INFO_ACCESS_new, .-AUTHORITY_INFO_ACCESS_new
	.globl	AUTHORITY_INFO_ACCESS_free
	.type	AUTHORITY_INFO_ACCESS_free, @function
AUTHORITY_INFO_ACCESS_free:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	AUTHORITY_INFO_ACCESS_it@PLT
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
.LFE632:
	.size	AUTHORITY_INFO_ACCESS_free, .-AUTHORITY_INFO_ACCESS_free
	.section	.rodata
.LC3:
	.string	"../crypto/x509/v3_info.c"
.LC4:
	.string	"%s - %s"
	.text
	.type	i2v_AUTHORITY_INFO_ACCESS, @function
i2v_AUTHORITY_INFO_ACCESS:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L40
.L44:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ACCESS_DESCRIPTION_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	i2v_GENERAL_NAME@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L42
.L41:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-160(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	i2t_ASN1_OBJECT@PLT
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addl	%ebx, %eax
	addl	$4, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cltq
	leaq	.LC3(%rip), %rcx
	movl	$84, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L49
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-60(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-160(%rbp), %rdx
	leaq	.LC4(%rip), %rdi
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rcx
	movl	$88, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	addl	$1, -20(%rbp)
.L40:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ACCESS_DESCRIPTION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L44
	cmpq	$0, -184(%rbp)
	jne	.L45
	cmpq	$0, -32(%rbp)
	jne	.L45
	call	OPENSSL_sk_new_null@PLT
	jmp	.L48
.L45:
	movq	-32(%rbp), %rax
	jmp	.L48
.L49:
	nop
.L42:
	cmpq	$0, -184(%rbp)
	jne	.L47
	cmpq	$0, -32(%rbp)
	je	.L47
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
.L47:
	movl	$0, %eax
.L48:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	i2v_AUTHORITY_INFO_ACCESS, .-i2v_AUTHORITY_INFO_ACCESS
	.section	.rodata
.LC5:
	.string	"value=%s"
	.text
	.type	v2i_AUTHORITY_INFO_ACCESS, @function
v2i_AUTHORITY_INFO_ACCESS:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	$0, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -36(%rbp)
	movl	$0, %edi
	call	ossl_check_ACCESS_DESCRIPTION_compfunc_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$115, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L51:
	movl	$0, -20(%rbp)
	jmp	.L53
.L60:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -48(%rbp)
	call	ACCESS_DESCRIPTION_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$121, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L55
.L54:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ACCESS_DESCRIPTION_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ACCESS_DESCRIPTION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L55
.L56:
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-96(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	call	v2i_GENERAL_NAME_ex@PLT
	testq	%rax, %rax
	je	.L62
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rsi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movl	$134, %ecx
	movq	%rax, %rdi
	call	CRYPTO_strndup@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L63
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$138, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	movl	$119, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC3(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$140, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L55
.L59:
	leaq	.LC3(%rip), %rcx
	movq	-72(%rbp), %rax
	movl	$143, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -20(%rbp)
.L53:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L60
	movq	-32(%rbp), %rax
	jmp	.L61
.L62:
	nop
	jmp	.L55
.L63:
	nop
.L55:
	movq	ACCESS_DESCRIPTION_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ACCESS_DESCRIPTION_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ACCESS_DESCRIPTION_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
.L61:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	v2i_AUTHORITY_INFO_ACCESS, .-v2i_AUTHORITY_INFO_ACCESS
	.globl	i2a_ACCESS_DESCRIPTION
	.type	i2a_ACCESS_DESCRIPTION, @function
i2a_ACCESS_DESCRIPTION:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	movl	$2, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	i2a_ACCESS_DESCRIPTION, .-i2a_ACCESS_DESCRIPTION
	.section	.rodata
.LC6:
	.string	"ACCESS_DESCRIPTION"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	ACCESS_DESCRIPTION_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC6
	.section	.rodata
.LC7:
	.string	"AUTHORITY_INFO_ACCESS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	0
	.zero	7
	.quad	-1
	.quad	AUTHORITY_INFO_ACCESS_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC7
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 26
__func__.1:
	.string	"i2v_AUTHORITY_INFO_ACCESS"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 26
__func__.0:
	.string	"v2i_AUTHORITY_INFO_ACCESS"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
