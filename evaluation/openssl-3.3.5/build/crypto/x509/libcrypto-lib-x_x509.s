	.file	"x_x509.c"
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
	.type	ossl_check_IPAddressFamily_sk_type, @function
ossl_check_IPAddressFamily_sk_type:
.LFB601:
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
.LFE601:
	.size	ossl_check_IPAddressFamily_sk_type, .-ossl_check_IPAddressFamily_sk_type
	.type	ossl_check_IPAddressFamily_freefunc_type, @function
ossl_check_IPAddressFamily_freefunc_type:
.LFB604:
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
.LFE604:
	.size	ossl_check_IPAddressFamily_freefunc_type, .-ossl_check_IPAddressFamily_freefunc_type
	.section	.rodata
	.align 32
	.type	X509_CINF_aux, @object
	.size	X509_CINF_aux, 48
X509_CINF_aux:
	.quad	0
	.long	2
	.long	0
	.long	0
	.zero	4
	.quad	0
	.long	112
	.zero	4
	.quad	0
.LC0:
	.string	"version"
.LC1:
	.string	"serialNumber"
.LC2:
	.string	"signature"
.LC3:
	.string	"issuer"
.LC4:
	.string	"validity"
.LC5:
	.string	"subject"
.LC6:
	.string	"key"
.LC7:
	.string	"issuerUID"
.LC8:
	.string	"subjectUID"
.LC9:
	.string	"extensions"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	X509_CINF_seq_tt, @object
	.size	X509_CINF_seq_tt, 400
X509_CINF_seq_tt:
	.quad	145
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_INTEGER_it
	.quad	4096
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	ASN1_INTEGER_it
	.quad	4096
	.quad	0
	.quad	32
	.quad	.LC2
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	48
	.quad	.LC3
	.quad	X509_NAME_it
	.quad	4096
	.quad	0
	.quad	56
	.quad	.LC4
	.quad	X509_VAL_it
	.quad	0
	.quad	0
	.quad	72
	.quad	.LC5
	.quad	X509_NAME_it
	.quad	0
	.quad	0
	.quad	80
	.quad	.LC6
	.quad	X509_PUBKEY_it
	.quad	137
	.quad	1
	.quad	88
	.quad	.LC7
	.quad	ASN1_BIT_STRING_it
	.quad	137
	.quad	2
	.quad	96
	.quad	.LC8
	.quad	ASN1_BIT_STRING_it
	.quad	149
	.quad	3
	.quad	104
	.quad	.LC9
	.quad	X509_EXTENSION_it
	.text
	.globl	X509_CINF_it
	.type	X509_CINF_it, @function
X509_CINF_it:
.LFB628:
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
.LFE628:
	.size	X509_CINF_it, .-X509_CINF_it
	.globl	d2i_X509_CINF
	.type	d2i_X509_CINF, @function
d2i_X509_CINF:
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
	call	X509_CINF_it@PLT
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
	.size	d2i_X509_CINF, .-d2i_X509_CINF
	.globl	i2d_X509_CINF
	.type	i2d_X509_CINF, @function
i2d_X509_CINF:
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
	call	X509_CINF_it@PLT
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
	.size	i2d_X509_CINF, .-i2d_X509_CINF
	.globl	X509_CINF_new
	.type	X509_CINF_new, @function
X509_CINF_new:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_CINF_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	X509_CINF_new, .-X509_CINF_new
	.globl	X509_CINF_free
	.type	X509_CINF_free, @function
X509_CINF_free:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_CINF_it@PLT
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
	.size	X509_CINF_free, .-X509_CINF_free
	.section	.rodata
.LC10:
	.string	"../crypto/x509/x_x509.c"
	.text
	.type	x509_cb, @function
x509_cb:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$17, -52(%rbp)
	je	.L19
	cmpl	$17, -52(%rbp)
	jg	.L30
	cmpl	$16, -52(%rbp)
	je	.L21
	cmpl	$16, -52(%rbp)
	jg	.L30
	cmpl	$15, -52(%rbp)
	je	.L22
	cmpl	$15, -52(%rbp)
	jg	.L30
	cmpl	$4, -52(%rbp)
	je	.L23
	cmpl	$4, -52(%rbp)
	jg	.L30
	cmpl	$1, -52(%rbp)
	je	.L24
	cmpl	$3, -52(%rbp)
	je	.L25
	jmp	.L30
