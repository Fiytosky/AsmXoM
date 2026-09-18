	.file	"rsa_asn1.c"
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
	.type	rsa_cb, @function
rsa_cb:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L6
	call	RSA_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movl	$2, %eax
	jmp	.L8
.L7:
	movl	$0, %eax
	jmp	.L8
.L6:
	cmpl	$2, -4(%rbp)
	jne	.L9
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$2, %eax
	jmp	.L8
.L9:
	cmpl	$5, -4(%rbp)
	jne	.L10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L11
	movl	$1, %eax
	jmp	.L8
.L11:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_rsa_multip_calc_product@PLT
	cmpl	$1, %eax
	jne	.L12
	movl	$2, %eax
	jmp	.L8
.L12:
	movl	$0, %eax
	jmp	.L8
.L10:
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	rsa_cb, .-rsa_cb
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"d"
.LC2:
	.string	"t"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	RSA_PRIME_INFO_seq_tt, @object
	.size	RSA_PRIME_INFO_seq_tt, 120
RSA_PRIME_INFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	CBIGNUM_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	CBIGNUM_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	CBIGNUM_it
	.text
	.globl	RSA_PRIME_INFO_it
	.type	RSA_PRIME_INFO_it, @function
RSA_PRIME_INFO_it:
.LFB546:
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
.LFE546:
	.size	RSA_PRIME_INFO_it, .-RSA_PRIME_INFO_it
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	RSAPrivateKey_aux, @object
	.size	RSAPrivateKey_aux, 48
RSAPrivateKey_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	rsa_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC3:
	.string	"version"
.LC4:
	.string	"n"
.LC5:
	.string	"e"
.LC6:
	.string	"p"
.LC7:
	.string	"q"
.LC8:
	.string	"dmp1"
.LC9:
	.string	"dmq1"
.LC10:
	.string	"iqmp"
.LC11:
	.string	"prime_infos"
	.section	.data.rel.ro
	.align 32
	.type	RSAPrivateKey_seq_tt, @object
	.size	RSAPrivateKey_seq_tt, 400
RSAPrivateKey_seq_tt:
	.quad	4096
	.quad	0
	.quad	16
	.quad	.LC3
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	40
	.quad	.LC4
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	48
	.quad	.LC5
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	56
	.quad	.LC1
	.quad	CBIGNUM_it
	.quad	0
	.quad	0
	.quad	64
	.quad	.LC6
	.quad	CBIGNUM_it
	.quad	0
	.quad	0
	.quad	72
	.quad	.LC7
	.quad	CBIGNUM_it
	.quad	0
	.quad	0
	.quad	80
	.quad	.LC8
	.quad	CBIGNUM_it
	.quad	0
	.quad	0
	.quad	88
	.quad	.LC9
	.quad	CBIGNUM_it
	.quad	0
	.quad	0
	.quad	96
	.quad	.LC10
	.quad	CBIGNUM_it
	.quad	5
	.quad	0
	.quad	136
	.quad	.LC11
	.quad	RSA_PRIME_INFO_it
	.text
	.globl	RSAPrivateKey_it
	.type	RSAPrivateKey_it, @function
RSAPrivateKey_it:
.LFB547:
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
.LFE547:
	.size	RSAPrivateKey_it, .-RSAPrivateKey_it
	.section	.data.rel.ro.local
	.align 32
	.type	RSAPublicKey_aux, @object
	.size	RSAPublicKey_aux, 48
RSAPublicKey_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	rsa_cb
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	RSAPublicKey_seq_tt, @object
	.size	RSAPublicKey_seq_tt, 80
RSAPublicKey_seq_tt:
	.quad	0
	.quad	0
	.quad	40
	.quad	.LC4
	.quad	BIGNUM_it
	.quad	0
	.quad	0
	.quad	48
	.quad	.LC5
	.quad	BIGNUM_it
	.text
	.globl	RSAPublicKey_it
	.type	RSAPublicKey_it, @function
RSAPublicKey_it:
.LFB548:
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
.LFE548:
	.size	RSAPublicKey_it, .-RSAPublicKey_it
	.type	rsa_pss_cb, @function
rsa_pss_cb:
.LFB549:
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
	cmpl	$2, -20(%rbp)
	jne	.L21
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
.L21:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	rsa_pss_cb, .-rsa_pss_cb
	.section	.data.rel.ro.local
	.align 32
	.type	RSA_PSS_PARAMS_aux, @object
	.size	RSA_PSS_PARAMS_aux, 48
