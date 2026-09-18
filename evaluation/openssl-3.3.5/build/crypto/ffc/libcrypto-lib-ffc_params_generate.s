	.file	"ffc_params_generate.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/ffc/ffc_params_generate.c"
	.text
	.type	ffc_validate_LN, @function
ffc_validate_LN:
.LFB358:
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
	movl	%ecx, -24(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L2
	cmpq	$1024, -8(%rbp)
	jne	.L3
	cmpq	$160, -16(%rbp)
	jne	.L3
	movl	$80, %eax
	jmp	.L4
.L3:
	cmpq	$2048, -8(%rbp)
	jne	.L5
	cmpq	$224, -16(%rbp)
	je	.L6
	cmpq	$256, -16(%rbp)
	jne	.L5
.L6:
	movl	$112, %eax
	jmp	.L4
.L5:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$127, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L7
.L2:
	cmpl	$0, -20(%rbp)
	jne	.L7
	cmpq	$3071, -8(%rbp)
	jbe	.L8
	cmpq	$255, -16(%rbp)
	jbe	.L8
	movl	$128, %eax
	jmp	.L4
.L8:
	cmpq	$2047, -8(%rbp)
	jbe	.L9
	cmpq	$223, -16(%rbp)
	jbe	.L9
	movl	$112, %eax
	jmp	.L4
.L9:
	cmpq	$1023, -8(%rbp)
	jbe	.L10
	cmpq	$159, -16(%rbp)
	jbe	.L10
	movl	$80, %eax
	jmp	.L4
.L10:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$87, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L7:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	ffc_validate_LN, .-ffc_validate_LN
	.type	generate_unverifiable_g, @function
generate_unverifiable_g:
.LFB359:
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
	movl	$2, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-32(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L13
.L14:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jg	.L20
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_add_word@PLT
	testl	%eax, %eax
	je	.L17
	movq	16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L18
.L17:
	movl	$0, %eax
	jmp	.L13
.L18:
	addl	$1, -4(%rbp)
	jmp	.L12
.L20:
	nop
	movq	24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE359:
	.size	generate_unverifiable_g, .-generate_unverifiable_g
	.type	generate_canonical_g, @function
generate_canonical_g:
.LFB360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%r8, -136(%rbp)
	movq	%r9, -144(%rbp)
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L22
	movl	$0, %eax
	jmp	.L29
.L22:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L29
.L24:
	movl	$1, -8(%rbp)
	jmp	.L25
.L28:
	movl	24(%rbp), %eax
	movb	%al, -96(%rbp)
	movl	-8(%rbp), %eax
	sarl	$8, %eax
	movb	%al, -95(%rbp)
	movl	-8(%rbp), %eax
	movb	%al, -94(%rbp)
	movq	-120(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L26
	movq	40(%rbp), %rdx
	movq	32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L26
	leaq	ggen.0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L26
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L26
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L26
	movq	-136(%rbp), %rdx
	movl	-20(%rbp), %ecx
	leaq	-96(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L26
	movq	-112(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-144(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	je	.L26
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jle	.L27
	movl	$1, -4(%rbp)
	jmp	.L26
.L27:
	addl	$1, -8(%rbp)
.L25:
	cmpl	$65535, -8(%rbp)
	jle	.L28
.L26:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movl	-4(%rbp), %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE360:
	.size	generate_canonical_g, .-generate_canonical_g
	.type	generate_p, @function
generate_p:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movl	%ecx, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -184(%rbp)
	movl	$-1, -20(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L51
	movl	32(%rbp), %eax
	leal	-1(%rax), %ebx
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	je	.L52
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jle	.L53
	movl	$0, -24(%rbp)
	jmp	.L35
.L49:
	cmpl	$0, -24(%rbp)
	je	.L36
	movl	-24(%rbp), %edx
	movq	40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L54
.L36:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movl	$0, -28(%rbp)
	jmp	.L37
.L44:
	movq	-184(%rbp), %rax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.L38
.L41:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	addl	$1, %edx
	movb	%dl, (%rax)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L55
	subl	$1, -32(%rbp)
.L38:
	cmpl	$0, -32(%rbp)
	jns	.L41
	jmp	.L40
.L55:
	nop
.L40:
	movq	-160(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-176(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L56
	movq	-72(%rbp), %rdx
	movl	-76(%rbp), %ecx
	leaq	-144(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L56
	movl	-76(%rbp), %eax
	sall	$3, %eax
	imull	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	je	.L56
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L56
	addl	$1, -28(%rbp)
.L37:
	movl	-28(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jle	.L44
	movl	32(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_mask_bits@PLT
	testl	%eax, %eax
	je	.L57
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_copy@PLT
	testq	%rax, %rax
	je	.L57
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L57
	movq	16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_lshift1@PLT
	testl	%eax, %eax
	je	.L57
	movq	-152(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L57
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L57
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L57
	movq	-64(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	js	.L47
	movq	40(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	jle	.L48
	movq	48(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, -20(%rbp)
	jmp	.L32
.L48:
	cmpl	$0, -80(%rbp)
	jne	.L58
.L47:
	addl	$1, -24(%rbp)
.L35:
	movl	-24(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jle	.L49
	movl	$0, -20(%rbp)
	movq	56(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L32
.L51:
	nop
	jmp	.L32
.L52:
	nop
	jmp	.L32
.L53:
	nop
	jmp	.L32
.L54:
	nop
	jmp	.L32
.L56:
	nop
	jmp	.L32
.L57:
	nop
	jmp	.L32
.L58:
	nop
.L32:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	generate_p, .-generate_p
	.type	generate_q_fips186_4, @function
generate_q_fips186_4:
.LFB362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movl	%ecx, -140(%rbp)
	movq	%r8, -152(%rbp)
	movq	%r9, -160(%rbp)
	movl	$0, -4(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -20(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_bn_get_libctx@PLT
	movq	%rax, -32(%rbp)
.L71:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movq	40(%rbp), %rcx
	movl	%eax, %edx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L73
	cmpl	$0, 16(%rbp)
	je	.L62
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L74
.L62:
	movq	-136(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L75
	movl	-20(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jle	.L64
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movl	-140(%rbp), %eax
	cltq
	subq	%rax, %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L65
.L64:
	leaq	-112(%rbp), %rax
	movq	%rax, -16(%rbp)
.L65:
	movl	-20(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.L66
	movl	-140(%rbp), %eax
	subl	-20(%rbp), %eax
	cltq
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-112(%rbp), %rcx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
.L66:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	orl	$-128, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movl	-140(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-140(%rbp), %eax
	cltq
	leaq	-1(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	orl	$1, %edx
	movb	%dl, (%rax)
	movq	-128(%rbp), %rdx
	movl	-140(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L76
	movq	40(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.L68
	movl	$1, -4(%rbp)
	jmp	.L61
.L68:
	cmpl	$0, 16(%rbp)
	jne	.L69
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movq	32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L61
.L69:
	cmpl	$0, -36(%rbp)
	jne	.L77
	jmp	.L71
.L73:
	nop
	jmp	.L61
.L74:
	nop
	jmp	.L61
.L75:
	nop
	jmp	.L61
.L76:
	nop
	jmp	.L61
.L77:
	nop
.L61:
	movq	24(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	generate_q_fips186_4, .-generate_q_fips186_4
	.type	generate_q_fips186_2, @function
generate_q_fips186_2:
.LFB363:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	%r8, -200(%rbp)
	movq	%r9, -208(%rbp)
	movl	$0, -8(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_bn_get_libctx@PLT
	movq	%rax, -24(%rbp)
.L93:
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movq	40(%rbp), %rcx
	movl	%eax, %edx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L95
	cmpl	$0, 16(%rbp)
	je	.L81
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L96
.L81:
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rcx
	movq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-208(%rbp), %rax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L82
.L85:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	addl	$1, %edx
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L97
	subl	$1, -4(%rbp)
.L82:
	cmpl	$0, -4(%rbp)
	jns	.L85
	jmp	.L84
.L97:
	nop
.L84:
	movq	-184(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L98
	movq	-184(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-192(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L99
	movl	$0, -4(%rbp)
	jmp	.L88
.L89:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-160(%rbp,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	xorl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -160(%rbp,%rax)
	addl	$1, -4(%rbp)
.L88:
	movq	-208(%rbp), %rax
	cmpl	%eax, -4(%rbp)
	jl	.L89
	movzbl	-160(%rbp), %eax
	orl	$-128, %eax
	movb	%al, -160(%rbp)
	movq	-208(%rbp), %rax
	subq	$1, %rax
	movzbl	-160(%rbp,%rax), %edx
	movq	-208(%rbp), %rax
	subq	$1, %rax
	orl	$1, %edx
	movb	%dl, -160(%rbp,%rax)
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	movq	-176(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L100
	movq	40(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	-176(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_check_prime@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L91
	movl	$1, -8(%rbp)
	jmp	.L80
.L91:
	cmpl	$0, -28(%rbp)
	jne	.L101
	movl	$1, 16(%rbp)
	jmp	.L93
.L95:
	nop
	jmp	.L80
.L96:
	nop
	jmp	.L80
.L98:
	nop
	jmp	.L80
.L99:
	nop
	jmp	.L80
.L100:
	nop
	jmp	.L80
.L101:
	nop
.L80:
	movq	24(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	generate_q_fips186_2, .-generate_q_fips186_2
	.section	.rodata
.LC1:
	.string	"SHA1"
.LC2:
	.string	"SHA-224"
.LC3:
	.string	"SHA-256"
	.text
	.type	default_mdname, @function
default_mdname:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$160, -8(%rbp)
	jne	.L103
	leaq	.LC1(%rip), %rax
	jmp	.L104
.L103:
	cmpq	$224, -8(%rbp)
	jne	.L105
	leaq	.LC2(%rip), %rax
	jmp	.L104
.L105:
	cmpq	$256, -8(%rbp)
	jne	.L106
	leaq	.LC3(%rip), %rax
	jmp	.L104
.L106:
	movl	$0, %eax
.L104:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	default_mdname, .-default_mdname
	.globl	ossl_ffc_params_FIPS186_4_gen_verify
	.type	ossl_ffc_params_FIPS186_4_gen_verify, @function
ossl_ffc_params_FIPS186_4_gen_verify:
.LFB365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movl	%edx, -228(%rbp)
	movl	%ecx, -232(%rbp)
	movq	%r8, -240(%rbp)
	movq	%r9, -248(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -120(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -192(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -196(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	cmpl	$0, -228(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.L108
	movq	-224(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, -116(%rbp)
	jmp	.L109
.L108:
	movl	$0, -116(%rbp)
.L109:
	movq	16(%rbp), %rax
	movl	$0, (%rax)
	movq	-224(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-224(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -112(%rbp)
	jmp	.L111
.L110:
	cmpq	$0, -248(%rbp)
	jne	.L112
	cmpq	$2047, -240(%rbp)
	jbe	.L113
	movq	$256, -248(%rbp)
	jmp	.L112
.L113:
	movq	$160, -248(%rbp)
.L112:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	default_mdname
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.L114
	movq	16(%rbp), %rax
	movl	$32, (%rax)
	jmp	.L115
.L114:
	movq	-224(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-144(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -112(%rbp)
.L111:
	cmpq	$0, -112(%rbp)
	je	.L173
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jle	.L174
	cmpq	$0, -248(%rbp)
	jne	.L118
	movl	-148(%rbp), %eax
	sall	$3, %eax
	cltq
	movq	%rax, -248(%rbp)
.L118:
	movq	-248(%rbp), %rax
	shrq	$3, %rax
	movl	%eax, -152(%rbp)
	movq	-240(%rbp), %rax
	cmpq	%rax, -248(%rbp)
	jnb	.L119
	movl	-136(%rbp), %ecx
	movl	-232(%rbp), %edx
	movq	-248(%rbp), %rsi
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	ffc_validate_LN
	testl	%eax, %eax
	jne	.L120
.L119:
	movq	16(%rbp), %rax
	movl	$131072, (%rax)
	jmp	.L115
.L120:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L175
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L176
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -160(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -168(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -176(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L177
	movq	-224(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L124
	movl	-148(%rbp), %eax
	cltq
	movq	%rax, -56(%rbp)
.L124:
	movq	-224(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-224(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.L125:
	cmpl	$0, -136(%rbp)
	jne	.L126
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%dl
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	sete	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L127
	movq	16(%rbp), %rax
	movl	$2048, (%rax)
	jmp	.L115
.L126:
	movl	-116(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L128
	cmpq	$0, -32(%rbp)
	je	.L129
	movq	-224(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jns	.L128
.L129:
	movq	16(%rbp), %rax
	movl	$512, (%rax)
	jmp	.L115
.L128:
	movl	-116(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L127
	movq	-224(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L127
	movq	16(%rbp), %rax
	movl	$1024, (%rax)
	jmp	.L115
.L127:
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movl	-116(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L130
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L131
.L130:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L178
	movq	-56(%rbp), %rax
	salq	$3, %rax
	cmpq	-248(%rbp), %rax
	jnb	.L133
	movq	16(%rbp), %rax
	movl	$262144, (%rax)
	jmp	.L115
.L133:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$643, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L179
	cmpq	$0, -32(%rbp)
	jne	.L135
	cmpl	$0, -136(%rbp)
	je	.L136
	movq	16(%rbp), %rax
	movl	$512, (%rax)
	jmp	.L115
.L136:
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$654, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L180
.L135:
	movq	-240(%rbp), %rax
	sall	$2, %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -136(%rbp)
	je	.L137
	movq	-224(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	%eax, -44(%rbp)
	jge	.L138
	movq	16(%rbp), %rax
	movl	$4096, (%rax)
	jmp	.L115
.L138:
	movq	-224(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -44(%rbp)
.L137:
	movq	-240(%rbp), %rax
	subq	$1, %rax
	movl	-148(%rbp), %edx
	sall	$3, %edx
	movslq	%edx, %rbx
	movl	$0, %edx
	divq	%rbx
	movl	%eax, -132(%rbp)
	movq	-240(%rbp), %rax
	subl	$1, %eax
	movl	%eax, %ebx
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-176(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	je	.L181
.L139:
	movq	-224(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -32(%rbp)
	setne	%al
	movzbl	%al, %edi
	movq	-56(%rbp), %r9
	movq	-32(%rbp), %r10
	movl	-152(%rbp), %ecx
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-96(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	leaq	-192(%rbp), %r8
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	generate_q_fips186_4
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L182
	cmpl	$0, -136(%rbp)
	je	.L141
	movq	-224(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L141
	movq	16(%rbp), %rax
	movl	$16384, (%rax)
	jmp	.L115
.L141:
	movq	24(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L183
	movq	24(%rbp), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L184
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-240(%rbp), %rax
	movl	%eax, %r10d
	movq	-56(%rbp), %r9
	movq	-40(%rbp), %r8
	movl	-132(%rbp), %ecx
	movl	-44(%rbp), %edx
	movq	-112(%rbp), %rsi
	movq	-96(%rbp), %rax
	pushq	16(%rbp)
	leaq	-188(%rbp), %rdi
	pushq	%rdi
	pushq	24(%rbp)
	pushq	%r10
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	movq	%rax, %rdi
	call	generate_p
	addq	$48, %rsp
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	jg	.L185
	cmpl	$0, -120(%rbp)
	js	.L186
	movq	-224(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L139
	movq	16(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L115
.L185:
	nop
	movq	24(%rbp), %rax
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L187
	cmpl	$0, -136(%rbp)
	je	.L149
	movl	-188(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jne	.L188
	movq	-224(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L188
.L149:
	movl	-116(%rbp), %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L189
	nop
.L131:
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L190
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	je	.L191
	movl	-116(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L154
	movq	-224(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-184(%rbp), %r8
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ffc_params_validate_unverifiable_g@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L192
.L154:
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L193
	movq	-96(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L193
	cmpq	$0, -32(%rbp)
	je	.L157
	movq	-224(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	$-1, %eax
	je	.L157
	movl	$1, -84(%rbp)
	movq	-224(%rbp), %rax
	movl	56(%rax), %edi
	movq	-72(%rbp), %r9
	movq	-184(%rbp), %r8
	movq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rax
	pushq	-56(%rbp)
	pushq	-32(%rbp)
	pushq	%rdi
	pushq	-168(%rbp)
	movq	%rax, %rdi
	call	generate_canonical_g
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L158
	movq	16(%rbp), %rax
	movl	$1024, (%rax)
	jmp	.L115
.L158:
	cmpl	$0, -136(%rbp)
	je	.L194
	movq	-224(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L194
	movq	16(%rbp), %rax
	movl	$32768, (%rax)
	jmp	.L115
.L157:
	cmpl	$0, -136(%rbp)
	jne	.L160
	movq	-168(%rbp), %r9
	movq	-72(%rbp), %r8
	movq	-184(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rax
	leaq	-196(%rbp), %rdi
	pushq	%rdi
	pushq	-160(%rbp)
	movq	%rax, %rdi
	call	generate_unverifiable_g
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L195
	jmp	.L160
.L194:
	nop
.L160:
	movq	24(%rbp), %rax
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L196
	cmpl	$0, -136(%rbp)
	jne	.L197
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -72(%rbp)
	je	.L162
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-224(%rbp), %rdx
	movq	%rax, (%rdx)
.L162:
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -64(%rbp)
	je	.L163
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-224(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L163:
	movq	-224(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -128(%rbp)
	je	.L164
	movq	-224(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-224(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L164:
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L198
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L198
	movq	-224(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L198
	movl	-188(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_set_validate_params@PLT
	testl	%eax, %eax
	je	.L199
	movl	-196(%rbp), %edx
	movq	-224(%rbp), %rax
	movl	%edx, 60(%rax)
	jmp	.L151
.L189:
	nop
	jmp	.L151
.L197:
	nop
.L151:
	movl	-116(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L168
	cmpl	$0, -84(%rbp)
	jne	.L168
	movl	$2, -20(%rbp)
	jmp	.L115
.L168:
	movl	$1, -20(%rbp)
	jmp	.L115
.L173:
	nop
	jmp	.L115
.L174:
	nop
	jmp	.L115
.L175:
	nop
	jmp	.L115
.L176:
	nop
	jmp	.L115
.L177:
	nop
	jmp	.L115
.L178:
	nop
	jmp	.L115
.L179:
	nop
	jmp	.L115
.L180:
	nop
	jmp	.L115
.L181:
	nop
	jmp	.L115
.L182:
	nop
	jmp	.L115
.L183:
	nop
	jmp	.L115
.L184:
	nop
	jmp	.L115
.L186:
	nop
	jmp	.L115
.L187:
	nop
	jmp	.L115
.L188:
	nop
	jmp	.L115
.L190:
	nop
	jmp	.L115
.L191:
	nop
	jmp	.L115
.L192:
	nop
	jmp	.L115
.L193:
	nop
	jmp	.L115
.L195:
	nop
	jmp	.L115
.L196:
	nop
	jmp	.L115
.L198:
	nop
	jmp	.L115
.L199:
	nop
.L115:
	movq	-224(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L169
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$794, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L169:
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$795, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -96(%rbp)
	je	.L170
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
.L170:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	ossl_ffc_params_FIPS186_4_gen_verify, .-ossl_ffc_params_FIPS186_4_gen_verify
	.globl	ossl_ffc_params_FIPS186_2_gen_verify
	.type	ossl_ffc_params_FIPS186_2_gen_verify, @function
ossl_ffc_params_FIPS186_2_gen_verify:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movl	%edx, -276(%rbp)
	movl	%ecx, -280(%rbp)
	movq	%r8, -288(%rbp)
	movq	%r9, -296(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -248(%rbp)
	movq	$0, -72(%rbp)
	movl	$-1, -252(%rbp)
	movq	-272(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-272(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)
	cmpl	$0, -276(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	je	.L201
	movq	-272(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, -84(%rbp)
	jmp	.L202
.L201:
	movl	$0, -84(%rbp)
.L202:
	movq	16(%rbp), %rax
	movl	$0, (%rax)
	movq	-272(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L203
	movq	-272(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-272(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-264(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -56(%rbp)
	jmp	.L204
.L203:
	cmpq	$0, -296(%rbp)
	jne	.L205
	cmpq	$2047, -288(%rbp)
	jbe	.L206
	movq	$256, -296(%rbp)
	jmp	.L205
.L206:
	movq	$160, -296(%rbp)
.L205:
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	default_mdname
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.L207
	movq	16(%rbp), %rax
	movl	$32, (%rax)
	jmp	.L208
.L207:
	movq	-272(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-128(%rbp), %rcx
	movq	-264(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -56(%rbp)
.L204:
	cmpq	$0, -56(%rbp)
	je	.L255
	cmpq	$0, -296(%rbp)
	jne	.L210
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	sall	$3, %eax
	cltq
	movq	%rax, -296(%rbp)
.L210:
	movq	-296(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, -136(%rbp)
	cmpq	$511, -288(%rbp)
	ja	.L211
	movq	16(%rbp), %rax
	movl	$131072, (%rax)
	jmp	.L208
.L211:
	cmpq	$20, -136(%rbp)
	je	.L212
	cmpq	$28, -136(%rbp)
	je	.L212
	cmpq	$32, -136(%rbp)
	je	.L212
	movq	16(%rbp), %rax
	movl	$32, (%rax)
	jmp	.L208
.L212:
	movq	-288(%rbp), %rax
	addq	$63, %rax
	andq	$-64, %rax
	movq	%rax, -288(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L213
	movq	-80(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jnb	.L214
	movq	16(%rbp), %rax
	movl	$262144, (%rax)
	jmp	.L208
.L214:
	movq	-80(%rbp), %rax
	cmpq	%rax, -136(%rbp)
	jnb	.L215
	movq	-136(%rbp), %rax
	movq	%rax, -80(%rbp)
.L215:
	movq	-80(%rbp), %rdx
	movq	-112(%rbp), %rcx
	leaq	-208(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L213:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L256
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -144(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.L257
	movq	-288(%rbp), %rax
	subl	$1, %eax
	movl	%eax, %ebx
	call	BN_value_one@PLT
	movq	%rax, %rcx
	movq	-160(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_lshift@PLT
	testl	%eax, %eax
	je	.L258
	cmpl	$0, -116(%rbp)
	jne	.L219
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%dl
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	setne	%al
	xorl	%edx, %eax
	testb	%al, %al
	je	.L220
	movq	16(%rbp), %rax
	movl	$2048, (%rax)
	jmp	.L208
.L219:
	movl	-84(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L221
	cmpq	$0, -112(%rbp)
	je	.L222
	movq	-272(%rbp), %rax
	movl	48(%rax), %eax
	testl	%eax, %eax
	jns	.L221
.L222:
	movq	16(%rbp), %rax
	movl	$512, (%rax)
	jmp	.L208
.L221:
	movl	-84(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L220
	movq	-272(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L220
	movq	16(%rbp), %rax
	movl	$1024, (%rax)
	jmp	.L208
.L220:
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L223
	movl	-84(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L223
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L224
.L223:
	cmpq	$0, -112(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
.L233:
	movq	-136(%rbp), %r9
	leaq	-208(%rbp), %r8
	leaq	-240(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	leaq	-244(%rbp), %rdi
	pushq	%rdi
	movl	-64(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	generate_q_fips186_2
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L259
	movq	24(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L260
	movq	24(%rbp), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L261
	movq	-288(%rbp), %rax
	subq	$1, %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$7, %rax
	movl	%eax, -100(%rbp)
	movq	-288(%rbp), %rax
	sall	$2, %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -116(%rbp)
	je	.L228
	movq	-272(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jge	.L229
	movq	16(%rbp), %rax
	movl	$4096, (%rax)
	jmp	.L208
.L229:
	movq	-272(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -60(%rbp)
.L228:
	movq	-288(%rbp), %rax
	movl	%eax, %r10d
	movq	-136(%rbp), %r9
	leaq	-240(%rbp), %r8
	movl	-100(%rbp), %ecx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	pushq	16(%rbp)
	leaq	-248(%rbp), %rdi
	pushq	%rdi
	pushq	24(%rbp)
	pushq	%r10
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%rax, %rdi
	call	generate_p
	addq	$48, %rsp
	movl	%eax, -164(%rbp)
	cmpl	$0, -164(%rbp)
	jg	.L262
	cmpl	$-1, -164(%rbp)
	je	.L263
	movl	$1, -64(%rbp)
	jmp	.L233
.L262:
	nop
	movq	24(%rbp), %rax
	movl	$1, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L264
	cmpl	$0, -116(%rbp)
	je	.L235
	movl	-248(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	je	.L236
	movq	16(%rbp), %rax
	movl	$65536, (%rax)
	jmp	.L208
.L236:
	movq	-272(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	je	.L235
	movq	16(%rbp), %rax
	movl	$8192, (%rax)
	jmp	.L208
.L235:
	movl	-84(%rbp), %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	.L265
	nop
.L224:
	call	BN_MONT_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L266
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_MONT_CTX_set@PLT
	testl	%eax, %eax
	je	.L267
	cmpl	$0, -116(%rbp)
	jne	.L240
	call	BN_value_one@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L268
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L269
	movq	-144(%rbp), %r9
	movq	-40(%rbp), %r8
	movq	-152(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	leaq	-252(%rbp), %rdi
	pushq	%rdi
	pushq	-160(%rbp)
	movq	%rax, %rdi
	call	generate_unverifiable_g
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L243
	jmp	.L208
.L240:
	movl	-84(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L243
	movq	-272(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-152(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_ffc_params_validate_unverifiable_g@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L270
.L243:
	movq	24(%rbp), %rax
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BN_GENCB_call@PLT
	testl	%eax, %eax
	je	.L271
	cmpl	$0, -116(%rbp)
	jne	.L272
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L245
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-272(%rbp), %rdx
	movq	%rax, (%rdx)
.L245:
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -32(%rbp)
	je	.L246
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-272(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L246:
	movq	-272(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -96(%rbp)
	je	.L247
	movq	-272(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-272(%rbp), %rdx
	movq	%rax, 16(%rdx)
.L247:
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L273
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L273
	movq	-272(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L273
	movl	-248(%rbp), %ecx
	movq	-136(%rbp), %rdx
	leaq	-208(%rbp), %rsi
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_ffc_params_set_validate_params@PLT
	testl	%eax, %eax
	je	.L274
	movl	-252(%rbp), %edx
	movq	-272(%rbp), %rax
	movl	%edx, 60(%rax)
	jmp	.L237
.L265:
	nop
	jmp	.L237
.L272:
	nop
.L237:
	movl	-84(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L251
	movl	$2, -20(%rbp)
	jmp	.L208
.L251:
	movl	$1, -20(%rbp)
	jmp	.L208
.L255:
	nop
	jmp	.L208
.L256:
	nop
	jmp	.L208
.L257:
	nop
	jmp	.L208
.L258:
	nop
	jmp	.L208
.L259:
	nop
	jmp	.L208
.L260:
	nop
	jmp	.L208
.L261:
	nop
	jmp	.L208
.L263:
	nop
	jmp	.L208
.L264:
	nop
	jmp	.L208
.L266:
	nop
	jmp	.L208
.L267:
	nop
	jmp	.L208
.L268:
	nop
	jmp	.L208
.L269:
	nop
	jmp	.L208
.L270:
	nop
	jmp	.L208
.L271:
	nop
	jmp	.L208
.L273:
	nop
	jmp	.L208
.L274:
	nop
.L208:
	cmpq	$0, -72(%rbp)
	je	.L252
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
.L252:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	ossl_ffc_params_FIPS186_2_gen_verify, .-ossl_ffc_params_FIPS186_2_gen_verify
	.globl	ossl_ffc_params_FIPS186_4_generate
	.type	ossl_ffc_params_FIPS186_4_generate, @function
ossl_ffc_params_FIPS186_4_generate:
.LFB367:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_4_gen_verify@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ossl_ffc_params_FIPS186_4_generate, .-ossl_ffc_params_FIPS186_4_generate
	.globl	ossl_ffc_params_FIPS186_2_generate
	.type	ossl_ffc_params_FIPS186_2_generate, @function
ossl_ffc_params_FIPS186_2_generate:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	16(%rbp)
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_2_gen_verify@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L278
	movl	$0, %eax
	jmp	.L279
.L278:
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_ffc_params_enable_flags@PLT
	movl	$1, %eax
.L279:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ossl_ffc_params_FIPS186_2_generate, .-ossl_ffc_params_FIPS186_2_generate
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"ffc_validate_LN"
	.type	ggen.0, @object
	.size	ggen.0, 4
ggen.0:
	.ascii	"ggen"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
