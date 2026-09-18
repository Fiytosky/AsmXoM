	.file	"encode_key2text.c"
	.text
	.type	sk_BIGNUM_const_num, @function
sk_BIGNUM_const_num:
.LFB363:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	sk_BIGNUM_const_num, .-sk_BIGNUM_const_num
	.type	sk_BIGNUM_const_value, @function
sk_BIGNUM_const_value:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	sk_BIGNUM_const_value, .-sk_BIGNUM_const_value
	.type	sk_BIGNUM_const_new_null, @function
sk_BIGNUM_const_new_null:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	sk_BIGNUM_const_new_null, .-sk_BIGNUM_const_new_null
	.type	sk_BIGNUM_const_free, @function
sk_BIGNUM_const_free:
.LFB369:
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
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	sk_BIGNUM_const_free, .-sk_BIGNUM_const_free
	.section	.rodata
.LC0:
	.string	" "
.LC1:
	.string	""
.LC2:
	.string	"%s%s0\n"
.LC3:
	.string	"-"
.LC4:
	.string	"%s%s%s%lu (%s0x%lx)\n"
.LC5:
	.string	" (Negative)"
.LC6:
	.string	"%s%s\n"
.LC7:
	.string	"%s"
.LC8:
	.string	"%02x"
.LC9:
	.string	":\n%s"
.LC10:
	.string	":"
.LC11:
	.string	"%s%c%c"
.LC12:
	.string	"\n"
	.align 8
.LC13:
	.string	"../providers/implementations/encode_decode/encode_key2text.c"
	.text
	.type	print_labeled_bignum, @function
