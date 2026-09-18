	.file	"v3_ocsp.c"
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
	.type	ossl_check_const_ACCESS_DESCRIPTION_sk_type, @function
ossl_check_const_ACCESS_DESCRIPTION_sk_type:
.LFB516:
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
.LFE516:
	.size	ossl_check_const_ACCESS_DESCRIPTION_sk_type, .-ossl_check_const_ACCESS_DESCRIPTION_sk_type
	.globl	ossl_v3_ocsp_crlid
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_ocsp_crlid, @object
	.size	ossl_v3_ocsp_crlid, 104
ossl_v3_ocsp_crlid:
	.long	367
	.long	0
	.quad	OCSP_CRLID_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_ocsp_crlid
	.quad	0
	.quad	0
	.globl	ossl_v3_ocsp_acutoff
	.align 32
	.type	ossl_v3_ocsp_acutoff, @object
	.size	ossl_v3_ocsp_acutoff, 104
ossl_v3_ocsp_acutoff:
	.long	370
	.long	0
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_ocsp_acutoff
	.quad	0
	.quad	0
	.globl	ossl_v3_crl_invdate
	.align 32
	.type	ossl_v3_crl_invdate, @object
	.size	ossl_v3_crl_invdate, 104
ossl_v3_crl_invdate:
	.long	142
	.long	0
	.quad	ASN1_GENERALIZEDTIME_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_ocsp_acutoff
	.quad	0
	.quad	0
	.globl	ossl_v3_crl_hold
	.align 32
	.type	ossl_v3_crl_hold, @object
	.size	ossl_v3_crl_hold, 104
ossl_v3_crl_hold:
	.long	430
	.long	0
	.quad	ASN1_OBJECT_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_object
	.quad	0
	.quad	0
	.globl	ossl_v3_ocsp_nonce
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_v3_ocsp_nonce, @object
	.size	ossl_v3_ocsp_nonce, 104
ossl_v3_ocsp_nonce:
	.long	366
	.long	0
	.quad	0
	.quad	ocsp_nonce_new
	.quad	ocsp_nonce_free
	.quad	d2i_ocsp_nonce
	.quad	i2d_ocsp_nonce
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_ocsp_nonce
	.quad	0
	.quad	0
	.globl	ossl_v3_ocsp_nocheck
	.section	.data.rel.ro
	.align 32
	.type	ossl_v3_ocsp_nocheck, @object
	.size	ossl_v3_ocsp_nocheck, 104
ossl_v3_ocsp_nocheck:
	.long	369
	.long	0
	.quad	ASN1_NULL_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	s2i_ocsp_nocheck
	.quad	0
	.quad	0
	.quad	i2r_ocsp_nocheck
	.quad	0
	.quad	0
	.globl	ossl_v3_ocsp_serviceloc
	.align 32
	.type	ossl_v3_ocsp_serviceloc, @object
	.size	ossl_v3_ocsp_serviceloc, 104
ossl_v3_ocsp_serviceloc:
	.long	371
	.long	0
	.quad	OCSP_SERVICELOC_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_ocsp_serviceloc
	.quad	0
	.quad	0
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"%*scrlUrl: "
.LC2:
	.string	"\n"
.LC3:
	.string	"%*scrlNum: "
.LC4:
	.string	"%*scrlTime: "
	.text
	.type	i2r_ocsp_crlid, @function
