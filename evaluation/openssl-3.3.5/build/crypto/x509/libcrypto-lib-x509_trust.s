	.file	"x509_trust.c"
	.text
	.type	ossl_check_const_ASN1_OBJECT_sk_type, @function
ossl_check_const_ASN1_OBJECT_sk_type:
.LFB58:
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
.LFE58:
	.size	ossl_check_const_ASN1_OBJECT_sk_type, .-ossl_check_const_ASN1_OBJECT_sk_type
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
	.type	ossl_check_X509_TRUST_type, @function
ossl_check_X509_TRUST_type:
.LFB468:
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
.LFE468:
	.size	ossl_check_X509_TRUST_type, .-ossl_check_X509_TRUST_type
	.type	ossl_check_const_X509_TRUST_sk_type, @function
ossl_check_const_X509_TRUST_sk_type:
.LFB469:
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
.LFE469:
	.size	ossl_check_const_X509_TRUST_sk_type, .-ossl_check_const_X509_TRUST_sk_type
	.type	ossl_check_X509_TRUST_sk_type, @function
ossl_check_X509_TRUST_sk_type:
.LFB470:
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
.LFE470:
	.size	ossl_check_X509_TRUST_sk_type, .-ossl_check_X509_TRUST_sk_type
	.type	ossl_check_X509_TRUST_compfunc_type, @function
ossl_check_X509_TRUST_compfunc_type:
.LFB471:
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
.LFE471:
	.size	ossl_check_X509_TRUST_compfunc_type, .-ossl_check_X509_TRUST_compfunc_type
	.type	ossl_check_X509_TRUST_freefunc_type, @function
ossl_check_X509_TRUST_freefunc_type:
.LFB473:
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
.LFE473:
	.size	ossl_check_X509_TRUST_freefunc_type, .-ossl_check_X509_TRUST_freefunc_type
	.section	.data.rel.local,"aw"
	.align 8
	.type	default_trust, @object
	.size	default_trust, 8
default_trust:
	.quad	obj_trust
	.section	.rodata
.LC0:
	.string	"compatible"
.LC1:
	.string	"SSL Client"
.LC2:
	.string	"SSL Server"
.LC3:
	.string	"S/MIME email"
.LC4:
	.string	"Object Signer"
.LC5:
	.string	"OCSP responder"
.LC6:
	.string	"OCSP request"
.LC7:
	.string	"TSA server"
	.section	.data.rel.local
	.align 32
	.type	trstandard, @object
	.size	trstandard, 320
trstandard:
	.long	1
	.long	0
	.quad	trust_compat
	.quad	.LC0
	.long	0
	.zero	4
	.quad	0
	.long	2
	.long	0
	.quad	trust_1oidany
	.quad	.LC1
	.long	130
	.zero	4
	.quad	0
	.long	3
	.long	0
	.quad	trust_1oidany
	.quad	.LC2
	.long	129
	.zero	4
	.quad	0
	.long	4
	.long	0
	.quad	trust_1oidany
	.quad	.LC3
	.long	132
	.zero	4
	.quad	0
	.long	5
	.long	0
	.quad	trust_1oidany
	.quad	.LC4
	.long	131
	.zero	4
	.quad	0
	.long	6
	.long	0
	.quad	trust_1oid
	.quad	.LC5
	.long	180
	.zero	4
	.quad	0
	.long	7
	.long	0
	.quad	trust_1oid
	.quad	.LC6
	.long	178
	.zero	4
	.quad	0
	.long	8
	.long	0
	.quad	trust_1oidany
	.quad	.LC7
	.long	133
	.zero	4
	.quad	0
	.local	trtable
	.comm	trtable,8,8
	.text
	.type	tr_cmp, @function
tr_cmp:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	tr_cmp, .-tr_cmp
	.globl	X509_TRUST_set_default
	.type	X509_TRUST_set_default, @function