RSA_PSS_PARAMS_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	rsa_pss_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC12:
	.string	"hashAlgorithm"
.LC13:
	.string	"maskGenAlgorithm"
.LC14:
	.string	"saltLength"
.LC15:
	.string	"trailerField"
	.section	.data.rel.ro
	.align 32
	.type	RSA_PSS_PARAMS_seq_tt, @object
	.size	RSA_PSS_PARAMS_seq_tt, 160
RSA_PSS_PARAMS_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC12
	.quad	X509_ALGOR_it
	.quad	145
	.quad	1
	.quad	8
	.quad	.LC13
	.quad	X509_ALGOR_it
	.quad	145
	.quad	2
	.quad	16
	.quad	.LC14
	.quad	ASN1_INTEGER_it
	.quad	145
	.quad	3
	.quad	24
	.quad	.LC15
	.quad	ASN1_INTEGER_it
	.text
	.globl	RSA_PSS_PARAMS_it
	.type	RSA_PSS_PARAMS_it, @function
RSA_PSS_PARAMS_it:
.LFB550:
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
.LFE550:
	.size	RSA_PSS_PARAMS_it, .-RSA_PSS_PARAMS_it
	.globl	d2i_RSA_PSS_PARAMS
	.type	d2i_RSA_PSS_PARAMS, @function
d2i_RSA_PSS_PARAMS:
.LFB551:
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
	call	RSA_PSS_PARAMS_it@PLT
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
.LFE551:
	.size	d2i_RSA_PSS_PARAMS, .-d2i_RSA_PSS_PARAMS
	.globl	i2d_RSA_PSS_PARAMS
	.type	i2d_RSA_PSS_PARAMS, @function
i2d_RSA_PSS_PARAMS:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSA_PSS_PARAMS_it@PLT
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
.LFE552:
	.size	i2d_RSA_PSS_PARAMS, .-i2d_RSA_PSS_PARAMS
	.globl	RSA_PSS_PARAMS_new
	.type	RSA_PSS_PARAMS_new, @function
RSA_PSS_PARAMS_new:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	RSA_PSS_PARAMS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	RSA_PSS_PARAMS_new, .-RSA_PSS_PARAMS_new
	.globl	RSA_PSS_PARAMS_free
	.type	RSA_PSS_PARAMS_free, @function
RSA_PSS_PARAMS_free:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	RSA_PSS_PARAMS_it@PLT
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
.LFE554:
	.size	RSA_PSS_PARAMS_free, .-RSA_PSS_PARAMS_free
	.globl	RSA_PSS_PARAMS_dup
	.type	RSA_PSS_PARAMS_dup, @function
RSA_PSS_PARAMS_dup:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	RSA_PSS_PARAMS_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	RSA_PSS_PARAMS_dup, .-RSA_PSS_PARAMS_dup
	.type	rsa_oaep_cb, @function
rsa_oaep_cb:
.LFB556:
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
	cmpl	$2, -20(%rbp)
	jne	.L35
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	X509_ALGOR_free@PLT
.L35:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	rsa_oaep_cb, .-rsa_oaep_cb
	.section	.data.rel.ro.local
	.align 32
	.type	RSA_OAEP_PARAMS_aux, @object
	.size	RSA_OAEP_PARAMS_aux, 48
RSA_OAEP_PARAMS_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	rsa_oaep_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC16:
	.string	"hashFunc"
.LC17:
	.string	"maskGenFunc"
.LC18:
	.string	"pSourceFunc"
	.section	.data.rel.ro
	.align 32
	.type	RSA_OAEP_PARAMS_seq_tt, @object
	.size	RSA_OAEP_PARAMS_seq_tt, 120
RSA_OAEP_PARAMS_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC16
	.quad	X509_ALGOR_it
	.quad	145
	.quad	1
	.quad	8
	.quad	.LC17
	.quad	X509_ALGOR_it
	.quad	145
	.quad	2
	.quad	16
	.quad	.LC18
	.quad	X509_ALGOR_it
	.text
	.globl	RSA_OAEP_PARAMS_it
	.type	RSA_OAEP_PARAMS_it, @function
