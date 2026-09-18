	.file	"asn1_gen.c"
	.text
	.type	ossl_check_ASN1_TYPE_type, @function
ossl_check_ASN1_TYPE_type:
.LFB48:
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
.LFE48:
	.size	ossl_check_ASN1_TYPE_type, .-ossl_check_ASN1_TYPE_type
	.type	ossl_check_ASN1_TYPE_sk_type, @function
ossl_check_ASN1_TYPE_sk_type:
.LFB50:
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
.LFE50:
	.size	ossl_check_ASN1_TYPE_sk_type, .-ossl_check_ASN1_TYPE_sk_type
	.type	ossl_check_ASN1_TYPE_freefunc_type, @function
ossl_check_ASN1_TYPE_freefunc_type:
.LFB53:
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
.LFE53:
	.size	ossl_check_ASN1_TYPE_freefunc_type, .-ossl_check_ASN1_TYPE_freefunc_type
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB433:
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
.LFE433:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB602:
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
.LFE602:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	ASN1_generate_nconf
	.type	ASN1_generate_nconf, @function
ASN1_generate_nconf:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L14
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_generate_v3@PLT
	jmp	.L16
.L14:
	movq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_set_nconf@PLT
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_generate_v3@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	ASN1_generate_nconf, .-ASN1_generate_nconf
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/asn1_gen.c"
	.text
	.globl	ASN1_generate_v3
	.type	ASN1_generate_v3, @function
