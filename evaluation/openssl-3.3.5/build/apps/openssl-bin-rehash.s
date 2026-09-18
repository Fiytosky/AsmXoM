	.file	"rehash.c"
	.text
	.type	ossl_check_OPENSSL_STRING_type, @function
ossl_check_OPENSSL_STRING_type:
.LFB6:
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
.LFE6:
	.size	ossl_check_OPENSSL_STRING_type, .-ossl_check_OPENSSL_STRING_type
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
	.type	ossl_check_OPENSSL_STRING_sk_type, @function
ossl_check_OPENSSL_STRING_sk_type:
.LFB8:
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
.LFE8:
	.size	ossl_check_OPENSSL_STRING_sk_type, .-ossl_check_OPENSSL_STRING_sk_type
	.type	ossl_check_OPENSSL_STRING_compfunc_type, @function
ossl_check_OPENSSL_STRING_compfunc_type:
.LFB9:
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
.LFE9:
	.size	ossl_check_OPENSSL_STRING_compfunc_type, .-ossl_check_OPENSSL_STRING_compfunc_type
	.type	ossl_check_OPENSSL_STRING_freefunc_type, @function
ossl_check_OPENSSL_STRING_freefunc_type:
.LFB11:
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
.LFE11:
	.size	ossl_check_OPENSSL_STRING_freefunc_type, .-ossl_check_OPENSSL_STRING_freefunc_type
	.type	ossl_check_const_X509_INFO_sk_type, @function
ossl_check_const_X509_INFO_sk_type:
.LFB366:
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
.LFE366:
	.size	ossl_check_const_X509_INFO_sk_type, .-ossl_check_const_X509_INFO_sk_type
	.type	ossl_check_X509_INFO_sk_type, @function
ossl_check_X509_INFO_sk_type:
.LFB367:
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
.LFE367:
	.size	ossl_check_X509_INFO_sk_type, .-ossl_check_X509_INFO_sk_type
	.type	ossl_check_X509_INFO_freefunc_type, @function
ossl_check_X509_INFO_freefunc_type:
.LFB370:
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
.LFE370:
	.size	ossl_check_X509_INFO_freefunc_type, .-ossl_check_X509_INFO_freefunc_type
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB631:
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
.LFE631:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB632:
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
.LFE632:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.local	evpmdsize
	.comm	evpmdsize,4,4
	.local	evpmd
	.comm	evpmd,8,8
	.data
	.align 4
	.type	remove_links, @object
	.size	remove_links, 4
remove_links:
	.long	1
	.local	verbose
	.comm	verbose,4,4
	.local	hash_table
	.comm	hash_table,2056,32
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"r"
	.section	.data.rel.local,"aw"
	.align 16
	.type	suffixes, @object
	.size	suffixes, 16
suffixes:
	.quad	.LC0
	.quad	.LC1
	.section	.rodata
.LC2:
	.string	"pem"
.LC3:
	.string	"crt"
.LC4:
	.string	"cer"
.LC5:
	.string	"crl"
	.section	.data.rel.local
	.align 32
	.type	extensions, @object
	.size	extensions, 32
extensions:
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.text
	.type	bit_set, @function
bit_set:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, %esi
	movl	%esi, %edx
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	bit_set, .-bit_set
	.type	bit_isset, @function
bit_isset:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-12(%rbp), %edx
	andl	$7, %edx
	movl	$1, %esi
	movl	%edx, %ecx
	sall	%cl, %esi
	movl	%esi, %edx
	andl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	bit_isset, .-bit_isset
	.section	.rodata
.LC6:
	.string	"hash bucket"
.LC7:
	.string	"certificate"
.LC8:
	.string	"CRL"
	.align 8
.LC9:
	.string	"%s: warning: skipping duplicate %s in %s\n"
	.align 8
.LC10:
	.string	"%s: error: hash table overflow for %s\n"
.LC11:
	.string	"collision bucket"
.LC12:
	.string	"../apps/rehash.c"
.LC13:
	.string	"out of memory\n"
	.text
	.type	add_entry, @function
