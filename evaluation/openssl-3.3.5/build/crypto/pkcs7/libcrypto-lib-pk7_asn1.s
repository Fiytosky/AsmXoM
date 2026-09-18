	.file	"pk7_asn1.c"
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
	.section	.rodata
.LC0:
	.string	"d.other"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	p7default_tt, @object
	.size	p7default_tt, 40
p7default_tt:
	.quad	145
	.quad	0
	.quad	32
	.quad	.LC0
	.quad	ASN1_ANY_it
	.section	.rodata
.LC1:
	.string	"d.data"
.LC2:
	.string	"d.sign"
.LC3:
	.string	"d.enveloped"
.LC4:
	.string	"d.signed_and_enveloped"
.LC5:
	.string	"d.digest"
.LC6:
	.string	"d.encrypted"
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_adbtbl, @object
	.size	PKCS7_adbtbl, 288
PKCS7_adbtbl:
	.quad	21
	.quad	2193
	.quad	0
	.quad	32
	.quad	.LC1
	.quad	ASN1_OCTET_STRING_NDEF_it
	.quad	22
	.quad	2193
	.quad	0
	.quad	32
	.quad	.LC2
	.quad	PKCS7_SIGNED_it
	.quad	23
	.quad	2193
	.quad	0
	.quad	32
	.quad	.LC3
	.quad	PKCS7_ENVELOPE_it
	.quad	24
	.quad	2193
	.quad	0
	.quad	32
	.quad	.LC4
	.quad	PKCS7_SIGN_ENVELOPE_it
	.quad	25
	.quad	2193
	.quad	0
	.quad	32
	.quad	.LC5
	.quad	PKCS7_DIGEST_it
	.quad	26
	.quad	2193
	.quad	0
	.quad	32
	.quad	.LC6
	.quad	PKCS7_ENCRYPT_it
	.text
	.type	PKCS7_adb, @function
