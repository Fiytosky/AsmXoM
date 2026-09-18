	.file	"cmp_status.c"
	.text
	.type	ossl_check_ASN1_UTF8STRING_type, @function
ossl_check_ASN1_UTF8STRING_type:
.LFB69:
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
.LFE69:
	.size	ossl_check_ASN1_UTF8STRING_type, .-ossl_check_ASN1_UTF8STRING_type
	.type	ossl_check_const_ASN1_UTF8STRING_sk_type, @function
ossl_check_const_ASN1_UTF8STRING_sk_type:
.LFB70:
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
.LFE70:
	.size	ossl_check_const_ASN1_UTF8STRING_sk_type, .-ossl_check_const_ASN1_UTF8STRING_sk_type
	.type	ossl_check_ASN1_UTF8STRING_sk_type, @function
ossl_check_ASN1_UTF8STRING_sk_type:
.LFB71:
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
.LFE71:
	.size	ossl_check_ASN1_UTF8STRING_sk_type, .-ossl_check_ASN1_UTF8STRING_sk_type
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
	.globl	ossl_cmp_pkisi_get_status
	.type	ossl_cmp_pkisi_get_status, @function
ossl_cmp_pkisi_get_status:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movl	$1, %eax
	jmp	.L13
.L12:
	movl	$0, %eax
.L13:
	cltq
	testq	%rax, %rax
	jne	.L14
	movl	$-1, %eax
	jmp	.L15
.L14:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_cmp_asn1_get_int@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-2, -4(%rbp)
	je	.L16
	movl	-4(%rbp), %eax
	jmp	.L15
.L16:
	movl	$-1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	ossl_cmp_pkisi_get_status, .-ossl_cmp_pkisi_get_status
	.section	.rodata
.LC0:
	.string	"PKIStatus: accepted"
	.align 8
.LC1:
	.string	"PKIStatus: granted with modifications"
.LC2:
	.string	"PKIStatus: rejection"
.LC3:
	.string	"PKIStatus: waiting"
	.align 8
.LC4:
	.string	"PKIStatus: revocation warning - a revocation of the cert is imminent"
	.align 8
.LC5:
	.string	"PKIStatus: revocation notification - a revocation of the cert has occurred"
	.align 8
.LC6:
	.string	"PKIStatus: key update warning - update already done for the cert"
.LC7:
	.string	"../crypto/cmp/cmp_status.c"
.LC8:
	.string	"PKIStatus: invalid=%d"
	.text
	.globl	ossl_cmp_PKIStatus_to_string
	.type	ossl_cmp_PKIStatus_to_string, @function
ossl_cmp_PKIStatus_to_string:
.LFB746:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$6, -4(%rbp)
	je	.L19
	cmpl	$6, -4(%rbp)
	jg	.L20
	cmpl	$5, -4(%rbp)
	je	.L21
	cmpl	$5, -4(%rbp)
	jg	.L20
	cmpl	$4, -4(%rbp)
	je	.L22
	cmpl	$4, -4(%rbp)
	jg	.L20
	cmpl	$3, -4(%rbp)
	je	.L23
	cmpl	$3, -4(%rbp)
	jg	.L20
	cmpl	$2, -4(%rbp)
	je	.L24
	cmpl	$2, -4(%rbp)
	jg	.L20
	cmpl	$0, -4(%rbp)
	je	.L25
	cmpl	$1, -4(%rbp)
	je	.L26
	jmp	.L20
.L25:
	leaq	.LC0(%rip), %rax
	jmp	.L27
.L26:
	leaq	.LC1(%rip), %rax
	jmp	.L27
.L24:
	leaq	.LC2(%rip), %rax
	jmp	.L27
.L23:
	leaq	.LC3(%rip), %rax
	jmp	.L27
.L22:
	leaq	.LC4(%rip), %rax
	jmp	.L27
.L21:
	leaq	.LC5(%rip), %rax
	jmp	.L27
.L19:
	leaq	.LC6(%rip), %rax
	jmp	.L27
.L20:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-4(%rbp), %eax
	leaq	.LC8(%rip), %rdx
	movl	%eax, %ecx
	movl	$107, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	ossl_cmp_PKIStatus_to_string, .-ossl_cmp_PKIStatus_to_string
	.globl	ossl_cmp_pkisi_get0_statusString
	.type	ossl_cmp_pkisi_get0_statusString, @function
