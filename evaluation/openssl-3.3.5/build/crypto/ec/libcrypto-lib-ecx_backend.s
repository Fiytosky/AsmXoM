	.file	"ecx_backend.c"
	.text
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	xchgl	(%rax), %edx
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB469:
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
.LFE469:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ecx_backend.c"
	.text
	.globl	ossl_ecx_public_from_private
	.type	ossl_ecx_public_from_private, @function
ossl_ecx_public_from_private:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$3, %eax
	je	.L5
	cmpl	$3, %eax
	ja	.L6
	cmpl	$2, %eax
	je	.L7
	cmpl	$2, %eax
	ja	.L6
	testl	%eax, %eax
	je	.L8
	cmpl	$1, %eax
	je	.L9
	jmp	.L6
.L8:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$17, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_x25519_public_from_private@PLT
	jmp	.L6
.L7:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	17(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ed25519_public_from_private@PLT
	testl	%eax, %eax
	jne	.L13
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$166, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L11
.L9:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$17, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_x448_public_from_private@PLT
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	17(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ed448_public_from_private@PLT
	testl	%eax, %eax
	jne	.L14
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$166, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L11
.L13:
	nop
	jmp	.L6
.L14:
	nop
.L6:
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	ossl_ecx_public_from_private, .-ossl_ecx_public_from_private
	.section	.rodata
.LC1:
	.string	"pub"
.LC2:
	.string	"priv"
	.text
	.globl	ossl_ecx_key_fromdata
	.type	ossl_ecx_key_fromdata, @function
ossl_ecx_key_fromdata:
.LFB471:
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
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L16
	movl	$0, %eax
	jmp	.L25
.L16:
	leaq	.LC1(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L18
	leaq	.LC2(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -8(%rbp)
.L18:
	cmpq	$0, -16(%rbp)
	jne	.L19
	cmpq	$0, -8(%rbp)
	jne	.L19
	movl	$0, %eax
	jmp	.L25
.L19:
	cmpq	$0, -8(%rbp)
	je	.L20
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	leaq	80(%rax), %rsi
	leaq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$0, %eax
	jmp	.L25
.L21:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L20
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$84, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 80(%rax)
	movl	$0, %eax
	jmp	.L25
.L20:
	movq	-56(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L22
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$57, %edx
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L25
.L22:
	cmpq	$0, -16(%rbp)
	je	.L23
	movq	-56(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L23
	movl	$0, %eax
	jmp	.L25
.L23:
	cmpq	$0, -16(%rbp)
	jne	.L24
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_public_from_private@PLT
	testl	%eax, %eax
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-56(%rbp), %rax
	movzbl	16(%rax), %edx
	orl	$1, %edx
	movb	%dl, 16(%rax)
	movl	$1, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	ossl_ecx_key_fromdata, .-ossl_ecx_key_fromdata
	.globl	ossl_ecx_key_dup
	.type	ossl_ecx_key_dup, @function
ossl_ecx_key_dup:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$111, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 16(%rax)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-24(%rbp), %rax
	movl	96(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 96(%rax)
	movq	-8(%rbp), %rax
	addq	$100, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	je	.L35
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$125, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L36
.L31:
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L32
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L32
	movq	-24(%rbp), %rax
	leaq	17(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$17, %rax
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %edx
	orl	$1, %edx
	movb	%dl, 16(%rax)
.L32:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L33
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_allocate_privkey@PLT
	testq	%rax, %rax
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L30
.L34:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L33:
	movq	-8(%rbp), %rax
	jmp	.L28
.L35:
	nop
	jmp	.L30
.L36:
	nop
.L30:
	movq	-8(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movl	$0, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	ossl_ecx_key_dup, .-ossl_ecx_key_dup
	.globl	ossl_ecx_key_op
	.type	ossl_ecx_key_op, @function
ossl_ecx_key_op:
.LFB473:
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
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	movq	$0, -8(%rbp)
	cmpl	$2, -60(%rbp)
	je	.L38
	cmpq	$0, -40(%rbp)
	je	.L39
	movq	-40(%rbp), %rdx
	leaq	-28(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	X509_ALGOR_get0@PLT
	movl	-28(%rbp), %eax
	cmpl	$-1, %eax
	je	.L40
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L44
.L40:
	cmpl	$0, -56(%rbp)
	jne	.L42
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -56(%rbp)
	jmp	.L39
.L42:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	%eax, -56(%rbp)
	je	.L39
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L44
.L39:
	cmpq	$0, -48(%rbp)
	je	.L45
	cmpl	$0, -56(%rbp)
	je	.L45
	cmpl	$1034, -56(%rbp)
	je	.L46
	cmpl	$1087, -56(%rbp)
	je	.L46
	cmpl	$1035, -56(%rbp)
	jne	.L47
	movl	$56, %eax
	jmp	.L49
.L47:
	movl	$57, %eax
	jmp	.L49
.L46:
	movl	$32, %eax
.L49:
	cmpl	-52(%rbp), %eax
	je	.L38
.L45:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L44
.L38:
	cmpl	$1034, -56(%rbp)
	je	.L50
	cmpl	$1087, -56(%rbp)
	jne	.L51
.L50:
	cmpl	$1034, -56(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L54
.L52:
	movl	$2, %eax
	jmp	.L54
.L51:
	cmpl	$1035, -56(%rbp)
	jne	.L55
	movl	$1, %eax
	jmp	.L54
.L55:
	movl	$3, %eax
.L54:
	movq	16(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	%eax, %esi
	call	ossl_ecx_key_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$188, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L44
.L56:
	movq	-8(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L57
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L58
.L57:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_allocate_privkey@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L59
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$198, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524304, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L60
.L59:
	cmpl	$2, -60(%rbp)
	jne	.L61
	cmpl	$0, -56(%rbp)
	je	.L62
	cmpl	$1034, -56(%rbp)
	je	.L63
	cmpl	$1087, -56(%rbp)
	je	.L63
	cmpl	$1035, -56(%rbp)
	jne	.L64
	movl	$56, %eax
	jmp	.L66
.L64:
	movl	$57, %eax
	jmp	.L66
.L63:
	movl	$32, %eax
.L66:
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	$0, %ecx
	movq	%rax, %rdx
	call	RAND_priv_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L73
	cmpl	$1034, -56(%rbp)
	jne	.L68
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$-8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	addq	$31, %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$31, %rax
	andl	$127, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	addq	$31, %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$31, %rax
	orl	$64, %edx
	movb	%dl, (%rax)
	jmp	.L62
.L68:
	cmpl	$1035, -56(%rbp)
	jne	.L62
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	addq	$55, %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	addq	$55, %rax
	orl	$-128, %edx
	movb	%dl, (%rax)
	jmp	.L62
.L61:
	cmpl	$1034, -56(%rbp)
	je	.L69
	cmpl	$1087, -56(%rbp)
	je	.L69
	cmpl	$1035, -56(%rbp)
	jne	.L70
	movl	$56, %eax
	jmp	.L72
.L70:
	movl	$57, %eax
	jmp	.L72
.L69:
	movl	$32, %eax
.L72:
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
.L62:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_public_from_private@PLT
	testl	%eax, %eax
	jne	.L58
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$218, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$166, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L60
.L58:
	movq	-8(%rbp), %rax
	jmp	.L44
.L73:
	nop
.L60:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ecx_key_free@PLT
	movl	$0, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	ossl_ecx_key_op, .-ossl_ecx_key_op
	.globl	ossl_ecx_key_from_pkcs8
	.type	ossl_ecx_key_from_pkcs8, @function
ossl_ecx_key_from_pkcs8:
.LFB474:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-56(%rbp), %rsi
	leaq	-40(%rbp), %rcx
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	jne	.L75
	movl	$0, %eax
	jmp	.L79
.L75:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_OCTET_STRING@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L77
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L78
.L77:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, -28(%rbp)
.L78:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	$8, %rsp
	pushq	-72(%rbp)
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_ecx_key_op@PLT
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-8(%rbp), %rax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	ossl_ecx_key_from_pkcs8, .-ossl_ecx_key_from_pkcs8
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 29
__func__.2:
	.string	"ossl_ecx_public_from_private"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 17
__func__.1:
	.string	"ossl_ecx_key_dup"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"ossl_ecx_key_op"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
