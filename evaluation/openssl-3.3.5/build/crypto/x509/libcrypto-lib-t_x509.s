	.file	"t_x509.c"
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
	.type	ossl_check_const_X509_sk_type, @function
ossl_check_const_X509_sk_type:
.LFB409:
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
.LFE409:
	.size	ossl_check_const_X509_sk_type, .-ossl_check_const_X509_sk_type
	.type	ossl_check_X509_sk_type, @function
ossl_check_X509_sk_type:
.LFB410:
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
.LFE410:
	.size	ossl_check_X509_sk_type, .-ossl_check_X509_sk_type
	.type	ossl_check_X509_freefunc_type, @function
ossl_check_X509_freefunc_type:
.LFB413:
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
.LFE413:
	.size	ossl_check_X509_freefunc_type, .-ossl_check_X509_freefunc_type
	.globl	OSSL_STACK_OF_X509_free
	.type	OSSL_STACK_OF_X509_free, @function
OSSL_STACK_OF_X509_free:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	X509_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	OSSL_STACK_OF_X509_free, .-OSSL_STACK_OF_X509_free
	.globl	X509_print_fp
	.type	X509_print_fp, @function
X509_print_fp:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_print_ex_fp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	X509_print_fp, .-X509_print_fp
	.section	.rodata
.LC0:
	.string	"../crypto/x509/t_x509.c"
	.text
	.globl	X509_print_ex_fp
	.type	X509_print_ex_fp, @function
