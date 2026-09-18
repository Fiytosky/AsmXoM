	.file	"rsa_sign.c"
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
	.section	.rodata
	.align 16
	.type	digestinfo_md4_der, @object
	.size	digestinfo_md4_der, 18
digestinfo_md4_der:
	.base64	"MCAwDAYIKoZIhvcNAgMFAAQQ"
	.align 16
	.type	digestinfo_md5_der, @object
	.size	digestinfo_md5_der, 18
digestinfo_md5_der:
	.base64	"MCAwDAYIKoZIhvcNAgUFAAQQ"
	.align 8
	.type	digestinfo_mdc2_der, @object
	.size	digestinfo_mdc2_der, 14
digestinfo_mdc2_der:
	.base64	"MBwwCAYEVQgDZQUABBA="
	.align 8
	.type	digestinfo_ripemd160_der, @object
	.size	digestinfo_ripemd160_der, 15
digestinfo_ripemd160_der:
	.base64	"MCEwCQYFKyQDAgEFAAQU"
	.align 8
	.type	digestinfo_sha1_der, @object
	.size	digestinfo_sha1_der, 15
digestinfo_sha1_der:
	.base64	"MCEwCQYFKw4DAhoFAAQU"
	.align 16
	.type	digestinfo_sha256_der, @object
	.size	digestinfo_sha256_der, 19
digestinfo_sha256_der:
	.base64	"MDEwDQYJYIZIAWUDBAIBBQAEIA=="
	.align 16
	.type	digestinfo_sha384_der, @object
	.size	digestinfo_sha384_der, 19
digestinfo_sha384_der:
	.base64	"MEEwDQYJYIZIAWUDBAICBQAEMA=="
	.align 16
	.type	digestinfo_sha512_der, @object
	.size	digestinfo_sha512_der, 19
digestinfo_sha512_der:
	.base64	"MFEwDQYJYIZIAWUDBAIDBQAEQA=="
	.align 16
	.type	digestinfo_sha224_der, @object
	.size	digestinfo_sha224_der, 19
digestinfo_sha224_der:
	.base64	"MC0wDQYJYIZIAWUDBAIEBQAEHA=="
	.align 16
	.type	digestinfo_sha512_224_der, @object
	.size	digestinfo_sha512_224_der, 19
digestinfo_sha512_224_der:
	.base64	"MC0wDQYJYIZIAWUDBAIFBQAEHA=="
	.align 16
	.type	digestinfo_sha512_256_der, @object
	.size	digestinfo_sha512_256_der, 19
digestinfo_sha512_256_der:
	.base64	"MDEwDQYJYIZIAWUDBAIGBQAEIA=="
	.align 16
	.type	digestinfo_sha3_224_der, @object
	.size	digestinfo_sha3_224_der, 19
digestinfo_sha3_224_der:
	.base64	"MC0wDQYJYIZIAWUDBAIHBQAEHA=="
	.align 16
	.type	digestinfo_sha3_256_der, @object
	.size	digestinfo_sha3_256_der, 19
digestinfo_sha3_256_der:
	.base64	"MDEwDQYJYIZIAWUDBAIIBQAEIA=="
	.align 16
	.type	digestinfo_sha3_384_der, @object
	.size	digestinfo_sha3_384_der, 19
digestinfo_sha3_384_der:
	.base64	"MEEwDQYJYIZIAWUDBAIJBQAEMA=="
	.align 16
	.type	digestinfo_sha3_512_der, @object
	.size	digestinfo_sha3_512_der, 19
digestinfo_sha3_512_der:
	.base64	"MFEwDQYJYIZIAWUDBAIKBQAEQA=="
	.text
	.globl	ossl_rsa_digestinfo_encoding
	.type	ossl_rsa_digestinfo_encoding, @function
