	.file	"rsa_ossl.c"
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
	.type	sk_RSA_PRIME_INFO_num, @function
sk_RSA_PRIME_INFO_num:
.LFB165:
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
.LFE165:
	.size	sk_RSA_PRIME_INFO_num, .-sk_RSA_PRIME_INFO_num
	.type	sk_RSA_PRIME_INFO_value, @function
sk_RSA_PRIME_INFO_value:
.LFB166:
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
.LFE166:
	.size	sk_RSA_PRIME_INFO_value, .-sk_RSA_PRIME_INFO_value
	.type	constant_time_msb, @function
constant_time_msb:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$31, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	constant_time_msb, .-constant_time_msb
	.section	.rodata
.LC0:
	.string	"OpenSSL PKCS#1 RSA"
	.section	.data.rel,"aw"
	.align 32
	.type	rsa_pkcs1_ossl_meth, @object
	.size	rsa_pkcs1_ossl_meth, 120
rsa_pkcs1_ossl_meth:
	.quad	.LC0
	.quad	rsa_ossl_public_encrypt
	.quad	rsa_ossl_public_decrypt
	.quad	rsa_ossl_private_encrypt
	.quad	rsa_ossl_private_decrypt
	.quad	rsa_ossl_mod_exp
	.quad	BN_mod_exp_mont
	.quad	rsa_ossl_init
	.quad	rsa_ossl_finish
	.long	1024
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.section	.data.rel.local,"aw"
	.align 8
	.type	default_RSA_meth, @object
	.size	default_RSA_meth, 8
default_RSA_meth:
	.quad	rsa_pkcs1_ossl_meth
	.text
	.globl	RSA_set_default_method
	.type	RSA_set_default_method, @function