print_labeled_bignum:
.LFB388:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -64(%rbp)
	movl	$538976288, -77(%rbp)
	movb	$0, -73(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L30
.L9:
	cmpq	$0, -96(%rbp)
	jne	.L11
	leaq	.LC1(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -40(%rbp)
.L11:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L12
	movq	-40(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L30
.L12:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$64, %eax
	jg	.L13
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	bn_get_words@PLT
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L14
	leaq	.LC3(%rip), %rax
	movq	%rax, -48(%rbp)
.L14:
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	(%rax), %r9
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	-88(%rbp), %rax
	pushq	%rdi
	pushq	-48(%rbp)
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	jmp	.L30
.L13:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2hex@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L30
.L15:
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L16
	addq	$1, -32(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -48(%rbp)
.L16:
	movq	-48(%rbp), %rcx
	movq	-96(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L31
	movl	$0, -52(%rbp)
	leaq	-77(%rbp), %rdx
	leaq	.LC7(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L32
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$55, %al
	jle	.L22
	leaq	.LC8(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L33
	addl	$1, -52(%rbp)
	movl	$1, -24(%rbp)
	jmp	.L22
.L28:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$3, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	subl	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	testl	%edx, %edx
	jne	.L23
	cmpl	$0, -52(%rbp)
	jle	.L23
	leaq	-77(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L34
	movl	$0, -24(%rbp)
.L23:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movl	%eax, %edx
	cmpl	$0, -24(%rbp)
	je	.L25
	leaq	.LC10(%rip), %rax
	jmp	.L26
.L25:
	leaq	.LC1(%rip), %rax
.L26:
	leaq	.LC11(%rip), %rsi
	movq	-88(%rbp), %rdi
	movl	%ebx, %r8d
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L35
	addl	$1, -52(%rbp)
	addq	$2, -32(%rbp)
	movl	$1, -24(%rbp)
.L22:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L28
	leaq	.LC12(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L36
	movl	$1, -20(%rbp)
	jmp	.L18
.L31:
	nop
	jmp	.L18
.L32:
	nop
	jmp	.L18
.L33:
	nop
	jmp	.L18
.L34:
	nop
	jmp	.L18
.L35:
	nop
	jmp	.L18
.L36:
	nop
.L18:
	leaq	.LC13(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$126, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L30:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE388:
	.size	print_labeled_bignum, .-print_labeled_bignum
	.section	.rodata
.LC14:
	.string	"%s\n"
.LC15:
	.string	"    "
.LC16:
	.string	"%02x%s"
	.text
	.type	print_labeled_buf, @function
print_labeled_buf:
.LFB389:
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
	movq	-32(%rbp), %rdx
	leaq	.LC14(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	$0, -8(%rbp)
	jmp	.L40
.L46:
	movq	-8(%rbp), %rcx
	movabsq	$-8608480567731124087, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	testq	%rax, %rax
	jne	.L41
	cmpq	$0, -8(%rbp)
	je	.L42
	leaq	.LC12(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L42
	movl	$0, %eax
	jmp	.L39
.L42:
	leaq	.LC15(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L41
	movl	$0, %eax
	jmp	.L39
.L41:
	movq	-48(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -8(%rbp)
	jne	.L43
	leaq	.LC1(%rip), %rax
	jmp	.L44
.L43:
	leaq	.LC10(%rip), %rax
.L44:
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	leaq	.LC16(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L45
	movl	$0, %eax
	jmp	.L39
.L45:
	addq	$1, -8(%rbp)
.L40:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L46
	leaq	.LC12(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L47
	movl	$0, %eax
	jmp	.L39
.L47:
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE389:
	.size	print_labeled_buf, .-print_labeled_buf
	.section	.rodata
.LC17:
	.string	"GROUP: %s\n"
.LC18:
	.string	"P:   "
.LC19:
	.string	"Q:   "
.LC20:
	.string	"G:   "
.LC21:
	.string	"J:   "
.LC22:
	.string	"SEED:"
.LC23:
	.string	"gindex: %d\n"
.LC24:
	.string	"pcounter: %d\n"
.LC25:
	.string	"h: %d\n"
	.text
	.type	ffc_params_to_text, @function
ffc_params_to_text:
.LFB390:
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
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L49
	movq	-32(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, %edi
	call	ossl_ffc_uid_to_dh_named_group@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_named_group_get_name@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L62
	movq	-16(%rbp), %rdx
	leaq	.LC17(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L63
	movl	$1, %eax
	jmp	.L53
.L49:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	leaq	.LC18(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L64
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	.LC19(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L65
.L55:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	.LC20(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L66
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	leaq	.LC21(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L67
.L57:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-32(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	leaq	.LC22(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_labeled_buf
	testl	%eax, %eax
	je	.L68
.L58:
	movq	-32(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	$-1, %eax
	je	.L59
	movq	-32(%rbp), %rax
	movl	56(%rax), %edx
	leaq	.LC23(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L69
.L59:
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$-1, %eax
	je	.L60
	movq	-32(%rbp), %rax
	movl	48(%rax), %edx
	leaq	.LC24(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L70
.L60:
	movq	-32(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L61
	movq	-32(%rbp), %rax
	movl	60(%rax), %edx
	leaq	.LC25(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L71
.L61:
	movl	$1, %eax
	jmp	.L53
.L62:
	nop
	jmp	.L51
.L63:
	nop
	jmp	.L51
.L64:
	nop
	jmp	.L51
.L65:
	nop
	jmp	.L51
.L66:
	nop
	jmp	.L51
.L67:
	nop
	jmp	.L51
.L68:
	nop
	jmp	.L51
.L69:
	nop
	jmp	.L51
.L70:
	nop
	jmp	.L51
.L71:
	nop
.L51:
	movl	$0, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE390:
	.size	ffc_params_to_text, .-ffc_params_to_text
	.section	.rodata
.LC26:
	.string	"DH Private-Key"
.LC27:
	.string	"DH Public-Key"
.LC28:
	.string	"DH Parameters"
.LC29:
	.string	"%s: (%d bit)\n"
.LC30:
	.string	"private-key:"
.LC31:
	.string	"public-key:"
	.align 8
.LC32:
	.string	"recommended-private-length: %ld bits\n"
	.text
	.type	dh_to_text, @function
dh_to_text:
.LFB391:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L73
	cmpq	$0, -40(%rbp)
	jne	.L74
.L73:
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$227, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L75
.L74:
	movl	-84(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L76
	leaq	.LC26(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L77
.L76:
	movl	-84(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L78
	leaq	.LC27(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L77
.L78:
	movl	-84(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L77
	leaq	.LC28(%rip), %rax
	movq	%rax, -8(%rbp)
.L77:
	movl	-84(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L79
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_priv_key@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L79
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$241, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L75
.L79:
	movl	-84(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L80
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_pub_key@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L80
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L75
.L80:
	movl	-84(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L81
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dh_get0_params@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$226, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L75
.L81:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get0_p@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.15(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$262, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L75
.L82:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	leaq	.LC29(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L83
	movl	$0, %eax
	jmp	.L75
.L83:
	cmpq	$0, -16(%rbp)
	je	.L84
	movq	-16(%rbp), %rdx
	leaq	.LC30(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	jne	.L84
	movl	$0, %eax
	jmp	.L75
.L84:
	cmpq	$0, -24(%rbp)
	je	.L85
	movq	-24(%rbp), %rdx
	leaq	.LC31(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	jne	.L85
	movl	$0, %eax
	jmp	.L75
.L85:
	cmpq	$0, -32(%rbp)
	je	.L86
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ffc_params_to_text
	testl	%eax, %eax
	jne	.L86
	movl	$0, %eax
	jmp	.L75
.L86:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DH_get_length@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jle	.L87
	movq	-56(%rbp), %rdx
	leaq	.LC32(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L87
	movl	$0, %eax
	jmp	.L75
.L87:
	movl	$1, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE391:
	.size	dh_to_text, .-dh_to_text
	.section	.rodata
.LC33:
	.string	"Private-Key"
.LC34:
	.string	"Public-Key"
.LC35:
	.string	"DSA-Parameters"
.LC36:
	.string	"priv:"
.LC37:
	.string	"pub: "
	.text
	.type	dsa_to_text, @function
dsa_to_text:
.LFB392:
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
	movq	%rax, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L89
	cmpq	$0, -40(%rbp)
	jne	.L90
.L89:
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$302, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L90:
	movl	-68(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L92
	leaq	.LC33(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L93
.L92:
	movl	-68(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L94
	leaq	.LC34(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L93
.L94:
	movl	-68(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L93
	leaq	.LC35(%rip), %rax
	movq	%rax, -8(%rbp)
.L93:
	movl	-68(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L95
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_priv_key@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L95:
	movl	-68(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L96
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_pub_key@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L96
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$323, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L96:
	movl	-68(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L97
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_dsa_get0_params@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L97
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$330, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$226, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L97:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_p@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L98
	call	ERR_new@PLT
	leaq	__func__.14(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$337, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L98:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	leaq	.LC29(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L99
	movl	$0, %eax
	jmp	.L91
.L99:
	cmpq	$0, -16(%rbp)
	je	.L100
	movq	-16(%rbp), %rdx
	leaq	.LC36(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L91
.L100:
	cmpq	$0, -24(%rbp)
	je	.L101
	movq	-24(%rbp), %rdx
	leaq	.LC37(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	jne	.L101
	movl	$0, %eax
	jmp	.L91
.L101:
	cmpq	$0, -32(%rbp)
	je	.L102
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ffc_params_to_text
	testl	%eax, %eax
	jne	.L102
	movl	$0, %eax
	jmp	.L91
.L102:
	movl	$1, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE392:
	.size	dsa_to_text, .-dsa_to_text
	.section	.rodata
.LC38:
	.string	"Prime:"
.LC39:
	.string	"Basis Type: %s\n"
.LC40:
	.string	"Polynomial:"
.LC41:
	.string	"A:   "
.LC42:
	.string	"B:   "
	.text
	.type	ec_param_explicit_curve_to_text, @function
ec_param_explicit_curve_to_text:
.LFB393:
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
	leaq	.LC38(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L104
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_GROUP_get_curve@PLT
	testl	%eax, %eax
	jne	.L105
.L104:
	movl	$0, %eax
	jmp	.L106
.L105:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	cmpl	$407, %eax
	jne	.L107
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_basis_type@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L108
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	.LC39(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L109
.L108:
	movl	$0, %eax
	jmp	.L106
.L109:
	leaq	.LC40(%rip), %rax
	movq	%rax, -8(%rbp)
.L107:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L110
	movq	-24(%rbp), %rdx
	leaq	.LC41(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L110
	movq	-32(%rbp), %rdx
	leaq	.LC42(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L110
	movl	$1, %eax
	jmp	.L106
.L110:
	movl	$0, %eax
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE393:
	.size	ec_param_explicit_curve_to_text, .-ec_param_explicit_curve_to_text
	.section	.rodata
.LC43:
	.string	"Generator (compressed):"
.LC44:
	.string	"Generator (uncompressed):"
.LC45:
	.string	"Generator (hybrid):"
	.text
	.type	ec_param_explicit_gen_to_text, @function
ec_param_explicit_gen_to_text:
.LFB394:
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
	movq	$0, -8(%rbp)
	movq	$0, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_point_conversion_form@PLT
	movl	%eax, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_generator@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L113
	movl	$0, %eax
	jmp	.L121
.L113:
	cmpl	$6, -20(%rbp)
	je	.L115
	cmpl	$6, -20(%rbp)
	ja	.L116
	cmpl	$2, -20(%rbp)
	je	.L117
	cmpl	$4, -20(%rbp)
	je	.L118
	jmp	.L116
.L117:
	leaq	.LC43(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L119
.L118:
	leaq	.LC44(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L119
.L115:
	leaq	.LC45(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L119
.L116:
	movl	$0, %eax
	jmp	.L121
.L119:
	movq	-72(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_point2buf@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L120
	movl	$0, %eax
	jmp	.L121
.L120:
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	print_labeled_buf
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	-32(%rbp), %rsi
	movl	$424, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-36(%rbp), %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE394:
	.size	ec_param_explicit_gen_to_text, .-ec_param_explicit_gen_to_text
	.section	.rodata
.LC46:
	.string	"Field Type: %s\n"
.LC47:
	.string	"Order: "
.LC48:
	.string	"Cofactor: "
.LC49:
	.string	"Seed:"
	.text
	.type	ec_param_explicit_to_text, @function
ec_param_explicit_to_text:
.LFB395:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L123
	movl	$0, %eax
	jmp	.L124
.L123:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_field_type@PLT
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_order@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L131
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_seed@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L127
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_seed_len@PLT
	movq	%rax, -16(%rbp)
.L127:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get0_cofactor@PLT
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rdx
	leaq	.LC46(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L132
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ec_param_explicit_curve_to_text
	testl	%eax, %eax
	je	.L132
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ec_param_explicit_gen_to_text
	testl	%eax, %eax
	je	.L132
	movq	-32(%rbp), %rdx
	leaq	.LC47(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L132
	cmpq	$0, -40(%rbp)
	je	.L129
	movq	-40(%rbp), %rdx
	leaq	.LC48(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L132
.L129:
	cmpq	$0, -56(%rbp)
	je	.L130
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rdx
	leaq	.LC49(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	print_labeled_buf
	testl	%eax, %eax
	je	.L132
.L130:
	movl	$1, -4(%rbp)
	jmp	.L126
.L131:
	nop
	jmp	.L126
.L132:
	nop
.L126:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE395:
	.size	ec_param_explicit_to_text, .-ec_param_explicit_to_text
	.section	.rodata
.LC50:
	.string	"ASN1 OID"
.LC51:
	.string	"%s: %s\n"
.LC52:
	.string	"NIST CURVE"
	.text
	.type	ec_param_to_text, @function
ec_param_to_text:
.LFB396:
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_asn1_flag@PLT
	andl	$1, %eax
	testl	%eax, %eax
	je	.L134
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2sn@PLT
	movq	%rax, %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC51(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L137
	movl	$0, %eax
	jmp	.L136
.L137:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	EC_curve_nid2nist@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L138
	movq	-16(%rbp), %rdx
	leaq	.LC52(%rip), %rdi
	leaq	.LC51(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L139
.L138:
	movl	$1, %eax
	jmp	.L136
.L139:
	movl	$0, %eax
	jmp	.L136
.L134:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ec_param_explicit_to_text
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE396:
	.size	ec_param_to_text, .-ec_param_to_text
	.section	.rodata
.LC53:
	.string	"EC-Parameters"
.LC54:
	.string	"pub:"
	.text
	.type	ec_to_text, @function
ec_to_text:
.LFB397:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L142
	cmpq	$0, -40(%rbp)
	jne	.L143
.L142:
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$502, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L157
.L143:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_group@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L145
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$507, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L157
.L145:
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L146
	leaq	.LC33(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L147
.L146:
	movl	-100(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L148
	leaq	.LC34(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L147
.L148:
	movl	-100(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L147
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_curve_name@PLT
	cmpl	$1172, %eax
	je	.L147
	leaq	.LC53(%rip), %rax
	movq	%rax, -8(%rbp)
.L147:
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L149
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_private_key@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L150
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$523, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L151
.L150:
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_KEY_priv2buf@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L158
.L149:
	movl	-100(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L152
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get0_public_key@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L153
	call	ERR_new@PLT
	leaq	__func__.13(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$534, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L151
.L153:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_conv_form@PLT
	movl	%eax, %esi
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EC_KEY_key2buf@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L159
.L152:
	cmpq	$0, -8(%rbp)
	je	.L154
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_order_bits@PLT
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	leaq	.LC29(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L160
.L154:
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L155
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	.LC36(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	print_labeled_buf
	testl	%eax, %eax
	je	.L161
.L155:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L156
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	.LC54(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	print_labeled_buf
	testl	%eax, %eax
	je	.L162
.L156:
	movl	-100(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L163
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ec_key_get_libctx@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ec_param_to_text
	movl	%eax, -28(%rbp)
	jmp	.L151
.L158:
	nop
	jmp	.L151
.L159:
	nop
	jmp	.L151
.L160:
	nop
	jmp	.L151
.L161:
	nop
	jmp	.L151
.L162:
	nop
	jmp	.L151
.L163:
	nop
.L151:
	movq	-72(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	-16(%rbp), %rsi
	movl	$556, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-80(%rbp), %rax
	leaq	.LC13(%rip), %rcx
	movl	$557, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE397:
	.size	ec_to_text, .-ec_to_text
	.section	.rodata
.LC55:
	.string	"X25519"
.LC56:
	.string	"X448"
.LC57:
	.string	"ED25519"
.LC58:
	.string	"ED448"
.LC59:
	.string	"%s Private-Key:\n"
.LC60:
	.string	"%s Public-Key:\n"
	.text
	.type	ecx_to_text, @function
ecx_to_text:
.LFB398:
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
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L165
	cmpq	$0, -16(%rbp)
	jne	.L166
.L165:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$577, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L167
.L166:
	movq	-16(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$3, %eax
	je	.L168
	cmpl	$3, %eax
	ja	.L169
	cmpl	$2, %eax
	je	.L170
	cmpl	$2, %eax
	ja	.L169
	testl	%eax, %eax
	je	.L171
	cmpl	$1, %eax
	je	.L172
	jmp	.L169
.L171:
	leaq	.LC55(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L169
.L172:
	leaq	.LC56(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L169
.L170:
	leaq	.LC57(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L169
.L168:
	leaq	.LC58(%rip), %rax
	movq	%rax, -8(%rbp)
	nop
.L169:
	movl	-36(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L173
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L174
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$598, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L167
.L174:
	movq	-8(%rbp), %rdx
	leaq	.LC59(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L175
	movl	$0, %eax
	jmp	.L167
.L175:
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	.LC36(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_labeled_buf
	testl	%eax, %eax
	jne	.L176
	movl	$0, %eax
	jmp	.L167
.L173:
	movl	-36(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L176
	movq	-16(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L177
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$609, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$220, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L167
.L177:
	movq	-8(%rbp), %rdx
	leaq	.LC60(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L176
	movl	$0, %eax
	jmp	.L167
.L176:
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	leaq	17(%rax), %rdi
	leaq	.LC54(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	print_labeled_buf
	testl	%eax, %eax
	jne	.L178
	movl	$0, %eax
	jmp	.L167
.L178:
	movl	$1, %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE398:
	.size	ecx_to_text, .-ecx_to_text
	.section	.rodata
.LC61:
	.string	"RSA key"
.LC62:
	.string	"modulus:"
.LC63:
	.string	"publicExponent:"
.LC64:
	.string	"Modulus:"
.LC65:
	.string	"Exponent:"
.LC66:
	.string	"%s: (%d bit, %d primes)\n"
.LC67:
	.string	"privateExponent:"
.LC68:
	.string	"prime1:"
.LC69:
	.string	"prime2:"
.LC70:
	.string	"exponent1:"
.LC71:
	.string	"exponent2:"
.LC72:
	.string	"coefficient:"
.LC73:
	.string	"prime%d:"
.LC74:
	.string	"exponent%d:"
.LC75:
	.string	"coefficient%d:"
.LC76:
	.string	"(INVALID PSS PARAMETERS)\n"
	.align 8
.LC77:
	.string	"No PSS parameter restrictions\n"
.LC78:
	.string	"PSS parameter restrictions:\n"
.LC79:
	.string	" (default)"
.LC80:
	.string	"  Hash Algorithm: %s%s\n"
	.align 8
.LC81:
	.string	"  Mask Algorithm: %s with %s%s\n"
.LC82:
	.string	"  Minimum Salt Length: %d%s\n"
.LC83:
	.string	"  Trailer Field: 0x%x%s\n"
	.text
	.type	rsa_to_text, @function
rsa_to_text:
.LFB399:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC61(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_pss_params_30@PLT
	movq	%rax, -88(%rbp)
	movl	$0, -68(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L180
	cmpq	$0, -80(%rbp)
	jne	.L181
.L180:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$646, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L182
.L181:
	call	sk_BIGNUM_const_new_null
	movq	%rax, -48(%rbp)
	call	sk_BIGNUM_const_new_null
	movq	%rax, -56(%rbp)
	call	sk_BIGNUM_const_new_null
	movq	%rax, -64(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L183
	cmpq	$0, -56(%rbp)
	je	.L183
	cmpq	$0, -64(%rbp)
	jne	.L184
.L183:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$655, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L182
.L184:
	movl	-164(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L185
	leaq	.LC33(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC62(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC63(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L186
.L185:
	movl	-164(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L186
	leaq	.LC34(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC64(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC65(%rip), %rax
	movq	%rax, -40(%rbp)
.L186:
	leaq	-120(%rbp), %rcx
	leaq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_key@PLT
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_all_params@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_const_num
	movl	%eax, -92(%rbp)
	movl	-164(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L187
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ecx
	movl	-92(%rbp), %edi
	movq	-24(%rbp), %rdx
	leaq	.LC66(%rip), %rsi
	movq	-152(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L188
	jmp	.L182
.L187:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	leaq	.LC29(%rip), %rsi
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L225
.L188:
	movq	-128(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L226
	movq	-136(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L227
	movl	-164(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L191
	movq	-120(%rbp), %rdx
	leaq	.LC67(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L228
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_value
	movq	%rax, %rdx
	leaq	.LC68(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L229
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_value
	movq	%rax, %rdx
	leaq	.LC69(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L230
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_value
	movq	%rax, %rdx
	leaq	.LC70(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L231
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_value
	movq	%rax, %rdx
	leaq	.LC71(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L232
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_value
	movq	%rax, %rdx
	leaq	.LC72(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L233
	movl	$2, -72(%rbp)
	jmp	.L198
.L205:
	movl	-72(%rbp), %eax
	leal	1(%rax), %edx
	leaq	.LC73(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L234
	movl	-72(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_value
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L235
	movl	-72(%rbp), %eax
	leal	1(%rax), %edx
	leaq	.LC74(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L236
	movl	-72(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_value
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L237
	movl	-72(%rbp), %eax
	leal	1(%rax), %edx
	leaq	.LC75(%rip), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L238
	movl	-72(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_BIGNUM_const_value
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	print_labeled_bignum
	testl	%eax, %eax
	je	.L239
	addl	$1, -72(%rbp)
.L198:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_const_num
	cmpl	%eax, -72(%rbp)
	jl	.L205
.L191:
	movl	-164(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L206
	movq	-80(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	testl	%eax, %eax
	je	.L207
	cmpl	$4096, %eax
	je	.L208
	jmp	.L206
.L207:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	jne	.L240
	leaq	.LC76(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L240
	jmp	.L182
.L208:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	je	.L210
	leaq	.LC77(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L241
	jmp	.L182
.L210:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_hashalg@PLT
	movl	%eax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_maskgenalg@PLT
	movl	%eax, -100(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_maskgenhashalg@PLT
	movl	%eax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_saltlen@PLT
	movl	%eax, -108(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_trailerfield@PLT
	movl	%eax, -112(%rbp)
	leaq	.LC78(%rip), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L242
	cmpl	$64, -96(%rbp)
	jne	.L213
	leaq	.LC79(%rip), %rbx
	jmp	.L214
.L213:
	leaq	.LC1(%rip), %rbx
.L214:
	movl	-96(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rsa_oaeppss_nid2name@PLT
	movq	%rax, %rdx
	leaq	.LC80(%rip), %rsi
	movq	-152(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L243
	cmpl	$911, -100(%rbp)
	jne	.L216
	cmpl	$64, -104(%rbp)
	jne	.L216
	leaq	.LC79(%rip), %rbx
	jmp	.L217
.L216:
	leaq	.LC1(%rip), %rbx
.L217:
	movl	-104(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rsa_oaeppss_nid2name@PLT
	movq	%rax, %r12
	movl	-100(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rsa_mgf_nid2name@PLT
	movq	%rax, %rdx
	leaq	.LC81(%rip), %rsi
	movq	-152(%rbp), %rax
	movq	%rbx, %r8
	movq	%r12, %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L244
	cmpl	$20, -108(%rbp)
	jne	.L219
	leaq	.LC79(%rip), %rax
	jmp	.L220
.L219:
	leaq	.LC1(%rip), %rax
.L220:
	movl	-108(%rbp), %edx
	leaq	.LC82(%rip), %rsi
	movq	-152(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L245
	cmpl	$1, -112(%rbp)
	jne	.L222
	leaq	.LC79(%rip), %rax
	jmp	.L223
.L222:
	leaq	.LC1(%rip), %rax
.L223:
	movl	-112(%rbp), %edx
	leaq	.LC83(%rip), %rsi
	movq	-152(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L246
	jmp	.L241
.L240:
	nop
	jmp	.L206
.L241:
	nop
.L206:
	movl	$1, -68(%rbp)
	jmp	.L182
.L225:
	nop
	jmp	.L182
.L226:
	nop
	jmp	.L182
.L227:
	nop
	jmp	.L182
.L228:
	nop
	jmp	.L182
.L229:
	nop
	jmp	.L182
.L230:
	nop
	jmp	.L182
.L231:
	nop
	jmp	.L182
.L232:
	nop
	jmp	.L182
.L233:
	nop
	jmp	.L182
.L234:
	nop
	jmp	.L182
.L235:
	nop
	jmp	.L182
.L236:
	nop
	jmp	.L182
.L237:
	nop
	jmp	.L182
.L238:
	nop
	jmp	.L182
.L239:
	nop
	jmp	.L182
.L242:
	nop
	jmp	.L182
.L243:
	nop
	jmp	.L182
.L244:
	nop
	jmp	.L182
.L245:
	nop
	jmp	.L182
.L246:
	nop
.L182:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_const_free
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_const_free
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	sk_BIGNUM_const_free
	movl	-68(%rbp), %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE399:
	.size	rsa_to_text, .-rsa_to_text
	.type	key2text_newctx, @function
key2text_newctx:
.LFB400:
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
.LFE400:
	.size	key2text_newctx, .-key2text_newctx
	.type	key2text_freectx, @function
key2text_freectx:
.LFB401:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE401:
	.size	key2text_freectx, .-key2text_freectx
	.type	key2text_encode, @function
key2text_encode:
.LFB402:
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
	movq	%r9, -64(%rbp)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L251
	movl	$0, %eax
	jmp	.L252
.L251:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L252:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	key2text_encode, .-key2text_encode
	.type	dh2text_import_object, @function
dh2text_import_object:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	dh2text_import_object, .-dh2text_import_object
	.type	dh2text_free_object, @function
dh2text_free_object:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dh_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	dh2text_free_object, .-dh2text_free_object
	.type	dh2text_encode, @function
dh2text_encode:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L257
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$862, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L258
.L257:
	movq	-48(%rbp), %rdi
	leaq	dh_to_text(%rip), %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2text_encode
	addq	$16, %rsp
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	dh2text_encode, .-dh2text_encode
	.globl	ossl_dh_to_text_encoder_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_dh_to_text_encoder_functions, @object
	.size	ossl_dh_to_text_encoder_functions, 96
ossl_dh_to_text_encoder_functions:
	.long	1
	.zero	4
	.quad	key2text_newctx
	.long	2
	.zero	4
	.quad	key2text_freectx
	.long	20
	.zero	4
	.quad	dh2text_import_object
	.long	21
	.zero	4
	.quad	dh2text_free_object
	.long	11
	.zero	4
	.quad	dh2text_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dhx2text_import_object, @function
dhx2text_import_object:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	dhx2text_import_object, .-dhx2text_import_object
	.type	dhx2text_free_object, @function
dhx2text_free_object:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dhx_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	dhx2text_free_object, .-dhx2text_free_object
	.type	dhx2text_encode, @function
dhx2text_encode:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L263
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$863, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L264
.L263:
	movq	-48(%rbp), %rdi
	leaq	dh_to_text(%rip), %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2text_encode
	addq	$16, %rsp
.L264:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	dhx2text_encode, .-dhx2text_encode
	.globl	ossl_dhx_to_text_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dhx_to_text_encoder_functions, @object
	.size	ossl_dhx_to_text_encoder_functions, 96
ossl_dhx_to_text_encoder_functions:
	.long	1
	.zero	4
	.quad	key2text_newctx
	.long	2
	.zero	4
	.quad	key2text_freectx
	.long	20
	.zero	4
	.quad	dhx2text_import_object
	.long	21
	.zero	4
	.quad	dhx2text_free_object
	.long	11
	.zero	4
	.quad	dhx2text_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	dsa2text_import_object, @function
dsa2text_import_object:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	dsa2text_import_object, .-dsa2text_import_object
	.type	dsa2text_free_object, @function
dsa2text_free_object:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_dsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	dsa2text_free_object, .-dsa2text_free_object
	.type	dsa2text_encode, @function
dsa2text_encode:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L269
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$866, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L270
.L269:
	movq	-48(%rbp), %rdi
	leaq	dsa_to_text(%rip), %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2text_encode
	addq	$16, %rsp
.L270:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	dsa2text_encode, .-dsa2text_encode
	.globl	ossl_dsa_to_text_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_dsa_to_text_encoder_functions, @object
	.size	ossl_dsa_to_text_encoder_functions, 96
ossl_dsa_to_text_encoder_functions:
	.long	1
	.zero	4
	.quad	key2text_newctx
	.long	2
	.zero	4
	.quad	key2text_freectx
	.long	20
	.zero	4
	.quad	dsa2text_import_object
	.long	21
	.zero	4
	.quad	dsa2text_free_object
	.long	11
	.zero	4
	.quad	dsa2text_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ec2text_import_object, @function
ec2text_import_object:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ec2text_import_object, .-ec2text_import_object
	.type	ec2text_free_object, @function
ec2text_free_object:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	ec2text_free_object, .-ec2text_free_object
	.type	ec2text_encode, @function
ec2text_encode:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L275
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$869, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L276
.L275:
	movq	-48(%rbp), %rdi
	leaq	ec_to_text(%rip), %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2text_encode
	addq	$16, %rsp
.L276:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	ec2text_encode, .-ec2text_encode
	.globl	ossl_ec_to_text_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ec_to_text_encoder_functions, @object
	.size	ossl_ec_to_text_encoder_functions, 96
ossl_ec_to_text_encoder_functions:
	.long	1
	.zero	4
	.quad	key2text_newctx
	.long	2
	.zero	4
	.quad	key2text_freectx
	.long	20
	.zero	4
	.quad	ec2text_import_object
	.long	21
	.zero	4
	.quad	ec2text_free_object
	.long	11
	.zero	4
	.quad	ec2text_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm22text_import_object, @function
sm22text_import_object:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	sm22text_import_object, .-sm22text_import_object
	.type	sm22text_free_object, @function
sm22text_free_object:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	sm22text_free_object, .-sm22text_free_object
	.type	sm22text_encode, @function
sm22text_encode:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L281
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$871, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L282
.L281:
	movq	-48(%rbp), %rdi
	leaq	ec_to_text(%rip), %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2text_encode
	addq	$16, %rsp
.L282:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	sm22text_encode, .-sm22text_encode
	.globl	ossl_sm2_to_text_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_text_encoder_functions, @object
	.size	ossl_sm2_to_text_encoder_functions, 96
ossl_sm2_to_text_encoder_functions:
	.long	1
	.zero	4
	.quad	key2text_newctx
	.long	2
	.zero	4
	.quad	key2text_freectx
	.long	20
	.zero	4
	.quad	sm22text_import_object
	.long	21
	.zero	4
	.quad	sm22text_free_object
	.long	11
	.zero	4
	.quad	sm22text_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed255192text_import_object, @function
ed255192text_import_object:
.LFB418:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	ed255192text_import_object, .-ed255192text_import_object
	.type	ed255192text_free_object, @function
ed255192text_free_object:
.LFB419:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ed255192text_free_object, .-ed255192text_free_object
	.type	ed255192text_encode, @function
ed255192text_encode:
.LFB420:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L287
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$874, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L288
.L287:
	movq	-48(%rbp), %rdi
	leaq	ecx_to_text(%rip), %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2text_encode
	addq	$16, %rsp
.L288:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	ed255192text_encode, .-ed255192text_encode
	.globl	ossl_ed25519_to_text_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed25519_to_text_encoder_functions, @object
	.size	ossl_ed25519_to_text_encoder_functions, 96
ossl_ed25519_to_text_encoder_functions:
	.long	1
	.zero	4
	.quad	key2text_newctx
	.long	2
	.zero	4
	.quad	key2text_freectx
	.long	20
	.zero	4
	.quad	ed255192text_import_object
	.long	21
	.zero	4
	.quad	ed255192text_free_object
	.long	11
	.zero	4
	.quad	ed255192text_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	ed4482text_import_object, @function
ed4482text_import_object:
.LFB421:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	ed4482text_import_object, .-ed4482text_import_object
	.type	ed4482text_free_object, @function
ed4482text_free_object:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ed448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	ed4482text_free_object, .-ed4482text_free_object
	.type	ed4482text_encode, @function
ed4482text_encode:
.LFB423:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L293
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$875, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L294
.L293:
	movq	-48(%rbp), %rdi
	leaq	ecx_to_text(%rip), %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2text_encode
	addq	$16, %rsp
.L294:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	ed4482text_encode, .-ed4482text_encode
	.globl	ossl_ed448_to_text_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed448_to_text_encoder_functions, @object
	.size	ossl_ed448_to_text_encoder_functions, 96
ossl_ed448_to_text_encoder_functions:
	.long	1
	.zero	4
	.quad	key2text_newctx
	.long	2
	.zero	4
	.quad	key2text_freectx
	.long	20
	.zero	4
	.quad	ed4482text_import_object
	.long	21
	.zero	4
	.quad	ed4482text_free_object
	.long	11
	.zero	4
	.quad	ed4482text_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x255192text_import_object, @function
x255192text_import_object:
.LFB424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	x255192text_import_object, .-x255192text_import_object
	.type	x255192text_free_object, @function
x255192text_free_object:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x25519_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	x255192text_free_object, .-x255192text_free_object
	.type	x255192text_encode, @function
x255192text_encode:
.LFB426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L299
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$876, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L300
.L299:
	movq	-48(%rbp), %rdi
	leaq	ecx_to_text(%rip), %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2text_encode
	addq	$16, %rsp
.L300:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	x255192text_encode, .-x255192text_encode
	.globl	ossl_x25519_to_text_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x25519_to_text_encoder_functions, @object
	.size	ossl_x25519_to_text_encoder_functions, 96
ossl_x25519_to_text_encoder_functions:
	.long	1
	.zero	4
	.quad	key2text_newctx
	.long	2
	.zero	4
	.quad	key2text_freectx
	.long	20
	.zero	4
	.quad	x255192text_import_object
	.long	21
	.zero	4
	.quad	x255192text_free_object
	.long	11
	.zero	4
	.quad	x255192text_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	x4482text_import_object, @function
x4482text_import_object:
.LFB427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	x4482text_import_object, .-x4482text_import_object
	.type	x4482text_free_object, @function
x4482text_free_object:
.LFB428:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_x448_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	x4482text_free_object, .-x4482text_free_object
	.type	x4482text_encode, @function
x4482text_encode:
.LFB429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L305
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$877, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L306
.L305:
	movq	-48(%rbp), %rdi
	leaq	ecx_to_text(%rip), %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2text_encode
	addq	$16, %rsp
.L306:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	x4482text_encode, .-x4482text_encode
	.globl	ossl_x448_to_text_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_x448_to_text_encoder_functions, @object
	.size	ossl_x448_to_text_encoder_functions, 96
ossl_x448_to_text_encoder_functions:
	.long	1
	.zero	4
	.quad	key2text_newctx
	.long	2
	.zero	4
	.quad	key2text_freectx
	.long	20
	.zero	4
	.quad	x4482text_import_object
	.long	21
	.zero	4
	.quad	x4482text_free_object
	.long	11
	.zero	4
	.quad	x4482text_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa2text_import_object, @function
rsa2text_import_object:
.LFB430:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	rsa2text_import_object, .-rsa2text_import_object
	.type	rsa2text_free_object, @function
rsa2text_free_object:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsa_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	rsa2text_free_object, .-rsa2text_free_object
	.type	rsa2text_encode, @function
rsa2text_encode:
.LFB432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L311
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$880, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L312
.L311:
	movq	-48(%rbp), %rdi
	leaq	rsa_to_text(%rip), %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2text_encode
	addq	$16, %rsp
.L312:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	rsa2text_encode, .-rsa2text_encode
	.globl	ossl_rsa_to_text_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_to_text_encoder_functions, @object
	.size	ossl_rsa_to_text_encoder_functions, 96
ossl_rsa_to_text_encoder_functions:
	.long	1
	.zero	4
	.quad	key2text_newctx
	.long	2
	.zero	4
	.quad	key2text_freectx
	.long	20
	.zero	4
	.quad	rsa2text_import_object
	.long	21
	.zero	4
	.quad	rsa2text_free_object
	.long	11
	.zero	4
	.quad	rsa2text_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsapss2text_import_object, @function
rsapss2text_import_object:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	rsapss2text_import_object, .-rsapss2text_import_object
	.type	rsapss2text_free_object, @function
rsapss2text_free_object:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_rsapss_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	rsapss2text_free_object, .-rsapss2text_free_object
	.type	rsapss2text_encode, @function
rsapss2text_encode:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L317
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movl	$881, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L318
.L317:
	movq	-48(%rbp), %rdi
	leaq	rsa_to_text(%rip), %r8
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	key2text_encode
	addq	$16, %rsp
.L318:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	rsapss2text_encode, .-rsapss2text_encode
	.globl	ossl_rsapss_to_text_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsapss_to_text_encoder_functions, @object
	.size	ossl_rsapss_to_text_encoder_functions, 96
ossl_rsapss_to_text_encoder_functions:
	.long	1
	.zero	4
	.quad	key2text_newctx
	.long	2
	.zero	4
	.quad	key2text_freectx
	.long	20
	.zero	4
	.quad	rsapss2text_import_object
	.long	21
	.zero	4
	.quad	rsapss2text_free_object
	.long	11
	.zero	4
	.quad	rsapss2text_encode
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.15, @object
	.size	__func__.15, 11
__func__.15:
	.string	"dh_to_text"
	.align 8
	.type	__func__.14, @object
	.size	__func__.14, 12
__func__.14:
	.string	"dsa_to_text"
	.align 8
	.type	__func__.13, @object
	.size	__func__.13, 11
__func__.13:
	.string	"ec_to_text"
	.align 8
	.type	__func__.12, @object
	.size	__func__.12, 12
__func__.12:
	.string	"ecx_to_text"
	.align 8
	.type	__func__.11, @object
	.size	__func__.11, 12
__func__.11:
	.string	"rsa_to_text"
	.align 8
	.type	__func__.10, @object
	.size	__func__.10, 15
__func__.10:
	.string	"dh2text_encode"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 16
__func__.9:
	.string	"dhx2text_encode"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 16
__func__.8:
	.string	"dsa2text_encode"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 15
__func__.7:
	.string	"ec2text_encode"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 16
__func__.6:
	.string	"sm22text_encode"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 20
__func__.5:
	.string	"ed255192text_encode"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 18
__func__.4:
	.string	"ed4482text_encode"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"x255192text_encode"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"x4482text_encode"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"rsa2text_encode"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"rsapss2text_encode"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