ossl_rsa_digestinfo_encoding:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$1099, -4(%rbp)
	je	.L6
	cmpl	$1099, -4(%rbp)
	jg	.L7
	cmpl	$1098, -4(%rbp)
	je	.L8
	cmpl	$1098, -4(%rbp)
	jg	.L7
	cmpl	$1097, -4(%rbp)
	je	.L9
	cmpl	$1097, -4(%rbp)
	jg	.L7
	cmpl	$1096, -4(%rbp)
	je	.L10
	cmpl	$1096, -4(%rbp)
	jg	.L7
	cmpl	$1095, -4(%rbp)
	je	.L11
	cmpl	$1095, -4(%rbp)
	jg	.L7
	cmpl	$1094, -4(%rbp)
	je	.L12
	cmpl	$1094, -4(%rbp)
	jg	.L7
	cmpl	$675, -4(%rbp)
	je	.L13
	cmpl	$675, -4(%rbp)
	jg	.L7
	cmpl	$674, -4(%rbp)
	je	.L14
	cmpl	$674, -4(%rbp)
	jg	.L7
	cmpl	$673, -4(%rbp)
	je	.L15
	cmpl	$673, -4(%rbp)
	jg	.L7
	cmpl	$672, -4(%rbp)
	je	.L16
	cmpl	$672, -4(%rbp)
	jg	.L7
	cmpl	$257, -4(%rbp)
	je	.L17
	cmpl	$257, -4(%rbp)
	jg	.L7
	cmpl	$117, -4(%rbp)
	je	.L18
	cmpl	$117, -4(%rbp)
	jg	.L7
	cmpl	$95, -4(%rbp)
	je	.L19
	cmpl	$95, -4(%rbp)
	jg	.L7
	cmpl	$4, -4(%rbp)
	je	.L20
	cmpl	$64, -4(%rbp)
	je	.L21
	jmp	.L7
.L19:
	movq	-16(%rbp), %rax
	movq	$14, (%rax)
	leaq	digestinfo_mdc2_der(%rip), %rax
	jmp	.L22
.L17:
	movq	-16(%rbp), %rax
	movq	$18, (%rax)
	leaq	digestinfo_md4_der(%rip), %rax
	jmp	.L22
.L20:
	movq	-16(%rbp), %rax
	movq	$18, (%rax)
	leaq	digestinfo_md5_der(%rip), %rax
	jmp	.L22
.L18:
	movq	-16(%rbp), %rax
	movq	$15, (%rax)
	leaq	digestinfo_ripemd160_der(%rip), %rax
	jmp	.L22
.L21:
	movq	-16(%rbp), %rax
	movq	$15, (%rax)
	leaq	digestinfo_sha1_der(%rip), %rax
	jmp	.L22
.L13:
	movq	-16(%rbp), %rax
	movq	$19, (%rax)
	leaq	digestinfo_sha224_der(%rip), %rax
	jmp	.L22
.L16:
	movq	-16(%rbp), %rax
	movq	$19, (%rax)
	leaq	digestinfo_sha256_der(%rip), %rax
	jmp	.L22
.L15:
	movq	-16(%rbp), %rax
	movq	$19, (%rax)
	leaq	digestinfo_sha384_der(%rip), %rax
	jmp	.L22
.L14:
	movq	-16(%rbp), %rax
	movq	$19, (%rax)
	leaq	digestinfo_sha512_der(%rip), %rax
	jmp	.L22
.L12:
	movq	-16(%rbp), %rax
	movq	$19, (%rax)
	leaq	digestinfo_sha512_224_der(%rip), %rax
	jmp	.L22
.L11:
	movq	-16(%rbp), %rax
	movq	$19, (%rax)
	leaq	digestinfo_sha512_256_der(%rip), %rax
	jmp	.L22
.L10:
	movq	-16(%rbp), %rax
	movq	$19, (%rax)
	leaq	digestinfo_sha3_224_der(%rip), %rax
	jmp	.L22
.L9:
	movq	-16(%rbp), %rax
	movq	$19, (%rax)
	leaq	digestinfo_sha3_256_der(%rip), %rax
	jmp	.L22
.L8:
	movq	-16(%rbp), %rax
	movq	$19, (%rax)
	leaq	digestinfo_sha3_384_der(%rip), %rax
	jmp	.L22
.L6:
	movq	-16(%rbp), %rax
	movq	$19, (%rax)
	leaq	digestinfo_sha3_512_der(%rip), %rax
	jmp	.L22
