	.file	"ct_prn.c"
	.text
	.type	ossl_check_const_SCT_sk_type, @function
ossl_check_const_SCT_sk_type:
.LFB450:
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
.LFE450:
	.size	ossl_check_const_SCT_sk_type, .-ossl_check_const_SCT_sk_type
	.section	.rodata
.LC0:
	.string	"%02X%02X"
.LC1:
	.string	"%s"
	.text
	.type	SCT_signature_algorithms_print, @function
SCT_signature_algorithms_print:
.LFB569:
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
	movq	%rax, %rdi
	call	SCT_get_signature_nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L4
	movq	-24(%rbp), %rax
	movzbl	65(%rax), %eax
	movzbl	%al, %ecx
	movq	-24(%rbp), %rax
	movzbl	64(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC0(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L6
.L4:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L6:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	SCT_signature_algorithms_print, .-SCT_signature_algorithms_print
	.section	.rodata
.LC2:
	.string	"%.14s.%03dZ"
	.text
	.type	timestamp_print, @function
timestamp_print:
.LFB570:
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
	call	ASN1_GENERALIZEDTIME_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L11
	movq	-56(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$10, %rax
	movabsq	$13992196986280431, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$6, %rax
	imulq	$86400000, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	shrq	$10, %rax
	movabsq	$13992196986280431, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$6, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_adj@PLT
	movq	-56(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	imulq	$1000, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rcx
	leaq	.LC2(%rip), %rdx
	leaq	-48(%rbp), %rax
	movl	%ebx, %r8d
	movl	$20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_set_string@PLT
	testl	%eax, %eax
	je	.L10
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_print@PLT
.L10:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_free@PLT
	jmp	.L7
.L11:
	nop
.L7:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	timestamp_print, .-timestamp_print
	.section	.rodata
.LC3:
	.string	"not set"
.LC4:
	.string	"unknown version"
.LC5:
	.string	"unknown log"
.LC6:
	.string	"unverified"
.LC7:
	.string	"invalid"
.LC8:
	.string	"valid"
.LC9:
	.string	"unknown status"
	.text
	.globl	SCT_validation_status_string
	.type	SCT_validation_status_string, @function
SCT_validation_status_string:
.LFB571:
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
	call	SCT_get_validation_status@PLT
	cmpl	$5, %eax
	je	.L13
	cmpl	$5, %eax
	ja	.L14
	cmpl	$4, %eax
	je	.L15
	cmpl	$4, %eax
	ja	.L14
	cmpl	$3, %eax
	je	.L16
	cmpl	$3, %eax
	ja	.L14
	cmpl	$2, %eax
	je	.L17
	cmpl	$2, %eax
	ja	.L14
	testl	%eax, %eax
	je	.L18
	cmpl	$1, %eax
	je	.L19
	jmp	.L14
.L18:
	leaq	.LC3(%rip), %rax
	jmp	.L20
.L13:
	leaq	.LC4(%rip), %rax
	jmp	.L20
.L19:
	leaq	.LC5(%rip), %rax
	jmp	.L20
.L15:
	leaq	.LC6(%rip), %rax
	jmp	.L20
.L16:
	leaq	.LC7(%rip), %rax
	jmp	.L20
.L17:
	leaq	.LC8(%rip), %rax
	jmp	.L20
.L14:
	leaq	.LC9(%rip), %rax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	SCT_validation_status_string, .-SCT_validation_status_string
	.section	.rodata
.LC10:
	.string	""
	.align 8
.LC11:
	.string	"%*sSigned Certificate Timestamp:"
.LC12:
	.string	"\n%*sVersion   : "
.LC13:
	.string	"unknown\n%*s"
.LC14:
	.string	"v1 (0x0)"
.LC15:
	.string	"\n%*sLog       : %s"
.LC16:
	.string	"\n%*sLog ID    : "
.LC17:
	.string	"\n%*sTimestamp : "
.LC18:
	.string	"\n%*sExtensions: "
.LC19:
	.string	"none"
.LC20:
	.string	"\n%*sSignature : "
.LC21:
	.string	"\n%*s            "
	.text
	.globl	SCT_print
	.type	SCT_print, @function
SCT_print:
.LFB572:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L22
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CTLOG_STORE_get0_log_by_id@PLT
	movq	%rax, -8(%rbp)
.L22:
	leaq	.LC10(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC11(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-36(%rbp), %eax
	leal	4(%rax), %edx
	leaq	.LC10(%rip), %rcx
	leaq	.LC12(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L23
	movl	-36(%rbp), %eax
	leal	16(%rax), %edx
	leaq	.LC10(%rip), %rcx
	leaq	.LC13(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-36(%rbp), %eax
	leal	16(%rax), %esi
	movq	-32(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	BIO_hex_string@PLT
	jmp	.L21
.L23:
	leaq	.LC14(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	cmpq	$0, -8(%rbp)
	je	.L25
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CTLOG_get0_name@PLT
	movq	%rax, %rdi
	movl	-36(%rbp), %eax
	leal	4(%rax), %edx
	leaq	.LC10(%rip), %rcx
	leaq	.LC15(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L25:
	movl	-36(%rbp), %eax
	leal	4(%rax), %edx
	leaq	.LC10(%rip), %rcx
	leaq	.LC16(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-36(%rbp), %eax
	leal	16(%rax), %esi
	movq	-32(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	BIO_hex_string@PLT
	movl	-36(%rbp), %eax
	leal	4(%rax), %edx
	leaq	.LC10(%rip), %rcx
	leaq	.LC17(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	timestamp_print
	movl	-36(%rbp), %eax
	leal	4(%rax), %edx
	leaq	.LC10(%rip), %rcx
	leaq	.LC18(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	leaq	.LC19(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movl	-36(%rbp), %eax
	leal	16(%rax), %esi
	movq	-32(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	BIO_hex_string@PLT
.L27:
	movl	-36(%rbp), %eax
	leal	4(%rax), %edx
	leaq	.LC10(%rip), %rcx
	leaq	.LC20(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SCT_signature_algorithms_print
	movl	-36(%rbp), %eax
	leal	4(%rax), %edx
	leaq	.LC10(%rip), %rcx
	leaq	.LC21(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movl	-36(%rbp), %eax
	leal	16(%rax), %esi
	movq	-32(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	BIO_hex_string@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	SCT_print, .-SCT_print
	.globl	SCT_LIST_print
	.type	SCT_LIST_print, @function
SCT_LIST_print:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L29
.L31:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	SCT_print@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_SCT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jge	.L30
	movq	-48(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L30:
	addl	$1, -4(%rbp)
.L29:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L31
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	SCT_LIST_print, .-SCT_LIST_print
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
