	.file	"ocsp_prn.c"
	.text
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB382:
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
.LFE382:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_const_OCSP_ONEREQ_sk_type, @function
ossl_check_const_OCSP_ONEREQ_sk_type:
.LFB580:
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
.LFE580:
	.size	ossl_check_const_OCSP_ONEREQ_sk_type, .-ossl_check_const_OCSP_ONEREQ_sk_type
	.type	ossl_check_const_OCSP_SINGLERESP_sk_type, @function
ossl_check_const_OCSP_SINGLERESP_sk_type:
.LFB592:
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
.LFE592:
	.size	ossl_check_const_OCSP_SINGLERESP_sk_type, .-ossl_check_const_OCSP_SINGLERESP_sk_type
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB630:
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
.LFE630:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB631:
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
.LFE631:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"%*sCertificate ID:\n"
.LC2:
	.string	"%*sHash Algorithm: "
.LC3:
	.string	"\n%*sIssuer Name Hash: "
.LC4:
	.string	"\n%*sIssuer Key Hash: "
.LC5:
	.string	"\n%*sSerial Number: "
.LC6:
	.string	"\n"
	.text
	.type	ocsp_certid_print, @function
ocsp_certid_print:
.LFB646:
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
	leaq	.LC0(%rip), %rcx
	movl	-20(%rbp), %edx
	leaq	.LC1(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$2, -20(%rbp)
	leaq	.LC0(%rip), %rcx
	movl	-20(%rbp), %edx
	leaq	.LC2(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	leaq	.LC0(%rip), %rcx
	movl	-20(%rbp), %edx
	leaq	.LC3(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_STRING@PLT
	leaq	.LC0(%rip), %rcx
	movl	-20(%rbp), %edx
	leaq	.LC4(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_STRING@PLT
	leaq	.LC0(%rip), %rcx
	movl	-20(%rbp), %edx
	leaq	.LC5(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_INTEGER@PLT
	leaq	.LC6(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	ocsp_certid_print, .-ocsp_certid_print
	.section	.rodata
.LC7:
	.string	"(UNKNOWN)"
	.text
	.type	do_table2string, @function
do_table2string:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L14
.L17:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	jne	.L15
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L16
.L15:
	addq	$1, -8(%rbp)
	addq	$16, -32(%rbp)
.L14:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L17
	leaq	.LC7(%rip), %rax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	do_table2string, .-do_table2string
	.globl	OCSP_response_status_str
	.type	OCSP_response_status_str, @function
OCSP_response_status_str:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	leaq	rstat_tbl.2(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_table2string
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	OCSP_response_status_str, .-OCSP_response_status_str
	.globl	OCSP_cert_status_str
	.type	OCSP_cert_status_str, @function
OCSP_cert_status_str:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	leaq	cstat_tbl.1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_table2string
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	OCSP_cert_status_str, .-OCSP_cert_status_str
	.globl	OCSP_crl_reason_str
	.type	OCSP_crl_reason_str, @function
OCSP_crl_reason_str:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	leaq	reason_tbl.0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_table2string
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	OCSP_crl_reason_str, .-OCSP_crl_reason_str
	.section	.rodata
.LC8:
	.string	"OCSP Request Data:\n"
.LC9:
	.string	"    Version: %lu (0x%lx)"
.LC10:
	.string	"\n    Requestor Name: "
.LC11:
	.string	"\n    Requestor List:\n"
.LC12:
	.string	"Request Single Extensions"
.LC13:
	.string	"Request Extensions"
	.text
	.globl	OCSP_REQUEST_print
	.type	OCSP_REQUEST_print, @function
OCSP_REQUEST_print:
.LFB651:
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
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC8(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$19, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L39
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-48(%rbp), %rdx
	leaq	.LC9(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L40
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L28
	leaq	.LC10(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$21, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L41
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GENERAL_NAME_print@PLT
.L28:
	leaq	.LC11(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$21, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L42
	movl	$0, -4(%rbp)
	jmp	.L31
.L33:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_ONEREQ_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ocsp_certid_print
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rcx
	leaq	.LC12(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rdi
	call	X509V3_extensions_print@PLT
	testl	%eax, %eax
	je	.L43
	addl	$1, -4(%rbp)
.L31:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_ONEREQ_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L33
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rcx
	leaq	.LC13(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdi
	call	X509V3_extensions_print@PLT
	testl	%eax, %eax
	je	.L44
	cmpq	$0, -40(%rbp)
	je	.L35
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_print@PLT
	movl	$0, -4(%rbp)
	jmp	.L36
.L37:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_print@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
	addl	$1, -4(%rbp)
.L36:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L37
.L35:
	movl	$1, %eax
	jmp	.L38
.L39:
	nop
	jmp	.L26
.L40:
	nop
	jmp	.L26
.L41:
	nop
	jmp	.L26
.L42:
	nop
	jmp	.L26
.L43:
	nop
	jmp	.L26
.L44:
	nop
.L26:
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	OCSP_REQUEST_print, .-OCSP_REQUEST_print
	.section	.rodata
.LC14:
	.string	"OCSP Response Data:\n"
	.align 8
.LC15:
	.string	"    OCSP Response Status: %s (0x%lx)\n"
.LC16:
	.string	"    Response Type: "
.LC17:
	.string	" (unknown response type)\n"
.LC18:
	.string	"\n    Version: %lu (0x%lx)\n"
.LC19:
	.string	"    Responder Id: "
.LC20:
	.string	"\n    Produced At: "
.LC21:
	.string	"\n    Responses:\n"
.LC22:
	.string	"    Cert Status: %s"
.LC23:
	.string	"\n    Revocation Time: "
	.align 8
.LC24:
	.string	"\n    Revocation Reason: %s (0x%lx)"
.LC25:
	.string	"\n    This Update: "
.LC26:
	.string	"\n    Next Update: "
.LC27:
	.string	"Response Single Extensions"
.LC28:
	.string	"Response Extensions"
	.text
	.globl	OCSP_RESPONSE_print
	.type	OCSP_RESPONSE_print, @function
OCSP_RESPONSE_print:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC14(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L82
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_get@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_response_status_str@PLT
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx
	leaq	.LC15(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L83
	cmpq	$0, -72(%rbp)
	jne	.L49
	movl	$1, %eax
	jmp	.L50
.L49:
	leaq	.LC16(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L84
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	testl	%eax, %eax
	jle	.L85
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$365, %eax
	je	.L53
	leaq	.LC17(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, %eax
	jmp	.L50
.L53:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_response_get1_basic@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L86
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-80(%rbp), %rdx
	leaq	.LC18(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L87
	leaq	.LC19(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L88
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L57
	cmpl	$1, %eax
	je	.L58
	jmp	.L59
.L57:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-88(%rbp), %rax
	movl	$8520479, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	jmp	.L59
.L58:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_STRING@PLT
	nop
.L59:
	leaq	.LC20(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L89
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_print@PLT
	testl	%eax, %eax
	je	.L90
	leaq	.LC21(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L91
	movl	$0, -4(%rbp)
	jmp	.L63
.L77:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	testq	%rax, %rax
	je	.L92
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ocsp_certid_print
	testl	%eax, %eax
	jle	.L93
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	%rax, %rdi
	call	OCSP_cert_status_str@PLT
	movq	%rax, %rdx
	leaq	.LC22(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L94
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L68
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC23(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L95
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_print@PLT
	testl	%eax, %eax
	je	.L96
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_get@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_crl_reason_str@PLT
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx
	leaq	.LC24(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L97
.L68:
	leaq	.LC25(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L98
	movq	-64(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_print@PLT
	testl	%eax, %eax
	je	.L99
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L73
	leaq	.LC26(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L100
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_print@PLT
	testl	%eax, %eax
	je	.L101
.L73:
	leaq	.LC6(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L102
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rcx
	leaq	.LC27(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rdi
	call	X509V3_extensions_print@PLT
	testl	%eax, %eax
	je	.L103
	leaq	.LC6(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L104
	jmp	.L65
.L92:
	nop
.L65:
	addl	$1, -4(%rbp)
.L63:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OCSP_SINGLERESP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L77
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-104(%rbp), %rcx
	leaq	.LC28(%rip), %rsi
	movq	-88(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rdi
	call	X509V3_extensions_print@PLT
	testl	%eax, %eax
	je	.L105
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_print@PLT
	testl	%eax, %eax
	jle	.L106
	movl	$0, -4(%rbp)
	jmp	.L80
.L81:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_print@PLT
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_write_bio_X509@PLT
	addl	$1, -4(%rbp)
.L80:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L81
	movl	$1, -8(%rbp)
	jmp	.L47
.L82:
	nop
	jmp	.L47
.L83:
	nop
	jmp	.L47
.L84:
	nop
	jmp	.L47
.L85:
	nop
	jmp	.L47
.L86:
	nop
	jmp	.L47
.L87:
	nop
	jmp	.L47
.L88:
	nop
	jmp	.L47
.L89:
	nop
	jmp	.L47
.L90:
	nop
	jmp	.L47
.L91:
	nop
	jmp	.L47
.L93:
	nop
	jmp	.L47
.L94:
	nop
	jmp	.L47
.L95:
	nop
	jmp	.L47
.L96:
	nop
	jmp	.L47
.L97:
	nop
	jmp	.L47
.L98:
	nop
	jmp	.L47
.L99:
	nop
	jmp	.L47
.L100:
	nop
	jmp	.L47
.L101:
	nop
	jmp	.L47
.L102:
	nop
	jmp	.L47
.L103:
	nop
	jmp	.L47
.L104:
	nop
	jmp	.L47
.L105:
	nop
	jmp	.L47
.L106:
	nop
.L47:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OCSP_BASICRESP_free@PLT
	movl	-8(%rbp), %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	OCSP_RESPONSE_print, .-OCSP_RESPONSE_print
	.section	.rodata
.LC29:
	.string	"successful"
.LC30:
	.string	"malformedrequest"
.LC31:
	.string	"internalerror"
.LC32:
	.string	"trylater"
.LC33:
	.string	"sigrequired"
.LC34:
	.string	"unauthorized"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	rstat_tbl.2, @object
	.size	rstat_tbl.2, 96
rstat_tbl.2:
	.quad	0
	.quad	.LC29
	.quad	1
	.quad	.LC30
	.quad	2
	.quad	.LC31
	.quad	3
	.quad	.LC32
	.quad	5
	.quad	.LC33
	.quad	6
	.quad	.LC34
	.section	.rodata
.LC35:
	.string	"good"
.LC36:
	.string	"revoked"
.LC37:
	.string	"unknown"
	.section	.data.rel.ro.local
	.align 32
	.type	cstat_tbl.1, @object
	.size	cstat_tbl.1, 48
cstat_tbl.1:
	.quad	0
	.quad	.LC35
	.quad	1
	.quad	.LC36
	.quad	2
	.quad	.LC37
	.section	.rodata
.LC38:
	.string	"unspecified"
.LC39:
	.string	"keyCompromise"
.LC40:
	.string	"cACompromise"
.LC41:
	.string	"affiliationChanged"
.LC42:
	.string	"superseded"
.LC43:
	.string	"cessationOfOperation"
.LC44:
	.string	"certificateHold"
.LC45:
	.string	"removeFromCRL"
.LC46:
	.string	"privilegeWithdrawn"
.LC47:
	.string	"aACompromise"
	.section	.data.rel.ro.local
	.align 32
	.type	reason_tbl.0, @object
	.size	reason_tbl.0, 160
reason_tbl.0:
	.quad	0
	.quad	.LC38
	.quad	1
	.quad	.LC39
	.quad	2
	.quad	.LC40
	.quad	3
	.quad	.LC41
	.quad	4
	.quad	.LC42
	.quad	5
	.quad	.LC43
	.quad	6
	.quad	.LC44
	.quad	8
	.quad	.LC45
	.quad	9
	.quad	.LC46
	.quad	10
	.quad	.LC47
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
