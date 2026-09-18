	.file	"deterministic_nonce.c"
	.text
	.type	bits2int, @function
bits2int:
.LFB320:
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
	movq	-48(%rbp), %rax
	sall	$3, %eax
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	-4(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L4
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_rshift@PLT
	jmp	.L3
.L4:
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	bits2int, .-bits2int
	.type	bits2int_consttime, @function
bits2int_consttime:
.LFB321:
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
	movq	-48(%rbp), %rax
	subq	$8, %rax
	sall	$3, %eax
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_bn_mask_bits_fixed_top@PLT
	movl	-4(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L8
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bn_rshift_fixed_top@PLT
	jmp	.L7
.L8:
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	bits2int_consttime, .-bits2int_consttime
	.type	int2octets, @function
int2octets:
.LFB322:
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
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	int2octets, .-int2octets
	.type	bits2octets, @function
bits2octets:
.LFB323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -4(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L17
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	bits2int
	testl	%eax, %eax
	je	.L17
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L15
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	je	.L18
.L15:
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	int2octets
	movl	%eax, -4(%rbp)
	jmp	.L14
.L17:
	nop
	jmp	.L14
.L18:
	nop
.L14:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	bits2octets, .-bits2octets
	.section	.rodata
.LC0:
	.string	"HMAC-DRBG-KDF"
.LC1:
	.string	"digest"
.LC2:
	.string	"properties"
.LC3:
	.string	"entropy"
.LC4:
	.string	"nonce"
	.text
	.type	kdf_setup, @function
kdf_setup:
.LFB324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movq	%r9, -288(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	16(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-288(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	cmpq	$0, -32(%rbp)
	je	.L26
	leaq	-240(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-336(%rbp), %rax
	movq	-248(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rbx)
	cmpq	$0, 16(%rbp)
	je	.L22
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-336(%rbp), %rax
	movq	16(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rbx)
.L22:
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-336(%rbp), %rax
	movq	-264(%rbp), %rcx
	movq	-256(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-336(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	-272(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-304(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-240(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_CTX_set_params@PLT
	testl	%eax, %eax
	jle	.L27
	movq	-32(%rbp), %rax
	jmp	.L25
.L26:
	nop
	jmp	.L21
.L27:
	nop
.L21:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	$0, %eax
.L25:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	kdf_setup, .-kdf_setup
	.section	.rodata
	.align 8
.LC5:
	.string	"../crypto/deterministic_nonce.c"
	.text
	.globl	ossl_gen_deterministic_nonce_rfc6979
	.type	ossl_gen_deterministic_nonce_rfc6979, @function
ossl_gen_deterministic_nonce_rfc6979:
.LFB325:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$8, -72(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L30
.L31:
	movl	-20(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	leaq	.LC5(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$206, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L32
	movl	$0, %eax
	jmp	.L30
.L32:
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-16(%rbp), %edx
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	int2octets
	testl	%eax, %eax
	je	.L39
	movq	-120(%rbp), %r8
	movq	-112(%rbp), %rdi
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	bits2octets
	testl	%eax, %eax
	je	.L39
	movl	-16(%rbp), %eax
	movslq	%eax, %rdi
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	16(%rbp), %r8
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-128(%rbp), %rax
	subq	$8, %rsp
	pushq	24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	kdf_setup
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L40
.L36:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	testl	%eax, %eax
	je	.L41
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movl	-20(%rbp), %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	bits2int_consttime
	testl	%eax, %eax
	je	.L41
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_bn_is_word_fixed_top@PLT
	testl	%eax, %eax
	jne	.L36
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_bn_is_word_fixed_top@PLT
	testl	%eax, %eax
	jne	.L36
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L36
	movl	$1, -12(%rbp)
	jmp	.L35
.L39:
	nop
	jmp	.L35
.L40:
	nop
	jmp	.L35
.L41:
	nop
.L35:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	leaq	.LC5(%rip), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$238, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-12(%rbp), %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	ossl_gen_deterministic_nonce_rfc6979, .-ossl_gen_deterministic_nonce_rfc6979
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
