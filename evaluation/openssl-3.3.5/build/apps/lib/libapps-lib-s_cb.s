	.file	"s_cb.c"
	.text
	.type	ossl_check_const_OPENSSL_STRING_sk_type, @function
ossl_check_const_OPENSSL_STRING_sk_type:
.LFB7:
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
.LFE7:
	.size	ossl_check_const_OPENSSL_STRING_sk_type, .-ossl_check_const_OPENSSL_STRING_sk_type
	.type	ossl_check_const_X509_NAME_sk_type, @function
ossl_check_const_X509_NAME_sk_type:
.LFB324:
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
.LFE324:
	.size	ossl_check_const_X509_NAME_sk_type, .-ossl_check_const_X509_NAME_sk_type
	.type	ossl_check_const_X509_CRL_sk_type, @function
ossl_check_const_X509_CRL_sk_type:
.LFB342:
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
.LFE342:
	.size	ossl_check_const_X509_CRL_sk_type, .-ossl_check_const_X509_CRL_sk_type
	.globl	verify_args
	.data
	.align 16
	.type	verify_args, @object
	.size	verify_args, 16
verify_args:
	.long	-1
	.long	0
	.long	0
	.long	0
	.local	cookie_secret
	.comm	cookie_secret,16,16
	.local	cookie_initialized
	.comm	cookie_initialized,4,4
	.local	bio_keylog
	.comm	bio_keylog,8,8
	.text
	.type	lookup, @function
lookup:
.LFB680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.L8
.L11:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L9
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L10
.L9:
	addq	$16, -16(%rbp)
.L8:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L11
	movq	-24(%rbp), %rax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE680:
	.size	lookup, .-lookup
	.section	.rodata
.LC0:
	.string	"depth=%d "
.LC1:
	.string	"\n"
.LC2:
	.string	"<no cert>\n"
.LC3:
	.string	"verify error:num=%d:%s\n"
.LC4:
	.string	"issuer= "
.LC5:
	.string	"notBefore="
.LC6:
	.string	"notAfter="
.LC7:
	.string	"verify return:%d\n"
	.text
	.globl	verify_callback
	.type	verify_callback, @function
verify_callback:
.LFB681:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_current_cert@PLT
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error@PLT
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_error_depth@PLT
	movl	%eax, -32(%rbp)
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L13
	cmpl	$0, -36(%rbp)
	jne	.L14
.L13:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -24(%rbp)
	je	.L15
	call	get_nameopt@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rsi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L14