ASN1_generate_v3:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	leaq	-12(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	generate_v3
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L18
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L18:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	ASN1_generate_v3, .-ASN1_generate_v3
	.type	generate_v3, @function
generate_v3:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$640, %rsp
	movq	%rdi, -616(%rbp)
	movq	%rsi, -624(%rbp)
	movl	%edx, -628(%rbp)
	movq	%rcx, -640(%rbp)
	movq	$0, -568(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -600(%rbp)
	movl	$0, -40(%rbp)
	movl	$-1, -560(%rbp)
	movl	$-1, -556(%rbp)
	movl	$1, -548(%rbp)
	movl	$0, -56(%rbp)
	leaq	-560(%rbp), %rcx
	leaq	asn1_cb(%rip), %rdx
	movq	-616(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	CONF_parse_list@PLT
	testl	%eax, %eax
	je	.L21
	movq	-640(%rbp), %rax
	movl	$194, (%rax)
	movl	$0, %eax
	jmp	.L45
.L21:
	movl	-552(%rbp), %eax
	cmpl	$16, %eax
	je	.L23
	movl	-552(%rbp), %eax
	cmpl	$17, %eax
	jne	.L24
.L23:
	cmpq	$0, -624(%rbp)
	jne	.L25
	movq	-640(%rbp), %rax
	movl	$192, (%rax)
	movl	$0, %eax
	jmp	.L45
.L25:
	cmpl	$49, -628(%rbp)
	jle	.L26
	movq	-640(%rbp), %rax
	movl	$181, (%rax)
	movl	$0, %eax
	jmp	.L45
.L26:
	movq	-544(%rbp), %rsi
	movl	-552(%rbp), %eax
	movq	-640(%rbp), %rdi
	movl	-628(%rbp), %ecx
	movq	-624(%rbp), %rdx
	movq	%rdi, %r8
	movl	%eax, %edi
	call	asn1_multi
	movq	%rax, -8(%rbp)
	jmp	.L27
.L24:
	movl	-552(%rbp), %edx
	movl	-548(%rbp), %ecx
	movq	-544(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	asn1_str2type
	movq	%rax, -8(%rbp)
.L27:
	cmpq	$0, -8(%rbp)
	jne	.L28
	movl	$0, %eax
	jmp	.L45
.L28:
	movl	-560(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L29
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	jne	.L29
	movq	-8(%rbp), %rax
	jmp	.L45
.L29:
	leaq	-568(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_TYPE@PLT
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movq	$0, -8(%rbp)
	movq	-568(%rbp), %rax
	movq	%rax, -576(%rbp)
	movl	-560(%rbp), %eax
	cmpl	$-1, %eax
	je	.L30
	movl	-36(%rbp), %eax
	movslq	%eax, %rdi
	leaq	-608(%rbp), %rcx
	leaq	-604(%rbp), %rdx
	leaq	-600(%rbp), %rsi
	leaq	-576(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_get_object@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L46
	movl	-36(%rbp), %edx
	movq	-576(%rbp), %rcx
	movq	-568(%rbp), %rax
	subq	%rax, %rcx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L33
	movl	$2, -40(%rbp)
	movq	$0, -600(%rbp)
	jmp	.L34
.L33:
	movl	-44(%rbp), %eax
	andl	$32, %eax
	movl	%eax, -40(%rbp)
.L34:
	movl	-560(%rbp), %eax
	movq	-600(%rbp), %rdx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	movl	$0, %edi
	call	ASN1_object_size@PLT
	movl	%eax, -24(%rbp)
	jmp	.L35
.L30:
	movl	-36(%rbp), %eax
	movl	%eax, -24(%rbp)
.L35:
	movl	$0, -20(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-24(%rax), %rdx
	leaq	-560(%rbp), %rax
	addq	$24, %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L36
.L37:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	addl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	ASN1_object_size@PLT
	movl	%eax, -24(%rbp)
	addl	$1, -20(%rbp)
	subq	$24, -16(%rbp)
.L36:
	movl	-56(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L37
	movl	-24(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$196, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L47
	movq	-32(%rbp), %rax
	movq	%rax, -584(%rbp)
	movl	$0, -20(%rbp)
	leaq	-560(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	jmp	.L39
.L41:
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	leaq	-584(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	ASN1_put_object@PLT
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L40
	movq	-584(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -584(%rbp)
	movb	$0, (%rax)
.L40:
	addl	$1, -20(%rbp)
	addq	$24, -16(%rbp)
.L39:
	movl	-56(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L41
	movl	-560(%rbp), %eax
	cmpl	$-1, %eax
	je	.L42
	movl	-556(%rbp), %eax
	testl	%eax, %eax
	jne	.L43
	movl	-560(%rbp), %eax
	cmpl	$16, %eax
	je	.L44
	movl	-560(%rbp), %eax
	cmpl	$17, %eax
	jne	.L43
.L44:
	movl	$32, -40(%rbp)
.L43:
	movl	-556(%rbp), %ecx
	movl	-560(%rbp), %edx
	movq	-600(%rbp), %rax
	movl	%eax, %edi
	movl	-40(%rbp), %esi
	leaq	-584(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	ASN1_put_object@PLT
.L42:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-576(%rbp), %rcx
	movq	-584(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -592(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-592(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_TYPE@PLT
	movq	%rax, -8(%rbp)
	jmp	.L32
.L46:
	nop
	jmp	.L32
.L47:
	nop
.L32:
	movq	-568(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$234, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$235, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	generate_v3, .-generate_v3
	.section	.rodata
.LC1:
	.string	"tag=%s"
.LC2:
	.string	"ASCII"
.LC3:
	.string	"UTF8"
.LC4:
	.string	"HEX"
.LC5:
	.string	"BITLIST"
	.text
	.type	asn1_cb, @function
asn1_cb:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L49
	movl	$-1, %eax
	jmp	.L80
.L49:
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L51
.L54:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L52
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	-60(%rbp), %edx
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	subq	-56(%rbp), %rax
	movl	%eax, -60(%rbp)
	jmp	.L53
.L52:
	addq	$1, -16(%rbp)
	addl	$1, -4(%rbp)
.L51:
	movl	-4(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L54
.L53:
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	asn1_str2tag
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.L55
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$267, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$194, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L80
.L55:
	movl	-36(%rbp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	jne	.L56
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	cmpq	$0, -24(%rbp)
	jne	.L57
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L57
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$277, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$189, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L80
.L57:
	movl	$0, %eax
	jmp	.L80
.L56:
	cmpl	$65544, -36(%rbp)
	je	.L58
	cmpl	$65544, -36(%rbp)
	jg	.L59
	cmpl	$65543, -36(%rbp)
	je	.L60
	cmpl	$65543, -36(%rbp)
	jg	.L59
	cmpl	$65542, -36(%rbp)
	je	.L61
	cmpl	$65542, -36(%rbp)
	jg	.L59
	cmpl	$65541, -36(%rbp)
	je	.L62
	cmpl	$65541, -36(%rbp)
	jg	.L59
	cmpl	$65540, -36(%rbp)
	je	.L63
	cmpl	$65540, -36(%rbp)
	jg	.L59
	cmpl	$65537, -36(%rbp)
	je	.L64
	cmpl	$65538, -36(%rbp)
	je	.L65
	jmp	.L59
.L64:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L66
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$288, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$181, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L80
.L66:
	movq	-32(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	-32(%rbp), %rdx
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	parse_tagging
	testl	%eax, %eax
	jne	.L81
	movl	$-1, %eax
	jmp	.L80
.L65:
	leaq	-44(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	parse_tagging
	testl	%eax, %eax
	jne	.L68
	movl	$-1, %eax
	jmp	.L80
.L68:
	movl	-44(%rbp), %edx
	movl	-40(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
	call	append_exp
	testl	%eax, %eax
	jne	.L82
	movl	$-1, %eax
	jmp	.L80
.L61:
	movq	-32(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movl	$16, %esi
	movq	%rax, %rdi
	call	append_exp
	testl	%eax, %eax
	jne	.L83
	movl	$-1, %eax
	jmp	.L80
.L60:
	movq	-32(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movl	$17, %esi
	movq	%rax, %rdi
	call	append_exp
	testl	%eax, %eax
	jne	.L84
	movl	$-1, %eax
	jmp	.L80
.L63:
	movq	-32(%rbp), %rax
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	append_exp
	testl	%eax, %eax
	jne	.L85
	movl	$-1, %eax
	jmp	.L80
.L62:
	movq	-32(%rbp), %rax
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	append_exp
	testl	%eax, %eax
	jne	.L86
	movl	$-1, %eax
	jmp	.L80
.L58:
	cmpq	$0, -24(%rbp)
	jne	.L74
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$325, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$160, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L80
.L74:
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L75
	movq	-32(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.L59
.L75:
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L77
	movq	-32(%rbp), %rax
	movl	$2, 12(%rax)
	jmp	.L59
.L77:
	leaq	.LC4(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L78
	movq	-32(%rbp), %rax
	movl	$3, 12(%rax)
	jmp	.L59
.L78:
	leaq	.LC5(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L79
	movq	-32(%rbp), %rax
	movl	$4, 12(%rax)
	jmp	.L59
.L79:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$337, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$160, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L80
.L81:
	nop
	jmp	.L59
.L82:
	nop
	jmp	.L59
.L83:
	nop
	jmp	.L59
.L84:
	nop
	jmp	.L59
.L85:
	nop
	jmp	.L59
.L86:
	nop
.L59:
	movl	$1, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	asn1_cb, .-asn1_cb
	.section	.rodata
.LC6:
	.string	"Char=%c"
	.text
	.type	parse_tagging, @function
parse_tagging:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L102
.L88:
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L90
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L90
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L90
	movl	$0, %eax
	jmp	.L102
.L90:
	cmpq	$0, -8(%rbp)
	jns	.L91
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$359, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$187, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L102
.L91:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L92
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	jmp	.L93
.L92:
	movl	$0, -28(%rbp)
.L93:
	cmpl	$0, -28(%rbp)
	je	.L94
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$85, %eax
	je	.L95
	cmpl	$85, %eax
	jg	.L96
	cmpl	$80, %eax
	je	.L97
	cmpl	$80, %eax
	jg	.L96
	cmpl	$65, %eax
	je	.L98
	cmpl	$67, %eax
	je	.L99
	jmp	.L96
.L95:
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L101
.L98:
	movq	-48(%rbp), %rax
	movl	$64, (%rax)
	jmp	.L101
.L97:
	movq	-48(%rbp), %rax
	movl	$192, (%rax)
	jmp	.L101
.L99:
	movq	-48(%rbp), %rax
	movl	$128, (%rax)
	jmp	.L101
.L96:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$388, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	movl	%eax, %ecx
	movl	$186, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L102
.L94:
	movq	-48(%rbp), %rax
	movl	$128, (%rax)
.L101:
	movl	$1, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	parse_tagging, .-parse_tagging
	.type	asn1_multi, @function
asn1_multi:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movl	%ecx, -72(%rbp)
	movq	%r8, -96(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -64(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L119
	cmpq	$0, -80(%rbp)
	je	.L106
	cmpq	$0, -88(%rbp)
	je	.L120
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_section@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L121
	movl	$0, -40(%rbp)
	jmp	.L109
.L112:
	movl	-72(%rbp), %eax
	leal	1(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	16(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	%rdx, %rcx
	movl	%ebx, %edx
	movq	%rax, %rdi
	call	generate_v3
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L122
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_TYPE_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_TYPE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L123
	addl	$1, -40(%rbp)
.L109:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -40(%rbp)
	jl	.L112
.L106:
	cmpl	$17, -68(%rbp)
	jne	.L113
	leaq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_SET_ANY@PLT
	movl	%eax, -36(%rbp)
	jmp	.L114
.L113:
	leaq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_SEQUENCE_ANY@PLT
	movl	%eax, -36(%rbp)
.L114:
	cmpl	$0, -36(%rbp)
	js	.L124
	call	ASN1_TYPE_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L125
	movl	-68(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_STRING_type_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-24(%rbp), %rax
	movl	-68(%rbp), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	$0, -64(%rbp)
	jmp	.L105
.L119:
	nop
	jmp	.L105
.L120:
	nop
	jmp	.L105
.L121:
	nop
	jmp	.L105
.L122:
	nop
	jmp	.L105
.L123:
	nop
	jmp	.L105
.L124:
	nop
	jmp	.L105
.L125:
	nop
	jmp	.L105
.L126:
	nop
.L105:
	movq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$455, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	ASN1_TYPE_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_TYPE_freefunc_type
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_ASN1_TYPE_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_section_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	asn1_multi, .-asn1_multi
	.type	append_exp, @function
append_exp:
.LFB648:
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
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L128
	cmpl	$0, -44(%rbp)
	jne	.L128
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$469, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$179, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L129
.L128:
	movq	-24(%rbp), %rax
	movl	504(%rax), %eax
	cmpl	$20, %eax
	jne	.L130
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$474, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$174, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L129
.L130:
	movq	-24(%rbp), %rax
	movl	504(%rax), %eax
	leal	1(%rax), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 504(%rdx)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L131
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 4(%rax)
	jmp	.L132
.L131:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 4(%rax)
.L132:
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	%edx, 12(%rax)
	movl	$1, %eax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	append_exp, .-append_exp
	.type	asn1_str2tag, @function
asn1_str2tag:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.L134
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -28(%rbp)
.L134:
	leaq	tnst.2(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L135
.L138:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -28(%rbp)
	jne	.L136
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L136
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	jmp	.L137
.L136:
	addl	$1, -4(%rbp)
	addq	$16, -16(%rbp)
.L135:
	cmpl	$48, -4(%rbp)
	jbe	.L138
	movl	$-1, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	asn1_str2tag, .-asn1_str2tag
	.section	.rodata
.LC7:
	.string	""
.LC8:
	.string	"string="
	.text
	.type	asn1_str2type, @function
asn1_str2type:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	$0, -16(%rbp)
	movl	$1, -4(%rbp)
	call	ASN1_TYPE_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L140
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$586, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L177
.L140:
	cmpq	$0, -72(%rbp)
	jne	.L142
	leaq	.LC7(%rip), %rax
	movq	%rax, -72(%rbp)
.L142:
	cmpl	$30, -80(%rbp)
	je	.L143
	cmpl	$30, -80(%rbp)
	jg	.L144
	cmpl	$28, -80(%rbp)
	jg	.L144
	cmpl	$26, -80(%rbp)
	jge	.L143
	cmpl	$24, -80(%rbp)
	jg	.L144
	cmpl	$23, -80(%rbp)
	jge	.L145
	cmpl	$22, -80(%rbp)
	je	.L143
	cmpl	$22, -80(%rbp)
	jg	.L144
	cmpl	$20, -80(%rbp)
	jg	.L144
	cmpl	$18, -80(%rbp)
	jge	.L143
	cmpl	$12, -80(%rbp)
	je	.L143
	cmpl	$12, -80(%rbp)
	jg	.L144
	cmpl	$10, -80(%rbp)
	je	.L146
	cmpl	$10, -80(%rbp)
	jg	.L144
	cmpl	$6, -80(%rbp)
	je	.L147
	cmpl	$6, -80(%rbp)
	jg	.L144
	cmpl	$5, -80(%rbp)
	je	.L148
	cmpl	$5, -80(%rbp)
	jg	.L144
	cmpl	$4, -80(%rbp)
	jg	.L144
	cmpl	$3, -80(%rbp)
	jge	.L149
	cmpl	$1, -80(%rbp)
	je	.L150
	cmpl	$2, -80(%rbp)
	je	.L146
	jmp	.L144
.L148:
	cmpq	$0, -72(%rbp)
	je	.L178
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L178
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$597, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$182, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L152
.L150:
	cmpl	$1, -76(%rbp)
	je	.L154
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$604, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$190, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L152
.L154:
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509V3_get_value_bool@PLT
	testl	%eax, %eax
	jne	.L179
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$611, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$176, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L146:
	cmpl	$1, -76(%rbp)
	je	.L157
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$619, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$185, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L152
.L157:
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	s2i_ASN1_INTEGER@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L180
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$624, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$180, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L147:
	cmpl	$1, -76(%rbp)
	je	.L159
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$631, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$191, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L152
.L159:
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	OBJ_txt2obj@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L181
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$635, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$183, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L145:
	cmpl	$1, -76(%rbp)
	je	.L161
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$643, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$193, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L152
.L161:
	call	ASN1_STRING_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L162
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$647, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L162:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L163
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$651, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L163:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-80(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_TIME_check@PLT
	testl	%eax, %eax
	jne	.L182
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$656, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$184, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L143:
	cmpl	$1, -76(%rbp)
	jne	.L165
	movl	$4097, -76(%rbp)
	jmp	.L166
.L165:
	cmpl	$2, -76(%rbp)
	jne	.L167
	movl	$4096, -76(%rbp)
	jmp	.L166
.L167:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$676, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$177, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L152
.L166:
	movl	-80(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_tag2bit@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdi
	movl	-76(%rbp), %edx
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$-1, %edx
	movq	%rax, %rsi
	call	ASN1_mbstring_copy@PLT
	testl	%eax, %eax
	jg	.L183
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$682, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L149:
	call	ASN1_STRING_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L169
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$691, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L152
.L169:
	cmpl	$3, -76(%rbp)
	jne	.L170
	leaq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L171
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$697, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$178, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L171:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-80(%rbp), %edx
	movl	%edx, 4(%rax)
	jmp	.L172
.L170:
	cmpl	$1, -76(%rbp)
	jne	.L173
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_set@PLT
	testl	%eax, %eax
	jne	.L172
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$705, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L173:
	cmpl	$4, -76(%rbp)
	jne	.L174
	cmpl	$3, -80(%rbp)
	jne	.L174
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	leaq	bitstr_cb(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$44, %esi
	movq	%rax, %rdi
	call	CONF_parse_list@PLT
	testl	%eax, %eax
	jne	.L175
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$712, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$188, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L175:
	movl	$0, -4(%rbp)
	jmp	.L172
.L174:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$718, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$175, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L152
.L172:
	cmpl	$3, -80(%rbp)
	jne	.L184
	cmpl	$0, -4(%rbp)
	je	.L184
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_string_set_bits_left@PLT
	jmp	.L184
.L144:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$728, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$196, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L178:
	nop
	jmp	.L153
.L179:
	nop
	jmp	.L153
.L180:
	nop
	jmp	.L153
.L181:
	nop
	jmp	.L153
.L182:
	nop
	jmp	.L153
.L183:
	nop
	jmp	.L153
.L184:
	nop
.L153:
	movq	-16(%rbp), %rax
	movl	-80(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	jmp	.L177
.L156:
	movq	-72(%rbp), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
.L152:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_TYPE_free@PLT
	movl	$0, %eax
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	asn1_str2type, .-asn1_str2type
	.type	bitstr_cb, @function
bitstr_cb:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L186
	movl	$0, %eax
	jmp	.L191
.L186:
	leaq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L188
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L188
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L188
	movl	$0, %eax
	jmp	.L191
.L188:
	cmpq	$0, -8(%rbp)
	jns	.L189
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$754, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$187, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L191
.L189:
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_BIT_STRING_set_bit@PLT
	testl	%eax, %eax
	jne	.L190
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$758, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L191
.L190:
	movl	$1, %eax
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	bitstr_cb, .-bitstr_cb
	.section	.rodata
.LC9:
	.string	"DIR"
	.text
	.type	mask_cb, @function
mask_cb:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L193
	movl	$0, %eax
	jmp	.L194
.L193:
	cmpl	$3, -44(%rbp)
	jne	.L195
	leaq	.LC9(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L195
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	orq	$10502, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L194
.L195:
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	asn1_str2tag
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L196
	movl	-12(%rbp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	je	.L197
.L196:
	movl	$0, %eax
	jmp	.L194
.L197:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_tag2bit@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L198
	movl	$0, %eax
	jmp	.L194
.L198:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	orq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	mask_cb, .-mask_cb
	.globl	ASN1_str2mask
	.type	ASN1_str2mask, @function
ASN1_str2mask:
.LFB653:
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
	movq	$0, (%rax)
	movq	-16(%rbp), %rcx
	leaq	mask_cb(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$124, %esi
	movq	%rax, %rdi
	call	CONF_parse_list@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	ASN1_str2mask, .-ASN1_str2mask
	.section	.rodata
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 17
__func__.6:
	.string	"ASN1_generate_v3"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 8
__func__.5:
	.string	"asn1_cb"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 14
__func__.4:
	.string	"parse_tagging"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 11
__func__.3:
	.string	"append_exp"
.LC10:
	.string	"BOOL"
.LC11:
	.string	"BOOLEAN"
.LC12:
	.string	"NULL"
.LC13:
	.string	"INT"
.LC14:
	.string	"INTEGER"
.LC15:
	.string	"ENUM"
.LC16:
	.string	"ENUMERATED"
.LC17:
	.string	"OID"
.LC18:
	.string	"OBJECT"
.LC19:
	.string	"UTCTIME"
.LC20:
	.string	"UTC"
.LC21:
	.string	"GENERALIZEDTIME"
.LC22:
	.string	"GENTIME"
.LC23:
	.string	"OCT"
.LC24:
	.string	"OCTETSTRING"
.LC25:
	.string	"BITSTR"
.LC26:
	.string	"BITSTRING"
.LC27:
	.string	"UNIVERSALSTRING"
.LC28:
	.string	"UNIV"
.LC29:
	.string	"IA5"
.LC30:
	.string	"IA5STRING"
.LC31:
	.string	"UTF8String"
.LC32:
	.string	"BMP"
.LC33:
	.string	"BMPSTRING"
.LC34:
	.string	"VISIBLESTRING"
.LC35:
	.string	"VISIBLE"
.LC36:
	.string	"PRINTABLESTRING"
.LC37:
	.string	"PRINTABLE"
.LC38:
	.string	"T61"
.LC39:
	.string	"T61STRING"
.LC40:
	.string	"TELETEXSTRING"
.LC41:
	.string	"GeneralString"
.LC42:
	.string	"GENSTR"
.LC43:
	.string	"NUMERIC"
.LC44:
	.string	"NUMERICSTRING"
.LC45:
	.string	"SEQUENCE"
.LC46:
	.string	"SEQ"
.LC47:
	.string	"SET"
.LC48:
	.string	"EXP"
.LC49:
	.string	"EXPLICIT"
.LC50:
	.string	"IMP"
.LC51:
	.string	"IMPLICIT"
.LC52:
	.string	"OCTWRAP"
.LC53:
	.string	"SEQWRAP"
.LC54:
	.string	"SETWRAP"
.LC55:
	.string	"BITWRAP"
.LC56:
	.string	"FORM"
.LC57:
	.string	"FORMAT"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	tnst.2, @object
	.size	tnst.2, 784
tnst.2:
	.quad	.LC10
	.long	4
	.long	1
	.quad	.LC11
	.long	7
	.long	1
	.quad	.LC12
	.long	4
	.long	5
	.quad	.LC13
	.long	3
	.long	2
	.quad	.LC14
	.long	7
	.long	2
	.quad	.LC15
	.long	4
	.long	10
	.quad	.LC16
	.long	10
	.long	10
	.quad	.LC17
	.long	3
	.long	6
	.quad	.LC18
	.long	6
	.long	6
	.quad	.LC19
	.long	7
	.long	23
	.quad	.LC20
	.long	3
	.long	23
	.quad	.LC21
	.long	15
	.long	24
	.quad	.LC22
	.long	7
	.long	24
	.quad	.LC23
	.long	3
	.long	4
	.quad	.LC24
	.long	11
	.long	4
	.quad	.LC25
	.long	6
	.long	3
	.quad	.LC26
	.long	9
	.long	3
	.quad	.LC27
	.long	15
	.long	28
	.quad	.LC28
	.long	4
	.long	28
	.quad	.LC29
	.long	3
	.long	22
	.quad	.LC30
	.long	9
	.long	22
	.quad	.LC3
	.long	4
	.long	12
	.quad	.LC31
	.long	10
	.long	12
	.quad	.LC32
	.long	3
	.long	30
	.quad	.LC33
	.long	9
	.long	30
	.quad	.LC34
	.long	13
	.long	26
	.quad	.LC35
	.long	7
	.long	26
	.quad	.LC36
	.long	15
	.long	19
	.quad	.LC37
	.long	9
	.long	19
	.quad	.LC38
	.long	3
	.long	20
	.quad	.LC39
	.long	9
	.long	20
	.quad	.LC40
	.long	13
	.long	20
	.quad	.LC41
	.long	13
	.long	27
	.quad	.LC42
	.long	6
	.long	27
	.quad	.LC43
	.long	7
	.long	18
	.quad	.LC44
	.long	13
	.long	18
	.quad	.LC45
	.long	8
	.long	16
	.quad	.LC46
	.long	3
	.long	16
	.quad	.LC47
	.long	3
	.long	17
	.quad	.LC48
	.long	3
	.long	65538
	.quad	.LC49
	.long	8
	.long	65538
	.quad	.LC50
	.long	3
	.long	65537
	.quad	.LC51
	.long	8
	.long	65537
	.quad	.LC52
	.long	7
	.long	65541
	.quad	.LC53
	.long	7
	.long	65542
	.quad	.LC54
	.long	7
	.long	65543
	.quad	.LC55
	.long	7
	.long	65540
	.quad	.LC56
	.long	4
	.long	65544
	.quad	.LC57
	.long	6
	.long	65544
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 14
__func__.1:
	.string	"asn1_str2type"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 10
__func__.0:
	.string	"bitstr_cb"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