add_entry:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movl	%r9d, %eax
	movw	%ax, -80(%rbp)
	movq	$0, -40(%rbp)
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	%ecx, %edx
	movl	$4278255361, %eax
	imulq	%rdx, %rax
	shrq	$32, %rax
	shrl	$8, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %edx
	movl	%edx, %eax
	sall	$8, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -44(%rbp)
	movl	-44(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	hash_table(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L25
.L28:
	movq	-24(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %eax
	cmpl	%eax, -52(%rbp)
	jne	.L26
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	%eax, -56(%rbp)
	je	.L45
.L26:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L25:
	cmpq	$0, -24(%rbp)
	jne	.L28
	jmp	.L27
.L45:
	nop
.L27:
	cmpq	$0, -24(%rbp)
	jne	.L29
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	app_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	nilbucket.1(%rip), %rax
	movq	8+nilbucket.1(%rip), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16+nilbucket.1(%rip), %rax
	movq	24+nilbucket.1(%rip), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movl	-44(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	hash_table(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 28(%rax)
	movq	-24(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, 24(%rax)
	movl	-44(%rbp), %eax
	leaq	0(,%rax,8), %rcx
	leaq	hash_table(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
.L29:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L30
.L37:
	cmpq	$0, -72(%rbp)
	je	.L31
	movl	evpmdsize(%rip), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	19(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L31
	cmpl	$0, -52(%rbp)
	jne	.L32
	leaq	.LC7(%rip), %rbx
	jmp	.L33
.L32:
	leaq	.LC8(%rip), %rbx
.L33:
	call	opt_getprog@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	leaq	.LC9(%rip), %rsi
	movq	%rcx, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L34
.L31:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L35
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L46
.L35:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L30:
	cmpq	$0, -32(%rbp)
	jne	.L37
	jmp	.L36
.L46:
	nop
.L36:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L38
	movq	-24(%rbp), %rax
	movzwl	30(%rax), %eax
	cmpw	$255, %ax
	jbe	.L39
	call	opt_getprog@PLT
	movq	%rax, %rdi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC10(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L34
.L39:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movl	$88, %edi
	call	app_malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	nilhentry.0(%rip), %rcx
	movq	8+nilhentry.0(%rip), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16+nilhentry.0(%rip), %rcx
	movq	24+nilhentry.0(%rip), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32+nilhentry.0(%rip), %rcx
	movq	40+nilhentry.0(%rip), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48+nilhentry.0(%rip), %rcx
	movq	56+nilhentry.0(%rip), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64+nilhentry.0(%rip), %rcx
	movq	72+nilhentry.0(%rip), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80+nilhentry.0(%rip), %rdx
	movq	%rdx, 80(%rax)
	movq	-32(%rbp), %rax
	movw	$-1, 16(%rax)
	leaq	.LC12(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$167, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	leaq	.LC12(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$169, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -32(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L34
.L40:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L41:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L42
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L42:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L38:
	movq	-32(%rbp), %rax
	movzwl	16(%rax), %eax
	cmpw	%ax, -80(%rbp)
	jnb	.L43
	movq	-32(%rbp), %rax
	movzwl	-80(%rbp), %edx
	movw	%dx, 16(%rax)
.L43:
	cmpl	$0, -76(%rbp)
	je	.L44
	movq	-32(%rbp), %rax
	movzbl	18(%rax), %eax
	testb	%al, %al
	jne	.L44
	movq	-32(%rbp), %rax
	movb	$1, 18(%rax)
	movq	-24(%rbp), %rax
	movzwl	30(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movw	%dx, 30(%rax)
	movl	evpmdsize(%rip), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	19(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L44:
	movl	$0, %eax
.L34:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	add_entry, .-add_entry
	.type	handle_symlink, @function
handle_symlink:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4160, %rsp
	movq	%rdi, -4152(%rbp)
	movq	%rsi, -4160(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L48
.L51:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4152(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-25(%rbp), %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L49
	movl	$-1, %eax
	jmp	.L60
.L49:
	sall	$4, -4(%rbp)
	movzbl	-25(%rbp), %eax
	movl	%eax, %edi
	call	OPENSSL_hexchar2int@PLT
	addl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L48:
	cmpl	$7, -8(%rbp)
	jle	.L51
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-4152(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L52
	movl	$-1, %eax
	jmp	.L60
.L52:
	movl	$1, -12(%rbp)
	jmp	.L53
.L56:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	suffixes(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	suffixes(%rip), %rax
	movq	(%rcx,%rax), %rax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-4152(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	je	.L61
	subl	$1, -12(%rbp)
.L53:
	cmpl	$0, -12(%rbp)
	jg	.L56
	jmp	.L55
.L61:
	nop
.L55:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	suffixes(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-4152(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-4136(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strtoul@PLT
	movl	%eax, -16(%rbp)
	movq	-4136(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L57
	movl	$-1, %eax
	jmp	.L60
.L57:
	leaq	-4128(%rbp), %rcx
	movq	-4160(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	readlink@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	js	.L58
	cmpq	$4095, -24(%rbp)
	jle	.L59
.L58:
	movl	$-1, %eax
	jmp	.L60
.L59:
	leaq	-4128(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-16(%rbp), %eax
	movzwl	%ax, %ecx
	movl	-12(%rbp), %eax
	leaq	-4128(%rbp), %rdx
	movl	-4(%rbp), %esi
	movl	%ecx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	%eax, %edi
	call	add_entry
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	handle_symlink, .-handle_symlink
	.section	.rodata
	.align 8
.LC14:
	.string	"%s: error: skipping %s, cannot open file\n"
	.align 8
.LC15:
	.string	"%s: warning: skipping %s, it does not contain exactly one certificate or CRL\n"
	.align 8
.LC16:
	.string	"%s: error calculating SHA1 hash value\n"
	.text
	.type	do_file, @function
do_file:
.LFB651:
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
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -40(%rbp)
	movq	-168(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strrchr@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L82
	movq	$0, -48(%rbp)
	jmp	.L65
.L68:
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	leaq	extensions(%rip), %rax
	movq	(%rcx,%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L83
	addq	$1, -48(%rbp)
.L65:
	cmpq	$3, -48(%rbp)
	jbe	.L68
	jmp	.L67
.L83:
	nop
.L67:
	cmpq	$3, -48(%rbp)
	ja	.L84
	leaq	.LC1(%rip), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L70
	call	opt_getprog@PLT
	movq	%rax, %rdi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	leaq	.LC14(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -40(%rbp)
	jmp	.L64
.L70:
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_X509_INFO_read_bio@PLT
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpq	$0, -24(%rbp)
	je	.L85
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_INFO_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	$1, %eax
	je	.L72
	call	opt_getprog@PLT
	movq	%rax, %rdi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	leaq	.LC15(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L64
.L72:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_INFO_sk_type
	movl	$0, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movl	$0, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_get_subject_name@PLT
	movq	%rax, -32(%rbp)
	movq	evpmd(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	-144(%rbp), %rdx
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_digest@PLT
	testl	%eax, %eax
	jne	.L74
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -40(%rbp)
	jmp	.L64
.L73:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movl	$1, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_CRL_get_issuer@PLT
	movq	%rax, -32(%rbp)
	movq	evpmd(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-144(%rbp), %rdx
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_CRL_digest@PLT
	testl	%eax, %eax
	jne	.L74
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -40(%rbp)
	jmp	.L64
.L75:
	addl	$1, -40(%rbp)
	jmp	.L64
.L74:
	cmpq	$0, -32(%rbp)
	je	.L86
	cmpl	$1, -180(%rbp)
	je	.L76
	cmpl	$2, -180(%rbp)
	jne	.L77
.L76:
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rsi
	leaq	-148(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	X509_NAME_hash_ex@PLT
	movq	%rax, -80(%rbp)
	movl	-148(%rbp), %eax
	testl	%eax, %eax
	je	.L78
	movq	-80(%rbp), %rax
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	leaq	-144(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movl	$65535, %r9d
	movl	$1, %r8d
	movl	%eax, %edi
	call	add_entry
	addl	%eax, -40(%rbp)
	jmp	.L77
.L78:
	call	opt_getprog@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -40(%rbp)
.L77:
	cmpl	$0, -180(%rbp)
	je	.L80
	cmpl	$2, -180(%rbp)
	jne	.L86
.L80:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_hash_old@PLT
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	leaq	-144(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movl	$65535, %r9d
	movl	$1, %r8d
	movl	%eax, %edi
	call	add_entry
	addl	%eax, -40(%rbp)
	jmp	.L64
.L82:
	nop
	jmp	.L64
.L84:
	nop
	jmp	.L64
.L85:
	nop
	jmp	.L64
.L86:
	nop
.L64:
	movq	X509_INFO_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_freefunc_type
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_INFO_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	do_file, .-do_file
	.type	str_free, @function
str_free:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC12(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$323, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	str_free, .-str_free
	.type	ends_with_dirsep, @function
ends_with_dirsep:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L89
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subq	$1, %rax
	addq	%rax, -8(%rbp)
.L89:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	ends_with_dirsep, .-ends_with_dirsep
	.type	sk_strcmp, @function
sk_strcmp:
.LFB654:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	sk_strcmp, .-sk_strcmp
	.section	.rodata
.LC17:
	.string	"Skipping %s, can't write\n"
.LC18:
	.string	"/"
.LC19:
	.string	"Doing %s\n"
.LC20:
	.string	"Skipping %s, out of memory\n"
.LC21:
	.string	"filename buffer"
.LC22:
	.string	"%s%s%s"
.LC23:
	.string	"%08x.%s%d"
.LC24:
	.string	"link %s -> %s\n"
.LC25:
	.string	"%s%s%08x.%s%d"
.LC26:
	.string	"%s: Can't unlink %s, %s\n"
.LC27:
	.string	"%s: Can't symlink %s, %s\n"
.LC28:
	.string	"unlink %s\n"
	.text
	.type	do_dir, @function
do_dir:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$320, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -328(%rbp)
	movl	%esi, -332(%rbp)
	movq	$0, -144(%rbp)
	movl	$0, -48(%rbp)
	movq	$20, -64(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-328(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	app_access@PLT
	testl	%eax, %eax
	jns	.L94
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-328(%rbp), %rdx
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	jmp	.L128
.L94:
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L96
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	call	ends_with_dirsep
	testl	%eax, %eax
	jne	.L96
	leaq	.LC18(%rip), %rax
	movq	%rax, -72(%rbp)
	addl	$1, -44(%rbp)
.L96:
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L97
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-328(%rbp), %rdx
	leaq	.LC19(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L97:
	leaq	sk_strcmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L100
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-328(%rbp), %rdx
	leaq	.LC20(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, -48(%rbp)
	jmp	.L99
.L103:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -136(%rbp)
	leaq	.LC12(%rip), %rcx
	movq	-104(%rbp), %rax
	movl	$383, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L101
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L102
.L101:
	leaq	.LC12(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$385, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_DIR_end@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, -48(%rbp)
	jmp	.L99
.L102:
	movq	-136(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jnb	.L100
	movq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
.L100:
	movq	-328(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_DIR_read@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L103
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_DIR_end@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	cltq
	leaq	.LC21(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_malloc@PLT
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -112(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L104
.L109:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_STRING_sk_type
	movq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -104(%rbp)
	movl	-108(%rbp), %eax
	movslq	%eax, %rsi
	movq	-104(%rbp), %r8
	movq	-72(%rbp), %rcx
	movq	-328(%rbp), %rdx
	leaq	.LC22(%rip), %rdi
	movq	-80(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	cmpl	%eax, -108(%rbp)
	jle	.L129
	leaq	-288(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lstat@PLT
	testl	%eax, %eax
	js	.L130
	movl	-264(%rbp), %eax
	andl	$61440, %eax
	cmpl	$40960, %eax
	jne	.L108
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	handle_symlink
	testl	%eax, %eax
	je	.L131
.L108:
	movl	-332(%rbp), %edx
	movq	-80(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_file
	addl	%eax, -48(%rbp)
	jmp	.L106
.L129:
	nop
	jmp	.L106
.L130:
	nop
	jmp	.L106
.L131:
	nop
.L106:
	addl	$1, -36(%rbp)
.L104:
	movl	-36(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jl	.L109
	movq	$0, -56(%rbp)
	jmp	.L110
.L127:
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	hash_table(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L111
.L126:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movzwl	30(%rax), %eax
	movzwl	%ax, %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	leaq	-320(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L112
.L114:
	movq	-32(%rbp), %rax
	movzwl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movzwl	30(%rax), %eax
	cmpw	%ax, %dx
	jnb	.L113
	movq	-32(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %edx
	leaq	-320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bit_set
.L113:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L112:
	cmpq	$0, -32(%rbp)
	jne	.L114
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L115
.L125:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movzwl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movzwl	30(%rax), %eax
	cmpw	%ax, %dx
	jnb	.L116
	movq	-32(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %r8d
	movq	-24(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	suffixes(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movl	-108(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC23(%rip), %rdi
	movq	-80(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L117
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L117
.L116:
	movq	-32(%rbp), %rax
	movzbl	18(%rax), %eax
	testb	%al, %al
	je	.L118
	jmp	.L119
.L120:
	addl	$1, -40(%rbp)
.L119:
	movl	-40(%rbp), %edx
	leaq	-320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bit_isset
	testl	%eax, %eax
	jne	.L120
	movq	-24(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	suffixes(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	24(%rax), %r9d
	movl	-108(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %r10
	movq	-328(%rbp), %rdx
	leaq	.LC25(%rip), %rdi
	movq	-80(%rbp), %rax
	movl	-40(%rbp), %r8d
	pushq	%r8
	pushq	%rcx
	movq	%r10, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L121
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC24(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L121:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	unlink@PLT
	testl	%eax, %eax
	jns	.L122
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L122
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rbx
	call	opt_getprog@PLT
	movq	%rax, %rdi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC26(%rip), %rsi
	movq	%rbx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -48(%rbp)
.L122:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	symlink@PLT
	testl	%eax, %eax
	jns	.L123
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	8(%rax), %rbx
	call	opt_getprog@PLT
	movq	%rax, %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC27(%rip), %rsi
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -48(%rbp)
.L123:
	movl	-40(%rbp), %edx
	leaq	-320(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bit_set
	jmp	.L117
.L118:
	movl	remove_links(%rip), %eax
	testl	%eax, %eax
	je	.L117
	movq	-32(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %r8d
	movq	-24(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	suffixes(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	24(%rax), %r9d
	movl	-108(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %r10
	movq	-328(%rbp), %rdx
	leaq	.LC25(%rip), %rdi
	movq	-80(%rbp), %rax
	pushq	%r8
	pushq	%rcx
	movq	%r10, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L124
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC28(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L124:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	unlink@PLT
	testl	%eax, %eax
	jns	.L117
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L117
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rbx
	call	opt_getprog@PLT
	movq	%rax, %rdi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC26(%rip), %rsi
	movq	%rbx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -48(%rbp)
.L117:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC12(%rip), %rcx
	movl	$471, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC12(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$472, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
.L115:
	cmpq	$0, -32(%rbp)
	jne	.L125
	leaq	.LC12(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$474, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
.L111:
	cmpq	$0, -24(%rbp)
	jne	.L126
	movq	-56(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	hash_table(%rip), %rax
	movq	$0, (%rdx,%rax)
	addq	$1, -56(%rbp)
.L110:
	cmpq	$256, -56(%rbp)
	jbe	.L127
	nop
.L99:
	leaq	str_free(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_freefunc_type
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	leaq	.LC12(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$481, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-48(%rbp), %eax
.L128:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	do_dir, .-do_dir
	.globl	rehash_options
	.section	.rodata
	.align 8
.LC29:
	.string	"Usage: %s [options] [directory...]\n"
.LC30:
	.string	"General options:\n"
.LC31:
	.string	"help"
.LC32:
	.string	"Display this summary"
.LC33:
	.string	"h"
.LC34:
	.string	"compat"
	.align 8
.LC35:
	.string	"Create both new- and old-style hash links"
.LC36:
	.string	"old"
	.align 8
.LC37:
	.string	"Use old-style hash to generate links"
.LC38:
	.string	"n"
.LC39:
	.string	"Do not remove existing links"
.LC40:
	.string	"Output options:\n"
.LC41:
	.string	"v"
.LC42:
	.string	"Verbose output"
.LC43:
	.string	"Provider options:\n"
.LC44:
	.string	"provider-path"
	.align 8
.LC45:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC46:
	.string	"provider"
	.align 8
.LC47:
	.string	"Provider to load (can be specified multiple times)"
.LC48:
	.string	"propquery"
	.align 8
.LC49:
	.string	"Property query used when fetching algorithms"
.LC50:
	.string	"Parameters:\n"
.LC51:
	.string	"directory"
	.align 8
.LC52:
	.string	"One or more directories to process (optional)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	rehash_options, @object
	.size	rehash_options, 384
rehash_options:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC29
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	1
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	1
	.long	45
	.quad	.LC32
	.quad	.LC34
	.long	2
	.long	45
	.quad	.LC35
	.quad	.LC36
	.long	3
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	4
	.long	45
	.quad	.LC39
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC40
	.quad	.LC41
	.long	5
	.long	45
	.quad	.LC42
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC43
	.quad	.LC44
	.long	1602
	.long	115
	.quad	.LC45
	.quad	.LC46
	.long	1601
	.long	115
	.quad	.LC47
	.quad	.LC48
	.long	1603
	.long	115
	.quad	.LC49
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC50
	.quad	.LC51
	.long	0
	.long	0
	.quad	.LC52
	.quad	0
	.zero	16
	.section	.rodata
.LC53:
	.string	"%s: Use -help for summary.\n"
	.text
	.globl	rehash_main
	.type	rehash_main, @function
rehash_main:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, -12(%rbp)
	movl	$1, -16(%rbp)
	movq	rehash_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -24(%rbp)
	jmp	.L133
.L145:
	cmpl	$1604, -28(%rbp)
	je	.L133
	cmpl	$1604, -28(%rbp)
	jg	.L133
	cmpl	$1603, -28(%rbp)
	jg	.L133
	cmpl	$1601, -28(%rbp)
	jge	.L135
	cmpl	$1600, -28(%rbp)
	je	.L133
	cmpl	$1600, -28(%rbp)
	jg	.L133
	cmpl	$5, -28(%rbp)
	je	.L136
	cmpl	$5, -28(%rbp)
	jg	.L133
	cmpl	$4, -28(%rbp)
	je	.L137
	cmpl	$4, -28(%rbp)
	jg	.L133
	cmpl	$3, -28(%rbp)
	je	.L138
	cmpl	$3, -28(%rbp)
	jg	.L133
	cmpl	$2, -28(%rbp)
	je	.L139
	cmpl	$2, -28(%rbp)
	jg	.L133
	cmpl	$0, -28(%rbp)
	jg	.L140
	cmpl	$-1, -28(%rbp)
	jge	.L141
	jmp	.L133
.L140:
	cmpl	$1, -28(%rbp)
	je	.L142
	jmp	.L133
.L141:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC53(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L143
.L142:
	movq	rehash_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	jmp	.L143
.L139:
	movl	$2, -16(%rbp)
	jmp	.L133
.L138:
	movl	$0, -16(%rbp)
	jmp	.L133
.L137:
	movl	$0, remove_links(%rip)
	jmp	.L133
.L136:
	movl	$1, verbose(%rip)
	jmp	.L133
.L135:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L154
	nop
.L133:
	call	opt_next@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L145
	call	opt_num_rest@PLT
	movl	%eax, -68(%rbp)
	call	opt_rest@PLT
	movq	%rax, -80(%rbp)
	call	EVP_sha1@PLT
	movq	%rax, evpmd(%rip)
	movq	evpmd(%rip), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, evpmdsize(%rip)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L146
	jmp	.L147
.L148:
	movq	-80(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	(%rax), %rax
	movl	-16(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	do_dir
	addl	%eax, -12(%rbp)
.L147:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L148
	jmp	.L143
.L146:
	call	X509_get_default_cert_dir_env@PLT
	movq	%rax, %rdi
	call	getenv@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L149
	movw	$58, -50(%rbp)
	leaq	.LC12(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$561, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L150
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$1, -12(%rbp)
	jmp	.L143
.L150:
	leaq	-50(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
	jmp	.L151
.L152:
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	do_dir
	addl	%eax, -12(%rbp)
	leaq	-50(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -8(%rbp)
.L151:
	cmpq	$0, -8(%rbp)
	jne	.L152
	leaq	.LC12(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$569, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L143
.L149:
	call	X509_get_default_cert_dir@PLT
	movq	%rax, %rdx
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	do_dir
	addl	%eax, -12(%rbp)
	jmp	.L143
.L154:
	nop
.L143:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	rehash_main, .-rehash_main
	.local	nilbucket.1
	.comm	nilbucket.1,32,32
	.local	nilhentry.0
	.comm	nilhentry.0,88,32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
