	.file	"rsa_pmeth.c"
	.text
	.type	constant_time_msb, @function
constant_time_msb:
.LFB6:
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
.LFE6:
	.size	constant_time_msb, .-constant_time_msb
	.type	constant_time_msb_s, @function
constant_time_msb_s:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	sarq	$63, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	constant_time_msb_s, .-constant_time_msb_s
	.type	value_barrier, @function
value_barrier:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	value_barrier, .-value_barrier
	.type	value_barrier_s, @function
value_barrier_s:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	value_barrier_s, .-value_barrier_s
	.type	constant_time_select, @function
constant_time_select:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	value_barrier
	andl	-16(%rbp), %eax
	movl	%eax, %ebx
	movl	-12(%rbp), %eax
	notl	%eax
	movl	%eax, %edi
	call	value_barrier
	andl	-20(%rbp), %eax
	orl	%ebx, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	constant_time_select, .-constant_time_select
	.type	constant_time_select_s, @function
constant_time_select_s:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	value_barrier_s
	andq	-24(%rbp), %rax
	movq	%rax, %rbx
	movq	-16(%rbp), %rax
	notq	%rax
	movq	%rax, %rdi
	call	value_barrier_s
	andq	-32(%rbp), %rax
	orq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	constant_time_select_s, .-constant_time_select_s
	.type	constant_time_select_int, @function
constant_time_select_int:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	constant_time_select
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	constant_time_select_int, .-constant_time_select_int
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB183:
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
.LFE183:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB184:
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
.LFE184:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../crypto/rsa/rsa_pmeth.c"
	.text
	.type	pkey_rsa_init, @function