PKCS7_adb:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	internal_adb.12(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	PKCS7_adb, .-PKCS7_adb
	.type	pk7_cb, @function
pk7_cb:
.LFB516:
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
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$13, -20(%rbp)
	je	.L8
	cmpl	$13, -20(%rbp)
	jg	.L9
	cmpl	$12, -20(%rbp)
	je	.L10
	cmpl	$12, -20(%rbp)
	jg	.L9
	cmpl	$10, -20(%rbp)
	je	.L11
	cmpl	$11, -20(%rbp)
	je	.L8
	jmp	.L9
.L11:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	PKCS7_stream@PLT
	testl	%eax, %eax
	jg	.L10
	movl	$0, %eax
	jmp	.L12
.L10:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_dataInit@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	movl	$0, %eax
	jmp	.L12
.L8:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PKCS7_dataFinal@PLT
	testl	%eax, %eax
	jg	.L16
	movl	$0, %eax
	jmp	.L12
.L15:
	nop
	jmp	.L9
.L16:
	nop
.L9:
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	pk7_cb, .-pk7_cb
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	PKCS7_aux, @object
	.size	PKCS7_aux, 48
PKCS7_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	pk7_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC7:
	.string	"type"
.LC8:
	.string	"PKCS7"
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_seq_tt, @object
	.size	PKCS7_seq_tt, 80
PKCS7_seq_tt:
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC7
	.quad	ASN1_OBJECT_it
	.quad	256
	.quad	-1
	.quad	0
	.quad	.LC8
	.quad	PKCS7_adb
	.text
	.globl	PKCS7_it
	.type	PKCS7_it, @function
PKCS7_it:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.11(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	PKCS7_it, .-PKCS7_it
	.globl	d2i_PKCS7
	.type	d2i_PKCS7, @function
d2i_PKCS7:
.LFB518:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L20
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
.L20:
	call	PKCS7_it@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %r8
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_d2i_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L21
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_resolve_libctx@PLT
.L21:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	d2i_PKCS7, .-d2i_PKCS7
	.globl	i2d_PKCS7
	.type	i2d_PKCS7, @function
i2d_PKCS7:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_it@PLT
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
.LFE519:
	.size	i2d_PKCS7, .-i2d_PKCS7
	.globl	PKCS7_new
	.type	PKCS7_new, @function
PKCS7_new:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS7_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	PKCS7_new, .-PKCS7_new
	.section	.rodata
.LC9:
	.string	"../crypto/pkcs7/pk7_asn1.c"
	.text
	.globl	PKCS7_new_ex
	.type	PKCS7_new_ex, @function
PKCS7_new_ex:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	PKCS7_it@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_item_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L28
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	cmpq	$0, -32(%rbp)
	je	.L28
	leaq	.LC9(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$103, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L28
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movq	$0, -8(%rbp)
.L28:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	PKCS7_new_ex, .-PKCS7_new_ex
	.globl	PKCS7_free
	.type	PKCS7_free, @function
PKCS7_free:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L32
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC9(%rip), %rcx
	movl	$116, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	PKCS7_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
.L32:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	PKCS7_free, .-PKCS7_free
	.globl	i2d_PKCS7_NDEF
	.type	i2d_PKCS7_NDEF, @function
i2d_PKCS7_NDEF:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_it@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_ndef_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	i2d_PKCS7_NDEF, .-i2d_PKCS7_NDEF
	.globl	PKCS7_dup
	.type	PKCS7_dup, @function
PKCS7_dup:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS7_it@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_item_dup@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	PKCS7_dup, .-PKCS7_dup
	.section	.rodata
.LC10:
	.string	"version"
.LC11:
	.string	"md_algs"
.LC12:
	.string	"contents"
.LC13:
	.string	"cert"
.LC14:
	.string	"crl"
.LC15:
	.string	"signer_info"
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_SIGNED_seq_tt, @object
	.size	PKCS7_SIGNED_seq_tt, 240
PKCS7_SIGNED_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	ASN1_INTEGER_it
	.quad	2
	.quad	0
	.quad	8
	.quad	.LC11
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	40
	.quad	.LC12
	.quad	PKCS7_it
	.quad	141
	.quad	0
	.quad	16
	.quad	.LC13
	.quad	X509_it
	.quad	139
	.quad	1
	.quad	24
	.quad	.LC14
	.quad	X509_CRL_it
	.quad	2
	.quad	0
	.quad	32
	.quad	.LC15
	.quad	PKCS7_SIGNER_INFO_it
	.text
	.globl	PKCS7_SIGNED_it
	.type	PKCS7_SIGNED_it, @function
PKCS7_SIGNED_it:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.10(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	PKCS7_SIGNED_it, .-PKCS7_SIGNED_it
	.globl	d2i_PKCS7_SIGNED
	.type	d2i_PKCS7_SIGNED, @function
d2i_PKCS7_SIGNED:
.LFB526:
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
	call	PKCS7_SIGNED_it@PLT
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
.LFE526:
	.size	d2i_PKCS7_SIGNED, .-d2i_PKCS7_SIGNED
	.globl	i2d_PKCS7_SIGNED
	.type	i2d_PKCS7_SIGNED, @function
i2d_PKCS7_SIGNED:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_SIGNED_it@PLT
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
.LFE527:
	.size	i2d_PKCS7_SIGNED, .-i2d_PKCS7_SIGNED
	.globl	PKCS7_SIGNED_new
	.type	PKCS7_SIGNED_new, @function
PKCS7_SIGNED_new:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS7_SIGNED_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	PKCS7_SIGNED_new, .-PKCS7_SIGNED_new
	.globl	PKCS7_SIGNED_free
	.type	PKCS7_SIGNED_free, @function
PKCS7_SIGNED_free:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS7_SIGNED_it@PLT
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
.LFE529:
	.size	PKCS7_SIGNED_free, .-PKCS7_SIGNED_free
	.type	si_cb, @function
si_cb:
.LFB530:
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
	cmpl	$3, -20(%rbp)
	jne	.L47
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L47:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	si_cb, .-si_cb
	.section	.data.rel.ro.local
	.align 32
	.type	PKCS7_SIGNER_INFO_aux, @object
	.size	PKCS7_SIGNER_INFO_aux, 48
PKCS7_SIGNER_INFO_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	si_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC16:
	.string	"issuer_and_serial"
.LC17:
	.string	"digest_alg"
.LC18:
	.string	"auth_attr"
.LC19:
	.string	"digest_enc_alg"
.LC20:
	.string	"enc_digest"
.LC21:
	.string	"unauth_attr"
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_SIGNER_INFO_seq_tt, @object
	.size	PKCS7_SIGNER_INFO_seq_tt, 280
PKCS7_SIGNER_INFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC16
	.quad	PKCS7_ISSUER_AND_SERIAL_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC17
	.quad	X509_ALGOR_it
	.quad	141
	.quad	0
	.quad	24
	.quad	.LC18
	.quad	X509_ATTRIBUTE_it
	.quad	0
	.quad	0
	.quad	32
	.quad	.LC19
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	40
	.quad	.LC20
	.quad	ASN1_OCTET_STRING_it
	.quad	139
	.quad	1
	.quad	48
	.quad	.LC21
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	PKCS7_SIGNER_INFO_it
	.type	PKCS7_SIGNER_INFO_it, @function
PKCS7_SIGNER_INFO_it:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.9(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	PKCS7_SIGNER_INFO_it, .-PKCS7_SIGNER_INFO_it
	.globl	d2i_PKCS7_SIGNER_INFO
	.type	d2i_PKCS7_SIGNER_INFO, @function
d2i_PKCS7_SIGNER_INFO:
.LFB532:
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
	call	PKCS7_SIGNER_INFO_it@PLT
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
.LFE532:
	.size	d2i_PKCS7_SIGNER_INFO, .-d2i_PKCS7_SIGNER_INFO
	.globl	i2d_PKCS7_SIGNER_INFO
	.type	i2d_PKCS7_SIGNER_INFO, @function
i2d_PKCS7_SIGNER_INFO:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_SIGNER_INFO_it@PLT
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
.LFE533:
	.size	i2d_PKCS7_SIGNER_INFO, .-i2d_PKCS7_SIGNER_INFO
	.globl	PKCS7_SIGNER_INFO_new
	.type	PKCS7_SIGNER_INFO_new, @function
PKCS7_SIGNER_INFO_new:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS7_SIGNER_INFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	PKCS7_SIGNER_INFO_new, .-PKCS7_SIGNER_INFO_new
	.globl	PKCS7_SIGNER_INFO_free
	.type	PKCS7_SIGNER_INFO_free, @function
PKCS7_SIGNER_INFO_free:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS7_SIGNER_INFO_it@PLT
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
.LFE535:
	.size	PKCS7_SIGNER_INFO_free, .-PKCS7_SIGNER_INFO_free
	.section	.rodata
.LC22:
	.string	"issuer"
.LC23:
	.string	"serial"
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_ISSUER_AND_SERIAL_seq_tt, @object
	.size	PKCS7_ISSUER_AND_SERIAL_seq_tt, 80
PKCS7_ISSUER_AND_SERIAL_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC22
	.quad	X509_NAME_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC23
	.quad	ASN1_INTEGER_it
	.text
	.globl	PKCS7_ISSUER_AND_SERIAL_it
	.type	PKCS7_ISSUER_AND_SERIAL_it, @function
PKCS7_ISSUER_AND_SERIAL_it:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	PKCS7_ISSUER_AND_SERIAL_it, .-PKCS7_ISSUER_AND_SERIAL_it
	.globl	d2i_PKCS7_ISSUER_AND_SERIAL
	.type	d2i_PKCS7_ISSUER_AND_SERIAL, @function
d2i_PKCS7_ISSUER_AND_SERIAL:
.LFB537:
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
	call	PKCS7_ISSUER_AND_SERIAL_it@PLT
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
.LFE537:
	.size	d2i_PKCS7_ISSUER_AND_SERIAL, .-d2i_PKCS7_ISSUER_AND_SERIAL
	.globl	i2d_PKCS7_ISSUER_AND_SERIAL
	.type	i2d_PKCS7_ISSUER_AND_SERIAL, @function
i2d_PKCS7_ISSUER_AND_SERIAL:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_ISSUER_AND_SERIAL_it@PLT
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
.LFE538:
	.size	i2d_PKCS7_ISSUER_AND_SERIAL, .-i2d_PKCS7_ISSUER_AND_SERIAL
	.globl	PKCS7_ISSUER_AND_SERIAL_new
	.type	PKCS7_ISSUER_AND_SERIAL_new, @function
PKCS7_ISSUER_AND_SERIAL_new:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS7_ISSUER_AND_SERIAL_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	PKCS7_ISSUER_AND_SERIAL_new, .-PKCS7_ISSUER_AND_SERIAL_new
	.globl	PKCS7_ISSUER_AND_SERIAL_free
	.type	PKCS7_ISSUER_AND_SERIAL_free, @function
PKCS7_ISSUER_AND_SERIAL_free:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS7_ISSUER_AND_SERIAL_it@PLT
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
.LFE540:
	.size	PKCS7_ISSUER_AND_SERIAL_free, .-PKCS7_ISSUER_AND_SERIAL_free
	.section	.rodata
.LC24:
	.string	"recipientinfo"
.LC25:
	.string	"enc_data"
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_ENVELOPE_seq_tt, @object
	.size	PKCS7_ENVELOPE_seq_tt, 120
PKCS7_ENVELOPE_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	ASN1_INTEGER_it
	.quad	2
	.quad	0
	.quad	8
	.quad	.LC24
	.quad	PKCS7_RECIP_INFO_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC25
	.quad	PKCS7_ENC_CONTENT_it
	.text
	.globl	PKCS7_ENVELOPE_it
	.type	PKCS7_ENVELOPE_it, @function
PKCS7_ENVELOPE_it:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.7(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	PKCS7_ENVELOPE_it, .-PKCS7_ENVELOPE_it
	.globl	d2i_PKCS7_ENVELOPE
	.type	d2i_PKCS7_ENVELOPE, @function
d2i_PKCS7_ENVELOPE:
.LFB542:
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
	call	PKCS7_ENVELOPE_it@PLT
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
.LFE542:
	.size	d2i_PKCS7_ENVELOPE, .-d2i_PKCS7_ENVELOPE
	.globl	i2d_PKCS7_ENVELOPE
	.type	i2d_PKCS7_ENVELOPE, @function
i2d_PKCS7_ENVELOPE:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_ENVELOPE_it@PLT
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
.LFE543:
	.size	i2d_PKCS7_ENVELOPE, .-i2d_PKCS7_ENVELOPE
	.globl	PKCS7_ENVELOPE_new
	.type	PKCS7_ENVELOPE_new, @function
PKCS7_ENVELOPE_new:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS7_ENVELOPE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	PKCS7_ENVELOPE_new, .-PKCS7_ENVELOPE_new
	.globl	PKCS7_ENVELOPE_free
	.type	PKCS7_ENVELOPE_free, @function
PKCS7_ENVELOPE_free:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS7_ENVELOPE_it@PLT
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
.LFE545:
	.size	PKCS7_ENVELOPE_free, .-PKCS7_ENVELOPE_free
	.type	ri_cb, @function
ri_cb:
.LFB546:
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
	cmpl	$3, -20(%rbp)
	jne	.L77
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
.L77:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	ri_cb, .-ri_cb
	.section	.data.rel.ro.local
	.align 32
	.type	PKCS7_RECIP_INFO_aux, @object
	.size	PKCS7_RECIP_INFO_aux, 48
PKCS7_RECIP_INFO_aux:
	.quad	0
	.long	0
	.long	0
	.long	0
	.zero	4
	.quad	ri_cb
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC26:
	.string	"key_enc_algor"
.LC27:
	.string	"enc_key"
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_RECIP_INFO_seq_tt, @object
	.size	PKCS7_RECIP_INFO_seq_tt, 160
PKCS7_RECIP_INFO_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC16
	.quad	PKCS7_ISSUER_AND_SERIAL_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC26
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC27
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	PKCS7_RECIP_INFO_it
	.type	PKCS7_RECIP_INFO_it, @function
PKCS7_RECIP_INFO_it:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.6(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	PKCS7_RECIP_INFO_it, .-PKCS7_RECIP_INFO_it
	.globl	d2i_PKCS7_RECIP_INFO
	.type	d2i_PKCS7_RECIP_INFO, @function
d2i_PKCS7_RECIP_INFO:
.LFB548:
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
	call	PKCS7_RECIP_INFO_it@PLT
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
.LFE548:
	.size	d2i_PKCS7_RECIP_INFO, .-d2i_PKCS7_RECIP_INFO
	.globl	i2d_PKCS7_RECIP_INFO
	.type	i2d_PKCS7_RECIP_INFO, @function
i2d_PKCS7_RECIP_INFO:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_RECIP_INFO_it@PLT
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
.LFE549:
	.size	i2d_PKCS7_RECIP_INFO, .-i2d_PKCS7_RECIP_INFO
	.globl	PKCS7_RECIP_INFO_new
	.type	PKCS7_RECIP_INFO_new, @function
PKCS7_RECIP_INFO_new:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS7_RECIP_INFO_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	PKCS7_RECIP_INFO_new, .-PKCS7_RECIP_INFO_new
	.globl	PKCS7_RECIP_INFO_free
	.type	PKCS7_RECIP_INFO_free, @function
PKCS7_RECIP_INFO_free:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS7_RECIP_INFO_it@PLT
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
.LFE551:
	.size	PKCS7_RECIP_INFO_free, .-PKCS7_RECIP_INFO_free
	.section	.rodata
.LC28:
	.string	"content_type"
.LC29:
	.string	"algorithm"
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_ENC_CONTENT_seq_tt, @object
	.size	PKCS7_ENC_CONTENT_seq_tt, 120
PKCS7_ENC_CONTENT_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC28
	.quad	ASN1_OBJECT_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC29
	.quad	X509_ALGOR_it
	.quad	137
	.quad	0
	.quad	16
	.quad	.LC25
	.quad	ASN1_OCTET_STRING_NDEF_it
	.text
	.globl	PKCS7_ENC_CONTENT_it
	.type	PKCS7_ENC_CONTENT_it, @function
PKCS7_ENC_CONTENT_it:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	PKCS7_ENC_CONTENT_it, .-PKCS7_ENC_CONTENT_it
	.globl	d2i_PKCS7_ENC_CONTENT
	.type	d2i_PKCS7_ENC_CONTENT, @function
d2i_PKCS7_ENC_CONTENT:
.LFB553:
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
	call	PKCS7_ENC_CONTENT_it@PLT
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
.LFE553:
	.size	d2i_PKCS7_ENC_CONTENT, .-d2i_PKCS7_ENC_CONTENT
	.globl	i2d_PKCS7_ENC_CONTENT
	.type	i2d_PKCS7_ENC_CONTENT, @function
i2d_PKCS7_ENC_CONTENT:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_ENC_CONTENT_it@PLT
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
.LFE554:
	.size	i2d_PKCS7_ENC_CONTENT, .-i2d_PKCS7_ENC_CONTENT
	.globl	PKCS7_ENC_CONTENT_new
	.type	PKCS7_ENC_CONTENT_new, @function
PKCS7_ENC_CONTENT_new:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS7_ENC_CONTENT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	PKCS7_ENC_CONTENT_new, .-PKCS7_ENC_CONTENT_new
	.globl	PKCS7_ENC_CONTENT_free
	.type	PKCS7_ENC_CONTENT_free, @function
PKCS7_ENC_CONTENT_free:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS7_ENC_CONTENT_it@PLT
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
.LFE556:
	.size	PKCS7_ENC_CONTENT_free, .-PKCS7_ENC_CONTENT_free
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_SIGN_ENVELOPE_seq_tt, @object
	.size	PKCS7_SIGN_ENVELOPE_seq_tt, 280
PKCS7_SIGN_ENVELOPE_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	ASN1_INTEGER_it
	.quad	2
	.quad	0
	.quad	48
	.quad	.LC24
	.quad	PKCS7_RECIP_INFO_it
	.quad	2
	.quad	0
	.quad	8
	.quad	.LC11
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	40
	.quad	.LC25
	.quad	PKCS7_ENC_CONTENT_it
	.quad	139
	.quad	0
	.quad	16
	.quad	.LC13
	.quad	X509_it
	.quad	139
	.quad	1
	.quad	24
	.quad	.LC14
	.quad	X509_CRL_it
	.quad	2
	.quad	0
	.quad	32
	.quad	.LC15
	.quad	PKCS7_SIGNER_INFO_it
	.text
	.globl	PKCS7_SIGN_ENVELOPE_it
	.type	PKCS7_SIGN_ENVELOPE_it, @function
PKCS7_SIGN_ENVELOPE_it:
.LFB557:
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
.LFE557:
	.size	PKCS7_SIGN_ENVELOPE_it, .-PKCS7_SIGN_ENVELOPE_it
	.globl	d2i_PKCS7_SIGN_ENVELOPE
	.type	d2i_PKCS7_SIGN_ENVELOPE, @function
d2i_PKCS7_SIGN_ENVELOPE:
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
	call	PKCS7_SIGN_ENVELOPE_it@PLT
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
	.size	d2i_PKCS7_SIGN_ENVELOPE, .-d2i_PKCS7_SIGN_ENVELOPE
	.globl	i2d_PKCS7_SIGN_ENVELOPE
	.type	i2d_PKCS7_SIGN_ENVELOPE, @function
i2d_PKCS7_SIGN_ENVELOPE:
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
	call	PKCS7_SIGN_ENVELOPE_it@PLT
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
	.size	i2d_PKCS7_SIGN_ENVELOPE, .-i2d_PKCS7_SIGN_ENVELOPE
	.globl	PKCS7_SIGN_ENVELOPE_new
	.type	PKCS7_SIGN_ENVELOPE_new, @function
PKCS7_SIGN_ENVELOPE_new:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS7_SIGN_ENVELOPE_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	PKCS7_SIGN_ENVELOPE_new, .-PKCS7_SIGN_ENVELOPE_new
	.globl	PKCS7_SIGN_ENVELOPE_free
	.type	PKCS7_SIGN_ENVELOPE_free, @function
PKCS7_SIGN_ENVELOPE_free:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS7_SIGN_ENVELOPE_it@PLT
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
	.size	PKCS7_SIGN_ENVELOPE_free, .-PKCS7_SIGN_ENVELOPE_free
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_ENCRYPT_seq_tt, @object
	.size	PKCS7_ENCRYPT_seq_tt, 80
PKCS7_ENCRYPT_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC25
	.quad	PKCS7_ENC_CONTENT_it
	.text
	.globl	PKCS7_ENCRYPT_it
	.type	PKCS7_ENCRYPT_it, @function
PKCS7_ENCRYPT_it:
.LFB562:
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
.LFE562:
	.size	PKCS7_ENCRYPT_it, .-PKCS7_ENCRYPT_it
	.globl	d2i_PKCS7_ENCRYPT
	.type	d2i_PKCS7_ENCRYPT, @function
d2i_PKCS7_ENCRYPT:
.LFB563:
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
	call	PKCS7_ENCRYPT_it@PLT
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
.LFE563:
	.size	d2i_PKCS7_ENCRYPT, .-d2i_PKCS7_ENCRYPT
	.globl	i2d_PKCS7_ENCRYPT
	.type	i2d_PKCS7_ENCRYPT, @function
i2d_PKCS7_ENCRYPT:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_ENCRYPT_it@PLT
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
.LFE564:
	.size	i2d_PKCS7_ENCRYPT, .-i2d_PKCS7_ENCRYPT
	.globl	PKCS7_ENCRYPT_new
	.type	PKCS7_ENCRYPT_new, @function
PKCS7_ENCRYPT_new:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS7_ENCRYPT_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	PKCS7_ENCRYPT_new, .-PKCS7_ENCRYPT_new
	.globl	PKCS7_ENCRYPT_free
	.type	PKCS7_ENCRYPT_free, @function
PKCS7_ENCRYPT_free:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS7_ENCRYPT_it@PLT
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
.LFE566:
	.size	PKCS7_ENCRYPT_free, .-PKCS7_ENCRYPT_free
	.section	.rodata
.LC30:
	.string	"md"
.LC31:
	.string	"digest"
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_DIGEST_seq_tt, @object
	.size	PKCS7_DIGEST_seq_tt, 160
PKCS7_DIGEST_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC10
	.quad	ASN1_INTEGER_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC30
	.quad	X509_ALGOR_it
	.quad	0
	.quad	0
	.quad	16
	.quad	.LC12
	.quad	PKCS7_it
	.quad	0
	.quad	0
	.quad	24
	.quad	.LC31
	.quad	ASN1_OCTET_STRING_it
	.text
	.globl	PKCS7_DIGEST_it
	.type	PKCS7_DIGEST_it, @function
PKCS7_DIGEST_it:
.LFB567:
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
.LFE567:
	.size	PKCS7_DIGEST_it, .-PKCS7_DIGEST_it
	.globl	d2i_PKCS7_DIGEST
	.type	d2i_PKCS7_DIGEST, @function
d2i_PKCS7_DIGEST:
.LFB568:
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
	call	PKCS7_DIGEST_it@PLT
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
.LFE568:
	.size	d2i_PKCS7_DIGEST, .-d2i_PKCS7_DIGEST
	.globl	i2d_PKCS7_DIGEST
	.type	i2d_PKCS7_DIGEST, @function
i2d_PKCS7_DIGEST:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	PKCS7_DIGEST_it@PLT
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
.LFE569:
	.size	i2d_PKCS7_DIGEST, .-i2d_PKCS7_DIGEST
	.globl	PKCS7_DIGEST_new
	.type	PKCS7_DIGEST_new, @function
PKCS7_DIGEST_new:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	PKCS7_DIGEST_it@PLT
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	PKCS7_DIGEST_new, .-PKCS7_DIGEST_new
	.globl	PKCS7_DIGEST_free
	.type	PKCS7_DIGEST_free, @function
PKCS7_DIGEST_free:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	PKCS7_DIGEST_it@PLT
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
.LFE571:
	.size	PKCS7_DIGEST_free, .-PKCS7_DIGEST_free
	.section	.rodata
.LC32:
	.string	"PKCS7_ATTRIBUTES"
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_ATTR_SIGN_item_tt, @object
	.size	PKCS7_ATTR_SIGN_item_tt, 40
PKCS7_ATTR_SIGN_item_tt:
	.quad	6
	.quad	0
	.quad	0
	.quad	.LC32
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	PKCS7_ATTR_SIGN_it
	.type	PKCS7_ATTR_SIGN_it, @function
PKCS7_ATTR_SIGN_it:
.LFB572:
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
.LFE572:
	.size	PKCS7_ATTR_SIGN_it, .-PKCS7_ATTR_SIGN_it
	.section	.data.rel.ro
	.align 32
	.type	PKCS7_ATTR_VERIFY_item_tt, @object
	.size	PKCS7_ATTR_VERIFY_item_tt, 40
PKCS7_ATTR_VERIFY_item_tt:
	.quad	12
	.quad	17
	.quad	0
	.quad	.LC32
	.quad	X509_ATTRIBUTE_it
	.text
	.globl	PKCS7_ATTR_VERIFY_it
	.type	PKCS7_ATTR_VERIFY_it, @function
PKCS7_ATTR_VERIFY_it:
.LFB573:
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
.LFE573:
	.size	PKCS7_ATTR_VERIFY_it, .-PKCS7_ATTR_VERIFY_it
	.globl	PKCS7_print_ctx
	.type	PKCS7_print_ctx, @function
PKCS7_print_ctx:
.LFB574:
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
	movq	%rcx, -32(%rbp)
	call	PKCS7_it@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_item_print@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	PKCS7_print_ctx, .-PKCS7_print_ctx
	.section	.data.rel.ro.local
	.align 32
	.type	internal_adb.12, @object
	.size	internal_adb.12, 56
internal_adb.12:
	.quad	0
	.quad	24
	.quad	0
	.quad	PKCS7_adbtbl
	.quad	6
	.quad	p7default_tt
	.quad	0
	.align 32
	.type	local_it.11, @object
	.size	local_it.11, 56
local_it.11:
	.byte	6
	.zero	7
	.quad	16
	.quad	PKCS7_seq_tt
	.quad	2
	.quad	PKCS7_aux
	.quad	56
	.quad	.LC8
	.section	.rodata
.LC33:
	.string	"PKCS7_SIGNED"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.10, @object
	.size	local_it.10, 56
local_it.10:
	.byte	6
	.zero	7
	.quad	16
	.quad	PKCS7_SIGNED_seq_tt
	.quad	6
	.quad	0
	.quad	48
	.quad	.LC33
	.section	.rodata
.LC34:
	.string	"PKCS7_SIGNER_INFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.9, @object
	.size	local_it.9, 56
local_it.9:
	.byte	1
	.zero	7
	.quad	16
	.quad	PKCS7_SIGNER_INFO_seq_tt
	.quad	7
	.quad	PKCS7_SIGNER_INFO_aux
	.quad	72
	.quad	.LC34
	.section	.rodata
.LC35:
	.string	"PKCS7_ISSUER_AND_SERIAL"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.8, @object
	.size	local_it.8, 56
local_it.8:
	.byte	1
	.zero	7
	.quad	16
	.quad	PKCS7_ISSUER_AND_SERIAL_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC35
	.section	.rodata
.LC36:
	.string	"PKCS7_ENVELOPE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.7, @object
	.size	local_it.7, 56
local_it.7:
	.byte	6
	.zero	7
	.quad	16
	.quad	PKCS7_ENVELOPE_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC36
	.section	.rodata
.LC37:
	.string	"PKCS7_RECIP_INFO"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	1
	.zero	7
	.quad	16
	.quad	PKCS7_RECIP_INFO_seq_tt
	.quad	4
	.quad	PKCS7_RECIP_INFO_aux
	.quad	48
	.quad	.LC37
	.section	.rodata
.LC38:
	.string	"PKCS7_ENC_CONTENT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	6
	.zero	7
	.quad	16
	.quad	PKCS7_ENC_CONTENT_seq_tt
	.quad	3
	.quad	0
	.quad	40
	.quad	.LC38
	.section	.rodata
.LC39:
	.string	"PKCS7_SIGN_ENVELOPE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	6
	.zero	7
	.quad	16
	.quad	PKCS7_SIGN_ENVELOPE_seq_tt
	.quad	7
	.quad	0
	.quad	56
	.quad	.LC39
	.section	.rodata
.LC40:
	.string	"PKCS7_ENCRYPT"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	6
	.zero	7
	.quad	16
	.quad	PKCS7_ENCRYPT_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC40
	.section	.rodata
.LC41:
	.string	"PKCS7_DIGEST"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	6
	.zero	7
	.quad	16
	.quad	PKCS7_DIGEST_seq_tt
	.quad	4
	.quad	0
	.quad	32
	.quad	.LC41
	.section	.rodata
.LC42:
	.string	"PKCS7_ATTR_SIGN"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	0
	.zero	7
	.quad	-1
	.quad	PKCS7_ATTR_SIGN_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC42
	.section	.rodata
.LC43:
	.string	"PKCS7_ATTR_VERIFY"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	0
	.zero	7
	.quad	-1
	.quad	PKCS7_ATTR_VERIFY_item_tt
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC43
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
