	.file	"v3_bcons.c"
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
	.globl	ossl_v3_bcons
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_bcons, @object
	.size	ossl_v3_bcons, 104
ossl_v3_bcons:
	.long	87
	.long	0
	.quad	BASIC_CONSTRAINTS_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2v_BASIC_CONSTRAINTS
	.quad	v2i_BASIC_CONSTRAINTS
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC0:
	.string	"ca"
.LC1:
	.string	"pathlen"
	.section	.data.rel.ro
	.align 32
	.type	BASIC_CONSTRAINTS_seq_tt, @object
	.size	BASIC_CONSTRAINTS_seq_tt, 80
BASIC_CONSTRAINTS_seq_tt:
	.quad	1
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_FBOOLEAN_it
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_INTEGER_it
	.text
	.globl	BASIC_CONSTRAINTS_it
	.type	BASIC_CONSTRAINTS_it, @function
BASIC_CONSTRAINTS_it:
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
	.size	BASIC_CONSTRAINTS_it, .-BASIC_CONSTRAINTS_it
	.globl	d2i_BASIC_CONSTRAINTS
	.type	d2i_BASIC_CONSTRAINTS, @function
d2i_BASIC_CONSTRAINTS:
.LFB704:
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
	call	BASIC_CONSTRAINTS_it@PLT
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
.LFE704:
	.size	d2i_BASIC_CONSTRAINTS, .-d2i_BASIC_CONSTRAINTS
	.globl	i2d_BASIC_CONSTRAINTS
	.type	i2d_BASIC_CONSTRAINTS, @function
i2d_BASIC_CONSTRAINTS:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	BASIC_CONSTRAINTS_it@PLT
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
.LFE705:
	.size	i2d_BASIC_CONSTRAINTS, .-i2d_BASIC_CONSTRAINTS
	.globl	BASIC_CONSTRAINTS_new
	.type	BASIC_CONSTRAINTS_new, @function
BASIC_CONSTRAINTS_new:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	BASIC_CONSTRAINTS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	BASIC_CONSTRAINTS_new, .-BASIC_CONSTRAINTS_new
	.globl	BASIC_CONSTRAINTS_free
	.type	BASIC_CONSTRAINTS_free, @function
BASIC_CONSTRAINTS_free:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	BASIC_CONSTRAINTS_it@PLT
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
.LFE707:
	.size	BASIC_CONSTRAINTS_free, .-BASIC_CONSTRAINTS_free
	.section	.rodata
.LC2:
	.string	"CA"
	.text
	.type	i2v_BASIC_CONSTRAINTS, @function
i2v_BASIC_CONSTRAINTS:
.LFB708:
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
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	leaq	-24(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	X509V3_add_value_bool@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	X509V3_add_value_int@PLT
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	i2v_BASIC_CONSTRAINTS, .-i2v_BASIC_CONSTRAINTS
	.section	.rodata
.LC3:
	.string	"../crypto/x509/v3_bcons.c"
.LC4:
	.string	", value="
.LC5:
	.string	"name="
	.text
	.type	v2i_BASIC_CONSTRAINTS, @function
v2i_BASIC_CONSTRAINTS:
.LFB709:
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
	movq	$0, -16(%rbp)
	call	BASIC_CONSTRAINTS_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L19
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L20
.L19:
	movl	$0, -4(%rbp)
	jmp	.L21
.L26:
	movq	-56(%rbp), %rax
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
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L22
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_value_bool@PLT
	testl	%eax, %eax
	jne	.L23
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
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_value_int@PLT
	testl	%eax, %eax
	jne	.L23
	jmp	.L24
.L25:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$76, %esi
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
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	jmp	.L24
.L23:
	addl	$1, -4(%rbp)
.L21:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L26
	movq	-16(%rbp), %rax
	jmp	.L20
.L24:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BASIC_CONSTRAINTS_free@PLT
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	v2i_BASIC_CONSTRAINTS, .-v2i_BASIC_CONSTRAINTS
	.section	.rodata
.LC6:
	.string	"BASIC_CONSTRAINTS"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	BASIC_CONSTRAINTS_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC6
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"v2i_BASIC_CONSTRAINTS"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
