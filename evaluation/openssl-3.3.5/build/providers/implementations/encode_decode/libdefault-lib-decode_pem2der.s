	.file	"decode_pem2der.c"
	.text
	.type	read_pem, @function
read_pem:
.LFB465:
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
	movq	%r9, -64(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_read_bio@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	read_pem, .-read_pem
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/encode_decode/decode_pem2der.c"
	.text
	.type	pem2der_newctx, @function
pem2der_newctx:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$59, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L5
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L5:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	pem2der_newctx, .-pem2der_newctx
	.type	pem2der_freectx, @function
pem2der_freectx:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$70, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	pem2der_freectx, .-pem2der_freectx
	.type	pem2der_pass_helper, @function
pem2der_pass_helper:
.LFB468:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-8(%rbp), %rax
	movq	(%rax), %r9
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L10
.L9:
	movl	$-1, %eax
	jmp	.L12
.L10:
	movq	-16(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	pem2der_pass_helper, .-pem2der_pass_helper
	.section	.rodata
.LC1:
	.string	"data-type"
.LC2:
	.string	"data-structure"
.LC3:
	.string	"data"
.LC4:
	.string	"type"
	.text
	.type	pem2der_decode, @function
pem2der_decode:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$440, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movl	%edx, -372(%rbp)
	movq	%rcx, -384(%rbp)
	movq	%r8, -392(%rbp)
	movq	%r9, -400(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -100(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	-96(%rbp), %r8
	leaq	-88(%rbp), %rdi
	leaq	-80(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	-368(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	read_pem
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L14
	movl	$1, %eax
	jmp	.L26
.L14:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	$10, %rax
	jbe	.L16
	movl	$0, -28(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-80(%rbp), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PEM_get_EVP_CIPHER_INFO@PLT
	testl	%eax, %eax
	je	.L27
	movq	-88(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	leaq	pem2der_pass_helper(%rip), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	PEM_do_header@PLT
	testl	%eax, %eax
	je	.L27
.L16:
	movl	$1, -28(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L20
.L23:
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	pem_name_map.0(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L28
	addq	$1, -24(%rbp)
.L20:
	cmpq	$17, -24(%rbp)
	jbe	.L23
	jmp	.L22
.L28:
	nop
.L22:
	cmpq	$17, -24(%rbp)
	ja	.L29
	leaq	-352(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+pem_name_map.0(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+pem_name_map.0(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+pem_name_map.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -100(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L24
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-448(%rbp), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
.L24:
	cmpq	$0, -64(%rbp)
	je	.L25
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-448(%rbp), %rax
	movq	-64(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
.L25:
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-448(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-448(%rbp), %rax
	leaq	-100(%rbp), %rdx
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-432(%rbp), %rax
	movq	-424(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-416(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-392(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movq	-384(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -28(%rbp)
	jmp	.L19
.L27:
	nop
	jmp	.L19
.L29:
	nop
.L19:
	movq	-72(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$210, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-80(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$211, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$212, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-28(%rbp), %eax
.L26:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	pem2der_decode, .-pem2der_decode
	.globl	ossl_pem_to_der_decoder_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_pem_to_der_decoder_functions, @object
	.size	ossl_pem_to_der_decoder_functions, 64
ossl_pem_to_der_decoder_functions:
	.long	1
	.zero	4
	.quad	pem2der_newctx
	.long	2
	.zero	4
	.quad	pem2der_freectx
	.long	11
	.zero	4
	.quad	pem2der_decode
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC5:
	.string	"ENCRYPTED PRIVATE KEY"
.LC6:
	.string	"EncryptedPrivateKeyInfo"
.LC7:
	.string	"PRIVATE KEY"
.LC8:
	.string	"PrivateKeyInfo"
.LC9:
	.string	"PUBLIC KEY"
.LC10:
	.string	"SubjectPublicKeyInfo"
.LC11:
	.string	"DH PARAMETERS"
.LC12:
	.string	"DH"
.LC13:
	.string	"type-specific"
.LC14:
	.string	"X9.42 DH PARAMETERS"
.LC15:
	.string	"X9.42 DH"
.LC16:
	.string	"DSA PRIVATE KEY"
.LC17:
	.string	"DSA"
.LC18:
	.string	"DSA PUBLIC KEY"
.LC19:
	.string	"DSA PARAMETERS"
.LC20:
	.string	"EC PRIVATE KEY"
.LC21:
	.string	"EC"
.LC22:
	.string	"EC PARAMETERS"
.LC23:
	.string	"SM2 PRIVATE KEY"
.LC24:
	.string	"SM2"
.LC25:
	.string	"SM2 PARAMETERS"
.LC26:
	.string	"RSA PRIVATE KEY"
.LC27:
	.string	"RSA"
.LC28:
	.string	"RSA PUBLIC KEY"
.LC29:
	.string	"CERTIFICATE"
.LC30:
	.string	"Certificate"
.LC31:
	.string	"TRUSTED CERTIFICATE"
.LC32:
	.string	"X509 CERTIFICATE"
.LC33:
	.string	"X509 CRL"
.LC34:
	.string	"CertificateList"
	.section	.data.rel.local,"aw"
	.align 32
	.type	pem_name_map.0, @object
	.size	pem_name_map.0, 576
pem_name_map.0:
	.quad	.LC5
	.long	2
	.zero	4
	.quad	0
	.quad	.LC6
	.quad	.LC7
	.long	2
	.zero	4
	.quad	0
	.quad	.LC8
	.quad	.LC9
	.long	2
	.zero	4
	.quad	0
	.quad	.LC10
	.quad	.LC11
	.long	2
	.zero	4
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.long	2
	.zero	4
	.quad	.LC15
	.quad	.LC13
	.quad	.LC16
	.long	2
	.zero	4
	.quad	.LC17
	.quad	.LC13
	.quad	.LC18
	.long	2
	.zero	4
	.quad	.LC17
	.quad	.LC13
	.quad	.LC19
	.long	2
	.zero	4
	.quad	.LC17
	.quad	.LC13
	.quad	.LC20
	.long	2
	.zero	4
	.quad	.LC21
	.quad	.LC13
	.quad	.LC22
	.long	2
	.zero	4
	.quad	.LC21
	.quad	.LC13
	.quad	.LC23
	.long	2
	.zero	4
	.quad	.LC24
	.quad	.LC13
	.quad	.LC25
	.long	2
	.zero	4
	.quad	.LC24
	.quad	.LC13
	.quad	.LC26
	.long	2
	.zero	4
	.quad	.LC27
	.quad	.LC13
	.quad	.LC28
	.long	2
	.zero	4
	.quad	.LC27
	.quad	.LC13
	.quad	.LC29
	.long	3
	.zero	4
	.quad	0
	.quad	.LC30
	.quad	.LC31
	.long	3
	.zero	4
	.quad	0
	.quad	.LC30
	.quad	.LC32
	.long	3
	.zero	4
	.quad	0
	.quad	.LC30
	.quad	.LC33
	.long	4
	.zero	4
	.quad	0
	.quad	.LC34
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