.L23:
	movq	-24(%rbp), %rax
	leaq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, %rdi
	call	X509_CERT_AUX_free@PLT
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	call	AUTHORITY_KEYID_free@PLT
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	call	CRL_DIST_POINTS_free@PLT
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	call	ossl_policy_cache_free@PLT
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAMES_free@PLT
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	NAME_CONSTRAINTS_free@PLT
	movq	IPAddressFamily_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	call	ASIdentifiers_free@PLT
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
.L24:
	movq	-24(%rbp), %rax
	movl	$0, 352(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 236(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 240(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 244(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 232(%rax)
	movq	-24(%rbp), %rax
	movq	$-1, 216(%rax)
	movq	-24(%rbp), %rax
	movq	$-1, 224(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 248(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 256(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 264(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 360(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 272(%rax)
	movq	-24(%rbp), %rax
	leaq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L27
.L25:
	movq	-24(%rbp), %rax
	leaq	200(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, %rdi
	call	X509_CERT_AUX_free@PLT
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	call	AUTHORITY_KEYID_free@PLT
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, %rdi
	call	CRL_DIST_POINTS_free@PLT
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	call	ossl_policy_cache_free@PLT
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAMES_free@PLT
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	call	NAME_CONSTRAINTS_free@PLT
	movq	IPAddressFamily_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_IPAddressFamily_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	call	ASIdentifiers_free@PLT
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	leaq	.LC10(%rip), %rcx
	movl	$98, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L28
.L22:
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	368(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_set0_libctx@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L27
.L21:
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L28
.L19:
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L28
.L30:
	nop
	jmp	.L28
.L31:
	nop
	jmp	.L28
.L32:
	nop
.L28:
	movl	$1, %eax
.L27:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	x509_cb, .-x509_cb
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	X509_aux, @object
	.size	X509_aux, 48
X509_aux:
	.quad	0
	.long	1
	.long	192
	.long	344
	.zero	4
	.quad	x509_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC11:
	.string	"cert_info"
.LC12:
	.string	"sig_alg"
	.section	.data.rel.ro
	.align 32
	.type	X509_seq_tt, @object
	.size	X509_seq_tt, 120
X509_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC11
	.quad	X509_CINF_it
	.quad	4096
	.quad	0
	.quad	136
	.quad	.LC12
	.quad	X509_ALGOR_it
	.quad	4096
	.quad	0
	.quad	152
	.quad	.LC2
	.quad	ASN1_BIT_STRING_it
	.text
	.globl	X509_it
	.type	X509_it, @function
X509_it:
.LFB634:
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
.LFE634:
	.size	X509_it, .-X509_it
	.globl	d2i_X509
	.type	d2i_X509, @function
d2i_X509:
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
	movq	%rdx, -24(%rbp)
	call	X509_it@PLT
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
.LFE635:
	.size	d2i_X509, .-d2i_X509
	.globl	i2d_X509
	.type	i2d_X509, @function
i2d_X509:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	X509_it@PLT
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
.LFE636:
	.size	i2d_X509, .-i2d_X509
	.globl	X509_new
	.type	X509_new, @function
X509_new:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	X509_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	X509_new, .-X509_new
	.globl	X509_free
	.type	X509_free, @function
X509_free:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_it@PLT
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
.LFE638:
	.size	X509_free, .-X509_free
	.globl	X509_dup
	.type	X509_dup, @function
X509_dup:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	X509_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	X509_dup, .-X509_dup
	.globl	ossl_x509_set0_libctx
	.type	ossl_x509_set0_libctx, @function
ossl_x509_set0_libctx:
.LFB640:
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
	cmpq	$0, -8(%rbp)
	je	.L45
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 368(%rax)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	leaq	.LC10(%rip), %rcx
	movl	$150, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 376(%rax)
	cmpq	$0, -24(%rbp)
	je	.L45
	leaq	.LC10(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$153, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 376(%rdx)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ossl_x509_set0_libctx, .-ossl_x509_set0_libctx
	.globl	X509_new_ex
	.type	X509_new_ex, @function
X509_new_ex:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	call	X509_it@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_set0_libctx@PLT
	testl	%eax, %eax
	jne	.L48
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	$0, -8(%rbp)
.L48:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	X509_new_ex, .-X509_new_ex
	.globl	X509_set_ex_data
	.type	X509_set_ex_data, @function
X509_set_ex_data:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	200(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	X509_set_ex_data, .-X509_set_ex_data
	.globl	X509_get_ex_data
	.type	X509_get_ex_data, @function
X509_get_ex_data:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	200(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	X509_get_ex_data, .-X509_get_ex_data
	.globl	d2i_X509_AUX
	.type	d2i_X509_AUX, @function
d2i_X509_AUX:
.LFB644:
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
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L55
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L56
.L55:
	movl	$1, -4(%rbp)
.L56:
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_X509@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L57
	movl	$0, %eax
	jmp	.L62
.L57:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	subq	%rdx, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jle	.L59
	movq	-16(%rbp), %rax
	leaq	336(%rax), %rcx
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	d2i_X509_CERT_AUX@PLT
	testq	%rax, %rax
	je	.L64
.L59:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	jmp	.L62
.L64:
	nop
.L60:
	cmpl	$0, -4(%rbp)
	je	.L61
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	cmpq	$0, -40(%rbp)
	je	.L61
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
.L61:
	movl	$0, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	d2i_X509_AUX, .-d2i_X509_AUX
	.type	i2d_x509_aux_internal, @function
i2d_x509_aux_internal:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L66
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L67
.L66:
	movq	$0, -8(%rbp)
.L67:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L68
	cmpq	$0, -24(%rbp)
	jne	.L69
.L68:
	movl	-12(%rbp), %eax
	jmp	.L70
.L69:
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_CERT_AUX@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jns	.L71
	cmpq	$0, -8(%rbp)
	je	.L72
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L72:
	movl	-16(%rbp), %eax
	jmp	.L70
.L71:
	movl	-16(%rbp), %eax
	addl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	i2d_x509_aux_internal, .-i2d_x509_aux_internal
	.globl	i2d_X509_AUX
	.type	i2d_X509_AUX, @function
i2d_X509_AUX:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L74
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L75
.L74:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_x509_aux_internal
	jmp	.L80
.L75:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_x509_aux_internal
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L77
	movl	-4(%rbp), %eax
	jmp	.L80
.L77:
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC10(%rip), %rcx
	movl	$274, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L78
	movl	$-1, %eax
	jmp	.L80
.L78:
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_x509_aux_internal
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L79
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rcx
	movl	$281, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
.L79:
	movl	-4(%rbp), %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	i2d_X509_AUX, .-i2d_X509_AUX
	.globl	i2d_re_X509_tbs
	.type	i2d_re_X509_tbs, @function
i2d_re_X509_tbs:
.LFB647:
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
	movl	$1, 128(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_CINF@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	i2d_re_X509_tbs, .-i2d_re_X509_tbs
	.globl	X509_get0_signature
	.type	X509_get0_signature, @function
X509_get0_signature:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L84
	movq	-24(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L84:
	cmpq	$0, -16(%rbp)
	je	.L86
	movq	-24(%rbp), %rax
	leaq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L86:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	X509_get0_signature, .-X509_get0_signature
	.globl	X509_get_signature_nid
	.type	X509_get_signature_nid, @function
X509_get_signature_nid:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	X509_get_signature_nid, .-X509_get_signature_nid
	.globl	X509_set0_distinguishing_id
	.type	X509_set0_distinguishing_id, @function
X509_set0_distinguishing_id:
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
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 360(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	X509_set0_distinguishing_id, .-X509_set0_distinguishing_id
	.globl	X509_get0_distinguishing_id
	.type	X509_get0_distinguishing_id, @function
X509_get0_distinguishing_id:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	X509_get0_distinguishing_id, .-X509_get0_distinguishing_id
	.section	.rodata
.LC13:
	.string	"X509_CINF"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_CINF_seq_tt
	.quad	10
	.quad	X509_CINF_aux
	.quad	136
	.quad	.LC13
	.section	.rodata
.LC14:
	.string	"X509"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	X509_seq_tt
	.quad	3
	.quad	X509_aux
	.quad	384
	.quad	.LC14
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
