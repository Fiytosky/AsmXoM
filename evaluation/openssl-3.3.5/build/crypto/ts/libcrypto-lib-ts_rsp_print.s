	.file	"ts_rsp_print.c"
	.text
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
	.type	ossl_check_CONF_VALUE_sk_type, @function
ossl_check_CONF_VALUE_sk_type:
.LFB494:
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
.LFE494:
	.size	ossl_check_CONF_VALUE_sk_type, .-ossl_check_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_freefunc_type, @function
ossl_check_CONF_VALUE_freefunc_type:
.LFB497:
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
.LFE497:
	.size	ossl_check_CONF_VALUE_freefunc_type, .-ossl_check_CONF_VALUE_freefunc_type
	.section	.rodata
.LC0:
	.string	"Status info:\n"
.LC1:
	.string	"\nTST info:\n"
.LC2:
	.string	"Not included.\n"
	.text
	.globl	TS_RESP_print_bio
	.type	TS_RESP_print_bio, @function
TS_RESP_print_bio:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_STATUS_INFO_print_bio@PLT
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_TST_INFO_print_bio@PLT
	jmp	.L13
.L12:
	leaq	.LC2(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L13:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	TS_RESP_print_bio, .-TS_RESP_print_bio
	.section	.rodata
.LC3:
	.string	"Status: "
.LC4:
	.string	"%s\n"
.LC5:
	.string	"out of bounds\n"
.LC6:
	.string	"Status description: "
.LC7:
	.string	"\t"
.LC8:
	.string	"\n"
.LC9:
	.string	"unspecified\n"
.LC10:
	.string	"Failure info: "
.LC11:
	.string	"unspecified"
	.text
	.globl	TS_STATUS_INFO_print_bio
	.type	TS_STATUS_INFO_print_bio, @function
TS_STATUS_INFO_print_bio:
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
	movl	$0, -8(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	js	.L16
	cmpq	$5, -16(%rbp)
	jg	.L16
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	status_map.1(%rip), %rax
	movq	(%rdx,%rax), %rdx
	leaq	.LC4(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L17
.L16:
	leaq	.LC5(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L17:
	leaq	.LC6(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L18
.L20:
	cmpl	$0, -4(%rbp)
	jle	.L19
	leaq	.LC7(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L19:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print_ex@PLT
	leaq	.LC8(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	addl	$1, -4(%rbp)
.L18:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_ASN1_UTF8STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L20
	cmpl	$0, -4(%rbp)
	jne	.L21
	leaq	.LC9(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L21:
	leaq	.LC10(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	failure_map.0(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ts_status_map_print
	movl	%eax, -8(%rbp)
.L22:
	cmpl	$0, -8(%rbp)
	jne	.L23
	leaq	.LC11(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L23:
	leaq	.LC8(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	TS_STATUS_INFO_print_bio, .-TS_STATUS_INFO_print_bio
	.section	.rodata
.LC12:
	.string	", "
.LC13:
	.string	"%s"
	.text
	.type	ts_status_map_print, @function
ts_status_map_print:
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
	movl	$0, -4(%rbp)
	jmp	.L26
.L29:
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_get_bit@PLT
	testl	%eax, %eax
	je	.L27
	addl	$1, -4(%rbp)
	cmpl	$1, -4(%rbp)
	jle	.L28
	leaq	.LC12(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L28:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.LC13(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L27:
	addq	$16, -32(%rbp)
.L26:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L29
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	ts_status_map_print, .-ts_status_map_print
	.section	.rodata
.LC14:
	.string	"Version: %d\n"
.LC15:
	.string	"Policy OID: "
.LC16:
	.string	"Serial number: "
.LC17:
	.string	"Time stamp: "
.LC18:
	.string	"Accuracy: "
.LC19:
	.string	"yes"
.LC20:
	.string	"no"
.LC21:
	.string	"Ordering: %s\n"
.LC22:
	.string	"Nonce: "
.LC23:
	.string	"TSA: "
	.text
	.globl	TS_TST_INFO_print_bio
	.type	TS_TST_INFO_print_bio, @function
TS_TST_INFO_print_bio:
.LFB632:
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
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	leaq	.LC14(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC15(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_OBJ_print_bio@PLT
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_MSG_IMPRINT_print_bio@PLT
	leaq	.LC16(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	leaq	.LC11(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L35
.L34:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_ASN1_INTEGER_print_bio@PLT
.L35:
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leaq	.LC17(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_print@PLT
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leaq	.LC18(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	leaq	.LC11(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L37
.L36:
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ts_ACCURACY_print_bio
.L37:
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	-48(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	je	.L38
	leaq	.LC19(%rip), %rax
	jmp	.L39
.L38:
	leaq	.LC20(%rip), %rax
.L39:
	leaq	.LC21(%rip), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC22(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	leaq	.LC11(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L41
.L40:
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_ASN1_INTEGER_print_bio@PLT
.L41:
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leaq	.LC23(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L42
	leaq	.LC11(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L42:
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	i2v_GENERAL_NAME@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L44
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509V3_EXT_val_prn@PLT
.L44:
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
.L43:
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	-48(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_ext_print_bio@PLT
	movl	$1, %eax
.L33:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	TS_TST_INFO_print_bio, .-TS_TST_INFO_print_bio
	.section	.rodata
.LC24:
	.string	" seconds, "
.LC25:
	.string	" millis, "
.LC26:
	.string	" micros"
	.text
	.type	ts_ACCURACY_print_bio, @function
ts_ACCURACY_print_bio:
.LFB633:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_ASN1_INTEGER_print_bio@PLT
	jmp	.L47
.L46:
	leaq	.LC11(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L47:
	leaq	.LC24(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_ASN1_INTEGER_print_bio@PLT
	jmp	.L49
.L48:
	leaq	.LC11(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L49:
	leaq	.LC25(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_ASN1_INTEGER_print_bio@PLT
	jmp	.L51
.L50:
	leaq	.LC11(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L51:
	leaq	.LC26(%rip), %rdx
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
.LFE633:
	.size	ts_ACCURACY_print_bio, .-ts_ACCURACY_print_bio
	.section	.rodata
.LC27:
	.string	"Granted."
.LC28:
	.string	"Granted with modifications."
.LC29:
	.string	"Rejected."
.LC30:
	.string	"Waiting."
.LC31:
	.string	"Revocation warning."
.LC32:
	.string	"Revoked."
	.section	.data.rel.local,"aw"
	.align 32
	.type	status_map.1, @object
	.size	status_map.1, 48
status_map.1:
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.section	.rodata
	.align 8
.LC33:
	.string	"unrecognized or unsupported algorithm identifier"
	.align 8
.LC34:
	.string	"transaction not permitted or supported"
	.align 8
.LC35:
	.string	"the data submitted has the wrong format"
	.align 8
.LC36:
	.string	"the TSA's time source is not available"
	.align 8
.LC37:
	.string	"the requested TSA policy is not supported by the TSA"
	.align 8
.LC38:
	.string	"the requested extension is not supported by the TSA"
	.align 8
.LC39:
	.string	"the additional information requested could not be understood or is not available"
	.align 8
.LC40:
	.string	"the request cannot be handled due to system failure"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	failure_map.0, @object
	.size	failure_map.0, 144
failure_map.0:
	.long	0
	.zero	4
	.quad	.LC33
	.long	2
	.zero	4
	.quad	.LC34
	.long	5
	.zero	4
	.quad	.LC35
	.long	14
	.zero	4
	.quad	.LC36
	.long	15
	.zero	4
	.quad	.LC37
	.long	16
	.zero	4
	.quad	.LC38
	.long	17
	.zero	4
	.quad	.LC39
	.long	25
	.zero	4
	.quad	.LC40
	.long	-1
	.zero	4
	.quad	0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