ossl_cmp_pkisi_get0_statusString:
.LFB747:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L30:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	ossl_cmp_pkisi_get0_statusString, .-ossl_cmp_pkisi_get0_statusString
	.globl	ossl_cmp_pkisi_get_pkifailureinfo
	.type	ossl_cmp_pkisi_get_pkifailureinfo, @function
ossl_cmp_pkisi_get_pkifailureinfo:
.LFB748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L32
	movl	$-1, %eax
	jmp	.L33
.L32:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movl	$0, -4(%rbp)
	jmp	.L35
.L37:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_get_bit@PLT
	testl	%eax, %eax
	je	.L36
	movl	-4(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -8(%rbp)
.L36:
	addl	$1, -4(%rbp)
.L35:
	cmpl	$26, -4(%rbp)
	jle	.L37
.L34:
	movl	-8(%rbp), %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	ossl_cmp_pkisi_get_pkifailureinfo, .-ossl_cmp_pkisi_get_pkifailureinfo
	.section	.rodata
.LC9:
	.string	"badAlg"
.LC10:
	.string	"badMessageCheck"
.LC11:
	.string	"badRequest"
.LC12:
	.string	"badTime"
.LC13:
	.string	"badCertId"
.LC14:
	.string	"badDataFormat"
.LC15:
	.string	"wrongAuthority"
.LC16:
	.string	"incorrectData"
.LC17:
	.string	"missingTimeStamp"
.LC18:
	.string	"badPOP"
.LC19:
	.string	"certRevoked"
.LC20:
	.string	"certConfirmed"
.LC21:
	.string	"wrongIntegrity"
.LC22:
	.string	"badRecipientNonce"
.LC23:
	.string	"timeNotAvailable"
.LC24:
	.string	"unacceptedPolicy"
.LC25:
	.string	"unacceptedExtension"
.LC26:
	.string	"addInfoNotAvailable"
.LC27:
	.string	"badSenderNonce"
.LC28:
	.string	"badCertTemplate"
.LC29:
	.string	"signerNotTrusted"
.LC30:
	.string	"transactionIdInUse"
.LC31:
	.string	"unsupportedVersion"
.LC32:
	.string	"notAuthorized"
.LC33:
	.string	"systemUnavail"
.LC34:
	.string	"systemFailure"
.LC35:
	.string	"duplicateCertReq"
	.text
	.type	CMP_PKIFAILUREINFO_to_string, @function
CMP_PKIFAILUREINFO_to_string:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$26, -4(%rbp)
	je	.L39
	cmpl	$26, -4(%rbp)
	jg	.L40
	cmpl	$25, -4(%rbp)
	je	.L41
	cmpl	$25, -4(%rbp)
	jg	.L40
	cmpl	$24, -4(%rbp)
	je	.L42
	cmpl	$24, -4(%rbp)
	jg	.L40
	cmpl	$23, -4(%rbp)
	je	.L43
	cmpl	$23, -4(%rbp)
	jg	.L40
	cmpl	$22, -4(%rbp)
	je	.L44
	cmpl	$22, -4(%rbp)
	jg	.L40
	cmpl	$21, -4(%rbp)
	je	.L45
	cmpl	$21, -4(%rbp)
	jg	.L40
	cmpl	$20, -4(%rbp)
	je	.L46
	cmpl	$20, -4(%rbp)
	jg	.L40
	cmpl	$19, -4(%rbp)
	je	.L47
	cmpl	$19, -4(%rbp)
	jg	.L40
	cmpl	$18, -4(%rbp)
	je	.L48
	cmpl	$18, -4(%rbp)
	jg	.L40
	cmpl	$17, -4(%rbp)
	je	.L49
	cmpl	$17, -4(%rbp)
	jg	.L40
	cmpl	$16, -4(%rbp)
	je	.L50
	cmpl	$16, -4(%rbp)
	jg	.L40
	cmpl	$15, -4(%rbp)
	je	.L51
	cmpl	$15, -4(%rbp)
	jg	.L40
	cmpl	$14, -4(%rbp)
	je	.L52
	cmpl	$14, -4(%rbp)
	jg	.L40
	cmpl	$13, -4(%rbp)
	je	.L53
	cmpl	$13, -4(%rbp)
	jg	.L40
	cmpl	$12, -4(%rbp)
	je	.L54
	cmpl	$12, -4(%rbp)
	jg	.L40
	cmpl	$11, -4(%rbp)
	je	.L55
	cmpl	$11, -4(%rbp)
	jg	.L40
	cmpl	$10, -4(%rbp)
	je	.L56
	cmpl	$10, -4(%rbp)
	jg	.L40
	cmpl	$9, -4(%rbp)
	je	.L57
	cmpl	$9, -4(%rbp)
	jg	.L40
	cmpl	$8, -4(%rbp)
	je	.L58
	cmpl	$8, -4(%rbp)
	jg	.L40
	cmpl	$7, -4(%rbp)
	je	.L59
	cmpl	$7, -4(%rbp)
	jg	.L40
	cmpl	$6, -4(%rbp)
	je	.L60
	cmpl	$6, -4(%rbp)
	jg	.L40
	cmpl	$5, -4(%rbp)
	je	.L61
	cmpl	$5, -4(%rbp)
	jg	.L40
	cmpl	$4, -4(%rbp)
	je	.L62
	cmpl	$4, -4(%rbp)
	jg	.L40
	cmpl	$3, -4(%rbp)
	je	.L63
	cmpl	$3, -4(%rbp)
	jg	.L40
	cmpl	$2, -4(%rbp)
	je	.L64
	cmpl	$2, -4(%rbp)
	jg	.L40
	cmpl	$0, -4(%rbp)
	je	.L65
	cmpl	$1, -4(%rbp)
	je	.L66
	jmp	.L40
.L65:
	leaq	.LC9(%rip), %rax
	jmp	.L67
.L66:
	leaq	.LC10(%rip), %rax
	jmp	.L67
.L64:
	leaq	.LC11(%rip), %rax
	jmp	.L67
.L63:
	leaq	.LC12(%rip), %rax
	jmp	.L67
.L62:
	leaq	.LC13(%rip), %rax
	jmp	.L67
.L61:
	leaq	.LC14(%rip), %rax
	jmp	.L67
.L60:
	leaq	.LC15(%rip), %rax
	jmp	.L67
.L59:
	leaq	.LC16(%rip), %rax
	jmp	.L67
.L58:
	leaq	.LC17(%rip), %rax
	jmp	.L67
.L57:
	leaq	.LC18(%rip), %rax
	jmp	.L67
.L56:
	leaq	.LC19(%rip), %rax
	jmp	.L67
.L55:
	leaq	.LC20(%rip), %rax
	jmp	.L67
.L54:
	leaq	.LC21(%rip), %rax
	jmp	.L67
.L53:
	leaq	.LC22(%rip), %rax
	jmp	.L67
.L52:
	leaq	.LC23(%rip), %rax
	jmp	.L67
.L51:
	leaq	.LC24(%rip), %rax
	jmp	.L67
.L50:
	leaq	.LC25(%rip), %rax
	jmp	.L67
.L49:
	leaq	.LC26(%rip), %rax
	jmp	.L67
.L48:
	leaq	.LC27(%rip), %rax
	jmp	.L67
.L47:
	leaq	.LC28(%rip), %rax
	jmp	.L67
.L46:
	leaq	.LC29(%rip), %rax
	jmp	.L67
.L45:
	leaq	.LC30(%rip), %rax
	jmp	.L67
.L44:
	leaq	.LC31(%rip), %rax
	jmp	.L67
.L43:
	leaq	.LC32(%rip), %rax
	jmp	.L67
.L42:
	leaq	.LC33(%rip), %rax
	jmp	.L67
.L41:
	leaq	.LC34(%rip), %rax
	jmp	.L67
.L39:
	leaq	.LC35(%rip), %rax
	jmp	.L67
.L40:
	movl	$0, %eax
.L67:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	CMP_PKIFAILUREINFO_to_string, .-CMP_PKIFAILUREINFO_to_string
	.globl	ossl_cmp_pkisi_check_pkifailureinfo
	.type	ossl_cmp_pkisi_check_pkifailureinfo, @function
ossl_cmp_pkisi_check_pkifailureinfo:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L69
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	$0, %eax
.L70:
	cltq
	testq	%rax, %rax
	jne	.L71
	movl	$-1, %eax
	jmp	.L72
.L71:
	cmpl	$0, -12(%rbp)
	js	.L73
	cmpl	$26, -12(%rbp)
	jle	.L74
.L73:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L72
.L74:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_get_bit@PLT
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	ossl_cmp_pkisi_check_pkifailureinfo, .-ossl_cmp_pkisi_check_pkifailureinfo
	.section	.rodata
.LC36:
	.string	"%s"
.LC37:
	.string	"; PKIFailureInfo: "
.LC38:
	.string	", "
.LC39:
	.string	""
.LC40:
	.string	"%s%s"
.LC41:
	.string	"; <no failure info>"
.LC42:
	.string	"s"
.LC43:
	.string	"; StatusString%s: "
.LC44:
	.string	"\"%.*s\"%s"
	.text
	.type	snprint_PKIStatusInfo_parts, @function
snprint_PKIStatusInfo_parts:
.LFB751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -84(%rbp)
	movl	%esi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	%rcx, -104(%rbp)
	movq	%r8, -112(%rbp)
	movl	$0, -28(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L76
	cmpl	$0, -84(%rbp)
	js	.L76
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	ossl_cmp_PKIStatus_to_string@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L77
.L76:
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-48(%rbp), %rdx
	leaq	.LC36(%rip), %rdi
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L79
	movl	-52(%rbp), %eax
	cltq
	cmpq	-112(%rbp), %rax
	jb	.L80
.L79:
	movl	$0, %eax
	jmp	.L78
.L80:
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	-52(%rbp), %eax
	cltq
	subq	%rax, -112(%rbp)
	cmpl	$-1, -88(%rbp)
	je	.L81
	cmpl	$0, -88(%rbp)
	je	.L81
	leaq	.LC37(%rip), %rdx
	movq	-112(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L82
	movl	-52(%rbp), %eax
	cltq
	cmpq	-112(%rbp), %rax
	jb	.L83
.L82:
	movl	$0, %eax
	jmp	.L78
.L83:
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	-52(%rbp), %eax
	cltq
	subq	%rax, -112(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L84
.L90:
	movl	-20(%rbp), %eax
	movl	-88(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L85
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	CMP_PKIFAILUREINFO_to_string
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L85
	cmpl	$0, -28(%rbp)
	je	.L86
	leaq	.LC38(%rip), %rax
	jmp	.L87
.L86:
	leaq	.LC39(%rip), %rax
.L87:
	movq	-64(%rbp), %rcx
	leaq	.LC40(%rip), %rdx
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L88
	movl	-52(%rbp), %eax
	cltq
	cmpq	-112(%rbp), %rax
	jb	.L89
.L88:
	movl	$0, %eax
	jmp	.L78
.L89:
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	-52(%rbp), %eax
	cltq
	subq	%rax, -112(%rbp)
	movl	$1, -28(%rbp)
.L85:
	addl	$1, -20(%rbp)
.L84:
	cmpl	$26, -20(%rbp)
	jle	.L90
.L81:
	cmpl	$0, -28(%rbp)
	jne	.L91
	cmpl	$0, -84(%rbp)
	je	.L91
	cmpl	$1, -84(%rbp)
	je	.L91
	leaq	.LC41(%rip), %rdx
	movq	-112(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L92
	movl	-52(%rbp), %eax
	cltq
	cmpq	-112(%rbp), %rax
	jb	.L93
.L92:
	movl	$0, %eax
	jmp	.L78
.L93:
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	-52(%rbp), %eax
	cltq
	subq	%rax, -112(%rbp)
.L91:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jle	.L94
	cmpl	$1, -68(%rbp)
	jle	.L95
	leaq	.LC42(%rip), %rax
	jmp	.L96
.L95:
	leaq	.LC39(%rip), %rax
.L96:
	leaq	.LC43(%rip), %rdx
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L97
	movl	-52(%rbp), %eax
	cltq
	cmpq	-112(%rbp), %rax
	jb	.L98
.L97:
	movl	$0, %eax
	jmp	.L78
.L98:
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	-52(%rbp), %eax
	cltq
	subq	%rax, -112(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L99
.L104:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -80(%rbp)
	movl	-68(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -24(%rbp)
	jge	.L100
	leaq	.LC38(%rip), %rbx
	jmp	.L101
.L100:
	leaq	.LC39(%rip), %rbx
.L101:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %r12
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, %ecx
	leaq	.LC44(%rip), %rdx
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rbx, %r9
	movq	%r12, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L102
	movl	-52(%rbp), %eax
	cltq
	cmpq	-112(%rbp), %rax
	jb	.L103
.L102:
	movl	$0, %eax
	jmp	.L78
.L103:
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	-52(%rbp), %eax
	cltq
	subq	%rax, -112(%rbp)
	addl	$1, -24(%rbp)
.L99:
	movl	-24(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L104
.L94:
	movq	-104(%rbp), %rax
.L78:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	snprint_PKIStatusInfo_parts, .-snprint_PKIStatusInfo_parts
	.globl	OSSL_CMP_snprint_PKIStatusInfo
	.type	OSSL_CMP_snprint_PKIStatusInfo, @function
OSSL_CMP_snprint_PKIStatusInfo:
.LFB752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L106
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$247, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L107
.L106:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_cmp_pkisi_get_pkifailureinfo@PLT
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movl	%eax, %edi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	-20(%rbp), %eax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movl	%eax, %esi
	call	snprint_PKIStatusInfo_parts
.L107:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE752:
	.size	OSSL_CMP_snprint_PKIStatusInfo, .-OSSL_CMP_snprint_PKIStatusInfo
	.globl	OSSL_CMP_CTX_snprint_PKIStatus
	.type	OSSL_CMP_CTX_snprint_PKIStatus, @function
OSSL_CMP_CTX_snprint_PKIStatus:
.LFB753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L109
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$262, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$58, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L110
.L109:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get0_statusString@PLT
	movq	%rax, %r12
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_failInfoCode@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_CTX_get_status@PLT
	movl	%eax, %edi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movq	%r12, %rdx
	movl	%ebx, %esi
	call	snprint_PKIStatusInfo_parts
.L110:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	OSSL_CMP_CTX_snprint_PKIStatus, .-OSSL_CMP_CTX_snprint_PKIStatus
	.globl	OSSL_CMP_STATUSINFO_new
	.type	OSSL_CMP_STATUSINFO_new, @function
OSSL_CMP_STATUSINFO_new:
.LFB754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	call	OSSL_CMP_PKISI_new@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L125
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_INTEGER_set@PLT
	testl	%eax, %eax
	je	.L126
	cmpq	$0, -64(%rbp)
	je	.L115
	call	ASN1_UTF8STRING_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L127
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	je	.L127
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_UTF8STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L129
	movq	$0, -24(%rbp)
.L115:
	movl	$0, -28(%rbp)
	jmp	.L120
.L123:
	movl	-28(%rbp), %eax
	movl	-56(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L121
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L122
	call	ASN1_BIT_STRING_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L130
.L122:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %ecx
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_set_bit@PLT
	testl	%eax, %eax
	je	.L131
.L121:
	addl	$1, -28(%rbp)
.L120:
	cmpl	$26, -28(%rbp)
	jle	.L123
	movq	-40(%rbp), %rax
	jmp	.L124
.L125:
	nop
	jmp	.L113
.L126:
	nop
	jmp	.L113
.L127:
	nop
	jmp	.L113
.L128:
	nop
	jmp	.L113
.L129:
	nop
	jmp	.L113
.L130:
	nop
	jmp	.L113
.L131:
	nop
.L113:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_CMP_PKISI_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTF8STRING_free@PLT
	movl	$0, %eax
.L124:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE754:
	.size	OSSL_CMP_STATUSINFO_new, .-OSSL_CMP_STATUSINFO_new
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 29
__func__.3:
	.string	"ossl_cmp_PKIStatus_to_string"
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 36
__func__.2:
	.string	"ossl_cmp_pkisi_check_pkifailureinfo"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 31
__func__.1:
	.string	"OSSL_CMP_snprint_PKIStatusInfo"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 31
__func__.0:
	.string	"OSSL_CMP_CTX_snprint_PKIStatus"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
