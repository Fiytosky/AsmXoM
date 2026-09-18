	.file	"ec2_oct.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.section	.rodata
.LC0:
	.string	"../crypto/ec/ec2_oct.c"
	.text
	.globl	ossl_ec_GF2m_simple_set_compressed_coordinates
	.type	ossl_ec_GF2m_simple_set_compressed_coordinates, @function
ossl_ec_GF2m_simple_set_compressed_coordinates:
.LFB367:
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
	movl	%ecx, -92(%rbp)
	movq	%r8, -104(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L8
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	cmpl	$0, -92(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -92(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L24
	movq	-72(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_mod_arr@PLT
	testl	%eax, %eax
	je	.L25
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L13
	movq	-72(%rbp), %rax
	leaq	72(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	BN_GF2m_mod_sqrt_arr@PLT
	testl	%eax, %eax
	jne	.L14
	jmp	.L11
.L13:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L26
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	264(%rax), %r9
	movq	-72(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L27
	movq	-72(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L28
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L29
	call	ERR_set_mark@PLT
	movq	-72(%rbp), %rax
	leaq	72(%rax), %rdi
	movq	-104(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	BN_GF2m_mod_solve_quad_arr@PLT
	testl	%eax, %eax
	jne	.L19
	call	ERR_peek_last_error@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$3, %eax
	jne	.L20
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$116, %eax
	jne	.L20
	call	ERR_pop_to_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L11
.L20:
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L11
.L19:
	call	ERR_clear_last_mark@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L30
	movl	-52(%rbp), %eax
	cmpl	-92(%rbp), %eax
	je	.L14
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_GF2m_add@PLT
	testl	%eax, %eax
	je	.L31
.L14:
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L32
	movl	$1, -4(%rbp)
	jmp	.L11
.L24:
	nop
	jmp	.L11
.L25:
	nop
	jmp	.L11
.L26:
	nop
	jmp	.L11
.L27:
	nop
	jmp	.L11
.L28:
	nop
	jmp	.L11
.L29:
	nop
	jmp	.L11
.L30:
	nop
	jmp	.L11
.L31:
	nop
	jmp	.L11
.L32:
	nop
.L11:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-4(%rbp), %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ossl_ec_GF2m_simple_set_compressed_coordinates, .-ossl_ec_GF2m_simple_set_compressed_coordinates
	.globl	ossl_ec_GF2m_simple_point2oct
	.type	ossl_ec_GF2m_simple_point2oct, @function
ossl_ec_GF2m_simple_point2oct:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$2, -100(%rbp)
	je	.L34
	cmpl	$4, -100(%rbp)
	je	.L34
	cmpl	$6, -100(%rbp)
	je	.L34
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$141, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L34:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L36
	cmpq	$0, -112(%rbp)
	je	.L37
	cmpq	$0, -120(%rbp)
	jne	.L38
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$149, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-112(%rbp), %rax
	movb	$0, (%rax)
.L37:
	movl	$1, %eax
	jmp	.L39
.L36:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -48(%rbp)
	cmpl	$2, -100(%rbp)
	jne	.L40
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L41
.L40:
	movq	-48(%rbp), %rax
	addq	%rax, %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.L41:
	cmpq	$0, -112(%rbp)
	je	.L42
	movq	-120(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L43
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L43:
	cmpq	$0, -128(%rbp)
	jne	.L44
	call	BN_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L39
.L44:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movl	$1, -12(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L60
	movq	-128(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L61
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
	cmpl	$4, -100(%rbp)
	je	.L47
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L47
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	264(%rax), %r9
	movq	-128(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L62
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L47
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.L47:
	movq	$1, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	-48(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L50
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$201, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L51:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-112(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	subq	$1, -32(%rbp)
.L50:
	cmpq	$0, -32(%rbp)
	jne	.L51
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -24(%rbp)
	je	.L52
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$211, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L52:
	cmpl	$4, -100(%rbp)
	je	.L53
	cmpl	$6, -100(%rbp)
	jne	.L54
.L53:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	-48(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L56
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$219, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L57:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-112(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	subq	$1, -32(%rbp)
.L56:
	cmpq	$0, -32(%rbp)
	jne	.L57
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
.L54:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L42
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$231, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L35
.L42:
	cmpl	$0, -12(%rbp)
	je	.L58
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
.L58:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-8(%rbp), %rax
	jmp	.L39
.L60:
	nop
	jmp	.L35
.L61:
	nop
	jmp	.L35
.L62:
	nop
.L35:
	cmpl	$0, -12(%rbp)
	je	.L59
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
.L59:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	$0, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ossl_ec_GF2m_simple_point2oct, .-ossl_ec_GF2m_simple_point2oct
	.globl	ossl_ec_GF2m_simple_oct2point
	.type	ossl_ec_GF2m_simple_oct2point, @function
ossl_ec_GF2m_simple_oct2point:
.LFB369:
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
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$270, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L65
.L64:
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$-2, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L66
	cmpl	$2, -32(%rbp)
	je	.L66
	cmpl	$4, -32(%rbp)
	je	.L66
	cmpl	$6, -32(%rbp)
	je	.L66
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$291, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L65
.L66:
	cmpl	$0, -32(%rbp)
	je	.L67
	cmpl	$4, -32(%rbp)
	jne	.L68
.L67:
	cmpl	$0, -28(%rbp)
	je	.L68
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$295, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L65
.L68:
	cmpl	$0, -32(%rbp)
	jne	.L69
	cmpq	$1, -112(%rbp)
	je	.L70
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$302, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L65
.L70:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	jmp	.L65
.L69:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	EC_GROUP_get_degree@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -48(%rbp)
	cmpl	$2, -32(%rbp)
	jne	.L71
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L72
.L71:
	movq	-48(%rbp), %rax
	addq	%rax, %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.L72:
	movq	-112(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L73
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$316, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L65
.L73:
	cmpq	$0, -120(%rbp)
	jne	.L74
	call	BN_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L74
	movl	$0, %eax
	jmp	.L65
.L74:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L86
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L87
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -36(%rbp)
	jge	.L78
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$338, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L78:
	cmpl	$2, -32(%rbp)
	jne	.L79
	movq	-120(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_compressed_coordinates@PLT
	testl	%eax, %eax
	jne	.L80
	jmp	.L76
.L79:
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L88
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -36(%rbp)
	jge	.L82
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$349, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L82:
	cmpl	$6, -32(%rbp)
	jne	.L83
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L84
	cmpl	$0, -28(%rbp)
	je	.L83
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$360, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L84:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	264(%rax), %r9
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L89
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	cmpl	%eax, -28(%rbp)
	je	.L83
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L76
.L83:
	movq	-120(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L90
.L80:
	movl	$1, -12(%rbp)
	jmp	.L76
.L86:
	nop
	jmp	.L76
.L87:
	nop
	jmp	.L76
.L88:
	nop
	jmp	.L76
.L89:
	nop
	jmp	.L76
.L90:
	nop
.L76:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-12(%rbp), %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	ossl_ec_GF2m_simple_oct2point, .-ossl_ec_GF2m_simple_oct2point
	.section	.rodata
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 47
__func__.2:
	.string	"ossl_ec_GF2m_simple_set_compressed_coordinates"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 30
__func__.1:
	.string	"ossl_ec_GF2m_simple_point2oct"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 30
__func__.0:
	.string	"ossl_ec_GF2m_simple_oct2point"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
