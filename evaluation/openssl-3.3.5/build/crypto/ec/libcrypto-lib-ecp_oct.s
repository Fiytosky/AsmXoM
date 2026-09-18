	.file	"ecp_oct.c"
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
	.string	"../crypto/ec/ecp_oct.c"
	.text
	.globl	ossl_ec_GFp_simple_set_compressed_coordinates
	.type	ossl_ec_GFp_simple_set_compressed_coordinates, @function
ossl_ec_GFp_simple_set_compressed_coordinates:
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
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L8
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
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
	je	.L37
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	jne	.L13
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	256(%rax), %r8
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L39
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-104(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	jne	.L15
	jmp	.L11
.L13:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqr@PLT
	testl	%eax, %eax
	je	.L40
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-104(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L41
.L15:
	movq	-72(%rbp), %rax
	movl	112(%rax), %eax
	testl	%eax, %eax
	je	.L17
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_mod_lshift1_quick@PLT
	testl	%eax, %eax
	je	.L42
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L43
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sub_quick@PLT
	testl	%eax, %eax
	jne	.L20
	jmp	.L11
.L17:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-72(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L44
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	jne	.L23
	jmp	.L11
.L21:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	248(%rax), %r9
	movq	-72(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	testl	%eax, %eax
	je	.L45
.L23:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L46
.L20:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %r8
	movq	-72(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L47
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	jne	.L26
	jmp	.L11
.L24:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L48
.L26:
	call	ERR_set_mark@PLT
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_sqrt@PLT
	testq	%rax, %rax
	jne	.L27
	call	ERR_peek_last_error@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$3, %eax
	jne	.L28
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$111, %eax
	jne	.L28
	call	ERR_pop_to_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L11
.L28:
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L11
.L27:
	call	ERR_clear_last_mark@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	cmpl	%eax, -92(%rbp)
	je	.L30
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L31
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_kronecker@PLT
	movl	%eax, -52(%rbp)
	cmpl	$-2, -52(%rbp)
	je	.L49
	cmpl	$1, -52(%rbp)
	jne	.L33
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$132, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L11
.L33:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L11
.L31:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_usub@PLT
	testl	%eax, %eax
	je	.L50
.L30:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	cmpl	%eax, -92(%rbp)
	je	.L35
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L11
.L35:
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L51
	movl	$1, -12(%rbp)
	jmp	.L11
.L37:
	nop
	jmp	.L11
.L38:
	nop
	jmp	.L11
.L39:
	nop
	jmp	.L11
.L40:
	nop
	jmp	.L11
.L41:
	nop
	jmp	.L11
.L42:
	nop
	jmp	.L11
.L43:
	nop
	jmp	.L11
.L44:
	nop
	jmp	.L11
.L45:
	nop
	jmp	.L11
.L46:
	nop
	jmp	.L11
.L47:
	nop
	jmp	.L11
.L48:
	nop
	jmp	.L11
.L49:
	nop
	jmp	.L11
.L50:
	nop
	jmp	.L11
.L51:
	nop
.L11:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-12(%rbp), %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	ossl_ec_GFp_simple_set_compressed_coordinates, .-ossl_ec_GFp_simple_set_compressed_coordinates
	.globl	ossl_ec_GFp_simple_point2oct
	.type	ossl_ec_GFp_simple_point2oct, @function
ossl_ec_GFp_simple_point2oct:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpl	$2, -84(%rbp)
	je	.L53
	cmpl	$4, -84(%rbp)
	je	.L53
	cmpl	$6, -84(%rbp)
	je	.L53
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$172, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L54
.L53:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_is_at_infinity@PLT
	testl	%eax, %eax
	je	.L55
	cmpq	$0, -96(%rbp)
	je	.L56
	cmpq	$0, -104(%rbp)
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$180, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-96(%rbp), %rax
	movb	$0, (%rax)
.L56:
	movl	$1, %eax
	jmp	.L58
.L55:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -48(%rbp)
	cmpl	$2, -84(%rbp)
	jne	.L59
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L60
.L59:
	movq	-48(%rbp), %rax
	addq	%rax, %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.L60:
	cmpq	$0, -96(%rbp)
	je	.L61
	movq	-104(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L62
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$197, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L54
.L62:
	cmpq	$0, -112(%rbp)
	jne	.L63
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.L63
	movl	$0, %eax
	jmp	.L58
.L63:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movl	$1, -20(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L80
	movq	-112(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_get_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L81
	cmpl	$2, -84(%rbp)
	je	.L66
	cmpl	$6, -84(%rbp)
	jne	.L67
.L66:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	testl	%eax, %eax
	je	.L67
	movl	-84(%rbp), %eax
	leal	1(%rax), %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L68
.L67:
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movb	%dl, (%rax)
.L68:
	movq	$1, -32(%rbp)
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
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L70
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$227, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L54
.L71:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-96(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	subq	$1, -40(%rbp)
.L70:
	cmpq	$0, -40(%rbp)
	jne	.L71
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -32(%rbp)
	je	.L72
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$237, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L54
.L72:
	cmpl	$4, -84(%rbp)
	je	.L73
	cmpl	$6, -84(%rbp)
	jne	.L74
.L73:
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
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L76
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$245, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L54
.L77:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-96(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	subq	$1, -40(%rbp)
.L76:
	cmpq	$0, -40(%rbp)
	jne	.L77
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	cltq
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
.L74:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.L61
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L54
.L61:
	cmpl	$0, -20(%rbp)
	je	.L78
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
.L78:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-8(%rbp), %rax
	jmp	.L58
.L80:
	nop
	jmp	.L54
.L81:
	nop
.L54:
	cmpl	$0, -20(%rbp)
	je	.L79
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
.L79:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	$0, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	ossl_ec_GFp_simple_point2oct, .-ossl_ec_GFp_simple_point2oct
	.globl	ossl_ec_GFp_simple_oct2point
	.type	ossl_ec_GFp_simple_oct2point, @function
ossl_ec_GFp_simple_oct2point:
.LFB369:
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
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$286, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L83:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	andl	$1, %eax
	movl	%eax, -28(%rbp)
	andl	$-2, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L85
	cmpl	$2, -24(%rbp)
	je	.L85
	cmpl	$4, -24(%rbp)
	je	.L85
	cmpl	$6, -24(%rbp)
	je	.L85
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
	jmp	.L84
.L85:
	cmpl	$0, -24(%rbp)
	je	.L86
	cmpl	$4, -24(%rbp)
	jne	.L87
.L86:
	cmpl	$0, -28(%rbp)
	je	.L87
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$299, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L87:
	cmpl	$0, -24(%rbp)
	jne	.L88
	cmpq	$1, -96(%rbp)
	je	.L89
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$305, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L89:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EC_POINT_set_to_infinity@PLT
	jmp	.L84
.L88:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, -40(%rbp)
	cmpl	$2, -24(%rbp)
	jne	.L90
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.L91
.L90:
	movq	-40(%rbp), %rax
	addq	%rax, %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.L91:
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L92
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$318, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L84
.L92:
	cmpq	$0, -104(%rbp)
	jne	.L93
	movq	-72(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L93
	movl	$0, %eax
	jmp	.L84
.L93:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L103
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L104
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L97
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$337, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L95
.L97:
	cmpl	$2, -24(%rbp)
	jne	.L98
	movq	-104(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_compressed_coordinates@PLT
	testl	%eax, %eax
	jne	.L99
	jmp	.L95
.L98:
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L105
	movq	-72(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L101
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$348, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L95
.L101:
	cmpl	$6, -24(%rbp)
	jne	.L102
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_odd@PLT
	cmpl	%eax, -28(%rbp)
	je	.L102
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$16, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L95
.L102:
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EC_POINT_set_affine_coordinates@PLT
	testl	%eax, %eax
	je	.L106
.L99:
	movl	$1, -20(%rbp)
	jmp	.L95
.L103:
	nop
	jmp	.L95
.L104:
	nop
	jmp	.L95
.L105:
	nop
	jmp	.L95
.L106:
	nop
.L95:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	-20(%rbp), %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	ossl_ec_GFp_simple_oct2point, .-ossl_ec_GFp_simple_oct2point
	.section	.rodata
	.align 32
	.type	__func__.2, @object
	.size	__func__.2, 46
__func__.2:
	.string	"ossl_ec_GFp_simple_set_compressed_coordinates"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 29
__func__.1:
	.string	"ossl_ec_GFp_simple_point2oct"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 29
__func__.0:
	.string	"ossl_ec_GFp_simple_oct2point"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
