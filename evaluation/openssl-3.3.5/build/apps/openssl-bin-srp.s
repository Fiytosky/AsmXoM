	.file	"srp.c"
	.text
	.type	sk_OPENSSL_PSTRING_num, @function
sk_OPENSSL_PSTRING_num:
.LFB91:
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
.LFE91:
	.size	sk_OPENSSL_PSTRING_num, .-sk_OPENSSL_PSTRING_num
	.type	sk_OPENSSL_PSTRING_value, @function
sk_OPENSSL_PSTRING_value:
.LFB92:
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
.LFE92:
	.size	sk_OPENSSL_PSTRING_value, .-sk_OPENSSL_PSTRING_value
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB649:
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
.LFE649:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB650:
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
.LFE650:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.type	get_index, @function
get_index:
.LFB665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L10
	movl	$-1, %eax
	jmp	.L11
.L10:
	cmpb	$73, -36(%rbp)
	jne	.L12
	movl	$0, -4(%rbp)
	jmp	.L13
.L15:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$73, %al
	jne	.L14
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L14
	movl	-4(%rbp), %eax
	jmp	.L11
.L14:
	addl	$1, -4(%rbp)
.L13:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	cmpl	%eax, -4(%rbp)
	jl	.L15
	jmp	.L16
.L12:
	movl	$0, -4(%rbp)
	jmp	.L17
.L19:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$73, %al
	je	.L18
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L18
	movl	-4(%rbp), %eax
	jmp	.L11
.L18:
	addl	$1, -4(%rbp)
.L17:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	cmpl	%eax, -4(%rbp)
	jl	.L19
.L16:
	movl	$-1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE665:
	.size	get_index, .-get_index
	.section	.rodata
.LC0:
	.string	"%s \"%s\"\n"
.LC1:
	.string	"  %d = \"%s\"\n"
	.text
	.type	print_entry, @function
print_entry:
.LFB666:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L24
	cmpl	$0, -32(%rbp)
	je	.L24
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L22
.L23:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -4(%rbp)
.L22:
	cmpl	$5, -4(%rbp)
	jle	.L23
.L24:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE666:
	.size	print_entry, .-print_entry
	.section	.rodata
.LC2:
	.string	"g N entry"
	.text
	.type	print_index, @function
print_index:
.LFB667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	leaq	.LC2(%rip), %rcx
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	print_entry
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE667:
	.size	print_index, .-print_index
	.section	.rodata
.LC3:
	.string	"User entry"
	.text
	.type	print_user, @function
print_user:
.LFB668:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.L28
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$73, %al
	je	.L28
	leaq	.LC3(%rip), %rcx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_entry
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_index
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_entry
.L28:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE668:
	.size	print_user, .-print_user
	.section	.rodata
.LC4:
	.string	"row pointers"
.LC5:
	.string	"failed to update srpvfile\n"
.LC6:
	.string	"TXT_DB error number %ld\n"
.LC7:
	.string	"../apps/srp.c"
	.text
	.type	update_index, @function
update_index:
.LFB669:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$56, %edi
	call	app_malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L30
