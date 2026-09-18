	.file	"dsa_ossl.c"
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
	.section	.rodata
.LC0:
	.string	"OpenSSL DSA method"
	.section	.data.rel.local,"aw"
	.align 32
	.type	openssl_dsa_meth, @object
	.size	openssl_dsa_meth, 96
openssl_dsa_meth:
	.quad	.LC0
	.quad	dsa_do_sign
	.quad	dsa_sign_setup_no_digest
	.quad	dsa_do_verify
	.quad	0
	.quad	0
	.quad	dsa_init
	.quad	dsa_finish
	.long	1024
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 8
	.type	default_DSA_method, @object
	.size	default_DSA_method, 8
default_DSA_method:
	.quad	openssl_dsa_meth
	.text
	.globl	DSA_set_default_method
	.type	DSA_set_default_method, @function
DSA_set_default_method:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, default_DSA_method(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	DSA_set_default_method, .-DSA_set_default_method
	.globl	DSA_get_default_method
	.type	DSA_get_default_method, @function
DSA_get_default_method:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	default_DSA_method(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	DSA_get_default_method, .-DSA_get_default_method
	.globl	DSA_OpenSSL
	.type	DSA_OpenSSL, @function
DSA_OpenSSL:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	openssl_dsa_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	DSA_OpenSSL, .-DSA_OpenSSL
	.section	.rodata
.LC1:
	.string	"../crypto/dsa/dsa_ossl.c"
	.text
	.globl	ossl_dsa_do_sign_int
	.type	ossl_dsa_do_sign_int, @function
ossl_dsa_do_sign_int:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -96(%rbp)
	movq	%r8, -112(%rbp)
	movq	%r9, -120(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -8(%rbp)
	movl	$524291, -12(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L12
.L11:
	movl	$101, -12(%rbp)
	jmp	.L13
.L12:
	movq	-104(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movl	$111, -12(%rbp)
	jmp	.L13
.L14:
	call	DSA_SIG_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L36
	call	BN_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	call	BN_new@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-104(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L38
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L39
	nop
.L19:
	movq	-24(%rbp), %rcx
	movl	-92(%rbp), %r9d
	movq	-88(%rbp), %r8
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-104(%rbp), %rax
	pushq	16(%rbp)
	pushq	-120(%rbp)
	pushq	-112(%rbp)
	movl	-96(%rbp), %edi
	pushq	%rdi
	movq	%rax, %rdi
	call	dsa_sign_setup
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L40
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cmpl	%eax, -92(%rbp)
	jle	.L21
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -92(%rbp)
.L21:
	movq	-40(%rbp), %rdx
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L41
.L22:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	leal	-1(%rax), %esi
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$-1, %edx
	movq	%rax, %rdi
	call	BN_priv_rand_ex@PLT
	testl	%eax, %eax
	je	.L42
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L22
	movq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-56(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-64(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-104(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L43
	movq	-104(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L44
	movq	-104(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L45
	movq	-104(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	call	BN_mod_add_quick@PLT
	testl	%eax, %eax
	je	.L46
	movq	-104(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L47
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L48
	movq	-104(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L49
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L31
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L32
.L31:
	movl	-32(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -32(%rbp)
	cmpl	$8, %eax
	jle	.L19
	movl	$116, -12(%rbp)
	jmp	.L13
.L32:
	movl	$1, -28(%rbp)
	jmp	.L13
.L36:
	nop
	jmp	.L13
.L37:
	nop
	jmp	.L13
.L38:
	nop
	jmp	.L13
.L39:
	nop
	jmp	.L13
.L40:
	nop
	jmp	.L13
.L41:
	nop
	jmp	.L13
.L42:
	nop
	jmp	.L13
.L43:
	nop
	jmp	.L13
.L44:
	nop
	jmp	.L13
.L45:
	nop
	jmp	.L13
.L46:
	nop
	jmp	.L13
.L47:
	nop
	jmp	.L13
.L48:
	nop
	jmp	.L13
.L49:
	nop
.L13:
	cmpl	$0, -28(%rbp)
	jne	.L34
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-12(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_SIG_free@PLT
	movq	$0, -24(%rbp)
.L34:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_dsa_do_sign_int, .-ossl_dsa_do_sign_int
	.type	dsa_do_sign, @function
dsa_do_sign:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_dsa_do_sign_int@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	dsa_do_sign, .-dsa_do_sign
	.type	dsa_sign_setup_no_digest, @function
dsa_sign_setup_no_digest:
.LFB412:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	dsa_sign_setup
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	dsa_sign_setup_no_digest, .-dsa_sign_setup_no_digest
	.type	dsa_sign_setup, @function
dsa_sign_setup:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movl	%r9d, -124(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L56
.L55:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$230, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L58
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L58
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L58
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L58
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L58
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L59
.L58:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$241, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L59:
	movq	-88(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L60
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$245, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$111, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L57
.L60:
	call	BN_new@PLT
	movq	%rax, -56(%rbp)
	call	BN_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L80
	cmpq	$0, -64(%rbp)
	je	.L80
	cmpq	$0, -96(%rbp)
	jne	.L64
	movl	$0, %edi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L65
	jmp	.L63
.L64:
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
.L65:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	bn_get_top@PLT
	movl	%eax, -72(%rbp)
	cmpl	$127, -68(%rbp)
	jle	.L81
	movl	-72(%rbp), %eax
	leal	2(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L81
	movl	-72(%rbp), %eax
	leal	2(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	bn_wexpand@PLT
	testq	%rax, %rax
	je	.L81
.L67:
	cmpq	$0, -120(%rbp)
	je	.L68
	cmpl	$1, 16(%rbp)
	jne	.L69
	movl	-124(%rbp), %eax
	movslq	%eax, %rdi
	movq	-88(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rsi
	movq	24(%rbp), %r8
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rax
	pushq	40(%rbp)
	pushq	32(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_gen_deterministic_nonce_rfc6979@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L70
	jmp	.L63
.L69:
	movl	-124(%rbp), %eax
	movslq	%eax, %rdi
	movq	-88(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %r8
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_bn_gen_dsa_nonce_fixed_top@PLT
	testl	%eax, %eax
	jne	.L70
	jmp	.L63
.L68:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ossl_bn_priv_rand_range_fixed_top@PLT
	testl	%eax, %eax
	je	.L82
.L70:
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_bn_is_word_fixed_top@PLT
	testl	%eax, %eax
	jne	.L67
	movq	-56(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-64(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-88(%rbp), %rax
	movl	120(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L71
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	176(%rax), %rax
	movq	-88(%rbp), %rcx
	leaq	128(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	call	BN_MONT_CTX_set_locked@PLT
	testq	%rax, %rax
	je	.L83
.L71:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L84
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L84
	movl	-72(%rbp), %eax
	leal	2(%rax), %ebx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_is_bit_set@PLT
	cltq
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	%ebx, %ecx
	movq	%rax, %rdi
	call	BN_consttime_swap@PLT
	movq	-88(%rbp), %rax
	movq	160(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-88(%rbp), %rax
	movq	160(%rax), %rax
	movq	40(%rax), %r10
	movq	-88(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	8(%rax), %r8
	movq	-88(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %r9
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L75
	jmp	.L63
.L74:
	movq	-88(%rbp), %rax
	movq	128(%rax), %r8
	movq	-88(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	je	.L85
.L75:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L86
	movq	-88(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	dsa_mod_inverse_fermat
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L87
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -40(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L63
.L80:
	nop
	jmp	.L63
.L81:
	nop
	jmp	.L63
.L82:
	nop
	jmp	.L63
.L83:
	nop
	jmp	.L63
.L84:
	nop
	jmp	.L63
.L85:
	nop
	jmp	.L63
.L86:
	nop
	jmp	.L63
.L87:
	nop
.L63:
	cmpl	$0, -28(%rbp)
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$347, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L78:
	movq	-24(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.L79
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
.L79:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movl	-28(%rbp), %eax
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	dsa_sign_setup, .-dsa_sign_setup
	.type	dsa_do_verify, @function
dsa_do_verify:
.LFB414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L90
.L89:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L111
.L90:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -16(%rbp)
	cmpl	$160, -16(%rbp)
	je	.L92
	cmpl	$224, -16(%rbp)
	je	.L92
	cmpl	$256, -16(%rbp)
	je	.L92
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$374, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L111
.L92:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$10000, %eax
	jle	.L93
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$379, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L111
.L93:
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movl	$0, %edi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L112
	cmpq	$0, -32(%rbp)
	je	.L112
	cmpq	$0, -40(%rbp)
	je	.L112
	cmpq	$0, -48(%rbp)
	je	.L112
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSA_SIG_get0@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L97
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L97
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L98
.L97:
	movl	$0, -12(%rbp)
	jmp	.L96
.L98:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	jne	.L99
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	jne	.L99
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	js	.L100
.L99:
	movl	$0, -12(%rbp)
	jmp	.L96
.L100:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mod_inverse@PLT
	testq	%rax, %rax
	je	.L113
	movl	-16(%rbp), %eax
	sarl	$3, %eax
	cmpl	%eax, -76(%rbp)
	jle	.L102
	movl	-16(%rbp), %eax
	sarl	$3, %eax
	movl	%eax, -76(%rbp)
.L102:
	movq	-24(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	testq	%rax, %rax
	je	.L114
	movq	-96(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L115
	movq	-96(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L116
	movq	-96(%rbp), %rax
	movl	120(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L106
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	176(%rax), %rax
	movq	-96(%rbp), %rcx
	leaq	128(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, %rsi
	call	BN_MONT_CTX_set_locked@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L117
.L106:
	movq	-96(%rbp), %rax
	movq	160(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-96(%rbp), %rax
	movq	160(%rax), %rax
	movq	32(%rax), %r10
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	104(%rax), %r8
	movq	-96(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-96(%rbp), %rax
	subq	$8, %rsp
	pushq	-8(%rbp)
	pushq	-48(%rbp)
	pushq	%rdi
	movq	%rax, %rdi
	call	*%r10
	addq	$32, %rsp
	testl	%eax, %eax
	jne	.L108
	jmp	.L96
.L107:
	movq	-96(%rbp), %rax
	movq	8(%rax), %r8
	movq	-96(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	pushq	-8(%rbp)
	pushq	-48(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp2_mont@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L118
.L108:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	BN_div@PLT
	testl	%eax, %eax
	je	.L119
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	jmp	.L96
.L112:
	nop
	jmp	.L96
.L113:
	nop
	jmp	.L96
.L114:
	nop
	jmp	.L96
.L115:
	nop
	jmp	.L96
.L116:
	nop
	jmp	.L96
.L117:
	nop
	jmp	.L96
.L118:
	nop
	jmp	.L96
.L119:
	nop
.L96:
	cmpl	$0, -12(%rbp)
	jns	.L110
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$455, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L110:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-12(%rbp), %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	dsa_do_verify, .-dsa_do_verify
	.type	dsa_init, @function
dsa_init:
.LFB415:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 192(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	dsa_init, .-dsa_init
	.type	dsa_finish, @function
dsa_finish:
.LFB416:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	call	BN_MONT_CTX_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	dsa_finish, .-dsa_finish
	.type	dsa_mod_inverse_fermat, @function
dsa_mod_inverse_fermat:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -8(%rbp)
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L125
	movl	$0, %eax
	jmp	.L126
.L125:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_start@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L127
	movq	-16(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L127
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_sub@PLT
	testl	%eax, %eax
	je	.L127
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp_mont@PLT
	testl	%eax, %eax
	je	.L127
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L128
.L127:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
.L128:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_end@PLT
	movq	-8(%rbp), %rax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	dsa_mod_inverse_fermat, .-dsa_mod_inverse_fermat
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"ossl_dsa_do_sign_int"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"dsa_sign_setup"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"dsa_do_verify"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