pkey_rsa_init:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$64, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movl	$2048, (%rax)
	movq	-8(%rbp), %rax
	movl	$2, 16(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$912, %eax
	jne	.L22
	movq	-8(%rbp), %rax
	movl	$6, 28(%rax)
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movl	$1, 28(%rax)
.L23:
	movq	-8(%rbp), %rax
	movl	$-2, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 52(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 80(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 152(%rax)
	movq	-8(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-24(%rbp), %rax
	movl	$2, 112(%rax)
	movl	$1, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	pkey_rsa_init, .-pkey_rsa_init
	.type	pkey_rsa_copy, @function
pkey_rsa_copy:
.LFB767:
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
	movq	%rax, %rdi
	call	pkey_rsa_init
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L26
.L25:
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_dup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	movl	$0, %eax
	jmp	.L26
.L27:
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	80(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$105, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$106, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	movl	$0, %eax
	jmp	.L26
.L29:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
.L28:
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	pkey_rsa_copy, .-pkey_rsa_copy
	.type	setup_tbuf, @function
setup_tbuf:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movl	$1, %eax
	jmp	.L32
.L31:
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, %rdi
	call	RSA_size@PLT
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L33
	movl	$0, %eax
	jmp	.L32
.L33:
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	setup_tbuf, .-setup_tbuf
	.type	pkey_rsa_cleanup, @function
pkey_rsa_cleanup:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$129, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$130, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$131, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L36:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	pkey_rsa_cleanup, .-pkey_rsa_cleanup
	.type	pkey_rsa_sign, @function
pkey_rsa_sign:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	cmpq	%rax, -88(%rbp)
	je	.L39
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L40
.L39:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$95, %eax
	jne	.L41
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	je	.L42
	movl	$-1, %eax
	jmp	.L40
.L42:
	movq	-88(%rbp), %rax
	movl	%eax, %edi
	movq	-40(%rbp), %rsi
	leaq	-44(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	RSA_sign_ASN1_OCTET_STRING@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L44
	movl	-20(%rbp), %eax
	jmp	.L40
.L44:
	movl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L45
.L41:
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$5, %eax
	jne	.L46
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jnb	.L47
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L40
.L47:
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$169, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L40
.L48:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edi
	call	RSA_X931_hash_id@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	-88(%rbp), %rdx
	addl	$1, %edx
	movl	%edx, %edi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	$5, %r8d
	movq	%rax, %rsi
	call	RSA_private_encrypt@PLT
	movl	%eax, -20(%rbp)
	jmp	.L45
.L46:
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jne	.L49
	movq	-88(%rbp), %rax
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edi
	movq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%ebx, %edx
	movq	%rax, %rsi
	call	RSA_sign@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L50
	movl	-20(%rbp), %eax
	jmp	.L40
.L50:
	movl	-48(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L45
.L49:
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$6, %eax
	jne	.L51
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L52
	movl	$-1, %eax
	jmp	.L40
.L52:
	movq	-32(%rbp), %rax
	movl	48(%rax), %r8d
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	RSA_padding_add_PKCS1_PSS_mgf1@PLT
	testl	%eax, %eax
	jne	.L53
	movl	$-1, %eax
	jmp	.L40
.L53:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, %edi
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$3, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	RSA_private_encrypt@PLT
	movl	%eax, -20(%rbp)
	jmp	.L45
.L51:
	movl	$-1, %eax
	jmp	.L40
.L38:
	movq	-32(%rbp), %rax
	movl	28(%rax), %esi
	movq	-88(%rbp), %rax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	RSA_private_encrypt@PLT
	movl	%eax, -20(%rbp)
.L45:
	cmpl	$0, -20(%rbp)
	jns	.L54
	movl	-20(%rbp), %eax
	jmp	.L40
.L54:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L40:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	pkey_rsa_sign, .-pkey_rsa_sign
	.type	pkey_rsa_verifyrecover, @function
pkey_rsa_verifyrecover:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L56
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$5, %eax
	jne	.L57
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L58
	movl	$-1, %eax
	jmp	.L59
.L58:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-88(%rbp), %rax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$5, %r8d
	movq	%rax, %rsi
	call	RSA_public_decrypt@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L60
	movl	$0, %eax
	jmp	.L59
.L60:
	subl	$1, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edi
	call	RSA_X931_hash_id@PLT
	cmpl	%eax, %ebx
	je	.L61
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L59
.L61:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cmpl	%eax, -20(%rbp)
	je	.L62
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$232, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L59
.L62:
	cmpq	$0, -64(%rbp)
	je	.L63
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L63
.L57:
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jne	.L64
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edi
	movq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	pushq	-40(%rbp)
	pushq	-88(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	call	ossl_rsa_verify@PLT
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L65
	movl	$0, %eax
	jmp	.L59
.L65:
	movq	-48(%rbp), %rax
	movl	%eax, -20(%rbp)
	jmp	.L63
.L64:
	movl	$-1, %eax
	jmp	.L59
.L56:
	movq	-32(%rbp), %rax
	movl	28(%rax), %esi
	movq	-88(%rbp), %rax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	RSA_public_decrypt@PLT
	movl	%eax, -20(%rbp)
.L63:
	cmpl	$0, -20(%rbp)
	jg	.L66
	movl	-20(%rbp), %eax
	jmp	.L59
.L66:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L59:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	pkey_rsa_verifyrecover, .-pkey_rsa_verifyrecover
	.type	pkey_rsa_verify, @function
pkey_rsa_verify:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jne	.L69
	movq	-72(%rbp), %rax
	movl	%eax, %r12d
	movq	-88(%rbp), %rax
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rcx, %r9
	movl	%r12d, %r8d
	movq	%rdx, %rcx
	movl	%ebx, %edx
	movq	%rax, %rsi
	call	RSA_verify@PLT
	jmp	.L81
.L69:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	cmpq	%rax, -88(%rbp)
	je	.L71
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$275, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$143, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L81
.L71:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$5, %eax
	jne	.L72
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	pkey_rsa_verifyrecover
	testl	%eax, %eax
	jg	.L73
	movl	$0, %eax
	jmp	.L81
.L72:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$6, %eax
	jne	.L74
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L75
	movl	$-1, %eax
	jmp	.L81
.L75:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rsi
	call	RSA_public_decrypt@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L76
	movl	$0, %eax
	jmp	.L81
.L76:
	movq	-24(%rbp), %rax
	movl	48(%rax), %r8d
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-80(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	RSA_verify_PKCS1_PSS_mgf1@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jg	.L77
	movl	$0, %eax
	jmp	.L81
.L77:
	movl	$1, %eax
	jmp	.L81
.L74:
	movl	$-1, %eax
	jmp	.L81
.L68:
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L78
	movl	$-1, %eax
	jmp	.L81
.L78:
	movq	-24(%rbp), %rax
	movl	28(%rax), %esi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	RSA_public_decrypt@PLT
	cltq
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L73
	movl	$0, %eax
	jmp	.L81
.L73:
	movq	-48(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	jne	.L79
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L80
.L79:
	movl	$0, %eax
	jmp	.L81
.L80:
	movl	$1, %eax
.L81:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	pkey_rsa_verify, .-pkey_rsa_verify
	.type	pkey_rsa_encrypt, @function
pkey_rsa_encrypt:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$4, %eax
	jne	.L83
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L84
	movl	$-1, %eax
	jmp	.L85
.L84:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movl	%eax, %r9d
	movq	-16(%rbp), %rax
	movq	64(%rax), %r8
	movq	-72(%rbp), %rax
	movl	%eax, %r10d
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	-28(%rbp), %esi
	pushq	%rdi
	pushq	%rcx
	movl	%r10d, %ecx
	movq	%rax, %rdi
	call	RSA_padding_add_PKCS1_OAEP_mgf1@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L86
	movl	$-1, %eax
	jmp	.L85
.L86:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	$3, %r8d
	movl	%eax, %edi
	call	RSA_public_encrypt@PLT
	movl	%eax, -4(%rbp)
	jmp	.L87
.L83:
	movq	-16(%rbp), %rax
	movl	28(%rax), %esi
	movq	-72(%rbp), %rax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	RSA_public_encrypt@PLT
	movl	%eax, -4(%rbp)
.L87:
	cmpl	$0, -4(%rbp)
	jns	.L88
	movl	-4(%rbp), %eax
	jmp	.L85
.L88:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	pkey_rsa_encrypt, .-pkey_rsa_encrypt
	.type	pkey_rsa_decrypt, @function
pkey_rsa_decrypt:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$4, %eax
	jne	.L90
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L91
	movl	$-1, %eax
	jmp	.L92
.L91:
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-88(%rbp), %rax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rsi
	call	RSA_private_decrypt@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L93
	movl	-20(%rbp), %eax
	jmp	.L92
.L93:
	movq	-32(%rbp), %rax
	movq	40(%rax), %r8
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movl	%eax, %r11d
	movq	-32(%rbp), %rax
	movq	64(%rax), %r9
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdx
	movl	-20(%rbp), %r10d
	movl	-20(%rbp), %ecx
	movl	-20(%rbp), %esi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	pushq	%r11
	movl	%r10d, %r8d
	movq	%rax, %rdi
	call	RSA_padding_check_PKCS1_OAEP_mgf1@PLT
	addq	$32, %rsp
	movl	%eax, -20(%rbp)
	jmp	.L94
.L90:
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	jne	.L95
	movq	-32(%rbp), %rax
	movl	80(%rax), %eax
	testl	%eax, %eax
	jne	.L95
	movl	$8, -24(%rbp)
	jmp	.L96
.L95:
	movq	-32(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -24(%rbp)
.L96:
	movq	-88(%rbp), %rax
	movl	%eax, %edi
	movl	-24(%rbp), %esi
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	RSA_private_decrypt@PLT
	movl	%eax, -20(%rbp)
.L94:
	movl	-20(%rbp), %eax
	movslq	%eax, %r12
	movq	-72(%rbp), %rax
	movq	(%rax), %rbx
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	constant_time_msb_s
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	constant_time_select_s
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	constant_time_msb
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %esi
	movl	%ecx, %edi
	call	constant_time_select_int
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
.L92:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	pkey_rsa_decrypt, .-pkey_rsa_decrypt
	.type	check_padding_md, @function
check_padding_md:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L98
	movl	$1, %eax
	jmp	.L99
.L98:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, -4(%rbp)
	cmpl	$3, -28(%rbp)
	jne	.L100
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$395, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L99
.L100:
	cmpl	$5, -28(%rbp)
	jne	.L101
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	RSA_X931_hash_id@PLT
	cmpl	$-1, %eax
	jne	.L102
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$401, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$142, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L99
.L101:
	cmpl	$1099, -4(%rbp)
	jg	.L103
	cmpl	$1094, -4(%rbp)
	jge	.L104
	cmpl	$675, -4(%rbp)
	jg	.L103
	cmpl	$672, -4(%rbp)
	jge	.L104
	cmpl	$257, -4(%rbp)
	je	.L104
	cmpl	$257, -4(%rbp)
	jg	.L103
	cmpl	$117, -4(%rbp)
	je	.L104
	cmpl	$117, -4(%rbp)
	jg	.L103
	cmpl	$114, -4(%rbp)
	je	.L104
	cmpl	$114, -4(%rbp)
	jg	.L103
	cmpl	$95, -4(%rbp)
	je	.L104
	cmpl	$95, -4(%rbp)
	jg	.L103
	cmpl	$4, -4(%rbp)
	jg	.L105
	cmpl	$3, -4(%rbp)
	jge	.L104
	jmp	.L103
.L105:
	cmpl	$64, -4(%rbp)
	jne	.L103
.L104:
	movl	$1, %eax
	jmp	.L99
.L103:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$427, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$157, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L99
.L102:
	movl	$1, %eax
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	check_padding_md, .-check_padding_md
	.type	pkey_rsa_ctrl, @function
pkey_rsa_ctrl:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$4110, -44(%rbp)
	je	.L107
	cmpl	$4110, -44(%rbp)
	jg	.L108
	cmpl	$4109, -44(%rbp)
	je	.L109
	cmpl	$4109, -44(%rbp)
	jg	.L108
	cmpl	$4108, -44(%rbp)
	je	.L110
	cmpl	$4108, -44(%rbp)
	jg	.L108
	cmpl	$4107, -44(%rbp)
	je	.L111
	cmpl	$4107, -44(%rbp)
	jg	.L108
	cmpl	$4106, -44(%rbp)
	je	.L112
	cmpl	$4106, -44(%rbp)
	jg	.L108
	cmpl	$4105, -44(%rbp)
	je	.L111
	cmpl	$4105, -44(%rbp)
	jg	.L108
	cmpl	$4104, -44(%rbp)
	je	.L113
	cmpl	$4104, -44(%rbp)
	jg	.L108
	cmpl	$4103, -44(%rbp)
	je	.L114
	cmpl	$4103, -44(%rbp)
	jg	.L108
	cmpl	$4102, -44(%rbp)
	je	.L115
	cmpl	$4102, -44(%rbp)
	jg	.L108
	cmpl	$4101, -44(%rbp)
	je	.L113
	cmpl	$4101, -44(%rbp)
	jg	.L108
	cmpl	$4100, -44(%rbp)
	je	.L116
	cmpl	$4100, -44(%rbp)
	jg	.L108
	cmpl	$4099, -44(%rbp)
	je	.L117
	cmpl	$4099, -44(%rbp)
	jg	.L108
	cmpl	$4098, -44(%rbp)
	je	.L114
	cmpl	$4098, -44(%rbp)
	jg	.L108
	cmpl	$4097, -44(%rbp)
	je	.L118
	cmpl	$4097, -44(%rbp)
	jg	.L108
	cmpl	$13, -44(%rbp)
	je	.L119
	cmpl	$13, -44(%rbp)
	jg	.L108
	cmpl	$11, -44(%rbp)
	je	.L120
	cmpl	$11, -44(%rbp)
	jg	.L108
	cmpl	$10, -44(%rbp)
	jg	.L108
	cmpl	$9, -44(%rbp)
	jge	.L121
	cmpl	$7, -44(%rbp)
	je	.L120
	cmpl	$7, -44(%rbp)
	jg	.L108
	cmpl	$5, -44(%rbp)
	je	.L120
	cmpl	$5, -44(%rbp)
	jg	.L108
	cmpl	$4, -44(%rbp)
	jg	.L108
	cmpl	$3, -44(%rbp)
	jge	.L121
	cmpl	$1, -44(%rbp)
	je	.L122
	cmpl	$2, -44(%rbp)
	je	.L123
	jmp	.L108
.L118:
	cmpl	$0, -48(%rbp)
	jle	.L163
	cmpl	$6, -48(%rbp)
	jg	.L163
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	-48(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_padding_md
	testl	%eax, %eax
	jne	.L125
	movl	$0, %eax
	jmp	.L126
.L125:
	cmpl	$6, -48(%rbp)
	jne	.L127
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andl	$48, %eax
	testl	%eax, %eax
	je	.L164
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L129
	call	EVP_sha1@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.L129
.L127:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$912, %eax
	je	.L165
.L129:
	cmpl	$4, -48(%rbp)
	jne	.L130
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	andl	$1536, %eax
	testl	%eax, %eax
	je	.L166
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L130
	call	EVP_sha1@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx)
.L130:
	movq	-24(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 28(%rax)
	movl	$1, %eax
	jmp	.L126
.L163:
	nop
	jmp	.L124
.L164:
	nop
	jmp	.L124
.L165:
	nop
	jmp	.L124
.L166:
	nop
.L124:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$464, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$144, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L115:
	movq	-24(%rbp), %rax
	movl	28(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L126
.L114:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$6, %eax
	je	.L132
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$474, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L132:
	cmpl	$4103, -44(%rbp)
	jne	.L133
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L134
.L133:
	cmpl	$-3, -48(%rbp)
	jge	.L135
	movl	$-2, %eax
	jmp	.L126
.L135:
	movq	-24(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	$-1, %eax
	je	.L136
	cmpl	$-2, -48(%rbp)
	jne	.L137
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$32, %eax
	jne	.L137
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$485, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$146, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L137:
	cmpl	$-1, -48(%rbp)
	jne	.L138
	movq	-24(%rbp), %rax
	movl	52(%rax), %ebx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cmpl	%eax, %ebx
	jg	.L139
.L138:
	cmpl	$0, -48(%rbp)
	js	.L136
	movq	-24(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	%eax, -48(%rbp)
	jge	.L136
.L139:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$491, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$164, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L126
.L136:
	movq	-24(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 48(%rax)
.L134:
	movl	$1, %eax
	jmp	.L126
.L117:
	cmpl	$511, -48(%rbp)
	jg	.L140
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$501, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L140:
	movq	-24(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L126
.L116:
	cmpq	$0, -56(%rbp)
	je	.L141
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L141
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_one@PLT
	testl	%eax, %eax
	je	.L142
.L141:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$509, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L142:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
	jmp	.L126
.L109:
	cmpl	$1, -48(%rbp)
	jle	.L143
	cmpl	$5, -48(%rbp)
	jle	.L144
.L143:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$518, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$165, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L144:
	movq	-24(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	$1, %eax
	jmp	.L126
.L111:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$4, %eax
	je	.L145
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$527, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L145:
	cmpl	$4107, -44(%rbp)
	jne	.L146
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L147
.L146:
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L147:
	movl	$1, %eax
	jmp	.L126
.L122:
	movq	-24(%rbp), %rax
	movl	28(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	check_padding_md
	testl	%eax, %eax
	jne	.L148
	movl	$0, %eax
	jmp	.L126
.L148:
	movq	-24(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	$-1, %eax
	je	.L149
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	%eax, %ebx
	jne	.L150
	movl	$1, %eax
	jmp	.L126
.L150:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$542, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$145, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L126
.L149:
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
	jmp	.L126
.L119:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L126
.L113:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$6, %eax
	je	.L151
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$4, %eax
	je	.L151
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$556, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$156, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L151:
	cmpl	$4104, -44(%rbp)
	jne	.L152
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L154
.L153:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L154
.L152:
	movq	-24(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	$-1, %eax
	je	.L155
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	movl	%eax, %ebx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	%eax, %ebx
	jne	.L156
	movl	$1, %eax
	jmp	.L126
.L156:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$568, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$152, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L126
.L155:
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 40(%rax)
.L154:
	movl	$1, %eax
	jmp	.L126
.L112:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$4, %eax
	je	.L157
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$577, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L157:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$580, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -56(%rbp)
	je	.L158
	cmpl	$0, -48(%rbp)
	jle	.L158
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L159
.L158:
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
.L159:
	movl	$1, %eax
	jmp	.L126
.L110:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$4, %eax
	je	.L160
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$592, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L160:
	cmpq	$0, -56(%rbp)
	jne	.L161
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$596, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L126
.L161:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	jmp	.L126
.L107:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	je	.L162
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$604, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$141, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L162:
	movq	-24(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 80(%rax)
	movl	$1, %eax
	jmp	.L126
.L120:
	movl	$1, %eax
	jmp	.L126
.L121:
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$912, %eax
	je	.L123
	movl	$1, %eax
	jmp	.L126
.L123:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$627, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$148, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L126
.L108:
	movl	$-2, %eax
.L126:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	pkey_rsa_ctrl, .-pkey_rsa_ctrl
	.section	.rodata
.LC1:
	.string	"rsa_padding_mode"
.LC2:
	.string	"pkcs1"
.LC3:
	.string	"none"
.LC4:
	.string	"oeap"
.LC5:
	.string	"oaep"
.LC6:
	.string	"x931"
.LC7:
	.string	"pss"
.LC8:
	.string	"rsa_pss_saltlen"
.LC9:
	.string	"digest"
.LC10:
	.string	"max"
.LC11:
	.string	"auto"
.LC12:
	.string	"rsa_keygen_bits"
.LC13:
	.string	"rsa_keygen_pubexp"
.LC14:
	.string	"rsa_keygen_primes"
.LC15:
	.string	"rsa_mgf1_md"
.LC16:
	.string	"rsa_pss_keygen_mgf1_md"
.LC17:
	.string	"rsa_pss_keygen_md"
.LC18:
	.string	"rsa_pss_keygen_saltlen"
.LC19:
	.string	"rsa_oaep_md"
.LC20:
	.string	"rsa_oaep_label"
	.text
	.type	pkey_rsa_ctrl_str, @function
pkey_rsa_ctrl_str:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L168
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$640, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$147, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L169
.L168:
	leaq	.LC1(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L170
	leaq	.LC2(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L171
	movl	$1, -4(%rbp)
	jmp	.L172
.L171:
	leaq	.LC3(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L173
	movl	$3, -4(%rbp)
	jmp	.L172
.L173:
	leaq	.LC4(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L174
	movl	$4, -4(%rbp)
	jmp	.L172
.L174:
	leaq	.LC5(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L175
	movl	$4, -4(%rbp)
	jmp	.L172
.L175:
	leaq	.LC6(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L176
	movl	$5, -4(%rbp)
	jmp	.L172
.L176:
	leaq	.LC7(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L177
	movl	$6, -4(%rbp)
	jmp	.L172
.L177:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$659, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L169
.L172:
	movl	-4(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_padding@PLT
	jmp	.L169
.L170:
	leaq	.LC8(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L178
	leaq	.LC9(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L179
	movl	$-1, -8(%rbp)
	jmp	.L180
.L179:
	leaq	.LC10(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L181
	movl	$-3, -8(%rbp)
	jmp	.L180
.L181:
	leaq	.LC11(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L182
	movl	$-2, -8(%rbp)
	jmp	.L180
.L182:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -8(%rbp)
.L180:
	movl	-8(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_pss_saltlen@PLT
	jmp	.L169
.L178:
	leaq	.LC12(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L183
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_keygen_bits@PLT
	jmp	.L169
.L183:
	leaq	.LC13(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L184
	movq	$0, -48(%rbp)
	movq	-88(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_asc2bn@PLT
	testl	%eax, %eax
	jne	.L185
	movl	$0, %eax
	jmp	.L169
.L185:
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set1_rsa_keygen_pubexp@PLT
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-36(%rbp), %eax
	jmp	.L169
.L184:
	leaq	.LC14(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L187
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_keygen_primes@PLT
	jmp	.L169
.L187:
	leaq	.LC15(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L188
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4101, %edx
	movl	$2032, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_md@PLT
	jmp	.L169
.L188:
	movq	-72(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$912, %eax
	jne	.L189
	leaq	.LC16(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L190
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4101, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_md@PLT
	jmp	.L169
.L190:
	leaq	.LC17(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L191
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_md@PLT
	jmp	.L169
.L191:
	leaq	.LC18(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L189
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen@PLT
	jmp	.L169
.L189:
	leaq	.LC19(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L192
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4105, %edx
	movl	$1536, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_md@PLT
	jmp	.L169
.L192:
	leaq	.LC20(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L193
	leaq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L194
	movl	$0, %eax
	jmp	.L169
.L194:
	movq	-56(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set0_rsa_oaep_label@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L196
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$738, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L196:
	movl	-28(%rbp), %eax
	jmp	.L169
.L193:
	movl	$-2, %eax
.L169:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	pkey_rsa_ctrl_str, .-pkey_rsa_ctrl_str
	.type	rsa_set_pss_param, @function
rsa_set_pss_param:
.LFB778:
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
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$912, %eax
	je	.L198
	movl	$1, %eax
	jmp	.L199
.L198:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L200
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L200
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$-2, %eax
	jne	.L200
	movl	$1, %eax
	jmp	.L199
.L200:
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$-2, %eax
	je	.L201
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	jmp	.L202
.L201:
	movl	$0, %eax
.L202:
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	ossl_rsa_pss_params_create@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 128(%rdx)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L203
	movl	$0, %eax
	jmp	.L199
.L203:
	movl	$1, %eax
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	rsa_set_pss_param, .-rsa_set_pss_param
	.type	pkey_rsa_keygen, @function
pkey_rsa_keygen:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L205
	call	BN_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L206
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$65537, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	jne	.L205
.L206:
	movl	$0, %eax
	jmp	.L207
.L205:
	call	RSA_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L208
	movl	$0, %eax
	jmp	.L207
.L208:
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L209
	call	BN_GENCB_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L210
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	$0, %eax
	jmp	.L207
.L210:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_set_cb_translate@PLT
	jmp	.L211
.L209:
	movq	$0, -8(%rbp)
.L211:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	RSA_generate_multi_prime_key@PLT
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	cmpl	$0, -28(%rbp)
	jle	.L212
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rsa_set_pss_param
	testl	%eax, %eax
	jne	.L212
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	$0, %eax
	jmp	.L207
.L212:
	cmpl	$0, -28(%rbp)
	jle	.L213
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	jmp	.L214
.L213:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
.L214:
	movl	-28(%rbp), %eax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	pkey_rsa_keygen, .-pkey_rsa_keygen
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	rsa_pkey_meth, @object
	.size	rsa_pkey_meth, 256
rsa_pkey_meth:
	.long	6
	.long	2
	.quad	pkey_rsa_init
	.quad	pkey_rsa_copy
	.quad	pkey_rsa_cleanup
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_rsa_keygen
	.quad	0
	.quad	pkey_rsa_sign
	.quad	0
	.quad	pkey_rsa_verify
	.quad	0
	.quad	pkey_rsa_verifyrecover
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_rsa_encrypt
	.quad	0
	.quad	pkey_rsa_decrypt
	.quad	0
	.quad	0
	.quad	pkey_rsa_ctrl
	.quad	pkey_rsa_ctrl_str
	.zero	48
	.text
	.globl	ossl_rsa_pkey_method
	.type	ossl_rsa_pkey_method, @function
ossl_rsa_pkey_method:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	rsa_pkey_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	ossl_rsa_pkey_method, .-ossl_rsa_pkey_method
	.type	pkey_pss_init, @function
pkey_pss_init:
.LFB781:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %eax
	cmpl	$912, %eax
	je	.L218
	movl	$0, %eax
	jmp	.L224
.L218:
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L220
	movl	$1, %eax
	jmp	.L224
.L220:
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	leaq	-60(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_rsa_pss_get_param@PLT
	testl	%eax, %eax
	jne	.L221
	movl	$0, %eax
	jmp	.L224
.L221:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_bits@PLT
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.L222
	subl	$1, -20(%rbp)
.L222:
	movl	-60(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L223
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$871, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L224
.L223:
	movl	-60(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 52(%rax)
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	-60(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 48(%rax)
	movl	$1, %eax
.L224:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	pkey_pss_init, .-pkey_pss_init
	.section	.data.rel.ro.local
	.align 32
	.type	rsa_pss_pkey_meth, @object
	.size	rsa_pss_pkey_meth, 256
rsa_pss_pkey_meth:
	.long	912
	.long	2
	.quad	pkey_rsa_init
	.quad	pkey_rsa_copy
	.quad	pkey_rsa_cleanup
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_rsa_keygen
	.quad	pkey_pss_init
	.quad	pkey_rsa_sign
	.quad	pkey_pss_init
	.quad	pkey_rsa_verify
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_rsa_ctrl
	.quad	pkey_rsa_ctrl_str
	.zero	48
	.text
	.globl	ossl_rsa_pss_pkey_method
	.type	ossl_rsa_pss_pkey_method, @function
ossl_rsa_pss_pkey_method:
.LFB782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	rsa_pss_pkey_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	ossl_rsa_pss_pkey_method, .-ossl_rsa_pss_pkey_method
	.section	.rodata
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 14
__func__.6:
	.string	"pkey_rsa_sign"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 23
__func__.5:
	.string	"pkey_rsa_verifyrecover"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 16
__func__.4:
	.string	"pkey_rsa_verify"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"check_padding_md"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 14
__func__.2:
	.string	"pkey_rsa_ctrl"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"pkey_rsa_ctrl_str"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"pkey_pss_init"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