.L31:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-16(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
.L30:
	cmpl	$5, -4(%rbp)
	jle	.L31
	movq	-16(%rbp), %rax
	addq	$48, %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TXT_DB_insert@PLT
	testl	%eax, %eax
	jne	.L32
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leaq	.LC7(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$108, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L33
.L32:
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE669:
	.size	update_index, .-update_index
	.section	.rodata
	.align 8
.LC8:
	.string	"variable lookup failed for %s::%s\n"
	.text
	.type	lookup_conf, @function
lookup_conf:
.LFB670:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L35
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L35:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE670:
	.size	lookup_conf, .-lookup_conf
	.section	.rodata
	.align 8
.LC9:
	.string	"Validating\n   user=\"%s\"\n srp_verifier=\"%s\"\n srp_usersalt=\"%s\"\n g=\"%s\"\n N=\"%s\"\n"
.LC10:
	.string	"Pass %s\n"
	.align 8
.LC11:
	.string	"assertion failed: srp_usersalt != NULL"
	.align 8
.LC12:
	.string	"Internal error validating SRP verifier\n"
	.text
	.type	srp_verify_user, @function
srp_verify_user:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1120, %rsp
	movq	%rdi, -1080(%rbp)
	movq	%rsi, -1088(%rbp)
	movq	%rdx, -1096(%rbp)
	movq	%rcx, -1104(%rbp)
	movq	%r8, -1112(%rbp)
	movq	%r9, -1120(%rbp)
	movq	$0, -1064(%rbp)
	movq	$0, -8(%rbp)
	movq	-1080(%rbp), %rax
	movq	%rax, -1048(%rbp)
	movq	-1120(%rbp), %rax
	movq	%rax, -1056(%rbp)
	leaq	-1056(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	password_callback@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L38
	movl	-12(%rbp), %eax
	cltq
	movb	$0, -1040(%rbp,%rax)
	cmpl	$0, 16(%rbp)
	je	.L39
	movq	-1096(%rbp), %rdi
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-1104(%rbp), %r8
	movq	-1088(%rbp), %rcx
	movq	-1080(%rbp), %rdx
	leaq	.LC9(%rip), %rsi
	subq	$8, %rsp
	pushq	-1112(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
.L39:
	cmpl	$1, 16(%rbp)
	jle	.L40
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	-1040(%rbp), %rdx
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L40:
	movq	-1096(%rbp), %rax
	testq	%rax, %rax
	jne	.L41
	leaq	.LC7(%rip), %rcx
	leaq	.LC11(%rip), %rax
	movl	$145, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L41:
	movq	-1104(%rbp), %r8
	movq	-1112(%rbp), %rdi
	leaq	-1064(%rbp), %rcx
	leaq	-1096(%rbp), %rdx
	leaq	-1040(%rbp), %rsi
	movq	-1080(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_create_verifier@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L42
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L43
.L42:
	movq	-1064(%rbp), %rax
	movq	-1088(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L44
	movq	$0, -8(%rbp)
.L44:
	movq	-1064(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movl	$152, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L43:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L38:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	srp_verify_user, .-srp_verify_user
	.section	.rodata
	.align 8
.LC13:
	.string	"Creating\n user=\"%s\"\n g=\"%s\"\n N=\"%s\"\n"
	.align 8
.LC14:
	.string	"Internal error creating SRP verifier\n"
	.align 8
.LC15:
	.string	"gNid=%s salt =\"%s\"\n verifier =\"%s\"\n"
	.text
	.type	srp_create_user, @function
srp_create_user:
.LFB672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1120, %rsp
	movq	%rdi, -1080(%rbp)
	movq	%rsi, -1088(%rbp)
	movq	%rdx, -1096(%rbp)
	movq	%rcx, -1104(%rbp)
	movq	%r8, -1112(%rbp)
	movq	%r9, -1120(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -1064(%rbp)
	movq	-1080(%rbp), %rax
	movq	%rax, -1048(%rbp)
	movq	-1120(%rbp), %rax
	movq	%rax, -1056(%rbp)
	leaq	-1056(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	password_callback@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L47
	movl	-12(%rbp), %eax
	cltq
	movb	$0, -1040(%rbp,%rax)
	cmpl	$0, 16(%rbp)
	je	.L48
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-1112(%rbp), %rdi
	movq	-1104(%rbp), %rcx
	movq	-1080(%rbp), %rdx
	leaq	.LC13(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L48:
	movq	-1104(%rbp), %r8
	movq	-1112(%rbp), %rdi
	movq	-1088(%rbp), %rcx
	leaq	-1064(%rbp), %rdx
	leaq	-1040(%rbp), %rsi
	movq	-1080(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_create_verifier@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L49
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L50
.L49:
	movq	-1064(%rbp), %rdx
	movq	-1096(%rbp), %rax
	movq	%rdx, (%rax)
.L50:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-1040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	cmpl	$1, 16(%rbp)
	jle	.L47
	movq	-1088(%rbp), %rax
	movq	(%rax), %rdi
	movq	-1064(%rbp), %rcx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC15(%rip), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L47:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE672:
	.size	srp_create_user, .-srp_create_user
	.globl	srp_options
	.section	.rodata
	.align 8
.LC16:
	.string	"Usage: %s [options] [user...]\n"
.LC17:
	.string	"General options:\n"
.LC18:
	.string	"help"
.LC19:
	.string	"Display this summary"
.LC20:
	.string	"verbose"
.LC21:
	.string	"Talk a lot while doing things"
.LC22:
	.string	"config"
.LC23:
	.string	"A config file"
.LC24:
	.string	"name"
	.align 8
.LC25:
	.string	"The particular srp definition to use"
.LC26:
	.string	"engine"
	.align 8
.LC27:
	.string	"Use engine, possibly a hardware device"
.LC28:
	.string	"Action options:\n"
.LC29:
	.string	"add"
.LC30:
	.string	"Add a user and SRP verifier"
.LC31:
	.string	"modify"
	.align 8
.LC32:
	.string	"Modify the SRP verifier of an existing user"
.LC33:
	.string	"delete"
	.align 8
.LC34:
	.string	"Delete user from verifier file"
.LC35:
	.string	"list"
.LC36:
	.string	"List users"
.LC37:
	.string	"Configuration options:\n"
.LC38:
	.string	"srpvfile"
.LC39:
	.string	"The srp verifier file name"
.LC40:
	.string	"gn"
	.align 8
.LC41:
	.string	"Set g and N values to be used for new verifier"
.LC42:
	.string	"userinfo"
	.align 8
.LC43:
	.string	"Additional info to be set for user"
.LC44:
	.string	"passin"
.LC45:
	.string	"Input file pass phrase source"
.LC46:
	.string	"passout"
	.align 8
.LC47:
	.string	"Output file pass phrase source"
.LC48:
	.string	"Random state options:\n"
.LC49:
	.string	"rand"
	.align 8
.LC50:
	.string	"Load the given file(s) into the random number generator"
.LC51:
	.string	"writerand"
	.align 8
.LC52:
	.string	"Write random data to the specified file"
.LC53:
	.string	"Provider options:\n"
.LC54:
	.string	"provider-path"
	.align 8
.LC55:
	.string	"Provider load path (must be before 'provider' argument if required)"
.LC56:
	.string	"provider"
	.align 8
.LC57:
	.string	"Provider to load (can be specified multiple times)"
.LC58:
	.string	"propquery"
	.align 8
.LC59:
	.string	"Property query used when fetching algorithms"
.LC60:
	.string	"Parameters:\n"
.LC61:
	.string	"user"
	.align 8
.LC62:
	.string	"Username(s) to process (optional)"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	srp_options, @object
	.size	srp_options, 672
srp_options:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC16
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC17
	.quad	.LC18
	.long	1
	.long	45
	.quad	.LC19
	.quad	.LC20
	.long	2
	.long	45
	.quad	.LC21
	.quad	.LC22
	.long	3
	.long	60
	.quad	.LC23
	.quad	.LC24
	.long	4
	.long	115
	.quad	.LC25
	.quad	.LC26
	.long	14
	.long	115
	.quad	.LC27
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	6
	.long	45
	.quad	.LC30
	.quad	.LC31
	.long	8
	.long	45
	.quad	.LC32
	.quad	.LC33
	.long	7
	.long	45
	.quad	.LC34
	.quad	.LC35
	.long	9
	.long	45
	.quad	.LC36
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	5
	.long	60
	.quad	.LC39
	.quad	.LC40
	.long	10
	.long	115
	.quad	.LC41
	.quad	.LC42
	.long	11
	.long	115
	.quad	.LC43
	.quad	.LC44
	.long	12
	.long	115
	.quad	.LC45
	.quad	.LC46
	.long	13
	.long	115
	.quad	.LC47
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC48
	.quad	.LC49
	.long	1501
	.long	115
	.quad	.LC50
	.quad	.LC51
	.long	1502
	.long	62
	.quad	.LC52
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC53
	.quad	.LC54
	.long	1602
	.long	115
	.quad	.LC55
	.quad	.LC56
	.long	1601
	.long	115
	.quad	.LC57
	.quad	.LC58
	.long	1603
	.long	115
	.quad	.LC59
	.quad	OPT_PARAM_STR
	.long	1
	.long	45
	.quad	.LC60
	.quad	.LC61
	.long	0
	.long	0
	.quad	.LC62
	.quad	0
	.zero	16
	.section	.rodata
.LC63:
	.string	"%s: Use -help for summary.\n"
	.align 8
.LC64:
	.string	"%s: Only one of -add/-delete/-modify/-list\n"
	.align 8
.LC65:
	.string	"-srpvfile and -configfile cannot be specified together.\n"
	.align 8
.LC66:
	.string	"Exactly one of the options -add, -delete, -modify -list must be specified.\n"
.LC67:
	.string	"Need at least one user.\n"
	.align 8
.LC68:
	.string	"-passin, -passout arguments only valid with one user.\n"
.LC69:
	.string	"Error getting passwords\n"
	.align 8
.LC70:
	.string	"trying to read default_srp in srp\n"
.LC71:
	.string	"default_srp"
.LC72:
	.string	"srp"
	.align 8
.LC73:
	.string	"trying to read srpvfile in section \"%s\"\n"
	.align 8
.LC74:
	.string	"Trying to read SRP verifier file \"%s\"\n"
	.align 8
.LC75:
	.string	"Problem with index file: %s (could not load/parse file)\n"
.LC76:
	.string	"Database initialised\n"
.LC77:
	.string	"Default g and N"
	.align 8
.LC78:
	.string	"No g and N value for index \"%s\"\n"
	.align 8
.LC79:
	.string	"Database has no g N information.\n"
.LC80:
	.string	"Starting user processing\n"
.LC81:
	.string	"Processing user \"%s\"\n"
.LC82:
	.string	"List all users\n"
	.align 8
.LC83:
	.string	"user \"%s\" does not exist, ignored. t\n"
.LC84:
	.string	"user \"%s\" reactivated.\n"
	.align 8
.LC85:
	.string	"Cannot create srp verifier for user \"%s\", operation abandoned .\n"
.LC86:
	.string	"v"
	.align 8
.LC87:
	.string	"user \"%s\" does not exist, operation ignored.\n"
	.align 8
.LC88:
	.string	"user \"%s\" already updated, operation ignored.\n"
	.align 8
.LC89:
	.string	"Verifying password for user \"%s\"\n"
	.align 8
.LC90:
	.string	"Invalid password for user \"%s\", operation abandoned.\n"
.LC91:
	.string	"Password for user \"%s\" ok.\n"
	.align 8
.LC92:
	.string	"Cannot create srp verifier for user \"%s\", operation abandoned.\n"
	.align 8
.LC93:
	.string	"user \"%s\" does not exist, operation ignored. t\n"
.LC94:
	.string	"user \"%s\" revoked. t\n"
.LC95:
	.string	"User procession done.\n"
.LC96:
	.string	"Trying to update srpvfile.\n"
.LC97:
	.string	"new"
.LC98:
	.string	"Temporary srpvfile created.\n"
.LC99:
	.string	"old"
.LC100:
	.string	"srpvfile updated.\n"
.LC101:
	.string	"User errors %d.\n"
	.align 8
.LC102:
	.string	"SRP terminating with code %d.\n"
	.text
	.globl	srp_main
	.type	srp_main, @function
srp_main:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movl	%edi, -292(%rbp)
	movq	%rsi, -304(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$-1, -44(%rbp)
	movl	$-1, -48(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -68(%rbp)
	movl	$-1, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	srp_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-304(%rbp), %rcx
	movl	-292(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -160(%rbp)
	jmp	.L53
.L75:
	cmpl	$1604, -164(%rbp)
	je	.L53
	cmpl	$1604, -164(%rbp)
	jg	.L53
	cmpl	$1603, -164(%rbp)
	jg	.L53
	cmpl	$1601, -164(%rbp)
	jge	.L55
	cmpl	$1600, -164(%rbp)
	je	.L53
	cmpl	$1600, -164(%rbp)
	jg	.L53
	cmpl	$1503, -164(%rbp)
	je	.L53
	cmpl	$1503, -164(%rbp)
	jg	.L53
	cmpl	$1502, -164(%rbp)
	jg	.L53
	cmpl	$1501, -164(%rbp)
	jge	.L57
	cmpl	$1500, -164(%rbp)
	je	.L53
	cmpl	$1500, -164(%rbp)
	jg	.L53
	cmpl	$14, -164(%rbp)
	je	.L58
	cmpl	$14, -164(%rbp)
	jg	.L53
	cmpl	$13, -164(%rbp)
	je	.L59
	cmpl	$13, -164(%rbp)
	jg	.L53
	cmpl	$12, -164(%rbp)
	je	.L60
	cmpl	$12, -164(%rbp)
	jg	.L53
	cmpl	$11, -164(%rbp)
	je	.L61
	cmpl	$11, -164(%rbp)
	jg	.L53
	cmpl	$10, -164(%rbp)
	je	.L62
	cmpl	$10, -164(%rbp)
	jg	.L53
	cmpl	$9, -164(%rbp)
	jg	.L53
	cmpl	$6, -164(%rbp)
	jge	.L63
	cmpl	$5, -164(%rbp)
	je	.L64
	cmpl	$5, -164(%rbp)
	jg	.L53
	cmpl	$4, -164(%rbp)
	je	.L65
	cmpl	$4, -164(%rbp)
	jg	.L53
	cmpl	$3, -164(%rbp)
	je	.L66
	cmpl	$3, -164(%rbp)
	jg	.L53
	cmpl	$2, -164(%rbp)
	je	.L67
	cmpl	$2, -164(%rbp)
	jg	.L53
	cmpl	$0, -164(%rbp)
	jg	.L68
	cmpl	$-1, -164(%rbp)
	jge	.L69
	jmp	.L53
.L68:
	cmpl	$1, -164(%rbp)
	je	.L70
	jmp	.L53
.L69:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-160(%rbp), %rdx
	leaq	.LC63(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L71
.L70:
	movq	srp_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -52(%rbp)
	jmp	.L71
.L67:
	addl	$1, -60(%rbp)
	jmp	.L53
.L66:
	call	opt_arg@PLT
	movq	%rax, -136(%rbp)
	jmp	.L53
.L65:
	call	opt_arg@PLT
	movq	%rax, -120(%rbp)
	jmp	.L53
.L64:
	call	opt_arg@PLT
	movq	%rax, -144(%rbp)
	jmp	.L53
.L63:
	cmpl	$-1, -72(%rbp)
	je	.L72
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-160(%rbp), %rdx
	leaq	.LC64(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L69
.L72:
	movl	-164(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.L53
.L62:
	call	opt_arg@PLT
	movq	%rax, -104(%rbp)
	jmp	.L53
.L61:
	call	opt_arg@PLT
	movq	%rax, -112(%rbp)
	jmp	.L53
.L60:
	call	opt_arg@PLT
	movq	%rax, -88(%rbp)
	jmp	.L53
.L59:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	jmp	.L53
.L58:
	call	opt_arg@PLT
	movl	$0, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	setup_engine_methods@PLT
	movq	%rax, -24(%rbp)
	jmp	.L53
.L57:
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	opt_rand@PLT
	testl	%eax, %eax
	je	.L160
	jmp	.L53
.L55:
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	opt_provider@PLT
	testl	%eax, %eax
	je	.L161
	nop
.L53:
	call	opt_next@PLT
	movl	%eax, -164(%rbp)
	cmpl	$0, -164(%rbp)
	jne	.L75
	call	opt_num_rest@PLT
	movl	%eax, -292(%rbp)
	call	opt_rest@PLT
	movq	%rax, -304(%rbp)
	call	app_RAND_load@PLT
	testl	%eax, %eax
	je	.L162
	cmpq	$0, -144(%rbp)
	je	.L77
	cmpq	$0, -136(%rbp)
	je	.L77
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC65(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L71
.L77:
	cmpl	$-1, -72(%rbp)
	jne	.L78
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC66(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L69
.L78:
	cmpl	$7, -72(%rbp)
	je	.L79
	cmpl	$8, -72(%rbp)
	je	.L79
	cmpl	$6, -72(%rbp)
	jne	.L80
.L79:
	cmpl	$0, -292(%rbp)
	jne	.L81
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC67(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L69
.L81:
	movq	-304(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -304(%rbp)
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
.L80:
	cmpq	$0, -88(%rbp)
	jne	.L82
	cmpq	$0, -96(%rbp)
	je	.L83
.L82:
	cmpl	$1, -292(%rbp)
	je	.L83
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC68(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L69
.L83:
	leaq	-240(%rbp), %rcx
	leaq	-232(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	app_passwd@PLT
	testl	%eax, %eax
	jne	.L84
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC69(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L71
.L84:
	cmpq	$0, -144(%rbp)
	jne	.L85
	cmpq	$0, -136(%rbp)
	jne	.L86
	movq	default_config_file@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
.L86:
	movl	-60(%rbp), %edx
	movq	-136(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	app_load_config_verbose@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L163
	movq	default_config_file@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	%rax, -136(%rbp)
	je	.L88
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	app_load_modules@PLT
	testl	%eax, %eax
	je	.L164
.L88:
	cmpq	$0, -120(%rbp)
	jne	.L89
	cmpl	$0, -60(%rbp)
	je	.L90
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC70(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L90:
	leaq	.LC71(%rip), %rdx
	leaq	.LC72(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_conf
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L165
.L89:
	leaq	.LC72(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_RAND_load_conf@PLT
	cmpl	$0, -60(%rbp)
	je	.L91
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rdx
	leaq	.LC73(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L91:
	leaq	.LC38(%rip), %rdx
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_conf
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L166
.L85:
	cmpl	$0, -60(%rbp)
	je	.L92
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC74(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L92:
	movq	-144(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	load_index@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L93
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-144(%rbp), %rdx
	leaq	.LC75(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L71
.L93:
	movl	$0, -64(%rbp)
	jmp	.L94
.L97:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$73, %al
	jne	.L95
	movl	-64(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L96
	cmpq	$0, -104(%rbp)
	je	.L96
	movq	-224(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L96
	movl	-64(%rbp), %eax
	movl	%eax, -44(%rbp)
.L96:
	cmpl	$1, -60(%rbp)
	setg	%al
	movzbl	%al, %edx
	movl	-64(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_index
.L95:
	addl	$1, -64(%rbp)
.L94:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	cmpl	%eax, -64(%rbp)
	jl	.L97
	cmpl	$0, -60(%rbp)
	je	.L98
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC76(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L98:
	cmpl	$0, -44(%rbp)
	js	.L99
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -128(%rbp)
	cmpl	$1, -60(%rbp)
	setg	%al
	movzbl	%al, %edx
	leaq	.LC77(%rip), %rcx
	movl	-44(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print_entry
	jmp	.L100
.L99:
	cmpl	$0, -48(%rbp)
	jle	.L101
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	SRP_get_default_gN@PLT
	testq	%rax, %rax
	jne	.L101
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	leaq	.LC78(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L71
.L101:
	cmpl	$0, -60(%rbp)
	je	.L102
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC79(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L102:
	movq	$0, -128(%rbp)
.L100:
	cmpl	$1, -60(%rbp)
	jle	.L104
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC80(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L104
.L146:
	movl	$-1, -168(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L105
	cmpl	$1, -60(%rbp)
	jle	.L105
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC81(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L105:
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$85, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_index
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	js	.L106
	cmpl	$0, -60(%rbp)
	jg	.L107
	cmpl	$9, -72(%rbp)
	jne	.L108
.L107:
	movl	$1, %edx
	jmp	.L109
.L108:
	movl	$0, %edx
.L109:
	movl	-168(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_user
.L106:
	cmpl	$9, -72(%rbp)
	jne	.L110
	cmpq	$0, -80(%rbp)
	jne	.L111
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC82(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -64(%rbp)
	jmp	.L112
.L113:
	movl	-64(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_user
	addl	$1, -64(%rbp)
.L112:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	cmpl	%eax, -64(%rbp)
	jl	.L113
	jmp	.L114
.L111:
	cmpl	$0, -168(%rbp)
	jns	.L114
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC83(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -56(%rbp)
	jmp	.L114
.L110:
	cmpl	$6, -72(%rbp)
	jne	.L115
	cmpl	$0, -168(%rbp)
	js	.L116
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-168(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -216(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC84(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movb	$86, (%rax)
	movl	$1, -68(%rbp)
	jmp	.L114
.L116:
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -248(%rbp)
	movq	-240(%rbp), %r9
	cmpq	$0, -128(%rbp)
	je	.L117
	movq	-128(%rbp), %rax
	movq	8(%rax), %r8
	jmp	.L118
.L117:
	movl	$0, %r8d
.L118:
	cmpq	$0, -128(%rbp)
	je	.L119
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L120
.L119:
	movq	-104(%rbp), %rax
.L120:
	leaq	-288(%rbp), %rdx
	addq	$16, %rdx
	leaq	-288(%rbp), %rcx
	leaq	8(%rcx), %rsi
	movq	-80(%rbp), %rdi
	subq	$8, %rsp
	movl	-60(%rbp), %ecx
	pushq	%rcx
	movq	%rax, %rcx
	call	srp_create_user
	addq	$16, %rsp
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.L121
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC85(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -56(%rbp)
	jmp	.L71
.L121:
	leaq	.LC7(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$465, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -264(%rbp)
	leaq	.LC7(%rip), %rcx
	leaq	.LC86(%rip), %rax
	movl	$466, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -288(%rbp)
	leaq	.LC7(%rip), %rcx
	movq	-208(%rbp), %rax
	movl	$467, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -256(%rbp)
	movq	-264(%rbp), %rax
	testq	%rax, %rax
	je	.L123
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	je	.L123
	movq	-288(%rbp), %rax
	testq	%rax, %rax
	je	.L123
	movq	-280(%rbp), %rax
	testq	%rax, %rax
	je	.L123
	movq	-272(%rbp), %rax
	testq	%rax, %rax
	je	.L123
	cmpq	$0, -112(%rbp)
	je	.L124
	leaq	.LC7(%rip), %rcx
	movq	-112(%rbp), %rax
	movl	$475, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	testq	%rax, %rax
	je	.L123
.L124:
	leaq	-288(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	update_index
	testl	%eax, %eax
	jne	.L125
.L123:
	movq	-264(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movl	$477, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-256(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movl	$478, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-248(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movl	$479, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-288(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movl	$480, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-280(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movl	$481, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-272(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movl	$482, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L71
.L125:
	movl	$1, -68(%rbp)
	jmp	.L114
.L115:
	cmpl	$8, -72(%rbp)
	jne	.L126
	cmpl	$0, -168(%rbp)
	jns	.L127
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC87(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -56(%rbp)
	jmp	.L114
.L127:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-168(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movb	%al, -185(%rbp)
	cmpb	$118, -185(%rbp)
	jne	.L128
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC88(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -56(%rbp)
	jmp	.L114
.L128:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$86, %al
	jne	.L129
	movq	$0, -152(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L130
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC89(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L130:
	movq	-184(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_index
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	js	.L131
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-168(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -152(%rbp)
.L131:
	movq	-232(%rbp), %r9
	cmpq	$0, -152(%rbp)
	je	.L132
	movq	-152(%rbp), %rax
	movq	8(%rax), %r8
	jmp	.L133
.L132:
	movl	$0, %r8d
.L133:
	cmpq	$0, -152(%rbp)
	je	.L134
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L135
.L134:
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
.L135:
	movq	-184(%rbp), %rdx
	addq	$16, %rdx
	movq	(%rdx), %rdx
	movq	-184(%rbp), %rcx
	addq	$8, %rcx
	movq	(%rcx), %rsi
	movq	-80(%rbp), %rdi
	subq	$8, %rsp
	movl	-60(%rbp), %ecx
	pushq	%rcx
	movq	%rax, %rcx
	call	srp_verify_user
	addq	$16, %rsp
	testq	%rax, %rax
	jne	.L129
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC90(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -56(%rbp)
	jmp	.L71
.L129:
	cmpl	$0, -60(%rbp)
	je	.L136
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC91(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L136:
	movq	-240(%rbp), %r9
	cmpq	$0, -128(%rbp)
	je	.L137
	movq	-128(%rbp), %rax
	movq	8(%rax), %r8
	jmp	.L138
.L137:
	movl	$0, %r8d
.L138:
	cmpq	$0, -128(%rbp)
	je	.L139
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L140
.L139:
	movl	$0, %eax
.L140:
	movq	-184(%rbp), %rdx
	addq	$16, %rdx
	movq	-184(%rbp), %rcx
	leaq	8(%rcx), %rsi
	movq	-80(%rbp), %rdi
	subq	$8, %rsp
	movl	-60(%rbp), %ecx
	pushq	%rcx
	movq	%rax, %rcx
	call	srp_create_user
	addq	$16, %rsp
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.L141
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC92(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -56(%rbp)
	jmp	.L71
.L141:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movb	$118, (%rax)
	movq	-184(%rbp), %rax
	leaq	32(%rax), %rbx
	leaq	.LC7(%rip), %rcx
	movq	-200(%rbp), %rax
	movl	$550, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, (%rbx)
	movq	-184(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L167
	movq	-184(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L167
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L167
	movq	-184(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L167
	movq	-184(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L167
	cmpq	$0, -112(%rbp)
	je	.L143
	movq	-184(%rbp), %rax
	leaq	40(%rax), %rbx
	leaq	.LC7(%rip), %rcx
	movq	-112(%rbp), %rax
	movl	$558, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, (%rbx)
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.L167
.L143:
	movl	$1, -68(%rbp)
	jmp	.L114
.L126:
	cmpl	$7, -72(%rbp)
	jne	.L114
	cmpl	$0, -168(%rbp)
	jns	.L144
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC93(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -56(%rbp)
	jmp	.L114
.L144:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-168(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -176(%rbp)
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	.LC94(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movb	$82, (%rax)
	movl	$1, -68(%rbp)
.L114:
	movq	-304(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -304(%rbp)
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L168
.L104:
	cmpl	$9, -72(%rbp)
	je	.L146
	cmpq	$0, -80(%rbp)
	jne	.L146
	jmp	.L145
.L168:
	nop
.L145:
	cmpl	$0, -60(%rbp)
	je	.L147
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC95(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L147:
	cmpl	$0, -68(%rbp)
	je	.L148
	movl	$0, -64(%rbp)
	jmp	.L149
.L151:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	-64(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_value
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$118, %al
	jne	.L150
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movb	$86, (%rax)
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	print_user
.L150:
	addl	$1, -64(%rbp)
.L149:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_OPENSSL_PSTRING_num
	cmpl	%eax, -64(%rbp)
	jl	.L151
	cmpl	$0, -60(%rbp)
	je	.L152
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC96(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L152:
	movq	-32(%rbp), %rdx
	leaq	.LC97(%rip), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	save_index@PLT
	testl	%eax, %eax
	je	.L169
	cmpl	$0, -60(%rbp)
	je	.L154
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC98(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L154:
	leaq	.LC99(%rip), %rdx
	leaq	.LC97(%rip), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rotate_index@PLT
	testl	%eax, %eax
	je	.L170
	cmpl	$0, -60(%rbp)
	je	.L148
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC100(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L148:
	cmpl	$0, -56(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	jmp	.L71
.L160:
	nop
	jmp	.L71
.L161:
	nop
	jmp	.L71
.L162:
	nop
	jmp	.L71
.L163:
	nop
	jmp	.L71
.L164:
	nop
	jmp	.L71
.L165:
	nop
	jmp	.L71
.L166:
	nop
	jmp	.L71
.L167:
	nop
	jmp	.L71
.L169:
	nop
	jmp	.L71
.L170:
	nop
.L71:
	cmpl	$0, -56(%rbp)
	je	.L156
	cmpl	$0, -60(%rbp)
	je	.L156
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-56(%rbp), %edx
	leaq	.LC101(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L156:
	cmpl	$0, -60(%rbp)
	je	.L157
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	leaq	.LC102(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L157:
	movq	-232(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movl	$623, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-240(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movl	$624, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -52(%rbp)
	je	.L158
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
.L158:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free_index@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	release_engine@PLT
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	srp_main, .-srp_main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