i2r_ocsp_crlid:
.LFB646:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L8
	leaq	.LC0(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC1(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L19
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print@PLT
	testl	%eax, %eax
	je	.L20
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L21
.L8:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L12
	leaq	.LC0(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC3(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L22
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_INTEGER@PLT
	testl	%eax, %eax
	jle	.L23
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L24
.L12:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L15
	leaq	.LC0(%rip), %rcx
	movl	-44(%rbp), %edx
	leaq	.LC4(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L25
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_print@PLT
	testl	%eax, %eax
	je	.L26
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L27
.L15:
	movl	$1, %eax
	jmp	.L18
.L19:
	nop
	jmp	.L10
.L20:
	nop
	jmp	.L10
.L21:
	nop
	jmp	.L10
.L22:
	nop
	jmp	.L10
.L23:
	nop
	jmp	.L10
.L24:
	nop
	jmp	.L10
.L25:
	nop
	jmp	.L10
.L26:
	nop
	jmp	.L10
.L27:
	nop
.L10:
	movl	$0, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	i2r_ocsp_crlid, .-i2r_ocsp_crlid
	.section	.rodata
.LC5:
	.string	"%*s"
	.text
	.type	i2r_ocsp_acutoff, @function
i2r_ocsp_acutoff:
.LFB647:
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
	movl	%ecx, -28(%rbp)
	leaq	.LC0(%rip), %rcx
	movl	-28(%rbp), %edx
	leaq	.LC5(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_print@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$0, %eax
	jmp	.L30
.L31:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	i2r_ocsp_acutoff, .-i2r_ocsp_acutoff
	.type	i2r_object, @function
i2r_object:
.LFB648:
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
	movl	%ecx, -28(%rbp)
	leaq	.LC0(%rip), %rcx
	movl	-28(%rbp), %edx
	leaq	.LC5(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L33
	movl	$0, %eax
	jmp	.L34
.L33:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	testl	%eax, %eax
	jg	.L35
	movl	$0, %eax
	jmp	.L34
.L35:
	movl	$1, %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	i2r_object, .-i2r_object
	.type	ocsp_nonce_new, @function
ocsp_nonce_new:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASN1_OCTET_STRING_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	ocsp_nonce_new, .-ocsp_nonce_new
	.type	i2d_ocsp_nonce, @function
i2d_ocsp_nonce:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L39
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L39:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	i2d_ocsp_nonce, .-i2d_ocsp_nonce
	.section	.rodata
.LC6:
	.string	"../crypto/ocsp/v3_ocsp.c"
	.text
	.type	d2i_ocsp_nonce, @function
d2i_ocsp_nonce:
.LFB651:
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
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L42
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L43
.L42:
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L46
	jmp	.L45
.L43:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L46:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	je	.L52
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -16(%rbp)
	je	.L48
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L48:
	movq	-8(%rbp), %rax
	jmp	.L49
.L52:
	nop
.L45:
	cmpq	$0, -16(%rbp)
	je	.L50
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L51
.L50:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
.L51:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$206, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$39, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	d2i_ocsp_nonce, .-d2i_ocsp_nonce
	.type	ocsp_nonce_free, @function
ocsp_nonce_free:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	ocsp_nonce_free, .-ocsp_nonce_free
	.type	i2r_ocsp_nonce, @function
i2r_ocsp_nonce:
.LFB653:
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
	movl	%ecx, -28(%rbp)
	leaq	.LC0(%rip), %rcx
	movl	-28(%rbp), %edx
	leaq	.LC5(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L55
	movl	$0, %eax
	jmp	.L56
.L55:
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_STRING@PLT
	testl	%eax, %eax
	jg	.L57
	movl	$0, %eax
	jmp	.L56
.L57:
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	i2r_ocsp_nonce, .-i2r_ocsp_nonce
	.type	i2r_ocsp_nocheck, @function
i2r_ocsp_nocheck:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	i2r_ocsp_nocheck, .-i2r_ocsp_nocheck
	.type	s2i_ocsp_nocheck, @function
s2i_ocsp_nocheck:
.LFB655:
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
	call	ASN1_NULL_new@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	s2i_ocsp_nocheck, .-s2i_ocsp_nocheck
	.section	.rodata
.LC7:
	.string	"%*sIssuer: "
.LC8:
	.string	"\n%*s"
.LC9:
	.string	" - "
	.text
	.type	i2r_ocsp_serviceloc, @function
i2r_ocsp_serviceloc:
.LFB656:
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
	movl	%ecx, -60(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movl	-60(%rbp), %edx
	leaq	.LC7(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L73
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax
	movl	$8520479, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	testl	%eax, %eax
	jle	.L74
	movl	$0, -4(%rbp)
	jmp	.L66
.L71:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ACCESS_DESCRIPTION_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movl	-60(%rbp), %eax
	leal	(%rax,%rax), %edx
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L75
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	testl	%eax, %eax
	jle	.L76
	leaq	.LC9(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L77
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GENERAL_NAME_print@PLT
	testl	%eax, %eax
	jle	.L78
	addl	$1, -4(%rbp)
.L66:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ACCESS_DESCRIPTION_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L71
	movl	$1, %eax
	jmp	.L72
.L73:
	nop
	jmp	.L64
.L74:
	nop
	jmp	.L64
.L75:
	nop
	jmp	.L64
.L76:
	nop
	jmp	.L64
.L77:
	nop
	jmp	.L64
.L78:
	nop
.L64:
	movl	$0, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	i2r_ocsp_serviceloc, .-i2r_ocsp_serviceloc
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"d2i_ocsp_nonce"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