RSA_OAEP_PARAMS_it:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	RSA_OAEP_PARAMS_it, .-RSA_OAEP_PARAMS_it
	.globl	d2i_RSA_OAEP_PARAMS
	.type	d2i_RSA_OAEP_PARAMS, @function
d2i_RSA_OAEP_PARAMS:
.LFB558:
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
	call	RSA_OAEP_PARAMS_it@PLT
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
.LFE558:
	.size	d2i_RSA_OAEP_PARAMS, .-d2i_RSA_OAEP_PARAMS
	.globl	i2d_RSA_OAEP_PARAMS
	.type	i2d_RSA_OAEP_PARAMS, @function
i2d_RSA_OAEP_PARAMS:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSA_OAEP_PARAMS_it@PLT
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
.LFE559:
	.size	i2d_RSA_OAEP_PARAMS, .-i2d_RSA_OAEP_PARAMS
	.globl	RSA_OAEP_PARAMS_new
	.type	RSA_OAEP_PARAMS_new, @function
RSA_OAEP_PARAMS_new:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	RSA_OAEP_PARAMS_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	RSA_OAEP_PARAMS_new, .-RSA_OAEP_PARAMS_new
	.globl	RSA_OAEP_PARAMS_free
	.type	RSA_OAEP_PARAMS_free, @function
RSA_OAEP_PARAMS_free:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	RSA_OAEP_PARAMS_it@PLT
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
.LFE561:
	.size	RSA_OAEP_PARAMS_free, .-RSA_OAEP_PARAMS_free
	.globl	d2i_RSAPrivateKey
	.type	d2i_RSAPrivateKey, @function
d2i_RSAPrivateKey:
.LFB562:
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
	call	RSAPrivateKey_it@PLT
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
.LFE562:
	.size	d2i_RSAPrivateKey, .-d2i_RSAPrivateKey
	.globl	i2d_RSAPrivateKey
	.type	i2d_RSAPrivateKey, @function
i2d_RSAPrivateKey:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSAPrivateKey_it@PLT
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
.LFE563:
	.size	i2d_RSAPrivateKey, .-i2d_RSAPrivateKey
	.globl	d2i_RSAPublicKey
	.type	d2i_RSAPublicKey, @function
d2i_RSAPublicKey:
.LFB564:
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
	call	RSAPublicKey_it@PLT
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
.LFE564:
	.size	d2i_RSAPublicKey, .-d2i_RSAPublicKey
	.globl	i2d_RSAPublicKey
	.type	i2d_RSAPublicKey, @function
i2d_RSAPublicKey:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	RSAPublicKey_it@PLT
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
.LFE565:
	.size	i2d_RSAPublicKey, .-i2d_RSAPublicKey
	.globl	RSAPublicKey_dup
	.type	RSAPublicKey_dup, @function
RSAPublicKey_dup:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	RSAPublicKey_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	RSAPublicKey_dup, .-RSAPublicKey_dup
	.globl	RSAPrivateKey_dup
	.type	RSAPrivateKey_dup, @function
RSAPrivateKey_dup:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	RSAPrivateKey_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	RSAPrivateKey_dup, .-RSAPrivateKey_dup
	.section	.rodata
.LC19:
	.string	"RSA_PRIME_INFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	1
	.zero	7
	.quad	16
	.quad	RSA_PRIME_INFO_seq_tt
	.quad	3
	.quad	0
	.quad	40
	.quad	.LC19
	.section	.rodata
.LC20:
	.string	"RSAPrivateKey"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	RSAPrivateKey_seq_tt
	.quad	10
	.quad	RSAPrivateKey_aux
	.quad	224
	.quad	.LC20
	.section	.rodata
.LC21:
	.string	"RSAPublicKey"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	RSAPublicKey_seq_tt
	.quad	2
	.quad	RSAPublicKey_aux
	.quad	224
	.quad	.LC21
	.section	.rodata
.LC22:
	.string	"RSA_PSS_PARAMS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	RSA_PSS_PARAMS_seq_tt
	.quad	4
	.quad	RSA_PSS_PARAMS_aux
	.quad	40
	.quad	.LC22
	.section	.rodata
.LC23:
	.string	"RSA_OAEP_PARAMS"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	RSA_OAEP_PARAMS_seq_tt
	.quad	3
	.quad	RSA_OAEP_PARAMS_aux
	.quad	32
	.quad	.LC23
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
