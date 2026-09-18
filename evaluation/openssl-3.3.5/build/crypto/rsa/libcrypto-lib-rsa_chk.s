	.file	"rsa_chk.c"
	.text
	.type	sk_RSA_PRIME_INFO_num, @function
sk_RSA_PRIME_INFO_num:
.LFB121:
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
.LFE121:
	.size	sk_RSA_PRIME_INFO_num, .-sk_RSA_PRIME_INFO_num
	.type	sk_RSA_PRIME_INFO_value, @function
sk_RSA_PRIME_INFO_value:
.LFB122:
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
.LFE122:
	.size	sk_RSA_PRIME_INFO_value, .-sk_RSA_PRIME_INFO_value
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_chk.c"
	.text
	.type	rsa_validate_keypair_multiprime, @function
rsa_validate_keypair_multiprime:
.LFB146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-104(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L7
.L6:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-104(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L9
	movq	-104(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_num
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.L10
	movl	-24(%rbp), %eax
	leal	1(%rax), %ebx
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, %edi
	call	ossl_rsa_multip_cap@PLT
	cmpl	%eax, %ebx
	jl	.L9
.L10:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L8
.L9:
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L11
	cmpq	$0, -48(%rbp)
	je	.L11
	cmpq	$0, -56(%rbp)
	je	.L11
	cmpq	$0, -64(%rbp)
	je	.L11
	cmpq	$0, -72(%rbp)
	je	.L11
	cmpq	$0, -80(%rbp)
	jne	.L12
.L11:
	movl	$-1, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$54, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L13
.L12:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L14
	movl	$0, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L14:
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L15:
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	cmpl	$1, %eax
	je	.L16
	movl	$0, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L16:
	movq	-104(%rbp), %rax
	movq	72(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	cmpl	$1, %eax
	je	.L17
	movl	$0, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$76, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$129, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L17:
	movl	$0, -28(%rbp)
	jmp	.L18
.L20:
	movq	-104(%rbp), %rax
	movq	136(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	cmpl	$1, %eax
	je	.L19
	movl	$0, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$170, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L19:
	addl	$1, -28(%rbp)
.L18:
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L20
	movq	-104(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	jne	.L21
	movl	$-1, -20(%rbp)
	jmp	.L13
.L21:
	movl	$0, -28(%rbp)
	jmp	.L22
.L24:
	movq	-104(%rbp), %rax
	movq	136(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	jne	.L23
	movl	$-1, -20(%rbp)
	jmp	.L13
.L23:
	addl	$1, -28(%rbp)
.L22:
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L24
	movq	-104(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L25
	movl	$0, -20(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L26
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$103, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$172, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L25
.L26:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$105, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L25:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L27
	movl	$-1, -20(%rbp)
	jmp	.L13
.L27:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$-1, -20(%rbp)
	jmp	.L13
.L28:
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$-1, -20(%rbp)
	jmp	.L13
.L29:
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_gcd@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$-1, -20(%rbp)
	jmp	.L13
.L30:
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L31
	movl	$-1, -20(%rbp)
	jmp	.L13
.L31:
	movl	$0, -28(%rbp)
	jmp	.L32
.L37:
	movq	-104(%rbp), %rax
	movq	136(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -88(%rbp)
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L33
	movl	$-1, -20(%rbp)
	jmp	.L13
.L33:
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$-1, -20(%rbp)
	jmp	.L13
.L34:
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_gcd@PLT
	testl	%eax, %eax
	jne	.L35
	movl	$-1, -20(%rbp)
	jmp	.L13
.L35:
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L36
	movl	$-1, -20(%rbp)
	jmp	.L13
.L36:
	addl	$1, -28(%rbp)
.L32:
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L37
	movq	-104(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	jne	.L38
	movl	$-1, -20(%rbp)
	jmp	.L13
.L38:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L39:
	movq	-104(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-104(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-104(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L40
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$-1, -20(%rbp)
	jmp	.L13
.L41:
	movq	-104(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L42
	movl	$-1, -20(%rbp)
	jmp	.L13
.L42:
	movq	-104(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L43
	movl	$0, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$172, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L43:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$-1, -20(%rbp)
	jmp	.L13
.L44:
	movq	-104(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$-1, -20(%rbp)
	jmp	.L13
.L45:
	movq	-104(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L46
	movl	$0, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$186, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L46:
	movq	-104(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	jne	.L47
	movl	$-1, -20(%rbp)
	jmp	.L13
.L47:
	movq	-104(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L40
	movl	$0, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$196, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L40:
	movl	$0, -28(%rbp)
	jmp	.L48
.L54:
	movq	-104(%rbp), %rax
	movq	136(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_RSA_PRIME_INFO_value
	movq	%rax, -88(%rbp)
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	jne	.L49
	movl	$-1, -20(%rbp)
	jmp	.L13
.L49:
	movq	-104(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$-1, -20(%rbp)
	jmp	.L13
.L50:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L51
	movl	$0, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$169, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L51:
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	jne	.L52
	movl	$-1, -20(%rbp)
	jmp	.L13
.L52:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L53
	movl	$0, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$222, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$168, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L53:
	addl	$1, -28(%rbp)
.L48:
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L54
	nop
.L13:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
.L8:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	rsa_validate_keypair_multiprime, .-rsa_validate_keypair_multiprime
	.globl	ossl_rsa_validate_public
	.type	ossl_rsa_validate_public, @function
ossl_rsa_validate_public:
.LFB147:
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
	call	ossl_rsa_sp800_56b_check_public@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	ossl_rsa_validate_public, .-ossl_rsa_validate_public
	.globl	ossl_rsa_validate_private
	.type	ossl_rsa_validate_private, @function
ossl_rsa_validate_private:
.LFB148:
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
	call	ossl_rsa_sp800_56b_check_private@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.size	ossl_rsa_validate_private, .-ossl_rsa_validate_private
	.globl	ossl_rsa_validate_pairwise
	.type	ossl_rsa_validate_pairwise, @function
ossl_rsa_validate_pairwise:
.LFB149:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	rsa_validate_keypair_multiprime
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.size	ossl_rsa_validate_pairwise, .-ossl_rsa_validate_pairwise
	.globl	RSA_check_key
	.type	RSA_check_key, @function
RSA_check_key:
.LFB150:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	RSA_check_key_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE150:
	.size	RSA_check_key, .-RSA_check_key
	.globl	RSA_check_key_ex
	.type	RSA_check_key_ex, @function
RSA_check_key_ex:
.LFB151:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rsa_validate_keypair_multiprime
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE151:
	.size	RSA_check_key_ex, .-RSA_check_key_ex
	.section	.rodata
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 32
__func__.0:
	.string	"rsa_validate_keypair_multiprime"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
