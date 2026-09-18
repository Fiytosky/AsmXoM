	.file	"ecx_meth.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB493:
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
.LFE493:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB494:
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
.LFE494:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ecx_meth.c"
	.text
	.type	ecx_pub_encode, @function
ecx_pub_encode:
.LFB594:
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
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L6
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L8
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L8
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L9
	movl	$56, %eax
	jmp	.L11
.L9:
	movl	$57, %eax
	jmp	.L11
.L8:
	movl	$32, %eax
.L11:
	movq	-24(%rbp), %rdx
	leaq	17(%rdx), %rdi
	leaq	.LC0(%rip), %rdx
	movl	$41, %ecx
	movq	%rax, %rsi
	call	CRYPTO_memdup@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L12
	movl	$0, %eax
	jmp	.L7
.L12:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L13
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L13
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L14
	movl	$56, %ebx
	jmp	.L16
.L14:
	movl	$57, %ebx
	jmp	.L16
.L13:
	movl	$32, %ebx
.L16:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ebx, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_PUBKEY_set0_param@PLT
	testl	%eax, %eax
	jne	.L17
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L7
.L17:
	movl	$1, %eax
.L7:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	ecx_pub_encode, .-ecx_pub_encode
	.type	ecx_pub_decode, @function
ecx_pub_decode:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	-64(%rbp), %rsi
	leaq	-40(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_PUBKEY_get0_param@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L22
.L19:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_ecx_key_op@PLT
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L21
	movl	$1, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
.L21:
	movl	-4(%rbp), %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	ecx_pub_decode, .-ecx_pub_decode
	.type	ecx_pub_cmp, @function
ecx_pub_cmp:
.LFB596:
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
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L24
	cmpq	$0, -16(%rbp)
	jne	.L25
.L24:
	movl	$-2, %eax
	jmp	.L26
.L25:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L27
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L28
	movl	$56, %eax
	jmp	.L30
.L28:
	movl	$57, %eax
	jmp	.L30
.L27:
	movl	$32, %eax
.L30:
	movq	-16(%rbp), %rdx
	leaq	17(%rdx), %rsi
	movq	-8(%rbp), %rdx
	leaq	17(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	CRYPTO_memcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	ecx_pub_cmp, .-ecx_pub_cmp
	.type	ecx_priv_decode_ex, @function
ecx_priv_decode_ex:
.LFB597:
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
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ecx_key_from_pkcs8@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L32
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
.L32:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	ecx_priv_decode_ex, .-ecx_priv_decode_ex
	.type	ecx_priv_encode, @function
ecx_priv_encode:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -72(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L35
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L36
.L35:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L44
.L36:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L38
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L38
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L39
	movl	$56, %eax
	jmp	.L41
.L39:
	movl	$57, %eax
	jmp	.L41
.L38:
	movl	$32, %eax
.L41:
	movl	%eax, -64(%rbp)
	movq	$0, -48(%rbp)
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2d_ASN1_OCTET_STRING@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jns	.L42
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L44
.L42:
	movq	-72(%rbp), %rbx
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	movl	-28(%rbp), %edx
	pushq	%rdx
	movq	%rbx, %r9
	movl	$0, %r8d
	movl	$-1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	PKCS8_pkey_set0@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L43
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$122, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$123, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L44
.L43:
	movl	$1, %eax
.L44:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	ecx_priv_encode, .-ecx_priv_encode
	.type	ecx_size, @function
ecx_size:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L46
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L46
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L47
	movl	$56, %eax
	jmp	.L50
.L47:
	movl	$57, %eax
	jmp	.L50
.L46:
	movl	$32, %eax
.L50:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	ecx_size, .-ecx_size
	.type	ecx_bits, @function
ecx_bits:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L52
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	jne	.L53
.L52:
	movl	$253, %eax
	jmp	.L54
.L53:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L55
	movl	$448, %eax
	jmp	.L54
.L55:
	movl	$456, %eax
.L54:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	ecx_bits, .-ecx_bits
	.type	ecx_security_bits, @function
ecx_security_bits:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L57
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	jne	.L58
.L57:
	movl	$128, %eax
	jmp	.L59
.L58:
	movl	$224, %eax
.L59:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	ecx_security_bits, .-ecx_security_bits
	.type	ecx_free, @function
ecx_free:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	ecx_free, .-ecx_free
	.type	ecx_cmp_parameters, @function
ecx_cmp_parameters:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	ecx_cmp_parameters, .-ecx_cmp_parameters
	.section	.rodata
.LC1:
	.string	""
.LC2:
	.string	"%*s<INVALID PRIVATE KEY>\n"
.LC3:
	.string	"%*s%s Private-Key:\n"
.LC4:
	.string	"%*spriv:\n"
.LC5:
	.string	"%*s<INVALID PUBLIC KEY>\n"
.LC6:
	.string	"%*s%s Public-Key:\n"
.LC7:
	.string	"%*spub:\n"
	.text
	.type	ecx_key_print, @function
ecx_key_print:
.LFB604:
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
	movl	%r8d, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	movq	%rax, -16(%rbp)
	cmpl	$1, -40(%rbp)
	jne	.L64
	cmpq	$0, -8(%rbp)
	je	.L65
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L66
.L65:
	leaq	.LC1(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC2(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L67
	movl	$0, %eax
	jmp	.L68
.L67:
	movl	$1, %eax
	jmp	.L68
.L66:
	movq	-16(%rbp), %rdi
	leaq	.LC1(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC3(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L69
	movl	$0, %eax
	jmp	.L68
.L69:
	leaq	.LC1(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC4(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L70
	movl	$0, %eax
	jmp	.L68
.L70:
	movl	-36(%rbp), %eax
	leal	4(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L71
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L71
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L72
	movl	$56, %eax
	jmp	.L74
.L72:
	movl	$57, %eax
	jmp	.L74
.L71:
	movl	$32, %eax
.L74:
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rsi
	movq	-24(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	ASN1_buf_print@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L68
.L64:
	cmpq	$0, -8(%rbp)
	jne	.L76
	leaq	.LC1(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC5(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L77
	movl	$0, %eax
	jmp	.L68
.L77:
	movl	$1, %eax
	jmp	.L68
.L76:
	movq	-16(%rbp), %rdi
	leaq	.LC1(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC6(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L75
	movl	$0, %eax
	jmp	.L68
.L75:
	leaq	.LC1(%rip), %rcx
	movl	-36(%rbp), %edx
	leaq	.LC7(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L78
	movl	$0, %eax
	jmp	.L68
.L78:
	movl	-36(%rbp), %eax
	leal	4(%rax), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L79
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L79
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L80
	movl	$56, %eax
	jmp	.L82
.L80:
	movl	$57, %eax
	jmp	.L82
.L79:
	movl	$32, %eax
.L82:
	movq	-8(%rbp), %rcx
	leaq	17(%rcx), %rsi
	movq	-24(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, %rdx
	call	ASN1_buf_print@PLT
	testl	%eax, %eax
	jne	.L83
	movl	$0, %eax
	jmp	.L68
.L83:
	movl	$1, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	ecx_key_print, .-ecx_key_print
	.type	ecx_priv_print, @function
ecx_priv_print:
.LFB605:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	ecx_key_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	ecx_priv_print, .-ecx_priv_print
	.type	ecx_pub_print, @function
ecx_pub_print:
.LFB606:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ecx_key_print
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	ecx_pub_print, .-ecx_pub_print
	.type	ecx_ctrl, @function
ecx_ctrl:
.LFB607:
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
	cmpl	$9, -28(%rbp)
	je	.L89
	cmpl	$10, -28(%rbp)
	je	.L90
	jmp	.L103
.L89:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	%esi, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ecx_key_op@PLT
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L92
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
	jmp	.L93
.L92:
	movl	$0, %eax
	jmp	.L93
.L90:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L95
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L95
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L96
	movl	$56, %eax
	jmp	.L98
.L96:
	movl	$57, %eax
	jmp	.L98
.L95:
	movl	$32, %eax
.L98:
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdx
	leaq	17(%rdx), %rdi
	leaq	.LC0(%rip), %rdx
	movl	$233, %ecx
	movq	%rax, %rsi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L99
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L99
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L100
	movl	$56, %eax
	jmp	.L93
.L100:
	movl	$57, %eax
	jmp	.L93
.L99:
	movl	$32, %eax
	jmp	.L93
.L94:
	movl	$0, %eax
	jmp	.L93
.L103:
	movl	$-2, %eax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	ecx_ctrl, .-ecx_ctrl
	.type	ecd_ctrl, @function
ecd_ctrl:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$3, -12(%rbp)
	jne	.L105
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movl	$2, %eax
	jmp	.L106
.L105:
	movl	$-2, %eax
.L106:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	ecd_ctrl, .-ecd_ctrl
	.type	ecx_set_priv_key, @function
ecx_set_priv_key:
.LFB609:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L108
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -8(%rbp)
.L108:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	%edx, %ecx
	movl	%esi, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ecx_key_op@PLT
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L109
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
	jmp	.L110
.L109:
	movl	$0, %eax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	ecx_set_priv_key, .-ecx_set_priv_key
	.type	ecx_set_pub_key, @function
ecx_set_pub_key:
.LFB610:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L112
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	call	EVP_KEYMGMT_get0_provider@PLT
	movq	%rax, %rdi
	call	ossl_provider_libctx@PLT
	movq	%rax, -8(%rbp)
.L112:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	%esi, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_ecx_key_op@PLT
	addq	$16, %rsp
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L113
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
	jmp	.L114
.L113:
	movl	$0, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	ecx_set_pub_key, .-ecx_set_pub_key
	.type	ecx_get_priv_key, @function
ecx_get_priv_key:
.LFB611:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L116
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L117
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L117
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L118
	movl	$56, %eax
	jmp	.L120
.L118:
	movl	$57, %eax
	jmp	.L120
.L117:
	movl	$32, %eax
.L120:
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
	jmp	.L121
.L116:
	cmpq	$0, -8(%rbp)
	je	.L122
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L122
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L123
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L123
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L124
	movl	$56, %eax
	jmp	.L126
.L124:
	movl	$57, %eax
	jmp	.L126
.L123:
	movl	$32, %eax
.L126:
	cmpq	%rax, %rdx
	jnb	.L127
.L122:
	movl	$0, %eax
	jmp	.L121
.L127:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L128
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L128
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L129
	movl	$56, %eax
	jmp	.L131
.L129:
	movl	$57, %eax
	jmp	.L131
.L128:
	movl	$32, %eax
.L131:
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	ecx_get_priv_key, .-ecx_get_priv_key
	.type	ecx_get_pub_key, @function
ecx_get_pub_key:
.LFB612:
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
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L133
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L134
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L134
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L135
	movl	$56, %eax
	jmp	.L137
.L135:
	movl	$57, %eax
	jmp	.L137
.L134:
	movl	$32, %eax
.L137:
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$1, %eax
	jmp	.L138
.L133:
	cmpq	$0, -8(%rbp)
	je	.L139
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L140
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L140
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L141
	movl	$56, %eax
	jmp	.L143
.L141:
	movl	$57, %eax
	jmp	.L143
.L140:
	movl	$32, %eax
.L143:
	cmpq	%rax, %rdx
	jnb	.L144
.L139:
	movl	$0, %eax
	jmp	.L138
.L144:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1034, %eax
	je	.L145
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1087, %eax
	je	.L145
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$1035, %eax
	jne	.L146
	movl	$56, %eax
	jmp	.L148
.L146:
	movl	$57, %eax
	jmp	.L148
.L145:
	movl	$32, %eax
.L148:
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	17(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	$1, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	ecx_get_pub_key, .-ecx_get_pub_key
	.type	ecx_pkey_dirty_cnt, @function
ecx_pkey_dirty_cnt:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	ecx_pkey_dirty_cnt, .-ecx_pkey_dirty_cnt
	.section	.rodata
.LC8:
	.string	"pub"
.LC9:
	.string	"priv"
	.text
	.type	ecx_pkey_export_to, @function
ecx_pkey_export_to:
.LFB614:
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
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L152
	movl	$0, %eax
	jmp	.L153
.L152:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	17(%rax), %rdi
	leaq	.LC8(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	je	.L158
	orl	$2, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L156
	movq	-24(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	.LC9(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	je	.L159
	orl	$1, -12(%rbp)
.L156:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %r8
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -16(%rbp)
	jmp	.L155
.L158:
	nop
	jmp	.L155
.L159:
	nop
.L155:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movl	-16(%rbp), %eax
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	ecx_pkey_export_to, .-ecx_pkey_export_to
	.type	ecx_generic_import_from, @function
ecx_generic_import_from:
.LFB615:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_get0_pkey@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	cmpl	$1034, -52(%rbp)
	je	.L161
	cmpl	$1087, -52(%rbp)
	jne	.L162
.L161:
	cmpl	$1034, -52(%rbp)
	jne	.L163
	movl	$0, %eax
	jmp	.L165
.L163:
	movl	$2, %eax
	jmp	.L165
.L162:
	cmpl	$1035, -52(%rbp)
	jne	.L166
	movl	$1, %eax
	jmp	.L165
.L166:
	movl	$3, %eax
.L165:
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	%eax, %esi
	call	ossl_ecx_key_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L167
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$393, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L168
.L167:
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ecx_key_fromdata@PLT
	testl	%eax, %eax
	je	.L169
	movq	-24(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	jne	.L170
.L169:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movl	$0, %eax
	jmp	.L168
.L170:
	movl	$1, %eax
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	ecx_generic_import_from, .-ecx_generic_import_from
	.type	ecx_pkey_copy, @function
ecx_pkey_copy:
.LFB616:
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
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L172
	movq	-16(%rbp), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ossl_ecx_key_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L172
	movl	$0, %eax
	jmp	.L173
.L172:
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L174
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
.L174:
	movl	-20(%rbp), %eax
.L173:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	ecx_pkey_copy, .-ecx_pkey_copy
	.type	x25519_import_from, @function
x25519_import_from:
.LFB617:
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
	movq	-8(%rbp), %rax
	movl	$1034, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecx_generic_import_from
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	x25519_import_from, .-x25519_import_from
	.globl	ossl_ecx25519_asn1_meth
	.section	.rodata
.LC10:
	.string	"X25519"
.LC11:
	.string	"OpenSSL X25519 algorithm"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_ecx25519_asn1_meth, @object
	.size	ossl_ecx25519_asn1_meth, 320
ossl_ecx25519_asn1_meth:
	.long	1034
	.long	1034
	.quad	0
	.quad	.LC10
	.quad	.LC11
	.quad	ecx_pub_decode
	.quad	ecx_pub_encode
	.quad	ecx_pub_cmp
	.quad	ecx_pub_print
	.quad	0
	.quad	ecx_priv_encode
	.quad	ecx_priv_print
	.quad	ecx_size
	.quad	ecx_bits
	.quad	ecx_security_bits
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_cmp_parameters
	.quad	0
	.quad	0
	.quad	ecx_free
	.quad	ecx_ctrl
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_set_priv_key
	.quad	ecx_set_pub_key
	.quad	ecx_get_priv_key
	.quad	ecx_get_pub_key
	.quad	ecx_pkey_dirty_cnt
	.quad	ecx_pkey_export_to
	.quad	x25519_import_from
	.quad	ecx_pkey_copy
	.quad	ecx_priv_decode_ex
	.text
	.type	x448_import_from, @function
x448_import_from:
.LFB618:
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
	movq	-8(%rbp), %rax
	movl	$1035, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecx_generic_import_from
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	x448_import_from, .-x448_import_from
	.globl	ossl_ecx448_asn1_meth
	.section	.rodata
.LC12:
	.string	"X448"
.LC13:
	.string	"OpenSSL X448 algorithm"
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ecx448_asn1_meth, @object
	.size	ossl_ecx448_asn1_meth, 320
ossl_ecx448_asn1_meth:
	.long	1035
	.long	1035
	.quad	0
	.quad	.LC12
	.quad	.LC13
	.quad	ecx_pub_decode
	.quad	ecx_pub_encode
	.quad	ecx_pub_cmp
	.quad	ecx_pub_print
	.quad	0
	.quad	ecx_priv_encode
	.quad	ecx_priv_print
	.quad	ecx_size
	.quad	ecx_bits
	.quad	ecx_security_bits
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_cmp_parameters
	.quad	0
	.quad	0
	.quad	ecx_free
	.quad	ecx_ctrl
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_set_priv_key
	.quad	ecx_set_pub_key
	.quad	ecx_get_priv_key
	.quad	ecx_get_pub_key
	.quad	ecx_pkey_dirty_cnt
	.quad	ecx_pkey_export_to
	.quad	x448_import_from
	.quad	ecx_pkey_copy
	.quad	ecx_priv_decode_ex
	.text
	.type	ecd_size25519, @function
ecd_size25519:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$64, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	ecd_size25519, .-ecd_size25519
	.type	ecd_size448, @function
ecd_size448:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$114, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	ecd_size448, .-ecd_size448
	.type	ecd_item_verify, @function
ecd_item_verify:
.LFB621:
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
	movq	-64(%rbp), %rdx
	leaq	-20(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$1087, -4(%rbp)
	je	.L184
	cmpl	$1088, -4(%rbp)
	jne	.L185
.L184:
	movl	-20(%rbp), %eax
	cmpl	$-1, %eax
	je	.L186
.L185:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$552, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L189
.L186:
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_DigestVerifyInit@PLT
	testl	%eax, %eax
	jne	.L188
	movl	$0, %eax
	jmp	.L189
.L188:
	movl	$2, %eax
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	ecd_item_verify, .-ecd_item_verify
	.type	ecd_item_sign, @function
ecd_item_sign:
.LFB622:
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
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
	cmpq	$0, -16(%rbp)
	je	.L191
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2obj@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	X509_ALGOR_set0@PLT
.L191:
	movl	$3, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	ecd_item_sign, .-ecd_item_sign
	.type	ecd_item_sign25519, @function
ecd_item_sign25519:
.LFB623:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$1087, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecd_item_sign
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	ecd_item_sign25519, .-ecd_item_sign25519
	.type	ecd_sig_info_set25519, @function
ecd_sig_info_set25519:
.LFB624:
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
	movq	-8(%rbp), %rax
	movl	$2, %r8d
	movl	$128, %ecx
	movl	$1087, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_SIG_INFO_set@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	ecd_sig_info_set25519, .-ecd_sig_info_set25519
	.type	ecd_item_sign448, @function
ecd_item_sign448:
.LFB625:
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
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$1088, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecd_item_sign
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	ecd_item_sign448, .-ecd_item_sign448
	.type	ecd_sig_info_set448, @function
ecd_sig_info_set448:
.LFB626:
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
	movq	-8(%rbp), %rax
	movl	$2, %r8d
	movl	$224, %ecx
	movl	$1088, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_SIG_INFO_set@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ecd_sig_info_set448, .-ecd_sig_info_set448
	.type	ed25519_import_from, @function
ed25519_import_from:
.LFB627:
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
	movq	-8(%rbp), %rax
	movl	$1087, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecx_generic_import_from
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	ed25519_import_from, .-ed25519_import_from
	.globl	ossl_ed25519_asn1_meth
	.section	.rodata
.LC14:
	.string	"ED25519"
.LC15:
	.string	"OpenSSL ED25519 algorithm"
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed25519_asn1_meth, @object
	.size	ossl_ed25519_asn1_meth, 320
ossl_ed25519_asn1_meth:
	.long	1087
	.long	1087
	.quad	0
	.quad	.LC14
	.quad	.LC15
	.quad	ecx_pub_decode
	.quad	ecx_pub_encode
	.quad	ecx_pub_cmp
	.quad	ecx_pub_print
	.quad	0
	.quad	ecx_priv_encode
	.quad	ecx_priv_print
	.quad	ecd_size25519
	.quad	ecx_bits
	.quad	ecx_security_bits
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_cmp_parameters
	.quad	0
	.quad	0
	.quad	ecx_free
	.quad	ecd_ctrl
	.quad	0
	.quad	0
	.quad	ecd_item_verify
	.quad	ecd_item_sign25519
	.quad	ecd_sig_info_set25519
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_set_priv_key
	.quad	ecx_set_pub_key
	.quad	ecx_get_priv_key
	.quad	ecx_get_pub_key
	.quad	ecx_pkey_dirty_cnt
	.quad	ecx_pkey_export_to
	.quad	ed25519_import_from
	.quad	ecx_pkey_copy
	.quad	ecx_priv_decode_ex
	.text
	.type	ed448_import_from, @function
ed448_import_from:
.LFB628:
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
	movq	-8(%rbp), %rax
	movl	$1088, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ecx_generic_import_from
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	ed448_import_from, .-ed448_import_from
	.globl	ossl_ed448_asn1_meth
	.section	.rodata
.LC16:
	.string	"ED448"
.LC17:
	.string	"OpenSSL ED448 algorithm"
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_ed448_asn1_meth, @object
	.size	ossl_ed448_asn1_meth, 320
ossl_ed448_asn1_meth:
	.long	1088
	.long	1088
	.quad	0
	.quad	.LC16
	.quad	.LC17
	.quad	ecx_pub_decode
	.quad	ecx_pub_encode
	.quad	ecx_pub_cmp
	.quad	ecx_pub_print
	.quad	0
	.quad	ecx_priv_encode
	.quad	ecx_priv_print
	.quad	ecd_size448
	.quad	ecx_bits
	.quad	ecx_security_bits
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_cmp_parameters
	.quad	0
	.quad	0
	.quad	ecx_free
	.quad	ecd_ctrl
	.quad	0
	.quad	0
	.quad	ecd_item_verify
	.quad	ecd_item_sign448
	.quad	ecd_sig_info_set448
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_set_priv_key
	.quad	ecx_set_pub_key
	.quad	ecx_get_priv_key
	.quad	ecx_get_pub_key
	.quad	ecx_pkey_dirty_cnt
	.quad	ecx_pkey_export_to
	.quad	ed448_import_from
	.quad	ecx_pkey_copy
	.quad	ecx_priv_decode_ex
	.text
	.type	pkey_ecx_keygen, @function
pkey_ecx_keygen:
.LFB629:
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
	movq	120(%rax), %rax
	movl	(%rax), %eax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$2, %r8d
	movl	%eax, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_ecx_key_op@PLT
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L206
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
	jmp	.L207
.L206:
	movl	$0, %eax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	pkey_ecx_keygen, .-pkey_ecx_keygen
	.type	validate_ecx_derive, @function
validate_ecx_derive:
.LFB630:
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
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L209
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L210
.L209:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$731, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$140, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L211
.L210:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L212
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L213
.L212:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$737, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L211
.L213:
	cmpq	$0, -16(%rbp)
	jne	.L214
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$741, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$133, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L211
.L214:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	leaq	17(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	validate_ecx_derive, .-validate_ecx_derive
	.type	pkey_ecx_derive25519, @function
pkey_ecx_derive25519:
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
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	validate_ecx_derive
	testl	%eax, %eax
	je	.L216
	cmpq	$0, -32(%rbp)
	je	.L217
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x25519@PLT
	testl	%eax, %eax
	jne	.L217
.L216:
	movl	$0, %eax
	jmp	.L219
.L217:
	movq	-40(%rbp), %rax
	movq	$32, (%rax)
	movl	$1, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	pkey_ecx_derive25519, .-pkey_ecx_derive25519
	.type	pkey_ecx_derive448, @function
pkey_ecx_derive448:
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
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	validate_ecx_derive
	testl	%eax, %eax
	je	.L221
	cmpq	$0, -32(%rbp)
	je	.L222
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x448@PLT
	testl	%eax, %eax
	jne	.L222
.L221:
	movl	$0, %eax
	jmp	.L224
.L222:
	movq	-40(%rbp), %rax
	movq	$56, (%rax)
	movl	$1, %eax
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	pkey_ecx_derive448, .-pkey_ecx_derive448
	.type	pkey_ecx_ctrl, @function
pkey_ecx_ctrl:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$2, -12(%rbp)
	jne	.L226
	movl	$1, %eax
	jmp	.L227
.L226:
	movl	$-2, %eax
.L227:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	pkey_ecx_ctrl, .-pkey_ecx_ctrl
	.section	.data.rel.ro.local
	.align 32
	.type	ecx25519_pkey_meth, @object
	.size	ecx25519_pkey_meth, 256
ecx25519_pkey_meth:
	.long	1034
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_ecx_keygen
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_ecx_derive25519
	.quad	pkey_ecx_ctrl
	.quad	0
	.zero	48
	.align 32
	.type	ecx448_pkey_meth, @object
	.size	ecx448_pkey_meth, 256
ecx448_pkey_meth:
	.long	1035
	.long	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_ecx_keygen
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_ecx_derive448
	.quad	pkey_ecx_ctrl
	.quad	0
	.zero	48
	.text
	.type	pkey_ecd_digestsign25519, @function
pkey_ecd_digestsign25519:
.LFB634:
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
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L229
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$811, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L230
.L229:
	cmpq	$0, -32(%rbp)
	jne	.L231
	movq	-40(%rbp), %rax
	movq	$64, (%rax)
	movl	$1, %eax
	jmp	.L230
.L231:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$63, %rax
	ja	.L232
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$820, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L230
.L232:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	17(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ed25519_sign@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	jne	.L233
	movl	$0, %eax
	jmp	.L230
.L233:
	movq	-40(%rbp), %rax
	movq	$64, (%rax)
	movl	$1, %eax
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	pkey_ecd_digestsign25519, .-pkey_ecd_digestsign25519
	.type	pkey_ecd_digestsign448, @function
pkey_ecd_digestsign448:
.LFB635:
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
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L235
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$840, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L236
.L235:
	cmpq	$0, -32(%rbp)
	jne	.L237
	movq	-40(%rbp), %rax
	movq	$114, (%rax)
	movl	$1, %eax
	jmp	.L236
.L237:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$113, %rax
	ja	.L238
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$849, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L236
.L238:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	80(%rax), %r8
	movq	-8(%rbp), %rax
	leaq	17(%rax), %r10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	pushq	%rdi
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	ossl_ed448_sign@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L239
	movl	$0, %eax
	jmp	.L236
.L239:
	movq	-40(%rbp), %rax
	movq	$114, (%rax)
	movl	$1, %eax
.L236:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	pkey_ecd_digestsign448, .-pkey_ecd_digestsign448
	.type	pkey_ecd_digestverify25519, @function
pkey_ecd_digestverify25519:
.LFB636:
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
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L241
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$867, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L242
.L241:
	cmpq	$64, -40(%rbp)
	je	.L243
	movl	$0, %eax
	jmp	.L242
.L243:
	movq	-8(%rbp), %rax
	movq	8(%rax), %r8
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	17(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ossl_ed25519_verify@PLT
	addq	$48, %rsp
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	pkey_ecd_digestverify25519, .-pkey_ecd_digestverify25519
	.type	pkey_ecd_digestverify448, @function
pkey_ecd_digestverify448:
.LFB637:
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
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_pkey_ctx@PLT
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	evp_pkey_get_legacy@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L245
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$887, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L246
.L245:
	cmpq	$114, -40(%rbp)
	je	.L247
	movl	$0, %eax
	jmp	.L246
.L247:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	leaq	17(%rax), %r8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	subq	$8, %rsp
	pushq	%rdi
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movq	%rax, %rdi
	call	ossl_ed448_verify@PLT
	addq	$32, %rsp
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	pkey_ecd_digestverify448, .-pkey_ecd_digestverify448
	.type	pkey_ecd_ctrl, @function
pkey_ecd_ctrl:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$1, -12(%rbp)
	je	.L249
	cmpl	$7, -12(%rbp)
	je	.L250
	jmp	.L255
.L249:
	cmpq	$0, -24(%rbp)
	je	.L252
	call	EVP_md_null@PLT
	cmpq	%rax, -24(%rbp)
	jne	.L253
.L252:
	movl	$1, %eax
	jmp	.L254
.L253:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$905, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L250:
	movl	$1, %eax
	jmp	.L254
.L255:
	movl	$-2, %eax
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	pkey_ecd_ctrl, .-pkey_ecd_ctrl
	.section	.data.rel.ro.local
	.align 32
	.type	ed25519_pkey_meth, @object
	.size	ed25519_pkey_meth, 256
ed25519_pkey_meth:
	.long	1087
	.long	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_ecx_keygen
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_ecd_ctrl
	.quad	0
	.quad	pkey_ecd_digestsign25519
	.quad	pkey_ecd_digestverify25519
	.zero	32
	.align 32
	.type	ed448_pkey_meth, @object
	.size	ed448_pkey_meth, 256
ed448_pkey_meth:
	.long	1088
	.long	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_ecx_keygen
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_ecd_ctrl
	.quad	0
	.quad	pkey_ecd_digestsign448
	.quad	pkey_ecd_digestverify448
	.zero	32
	.text
	.globl	ossl_ecx25519_pkey_method
	.type	ossl_ecx25519_pkey_method, @function
ossl_ecx25519_pkey_method:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ecx25519_pkey_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	ossl_ecx25519_pkey_method, .-ossl_ecx25519_pkey_method
	.globl	ossl_ecx448_pkey_method
	.type	ossl_ecx448_pkey_method, @function
ossl_ecx448_pkey_method:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ecx448_pkey_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	ossl_ecx448_pkey_method, .-ossl_ecx448_pkey_method
	.globl	ossl_ed25519_pkey_method
	.type	ossl_ed25519_pkey_method, @function
ossl_ed25519_pkey_method:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ed25519_pkey_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	ossl_ed25519_pkey_method, .-ossl_ed25519_pkey_method
	.globl	ossl_ed448_pkey_method
	.type	ossl_ed448_pkey_method, @function
ossl_ed448_pkey_method:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ed448_pkey_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	ossl_ed448_pkey_method, .-ossl_ed448_pkey_method
	.section	.rodata
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 15
__func__.9:
	.string	"ecx_pub_encode"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 16
__func__.8:
	.string	"ecx_priv_encode"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 24
__func__.7:
	.string	"ecx_generic_import_from"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 16
__func__.6:
	.string	"ecd_item_verify"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 20
__func__.5:
	.string	"validate_ecx_derive"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 25
__func__.4:
	.string	"pkey_ecd_digestsign25519"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 23
__func__.3:
	.string	"pkey_ecd_digestsign448"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 27
__func__.2:
	.string	"pkey_ecd_digestverify25519"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"pkey_ecd_digestverify448"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"pkey_ecd_ctrl"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