.L7:
	movl	$0, %eax
.L22:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	ossl_rsa_digestinfo_encoding, .-ossl_rsa_digestinfo_encoding
	.type	digest_sz_from_nid, @function
digest_sz_from_nid:
.LFB191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$1099, -4(%rbp)
	je	.L24
	cmpl	$1099, -4(%rbp)
	jg	.L25
	cmpl	$1098, -4(%rbp)
	je	.L26
	cmpl	$1098, -4(%rbp)
	jg	.L25
	cmpl	$1097, -4(%rbp)
	je	.L27
	cmpl	$1097, -4(%rbp)
	jg	.L25
	cmpl	$1096, -4(%rbp)
	je	.L28
	cmpl	$1096, -4(%rbp)
	jg	.L25
	cmpl	$1095, -4(%rbp)
	je	.L29
	cmpl	$1095, -4(%rbp)
	jg	.L25
	cmpl	$1094, -4(%rbp)
	je	.L30
	cmpl	$1094, -4(%rbp)
	jg	.L25
	cmpl	$675, -4(%rbp)
	je	.L31
	cmpl	$675, -4(%rbp)
	jg	.L25
	cmpl	$674, -4(%rbp)
	je	.L32
	cmpl	$674, -4(%rbp)
	jg	.L25
	cmpl	$673, -4(%rbp)
	je	.L33
	cmpl	$673, -4(%rbp)
	jg	.L25
	cmpl	$672, -4(%rbp)
	je	.L34
	cmpl	$672, -4(%rbp)
	jg	.L25
	cmpl	$257, -4(%rbp)
	je	.L35
	cmpl	$257, -4(%rbp)
	jg	.L25
	cmpl	$117, -4(%rbp)
	je	.L36
	cmpl	$117, -4(%rbp)
	jg	.L25
	cmpl	$95, -4(%rbp)
	je	.L37
	cmpl	$95, -4(%rbp)
	jg	.L25
	cmpl	$4, -4(%rbp)
	je	.L38
	cmpl	$64, -4(%rbp)
	je	.L39
	jmp	.L25
.L37:
	movl	$16, %eax
	jmp	.L40
.L35:
	movl	$16, %eax
	jmp	.L40
.L38:
	movl	$16, %eax
	jmp	.L40
.L36:
	movl	$20, %eax
	jmp	.L40
.L39:
	movl	$20, %eax
	jmp	.L40
.L31:
	movl	$28, %eax
	jmp	.L40
.L34:
	movl	$32, %eax
	jmp	.L40
.L33:
	movl	$48, %eax
	jmp	.L40
.L32:
	movl	$64, %eax
	jmp	.L40
.L30:
	movl	$28, %eax
	jmp	.L40
.L29:
	movl	$32, %eax
	jmp	.L40
.L28:
	movl	$28, %eax
	jmp	.L40
.L27:
	movl	$32, %eax
	jmp	.L40
.L26:
	movl	$48, %eax
	jmp	.L40
.L24:
	movl	$64, %eax
	jmp	.L40
.L25:
	movl	$0, %eax
.L40:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	digest_sz_from_nid, .-digest_sz_from_nid
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_sign.c"
	.text
	.type	encode_pkcs1, @function
