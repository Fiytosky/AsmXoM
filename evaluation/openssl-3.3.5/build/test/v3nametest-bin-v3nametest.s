	.file	"v3nametest.c"
	.text
	.type	ossl_check_GENERAL_NAME_type, @function
ossl_check_GENERAL_NAME_type:
.LFB461:
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
.LFE461:
	.size	ossl_check_GENERAL_NAME_type, .-ossl_check_GENERAL_NAME_type
	.type	ossl_check_GENERAL_NAME_sk_type, @function
ossl_check_GENERAL_NAME_sk_type:
.LFB463:
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
.LFE463:
	.size	ossl_check_GENERAL_NAME_sk_type, .-ossl_check_GENERAL_NAME_sk_type
	.section	.rodata
.LC0:
	.string	"a"
.LC1:
	.string	"b"
.LC2:
	.string	"."
.LC3:
	.string	"*"
.LC4:
	.string	"@"
.LC5:
	.string	".a"
.LC6:
	.string	"a."
.LC7:
	.string	".b"
.LC8:
	.string	"b."
.LC9:
	.string	".*"
.LC10:
	.string	"*."
.LC11:
	.string	"*@"
.LC12:
	.string	"@*"
.LC13:
	.string	"a@"
.LC14:
	.string	"@a"
.LC15:
	.string	"b@"
.LC16:
	.string	".."
.LC17:
	.string	"-example.com"
.LC18:
	.string	"example-.com"
.LC19:
	.string	"@@"
.LC20:
	.string	"**"
.LC21:
	.string	"*.com"
.LC22:
	.string	"*com"
.LC23:
	.string	"*.*.com"
.LC24:
	.string	"com*"
.LC25:
	.string	"*example.com"
.LC26:
	.string	"*@example.com"
.LC27:
	.string	"test@*.example.com"
.LC28:
	.string	"example.com"
.LC29:
	.string	"www.example.com"
.LC30:
	.string	"test.www.example.com"
.LC31:
	.string	"*.example.com"
.LC32:
	.string	"*.www.example.com"
.LC33:
	.string	"test.*.example.com"
.LC34:
	.string	"www.*.com"
.LC35:
	.string	".www.example.com"
.LC36:
	.string	"*www.example.com"
.LC37:
	.string	"example.net"
.LC38:
	.string	"xn--rger-koa.example.com"
.LC39:
	.string	"*.xn--rger-koa.example.com"
.LC40:
	.string	"www.xn--rger-koa.example.com"
.LC41:
	.string	"*.good--example.com"
.LC42:
	.string	"www.good--example.com"
.LC43:
	.string	"*.xn--bar.com"
.LC44:
	.string	"xn--foo.xn--bar.com"
.LC45:
	.string	"a.example.com"
.LC46:
	.string	"b.example.com"
.LC47:
	.string	"postmaster@example.com"
.LC48:
	.string	"Postmaster@example.com"
.LC49:
	.string	"postmaster@EXAMPLE.COM"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	names, @object
	.size	names, 416
names:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC22
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	0
	.section	.rodata
	.align 8
.LC50:
	.string	"set CN: host: [*.example.com] matches [a.example.com]"
	.align 8
.LC51:
	.string	"set CN: host: [*.example.com] matches [b.example.com]"
	.align 8
.LC52:
	.string	"set CN: host: [*.example.com] matches [www.example.com]"
	.align 8
.LC53:
	.string	"set CN: host: [*.example.com] matches [xn--rger-koa.example.com]"
	.align 8
.LC54:
	.string	"set CN: host: [*.www.example.com] matches [test.www.example.com]"
	.align 8
.LC55:
	.string	"set CN: host: [*.www.example.com] matches [.www.example.com]"
	.align 8
.LC56:
	.string	"set CN: host: [*www.example.com] matches [www.example.com]"
	.align 8
.LC57:
	.string	"set CN: host: [test.www.example.com] matches [.www.example.com]"
	.align 8
.LC58:
	.string	"set CN: host: [*.xn--rger-koa.example.com] matches [www.xn--rger-koa.example.com]"
	.align 8
.LC59:
	.string	"set CN: host: [*.xn--bar.com] matches [xn--foo.xn--bar.com]"
	.align 8