.L15:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L14:
	cmpl	$0, -36(%rbp)
	jne	.L16
	movl	-28(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L17
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -32(%rbp)
	jg	.L18
.L17:
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L19
	movl	$1, -36(%rbp)
.L19:
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	jmp	.L16
.L18:
	movl	$0, -36(%rbp)
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	$22, 8(%rax)
.L16:
	cmpl	$43, -28(%rbp)
	je	.L20
	cmpl	$43, -28(%rbp)
	jg	.L21
	cmpl	$14, -28(%rbp)
	je	.L22
	cmpl	$14, -28(%rbp)
	jg	.L21
	cmpl	$13, -28(%rbp)
	je	.L23
	cmpl	$13, -28(%rbp)
	jg	.L21
	cmpl	$10, -28(%rbp)
	je	.L22
	cmpl	$10, -28(%rbp)
	jg	.L21
	cmpl	$2, -28(%rbp)
	je	.L24
	cmpl	$9, -28(%rbp)
	je	.L23
	jmp	.L21
.L24:
	cmpq	$0, -24(%rbp)
	je	.L32
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	call	get_nameopt@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, %rsi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L32
.L23:
	cmpq	$0, -24(%rbp)
	je	.L33
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notBefore@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_print@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L33
.L22:
	cmpq	$0, -24(%rbp)
	je	.L34
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_print@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L34
.L20:
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L35
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	policies_print@PLT
	jmp	.L35
.L32:
	nop
	jmp	.L21
.L33:
	nop
	jmp	.L21
.L34:
	nop
	jmp	.L21
.L35:
	nop
.L21:
	cmpl	$0, -28(%rbp)
	jne	.L29
	cmpl	$2, -36(%rbp)
	jne	.L29
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L29
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	policies_print@PLT
.L29:
	cmpl	$0, -36(%rbp)
	je	.L30
	movq	verify_args@GOTPCREL(%rip), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L30:
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE681:
	.size	verify_callback, .-verify_callback
	.section	.rodata
	.align 8
.LC8:
	.string	"unable to get certificate from '%s'\n"
	.align 8
.LC9:
	.string	"unable to get private key from '%s'\n"
	.align 8
.LC10:
	.string	"Private key does not match the certificate public key\n"
	.text
	.globl	set_cert_stuff
	.type	set_cert_stuff, @function
set_cert_stuff:
.LFB682:
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
	cmpq	$0, -16(%rbp)
	je	.L37
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_certificate_file@PLT
	testl	%eax, %eax
	jg	.L38
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L39
.L38:
	cmpq	$0, -24(%rbp)
	jne	.L40
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L40:
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_PrivateKey_file@PLT
	testl	%eax, %eax
	jg	.L41
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L39
.L41:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_check_private_key@PLT
	testl	%eax, %eax
	jne	.L37
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L39
.L37:
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE682:
	.size	set_cert_stuff, .-set_cert_stuff
	.section	.rodata
.LC11:
	.string	"error setting certificate\n"
.LC12:
	.string	"error setting private key\n"
	.align 8
.LC13:
	.string	"error setting certificate chain\n"
	.align 8
.LC14:
	.string	"error building certificate chain\n"
	.text
	.globl	set_cert_key_stuff
	.type	set_cert_key_stuff, @function
set_cert_key_stuff:
.LFB683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L43
	movl	$4, -4(%rbp)
	jmp	.L44
.L43:
	movl	$0, -4(%rbp)
.L44:
	cmpq	$0, -32(%rbp)
	jne	.L45
	movl	$1, %eax
	jmp	.L46
.L45:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_certificate@PLT
	testl	%eax, %eax
	jg	.L47
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L46
.L47:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_PrivateKey@PLT
	testl	%eax, %eax
	jg	.L48
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L46
.L48:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_check_private_key@PLT
	testl	%eax, %eax
	jne	.L49
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L46
.L49:
	cmpq	$0, -48(%rbp)
	je	.L50
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	jne	.L50
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L46
.L50:
	cmpl	$0, -52(%rbp)
	je	.L51
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$105, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	jne	.L51
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L46
.L51:
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE683:
	.size	set_cert_key_stuff, .-set_cert_key_stuff
	.section	.rodata
.LC15:
	.string	"RSA sign"
.LC16:
	.string	"DSA sign"
.LC17:
	.string	"RSA fixed DH"
.LC18:
	.string	"DSS fixed DH"
.LC19:
	.string	"ECDSA sign"
.LC20:
	.string	"RSA fixed ECDH"
.LC21:
	.string	"ECDSA fixed ECDH"
.LC22:
	.string	"GOST01 Sign"
.LC23:
	.string	"GOST12 Sign"
	.section	.data.rel.local,"aw"
	.align 32
	.type	cert_type_list, @object
	.size	cert_type_list, 160
cert_type_list:
	.quad	.LC15
	.long	1
	.zero	4
	.quad	.LC16
	.long	2
	.zero	4
	.quad	.LC17
	.long	3
	.zero	4
	.quad	.LC18
	.long	4
	.zero	4
	.quad	.LC19
	.long	64
	.zero	4
	.quad	.LC20
	.long	65
	.zero	4
	.quad	.LC21
	.long	66
	.zero	4
	.quad	.LC22
	.long	22
	.zero	4
	.quad	.LC23
	.long	67
	.zero	4
	.quad	0
	.zero	8
	.section	.rodata
.LC24:
	.string	"Client Certificate Types: "
.LC25:
	.string	", "
.LC26:
	.string	"UNKNOWN (%d),"
	.text
	.type	ssl_print_client_cert_types, @function
ssl_print_client_cert_types:
.LFB684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$103, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L60
	leaq	.LC24(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, -4(%rbp)
	jmp	.L55
.L59:
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %eax
	leaq	cert_type_list(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lookup
	movq	%rax, -24(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L56
	leaq	.LC25(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L56:
	cmpq	$0, -24(%rbp)
	je	.L57
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L58
.L57:
	movzbl	-9(%rbp), %edx
	leaq	.LC26(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L58:
	addl	$1, -4(%rbp)
.L55:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L59
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L52
.L60:
	nop
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE684:
	.size	ssl_print_client_cert_types, .-ssl_print_client_cert_types
	.section	.rodata
.LC27:
	.string	"RSA"
.LC28:
	.string	"RSA-PSS"
.LC29:
	.string	"DSA"
.LC30:
	.string	"ECDSA"
.LC31:
	.string	"ed25519"
.LC32:
	.string	"ed448"
.LC33:
	.string	"gost2001"
.LC34:
	.string	"gost2012_256"
.LC35:
	.string	"gost2012_512"
	.text
	.type	get_sigtype, @function
get_sigtype:
.LFB685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$1088, -4(%rbp)
	je	.L62
	cmpl	$1088, -4(%rbp)
	jg	.L63
	cmpl	$1087, -4(%rbp)
	je	.L64
	cmpl	$1087, -4(%rbp)
	jg	.L63
	cmpl	$980, -4(%rbp)
	je	.L65
	cmpl	$980, -4(%rbp)
	jg	.L63
	cmpl	$979, -4(%rbp)
	je	.L66
	cmpl	$979, -4(%rbp)
	jg	.L63
	cmpl	$912, -4(%rbp)
	je	.L67
	cmpl	$912, -4(%rbp)
	jg	.L63
	cmpl	$811, -4(%rbp)
	je	.L68
	cmpl	$811, -4(%rbp)
	jg	.L63
	cmpl	$408, -4(%rbp)
	je	.L69
	cmpl	$408, -4(%rbp)
	jg	.L63
	cmpl	$6, -4(%rbp)
	je	.L70
	cmpl	$116, -4(%rbp)
	je	.L71
	jmp	.L63
.L70:
	leaq	.LC27(%rip), %rax
	jmp	.L72
.L67:
	leaq	.LC28(%rip), %rax
	jmp	.L72
.L71:
	leaq	.LC29(%rip), %rax
	jmp	.L72
.L69:
	leaq	.LC30(%rip), %rax
	jmp	.L72
.L64:
	leaq	.LC31(%rip), %rax
	jmp	.L72
.L62:
	leaq	.LC32(%rip), %rax
	jmp	.L72
.L68:
	leaq	.LC33(%rip), %rax
	jmp	.L72
.L66:
	leaq	.LC34(%rip), %rax
	jmp	.L72
.L65:
	leaq	.LC35(%rip), %rax
	jmp	.L72
.L63:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE685:
	.size	get_sigtype, .-get_sigtype
	.section	.rodata
.LC36:
	.string	"Shared "
.LC37:
	.string	"Requested "
.LC38:
	.string	"Signature Algorithms: "
.LC39:
	.string	":"
.LC40:
	.string	"rsa_pss_pss_sha256"
.LC41:
	.string	"rsa_pss_pss_sha384"
.LC42:
	.string	"rsa_pss_pss_sha512"
.LC43:
	.string	"ecdsa_brainpoolP256r1_sha256"
.LC44:
	.string	"ecdsa_brainpoolP384r1_sha384"
.LC45:
	.string	"ecdsa_brainpoolP512r1_sha512"
.LC46:
	.string	"%s"
.LC47:
	.string	"0x%02X"
.LC48:
	.string	"+%s"
.LC49:
	.string	"+0x%02X"
	.text
	.type	do_print_sigalgs, @function
do_print_sigalgs:
.LFB686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L74
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get_shared_sigalgs@PLT
	addq	$16, %rsp
	movl	%eax, -8(%rbp)
	jmp	.L75
.L74:
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	SSL_get_sigalgs@PLT
	addq	$16, %rsp
	movl	%eax, -8(%rbp)
.L75:
	cmpl	$0, -8(%rbp)
	jne	.L76
	movl	$1, %eax
	jmp	.L77
.L76:
	cmpl	$0, -68(%rbp)
	je	.L78
	leaq	.LC36(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L78:
	cmpl	$0, -12(%rbp)
	je	.L79
	leaq	.LC37(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L79:
	leaq	.LC38(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, -4(%rbp)
	jmp	.L80
.L97:
	movq	$0, -24(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L81
	leaq	-34(%rbp), %r8
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	leaq	-33(%rbp), %rdi
	pushq	%rdi
	movq	%r8, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	SSL_get_shared_sigalgs@PLT
	addq	$16, %rsp
	jmp	.L82
.L81:
	leaq	-34(%rbp), %r8
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	leaq	-33(%rbp), %rdi
	pushq	%rdi
	movq	%r8, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	SSL_get_sigalgs@PLT
	addq	$16, %rsp
.L82:
	cmpl	$0, -4(%rbp)
	je	.L83
	leaq	.LC39(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L83:
	movzbl	-34(%rbp), %eax
	movzbl	%al, %eax
	movzbl	-33(%rbp), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	orl	%edx, %eax
	cmpl	$2076, %eax
	je	.L84
	cmpl	$2076, %eax
	jg	.L85
	cmpl	$2075, %eax
	je	.L86
	cmpl	$2075, %eax
	jg	.L85
	cmpl	$2074, %eax
	je	.L87
	cmpl	$2074, %eax
	jg	.L85
	cmpl	$2059, %eax
	je	.L88
	cmpl	$2059, %eax
	jg	.L85
	cmpl	$2057, %eax
	je	.L89
	cmpl	$2058, %eax
	je	.L90
	jmp	.L85
.L89:
	leaq	.LC40(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L96
.L90:
	leaq	.LC41(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L96
.L88:
	leaq	.LC42(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L96
.L87:
	leaq	.LC43(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L96
.L86:
	leaq	.LC44(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L96
.L84:
	leaq	.LC45(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L96
.L85:
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	get_sigtype
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L92
	movq	-24(%rbp), %rdx
	leaq	.LC46(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L93
.L92:
	movzbl	-34(%rbp), %eax
	movzbl	%al, %edx
	leaq	.LC47(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L93:
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L94
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	.LC48(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L96
.L94:
	cmpq	$0, -24(%rbp)
	jne	.L96
	movzbl	-33(%rbp), %eax
	movzbl	%al, %edx
	leaq	.LC49(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L96:
	addl	$1, -4(%rbp)
.L80:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L97
	leaq	.LC1(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE686:
	.size	do_print_sigalgs, .-do_print_sigalgs
	.section	.rodata
.LC50:
	.string	"Peer signing digest: %s\n"
.LC51:
	.string	"Peer signature type: %s\n"
	.text
	.globl	ssl_print_sigalgs
	.type	ssl_print_sigalgs, @function
ssl_print_sigalgs:
.LFB687:
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
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	jne	.L99
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_print_client_cert_types
.L99:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_print_sigalgs
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_print_sigalgs
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	je	.L100
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L100
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	.LC50(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L100:
	leaq	-4(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_peer_signature_type_nid@PLT
	testl	%eax, %eax
	je	.L101
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	get_sigtype
	movq	%rax, %rdx
	leaq	.LC51(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L101:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE687:
	.size	ssl_print_sigalgs, .-ssl_print_sigalgs
	.section	.rodata
	.align 8
.LC52:
	.string	"Supported Elliptic Curve Point Formats: "
.LC53:
	.string	"uncompressed"
.LC54:
	.string	"ansiX962_compressed_prime"
.LC55:
	.string	"ansiX962_compressed_char2"
.LC56:
	.string	"unknown(%d)"
	.text
	.globl	ssl_print_point_formats
	.type	ssl_print_point_formats, @function
ssl_print_point_formats:
.LFB688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$111, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L104
	movl	$1, %eax
	jmp	.L114
.L104:
	leaq	.LC52(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, -4(%rbp)
	jmp	.L106
.L113:
	cmpl	$0, -4(%rbp)
	je	.L107
	leaq	.LC39(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L107:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$2, %eax
	je	.L108
	cmpl	$2, %eax
	jg	.L109
	testl	%eax, %eax
	je	.L110
	cmpl	$1, %eax
	je	.L111
	jmp	.L109
.L110:
	leaq	.LC53(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L112
.L111:
	leaq	.LC54(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L112
.L108:
	leaq	.LC55(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L112
.L109:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	leaq	.LC56(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	nop
.L112:
	addl	$1, -4(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.L106:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L113
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE688:
	.size	ssl_print_point_formats, .-ssl_print_point_formats
	.section	.rodata
.LC57:
	.string	"groups to print"
.LC58:
	.string	"Supported groups: "
.LC59:
	.string	"../apps/lib/s_cb.c"
.LC60:
	.string	"\nShared groups: "
.LC61:
	.string	"NONE"
	.text
	.globl	ssl_print_groups
	.type	ssl_print_groups, @function
ssl_print_groups:
.LFB689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$90, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L116
	movl	$1, %eax
	jmp	.L117
.L116:
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	.LC57(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$90, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	leaq	.LC58(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, -4(%rbp)
	jmp	.L118
.L120:
	cmpl	$0, -4(%rbp)
	je	.L119
	leaq	.LC39(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L119:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_group_to_name@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -4(%rbp)
.L118:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L120
	leaq	.LC59(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$397, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -52(%rbp)
	je	.L121
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, %eax
	jmp	.L117
.L121:
	leaq	.LC60(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movq	$-1, %rdx
	movl	$93, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L122
.L124:
	cmpl	$0, -4(%rbp)
	je	.L123
	leaq	.LC39(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L123:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$93, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SSL_group_to_name@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -4(%rbp)
.L122:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L124
	cmpl	$0, -8(%rbp)
	jne	.L125
	leaq	.LC61(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L125:
	leaq	.LC1(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE689:
	.size	ssl_print_groups, .-ssl_print_groups
	.section	.rodata
.LC62:
	.string	"Server Temp Key: "
.LC63:
	.string	"RSA, %d bits\n"
.LC64:
	.string	"DH, %d bits\n"
.LC65:
	.string	"group"
.LC66:
	.string	"ECDH, %s, %d bits\n"
.LC67:
	.string	"%s, %d bits\n"
	.text
	.globl	ssl_print_tmp_key
	.type	ssl_print_tmp_key, @function
ssl_print_tmp_key:
.LFB690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$109, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	jne	.L127
	movl	$1, %eax
	jmp	.L135
.L127:
	leaq	.LC62(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$408, %eax
	je	.L129
	cmpl	$408, %eax
	jg	.L130
	cmpl	$6, %eax
	je	.L131
	cmpl	$28, %eax
	je	.L132
	jmp	.L130
.L131:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %edx
	leaq	.LC63(%rip), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L133
.L132:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %edx
	leaq	.LC64(%rip), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L133
.L129:
	movq	-24(%rbp), %rax
	leaq	-32(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	leaq	.LC65(%rip), %rsi
	movq	%rcx, %r8
	movl	$80, %ecx
	movq	%rax, %rdi
	call	EVP_PKEY_get_utf8_string_param@PLT
	testl	%eax, %eax
	jne	.L134
	leaq	-112(%rbp), %rax
	movw	$63, (%rax)
.L134:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %ecx
	leaq	-112(%rbp), %rdx
	leaq	.LC66(%rip), %rsi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L133
.L130:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	.LC67(%rip), %rsi
	movq	-120(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L133:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$1, %eax
.L135:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE690:
	.size	ssl_print_tmp_key, .-ssl_print_tmp_key
	.section	.rodata
	.align 8
.LC68:
	.string	"read from %p [%p] (%zu bytes => %zu (0x%zX))\n"
	.align 8
.LC69:
	.string	"read from %p [%p] (%zu bytes => %d)\n"
	.align 8
.LC70:
	.string	"write to %p [%p] (%zu bytes => %zu (0x%zX))\n"
	.align 8
.LC71:
	.string	"write to %p [%p] (%zu bytes => %d)\n"
	.text
	.globl	bio_dump_callback
	.type	bio_dump_callback, @function
bio_dump_callback:
.LFB691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -80(%rbp)
	movq	%r9, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_callback_arg@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L137
	movl	16(%rbp), %eax
	cltq
	jmp	.L138
.L137:
	cmpl	$136, -76(%rbp)
	je	.L139
	cmpl	$136, -76(%rbp)
	jg	.L157
	cmpl	$135, -76(%rbp)
	je	.L141
	cmpl	$135, -76(%rbp)
	jg	.L157
	cmpl	$130, -76(%rbp)
	je	.L142
	cmpl	$131, -76(%rbp)
	je	.L143
	jmp	.L157
.L142:
	cmpl	$0, 16(%rbp)
	jle	.L144
	cmpq	$0, 24(%rbp)
	je	.L144
	movq	24(%rbp), %rax
	movq	(%rax), %rdi
	movq	24(%rbp), %rax
	movq	(%rax), %r9
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	.LC68(%rip), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_dump@PLT
	jmp	.L146
.L144:
	movl	16(%rbp), %r8d
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	.LC69(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L146
.L143:
	cmpl	$0, 16(%rbp)
	jle	.L147
	cmpq	$0, 24(%rbp)
	je	.L147
	movq	24(%rbp), %rax
	movq	(%rax), %rdi
	movq	24(%rbp), %rax
	movq	(%rax), %r9
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	.LC70(%rip), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-88(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_dump@PLT
	jmp	.L146
.L147:
	movl	16(%rbp), %r8d
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	.LC71(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L146
.L141:
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, 16(%rbp)
	jle	.L149
	movq	$0, -8(%rbp)
	jmp	.L150
.L151:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	imulq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	8(%rax), %r8
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rdx
	leaq	.LC68(%rip), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_dump@PLT
	addq	$1, -8(%rbp)
.L150:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L151
	jmp	.L158
.L149:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L158
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movl	16(%rbp), %r8d
	movq	-72(%rbp), %rdx
	leaq	.LC69(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L158
.L139:
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, 16(%rbp)
	jle	.L153
	movq	$0, -8(%rbp)
	jmp	.L154
.L155:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	imulq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %r9
	movq	-40(%rbp), %rax
	movq	8(%rax), %r8
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rdx
	leaq	.LC70(%rip), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_dump@PLT
	addq	$1, -8(%rbp)
.L154:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L155
	jmp	.L159
.L153:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L159
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movl	16(%rbp), %r8d
	movq	-72(%rbp), %rdx
	leaq	.LC71(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L159
.L157:
	nop
	jmp	.L146
.L158:
	nop
	jmp	.L146
.L159:
	nop
.L146:
	movl	16(%rbp), %eax
	cltq
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE691:
	.size	bio_dump_callback, .-bio_dump_callback
	.section	.rodata
.LC72:
	.string	"SSL_connect"
.LC73:
	.string	"SSL_accept"
.LC74:
	.string	"undefined"
.LC75:
	.string	"%s:%s\n"
.LC76:
	.string	"read"
.LC77:
	.string	"write"
.LC78:
	.string	"SSL3 alert %s:%s:%s\n"
.LC79:
	.string	"%s:failed in %s\n"
.LC80:
	.string	"%s:error in %s\n"
	.text
	.globl	apps_ssl_info_callback
	.type	apps_ssl_info_callback, @function
apps_ssl_info_callback:
.LFB692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	-44(%rbp), %eax
	andl	$-4096, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L161
	leaq	.LC72(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L162
.L161:
	movl	-28(%rbp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L163
	leaq	.LC73(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L162
.L163:
	leaq	.LC74(%rip), %rax
	movq	%rax, -24(%rbp)
.L162:
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L164
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_state_string_long@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC75(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L170
.L164:
	movl	-44(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L166
	movl	-44(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L167
	leaq	.LC76(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L168
.L167:
	leaq	.LC77(%rip), %rax
	movq	%rax, -24(%rbp)
.L168:
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	SSL_alert_desc_string_long@PLT
	movq	%rax, %rbx
	movl	-48(%rbp), %eax
	movl	%eax, %edi
	call	SSL_alert_type_string_long@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC78(%rip), %rsi
	movq	%rbx, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L170
.L166:
	movl	-44(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L170
	cmpl	$0, -48(%rbp)
	jne	.L169
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_state_string_long@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC79(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L170
.L169:
	cmpl	$0, -48(%rbp)
	jns	.L170
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_state_string_long@PLT
	movq	%rax, %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC80(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L170:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE692:
	.size	apps_ssl_info_callback, .-apps_ssl_info_callback
	.section	.rodata
.LC81:
	.string	"SSL 3.0"
.LC82:
	.string	"TLS 1.0"
.LC83:
	.string	"TLS 1.1"
.LC84:
	.string	"TLS 1.2"
.LC85:
	.string	"TLS 1.3"
.LC86:
	.string	"DTLS 1.0"
.LC87:
	.string	"DTLS 1.0 (bad)"
	.section	.data.rel.local
	.align 32
	.type	ssl_versions, @object
	.size	ssl_versions, 128
ssl_versions:
	.quad	.LC81
	.long	768
	.zero	4
	.quad	.LC82
	.long	769
	.zero	4
	.quad	.LC83
	.long	770
	.zero	4
	.quad	.LC84
	.long	771
	.zero	4
	.quad	.LC85
	.long	772
	.zero	4
	.quad	.LC86
	.long	65279
	.zero	4
	.quad	.LC87
	.long	256
	.zero	4
	.quad	0
	.zero	8
	.section	.rodata
.LC88:
	.string	" close_notify"
.LC89:
	.string	" end_of_early_data"
.LC90:
	.string	" unexpected_message"
.LC91:
	.string	" bad_record_mac"
.LC92:
	.string	" decryption_failed"
.LC93:
	.string	" record_overflow"
.LC94:
	.string	" decompression_failure"
.LC95:
	.string	" handshake_failure"
.LC96:
	.string	" bad_certificate"
.LC97:
	.string	" unsupported_certificate"
.LC98:
	.string	" certificate_revoked"
.LC99:
	.string	" certificate_expired"
.LC100:
	.string	" certificate_unknown"
.LC101:
	.string	" illegal_parameter"
.LC102:
	.string	" unknown_ca"
.LC103:
	.string	" access_denied"
.LC104:
	.string	" decode_error"
.LC105:
	.string	" decrypt_error"
.LC106:
	.string	" export_restriction"
.LC107:
	.string	" protocol_version"
.LC108:
	.string	" insufficient_security"
.LC109:
	.string	" internal_error"
.LC110:
	.string	" inappropriate_fallback"
.LC111:
	.string	" user_canceled"
.LC112:
	.string	" no_renegotiation"
.LC113:
	.string	" missing_extension"
.LC114:
	.string	" unsupported_extension"
.LC115:
	.string	" certificate_unobtainable"
.LC116:
	.string	" unrecognized_name"
	.align 8
.LC117:
	.string	" bad_certificate_status_response"
.LC118:
	.string	" bad_certificate_hash_value"
.LC119:
	.string	" unknown_psk_identity"
.LC120:
	.string	" certificate_required"
	.section	.data.rel.local
	.align 32
	.type	alert_types, @object
	.size	alert_types, 544
alert_types:
	.quad	.LC88
	.long	0
	.zero	4
	.quad	.LC89
	.long	1
	.zero	4
	.quad	.LC90
	.long	10
	.zero	4
	.quad	.LC91
	.long	20
	.zero	4
	.quad	.LC92
	.long	21
	.zero	4
	.quad	.LC93
	.long	22
	.zero	4
	.quad	.LC94
	.long	30
	.zero	4
	.quad	.LC95
	.long	40
	.zero	4
	.quad	.LC96
	.long	42
	.zero	4
	.quad	.LC97
	.long	43
	.zero	4
	.quad	.LC98
	.long	44
	.zero	4
	.quad	.LC99
	.long	45
	.zero	4
	.quad	.LC100
	.long	46
	.zero	4
	.quad	.LC101
	.long	47
	.zero	4
	.quad	.LC102
	.long	48
	.zero	4
	.quad	.LC103
	.long	49
	.zero	4
	.quad	.LC104
	.long	50
	.zero	4
	.quad	.LC105
	.long	51
	.zero	4
	.quad	.LC106
	.long	60
	.zero	4
	.quad	.LC107
	.long	70
	.zero	4
	.quad	.LC108
	.long	71
	.zero	4
	.quad	.LC109
	.long	80
	.zero	4
	.quad	.LC110
	.long	86
	.zero	4
	.quad	.LC111
	.long	90
	.zero	4
	.quad	.LC112
	.long	100
	.zero	4
	.quad	.LC113
	.long	109
	.zero	4
	.quad	.LC114
	.long	110
	.zero	4
	.quad	.LC115
	.long	111
	.zero	4
	.quad	.LC116
	.long	112
	.zero	4
	.quad	.LC117
	.long	113
	.zero	4
	.quad	.LC118
	.long	114
	.zero	4
	.quad	.LC119
	.long	115
	.zero	4
	.quad	.LC120
	.long	116
	.zero	4
	.quad	0
	.zero	8
	.section	.rodata
.LC121:
	.string	", HelloRequest"
.LC122:
	.string	", ClientHello"
.LC123:
	.string	", ServerHello"
.LC124:
	.string	", HelloVerifyRequest"
.LC125:
	.string	", NewSessionTicket"
.LC126:
	.string	", EndOfEarlyData"
.LC127:
	.string	", EncryptedExtensions"
.LC128:
	.string	", Certificate"
.LC129:
	.string	", ServerKeyExchange"
.LC130:
	.string	", CertificateRequest"
.LC131:
	.string	", ServerHelloDone"
.LC132:
	.string	", CertificateVerify"
.LC133:
	.string	", ClientKeyExchange"
.LC134:
	.string	", Finished"
.LC135:
	.string	", CertificateUrl"
.LC136:
	.string	", CertificateStatus"
.LC137:
	.string	", SupplementalData"
.LC138:
	.string	", KeyUpdate"
.LC139:
	.string	", CompressedCertificate"
.LC140:
	.string	", NextProto"
.LC141:
	.string	", MessageHash"
	.section	.data.rel.local
	.align 32
	.type	handshakes, @object
	.size	handshakes, 352
handshakes:
	.quad	.LC121
	.long	0
	.zero	4
	.quad	.LC122
	.long	1
	.zero	4
	.quad	.LC123
	.long	2
	.zero	4
	.quad	.LC124
	.long	3
	.zero	4
	.quad	.LC125
	.long	4
	.zero	4
	.quad	.LC126
	.long	5
	.zero	4
	.quad	.LC127
	.long	8
	.zero	4
	.quad	.LC128
	.long	11
	.zero	4
	.quad	.LC129
	.long	12
	.zero	4
	.quad	.LC130
	.long	13
	.zero	4
	.quad	.LC131
	.long	14
	.zero	4
	.quad	.LC132
	.long	15
	.zero	4
	.quad	.LC133
	.long	16
	.zero	4
	.quad	.LC134
	.long	20
	.zero	4
	.quad	.LC135
	.long	21
	.zero	4
	.quad	.LC136
	.long	22
	.zero	4
	.quad	.LC137
	.long	23
	.zero	4
	.quad	.LC138
	.long	24
	.zero	4
	.quad	.LC139
	.long	25
	.zero	4
	.quad	.LC140
	.long	67
	.zero	4
	.quad	.LC141
	.long	254
	.zero	4
	.quad	0
	.zero	8
	.section	.rodata
.LC142:
	.string	">>>"
.LC143:
	.string	"<<<"
.LC144:
	.string	""
.LC145:
	.string	"???"
.LC146:
	.string	", ChangeCipherSpec"
.LC147:
	.string	", Alert"
.LC148:
	.string	", ???"
.LC149:
	.string	", warning"
.LC150:
	.string	", fatal"
.LC151:
	.string	" ???"
.LC152:
	.string	", Handshake"
.LC153:
	.string	", ApplicationData"
.LC154:
	.string	", RecordHeader"
.LC155:
	.string	", InnerContent"
.LC156:
	.string	", Unknown (content_type=%d)"
	.align 8
.LC157:
	.string	"Not TLS data or unknown version (version=%d, content_type=%d)"
.LC158:
	.string	"%s %s%s [length %04lx]%s%s\n"
.LC159:
	.string	"   "
.LC160:
	.string	"\n   "
.LC161:
	.string	" %02x"
.LC162:
	.string	" ..."
	.text
	.globl	msg_cb
	.type	msg_cb, @function
msg_cb:
.LFB693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movl	%edi, -212(%rbp)
	movl	%esi, -216(%rbp)
	movl	%edx, -220(%rbp)
	movq	%rcx, -232(%rbp)
	movq	%r8, -240(%rbp)
	movq	%r9, -248(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -212(%rbp)
	je	.L172
	leaq	.LC142(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L173
.L172:
	leaq	.LC143(%rip), %rax
	movq	%rax, -8(%rbp)
.L173:
	leaq	.LC144(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC144(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC144(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpl	$768, -216(%rbp)
	je	.L174
	cmpl	$769, -216(%rbp)
	je	.L174
	cmpl	$770, -216(%rbp)
	je	.L174
	cmpl	$771, -216(%rbp)
	je	.L174
	cmpl	$772, -216(%rbp)
	je	.L174
	cmpl	$65279, -216(%rbp)
	je	.L174
	cmpl	$256, -216(%rbp)
	jne	.L175
.L174:
	leaq	.LC145(%rip), %rdx
	leaq	ssl_versions(%rip), %rcx
	movl	-216(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lookup
	movq	%rax, -16(%rbp)
	cmpl	$257, -220(%rbp)
	je	.L176
	cmpl	$257, -220(%rbp)
	jg	.L177
	cmpl	$256, -220(%rbp)
	je	.L178
	cmpl	$256, -220(%rbp)
	jg	.L177
	cmpl	$23, -220(%rbp)
	je	.L179
	cmpl	$23, -220(%rbp)
	jg	.L177
	cmpl	$22, -220(%rbp)
	je	.L180
	cmpl	$22, -220(%rbp)
	jg	.L177
	cmpl	$20, -220(%rbp)
	je	.L181
	cmpl	$21, -220(%rbp)
	je	.L182
	jmp	.L177
.L181:
	leaq	.LC146(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L183
.L182:
	leaq	.LC147(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC148(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpq	$2, -240(%rbp)
	jne	.L195
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$1, %eax
	je	.L185
	cmpl	$2, %eax
	je	.L186
	jmp	.L187
.L185:
	leaq	.LC149(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L187
.L186:
	leaq	.LC150(%rip), %rax
	movq	%rax, -32(%rbp)
	nop
.L187:
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	.LC151(%rip), %rdx
	leaq	alert_types(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lookup
	movq	%rax, -40(%rbp)
	jmp	.L195
.L180:
	leaq	.LC152(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC145(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -240(%rbp)
	je	.L196
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	.LC145(%rip), %rdx
	leaq	handshakes(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lookup
	movq	%rax, -32(%rbp)
	jmp	.L196
.L179:
	leaq	.LC153(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L183
.L178:
	leaq	.LC154(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L183
.L176:
	leaq	.LC155(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L183
.L177:
	movl	-220(%rbp), %edx
	leaq	.LC156(%rip), %rsi
	leaq	-208(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$127, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-208(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L189
.L195:
	nop
	jmp	.L189
.L196:
	nop
.L183:
	jmp	.L189
.L175:
	movl	-220(%rbp), %ecx
	movl	-216(%rbp), %edx
	leaq	.LC157(%rip), %rsi
	leaq	-208(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$127, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
.L189:
	movq	-240(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	.LC158(%rip), %rsi
	movq	-56(%rbp), %rax
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	cmpq	$0, -240(%rbp)
	je	.L190
	leaq	.LC159(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-240(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L191
.L193:
	movq	-48(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	jne	.L192
	cmpq	$0, -48(%rbp)
	je	.L192
	leaq	.LC160(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L192:
	movq	-232(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC161(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$1, -48(%rbp)
.L191:
	movq	-48(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L193
	movq	-48(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jnb	.L194
	leaq	.LC162(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L194:
	leaq	.LC1(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L190:
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE693:
	.size	msg_cb, .-msg_cb
	.section	.rodata
.LC163:
	.string	"server name"
.LC164:
	.string	"max fragment length"
.LC165:
	.string	"client certificate URL"
.LC166:
	.string	"trusted CA keys"
.LC167:
	.string	"truncated HMAC"
.LC168:
	.string	"status request"
.LC169:
	.string	"user mapping"
.LC170:
	.string	"client authz"
.LC171:
	.string	"server authz"
.LC172:
	.string	"cert type"
.LC173:
	.string	"supported_groups"
.LC174:
	.string	"EC point formats"
.LC175:
	.string	"SRP"
.LC176:
	.string	"signature algorithms"
.LC177:
	.string	"use SRTP"
.LC178:
	.string	"session ticket"
.LC179:
	.string	"renegotiation info"
.LC180:
	.string	"signed certificate timestamps"
.LC181:
	.string	"client cert type"
.LC182:
	.string	"server cert type"
.LC183:
	.string	"TLS padding"
.LC184:
	.string	"next protocol"
.LC185:
	.string	"encrypt-then-mac"
	.align 8
.LC186:
	.string	"application layer protocol negotiation"
.LC187:
	.string	"extended master secret"
.LC188:
	.string	"compress certificate"
.LC189:
	.string	"key share"
.LC190:
	.string	"supported versions"
.LC191:
	.string	"psk"
.LC192:
	.string	"psk kex modes"
.LC193:
	.string	"certificate authorities"
.LC194:
	.string	"post handshake auth"
.LC195:
	.string	"early_data"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	tlsext_types, @object
	.size	tlsext_types, 544
tlsext_types:
	.quad	.LC163
	.long	0
	.zero	4
	.quad	.LC164
	.long	1
	.zero	4
	.quad	.LC165
	.long	2
	.zero	4
	.quad	.LC166
	.long	3
	.zero	4
	.quad	.LC167
	.long	4
	.zero	4
	.quad	.LC168
	.long	5
	.zero	4
	.quad	.LC169
	.long	6
	.zero	4
	.quad	.LC170
	.long	7
	.zero	4
	.quad	.LC171
	.long	8
	.zero	4
	.quad	.LC172
	.long	9
	.zero	4
	.quad	.LC173
	.long	10
	.zero	4
	.quad	.LC174
	.long	11
	.zero	4
	.quad	.LC175
	.long	12
	.zero	4
	.quad	.LC176
	.long	13
	.zero	4
	.quad	.LC177
	.long	14
	.zero	4
	.quad	.LC178
	.long	35
	.zero	4
	.quad	.LC179
	.long	65281
	.zero	4
	.quad	.LC180
	.long	18
	.zero	4
	.quad	.LC181
	.long	19
	.zero	4
	.quad	.LC182
	.long	20
	.zero	4
	.quad	.LC183
	.long	21
	.zero	4
	.quad	.LC184
	.long	13172
	.zero	4
	.quad	.LC185
	.long	22
	.zero	4
	.quad	.LC186
	.long	16
	.zero	4
	.quad	.LC187
	.long	23
	.zero	4
	.quad	.LC188
	.long	27
	.zero	4
	.quad	.LC189
	.long	51
	.zero	4
	.quad	.LC190
	.long	43
	.zero	4
	.quad	.LC191
	.long	41
	.zero	4
	.quad	.LC192
	.long	45
	.zero	4
	.quad	.LC193
	.long	47
	.zero	4
	.quad	.LC194
	.long	49
	.zero	4
	.quad	.LC195
	.long	42
	.zero	4
	.quad	0
	.zero	8
	.section	.rodata
.LC196:
	.string	"rsa_pkcs1_sha1"
.LC197:
	.string	"ecdsa_sha1"
.LC198:
	.string	"rsa_pkcs1_sha256"
.LC199:
	.string	"ecdsa_secp256r1_sha256"
.LC200:
	.string	"rsa_pkcs1_sha384"
.LC201:
	.string	"ecdsa_secp384r1_sha384"
.LC202:
	.string	"rsa_pkcs1_sha512"
.LC203:
	.string	"ecdsa_secp521r1_sha512"
.LC204:
	.string	"rsa_pss_rsae_sha256"
.LC205:
	.string	"rsa_pss_rsae_sha384"
.LC206:
	.string	"rsa_pss_rsae_sha512"
.LC207:
	.string	"gostr34102001"
.LC208:
	.string	"gostr34102012_256"
.LC209:
	.string	"gostr34102012_512"
	.section	.data.rel.local
	.align 32
	.type	signature_tls13_scheme_list, @object
	.size	signature_tls13_scheme_list, 320
signature_tls13_scheme_list:
	.quad	.LC196
	.long	513
	.zero	4
	.quad	.LC197
	.long	515
	.zero	4
	.quad	.LC198
	.long	1025
	.zero	4
	.quad	.LC199
	.long	1027
	.zero	4
	.quad	.LC200
	.long	1281
	.zero	4
	.quad	.LC201
	.long	1283
	.zero	4
	.quad	.LC202
	.long	1537
	.zero	4
	.quad	.LC203
	.long	1539
	.zero	4
	.quad	.LC204
	.long	2052
	.zero	4
	.quad	.LC205
	.long	2053
	.zero	4
	.quad	.LC206
	.long	2054
	.zero	4
	.quad	.LC31
	.long	2055
	.zero	4
	.quad	.LC32
	.long	2056
	.zero	4
	.quad	.LC40
	.long	2057
	.zero	4
	.quad	.LC41
	.long	2058
	.zero	4
	.quad	.LC42
	.long	2059
	.zero	4
	.quad	.LC207
	.long	60909
	.zero	4
	.quad	.LC208
	.long	61166
	.zero	4
	.quad	.LC209
	.long	61423
	.zero	4
	.quad	0
	.zero	8
	.section	.rodata
.LC210:
	.string	"anonymous"
	.section	.data.rel.local
	.align 32
	.type	signature_tls12_alg_list, @object
	.size	signature_tls12_alg_list, 80
signature_tls12_alg_list:
	.quad	.LC210
	.long	0
	.zero	4
	.quad	.LC27
	.long	1
	.zero	4
	.quad	.LC29
	.long	2
	.zero	4
	.quad	.LC30
	.long	3
	.zero	4
	.quad	0
	.zero	8
	.section	.rodata
.LC211:
	.string	"none"
.LC212:
	.string	"MD5"
.LC213:
	.string	"SHA1"
.LC214:
	.string	"SHA224"
.LC215:
	.string	"SHA256"
.LC216:
	.string	"SHA384"
.LC217:
	.string	"SHA512"
	.section	.data.rel.local
	.align 32
	.type	signature_tls12_hash_list, @object
	.size	signature_tls12_hash_list, 128
signature_tls12_hash_list:
	.quad	.LC211
	.long	0
	.zero	4
	.quad	.LC212
	.long	1
	.zero	4
	.quad	.LC213
	.long	2
	.zero	4
	.quad	.LC214
	.long	3
	.zero	4
	.quad	.LC215
	.long	4
	.zero	4
	.quad	.LC216
	.long	5
	.zero	4
	.quad	.LC217
	.long	6
	.zero	4
	.quad	0
	.zero	8
	.section	.rodata
.LC218:
	.string	"unknown"
.LC219:
	.string	"server"
.LC220:
	.string	"client"
	.align 8
.LC221:
	.string	"TLS %s extension \"%s\" (id=%d), len=%d\n"
	.text
	.globl	tlsext_cb
	.type	tlsext_cb, @function
tlsext_cb:
.LFB694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC218(%rip), %rdx
	leaq	tlsext_types(%rip), %rcx
	movl	-32(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lookup
	movq	%rax, -16(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L198
	leaq	.LC219(%rip), %rax
	jmp	.L199
.L198:
	leaq	.LC220(%rip), %rax
.L199:
	movl	-44(%rbp), %r8d
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rdx
	leaq	.LC221(%rip), %rsi
	movq	-8(%rbp), %rdi
	movl	%r8d, %r9d
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_dump@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE694:
	.size	tlsext_cb, .-tlsext_cb
	.section	.rodata
	.align 8
.LC222:
	.string	"error setting random cookie secret\n"
.LC223:
	.string	"memory full\n"
.LC224:
	.string	"Failed getting peer address\n"
.LC225:
	.string	"assertion failed: length != 0"
.LC226:
	.string	"cookie generate buffer"
.LC227:
	.string	"HMAC"
	.align 8
.LC228:
	.string	"Error calculating HMAC-SHA1 of buffer with secret\n"
	.text
	.globl	generate_stateless_cookie_callback
	.type	generate_stateless_cookie_callback, @function
generate_stateless_cookie_callback:
.LFB695:
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
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	cookie_initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L201
	leaq	cookie_secret(%rip), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	testl	%eax, %eax
	jg	.L202
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC222(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L211
.L202:
	movl	$1, cookie_initialized(%rip)
.L201:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_dtls@PLT
	testl	%eax, %eax
	je	.L204
	call	BIO_ADDR_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L205
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC223(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L211
.L205:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_rbio@PLT
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$46, %esi
	call	BIO_ctrl@PLT
	jmp	.L206
.L204:
	movq	ourpeer@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L206:
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_ADDR_rawaddress@PLT
	testl	%eax, %eax
	jne	.L207
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC224(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movl	$0, %eax
	jmp	.L211
.L207:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L208
	leaq	.LC59(%rip), %rcx
	leaq	.LC225(%rip), %rax
	movl	$870, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L208:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_rawport@PLT
	movw	%ax, -42(%rbp)
	movq	-40(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC226(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -32(%rbp)
	movzwl	-42(%rbp), %edx
	movq	-32(%rbp), %rax
	movw	%dx, (%rax)
	movq	-32(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_ADDR_rawaddress@PLT
	movq	-40(%rbp), %rcx
	leaq	cookie_secret(%rip), %rsi
	leaq	.LC213(%rip), %rdx
	leaq	.LC227(%rip), %rax
	pushq	-72(%rbp)
	pushq	$255
	pushq	-64(%rbp)
	pushq	%rcx
	pushq	-32(%rbp)
	pushq	$16
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_Q_mac@PLT
	addq	$48, %rsp
	testq	%rax, %rax
	jne	.L209
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC228(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L210
.L209:
	movl	$1, -20(%rbp)
.L210:
	leaq	.LC59(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$887, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ADDR_free@PLT
	movl	-20(%rbp), %eax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE695:
	.size	generate_stateless_cookie_callback, .-generate_stateless_cookie_callback
	.globl	verify_stateless_cookie_callback
	.type	verify_stateless_cookie_callback, @function
verify_stateless_cookie_callback:
.LFB696:
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
	movl	cookie_initialized(%rip), %eax
	testl	%eax, %eax
	je	.L213
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	generate_stateless_cookie_callback@PLT
	testl	%eax, %eax
	je	.L213
	movq	-72(%rbp), %rax
	cmpq	%rax, -104(%rbp)
	jne	.L213
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L213
	movl	$1, %eax
	jmp	.L215
.L213:
	movl	$0, %eax
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE696:
	.size	verify_stateless_cookie_callback, .-verify_stateless_cookie_callback
	.globl	generate_cookie_callback
	.type	generate_cookie_callback, @function
generate_cookie_callback:
.LFB697:
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
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	generate_stateless_cookie_callback@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L217
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L217:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	generate_cookie_callback, .-generate_cookie_callback
	.globl	verify_cookie_callback
	.type	verify_cookie_callback, @function
verify_cookie_callback:
.LFB698:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	verify_stateless_cookie_callback@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	verify_cookie_callback, .-verify_cookie_callback
	.section	.rodata
.LC229:
	.string	"Overall Validity"
.LC230:
	.string	"Sign with EE key"
.LC231:
	.string	"EE signature"
.LC232:
	.string	"CA signature"
.LC233:
	.string	"EE key parameters"
.LC234:
	.string	"CA key parameters"
.LC235:
	.string	"Explicitly sign with EE key"
.LC236:
	.string	"Issuer Name"
.LC237:
	.string	"Certificate Type"
	.section	.data.rel.local
	.align 32
	.type	chain_flags, @object
	.size	chain_flags, 160
chain_flags:
	.quad	.LC229
	.long	1
	.zero	4
	.quad	.LC230
	.long	2
	.zero	4
	.quad	.LC231
	.long	16
	.zero	4
	.quad	.LC232
	.long	32
	.zero	4
	.quad	.LC233
	.long	64
	.zero	4
	.quad	.LC234
	.long	128
	.zero	4
	.quad	.LC235
	.long	256
	.zero	4
	.quad	.LC236
	.long	512
	.zero	4
	.quad	.LC237
	.long	1024
	.zero	4
	.quad	0
	.zero	8
	.section	.rodata
.LC238:
	.string	"OK"
.LC239:
	.string	"NOT OK"
.LC240:
	.string	"\t%s: %s\n"
.LC241:
	.string	"\tSuite B: "
.LC242:
	.string	"OK\n"
.LC243:
	.string	"NOT OK\n"
.LC244:
	.string	"not tested\n"
	.text
	.type	print_chain_flags, @function
print_chain_flags:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	leaq	chain_flags(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L222
.L225:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L223
	leaq	.LC238(%rip), %rax
	jmp	.L224
.L223:
	leaq	.LC239(%rip), %rax
.L224:
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	bio_err@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	leaq	.LC240(%rip), %rsi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, -8(%rbp)
.L222:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L225
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC241(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$99, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	andl	$196608, %eax
	testq	%rax, %rax
	je	.L226
	movl	-28(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L227
	leaq	.LC242(%rip), %rax
	jmp	.L228
.L227:
	leaq	.LC243(%rip), %rax
.L228:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	BIO_puts@PLT
	jmp	.L230
.L226:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC244(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L230:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	print_chain_flags, .-print_chain_flags
	.section	.rodata
	.align 8
.LC245:
	.string	"Checking cert chain %d:\nSubject: "
	.text
	.type	set_cert_cb, @function
set_cert_cb:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_certs_clear@PLT
	cmpq	$0, -32(%rbp)
	jne	.L234
	movl	$1, %eax
	jmp	.L233
.L235:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
.L234:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L235
	movl	$0, -20(%rbp)
	jmp	.L236
.L241:
	addl	$1, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_check_chain@PLT
	movl	%eax, -36(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	leaq	.LC245(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	call	get_nameopt@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rsi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	-36(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	print_chain_flags
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L237
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_certificate@PLT
	testl	%eax, %eax
	je	.L238
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey@PLT
	testl	%eax, %eax
	jne	.L239
.L238:
	movl	$0, %eax
	jmp	.L233
.L239:
	movq	-32(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L240
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$105, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	jne	.L237
	movl	$0, %eax
	jmp	.L233
.L240:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L237
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$88, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	jne	.L237
	movl	$0, %eax
	jmp	.L233
.L237:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
.L236:
	cmpq	$0, -32(%rbp)
	jne	.L241
	movl	$1, %eax
.L233:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	set_cert_cb, .-set_cert_cb
	.globl	ssl_ctx_set_excert
	.type	ssl_ctx_set_excert, @function
ssl_ctx_set_excert:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	set_cert_cb(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_cert_cb@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	ssl_ctx_set_excert, .-ssl_ctx_set_excert
	.section	.rodata
.LC246:
	.string	"prepend cert"
	.text
	.type	ssl_excert_prepend, @function
ssl_excert_prepend:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC246(%rip), %rax
	movq	%rax, %rsi
	movl	$88, %edi
	call	app_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$88, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L244
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	16(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 80(%rax)
	jmp	.L245
.L244:
	movq	-8(%rbp), %rax
	movl	$32773, (%rax)
	movq	-8(%rbp), %rax
	movl	$32773, 16(%rax)
.L245:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	ssl_excert_prepend, .-ssl_excert_prepend
	.globl	ssl_excert_free
	.type	ssl_excert_free, @function
ssl_excert_free:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L252
	jmp	.L250
.L251:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC59(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1080, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L250:
	cmpq	$0, -24(%rbp)
	jne	.L251
	jmp	.L247
.L252:
	nop
.L247:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	ssl_excert_free, .-ssl_excert_free
	.section	.rodata
.LC247:
	.string	"Missing filename\n"
.LC248:
	.string	"Server Certificate"
.LC249:
	.string	"server key"
.LC250:
	.string	"server chain"
	.text
	.globl	load_excert
	.type	load_excert, @function
load_excert:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L254
	movl	$1, %eax
	jmp	.L255
.L254:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L257
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L257
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_excert_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
	jmp	.L255
.L264:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L258
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC247(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L255
.L258:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC248(%rip), %rdx
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	load_cert_pass@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L259
	movl	$0, %eax
	jmp	.L255
.L259:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L260
	movq	-8(%rbp), %rax
	movl	16(%rax), %esi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	.LC249(%rip), %rdx
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	jmp	.L261
.L260:
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC249(%rip), %rdx
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	load_key@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
.L261:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L262
	movl	$0, %eax
	jmp	.L255
.L262:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L263
	movq	-8(%rbp), %rax
	leaq	56(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC250(%rip), %rcx
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_certs@PLT
	testl	%eax, %eax
	jne	.L263
	movl	$0, %eax
	jmp	.L255
.L263:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
.L257:
	cmpq	$0, -8(%rbp)
	jne	.L264
	movl	$1, %eax
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	load_excert, .-load_excert
	.section	.rodata
	.align 8
.LC251:
	.string	" %s: Error initialising xcert\n"
.LC252:
	.string	"%s: Error adding xcert\n"
.LC253:
	.string	"%s: Key already specified\n"
.LC254:
	.string	"%s: Chain already specified\n"
	.text
	.globl	args_excert
	.type	args_excert, @function
args_excert:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L266
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_excert_prepend
	testl	%eax, %eax
	jne	.L267
	call	opt_getprog@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC251(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L268
.L267:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L266:
	movl	-36(%rbp), %eax
	cmpl	$1007, %eax
	je	.L269
	cmpl	$1007, %eax
	ja	.L270
	cmpl	$1006, %eax
	je	.L271
	cmpl	$1006, %eax
	ja	.L270
	cmpl	$1005, %eax
	je	.L272
	cmpl	$1005, %eax
	ja	.L270
	cmpl	$1004, %eax
	je	.L273
	cmpl	$1004, %eax
	ja	.L270
	cmpl	$1003, %eax
	je	.L274
	cmpl	$1003, %eax
	ja	.L270
	cmpl	$1002, %eax
	je	.L275
	cmpl	$1002, %eax
	ja	.L270
	cmpl	$1000, %eax
	je	.L269
	cmpl	$1001, %eax
	je	.L276
	jmp	.L270
.L269:
	movl	$0, %eax
	jmp	.L283
.L275:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L278
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_excert_prepend
	testl	%eax, %eax
	jne	.L278
	call	opt_getprog@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC252(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L268
.L278:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rbx
	call	opt_arg@PLT
	movq	%rax, 8(%rbx)
	jmp	.L270
.L276:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L279
	call	opt_getprog@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC253(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L268
.L279:
	movq	-24(%rbp), %rbx
	call	opt_arg@PLT
	movq	%rax, 24(%rbx)
	jmp	.L270
.L274:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L280
	call	opt_getprog@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC254(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L268
.L280:
	movq	-24(%rbp), %rbx
	call	opt_arg@PLT
	movq	%rax, 32(%rbx)
	jmp	.L270
.L273:
	movq	-24(%rbp), %rax
	movl	$1, 64(%rax)
	jmp	.L270
.L272:
	movq	-24(%rbp), %rax
	movq	%rax, %rbx
	call	opt_arg@PLT
	movq	%rbx, %rdx
	movl	$4094, %esi
	movq	%rax, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	jne	.L284
	movl	$0, %eax
	jmp	.L283
.L271:
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rbx
	call	opt_arg@PLT
	movq	%rbx, %rdx
	movl	$4094, %esi
	movq	%rax, %rdi
	call	opt_format@PLT
	testl	%eax, %eax
	jne	.L285
	movl	$0, %eax
	jmp	.L283
.L284:
	nop
	jmp	.L270
.L285:
	nop
.L270:
	movl	$1, %eax
	jmp	.L283
.L268:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_excert_free@PLT
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L283:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	args_excert, .-args_excert
	.section	.rodata
.LC255:
	.string	"assertion failed: num == 2"
.LC256:
	.string	"Client cipher list: "
.LC257:
	.string	"SCSV"
.LC258:
	.string	"0x"
.LC259:
	.string	"%02X"
	.text
	.type	print_raw_cipherlist, @function
print_raw_cipherlist:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	je	.L298
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$110, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	%rax, -24(%rbp)
	cmpq	$2, -24(%rbp)
	je	.L289
	leaq	.LC59(%rip), %rcx
	leaq	.LC255(%rip), %rax
	movl	$1197, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L289:
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$110, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	movq	%rax, -32(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC256(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	$0, -8(%rbp)
	jmp	.L290
.L297:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CIPHER_find@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L291
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC39(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L291:
	cmpq	$0, -40(%rbp)
	je	.L292
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L293
.L292:
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	leaq	scsv_id.3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L294
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC257(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L293
.L294:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC258(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	$0, -16(%rbp)
	jmp	.L295
.L296:
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC259(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$1, -16(%rbp)
.L295:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L296
.L293:
	movq	-24(%rbp), %rax
	addq	%rax, -8(%rbp)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
.L290:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L297
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L286
.L298:
	nop
.L286:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	print_raw_cipherlist, .-print_raw_cipherlist
	.section	.rodata
	.align 8
.LC260:
	.string	"%s: %zu-byte buffer too large to hexencode\n"
.LC261:
	.string	"TLSA hex data buffer"
	.text
	.type	hexencode, @function
hexencode:
.LFB707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L300
	cmpl	$0, -20(%rbp)
	js	.L300
	movl	-20(%rbp), %eax
	cltq
	cmpq	%rax, -16(%rbp)
	je	.L301
.L300:
	call	opt_getprog@PLT
	movq	%rax, %rdi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC260(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %edi
	call	exit@PLT
.L301:
	movl	-20(%rbp), %eax
	cltq
	leaq	.LC261(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L302
.L303:
	movq	hex.2(%rip), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	andl	$15, %eax
	leaq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
	movq	hex.2(%rip), %rcx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$15, %eax
	addq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rcx), %edx
	movb	%dl, (%rax)
.L302:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	testq	%rax, %rax
	jne	.L303
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	hexencode, .-hexencode
	.section	.rodata
.LC262:
	.string	"Verification: OK\n"
.LC263:
	.string	"Verified peername: %s\n"
.LC264:
	.string	"Verification error: %s\n"
.LC265:
	.string	"..."
.LC266:
	.string	"DANE TLSA %d %d %d %s%s "
.LC267:
	.string	"matched the TA"
.LC268:
	.string	"matched the EE"
.LC269:
	.string	"signed the peer"
.LC270:
	.string	"%s certificate at depth %d\n"
	.align 8
.LC271:
	.string	"matched the peer raw public key\n"
	.text
	.globl	print_verify_detail
	.type	print_verify_detail, @function
print_verify_detail:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_verify_result@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L306
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peername@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC262(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -32(%rbp)
	je	.L307
	movq	-32(%rbp), %rdx
	leaq	.LC263(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L307
.L306:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_verify_cert_error_string@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	leaq	.LC264(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L307:
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	SSL_get0_dane_authority@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	js	.L318
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	leaq	-72(%rbp), %r8
	leaq	-64(%rbp), %rdi
	leaq	-51(%rbp), %rcx
	leaq	-50(%rbp), %rdx
	leaq	-49(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SSL_get0_dane_tlsa@PLT
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	cmpq	$12, %rax
	jbe	.L309
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdx
	subq	$12, %rdx
	addq	%rdx, %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	hexencode
	movq	%rax, -8(%rbp)
	jmp	.L310
.L309:
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	hexencode
	movq	%rax, -8(%rbp)
.L310:
	movq	-72(%rbp), %rax
	cmpq	$12, %rax
	jbe	.L311
	leaq	.LC265(%rip), %rax
	jmp	.L312
.L311:
	leaq	.LC144(%rip), %rax
.L312:
	movzbl	-51(%rbp), %edx
	movzbl	%dl, %r8d
	movzbl	-50(%rbp), %edx
	movzbl	%dl, %ecx
	movzbl	-49(%rbp), %edx
	movzbl	%dl, %edx
	leaq	.LC266(%rip), %rsi
	movq	-96(%rbp), %rdi
	subq	$8, %rsp
	pushq	-8(%rbp)
	movq	%rax, %r9
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_rpk@PLT
	testq	%rax, %rax
	jne	.L313
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L314
	cmpl	$0, -36(%rbp)
	je	.L315
	leaq	.LC267(%rip), %rax
	jmp	.L316
.L315:
	leaq	.LC268(%rip), %rax
	jmp	.L316
.L314:
	leaq	.LC269(%rip), %rax
.L316:
	movl	-36(%rbp), %edx
	leaq	.LC270(%rip), %rsi
	movq	-96(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L317
.L313:
	leaq	.LC271(%rip), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L317:
	leaq	.LC59(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$1291, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L318:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	print_verify_detail, .-print_verify_detail
	.section	.rodata
.LC272:
	.string	"Protocol version: %s\n"
.LC273:
	.string	"Ciphersuite: %s\n"
.LC274:
	.string	"Peer certificate: "
.LC275:
	.string	"Hash used: %s\n"
.LC276:
	.string	"Signature type: %s\n"
.LC277:
	.string	"Peer used raw public key\n"
	.align 8
.LC278:
	.string	"No peer certificate or raw public key\n"
	.text
	.globl	print_ssl_summary
	.type	print_ssl_summary, @function
print_ssl_summary:
.LFB709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_certificate@PLT
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_rpk@PLT
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_version@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC272(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	print_raw_cipherlist
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_current_cipher@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC273(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_print_sigalgs
	cmpq	$0, -24(%rbp)
	je	.L320
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC274(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	call	get_nameopt@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, %rsi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	leaq	-44(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	je	.L321
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC275(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L321:
	leaq	-44(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_peer_signature_type_nid@PLT
	testl	%eax, %eax
	je	.L322
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	get_sigtype
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC276(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L322:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_verify_detail@PLT
	jmp	.L323
.L320:
	cmpq	$0, -32(%rbp)
	je	.L324
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC277(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	-44(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_get_peer_signature_type_nid@PLT
	testl	%eax, %eax
	je	.L325
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	get_sigtype
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC276(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L325:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_verify_detail@PLT
	jmp	.L323
.L324:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC278(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L323:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_print_point_formats@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	je	.L326
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ssl_print_groups@PLT
	jmp	.L328
.L326:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_print_tmp_key@PLT
.L328:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	print_ssl_summary, .-print_ssl_summary
	.section	.rodata
.LC279:
	.string	"<NULL>"
	.align 8
.LC280:
	.string	"Call to SSL_CONF_cmd(%s, %s) failed\n"
.LC281:
	.string	"Error finishing context\n"
	.text
	.globl	config_ctx
	.type	config_ctx, @function
config_ctx:
.LFB710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_CTX_set_ssl_ctx@PLT
	movl	$0, -20(%rbp)
	jmp	.L330
.L335:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %eax
	leal	1(%rax), %ebx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_CONF_cmd@PLT
	testl	%eax, %eax
	jg	.L331
	cmpq	$0, -40(%rbp)
	je	.L332
	movq	-40(%rbp), %rax
	jmp	.L333
.L332:
	leaq	.LC279(%rip), %rax
.L333:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	-32(%rbp), %rdx
	leaq	.LC280(%rip), %rsi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L334
.L331:
	addl	$2, -20(%rbp)
.L330:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L335
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CONF_CTX_finish@PLT
	testl	%eax, %eax
	jne	.L336
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC281(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, %eax
	jmp	.L334
.L336:
	movl	$1, %eax
.L334:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	config_ctx, .-config_ctx
	.type	add_crls_store, @function
add_crls_store:
.LFB711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L338
.L340:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_CRL_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_add_crl@PLT
	testl	%eax, %eax
	jne	.L339
	movl	$0, -8(%rbp)
.L339:
	addl	$1, -4(%rbp)
.L338:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_CRL_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L340
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	add_crls_store, .-add_crls_store
	.globl	ssl_ctx_add_crls
	.type	ssl_ctx_add_crls, @function
ssl_ctx_add_crls:
.LFB712:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_get_cert_store@PLT
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_crls_store
	cmpl	$0, -36(%rbp)
	je	.L343
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	store_setup_crl_download@PLT
.L343:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	ssl_ctx_add_crls, .-ssl_ctx_add_crls
	.globl	ssl_load_stores
	.type	ssl_load_stores, @function
ssl_load_stores:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L346
	cmpq	$0, -56(%rbp)
	jne	.L346
	cmpq	$0, -64(%rbp)
	je	.L347
.L346:
	call	X509_STORE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L361
	cmpq	$0, -56(%rbp)
	je	.L350
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_file@PLT
	testl	%eax, %eax
	je	.L362
.L350:
	cmpq	$0, -48(%rbp)
	je	.L351
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_path@PLT
	testl	%eax, %eax
	je	.L363
.L351:
	cmpq	$0, -64(%rbp)
	je	.L352
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_store@PLT
	testl	%eax, %eax
	je	.L364
.L352:
	movq	24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_crls_store
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$106, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	je	.L365
	cmpl	$0, 32(%rbp)
	je	.L347
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	store_setup_crl_download@PLT
.L347:
	cmpq	$0, -72(%rbp)
	jne	.L354
	cmpq	$0, -80(%rbp)
	jne	.L354
	cmpq	$0, 16(%rbp)
	je	.L355
.L354:
	call	X509_STORE_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L366
	cmpq	$0, -80(%rbp)
	je	.L357
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_file@PLT
	testl	%eax, %eax
	je	.L367
.L357:
	cmpq	$0, -72(%rbp)
	je	.L358
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_path@PLT
	testl	%eax, %eax
	je	.L368
.L358:
	cmpq	$0, 16(%rbp)
	je	.L359
	movq	16(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_store@PLT
	testl	%eax, %eax
	je	.L369
.L359:
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$107, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	je	.L370
.L355:
	movl	$1, -20(%rbp)
	jmp	.L349
.L361:
	nop
	jmp	.L349
.L362:
	nop
	jmp	.L349
.L363:
	nop
	jmp	.L349
.L364:
	nop
	jmp	.L349
.L365:
	nop
	jmp	.L349
.L366:
	nop
	jmp	.L349
.L367:
	nop
	jmp	.L349
.L368:
	nop
	jmp	.L349
.L369:
	nop
	jmp	.L349
.L370:
	nop
.L349:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	ssl_load_stores, .-ssl_load_stores
	.section	.rodata
.LC282:
	.string	"Supported Ciphersuite"
.LC283:
	.string	"Shared Ciphersuite"
.LC284:
	.string	"Check Ciphersuite"
.LC285:
	.string	"Temp DH key bits"
.LC286:
	.string	"Supported Curve"
.LC287:
	.string	"Shared Curve"
.LC288:
	.string	"Check Curve"
.LC289:
	.string	"Supported Signature Algorithm"
.LC290:
	.string	"Shared Signature Algorithm"
.LC291:
	.string	"Check Signature Algorithm"
.LC292:
	.string	"Signature Algorithm mask"
.LC293:
	.string	"Certificate chain EE key"
.LC294:
	.string	"Certificate chain CA key"
.LC295:
	.string	"Peer Chain EE key"
.LC296:
	.string	"Peer Chain CA key"
.LC297:
	.string	"Certificate chain CA digest"
.LC298:
	.string	"Peer chain CA digest"
.LC299:
	.string	"SSL compression"
.LC300:
	.string	"Session ticket"
	.section	.data.rel.local
	.align 32
	.type	callback_types, @object
	.size	callback_types, 320
callback_types:
	.quad	.LC282
	.long	65537
	.zero	4
	.quad	.LC283
	.long	65538
	.zero	4
	.quad	.LC284
	.long	65539
	.zero	4
	.quad	.LC285
	.long	262151
	.zero	4
	.quad	.LC286
	.long	131076
	.zero	4
	.quad	.LC287
	.long	131077
	.zero	4
	.quad	.LC288
	.long	131078
	.zero	4
	.quad	.LC289
	.long	327691
	.zero	4
	.quad	.LC290
	.long	327692
	.zero	4
	.quad	.LC291
	.long	327693
	.zero	4
	.quad	.LC292
	.long	327694
	.zero	4
	.quad	.LC293
	.long	393232
	.zero	4
	.quad	.LC294
	.long	393233
	.zero	4
	.quad	.LC295
	.long	397328
	.zero	4
	.quad	.LC296
	.long	397329
	.zero	4
	.quad	.LC297
	.long	393234
	.zero	4
	.quad	.LC298
	.long	397330
	.zero	4
	.quad	.LC299
	.long	15
	.zero	4
	.quad	.LC300
	.long	10
	.zero	4
	.quad	0
	.zero	8
	.section	.rodata
.LC301:
	.string	"Security callback: "
.LC302:
	.string	"Version=%s"
.LC303:
	.string	"%s="
.LC304:
	.string	"Public key missing"
.LC305:
	.string	"%s, bits=%d"
	.align 8
.LC306:
	.string	"s_cb.c:security_callback_debug op=0x%x"
.LC307:
	.string	" scheme=%s"
.LC308:
	.string	" digest=%s, algorithm=%s"
.LC309:
	.string	" scheme=unknown(0x%04x)"
.LC310:
	.string	", security bits=%d"
.LC311:
	.string	"yes"
.LC312:
	.string	"no"
.LC313:
	.string	": %s\n"
	.text
	.type	security_callback_debug, @function
security_callback_debug:
.LFB714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movl	%edx, -148(%rbp)
	movl	%ecx, -152(%rbp)
	movl	%r8d, -156(%rbp)
	movq	%r9, -168(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %r10
	movq	-168(%rbp), %r8
	movl	-156(%rbp), %edi
	movl	-152(%rbp), %ecx
	movl	-148(%rbp), %edx
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	movl	%eax, -36(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.L372
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jg	.L372
	movl	$1, %eax
	jmp	.L373
.L372:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC301(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	leaq	callback_types(%rip), %rcx
	movl	-148(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lookup
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$397330, -148(%rbp)
	je	.L374
	cmpl	$397330, -148(%rbp)
	jg	.L375
	cmpl	$393234, -148(%rbp)
	je	.L374
	cmpl	$393234, -148(%rbp)
	jg	.L375
	cmpl	$327694, -148(%rbp)
	jg	.L375
	cmpl	$327691, -148(%rbp)
	jge	.L376
	cmpl	$15, -148(%rbp)
	je	.L377
	cmpl	$15, -148(%rbp)
	jg	.L375
	cmpl	$9, -148(%rbp)
	je	.L378
	cmpl	$10, -148(%rbp)
	jne	.L375
.L377:
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L375
.L378:
	leaq	.LC145(%rip), %rdx
	leaq	ssl_versions(%rip), %rcx
	movl	-156(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lookup
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC302(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L375
.L374:
	movl	$1, -8(%rbp)
	jmp	.L375
.L376:
	movl	$0, -12(%rbp)
	nop
.L375:
	cmpl	$0, -12(%rbp)
	je	.L379
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC303(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L379:
	movl	-148(%rbp), %eax
	movw	$0, %ax
	cmpl	$393216, %eax
	je	.L380
	cmpl	$393216, %eax
	ja	.L381
	cmpl	$327680, %eax
	je	.L382
	cmpl	$327680, %eax
	ja	.L381
	cmpl	$65536, %eax
	je	.L383
	cmpl	$131072, %eax
	je	.L384
	jmp	.L381
.L383:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CIPHER_get_name@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L381
.L384:
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	EC_curve_nid2nist@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L385
	movl	-156(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, -24(%rbp)
.L385:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L381
.L380:
	cmpl	$0, -8(%rbp)
	je	.L386
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_signature_nid@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L381
.L386:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L388
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC304(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L381
.L388:
	leaq	.LC144(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_asn1@PLT
	leaq	-120(%rbp), %rdx
	movq	%rax, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	EVP_PKEY_asn1_get0_info@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_bits@PLT
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC305(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L381
.L382:
	movq	-168(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, -84(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L389
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	.LC46(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L390
.L389:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-148(%rbp), %edx
	leaq	.LC306(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L390:
	leaq	signature_tls13_scheme_list(%rip), %rcx
	movl	-84(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lookup
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L391
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC307(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L381
.L391:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -88(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -92(%rbp)
	leaq	signature_tls12_alg_list(%rip), %rcx
	movl	-88(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lookup
	movq	%rax, -104(%rbp)
	leaq	signature_tls12_hash_list(%rip), %rcx
	movl	-92(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lookup
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L392
	cmpq	$0, -112(%rbp)
	je	.L392
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rcx
	movq	-112(%rbp), %rdx
	leaq	.LC308(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L381
.L392:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	leaq	.LC309(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L381:
	cmpl	$0, -4(%rbp)
	je	.L393
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-152(%rbp), %edx
	leaq	.LC310(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L393:
	cmpl	$0, -36(%rbp)
	je	.L394
	leaq	.LC311(%rip), %rax
	jmp	.L395
.L394:
	leaq	.LC312(%rip), %rax
.L395:
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	leaq	.LC313(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-36(%rbp), %eax
.L373:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	security_callback_debug, .-security_callback_debug
	.globl	ssl_ctx_security_debug
	.type	ssl_ctx_security_debug, @function
ssl_ctx_security_debug:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, sdb.1(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, 8+sdb.1(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_get_security_callback@PLT
	movq	%rax, 16+sdb.1(%rip)
	leaq	security_callback_debug(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_security_callback@PLT
	leaq	sdb.1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set0_security_ex_data@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	ssl_ctx_security_debug, .-ssl_ctx_security_debug
	.section	.rodata
	.align 8
.LC314:
	.string	"Keylog callback is invoked without valid file!\n"
.LC315:
	.string	"%s\n"
	.text
	.type	keylog_callback, @function
keylog_callback:
.LFB716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	bio_keylog(%rip), %rax
	testq	%rax, %rax
	jne	.L398
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC314(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L397
.L398:
	movq	bio_keylog(%rip), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC315(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_keylog(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L397:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	keylog_callback, .-keylog_callback
	.section	.rodata
.LC316:
	.string	"a"
.LC317:
	.string	"Error writing keylog file %s\n"
	.align 8
.LC318:
	.string	"# SSL/TLS secrets log file, generated by OpenSSL\n"
	.text
	.globl	set_keylog_file
	.type	set_keylog_file, @function
set_keylog_file:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	bio_keylog(%rip), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movq	$0, bio_keylog(%rip)
	cmpq	$0, -8(%rbp)
	je	.L401
	cmpq	$0, -16(%rbp)
	jne	.L402
.L401:
	movl	$0, %eax
	jmp	.L403
.L402:
	leaq	.LC316(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, bio_keylog(%rip)
	movq	bio_keylog(%rip), %rax
	testq	%rax, %rax
	jne	.L404
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC317(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L403
.L404:
	movq	bio_keylog(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$133, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L405
	movq	bio_keylog(%rip), %rax
	leaq	.LC318(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movq	bio_keylog(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L405:
	leaq	keylog_callback(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_set_keylog_callback@PLT
	movl	$0, %eax
.L403:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	set_keylog_file, .-set_keylog_file
	.section	.rodata
	.align 8
.LC319:
	.string	"---\nNo %s certificate CA names sent\n"
	.align 8
.LC320:
	.string	"---\nAcceptable %s certificate CA names\n"
	.text
	.globl	print_ca_names
	.type	print_ca_names, @function
print_ca_names:
.LFB718:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	je	.L407
	leaq	.LC219(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L408
.L407:
	leaq	.LC220(%rip), %rax
	movq	%rax, -24(%rbp)
.L408:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get0_peer_CA_list@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L409
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	testl	%eax, %eax
	jne	.L410
.L409:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_server@PLT
	testl	%eax, %eax
	jne	.L415
	movq	-24(%rbp), %rdx
	leaq	.LC319(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L415
.L410:
	movq	-24(%rbp), %rdx
	leaq	.LC320(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -28(%rbp)
	jmp	.L413
.L414:
	call	get_nameopt@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%rbx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_print_ex@PLT
	leaq	.LC1(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	addl	$1, -28(%rbp)
.L413:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_NAME_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L414
	jmp	.L406
.L415:
	nop
.L406:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	print_ca_names, .-print_ca_names
	.section	.rodata
.LC321:
	.string	" NOT"
	.align 8
.LC322:
	.string	"Secure Renegotiation IS%s supported\n"
	.align 8
.LC323:
	.string	"This TLS version forbids renegotiation.\n"
	.text
	.globl	ssl_print_secure_renegotiation_notes
	.type	ssl_print_secure_renegotiation_notes, @function
ssl_print_secure_renegotiation_notes:
.LFB719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_is_dtls@PLT
	testl	%eax, %eax
	jne	.L417
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_version@PLT
	cmpl	$771, %eax
	jg	.L418
.L417:
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$76, %esi
	movq	%rax, %rdi
	call	SSL_ctrl@PLT
	testq	%rax, %rax
	je	.L419
	leaq	.LC144(%rip), %rax
	jmp	.L420
.L419:
	leaq	.LC321(%rip), %rax
.L420:
	leaq	.LC322(%rip), %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L421
.L418:
	leaq	.LC323(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	nop
.L421:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	ssl_print_secure_renegotiation_notes, .-ssl_print_secure_renegotiation_notes
	.globl	progress_cb
	.type	progress_cb, @function
progress_cb:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_app_data@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get_keygen_info@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L423
	movl	-12(%rbp), %eax
	cmpl	$4, %eax
	ja	.L423
	movl	-12(%rbp), %eax
	cltq
	leaq	symbols.0(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	jmp	.L424
.L423:
	movl	$63, %eax
.L424:
	movb	%al, -13(%rbp)
	leaq	-13(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	progress_cb, .-progress_cb
	.section	.rodata
	.type	scsv_id.3, @object
	.size	scsv_id.3, 2
scsv_id.3:
	.string	""
	.ascii	"\377"
.LC324:
	.string	"0123456789abcdef"
	.section	.data.rel.local
	.align 8
	.type	hex.2, @object
	.size	hex.2, 8
hex.2:
	.quad	.LC324
	.local	sdb.1
	.comm	sdb.1,24,16
	.section	.rodata
	.type	symbols.0, @object
	.size	symbols.0, 5
symbols.0:
	.string	".+*\n"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
