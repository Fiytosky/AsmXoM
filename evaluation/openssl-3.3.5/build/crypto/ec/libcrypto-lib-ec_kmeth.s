	.file	"ec_kmeth.c"
	.text
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB474:
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
.LFE474:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.section	.rodata
.LC0:
	.string	"OpenSSL EC_KEY method"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	openssl_ec_key_method, @object
	.size	openssl_ec_key_method, 120
openssl_ec_key_method:
	.quad	.LC0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_ec_key_gen
	.quad	ossl_ecdh_compute_key
	.quad	ossl_ecdsa_sign
	.quad	ossl_ecdsa_sign_setup
	.quad	ossl_ecdsa_sign_sig
	.quad	ossl_ecdsa_verify
	.quad	ossl_ecdsa_verify_sig
	.section	.data.rel.local,"aw"
	.align 8
	.type	default_ec_key_meth, @object
	.size	default_ec_key_meth, 8
default_ec_key_meth:
	.quad	openssl_ec_key_method
	.text
	.globl	EC_KEY_OpenSSL
	.type	EC_KEY_OpenSSL, @function
EC_KEY_OpenSSL:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	openssl_ec_key_method(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	EC_KEY_OpenSSL, .-EC_KEY_OpenSSL
	.globl	EC_KEY_get_default_method
	.type	EC_KEY_get_default_method, @function
EC_KEY_get_default_method:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	default_ec_key_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	EC_KEY_get_default_method, .-EC_KEY_get_default_method
	.globl	EC_KEY_set_default_method
	.type	EC_KEY_set_default_method, @function
EC_KEY_set_default_method:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	leaq	openssl_ec_key_method(%rip), %rax
	movq	%rax, default_ec_key_meth(%rip)
	jmp	.L10
.L8:
	movq	-8(%rbp), %rax
	movq	%rax, default_ec_key_meth(%rip)
.L10:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	EC_KEY_set_default_method, .-EC_KEY_set_default_method
	.globl	EC_KEY_get_method
	.type	EC_KEY_get_method, @function
EC_KEY_get_method:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	EC_KEY_get_method, .-EC_KEY_get_method
	.globl	EC_KEY_set_method
	.type	EC_KEY_set_method, @function
EC_KEY_set_method:
.LFB484:
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
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L14
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.L14:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_finish@PLT
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L16
.L15:
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	EC_KEY_set_method, .-EC_KEY_set_method
	.section	.rodata
.LC1:
	.string	"../crypto/ec/ec_kmeth.c"
	.text
	.globl	ossl_ec_key_new_method_int
	.type	ossl_ec_key_new_method_int, @function
ossl_ec_key_new_method_int:
.LFB485:
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
	leaq	.LC1(%rip), %rax
	movl	$84, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L20
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$90, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L19
.L20:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 80(%rax)
	cmpq	$0, -32(%rbp)
	je	.L21
	leaq	.LC1(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L29
.L21:
	call	EC_KEY_get_default_method@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	cmpq	$0, -40(%rbp)
	je	.L23
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ENGINE_init@PLT
	testl	%eax, %eax
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$105, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524326, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L22
.L24:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L25
.L23:
	call	ENGINE_get_default_EC@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L25:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ENGINE_get_EC@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$114, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524326, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L22
.L26:
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$4, 52(%rax)
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$126, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L22
.L27:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786693, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L22
.L28:
	movq	-8(%rbp), %rax
	jmp	.L19
.L29:
	nop
.L22:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_free@PLT
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	ossl_ec_key_new_method_int, .-ossl_ec_key_new_method_int
	.globl	EC_KEY_new_method
	.type	EC_KEY_new_method, @function
EC_KEY_new_method:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_ec_key_new_method_int@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	EC_KEY_new_method, .-EC_KEY_new_method
	.globl	ECDH_compute_key
	.type	ECDH_compute_key, @function
ECDH_compute_key:
.LFB487:
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
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$152, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L33:
	movq	-32(%rbp), %rax
	cmpq	$2147483647, %rax
	jbe	.L35
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$161, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$161, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L35:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	72(%rax), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L36
	movl	$0, %eax
	jmp	.L40
.L36:
	cmpq	$0, -56(%rbp)
	je	.L37
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	jmp	.L38
.L37:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L39
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.L39:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L38:
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	$173, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-32(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	ECDH_compute_key, .-ECDH_compute_key
	.globl	EC_KEY_METHOD_new
	.type	EC_KEY_METHOD_new, @function
EC_KEY_METHOD_new:
.LFB488:
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
	leaq	.LC1(%rip), %rax
	movl	$179, %edx
	movq	%rax, %rsi
	movl	$120, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	cmpq	$0, -40(%rbp)
	je	.L44
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	112(%rdx), %rdx
	movq	%rdx, 112(%rax)
.L44:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
.L43:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	EC_KEY_METHOD_new, .-EC_KEY_METHOD_new
	.globl	EC_KEY_METHOD_free
	.type	EC_KEY_METHOD_free, @function
EC_KEY_METHOD_free:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L47
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L47:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	EC_KEY_METHOD_free, .-EC_KEY_METHOD_free
	.globl	EC_KEY_METHOD_set_init
	.type	EC_KEY_METHOD_set_init, @function
EC_KEY_METHOD_set_init:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 56(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	EC_KEY_METHOD_set_init, .-EC_KEY_METHOD_set_init
	.globl	EC_KEY_METHOD_set_keygen
	.type	EC_KEY_METHOD_set_keygen, @function
EC_KEY_METHOD_set_keygen:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	EC_KEY_METHOD_set_keygen, .-EC_KEY_METHOD_set_keygen
	.globl	EC_KEY_METHOD_set_compute_key
	.type	EC_KEY_METHOD_set_compute_key, @function
EC_KEY_METHOD_set_compute_key:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	EC_KEY_METHOD_set_compute_key, .-EC_KEY_METHOD_set_compute_key
	.globl	EC_KEY_METHOD_set_sign
	.type	EC_KEY_METHOD_set_sign, @function
EC_KEY_METHOD_set_sign:
.LFB493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	EC_KEY_METHOD_set_sign, .-EC_KEY_METHOD_set_sign
	.globl	EC_KEY_METHOD_set_verify
	.type	EC_KEY_METHOD_set_verify, @function
EC_KEY_METHOD_set_verify:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 112(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	EC_KEY_METHOD_set_verify, .-EC_KEY_METHOD_set_verify
	.globl	EC_KEY_METHOD_get_init
	.type	EC_KEY_METHOD_get_init, @function
EC_KEY_METHOD_get_init:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L54
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L54:
	cmpq	$0, -24(%rbp)
	je	.L55
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L55:
	cmpq	$0, -32(%rbp)
	je	.L56
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L56:
	cmpq	$0, -40(%rbp)
	je	.L57
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L57:
	cmpq	$0, -48(%rbp)
	je	.L58
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L58:
	cmpq	$0, 16(%rbp)
	je	.L60
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
.L60:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	EC_KEY_METHOD_get_init, .-EC_KEY_METHOD_get_init
	.globl	EC_KEY_METHOD_get_keygen
	.type	EC_KEY_METHOD_get_keygen, @function
EC_KEY_METHOD_get_keygen:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L63:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	EC_KEY_METHOD_get_keygen, .-EC_KEY_METHOD_get_keygen
	.globl	EC_KEY_METHOD_get_compute_key
	.type	EC_KEY_METHOD_get_compute_key, @function
EC_KEY_METHOD_get_compute_key:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L66
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L66:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	EC_KEY_METHOD_get_compute_key, .-EC_KEY_METHOD_get_compute_key
	.globl	EC_KEY_METHOD_get_sign
	.type	EC_KEY_METHOD_get_sign, @function
EC_KEY_METHOD_get_sign:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L68
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L68:
	cmpq	$0, -24(%rbp)
	je	.L69
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L69:
	cmpq	$0, -32(%rbp)
	je	.L71
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L71:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	EC_KEY_METHOD_get_sign, .-EC_KEY_METHOD_get_sign
	.globl	EC_KEY_METHOD_get_verify
	.type	EC_KEY_METHOD_get_verify, @function
EC_KEY_METHOD_get_verify:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L73
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L73:
	cmpq	$0, -24(%rbp)
	je	.L75
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L75:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	EC_KEY_METHOD_get_verify, .-EC_KEY_METHOD_get_verify
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 27
__func__.1:
	.string	"ossl_ec_key_new_method_int"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"ECDH_compute_key"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