.LC60:
	.string	"set CN: host: [*.good--example.com] matches [www.good--example.com]"
	.align 8
.LC61:
	.string	"set CN: host-no-wildcards: [*.www.example.com] matches [.www.example.com]"
	.align 8
.LC62:
	.string	"set CN: host-no-wildcards: [test.www.example.com] matches [.www.example.com]"
	.align 8
.LC63:
	.string	"set emailAddress: email: [postmaster@example.com] does not match [Postmaster@example.com]"
	.align 8
.LC64:
	.string	"set emailAddress: email: [postmaster@EXAMPLE.COM] does not match [Postmaster@example.com]"
	.align 8
.LC65:
	.string	"set emailAddress: email: [Postmaster@example.com] does not match [postmaster@example.com]"
	.align 8
.LC66:
	.string	"set emailAddress: email: [Postmaster@example.com] does not match [postmaster@EXAMPLE.COM]"
	.align 8
.LC67:
	.string	"set dnsName: host: [*.example.com] matches [www.example.com]"
	.align 8
.LC68:
	.string	"set dnsName: host: [*.example.com] matches [a.example.com]"
	.align 8
.LC69:
	.string	"set dnsName: host: [*.example.com] matches [b.example.com]"
	.align 8
.LC70:
	.string	"set dnsName: host: [*.example.com] matches [xn--rger-koa.example.com]"
	.align 8
.LC71:
	.string	"set dnsName: host: [*.www.example.com] matches [test.www.example.com]"
	.align 8
.LC72:
	.string	"set dnsName: host-no-wildcards: [*.www.example.com] matches [.www.example.com]"
	.align 8
.LC73:
	.string	"set dnsName: host-no-wildcards: [test.www.example.com] matches [.www.example.com]"
	.align 8
.LC74:
	.string	"set dnsName: host: [*.www.example.com] matches [.www.example.com]"
	.align 8
.LC75:
	.string	"set dnsName: host: [*www.example.com] matches [www.example.com]"
	.align 8
.LC76:
	.string	"set dnsName: host: [test.www.example.com] matches [.www.example.com]"
	.align 8
.LC77:
	.string	"set dnsName: host: [*.xn--rger-koa.example.com] matches [www.xn--rger-koa.example.com]"
	.align 8
.LC78:
	.string	"set dnsName: host: [*.xn--bar.com] matches [xn--foo.xn--bar.com]"
	.align 8
.LC79:
	.string	"set dnsName: host: [*.good--example.com] matches [www.good--example.com]"
	.align 8
.LC80:
	.string	"set rfc822Name: email: [postmaster@example.com] does not match [Postmaster@example.com]"
	.align 8
.LC81:
	.string	"set rfc822Name: email: [Postmaster@example.com] does not match [postmaster@example.com]"
	.align 8
.LC82:
	.string	"set rfc822Name: email: [Postmaster@example.com] does not match [postmaster@EXAMPLE.COM]"
	.align 8
.LC83:
	.string	"set rfc822Name: email: [postmaster@EXAMPLE.COM] does not match [Postmaster@example.com]"
	.section	.data.rel.ro.local
	.align 32
	.type	exceptions, @object
	.size	exceptions, 280
exceptions:
	.quad	.LC50
	.quad	.LC51
	.quad	.LC52
	.quad	.LC53
	.quad	.LC54
	.quad	.LC55
	.quad	.LC56
	.quad	.LC57
	.quad	.LC58
	.quad	.LC59
	.quad	.LC60
	.quad	.LC61
	.quad	.LC62
	.quad	.LC63
	.quad	.LC64
	.quad	.LC65
	.quad	.LC66
	.quad	.LC67
	.quad	.LC68
	.quad	.LC69
	.quad	.LC70
	.quad	.LC71
	.quad	.LC72
	.quad	.LC73
	.quad	.LC74
	.quad	.LC75
	.quad	.LC76
	.quad	.LC77
	.quad	.LC78
	.quad	.LC79
	.quad	.LC80
	.quad	.LC81
	.quad	.LC82
	.quad	.LC83
	.quad	0
	.text
	.type	is_exception, @function
