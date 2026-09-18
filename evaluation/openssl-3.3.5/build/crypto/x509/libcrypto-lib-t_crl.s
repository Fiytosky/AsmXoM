	.file	"t_crl.c"
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
	.type	ossl_check_const_X509_REVOKED_sk_type, @function
ossl_check_const_X509_REVOKED_sk_type:
.LFB415:
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
.LFE415:
	.size	ossl_check_const_X509_REVOKED_sk_type, .-ossl_check_const_X509_REVOKED_sk_type
	.section	.rodata
.LC0:
	.string	"../crypto/x509/t_crl.c"
	.text
	.globl	X509_CRL_print_fp
	.type	X509_CRL_print_fp, @function
X509_CRL_print_fp:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_print@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	X509_CRL_print_fp, .-X509_CRL_print_fp
	.globl	X509_CRL_print
	.type	X509_CRL_print, @function
X509_CRL_print:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_print_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	X509_CRL_print, .-X509_CRL_print
	.section	.rodata
	.align 8
.LC1:
	.string	"Certificate Revocation List (CRL):\n"
.LC2:
	.string	""
.LC3:
	.string	"%8sVersion %ld (0x%lx)\n"
.LC4:
	.string	"%8sVersion unknown (%ld)\n"
.LC5:
	.string	"    "
.LC6:
	.string	"%8sIssuer: "
.LC7:
	.string	"\n"
.LC8:
	.string	"%8sLast Update: "
.LC9:
	.string	"\n%8sNext Update: "
.LC10:
	.string	"NONE"
.LC11:
	.string	"CRL extensions"
.LC12:
	.string	"Revoked Certificates:\n"
.LC13:
	.string	"No Revoked Certificates.\n"
.LC14:
	.string	"    Serial Number: "
.LC15:
	.string	"\n        Revocation Date: "
.LC16:
	.string	"CRL entry extensions"
	.text
	.globl	X509_CRL_print_ex
	.type	X509_CRL_print_ex, @function
X509_CRL_print_ex:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_version@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	js	.L13
	cmpq	$1, -16(%rbp)
	jg	.L13
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rcx
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L14
.L13:
	movq	-16(%rbp), %rdx
	leaq	.LC2(%rip), %rdi
	leaq	.LC4(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L14:
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_get0_signature@PLT
	leaq	.LC5(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_print@PLT
	leaq	.LC2(%rip), %rdx
	leaq	.LC6(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, %rsi
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	leaq	.LC7(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	leaq	.LC2(%rip), %rdx
	leaq	.LC8(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_lastUpdate@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_print@PLT
	leaq	.LC2(%rip), %rdx
	leaq	.LC9(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_nextUpdate@PLT
	testq	%rax, %rax
	je	.L15
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_nextUpdate@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_print@PLT
	jmp	.L16
.L15:
	leaq	.LC10(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L16:
	leaq	.LC7(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get0_extensions@PLT
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$8, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509V3_extensions_print@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_REVOKED@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_REVOKED_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jle	.L17
	leaq	.LC12(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L18
.L17:
	leaq	.LC13(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L18:
	movl	$0, -4(%rbp)
	jmp	.L19
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_REVOKED_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC14(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REVOKED_get0_serialNumber@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_INTEGER@PLT
	leaq	.LC15(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REVOKED_get0_revocationDate@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_print@PLT
	leaq	.LC7(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_REVOKED_get0_extensions@PLT
	movq	%rax, %rdx
	leaq	.LC16(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$8, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509V3_extensions_print@PLT
	addl	$1, -4(%rbp)
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_REVOKED_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L20
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_print@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	X509_CRL_print_ex, .-X509_CRL_print_ex
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"X509_CRL_print_fp"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
