	.file	"bio_err.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.section	.rodata
.LC0:
	.string	"accept error"
.LC1:
	.string	"addrinfo addr is not af inet"
.LC2:
	.string	"ambiguous host or service"
.LC3:
	.string	"bad fopen mode"
.LC4:
	.string	"broken pipe"
.LC5:
	.string	"connect error"
.LC6:
	.string	"connect timeout"
	.align 8
.LC7:
	.string	"gethostbyname addr is not af inet"
.LC8:
	.string	"getsockname error"
.LC9:
	.string	"getsockname truncated address"
.LC10:
	.string	"getting socktype"
.LC11:
	.string	"invalid argument"
.LC12:
	.string	"invalid socket"
.LC13:
	.string	"in use"
.LC14:
	.string	"length too long"
.LC15:
	.string	"listen v6 only"
.LC16:
	.string	"lookup returned nothing"
.LC17:
	.string	"malformed host or service"
.LC18:
	.string	"nbio connect error"
	.align 8
.LC19:
	.string	"no accept addr or service specified"
	.align 8
.LC20:
	.string	"no hostname or service specified"
.LC21:
	.string	"no port defined"
.LC22:
	.string	"no such file"
.LC23:
	.string	"port mismatch"
.LC24:
	.string	"tfo disabled"
.LC25:
	.string	"tfo no kernel support"
.LC26:
	.string	"transfer error"
.LC27:
	.string	"transfer timeout"
.LC28:
	.string	"unable to bind socket"
.LC29:
	.string	"unable to create socket"
.LC30:
	.string	"unable to keepalive"
.LC31:
	.string	"unable to listen socket"
.LC32:
	.string	"unable to nodelay"
.LC33:
	.string	"unable to reuseaddr"
.LC34:
	.string	"unable to tfo"
.LC35:
	.string	"unavailable ip family"
.LC36:
	.string	"uninitialized"
.LC37:
	.string	"unknown info type"
.LC38:
	.string	"unsupported ip family"
.LC39:
	.string	"unsupported method"
.LC40:
	.string	"unsupported protocol family"
.LC41:
	.string	"write to read only BIO"
.LC42:
	.string	"WSAStartup"
.LC43:
	.string	"local address not available"
.LC44:
	.string	"peer address not available"
.LC45:
	.string	"non-fatal or transient error"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	BIO_str_reasons, @object
	.size	BIO_str_reasons, 768
BIO_str_reasons:
	.quad	268435556
	.quad	.LC0
	.quad	268435597
	.quad	.LC1
	.quad	268435585
	.quad	.LC2
	.quad	268435557
	.quad	.LC3
	.quad	268435580
	.quad	.LC4
	.quad	268435559
	.quad	.LC5
	.quad	268435603
	.quad	.LC6
	.quad	268435563
	.quad	.LC7
	.quad	268435588
	.quad	.LC8
	.quad	268435589
	.quad	.LC9
	.quad	268435590
	.quad	.LC10
	.quad	268435581
	.quad	.LC11
	.quad	268435591
	.quad	.LC12
	.quad	268435579
	.quad	.LC13
	.quad	268435558
	.quad	.LC14
	.quad	268435592
	.quad	.LC15
	.quad	268435598
	.quad	.LC16
	.quad	268435586
	.quad	.LC17
	.quad	268435566
	.quad	.LC18
	.quad	268435599
	.quad	.LC19
	.quad	268435600
	.quad	.LC20
	.quad	268435569
	.quad	.LC21
	.quad	268435584
	.quad	.LC22
	.quad	268435606
	.quad	.LC23
	.quad	268435562
	.quad	.LC24
	.quad	268435564
	.quad	.LC25
	.quad	268435560
	.quad	.LC26
	.quad	268435561
	.quad	.LC27
	.quad	268435573
	.quad	.LC28
	.quad	268435574
	.quad	.LC29
	.quad	268435593
	.quad	.LC30
	.quad	268435575
	.quad	.LC31
	.quad	268435594
	.quad	.LC32
	.quad	268435595
	.quad	.LC33
	.quad	268435565
	.quad	.LC34
	.quad	268435601
	.quad	.LC35
	.quad	268435576
	.quad	.LC36
	.quad	268435596
	.quad	.LC37
	.quad	268435602
	.quad	.LC38
	.quad	268435577
	.quad	.LC39
	.quad	268435587
	.quad	.LC40
	.quad	268435582
	.quad	.LC41
	.quad	268435578
	.quad	.LC42
	.quad	268435567
	.quad	.LC43
	.quad	268435607
	.quad	.LC44
	.quad	268435568
	.quad	.LC45
	.quad	268435606
	.quad	.LC23
	.quad	0
	.quad	0
	.text
	.globl	ossl_err_load_BIO_strings
	.type	ossl_err_load_BIO_strings, @function
ossl_err_load_BIO_strings:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$268435556, %eax
	movq	%rax, %rdi
	call	ERR_reason_error_string@PLT
	testq	%rax, %rax
	jne	.L8
	leaq	BIO_str_reasons(%rip), %rax
	movq	%rax, %rdi
	call	ERR_load_strings_const@PLT
.L8:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ossl_err_load_BIO_strings, .-ossl_err_load_BIO_strings
	.globl	BIO_err_is_non_fatal
	.type	BIO_err_is_non_fatal, @function
BIO_err_is_non_fatal:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jns	.L11
	movl	-4(%rbp), %eax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %edi
	call	BIO_sock_non_fatal_error@PLT
	jmp	.L12
.L11:
	movl	-4(%rbp), %eax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$32, %eax
	jne	.L13
	movl	-4(%rbp), %eax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$112, %eax
	jne	.L13
	movl	$1, %eax
	jmp	.L12
.L13:
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	BIO_err_is_non_fatal, .-BIO_err_is_non_fatal
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
