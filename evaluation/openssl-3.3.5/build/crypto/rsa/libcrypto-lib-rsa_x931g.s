	.file	"rsa_x931g.c"
	.text
	.globl	RSA_X931_derive_ex
	.type	RSA_X931_derive_ex, @function
RSA_X931_derive_ex:
.LFB146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L29
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L30
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L31
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movq	56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L7
	jmp	.L3
.L6:
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, 56(%rbp)
.L7:
	cmpq	$0, 24(%rbp)
	je	.L8
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L8
	call	BN_new@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	16(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	24(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	subq	$8, %rsp
	pushq	64(%rbp)
	pushq	-8(%rbp)
	pushq	56(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_X931_derive_prime_ex@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L33
.L8:
	cmpq	$0, 48(%rbp)
	je	.L10
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	call	BN_new@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	40(%rbp), %r8
	movq	32(%rbp), %rdi
	movq	48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	subq	$8, %rsp
	pushq	64(%rbp)
	pushq	-8(%rbp)
	pushq	56(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_X931_derive_prime_ex@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L35
.L10:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	$2, %eax
	jmp	.L14
.L13:
	call	BN_new@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-72(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L37
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L38
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L39
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L40
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_gcd@PLT
	testl	%eax, %eax
	je	.L41
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L42
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L43
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_mod_inverse@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L44
	call	BN_new@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L46
	call	BN_new@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 88(%rdx)
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L48
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_mod_inverse@PLT
	movq	-72(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-72(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-72(%rbp), %rax
	movl	216(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 216(%rax)
	movl	$1, -20(%rbp)
	jmp	.L3
.L29:
	nop
	jmp	.L3
.L30:
	nop
	jmp	.L3
.L31:
	nop
	jmp	.L3
.L32:
	nop
	jmp	.L3
.L33:
	nop
	jmp	.L3
.L34:
	nop
	jmp	.L3
.L35:
	nop
	jmp	.L3
.L36:
	nop
	jmp	.L3
.L37:
	nop
	jmp	.L3
.L38:
	nop
	jmp	.L3
.L39:
	nop
	jmp	.L3
.L40:
	nop
	jmp	.L3
.L41:
	nop
	jmp	.L3
.L42:
	nop
	jmp	.L3
.L43:
	nop
	jmp	.L3
.L44:
	nop
	jmp	.L3
.L45:
	nop
	jmp	.L3
.L46:
	nop
	jmp	.L3
.L47:
	nop
	jmp	.L3
.L48:
	nop
	jmp	.L3
.L49:
	nop
.L3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.size	RSA_X931_derive_ex, .-RSA_X931_derive_ex
	.globl	RSA_X931_generate_key_ex
	.type	RSA_X931_generate_key_ex, @function
RSA_X931_generate_key_ex:
.LFB147:
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
	movq	%rcx, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L62
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L63
	movq	-32(%rbp), %rcx
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_X931_generate_Xpq@PLT
	testl	%eax, %eax
	je	.L64
	call	BN_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 64(%rdx)
	call	BN_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 72(%rdx)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	$8, %rsp
	pushq	-64(%rbp)
	pushq	-32(%rbp)
	pushq	-56(%rbp)
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_X931_generate_prime_ex@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L66
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdx
	subq	$8, %rsp
	pushq	-64(%rbp)
	pushq	-32(%rbp)
	pushq	-56(%rbp)
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_X931_generate_prime_ex@PLT
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L67
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	RSA_X931_derive_ex@PLT
	addq	$64, %rsp
	testl	%eax, %eax
	je	.L68
	movq	-40(%rbp), %rax
	movl	216(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 216(%rax)
	movl	$1, -4(%rbp)
	jmp	.L52
.L62:
	nop
	jmp	.L52
.L63:
	nop
	jmp	.L52
.L64:
	nop
	jmp	.L52
.L65:
	nop
	jmp	.L52
.L66:
	nop
	jmp	.L52
.L67:
	nop
	jmp	.L52
.L68:
	nop
.L52:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	cmpl	$0, -4(%rbp)
	je	.L60
	movl	$1, %eax
	jmp	.L61
.L60:
	movl	$0, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.size	RSA_X931_generate_key_ex, .-RSA_X931_generate_key_ex
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
