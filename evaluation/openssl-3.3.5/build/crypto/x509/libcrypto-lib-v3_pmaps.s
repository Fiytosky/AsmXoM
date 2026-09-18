	.file	"v3_pmaps.c"
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
	.type	ossl_check_POLICY_MAPPING_type, @function
ossl_check_POLICY_MAPPING_type:
.LFB563:
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
.LFE563:
	.size	ossl_check_POLICY_MAPPING_type, .-ossl_check_POLICY_MAPPING_type
	.type	ossl_check_const_POLICY_MAPPING_sk_type, @function
ossl_check_const_POLICY_MAPPING_sk_type:
.LFB564:
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
.LFE564:
	.size	ossl_check_const_POLICY_MAPPING_sk_type, .-ossl_check_const_POLICY_MAPPING_sk_type
	.type	ossl_check_POLICY_MAPPING_sk_type, @function
ossl_check_POLICY_MAPPING_sk_type:
.LFB565:
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
.LFE565:
	.size	ossl_check_POLICY_MAPPING_sk_type, .-ossl_check_POLICY_MAPPING_sk_type
	.type	ossl_check_POLICY_MAPPING_compfunc_type, @function
ossl_check_POLICY_MAPPING_compfunc_type:
.LFB566:
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
.LFE566:
	.size	ossl_check_POLICY_MAPPING_compfunc_type, .-ossl_check_POLICY_MAPPING_compfunc_type
	.type	ossl_check_POLICY_MAPPING_freefunc_type, @function
ossl_check_POLICY_MAPPING_freefunc_type:
.LFB568:
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
.LFE568:
	.size	ossl_check_POLICY_MAPPING_freefunc_type, .-ossl_check_POLICY_MAPPING_freefunc_type
	.globl	ossl_v3_policy_mappings
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_policy_mappings, @object
	.size	ossl_v3_policy_mappings, 104
ossl_v3_policy_mappings:
	.long	747
	.long	0
	.quad	POLICY_MAPPINGS_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2v_POLICY_MAPPINGS
	.quad	v2i_POLICY_MAPPINGS
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC0:
	.string	"issuerDomainPolicy"
.LC1:
	.string	"subjectDomainPolicy"
	.section	.data.rel.ro
	.align 32
	.type	POLICY_MAPPING_seq_tt, @object
	.size	POLICY_MAPPING_seq_tt, 80
POLICY_MAPPING_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_OBJECT_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_OBJECT_it
	.text
	.globl	POLICY_MAPPING_it
	.type	POLICY_MAPPING_it, @function
POLICY_MAPPING_it:
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
	.size	POLICY_MAPPING_it, .-POLICY_MAPPING_it
	.section	.rodata
.LC2:
	.string	"POLICY_MAPPINGS"
	.section	.data.rel.ro
	.align 32
	.type	POLICY_MAPPINGS_item_tt, @object
	.size	POLICY_MAPPINGS_item_tt, 40
POLICY_MAPPINGS_item_tt:
	.quad	4
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	POLICY_MAPPING_it
	.text
	.globl	POLICY_MAPPINGS_it
	.type	POLICY_MAPPINGS_it, @function
POLICY_MAPPINGS_it:
.LFB624:
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
.LFE624:
	.size	POLICY_MAPPINGS_it, .-POLICY_MAPPINGS_it
	.globl	POLICY_MAPPING_new
	.type	POLICY_MAPPING_new, @function
POLICY_MAPPING_new:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	POLICY_MAPPING_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	POLICY_MAPPING_new, .-POLICY_MAPPING_new
	.globl	POLICY_MAPPING_free
	.type	POLICY_MAPPING_free, @function
POLICY_MAPPING_free:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	POLICY_MAPPING_it@PLT
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
.LFE626:
	.size	POLICY_MAPPING_free, .-POLICY_MAPPING_free
	.type	i2v_POLICY_MAPPINGS, @function
i2v_POLICY_MAPPINGS:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L25
.L26:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICY_MAPPING_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-112(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	i2t_ASN1_OBJECT@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-192(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	i2t_ASN1_OBJECT@PLT
	leaq	-216(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509V3_add_value@PLT
	addl	$1, -4(%rbp)
.L25:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_POLICY_MAPPING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L26
	movq	-216(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	i2v_POLICY_MAPPINGS, .-i2v_POLICY_MAPPINGS
	.section	.rodata
.LC3:
	.string	"../crypto/x509/v3_pmaps.c"
.LC4:
	.string	"%s"
	.text
	.type	v2i_POLICY_MAPPINGS, @function
v2i_POLICY_MAPPINGS:
.LFB628:
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
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -52(%rbp)
	movl	$0, %edi
	call	ossl_check_POLICY_MAPPING_compfunc_type
	movq	%rax, %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L29
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L29:
	movl	$0, -36(%rbp)
	jmp	.L31
.L38:
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
	je	.L32
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L33
.L32:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$83, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movl	$110, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L33:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L35
	cmpq	$0, -32(%rbp)
	jne	.L36
.L35:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	movl	$110, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L36:
	call	POLICY_MAPPING_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$96, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L34
.L37:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICY_MAPPING_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICY_MAPPING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	addl	$1, -36(%rbp)
.L31:
	movl	-36(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L38
	movq	-64(%rbp), %rax
	jmp	.L30
.L34:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	POLICY_MAPPING_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICY_MAPPING_freefunc_type
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_POLICY_MAPPING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
.L30:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	v2i_POLICY_MAPPINGS, .-v2i_POLICY_MAPPINGS
	.section	.rodata
.LC5:
	.string	"POLICY_MAPPING"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	POLICY_MAPPING_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC5
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	0
	.zero	7
	.quad	-1
	.quad	POLICY_MAPPINGS_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"v2i_POLICY_MAPPINGS"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