X509_print_ex_fp:
.LFB649:
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
	movq	%rcx, -48(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L17
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_print_ex@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	X509_print_ex_fp, .-X509_print_ex_fp
	.globl	X509_print
	.type	X509_print, @function
X509_print:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_print_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	X509_print, .-X509_print
	.section	.rodata
.LC1:
	.string	"Certificate:\n"
.LC2:
	.string	"    Data:\n"
.LC3:
	.string	""
.LC4:
	.string	"%8sVersion: %ld (0x%lx)\n"
.LC5:
	.string	"%8sVersion: Unknown (%ld)\n"
.LC6:
	.string	"        Serial Number:"
.LC7:
	.string	"-"
.LC8:
	.string	" %s%lu (%s0x%lx)\n"
.LC9:
	.string	" (Negative)"
.LC10:
	.string	"\n%12s%s"
.LC11:
	.string	"%02x%c"
.LC12:
	.string	"    "
.LC13:
	.string	"        Issuer:%c"
.LC14:
	.string	"\n"
.LC15:
	.string	"        Validity\n"
.LC16:
	.string	"            Not Before: "
.LC17:
	.string	"\n            Not After : "
.LC18:
	.string	"        Subject:%c"
	.align 8
.LC19:
	.string	"        Subject Public Key Info:\n"
.LC20:
	.string	"%12sPublic Key Algorithm: "
	.align 8
.LC21:
	.string	"%12sUnable to load Public Key\n"
.LC22:
	.string	"%8sIssuer Unique ID: "
.LC23:
	.string	"%8sSubject Unique ID: "
.LC24:
	.string	"X509v3 extensions"
	.text
	.globl	X509_print_ex
	.type	X509_print_ex, @function
X509_print_ex:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movl	$0, -12(%rbp)
	movb	$32, -17(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -56(%rbp)
	movq	-152(%rbp), %rax
	andl	$983040, %eax
	cmpq	$262144, %rax
	jne	.L22
	movb	$10, -17(%rbp)
	movl	$12, -24(%rbp)
.L22:
	cmpq	$0, -152(%rbp)
	jne	.L23
	movl	$1, -28(%rbp)
.L23:
	movq	-160(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L24
	leaq	.LC1(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L78
	leaq	.LC2(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L79
.L24:
	movq	-160(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L27
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_version@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	js	.L28
	cmpq	$2, -8(%rbp)
	jg	.L28
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movq	-136(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L27
	jmp	.L26
.L28:
	movq	-8(%rbp), %rdx
	leaq	.LC3(%rip), %rdi
	leaq	.LC5(%rip), %rsi
	movq	-136(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L80
.L27:
	movq	-160(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L30
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_serialNumber@PLT
	movq	%rax, -64(%rbp)
	leaq	.LC6(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$22, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L81
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	jg	.L32
	call	ERR_set_mark@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, -8(%rbp)
	call	ERR_pop_to_mark@PLT
	jmp	.L33
.L32:
	movq	$-1, -8(%rbp)
.L33:
	cmpq	$-1, -8(%rbp)
	je	.L34
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$258, %eax
	jne	.L35
	movq	-8(%rbp), %rax
	negq	%rax
	movq	%rax, -48(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L36
.L35:
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -40(%rbp)
.L36:
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
	movq	-136(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L30
	jmp	.L26
.L34:
	movq	-64(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$258, %eax
	jne	.L37
	leaq	.LC9(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L38
.L37:
	leaq	.LC3(%rip), %rax
	movq	%rax, -40(%rbp)
.L38:
	movq	-40(%rbp), %rdx
	leaq	.LC3(%rip), %rdi
	leaq	.LC10(%rip), %rsi
	movq	-136(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L82
	movl	$0, -16(%rbp)
	jmp	.L40
.L44:
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L41
	movl	$10, %ecx
	jmp	.L42
.L41:
	movl	$58, %ecx
.L42:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-16(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC11(%rip), %rsi
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L83
	addl	$1, -16(%rbp)
.L40:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L44
.L30:
	movq	-160(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	jne	.L45
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_tbs_sigalg@PLT
	movq	%rax, -72(%rbp)
	leaq	.LC12(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L84
	movq	-72(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_print@PLT
	testl	%eax, %eax
	jle	.L85
.L45:
	movq	-160(%rbp), %rax
	andl	$16, %eax
	testq	%rax, %rax
	jne	.L47
	movsbl	-17(%rbp), %edx
	leaq	.LC13(%rip), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L86
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rsi
	movq	-152(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	cmpl	%eax, -28(%rbp)
	jg	.L87
	leaq	.LC14(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L88
.L47:
	movq	-160(%rbp), %rax
	andl	$32, %eax
	testq	%rax, %rax
	jne	.L50
	leaq	.LC15(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$17, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L89
	leaq	.LC16(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L90
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notBefore@PLT
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_time_print_ex@PLT
	testl	%eax, %eax
	je	.L91
	leaq	.LC17(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$25, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L92
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, %rcx
	movq	-136(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_asn1_time_print_ex@PLT
	testl	%eax, %eax
	je	.L93
	leaq	.LC14(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L94
.L50:
	movq	-160(%rbp), %rax
	andl	$64, %eax
	testq	%rax, %rax
	jne	.L56
	movsbl	-17(%rbp), %edx
	leaq	.LC18(%rip), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L95
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rsi
	movq	-152(%rbp), %rcx
	movl	-24(%rbp), %edx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	cmpl	%eax, -28(%rbp)
	jg	.L96
	leaq	.LC14(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L97
.L56:
	movq	-160(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	jne	.L59
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_X509_PUBKEY@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_PUBKEY_get0_param@PLT
	leaq	.LC19(%rip), %rcx
	movq	-136(%rbp), %rax
	movl	$33, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L98
	leaq	.LC3(%rip), %rdx
	leaq	.LC20(%rip), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L99
	movq	-88(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	testl	%eax, %eax
	jle	.L100
	leaq	.LC14(%rip), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L101
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L65
	leaq	.LC3(%rip), %rdx
	leaq	.LC21(%rip), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L59
.L65:
	movq	-56(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_public@PLT
.L59:
	movq	-160(%rbp), %rax
	andl	$4096, %eax
	testq	%rax, %rax
	jne	.L67
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_get0_uids@PLT
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L68
	leaq	.LC3(%rip), %rdx
	leaq	.LC22(%rip), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L102
	movq	-96(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_dump@PLT
	testl	%eax, %eax
	je	.L103
.L68:
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L67
	leaq	.LC3(%rip), %rdx
	leaq	.LC23(%rip), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L104
	movq	-104(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_dump@PLT
	testl	%eax, %eax
	je	.L105
.L67:
	movq	-160(%rbp), %rax
	andl	$256, %eax
	testq	%rax, %rax
	jne	.L73
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_extensions@PLT
	movq	%rax, %rdi
	movq	-160(%rbp), %rdx
	leaq	.LC24(%rip), %rsi
	movq	-136(%rbp), %rax
	movl	$8, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	X509V3_extensions_print@PLT
	testl	%eax, %eax
	je	.L106
.L73:
	movq	-160(%rbp), %rax
	andl	$512, %eax
	testq	%rax, %rax
	jne	.L74
	movq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_get0_signature@PLT
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_print@PLT
	testl	%eax, %eax
	jle	.L107
.L74:
	movq	-160(%rbp), %rax
	andl	$1024, %eax
	testq	%rax, %rax
	jne	.L76
	movq	-144(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_aux_print@PLT
	testl	%eax, %eax
	je	.L108
.L76:
	movl	$1, -12(%rbp)
	jmp	.L26
.L78:
	nop
	jmp	.L26
.L79:
	nop
	jmp	.L26
.L80:
	nop
	jmp	.L26
.L81:
	nop
	jmp	.L26
.L82:
	nop
	jmp	.L26
.L83:
	nop
	jmp	.L26
.L84:
	nop
	jmp	.L26
.L85:
	nop
	jmp	.L26
.L86:
	nop
	jmp	.L26
.L87:
	nop
	jmp	.L26
.L88:
	nop
	jmp	.L26
.L89:
	nop
	jmp	.L26
.L90:
	nop
	jmp	.L26
.L91:
	nop
	jmp	.L26
.L92:
	nop
	jmp	.L26
.L93:
	nop
	jmp	.L26
.L94:
	nop
	jmp	.L26
.L95:
	nop
	jmp	.L26
.L96:
	nop
	jmp	.L26
.L97:
	nop
	jmp	.L26
.L98:
	nop
	jmp	.L26
.L99:
	nop
	jmp	.L26
.L100:
	nop
	jmp	.L26
.L101:
	nop
	jmp	.L26
.L102:
	nop
	jmp	.L26
.L103:
	nop
	jmp	.L26
.L104:
	nop
	jmp	.L26
.L105:
	nop
	jmp	.L26
.L106:
	nop
	jmp	.L26
.L107:
	nop
	jmp	.L26
.L108:
	nop
.L26:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	X509_print_ex, .-X509_print_ex
	.section	.rodata
.LC25:
	.string	"        Subject OCSP hash: "
.LC26:
	.string	"SHA1"
.LC27:
	.string	"%02X"
	.align 8
.LC28:
	.string	"\n        Public key OCSP hash: "
	.text
	.globl	X509_ocspid_print
	.type	X509_ocspid_print, @function
X509_ocspid_print:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L110
	cmpq	$0, -104(%rbp)
	jne	.L111
.L110:
	movl	$0, %eax
	jmp	.L129
.L111:
	leaq	.LC25(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L130
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.L131
	movl	-52(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$248, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L132
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_X509_NAME@PLT
	testl	%eax, %eax
	js	.L133
	movq	-112(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	368(%rax), %rax
	leaq	.LC26(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L134
	movl	-52(%rbp), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L135
	movl	$0, -28(%rbp)
	jmp	.L120
.L122:
	movl	-28(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	movzbl	%al, %edx
	leaq	.LC27(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L136
	addl	$1, -28(%rbp)
.L120:
	cmpl	$19, -28(%rbp)
	jle	.L122
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$262, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
	leaq	.LC28(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L137
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey_bitstr@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L138
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movslq	%eax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L139
	movl	$0, -28(%rbp)
	jmp	.L126
.L128:
	movl	-28(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	movzbl	%al, %edx
	leaq	.LC27(%rip), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L140
	addl	$1, -28(%rbp)
.L126:
	cmpl	$19, -28(%rbp)
	jle	.L128
	leaq	.LC14(%rip), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$1, %eax
	jmp	.L129
.L130:
	nop
	jmp	.L114
.L131:
	nop
	jmp	.L114
.L132:
	nop
	jmp	.L114
.L133:
	nop
	jmp	.L114
.L134:
	nop
	jmp	.L114
.L135:
	nop
	jmp	.L114
.L136:
	nop
	jmp	.L114
.L137:
	nop
	jmp	.L114
.L138:
	nop
	jmp	.L114
.L139:
	nop
	jmp	.L114
.L140:
	nop
.L114:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$288, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
.L129:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	X509_ocspid_print, .-X509_ocspid_print
	.section	.rodata
.LC29:
	.string	":"
.LC30:
	.string	"%02x%s"
	.text
	.globl	X509_signature_dump
	.type	X509_signature_dump, @function
X509_signature_dump:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L142
.L149:
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$954437177, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L143
	cmpl	$0, -4(%rbp)
	jle	.L144
	leaq	.LC14(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L144
	movl	$0, %eax
	jmp	.L145
.L144:
	movl	-36(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	jg	.L143
	movl	$0, %eax
	jmp	.L145
.L143:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jne	.L146
	leaq	.LC3(%rip), %rax
	jmp	.L147
.L146:
	leaq	.LC29(%rip), %rax
.L147:
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	leaq	.LC30(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L148
	movl	$0, %eax
	jmp	.L145
.L148:
	addl	$1, -4(%rbp)
.L142:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L149
	leaq	.LC14(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$1, %eax
	je	.L150
	movl	$0, %eax
	jmp	.L145
.L150:
	movl	$1, %eax
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	X509_signature_dump, .-X509_signature_dump
	.section	.rodata
.LC31:
	.string	"%*sSignature Algorithm: "
.LC32:
	.string	"\n%*sSignature Value:"
	.text
	.globl	X509_signature_print
	.type	X509_signature_print, @function
X509_signature_print:
.LFB654:
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
	movl	$4, -4(%rbp)
	leaq	.LC3(%rip), %rcx
	movl	-4(%rbp), %edx
	leaq	.LC31(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L152
	movl	$0, %eax
	jmp	.L153
.L152:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	testl	%eax, %eax
	jg	.L154
	movl	$0, %eax
	jmp	.L153
.L154:
	cmpq	$0, -56(%rbp)
	je	.L155
	leaq	.LC3(%rip), %rcx
	movl	-4(%rbp), %edx
	leaq	.LC32(%rip), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L155
	movl	$0, %eax
	jmp	.L153
.L155:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L156
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rcx
	movl	-8(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	je	.L156
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	EVP_PKEY_asn1_find@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L156
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L156
	movq	-16(%rbp), %rax
	movq	160(%rax), %r9
	movl	-4(%rbp), %eax
	leal	4(%rax), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	*%r9
	jmp	.L153
.L156:
	leaq	.LC14(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	cmpl	$1, %eax
	je	.L159
	movl	$0, %eax
	jmp	.L153
.L159:
	cmpq	$0, -56(%rbp)
	je	.L160
	movl	-4(%rbp), %eax
	leal	4(%rax), %edx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_signature_dump@PLT
	jmp	.L153
.L160:
	movl	$1, %eax
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	X509_signature_print, .-X509_signature_print
	.section	.rodata
.LC33:
	.string	"%*sTrusted Uses:\n%*s"
.LC34:
	.string	", "
.LC35:
	.string	"%*sNo Trusted Uses.\n"
.LC36:
	.string	"%*sRejected Uses:\n%*s"
.LC37:
	.string	"%*sNo Rejected Uses.\n"
.LC38:
	.string	"%*sAlias: %.*s\n"
.LC39:
	.string	"%*sKey Id: "
.LC40:
	.string	"%s%02X"
	.text
	.globl	X509_aux_print
	.type	X509_aux_print, @function
X509_aux_print:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	%edx, -180(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	X509_trusted@PLT
	testl	%eax, %eax
	jne	.L162
	movl	$1, %eax
	jmp	.L182
.L162:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_trust_objects@PLT
	movq	%rax, -32(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_reject_objects@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L164
	movb	$1, -17(%rbp)
	movl	-180(%rbp), %eax
	leal	2(%rax), %edi
	leaq	.LC3(%rip), %r8
	leaq	.LC3(%rip), %rcx
	movl	-180(%rbp), %edx
	leaq	.LC33(%rip), %rsi
	movq	-168(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -152(%rbp)
	jmp	.L165
.L168:
	cmpb	$0, -17(%rbp)
	jne	.L166
	leaq	.LC34(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L167
.L166:
	movb	$0, -17(%rbp)
.L167:
	movl	-152(%rbp), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	leaq	-144(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
.L165:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %edx
	movl	-152(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L168
	leaq	.LC14(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L169
.L164:
	leaq	.LC3(%rip), %rcx
	movl	-180(%rbp), %edx
	leaq	.LC35(%rip), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L169:
	cmpq	$0, -40(%rbp)
	je	.L170
	movb	$1, -17(%rbp)
	movl	-180(%rbp), %eax
	leal	2(%rax), %edi
	leaq	.LC3(%rip), %r8
	leaq	.LC3(%rip), %rcx
	movl	-180(%rbp), %edx
	leaq	.LC36(%rip), %rsi
	movq	-168(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -152(%rbp)
	jmp	.L171
.L174:
	cmpb	$0, -17(%rbp)
	jne	.L172
	leaq	.LC34(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L173
.L172:
	movb	$0, -17(%rbp)
.L173:
	movl	-152(%rbp), %ebx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	leaq	-144(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
.L171:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %edx
	movl	-152(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L174
	leaq	.LC14(%rip), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L175
.L170:
	leaq	.LC3(%rip), %rcx
	movl	-180(%rbp), %edx
	leaq	.LC37(%rip), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L175:
	leaq	-152(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_alias_get0@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L176
	movl	-152(%rbp), %edi
	movq	-48(%rbp), %r8
	leaq	.LC3(%rip), %rcx
	movl	-180(%rbp), %edx
	leaq	.LC38(%rip), %rsi
	movq	-168(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L176:
	leaq	-148(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_keyid_get0@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L177
	leaq	.LC3(%rip), %rcx
	movl	-180(%rbp), %edx
	leaq	.LC39(%rip), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -152(%rbp)
	jmp	.L178
.L181:
	movl	-152(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movl	-152(%rbp), %eax
	testl	%eax, %eax
	je	.L179
	leaq	.LC29(%rip), %rax
	jmp	.L180
.L179:
	leaq	.LC3(%rip), %rax
.L180:
	leaq	.LC40(%rip), %rsi
	movq	-168(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
.L178:
	movl	-152(%rbp), %edx
	movl	-148(%rbp), %eax
	cmpl	%eax, %edx
	jl	.L181
	leaq	.LC14(%rip), %rcx
	movq	-168(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L177:
	movl	$1, %eax
.L182:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	X509_aux_print, .-X509_aux_print
	.section	.rodata
.LC41:
	.string	"    (no certificate)\n"
.LC42:
	.string	"    certificate\n"
.LC43:
	.string	"        self-issued\n"
.LC44:
	.string	" "
.LC45:
	.string	"        not yet valid\n"
.LC46:
	.string	"        no more valid\n"
	.text
	.globl	ossl_x509_print_ex_brief
	.type	ossl_x509_print_ex_brief, @function
ossl_x509_print_ex_brief:
.LFB656:
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
	movq	$131871, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L184
	leaq	.LC41(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L185
.L184:
	leaq	.LC42(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L186
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	$-65, %rcx
	movq	%rax, %rdi
	call	X509_print_ex@PLT
	testl	%eax, %eax
	jne	.L187
.L186:
	movl	$0, %eax
	jmp	.L185
.L187:
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_check_issued@PLT
	testl	%eax, %eax
	jne	.L188
	leaq	.LC43(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L189
	movl	$0, %eax
	jmp	.L185
.L188:
	leaq	.LC44(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L190
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	$-17, %rcx
	movq	%rax, %rdi
	call	X509_print_ex@PLT
	testl	%eax, %eax
	jne	.L189
.L190:
	movl	$0, %eax
	jmp	.L185
.L189:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	$-37, %rcx
	movq	%rax, %rdi
	call	X509_print_ex@PLT
	testl	%eax, %eax
	jne	.L191
	movl	$0, %eax
	jmp	.L185
.L191:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notBefore@PLT
	movq	%rax, %rdi
	call	X509_cmp_current_time@PLT
	testl	%eax, %eax
	jle	.L192
	leaq	.LC45(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L192
	movl	$0, %eax
	jmp	.L185
.L192:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, %rdi
	call	X509_cmp_current_time@PLT
	testl	%eax, %eax
	jns	.L193
	leaq	.LC46(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L193
	movl	$0, %eax
	jmp	.L185
.L193:
	movq	-40(%rbp), %rax
	notq	%rax
	andb	$-33, %ah
	movq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_print_ex@PLT
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	ossl_x509_print_ex_brief, .-ossl_x509_print_ex_brief
	.section	.rodata
.LC47:
	.string	"    (no certificates)\n"
	.text
	.type	print_certs, @function
print_certs:
.LFB657:
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
	je	.L195
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jg	.L196
.L195:
	leaq	.LC47(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	jmp	.L197
.L196:
	movl	$0, -4(%rbp)
	jmp	.L198
.L201:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L199
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_print_ex_brief@PLT
	testl	%eax, %eax
	jne	.L200
	movl	$0, %eax
	jmp	.L197
.L200:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_extensions@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$8, %r8d
	movl	$8192, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509V3_extensions_print@PLT
	testl	%eax, %eax
	jne	.L199
	movl	$0, %eax
	jmp	.L197
.L199:
	addl	$1, -4(%rbp)
.L198:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L201
	movl	$1, %eax
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	print_certs, .-print_certs
	.section	.rodata
.LC48:
	.string	"    (no trusted store)\n"
	.text
	.type	print_store_certs, @function
print_store_certs:
.LFB658:
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
	je	.L203
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get1_all_certs@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_certs
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	-12(%rbp), %eax
	jmp	.L204
.L203:
	leaq	.LC48(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	print_store_certs, .-print_store_certs
	.section	.rodata
.LC49:
	.string	"CRL path validation"
.LC50:
	.string	"Certificate verification"
	.align 8
.LC51:
	.string	"%s at depth = %d error = %d (%s)\n"
.LC52:
	.string	"Expected hostname(s) = "
.LC53:
	.string	"%s%s"
.LC54:
	.string	"Expected email address = %s\n"
.LC55:
	.string	"Expected IP address = %s\n"
.LC56:
	.string	"Failure for:\n"
.LC57:
	.string	"Non-trusted certs:\n"
.LC58:
	.string	"Certs in trust store:\n"
	.text
	.globl	X509_STORE_CTX_print_verify_cb
	.type	X509_STORE_CTX_print_verify_cb, @function
X509_STORE_CTX_print_verify_cb:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L206
	cmpq	$0, -80(%rbp)
	je	.L206
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -24(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L207
	movl	$0, %eax
	jmp	.L208
.L207:
	movl	-24(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %r12
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error_depth@PLT
	movl	%eax, %ebx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_parent_ctx@PLT
	testq	%rax, %rax
	je	.L209
	leaq	.LC49(%rip), %rax
	jmp	.L210
.L209:
	leaq	.LC50(%rip), %rax
.L210:
	movl	-24(%rbp), %edx
	leaq	.LC51(%rip), %rsi
	movq	-32(%rbp), %rdi
	movq	%r12, %r9
	movl	%edx, %r8d
	movl	%ebx, %ecx
	movq	%rax, %rdx
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_store@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_param@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
	cmpl	$64, -24(%rbp)
	je	.L211
	cmpl	$64, -24(%rbp)
	jg	.L224
	cmpl	$62, -24(%rbp)
	je	.L213
	cmpl	$63, -24(%rbp)
	je	.L214
	jmp	.L224
.L213:
	leaq	.LC52(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L215
.L218:
	cmpl	$1, -20(%rbp)
	jne	.L216
	leaq	.LC3(%rip), %rax
	jmp	.L217
.L216:
	leaq	.LC34(%rip), %rax
.L217:
	movq	-56(%rbp), %rdx
	leaq	.LC53(%rip), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	BIO_printf@PLT
.L215:
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movq	-48(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	X509_VERIFY_PARAM_get0_host@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L218
	leaq	.LC14(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L219
.L214:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get0_email@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L225
	movq	-56(%rbp), %rdx
	leaq	.LC54(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L225
.L211:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_get1_ip_asc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L221
	movq	-56(%rbp), %rdx
	leaq	.LC55(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L221:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$506, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L219
.L224:
	nop
	jmp	.L219
.L225:
	nop
.L219:
	leaq	.LC56(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_current_cert@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_print_ex_brief@PLT
	cmpl	$27, -24(%rbp)
	je	.L222
	cmpl	$18, -24(%rbp)
	je	.L222
	cmpl	$19, -24(%rbp)
	je	.L222
	cmpl	$2, -24(%rbp)
	je	.L222
	cmpl	$20, -24(%rbp)
	je	.L222
	cmpl	$33, -24(%rbp)
	je	.L222
	cmpl	$70, -24(%rbp)
	jne	.L223
.L222:
	leaq	.LC57(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_untrusted@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_certs
	leaq	.LC58(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get0_store@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_store_certs
.L223:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$528, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-32(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ERR_add_error_mem_bio@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L206:
	movl	-68(%rbp), %eax
.L208:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	X509_STORE_CTX_print_verify_cb, .-X509_STORE_CTX_print_verify_cb
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"X509_print_ex_fp"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 31
__func__.0:
	.string	"X509_STORE_CTX_print_verify_cb"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