encode_pkcs1:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L42
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$250, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L42:
	leaq	-32(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ossl_rsa_digestinfo_encoding@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L44
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L44:
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$260, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	encode_pkcs1, .-encode_pkcs1
	.globl	RSA_sign
	.type	RSA_sign, @function
RSA_sign:
.LFB193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -72(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movq	%r9, -104(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	88(%rax), %r10
	movq	-104(%rbp), %r8
	movq	-96(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movl	-72(%rbp), %edx
	movq	-80(%rbp), %rsi
	movl	-68(%rbp), %eax
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	%eax, %edi
	call	*%r10
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	jmp	.L57
.L48:
	cmpl	$114, -68(%rbp)
	jne	.L50
	cmpl	$36, -72(%rbp)
	je	.L51
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L51:
	movq	$36, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L52
.L50:
	movl	-72(%rbp), %edi
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %edx
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	encode_pkcs1
	testl	%eax, %eax
	je	.L58
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
.L52:
	movq	-48(%rbp), %rax
	leaq	11(%rax), %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	cltq
	cmpq	%rbx, %rax
	jnb	.L55
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$304, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L54
.L55:
	movq	-48(%rbp), %rax
	movl	%eax, %edi
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rsi
	call	RSA_private_encrypt@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.L59
	movl	-36(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, -20(%rbp)
	jmp	.L54
.L58:
	nop
	jmp	.L54
.L59:
	nop
.L54:
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$316, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-20(%rbp), %eax
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	RSA_sign, .-RSA_sign
	.globl	ossl_rsa_verify
	.type	ossl_rsa_verify, @function
ossl_rsa_verify:
.LFB194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -56(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	cltq
	cmpq	%rax, 16(%rbp)
	je	.L61
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$338, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L81
.L61:
	leaq	.LC0(%rip), %rcx
	movq	16(%rbp), %rax
	movl	$343, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L82
	movq	16(%rbp), %rax
	movl	%eax, %edi
	movq	24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rsi
	call	RSA_public_decrypt@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L83
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, -32(%rbp)
	cmpl	$114, -52(%rbp)
	jne	.L66
	cmpq	$36, -32(%rbp)
	je	.L67
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$361, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L64
.L67:
	cmpq	$0, -72(%rbp)
	je	.L68
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$36, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-80(%rbp), %rax
	movq	$36, (%rax)
	jmp	.L69
.L68:
	cmpl	$36, -56(%rbp)
	je	.L70
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$370, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L64
.L70:
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$36, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L69
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$375, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L64
.L66:
	cmpl	$95, -52(%rbp)
	jne	.L71
	cmpq	$18, -32(%rbp)
	jne	.L71
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$4, %al
	jne	.L71
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$16, %al
	jne	.L71
	cmpq	$0, -72(%rbp)
	je	.L72
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-80(%rbp), %rax
	movq	$16, (%rax)
	jmp	.L84
.L72:
	cmpl	$16, -56(%rbp)
	je	.L74
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$390, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L64
.L74:
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L84
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$395, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L64
.L71:
	cmpq	$0, -72(%rbp)
	je	.L75
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	digest_sz_from_nid
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L85
	movl	-20(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cmpq	%rax, -32(%rbp)
	jnb	.L77
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$414, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L64
.L77:
	movl	-56(%rbp), %eax
	movq	-32(%rbp), %rdx
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
.L75:
	movl	-56(%rbp), %edi
	movq	-64(%rbp), %rcx
	movl	-52(%rbp), %edx
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	encode_pkcs1
	testl	%eax, %eax
	je	.L86
	movq	-40(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L79
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L80
.L79:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$426, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L64
.L80:
	cmpq	$0, -72(%rbp)
	je	.L69
	movl	-56(%rbp), %edx
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-56(%rbp), %edx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L69
.L84:
	nop
.L69:
	movl	$1, -4(%rbp)
	jmp	.L64
.L82:
	nop
	jmp	.L64
.L83:
	nop
	jmp	.L64
.L85:
	nop
	jmp	.L64
.L86:
	nop
.L64:
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$440, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	leaq	.LC0(%rip), %rdx
	movq	16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$441, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-4(%rbp), %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	ossl_rsa_verify, .-ossl_rsa_verify
	.globl	RSA_verify
	.type	RSA_verify, @function
RSA_verify:
.LFB195:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L88
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	96(%rax), %r10
	movq	-40(%rbp), %r8
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%eax, %edi
	call	*%r10
	jmp	.L89
.L88:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdi
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	-4(%rbp), %eax
	pushq	-40(%rbp)
	pushq	%rcx
	movq	%rdi, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	%eax, %edi
	call	ossl_rsa_verify@PLT
	addq	$16, %rsp
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	RSA_verify, .-RSA_verify
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 13
__func__.2:
	.string	"encode_pkcs1"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 9
__func__.1:
	.string	"RSA_sign"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"ossl_rsa_verify"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
