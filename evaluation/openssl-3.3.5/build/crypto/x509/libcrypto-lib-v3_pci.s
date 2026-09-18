	.file	"v3_pci.c"
	.text
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
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB161:
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
.LFE161:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_sk_type, @function
ossl_check_CONF_VALUE_sk_type:
.LFB162:
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
.LFE162:
	.size	ossl_check_CONF_VALUE_sk_type, .-ossl_check_CONF_VALUE_sk_type
	.type	ossl_check_CONF_VALUE_freefunc_type, @function
ossl_check_CONF_VALUE_freefunc_type:
.LFB165:
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
.LFE165:
	.size	ossl_check_CONF_VALUE_freefunc_type, .-ossl_check_CONF_VALUE_freefunc_type
	.globl	ossl_v3_pci
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ossl_v3_pci, @object
	.size	ossl_v3_pci, 104
ossl_v3_pci:
	.long	663
	.long	0
	.quad	PROXY_CERT_INFO_EXTENSION_it
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	i2r_pci
	.quad	r2i_pci
	.quad	0
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"%*sPath Length Constraint: "
.LC2:
	.string	"infinite"
.LC3:
	.string	"\n"
.LC4:
	.string	"%*sPolicy Language: "
.LC5:
	.string	"\n%*sPolicy Text: %.*s"
	.text
	.type	i2r_pci, @function
i2r_pci:
.LFB617:
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
	movl	%ecx, -28(%rbp)
	leaq	.LC0(%rip), %rcx
	movl	-28(%rbp), %edx
	leaq	.LC1(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_INTEGER@PLT
	jmp	.L13
.L12:
	leaq	.LC2(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L13:
	leaq	.LC3(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	leaq	.LC0(%rip), %rcx
	movl	-28(%rbp), %edx
	leaq	.LC4(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edi
	leaq	.LC0(%rip), %rcx
	movl	-28(%rbp), %edx
	leaq	.LC5(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L14:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	i2r_pci, .-i2r_pci
	.section	.rodata
.LC6:
	.string	"language"
.LC7:
	.string	"../crypto/x509/v3_pci.c"
.LC8:
	.string	",value:"
.LC9:
	.string	",name:"
.LC10:
	.string	"section:"
.LC11:
	.string	"pathlen"
.LC12:
	.string	"policy"
.LC13:
	.string	"hex:"
.LC14:
	.string	"file:"
.LC15:
	.string	"r"
.LC16:
	.string	"text:"
	.text
	.type	process_pci_value, @function
process_pci_value:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2144, %rsp
	movq	%rdi, -2120(%rbp)
	movq	%rsi, -2128(%rbp)
	movq	%rdx, -2136(%rbp)
	movq	%rcx, -2144(%rbp)
	movl	$0, -4(%rbp)
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L17
	movq	-2128(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L18
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$155, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	-2128(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-2128(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L19
.L17:
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L21
	movq	-2136(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L22
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$157, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L19
.L22:
	movq	-2136(%rbp), %rdx
	movq	-2120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_value_int@PLT
	testl	%eax, %eax
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$110, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L19
.L21:
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L20
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	call	ASN1_OCTET_STRING_new@PLT
	movq	-2144(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$122, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L19
.L24:
	movl	$1, -4(%rbp)
.L23:
	leaq	.LC13(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L25
	addq	$4, -16(%rbp)
	movl	$1, %eax
	jmp	.L26
.L25:
	movl	$0, %eax
.L26:
	testb	%al, %al
	je	.L27
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L28
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L49
.L28:
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, %rsi
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movl	$137, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L30
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addl	%eax, %edx
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, (%rax)
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	leaq	.LC7(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$157, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L32
.L30:
	leaq	.LC7(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$146, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movl	$151, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 8(%rax)
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L49
.L27:
	leaq	.LC14(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L33
	addq	$5, -16(%rbp)
	movl	$1, %eax
	jmp	.L34
.L33:
	movl	$0, %eax
.L34:
	testb	%al, %al
	je	.L35
	leaq	.LC15(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$163, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L37
.L41:
	cmpl	$0, -36(%rbp)
	jne	.L39
	jmp	.L38
.L39:
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movl	$172, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L40
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movl	$176, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 8(%rax)
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	jmp	.L37
.L40:
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rcx
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, %rcx
	leaq	-2112(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, (%rax)
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
.L38:
	leaq	-2112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$2048, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L41
	cmpl	$0, -36(%rbp)
	jne	.L42
	movq	-32(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	jne	.L41
.L42:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	cmpl	$0, -36(%rbp)
	jns	.L32
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524320, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	nop
.L37:
	jmp	.L49
.L35:
	leaq	.LC16(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L44
	addq	$5, -16(%rbp)
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	testb	%al, %al
	je	.L46
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -56(%rbp)
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, %rsi
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rdx
	movl	$198, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L47
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rax
	leaq	5(%rax), %rcx
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addl	%eax, %edx
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, (%rax)
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	jmp	.L32
.L47:
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	leaq	.LC7(%rip), %rcx
	movl	$211, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 8(%rax)
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L49
.L46:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$218, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$152, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L49
.L32:
	cmpq	$0, -24(%rbp)
	jne	.L20
	movq	-2120(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-2120(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-2120(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L49
.L20:
	movl	$1, %eax
	jmp	.L19
.L49:
	cmpl	$0, -4(%rbp)
	je	.L50
	movq	-2144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-2144(%rbp), %rax
	movq	$0, (%rax)
.L50:
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	process_pci_value, .-process_pci_value
	.type	r2i_pci, @function
r2i_pci:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	X509V3_parse_list@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L52
.L62:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	je	.L54
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L54
.L53:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$251, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$153, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-56(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L55
.L54:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jne	.L56
	movl	$1, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_section@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$135, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-56(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L55
.L57:
	movl	$0, -32(%rbp)
	jmp	.L58
.L60:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	leaq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rax, %rsi
	call	process_pci_value
	movl	%eax, -36(%rbp)
	addl	$1, -32(%rbp)
.L58:
	cmpl	$0, -36(%rbp)
	je	.L59
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -32(%rbp)
	jl	.L60
.L59:
	movq	-64(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_section_free@PLT
	cmpl	$0, -36(%rbp)
	jne	.L61
	jmp	.L55
.L56:
	leaq	-88(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	process_pci_value
	testl	%eax, %eax
	jne	.L61
	movq	-56(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %r8
	leaq	.LC9(%rip), %rdx
	leaq	.LC10(%rip), %rsi
	subq	$8, %rsp
	pushq	%rcx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	addq	$16, %rsp
	jmp	.L55
.L61:
	addl	$1, -28(%rbp)
.L52:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -28(%rbp)
	jl	.L62
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L63
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$283, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$154, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L55
.L63:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -28(%rbp)
	cmpl	$667, -28(%rbp)
	je	.L64
	cmpl	$665, -28(%rbp)
	jne	.L65
.L64:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L65
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$289, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$159, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L55
.L65:
	call	PROXY_CERT_INFO_EXTENSION_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L66
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$296, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$34, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L55
.L66:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	$0, -88(%rbp)
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$0, -80(%rbp)
	jmp	.L67
.L55:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	$0, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	$0, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PROXY_CERT_INFO_EXTENSION_free@PLT
	movq	$0, -24(%rbp)
.L67:
	movq	X509V3_conf_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_freefunc_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_CONF_VALUE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	r2i_pci, .-r2i_pci
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"process_pci_value"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 8
__func__.0:
	.string	"r2i_pci"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