X509_TRUST_set_default:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	default_trust(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, default_trust(%rip)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	X509_TRUST_set_default, .-X509_TRUST_set_default
	.globl	X509_check_trust
	.type	X509_check_trust, @function
X509_check_trust:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L22
	movl	-32(%rbp), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$910, %edi
	call	obj_trust
	jmp	.L23
.L22:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	X509_TRUST_get_by_id@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L24
	movq	default_trust(%rip), %r8
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	*%r8
	jmp	.L23
.L24:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	X509_TRUST_get0@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %r8
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	X509_check_trust, .-X509_check_trust
	.globl	X509_TRUST_get_count
	.type	X509_TRUST_get_count, @function
X509_TRUST_get_count:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	trtable(%rip), %rax
	testq	%rax, %rax
	jne	.L26
	movl	$8, %eax
	jmp	.L27
.L26:
	movq	trtable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_TRUST_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	addl	$8, %eax
.L27:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	X509_TRUST_get_count, .-X509_TRUST_get_count
	.globl	X509_TRUST_get0
	.type	X509_TRUST_get0, @function
X509_TRUST_get0:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	cmpl	$7, -20(%rbp)
	jg	.L31
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	trstandard(%rip), %rax
	addq	%rdx, %rax
	jmp	.L30
.L31:
	movl	-20(%rbp), %eax
	subl	$8, %eax
	movl	%eax, %ebx
	movq	trtable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_TRUST_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	nop
.L30:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	X509_TRUST_get0, .-X509_TRUST_get0
	.globl	X509_TRUST_get_by_id
	.type	X509_TRUST_get_by_id, @function
X509_TRUST_get_by_id:
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
	movl	%edi, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jle	.L33
	cmpl	$8, -68(%rbp)
	jg	.L33
	movl	-68(%rbp), %eax
	subl	$1, %eax
	jmp	.L37
.L33:
	movq	trtable(%rip), %rax
	testq	%rax, %rax
	jne	.L35
	movl	$-1, %eax
	jmp	.L37
.L35:
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	trtable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_TRUST_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_TRUST_type
	movq	%rax, %rbx
	movq	trtable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_TRUST_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L36
	movl	$-1, %eax
	jmp	.L37
.L36:
	movl	-20(%rbp), %eax
	addl	$8, %eax
.L37:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	X509_TRUST_get_by_id, .-X509_TRUST_get_by_id
	.section	.rodata
.LC8:
	.string	"../crypto/x509/x509_trust.c"
	.text
	.globl	X509_TRUST_set
	.type	X509_TRUST_set, @function
X509_TRUST_set:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	X509_TRUST_get_by_id@PLT
	testl	%eax, %eax
	jns	.L39
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$119, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	X509_TRUST_set, .-X509_TRUST_set
	.globl	X509_TRUST_add
	.type	X509_TRUST_add, @function
X509_TRUST_add:
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
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	andl	$-2, -40(%rbp)
	movl	-40(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	X509_TRUST_get_by_id@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L42
	leaq	.LC8(%rip), %rax
	movl	$141, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-24(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	.L45
.L42:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	X509_TRUST_get0@PLT
	movq	%rax, -24(%rbp)
.L45:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L46
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$149, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L46:
	leaq	.LC8(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$151, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	orl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 32(%rax)
	cmpl	$0, -28(%rbp)
	jns	.L49
	movq	trtable(%rip), %rax
	testq	%rax, %rax
	jne	.L50
	leaq	tr_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_TRUST_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, trtable(%rip)
	movq	trtable(%rip), %rax
	testq	%rax, %rax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$167, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L48
.L50:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_TRUST_type
	movq	%rax, %rbx
	movq	trtable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_TRUST_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$171, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L48
.L49:
	movl	$1, %eax
	jmp	.L44
.L52:
	nop
.L48:
	cmpl	$0, -28(%rbp)
	jns	.L51
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$178, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC8(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$179, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L51:
	movl	$0, %eax
.L44:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	X509_TRUST_add, .-X509_TRUST_add
	.type	trtable_free, @function
trtable_free:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L57
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L53
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L56
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$190, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L56:
	leaq	.LC8(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$191, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L53
.L57:
	nop
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	trtable_free, .-trtable_free
	.globl	X509_TRUST_cleanup
	.type	X509_TRUST_cleanup, @function
X509_TRUST_cleanup:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	leaq	trtable_free(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_TRUST_freefunc_type
	movq	%rax, %rbx
	movq	trtable(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_TRUST_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	$0, trtable(%rip)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	X509_TRUST_cleanup, .-X509_TRUST_cleanup
	.globl	X509_TRUST_get_flags
	.type	X509_TRUST_get_flags, @function
X509_TRUST_get_flags:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	X509_TRUST_get_flags, .-X509_TRUST_get_flags
	.globl	X509_TRUST_get0_name
	.type	X509_TRUST_get0_name, @function
X509_TRUST_get0_name:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	X509_TRUST_get0_name, .-X509_TRUST_get0_name
	.globl	X509_TRUST_get_trust
	.type	X509_TRUST_get_trust, @function
X509_TRUST_get_trust:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	X509_TRUST_get_trust, .-X509_TRUST_get_trust
	.type	trust_1oidany, @function
trust_1oidany:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	orl	$24, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	obj_trust
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	trust_1oidany, .-trust_1oidany
	.type	trust_1oid, @function
trust_1oid:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	andl	$-25, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	obj_trust
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	trust_1oid, .-trust_1oid
	.type	trust_compat, @function
trust_compat:
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
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	X509_check_purpose@PLT
	cmpl	$1, %eax
	je	.L70
	movl	$3, %eax
	jmp	.L71
.L70:
	movl	-20(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L72
	movq	-16(%rbp), %rax
	movl	232(%rax), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L72
	movl	$1, %eax
	jmp	.L71
.L72:
	movl	$3, %eax
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	trust_compat, .-trust_compat
	.type	obj_trust, @function
obj_trust:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L74
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movl	$0, -4(%rbp)
	jmp	.L75
.L79:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L76
	cmpl	$910, -28(%rbp)
	jne	.L77
	movl	-56(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L77
.L76:
	movl	$2, %eax
	jmp	.L78
.L77:
	addl	$1, -4(%rbp)
.L75:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L79
.L74:
	cmpq	$0, -16(%rbp)
	je	.L80
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movl	$0, -4(%rbp)
	jmp	.L81
.L84:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.L82
	cmpl	$910, -44(%rbp)
	jne	.L83
	movl	-56(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L83
.L82:
	movl	$1, %eax
	jmp	.L78
.L83:
	addl	$1, -4(%rbp)
.L81:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L84
	movl	$2, %eax
	jmp	.L78
.L80:
	movl	-56(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L85
	movl	$3, %eax
	jmp	.L78
.L85:
	movl	-56(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	trust_compat
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	obj_trust, .-obj_trust
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"X509_TRUST_set"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"X509_TRUST_add"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