is_exception:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	exceptions(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L6
.L9:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$1, %eax
	jmp	.L8
.L7:
	addq	$8, -8(%rbp)
.L6:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L9
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	is_exception, .-is_exception
	.type	set_cn, @function
set_cn:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L23
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L23:
	movl	$0, -180(%rbp)
	movq	$0, -192(%rbp)
	movl	$8, -232(%rbp)
	movl	$48, -228(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -224(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -216(%rbp)
	call	X509_NAME_new@PLT
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	je	.L25
.L12:
	movl	-232(%rbp), %eax
	cmpl	$47, %eax
	ja	.L14
	movq	-216(%rbp), %rax
	movl	-232(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-232(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -232(%rbp)
	jmp	.L15
.L14:
	movq	-224(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -224(%rbp)
.L15:
	movl	(%rax), %eax
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	je	.L26
	movl	-232(%rbp), %eax
	cmpl	$47, %eax
	ja	.L18
	movq	-216(%rbp), %rax
	movl	-232(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-232(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -232(%rbp)
	jmp	.L19
.L18:
	movq	-224(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -224(%rbp)
.L19:
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdx
	movl	-196(%rbp), %esi
	movq	-192(%rbp), %rax
	subq	$8, %rsp
	pushq	$1
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$4097, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_NID@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L27
	jmp	.L12
.L26:
	nop
	movq	-192(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_set_subject_name@PLT
	testl	%eax, %eax
	je	.L28
	movl	$1, -180(%rbp)
	jmp	.L13
.L25:
	nop
	jmp	.L13
.L27:
	nop
	jmp	.L13
.L28:
	nop
.L13:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movl	-180(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	set_cn, .-set_cn
	.type	set_altname, @function
set_altname:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -280(%rbp)
	movq	%rsi, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -168(%rbp)
	movq	%r8, -160(%rbp)
	movq	%r9, -152(%rbp)
	testb	%al, %al
	je	.L46
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm1, -128(%rbp)
	movaps	%xmm2, -112(%rbp)
	movaps	%xmm3, -96(%rbp)
	movaps	%xmm4, -80(%rbp)
	movaps	%xmm5, -64(%rbp)
	movaps	%xmm6, -48(%rbp)
	movaps	%xmm7, -32(%rbp)
.L46:
	movl	$0, -196(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -216(%rbp)
	movl	$8, -264(%rbp)
	movl	$48, -260(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -248(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	je	.L49
.L31:
	movl	-264(%rbp), %eax
	cmpl	$47, %eax
	ja	.L33
	movq	-248(%rbp), %rax
	movl	-264(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	.L34
.L33:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
.L34:
	movl	(%rax), %eax
	movl	%eax, -228(%rbp)
	cmpl	$0, -228(%rbp)
	je	.L50
	movl	-264(%rbp), %eax
	cmpl	$47, %eax
	ja	.L37
	movq	-248(%rbp), %rax
	movl	-264(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -264(%rbp)
	jmp	.L38
.L37:
	movq	-256(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -256(%rbp)
.L38:
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	call	GENERAL_NAME_new@PLT
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.L51
	call	ASN1_IA5STRING_new@PLT
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.L52
	movq	-240(%rbp), %rcx
	movq	-216(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	je	.L53
	movl	-228(%rbp), %eax
	subl	$1, %eax
	cmpl	$1, %eax
	ja	.L42
	movq	-216(%rbp), %rdx
	movl	-228(%rbp), %ecx
	movq	-208(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	GENERAL_NAME_set0_value@PLT
	movq	$0, -216(%rbp)
	jmp	.L48
.L42:
	call	abort@PLT
.L48:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_type
	movq	%rax, %rbx
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_GENERAL_NAME_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movq	$0, -208(%rbp)
	jmp	.L31
.L50:
	nop
	movq	-224(%rbp), %rdx
	movq	-280(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$85, %esi
	movq	%rax, %rdi
	call	X509_add1_ext_i2d@PLT
	testl	%eax, %eax
	je	.L54
	movl	$1, -196(%rbp)
	jmp	.L32
.L49:
	nop
	jmp	.L32
.L51:
	nop
	jmp	.L32
.L52:
	nop
	jmp	.L32
.L53:
	nop
	jmp	.L32
.L54:
	nop
.L32:
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_IA5STRING_free@PLT
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	GENERAL_NAMES_free@PLT
	movl	-196(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	set_altname, .-set_altname
	.type	set_cn1, @function
set_cn1:
.LFB579:
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
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	set_cn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	set_cn1, .-set_cn1
	.section	.rodata
.LC84:
	.string	"dummy@example.com"
	.text
	.type	set_cn_and_email, @function
set_cn_and_email:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC84(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$48, %ecx
	movl	$13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	set_cn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	set_cn_and_email, .-set_cn_and_email
	.section	.rodata
.LC85:
	.string	"dummy value"
	.text
	.type	set_cn2, @function
set_cn2:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	leaq	.LC85(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$13, %ecx
	movl	$13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	set_cn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	set_cn2, .-set_cn2
	.type	set_cn3, @function
set_cn3:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC85(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$13, %ecx
	movl	$13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	set_cn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	set_cn3, .-set_cn3
	.type	set_email1, @function
set_email1:
.LFB583:
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
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$48, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	set_cn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	set_email1, .-set_email1
	.type	set_email2, @function
set_email2:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	leaq	.LC84(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$48, %ecx
	movl	$48, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	set_cn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	set_email2, .-set_email2
	.type	set_email3, @function
set_email3:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC84(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$48, %ecx
	movl	$48, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	set_cn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	set_email3, .-set_email3
	.section	.rodata
.LC86:
	.string	"www.example.org"
	.text
	.type	set_email_and_cn, @function
set_email_and_cn:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC86(%rip), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$13, %ecx
	movl	$48, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	set_cn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	set_email_and_cn, .-set_email_and_cn
	.type	set_altname_dns, @function
set_altname_dns:
.LFB587:
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
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	set_altname
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	set_altname_dns, .-set_altname_dns
	.type	set_altname_email, @function
set_altname_email:
.LFB588:
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
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	set_altname
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	set_altname_email, .-set_altname_email
	.section	.rodata
.LC87:
	.string	"set CN"
.LC88:
	.string	"set emailAddress"
.LC89:
	.string	"set dnsName"
.LC90:
	.string	"set rfc822Name"
	.section	.data.rel.ro.local
	.align 32
	.type	name_fns, @object
	.size	name_fns, 240
name_fns:
	.quad	set_cn1
	.quad	.LC87
	.long	1
	.long	0
	.quad	set_cn2
	.quad	.LC87
	.long	1
	.long	0
	.quad	set_cn3
	.quad	.LC87
	.long	1
	.long	0
	.quad	set_cn_and_email
	.quad	.LC87
	.long	1
	.long	0
	.quad	set_email1
	.quad	.LC88
	.long	0
	.long	1
	.quad	set_email2
	.quad	.LC88
	.long	0
	.long	1
	.quad	set_email3
	.quad	.LC88
	.long	0
	.long	1
	.quad	set_email_and_cn
	.quad	.LC88
	.long	0
	.long	1
	.quad	set_altname_dns
	.quad	.LC89
	.long	1
	.long	0
	.quad	set_altname_email
	.quad	.LC90
	.long	0
	.long	1
	.section	.rodata
.LC91:
	.string	"crt = X509_new()"
.LC92:
	.string	"../test/v3nametest.c"
	.align 8
.LC93:
	.string	"X509_set_version(crt, X509_VERSION_3)"
	.text
	.type	make_cert, @function
make_cert:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	call	X509_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movq	%rax, %rcx
	movl	$254, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L76
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	X509_set_version@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L78
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movl	$0, %eax
	jmp	.L77
.L78:
	movq	-8(%rbp), %rax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	make_cert, .-make_cert
	.section	.rodata
.LC94:
	.string	"matches"
.LC95:
	.string	"does not match"
.LC96:
	.string	"%s: %s: [%s] %s [%s]"
.LC97:
	.string	"%s"
	.text
	.type	check_message, @function
check_message:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1072, %rsp
	movq	%rdi, -1032(%rbp)
	movq	%rsi, -1040(%rbp)
	movq	%rdx, -1048(%rbp)
	movl	%ecx, -1052(%rbp)
	movq	%r8, -1064(%rbp)
	cmpl	$0, -1052(%rbp)
	jns	.L80
	movl	$1, %eax
	jmp	.L85
.L80:
	cmpl	$0, -1052(%rbp)
	je	.L82
	leaq	.LC94(%rip), %rax
	jmp	.L83
.L82:
	leaq	.LC95(%rip), %rax
.L83:
	movq	-1032(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-1048(%rbp), %r8
	movq	-1040(%rbp), %rcx
	leaq	.LC96(%rip), %rsi
	leaq	-1024(%rbp), %rdi
	pushq	-1064(%rbp)
	pushq	%rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1024, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	is_exception
	testl	%eax, %eax
	je	.L84
	movl	$1, %eax
	jmp	.L85
.L84:
	leaq	-1024(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movq	%rax, %rcx
	movl	$275, %esi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	check_message, .-check_message
	.section	.rodata
.LC98:
	.string	"name"
.LC99:
	.string	"0"
	.align 8
.LC100:
	.string	"ret = X509_check_host(crt, name, namelen, 0, NULL)"
.LC101:
	.string	"host"
	.align 8
.LC102:
	.string	"check_message(fn, \"host\", nameincert, match, *pname)"
	.align 8
.LC103:
	.string	"ret = X509_check_host(crt, name, namelen, X509_CHECK_FLAG_NO_WILDCARDS, NULL)"
.LC104:
	.string	"host-no-wildcards"
	.align 8
.LC105:
	.string	"check_message(fn, \"host-no-wildcards\", nameincert, match, *pname)"
.LC106:
	.string	"email"
	.align 8
.LC107:
	.string	"check_message(fn, \"email\", nameincert, match, *pname)"
	.text
	.type	run_cert, @function
run_cert:
.LFB591:
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
	leaq	names(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L87
.L104:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	leaq	.LC92(%rip), %rcx
	movl	$288, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC98(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movq	%rax, %rcx
	movl	$291, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L88
	movl	$0, %eax
	jmp	.L89
.L88:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$-1, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_check_host@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC99(%rip), %rcx
	leaq	.LC100(%rip), %rdx
	leaq	.LC92(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$296, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L90
	movl	$1, -12(%rbp)
	jmp	.L91
.L90:
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L92
	cmpl	$1, -44(%rbp)
	jne	.L93
	cmpl	$0, -20(%rbp)
	jne	.L93
	movl	$1, -16(%rbp)
.L93:
	cmpl	$0, -44(%rbp)
	jne	.L91
	cmpl	$0, -20(%rbp)
	je	.L91
	movl	$0, -16(%rbp)
	jmp	.L91
.L92:
	cmpl	$1, -44(%rbp)
	jne	.L91
	movl	$1, -16(%rbp)
.L91:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-16(%rbp), %ecx
	movq	-64(%rbp), %rdx
	leaq	.LC101(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	check_message
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movl	%eax, %ecx
	movl	$306, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L94
	movl	$1, -12(%rbp)
.L94:
	movl	$-1, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r8d
	movl	$2, %ecx
	movq	%rax, %rdi
	call	X509_check_host@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC99(%rip), %rcx
	leaq	.LC103(%rip), %rdx
	leaq	.LC92(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$310, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L95
	movl	$1, -12(%rbp)
	jmp	.L96
.L95:
	movq	-72(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L97
	cmpl	$1, -44(%rbp)
	jne	.L98
	cmpl	$0, -20(%rbp)
	jne	.L98
	movl	$1, -16(%rbp)
.L98:
	cmpl	$0, -44(%rbp)
	jne	.L96
	cmpl	$0, -20(%rbp)
	je	.L96
	movl	$0, -16(%rbp)
	jmp	.L96
.L97:
	cmpl	$1, -44(%rbp)
	jne	.L96
	movl	$1, -16(%rbp)
.L96:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-16(%rbp), %ecx
	movq	-64(%rbp), %rdx
	leaq	.LC104(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	check_message
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC105(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movl	%eax, %ecx
	movl	$321, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L99
	movl	$1, -12(%rbp)
.L99:
	movl	$-1, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	X509_check_email@PLT
	movl	%eax, -44(%rbp)
	movq	-72(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L100
	cmpl	$0, -44(%rbp)
	je	.L101
	cmpl	$0, -20(%rbp)
	jne	.L101
	movl	$1, -16(%rbp)
.L101:
	cmpl	$0, -44(%rbp)
	jne	.L102
	cmpl	$0, -20(%rbp)
	je	.L102
	movq	-64(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	testq	%rax, %rax
	je	.L102
	movl	$0, -16(%rbp)
	jmp	.L102
.L100:
	cmpl	$0, -44(%rbp)
	je	.L102
	movl	$1, -16(%rbp)
.L102:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-16(%rbp), %ecx
	movq	-64(%rbp), %rdx
	leaq	.LC106(%rip), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	check_message
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movl	%eax, %ecx
	movl	$334, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L103
	movl	$1, -12(%rbp)
.L103:
	leaq	.LC92(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$336, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addq	$8, -8(%rbp)
.L87:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L104
	cmpl	$0, -12(%rbp)
	sete	%al
	movzbl	%al, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	run_cert, .-run_cert
	.section	.rodata
.LC108:
	.string	"crt = make_cert()"
.LC109:
	.string	"pfn->fn(crt, *pname)"
	.text
	.type	call_run_cert, @function
call_run_cert:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	$0, -4(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	name_fns(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movq	%rax, %rcx
	movl	$349, %esi
	movl	$0, %eax
	call	test_info@PLT
	leaq	names(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L106
.L109:
	call	make_cert
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movq	%rax, %rcx
	movl	$351, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L107
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC109(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movl	%eax, %ecx
	movl	$352, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L107
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	run_cert
	testl	%eax, %eax
	jne	.L108
.L107:
	movl	$1, -4(%rbp)
.L108:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	addq	$8, -16(%rbp)
.L106:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L109
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	call_run_cert, .-call_run_cert
	.data
	.align 32
	.type	gennames, @object
	.size	gennames, 864
gennames:
	.base64	"oBMGDSqGSIb3EgQBhLcJAgGgAjAAAA=="
	.zero	2
	.quad	21
	.base64	"oBMGDSqGSIb3EgQBhLcJAgGgAmAAAA=="
	.zero	2
	.quad	21
	.base64	"oBQGDSqGSIb3EgQBhLcJAgGgAwwBYQ=="
	.zero	2
	.quad	22
	.base64	"oBQGDSqGSIb3EgQBhLcJAgKgAwwBYQ=="
	.zero	2
	.quad	22
	.base64	"oBQGDSqGSIb3EgQBhLcJAgGgAwwBYg=="
	.zero	2
	.quad	22
	.base64	"oBQGDSqGSIb3EgQBhLcJAgGgAwEB/w=="
	.zero	2
	.quad	22
	.base64	"oBQGDSqGSIb3EgQBhLcJAgGgAwEBAA=="
	.zero	2
	.quad	22
	.base64	"gQFhAA=="
	.zero	18
	.zero	2
	.quad	3
	.base64	"gQFiAA=="
	.zero	18
	.zero	2
	.quad	3
	.base64	"ggFhAA=="
	.zero	18
	.zero	2
	.quad	3
	.base64	"ggFiAA=="
	.zero	18
	.zero	2
	.quad	3
	.base64	"pA4wDDEKMAgGA1UEAwwBYQA="
	.zero	5
	.zero	2
	.quad	16
	.base64	"pA4wDDEKMAgGA1UEAwwBYgA="
	.zero	5
	.zero	2
	.quad	16
	.base64	"pQWhAwwBYQA="
	.zero	14
	.zero	2
	.quad	7
	.base64	"pQWhAwwBYgA="
	.zero	14
	.zero	2
	.quad	7
	.base64	"pQmgAgwAoQMMAWEA"
	.zero	10
	.zero	2
	.quad	11
	.base64	"pQqgAwwBYaEDDAFhAA=="
	.zero	9
	.zero	2
	.quad	12
	.base64	"pQqgAwwBYqEDDAFhAA=="
	.zero	9
	.zero	2
	.quad	12
	.base64	"hgFhAA=="
	.zero	18
	.zero	2
	.quad	3
	.base64	"hgFiAA=="
	.zero	18
	.zero	2
	.quad	3
	.base64	"hwQRERERAA=="
	.zero	15
	.zero	2
	.quad	6
	.base64	"hwQiIiIiAA=="
	.zero	15
	.zero	2
	.quad	6
	.base64	"hxARERERERERERERERERERERAA=="
	.zero	3
	.zero	2
	.quad	18
	.base64	"hxAiIiIiIiIiIiIiIiIiIiIiAA=="
	.zero	3
	.zero	2
	.quad	18
	.base64	"iA0qhkiG9xIEAYS3CQIBAA=="
	.zero	6
	.zero	2
	.quad	15
	.base64	"iA0qhkiG9xIEAYS3CQICAA=="
	.zero	6
	.zero	2
	.quad	15
	.base64	"owAA"
	.zero	19
	.zero	2
	.quad	2
	.section	.rodata
.LC110:
	.string	"namesa"
.LC111:
	.string	"namesb"
.LC112:
	.string	"namesa[i]"
.LC113:
	.string	"namesb[i]"
	.align 8
.LC114:
	.string	"GENERAL_NAME_cmp(namesa[i], namesb[j])"
	.text
	.type	test_GENERAL_NAME_cmp, @function
test_GENERAL_NAME_cmp:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	leaq	.LC92(%rip), %rax
	movl	$661, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC92(%rip), %rax
	movl	$663, %edx
	movq	%rax, %rsi
	movl	$216, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -36(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC110(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movq	%rax, %rcx
	movl	$667, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L130
	movq	-56(%rbp), %rax
	leaq	.LC111(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movq	%rax, %rcx
	movl	$667, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L130
	movq	$0, -24(%rbp)
	jmp	.L115
.L118:
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	gennames(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+gennames(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_GENERAL_NAME@PLT
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	gennames(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+gennames(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_GENERAL_NAME@PLT
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC112(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movq	%rax, %rcx
	movl	$680, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L131
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	.LC113(%rip), %rdx
	leaq	.LC92(%rip), %rdi
	movq	%rax, %rcx
	movl	$680, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L131
	addq	$1, -24(%rbp)
.L115:
	cmpq	$26, -24(%rbp)
	jbe	.L118
	movq	$0, -24(%rbp)
	jmp	.L119
.L124:
	movq	$0, -32(%rbp)
	jmp	.L120
.L123:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L121
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GENERAL_NAME_cmp@PLT
	movl	%eax, %esi
	leaq	.LC99(%rip), %rcx
	leaq	.LC114(%rip), %rdx
	leaq	.LC92(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$688, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L122
	jmp	.L114
.L121:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	GENERAL_NAME_cmp@PLT
	movl	%eax, %esi
	leaq	.LC99(%rip), %rcx
	leaq	.LC114(%rip), %rdx
	leaq	.LC92(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$691, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L132
.L122:
	addq	$1, -32(%rbp)
.L120:
	cmpq	$26, -32(%rbp)
	jbe	.L123
	addq	$1, -24(%rbp)
.L119:
	cmpq	$26, -24(%rbp)
	jbe	.L124
	movl	$1, -36(%rbp)
	jmp	.L114
.L130:
	nop
	jmp	.L114
.L131:
	nop
	jmp	.L114
.L132:
	nop
.L114:
	movq	$0, -24(%rbp)
	jmp	.L125
.L128:
	cmpq	$0, -48(%rbp)
	je	.L126
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
.L126:
	cmpq	$0, -56(%rbp)
	je	.L127
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	GENERAL_NAME_free@PLT
.L127:
	addq	$1, -24(%rbp)
.L125:
	cmpq	$26, -24(%rbp)
	jbe	.L128
	leaq	.LC92(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$705, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC92(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$706, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	test_GENERAL_NAME_cmp, .-test_GENERAL_NAME_cmp
	.section	.rodata
.LC115:
	.string	"call_run_cert"
.LC116:
	.string	"test_GENERAL_NAME_cmp"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	call_run_cert(%rip), %rsi
	leaq	.LC115(%rip), %rax
	movl	$1, %ecx
	movl	$10, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_GENERAL_NAME_cmp(%rip), %rdx
	leaq	.LC116(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
