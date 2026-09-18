	.file	"ssl_rsa_legacy.c"
	.text
	.section	.rodata
.LC0:
	.string	"../ssl/ssl_rsa_legacy.c"
	.text
	.globl	SSL_use_RSAPrivateKey
	.type	SSL_use_RSAPrivateKey, @function
SSL_use_RSAPrivateKey:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L2
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$23, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$27, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_up_ref@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	jg	.L5
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L3
.L5:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_PrivateKey@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	SSL_use_RSAPrivateKey, .-SSL_use_RSAPrivateKey
	.globl	SSL_use_RSAPrivateKey_file
	.type	SSL_use_RSAPrivateKey_file, @function
SSL_use_RSAPrivateKey_file:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L7
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$51, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L8
.L7:
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L9
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L8
.L9:
	cmpl	$2, -68(%rbp)
	jne	.L10
	movl	$524301, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_RSAPrivateKey_bio@PLT
	movq	%rax, -32(%rbp)
	jmp	.L11
.L10:
	cmpl	$1, -68(%rbp)
	jne	.L12
	movl	$524297, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_default_passwd_cb_userdata@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_default_passwd_cb@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rbx, %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_RSAPrivateKey@PLT
	movq	%rax, -32(%rbp)
	jmp	.L11
.L12:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$68, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L8
.L11:
	cmpq	$0, -32(%rbp)
	jne	.L13
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-20(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L8
.L13:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_RSAPrivateKey@PLT
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
.L8:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	SSL_use_RSAPrivateKey_file, .-SSL_use_RSAPrivateKey_file
	.globl	SSL_use_RSAPrivateKey_ASN1
	.type	SSL_use_RSAPrivateKey_ASN1, @function
SSL_use_RSAPrivateKey_ASN1:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_RSAPrivateKey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$90, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L18
.L16:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_use_RSAPrivateKey@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-12(%rbp), %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	SSL_use_RSAPrivateKey_ASN1, .-SSL_use_RSAPrivateKey_ASN1
	.globl	SSL_CTX_use_RSAPrivateKey
	.type	SSL_CTX_use_RSAPrivateKey, @function
SSL_CTX_use_RSAPrivateKey:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$105, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L21
.L20:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L22
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$109, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L21
.L22:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_up_ref@PLT
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	testl	%eax, %eax
	jg	.L23
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	$0, %eax
	jmp	.L21
.L23:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_PrivateKey@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movl	-12(%rbp), %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	SSL_CTX_use_RSAPrivateKey, .-SSL_CTX_use_RSAPrivateKey
	.globl	SSL_CTX_use_RSAPrivateKey_file
	.type	SSL_CTX_use_RSAPrivateKey_file, @function
SSL_CTX_use_RSAPrivateKey_file:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	call	BIO_s_file@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L25
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$133, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L26
.L25:
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$3, %edx
	movl	$108, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jg	.L27
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$138, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524290, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L26
.L27:
	cmpl	$2, -68(%rbp)
	jne	.L28
	movl	$524301, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	d2i_RSAPrivateKey_bio@PLT
	movq	%rax, -32(%rbp)
	jmp	.L29
.L28:
	cmpl	$1, -68(%rbp)
	jne	.L30
	movl	$524297, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_get_default_passwd_cb_userdata@PLT
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_CTX_get_default_passwd_cb@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rbx, %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_RSAPrivateKey@PLT
	movq	%rax, -32(%rbp)
	jmp	.L29
.L30:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L26
.L29:
	cmpq	$0, -32(%rbp)
	jne	.L31
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$154, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-20(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L26
.L31:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_RSAPrivateKey@PLT
	movl	%eax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
.L26:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	SSL_CTX_use_RSAPrivateKey_file, .-SSL_CTX_use_RSAPrivateKey_file
	.globl	SSL_CTX_use_RSAPrivateKey_ASN1
	.type	SSL_CTX_use_RSAPrivateKey_ASN1, @function
SSL_CTX_use_RSAPrivateKey_ASN1:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_RSAPrivateKey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$173, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L36
.L34:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_use_RSAPrivateKey@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	-12(%rbp), %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	SSL_CTX_use_RSAPrivateKey_ASN1, .-SSL_CTX_use_RSAPrivateKey_ASN1
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 22
__func__.5:
	.string	"SSL_use_RSAPrivateKey"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 27
__func__.4:
	.string	"SSL_use_RSAPrivateKey_file"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 27
__func__.3:
	.string	"SSL_use_RSAPrivateKey_ASN1"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 26
__func__.2:
	.string	"SSL_CTX_use_RSAPrivateKey"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 31
__func__.1:
	.string	"SSL_CTX_use_RSAPrivateKey_file"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 31
__func__.0:
	.string	"SSL_CTX_use_RSAPrivateKey_ASN1"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