RSA_set_default_method:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, default_RSA_meth(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	RSA_set_default_method, .-RSA_set_default_method
	.globl	RSA_get_default_method
	.type	RSA_get_default_method, @function
RSA_get_default_method:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	default_RSA_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	RSA_get_default_method, .-RSA_get_default_method
	.globl	RSA_PKCS1_OpenSSL
	.type	RSA_PKCS1_OpenSSL, @function
RSA_PKCS1_OpenSSL:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	rsa_pkcs1_ossl_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	RSA_PKCS1_OpenSSL, .-RSA_PKCS1_OpenSSL
	.globl	RSA_null_method
	.type	RSA_null_method, @function
RSA_null_method:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	RSA_null_method, .-RSA_null_method
	.section	.rodata
.LC1:
	.string	"../crypto/rsa/rsa_ossl.c"
	.text
	.type	rsa_ossl_public_encrypt, @function
rsa_ossl_public_encrypt:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -56(%rbp)
	movl	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$16384, %eax
	jle	.L19
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$108, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L20
.L19:
	movq	-80(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jg	.L21
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$113, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L20
.L21:
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$3072, %eax
	jle	.L22
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$64, %eax
	jle	.L22
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$120, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L20
.L22:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L37
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$131, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L38
	cmpq	$0, -24(%rbp)
	je	.L38
	cmpl	$4, -56(%rbp)
	je	.L27
	cmpl	$4, -56(%rbp)
	jg	.L28
	cmpl	$1, -56(%rbp)
	je	.L29
	cmpl	$3, -56(%rbp)
	je	.L30
	jmp	.L28
.L29:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-52(%rbp), %edi
	movq	-64(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rsi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_rsa_padding_add_PKCS1_type_2_ex@PLT
	movl	%eax, -4(%rbp)
	jmp	.L31
.L27:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	-52(%rbp), %edi
	movq	-64(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rsi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex@PLT
	addq	$32, %rsp
	movl	%eax, -4(%rbp)
	jmp	.L31
.L30:
	movl	-52(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movl	-8(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_padding_add_none@PLT
	movl	%eax, -4(%rbp)
	jmp	.L31
.L28:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$149, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L31:
	cmpl	$0, -4(%rbp)
	jle	.L39
	movq	-40(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L40
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L34
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$160, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L24
.L34:
	movq	-80(%rbp), %rax
	movl	164(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L35
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	208(%rax), %rax
	movq	-80(%rbp), %rcx
	leaq	168(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, %rsi
	call	BN_MONT_CTX_set_locked@PLT
	testq	%rax, %rax
	je	.L41
.L35:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %r10
	movq	-80(%rbp), %rax
	movq	168(%rax), %r8
	movq	-80(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L42
	movl	-8(%rbp), %edx
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, -12(%rbp)
	jmp	.L24
.L37:
	nop
	jmp	.L24
.L38:
	nop
	jmp	.L24
.L39:
	nop
	jmp	.L24
.L40:
	nop
	jmp	.L24
.L41:
	nop
	jmp	.L24
.L42:
	nop
.L24:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC1(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$181, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-12(%rbp), %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	rsa_ossl_public_encrypt, .-rsa_ossl_public_encrypt
	.type	rsa_get_blinding, @function
rsa_get_blinding:
.LFB480:
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
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L46
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L45
.L47:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L46
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RSA_setup_blinding@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 192(%rdx)
.L46:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_is_current_thread@PLT
	testl	%eax, %eax
	je	.L50
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L49
.L50:
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L45
.L52:
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	RSA_setup_blinding@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 200(%rdx)
.L51:
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L49
.L53:
	nop
.L49:
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	rsa_get_blinding, .-rsa_get_blinding
	.type	rsa_blinding_convert, @function
rsa_blinding_convert:
.LFB481:
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
	cmpq	$0, -40(%rbp)
	jne	.L55
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_BLINDING_convert_ex@PLT
	jmp	.L56
.L55:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_lock@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L56
.L57:
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_convert_ex@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_unlock@PLT
	movl	-4(%rbp), %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	rsa_blinding_convert, .-rsa_blinding_convert
	.type	rsa_blinding_invert, @function
rsa_blinding_invert:
.LFB482:
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
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_BLINDING_invert_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	rsa_blinding_invert, .-rsa_blinding_invert
	.type	rsa_ossl_private_encrypt, @function
rsa_ossl_private_encrypt:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movl	%r8d, -104(%rbp)
	movl	$0, -16(%rbp)
	movl	$-1, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -84(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L90
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$301, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L91
	cmpq	$0, -32(%rbp)
	je	.L91
	cmpl	$5, -104(%rbp)
	je	.L65
	cmpl	$5, -104(%rbp)
	jg	.L66
	cmpl	$1, -104(%rbp)
	je	.L67
	cmpl	$3, -104(%rbp)
	je	.L68
	jmp	.L66
.L67:
	movl	-100(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movl	-16(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_padding_add_PKCS1_type_1@PLT
	movl	%eax, -12(%rbp)
	jmp	.L69
.L65:
	movl	-100(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movl	-16(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_padding_add_X931@PLT
	movl	%eax, -12(%rbp)
	jmp	.L69
.L68:
	movl	-100(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movl	-16(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_padding_add_none@PLT
	movl	%eax, -12(%rbp)
	jmp	.L69
.L66:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L62
.L69:
	cmpl	$0, -12(%rbp)
	jle	.L92
	movq	-64(%rbp), %rdx
	movl	-16(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L93
	movq	-128(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L72
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$327, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L62
.L72:
	movq	-128(%rbp), %rax
	movl	164(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L73
	movq	-128(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	208(%rax), %rax
	movq	-128(%rbp), %rcx
	leaq	168(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, %rsi
	call	BN_MONT_CTX_set_locked@PLT
	testq	%rax, %rax
	je	.L94
.L73:
	movq	-128(%rbp), %rax
	movl	164(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L74
	movq	-56(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_get_blinding
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L74
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$339, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L62
.L74:
	cmpq	$0, -48(%rbp)
	je	.L75
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	jne	.L76
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L76
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$346, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L62
.L76:
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_blinding_convert
	testl	%eax, %eax
	je	.L95
.L75:
	movq	-128(%rbp), %rax
	movl	164(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L77
	movq	-128(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L77
	movq	-128(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	-128(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	-128(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	-128(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	-128(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L78
.L77:
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %r8
	movq	-56(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L80
	jmp	.L62
.L78:
	call	BN_new@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L81
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$363, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L62
.L81:
	movq	-128(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$179, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L62
.L82:
	movq	-128(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-80(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %r10
	movq	-128(%rbp), %rax
	movq	168(%rax), %r8
	movq	-128(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	jne	.L83
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L62
.L83:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L80:
	cmpq	$0, -48(%rbp)
	je	.L84
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_blinding_invert
	testl	%eax, %eax
	je	.L96
.L84:
	cmpl	$5, -104(%rbp)
	jne	.L85
	movq	-128(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L97
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L87
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L88
.L87:
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L88
.L85:
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.L88:
	movl	-16(%rbp), %edx
	movq	-120(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, -20(%rbp)
	jmp	.L62
.L90:
	nop
	jmp	.L62
.L91:
	nop
	jmp	.L62
.L92:
	nop
	jmp	.L62
.L93:
	nop
	jmp	.L62
.L94:
	nop
	jmp	.L62
.L95:
	nop
	jmp	.L62
.L96:
	nop
	jmp	.L62
.L97:
	nop
.L62:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-16(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	$405, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	rsa_ossl_private_encrypt, .-rsa_ossl_private_encrypt
	.section	.rodata
.LC2:
	.string	"sha256"
	.text
	.type	derive_kdk, @function
derive_kdk:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	%r8d, -88(%rbp)
	movq	%r9, -120(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$32, -36(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L99
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$424, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L99:
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$428, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$179, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L100
.L101:
	movq	-104(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movl	-88(%rbp), %edx
	movq	-112(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	jns	.L102
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$434, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L100
.L102:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC2(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$449, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524557, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L103:
	movl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movq	-24(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	movq	-112(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	jg	.L104
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$454, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L104:
	call	HMAC_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$460, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L105:
	movq	-24(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$32, %edx
	movq	%rax, %rdi
	call	HMAC_Init_ex@PLT
	testl	%eax, %eax
	jg	.L106
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$465, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L106:
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.L107
	movl	-88(%rbp), %eax
	subl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-88(%rbp), %eax
	subl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-112(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	jg	.L107
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$472, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L107:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Update@PLT
	testl	%eax, %eax
	jg	.L108
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$477, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L108:
	movl	$32, -36(%rbp)
	leaq	-36(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	HMAC_Final@PLT
	testl	%eax, %eax
	jg	.L109
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$483, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L109:
	movl	$1, -4(%rbp)
.L100:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	HMAC_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	derive_kdk, .-derive_kdk
	.type	rsa_ossl_private_decrypt, @function
rsa_ossl_private_decrypt:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movl	%r8d, -136(%rbp)
	movl	$0, -4(%rbp)
	movl	$-1, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -116(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-160(%rbp), %rax
	movl	164(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L112
	cmpl	$1, -136(%rbp)
	jne	.L112
	movl	$8, -136(%rbp)
.L112:
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L142
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L115
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$523, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L114
.L115:
	movq	-160(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$527, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L143
	movl	-132(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L117
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$536, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L114
.L117:
	cmpl	$0, -132(%rbp)
	jg	.L118
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$541, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L114
.L118:
	movq	-48(%rbp), %rdx
	movl	-132(%rbp), %ecx
	movq	-144(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L144
	movq	-160(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L120
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$550, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L114
.L120:
	movq	-160(%rbp), %rax
	movl	164(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L121
	movq	-160(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	208(%rax), %rax
	movq	-160(%rbp), %rcx
	leaq	168(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, %rsi
	call	BN_MONT_CTX_set_locked@PLT
	testq	%rax, %rax
	je	.L145
.L121:
	movq	-160(%rbp), %rax
	movl	164(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L122
	movq	-40(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_get_blinding
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$562, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L114
.L122:
	cmpq	$0, -32(%rbp)
	je	.L123
	movl	-116(%rbp), %eax
	testl	%eax, %eax
	jne	.L124
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L124
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$569, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L114
.L124:
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_blinding_convert
	testl	%eax, %eax
	je	.L146
.L123:
	movq	-160(%rbp), %rax
	movl	164(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L125
	movq	-160(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L125
	movq	-160(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-160(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-160(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-160(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-160(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L126
.L125:
	movq	-160(%rbp), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %r8
	movq	-40(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L128
	jmp	.L114
.L126:
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L129
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$587, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L114
.L129:
	movq	-160(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L130
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$591, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$179, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L114
.L130:
	movq	-160(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-160(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %r10
	movq	-160(%rbp), %rax
	movq	168(%rax), %r8
	movq	-160(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	jne	.L131
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L114
.L131:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L128:
	cmpq	$0, -32(%rbp)
	je	.L132
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_blinding_invert
	testl	%eax, %eax
	je	.L147
.L132:
	cmpl	$1, -136(%rbp)
	jne	.L133
	leaq	-112(%rbp), %r8
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-144(%rbp), %rsi
	movl	-132(%rbp), %eax
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%eax, %edi
	call	derive_kdk
	testl	%eax, %eax
	je	.L148
.L133:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	js	.L149
	cmpl	$8, -136(%rbp)
	je	.L135
	cmpl	$8, -136(%rbp)
	jg	.L136
	cmpl	$4, -136(%rbp)
	je	.L137
	cmpl	$4, -136(%rbp)
	jg	.L136
	cmpl	$1, -136(%rbp)
	je	.L138
	cmpl	$3, -136(%rbp)
	je	.L139
	jmp	.L136
.L135:
	movl	-4(%rbp), %edi
	movl	-68(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-152(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	RSA_padding_check_PKCS1_type_2@PLT
	movl	%eax, -8(%rbp)
	jmp	.L140
.L138:
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %r9d
	movl	-68(%rbp), %r8d
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-152(%rbp), %rsi
	subq	$8, %rsp
	leaq	-112(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_rsa_padding_check_PKCS1_type_2@PLT
	addq	$16, %rsp
	movl	%eax, -8(%rbp)
	jmp	.L140
.L137:
	movl	-4(%rbp), %edi
	movl	-68(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-152(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	RSA_padding_check_PKCS1_OAEP@PLT
	addq	$16, %rsp
	movl	%eax, -8(%rbp)
	jmp	.L140
.L139:
	movl	-68(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L140
.L136:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$636, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L114
.L140:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$645, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_msb
	notl	%eax
	andl	$1, %eax
	movl	%eax, %edi
	call	err_clear_last_constant_time@PLT
	jmp	.L114
.L142:
	nop
	jmp	.L114
.L143:
	nop
	jmp	.L114
.L144:
	nop
	jmp	.L114
.L145:
	nop
	jmp	.L114
.L146:
	nop
	jmp	.L114
.L147:
	nop
	jmp	.L114
.L148:
	nop
	jmp	.L114
.L149:
	nop
.L114:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC1(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$652, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	rsa_ossl_private_decrypt, .-rsa_ossl_private_decrypt
	.type	rsa_ossl_public_decrypt, @function
rsa_ossl_public_decrypt:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -56(%rbp)
	movl	$0, -4(%rbp)
	movl	$-1, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$16384, %eax
	jle	.L151
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$666, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$105, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L152
.L151:
	movq	-80(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jg	.L153
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$671, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L152
.L153:
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$3072, %eax
	jle	.L154
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$64, %eax
	jle	.L154
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$678, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L152
.L154:
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L171
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L157
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$689, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L157:
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$693, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L172
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L159
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$702, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L159:
	movq	-32(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L173
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L161
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$710, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L161:
	movq	-80(%rbp), %rax
	movl	164(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L162
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	208(%rax), %rax
	movq	-80(%rbp), %rcx
	leaq	168(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	call	BN_MONT_CTX_set_locked@PLT
	testq	%rax, %rax
	je	.L174
.L162:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %r10
	movq	-80(%rbp), %rax
	movq	168(%rax), %r8
	movq	-80(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L175
	cmpl	$5, -56(%rbp)
	jne	.L164
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bn_get_words@PLT
	movq	(%rax), %rax
	andl	$15, %eax
	cmpq	$12, %rax
	je	.L164
	movq	-80(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L176
.L164:
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L177
	cmpl	$5, -56(%rbp)
	je	.L166
	cmpl	$5, -56(%rbp)
	jg	.L167
	cmpl	$1, -56(%rbp)
	je	.L168
	cmpl	$3, -56(%rbp)
	je	.L169
	jmp	.L167
.L168:
	movl	-4(%rbp), %edi
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	RSA_padding_check_PKCS1_type_1@PLT
	movl	%eax, -8(%rbp)
	jmp	.L170
.L166:
	movl	-4(%rbp), %edi
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-72(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	RSA_padding_check_X931@PLT
	movl	%eax, -8(%rbp)
	jmp	.L170
.L169:
	movl	-44(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L170
.L167:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$742, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L170:
	cmpl	$0, -8(%rbp)
	jns	.L178
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$746, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L156
.L171:
	nop
	jmp	.L156
.L172:
	nop
	jmp	.L156
.L173:
	nop
	jmp	.L156
.L174:
	nop
	jmp	.L156
.L175:
	nop
	jmp	.L156
.L176:
	nop
	jmp	.L156
.L177:
	nop
	jmp	.L156
.L178:
	nop
.L156:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC1(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$751, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-8(%rbp), %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	rsa_ossl_public_decrypt, .-rsa_ossl_public_decrypt
	.type	rsa_ossl_mod_exp, @function
rsa_ossl_mod_exp:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -32(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L240
	movq	-200(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L182
	movq	-200(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_num
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jle	.L241
	cmpl	$3, -32(%rbp)
	jg	.L241
.L182:
	movq	-200(%rbp), %rax
	movl	164(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L184
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L242
	movq	-200(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-200(%rbp), %rax
	movq	208(%rax), %rax
	movq	-200(%rbp), %rdx
	leaq	176(%rdx), %rdi
	movq	-208(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	call	BN_MONT_CTX_set_locked@PLT
	testq	%rax, %rax
	je	.L186
	movq	-200(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-200(%rbp), %rax
	movq	208(%rax), %rax
	movq	-200(%rbp), %rdx
	leaq	184(%rdx), %rdi
	movq	-208(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	call	BN_MONT_CTX_set_locked@PLT
	testq	%rax, %rax
	jne	.L187
.L186:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L187:
	movl	$0, -28(%rbp)
	jmp	.L188
.L190:
	movq	-200(%rbp), %rax
	movq	136(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-200(%rbp), %rax
	movq	208(%rax), %rax
	movq	-80(%rbp), %rdx
	leaq	32(%rdx), %rdi
	movq	-208(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	call	BN_MONT_CTX_set_locked@PLT
	testq	%rax, %rax
	jne	.L189
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L189:
	addl	$1, -28(%rbp)
.L188:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L190
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %rax
	movq	BN_mod_exp_mont@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L191
	cmpl	$0, -32(%rbp)
	jne	.L191
	movq	-200(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %ebx
	movq	-200(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, %ebx
	jne	.L191
	movl	$1, %eax
	jmp	.L192
.L191:
	movl	$0, %eax
.L192:
	movl	%eax, -24(%rbp)
.L184:
	movq	-200(%rbp), %rax
	movl	164(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L193
	movq	-200(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	208(%rax), %rax
	movq	-200(%rbp), %rcx
	leaq	168(%rcx), %rdi
	movq	-208(%rbp), %rcx
	movq	%rax, %rsi
	call	BN_MONT_CTX_set_locked@PLT
	testq	%rax, %rax
	je	.L243
.L193:
	cmpl	$0, -24(%rbp)
	je	.L194
	movq	-200(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-208(%rbp), %rcx
	movq	-192(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bn_from_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L244
	movq	-200(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-208(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	bn_to_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L244
	movq	-200(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-208(%rbp), %rcx
	movq	-192(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bn_from_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L244
	movq	-200(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-208(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bn_to_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L244
	movq	-200(%rbp), %rax
	movq	176(%rax), %r9
	movq	-200(%rbp), %rax
	movq	64(%rax), %r8
	movq	-200(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-200(%rbp), %rax
	movq	184(%rax), %r10
	movq	-200(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-200(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %r11
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	-208(%rbp)
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	-40(%rbp)
	movq	%r11, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont_consttime_x2@PLT
	addq	$48, %rsp
	testl	%eax, %eax
	je	.L244
	movq	-200(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bn_mod_sub_fixed_top@PLT
	testl	%eax, %eax
	je	.L244
	movq	-200(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-208(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	bn_to_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L244
	movq	-200(%rbp), %rax
	movq	176(%rax), %rcx
	movq	-200(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-208(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bn_mul_mont_fixed_top@PLT
	testl	%eax, %eax
	je	.L244
	movq	-200(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-208(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	bn_mul_fixed_top@PLT
	testl	%eax, %eax
	je	.L244
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	bn_mod_add_fixed_top@PLT
	testl	%eax, %eax
	jne	.L245
	jmp	.L244
.L194:
	call	BN_new@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L246
	movq	-192(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-200(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-208(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L199
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L199:
	call	BN_new@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L200
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L200:
	movq	-200(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %r10
	movq	-200(%rbp), %rax
	movq	184(%rax), %r8
	movq	-200(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-208(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	jne	.L201
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L201:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-200(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-208(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L202
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L202:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	call	BN_new@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L247
	movq	-200(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %r10
	movq	-200(%rbp), %rax
	movq	176(%rax), %r8
	movq	-200(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-208(%rbp), %rdi
	movq	-104(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	jne	.L204
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L204:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	cmpl	$0, -32(%rbp)
	jle	.L205
	call	BN_new@PLT
	movq	%rax, -112(%rbp)
	call	BN_new@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L206
	cmpq	$0, -112(%rbp)
	jne	.L207
.L206:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L207:
	movl	$0, -28(%rbp)
	jmp	.L208
.L212:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -176(%rbp,%rdx,8)
	movl	-28(%rbp), %eax
	cltq
	movq	-176(%rbp,%rax,8), %rax
	testq	%rax, %rax
	jne	.L209
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L209:
	movq	-200(%rbp), %rax
	movq	136(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -80(%rbp)
	movq	-192(%rbp), %rcx
	movq	-120(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-80(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-112(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movq	-208(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L210
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L210:
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %r10
	movq	-80(%rbp), %rax
	movq	32(%rax), %r8
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movl	-28(%rbp), %eax
	cltq
	movq	-176(%rbp,%rax,8), %rax
	movq	-208(%rbp), %rdi
	movq	-112(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	jne	.L211
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L211:
	addl	$1, -28(%rbp)
.L208:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L212
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L205:
	movq	-56(%rbp), %rdx
	movq	-184(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L248
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L214
	movq	-200(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-184(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L249
.L214:
	movq	-200(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-208(%rbp), %rcx
	movq	-184(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L250
	call	BN_new@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L251
	movq	-40(%rbp), %rcx
	movq	-128(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-200(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-208(%rbp), %rsi
	movq	-128(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L217
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L217:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L218
	movq	-200(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-184(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L252
.L218:
	movq	-200(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-208(%rbp), %rcx
	movq	-184(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L253
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L254
	cmpl	$0, -32(%rbp)
	jle	.L255
	call	BN_new@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L256
	movl	$0, -28(%rbp)
	jmp	.L222
.L229:
	movq	-200(%rbp), %rax
	movq	136(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -80(%rbp)
	movl	-28(%rbp), %eax
	cltq
	movq	-176(%rbp,%rax,8), %rcx
	movq	-184(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L223
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L223:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-208(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	jne	.L224
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L224:
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movq	-208(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L225
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L225:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L226
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	jne	.L226
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L226:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-208(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	jne	.L227
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L227:
	movq	-40(%rbp), %rdx
	movq	-184(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	jne	.L228
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L228:
	addl	$1, -28(%rbp)
.L222:
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L229
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L197
.L245:
	nop
	jmp	.L197
.L255:
	nop
.L197:
	movq	-200(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L230
	movq	-200(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L230
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %rax
	movq	BN_mod_exp_mont@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	jne	.L231
	movq	-200(%rbp), %rax
	movq	168(%rax), %r8
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-200(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-208(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	jne	.L232
	jmp	.L181
.L231:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %r10
	movq	-200(%rbp), %rax
	movq	168(%rax), %r8
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-200(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-208(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L257
.L232:
	movq	-192(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L258
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L234
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, -20(%rbp)
	jmp	.L181
.L234:
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-208(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L259
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L236
	movq	-200(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L260
.L236:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L230
	call	BN_new@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.L261
	movq	-200(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-144(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-200(%rbp), %rax
	movq	24(%rax), %rax
	movq	48(%rax), %r10
	movq	-200(%rbp), %rax
	movq	168(%rax), %r8
	movq	-200(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-208(%rbp), %rdi
	movq	-144(%rbp), %rdx
	movq	-192(%rbp), %rsi
	movq	-184(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	jne	.L238
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	jmp	.L181
.L238:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L230:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	bn_correct_top@PLT
	movl	$1, -20(%rbp)
	jmp	.L181
.L240:
	nop
	jmp	.L181
.L241:
	nop
	jmp	.L181
.L242:
	nop
	jmp	.L181
.L243:
	nop
	jmp	.L181
.L244:
	nop
	jmp	.L181
.L246:
	nop
	jmp	.L181
.L247:
	nop
	jmp	.L181
.L248:
	nop
	jmp	.L181
.L249:
	nop
	jmp	.L181
.L250:
	nop
	jmp	.L181
.L251:
	nop
	jmp	.L181
.L252:
	nop
	jmp	.L181
.L253:
	nop
	jmp	.L181
.L254:
	nop
	jmp	.L181
.L256:
	nop
	jmp	.L181
.L257:
	nop
	jmp	.L181
.L258:
	nop
	jmp	.L181
.L259:
	nop
	jmp	.L181
.L260:
	nop
	jmp	.L181
.L261:
	nop
.L181:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	rsa_ossl_mod_exp, .-rsa_ossl_mod_exp
	.type	rsa_ossl_init, @function
rsa_ossl_init:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	164(%rax), %eax
	orl	$6, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 164(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	rsa_ossl_init, .-rsa_ossl_init
	.type	rsa_ossl_finish, @function
rsa_ossl_finish:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L265
.L266:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	addl	$1, -4(%rbp)
.L265:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_num
	cmpl	%eax, -4(%rbp)
	jl	.L266
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	rsa_ossl_finish, .-rsa_ossl_finish
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"rsa_ossl_public_encrypt"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 25
__func__.3:
	.string	"rsa_ossl_private_encrypt"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 11
__func__.2:
	.string	"derive_kdk"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"rsa_ossl_private_decrypt"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 24
__func__.0:
	.string	"rsa_ossl_public_decrypt"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
