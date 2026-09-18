	.file	"srp_lib.c"
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
	.string	"SHA1"
.LC1:
	.string	"../crypto/srp/srp_lib.c"
	.text
	.type	srp_Calc_xy, @function
srp_Calc_xy:
.LFB420:
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
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -20(%rbp)
	movq	$0, -16(%rbp)
	movq	-104(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L14
.L6:
	movq	-72(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L8
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L15
.L8:
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.L10
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_ucmp@PLT
	testl	%eax, %eax
	jns	.L16
.L10:
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L17
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L18
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-20(%rbp), %edx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2binpad@PLT
	testl	%eax, %eax
	js	.L18
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_Digest@PLT
	testl	%eax, %eax
	je	.L18
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -16(%rbp)
	jmp	.L9
.L15:
	nop
	jmp	.L9
.L16:
	nop
	jmp	.L9
.L17:
	nop
	jmp	.L9
.L18:
	nop
.L9:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$51, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE420:
	.size	srp_Calc_xy, .-srp_Calc_xy
	.type	srp_Calc_k, @function
srp_Calc_k:
.LFB421:
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
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	srp_Calc_xy
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE421:
	.size	srp_Calc_k, .-srp_Calc_k
	.globl	SRP_Calc_u_ex
	.type	SRP_Calc_u_ex, @function
SRP_Calc_u_ex:
.LFB422:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	srp_Calc_xy
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE422:
	.size	SRP_Calc_u_ex, .-SRP_Calc_u_ex
	.globl	SRP_Calc_u
	.type	SRP_Calc_u, @function
SRP_Calc_u:
.LFB423:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	srp_Calc_xy
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE423:
	.size	SRP_Calc_u, .-SRP_Calc_u
	.globl	SRP_Calc_server_key
	.type	SRP_Calc_server_key, @function
SRP_Calc_server_key:
.LFB424:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L26
	cmpq	$0, -40(%rbp)
	je	.L26
	cmpq	$0, -48(%rbp)
	je	.L26
	cmpq	$0, -64(%rbp)
	je	.L26
	cmpq	$0, -72(%rbp)
	jne	.L27
.L26:
	movl	$0, %eax
	jmp	.L28
.L27:
	call	BN_CTX_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L34
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L34
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L35
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L36
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L37
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	jne	.L37
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	jmp	.L31
.L34:
	nop
	jmp	.L31
.L35:
	nop
	jmp	.L31
.L36:
	nop
	jmp	.L31
.L37:
	nop
.L31:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-16(%rbp), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE424:
	.size	SRP_Calc_server_key, .-SRP_Calc_server_key
	.globl	SRP_Calc_B_ex
	.type	SRP_Calc_B_ex, @function
SRP_Calc_B_ex:
.LFB425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L39
	cmpq	$0, -64(%rbp)
	je	.L39
	cmpq	$0, -72(%rbp)
	je	.L39
	cmpq	$0, -80(%rbp)
	je	.L39
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L40
.L39:
	movl	$0, %eax
	jmp	.L41
.L40:
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L46
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L46
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L46
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L45
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	srp_Calc_k
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L45
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L45
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_add@PLT
	testl	%eax, %eax
	jne	.L47
.L45:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -16(%rbp)
	jmp	.L44
.L46:
	nop
	jmp	.L44
.L47:
	nop
.L44:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE425:
	.size	SRP_Calc_B_ex, .-SRP_Calc_B_ex
	.globl	SRP_Calc_B
	.type	SRP_Calc_B, @function
SRP_Calc_B:
.LFB426:
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
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	SRP_Calc_B_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE426:
	.size	SRP_Calc_B, .-SRP_Calc_B
	.section	.rodata
.LC2:
	.string	":"
	.text
	.globl	SRP_Calc_x_ex
	.type	SRP_Calc_x_ex, @function
SRP_Calc_x_ex:
.LFB427:
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
	movq	$0, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L51
	cmpq	$0, -80(%rbp)
	je	.L51
	cmpq	$0, -88(%rbp)
	jne	.L52
.L51:
	movl	$0, %eax
	jmp	.L64
.L52:
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L54
	movl	$0, %eax
	jmp	.L64
.L54:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$159, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L65
	movq	-104(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L66
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L67
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L67
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L67
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L67
	leaq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L67
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	je	.L67
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	testl	%eax, %eax
	js	.L68
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L69
	leaq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	je	.L70
	leaq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	je	.L70
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	BN_bin2bn@PLT
	movq	%rax, -8(%rbp)
	jmp	.L56
.L65:
	nop
	jmp	.L56
.L66:
	nop
	jmp	.L56
.L67:
	nop
	jmp	.L56
.L68:
	nop
	jmp	.L56
.L69:
	nop
	jmp	.L56
.L70:
	nop
.L56:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$186, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE427:
	.size	SRP_Calc_x_ex, .-SRP_Calc_x_ex
	.globl	SRP_Calc_x
	.type	SRP_Calc_x, @function
SRP_Calc_x:
.LFB428:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	SRP_Calc_x_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE428:
	.size	SRP_Calc_x, .-SRP_Calc_x
	.globl	SRP_Calc_A
	.type	SRP_Calc_A, @function
SRP_Calc_A:
.LFB429:
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
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L74
	cmpq	$0, -32(%rbp)
	je	.L74
	cmpq	$0, -40(%rbp)
	je	.L74
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L75
.L74:
	movl	$0, %eax
	jmp	.L76
.L75:
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L77
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	jne	.L77
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -8(%rbp)
.L77:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-8(%rbp), %rax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE429:
	.size	SRP_Calc_A, .-SRP_Calc_A
	.globl	SRP_Calc_client_key_ex
	.type	SRP_Calc_client_key_ex, @function
SRP_Calc_client_key_ex:
.LFB430:
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
	movq	$0, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L79
	cmpq	$0, -80(%rbp)
	je	.L79
	cmpq	$0, -72(%rbp)
	je	.L79
	cmpq	$0, -88(%rbp)
	je	.L79
	cmpq	$0, -96(%rbp)
	je	.L79
	cmpq	$0, -104(%rbp)
	je	.L79
	movq	16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L80
.L79:
	movl	$0, %eax
	jmp	.L81
.L80:
	call	BN_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L91
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L91
	call	BN_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L91
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L91
	movq	-96(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_with_flags@PLT
	movq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L92
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	srp_Calc_k
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L93
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_mul@PLT
	testl	%eax, %eax
	je	.L94
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_sub@PLT
	testl	%eax, %eax
	je	.L95
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_mul@PLT
	testl	%eax, %eax
	je	.L96
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_add@PLT
	testl	%eax, %eax
	je	.L97
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L98
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	jne	.L98
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	$0, -32(%rbp)
	jmp	.L84
.L91:
	nop
	jmp	.L84
.L92:
	nop
	jmp	.L84
.L93:
	nop
	jmp	.L84
.L94:
	nop
	jmp	.L84
.L95:
	nop
	jmp	.L84
.L96:
	nop
	jmp	.L84
.L97:
	nop
	jmp	.L84
.L98:
	nop
.L84:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE430:
	.size	SRP_Calc_client_key_ex, .-SRP_Calc_client_key_ex
	.globl	SRP_Calc_client_key
	.type	SRP_Calc_client_key, @function
SRP_Calc_client_key:
.LFB431:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	$0
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	SRP_Calc_client_key_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE431:
	.size	SRP_Calc_client_key, .-SRP_Calc_client_key
	.globl	SRP_Verify_B_mod_N
	.type	SRP_Verify_B_mod_N, @function
SRP_Verify_B_mod_N:
.LFB432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L102
	cmpq	$0, -48(%rbp)
	je	.L102
	call	BN_CTX_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L103
.L102:
	movl	$0, %eax
	jmp	.L104
.L103:
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L108
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_nnmod@PLT
	testl	%eax, %eax
	je	.L109
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	jmp	.L106
.L108:
	nop
	jmp	.L106
.L109:
	nop
.L106:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE432:
	.size	SRP_Verify_B_mod_N, .-SRP_Verify_B_mod_N
	.globl	SRP_Verify_A_mod_N
	.type	SRP_Verify_A_mod_N, @function
SRP_Verify_A_mod_N:
.LFB433:
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
	call	SRP_Verify_B_mod_N@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	SRP_Verify_A_mod_N, .-SRP_Verify_A_mod_N
	.section	.rodata
.LC3:
	.string	"8192"
.LC4:
	.string	"6144"
.LC5:
	.string	"4096"
.LC6:
	.string	"3072"
.LC7:
	.string	"2048"
.LC8:
	.string	"1536"
.LC9:
	.string	"1024"
	.section	.data.rel,"aw"
	.align 32
	.type	knowngN, @object
	.size	knowngN, 168
knowngN:
	.quad	.LC3
	.quad	ossl_bn_generator_19
	.quad	ossl_bn_group_8192
	.quad	.LC4
	.quad	ossl_bn_generator_5
	.quad	ossl_bn_group_6144
	.quad	.LC5
	.quad	ossl_bn_generator_5
	.quad	ossl_bn_group_4096
	.quad	.LC6
	.quad	ossl_bn_generator_5
	.quad	ossl_bn_group_3072
	.quad	.LC7
	.quad	ossl_bn_generator_2
	.quad	ossl_bn_group_2048
	.quad	.LC8
	.quad	ossl_bn_generator_2
	.quad	ossl_bn_group_1536
	.quad	.LC9
	.quad	ossl_bn_generator_2
	.quad	ossl_bn_group_1024
	.text
	.globl	SRP_check_known_gN_param
	.type	SRP_check_known_gN_param, @function
SRP_check_known_gN_param:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L113
	cmpq	$0, -32(%rbp)
	jne	.L114
.L113:
	movl	$0, %eax
	jmp	.L115
.L114:
	movq	$0, -8(%rbp)
	jmp	.L116
.L118:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+knowngN(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L117
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+knowngN(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	testl	%eax, %eax
	jne	.L117
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	knowngN(%rip), %rax
	movq	(%rdx,%rax), %rax
	jmp	.L115
.L117:
	addq	$1, -8(%rbp)
.L116:
	cmpq	$6, -8(%rbp)
	jbe	.L118
	movl	$0, %eax
.L115:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	SRP_check_known_gN_param, .-SRP_check_known_gN_param
	.globl	SRP_get_default_gN
	.type	SRP_get_default_gN, @function
SRP_get_default_gN:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L120
	leaq	knowngN(%rip), %rax
	jmp	.L121
.L120:
	movq	$0, -8(%rbp)
	jmp	.L122
.L124:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	knowngN(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L123
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	knowngN(%rip), %rax
	addq	%rdx, %rax
	jmp	.L121
.L123:
	addq	$1, -8(%rbp)
.L122:
	cmpq	$6, -8(%rbp)
	jbe	.L124
	movl	$0, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	SRP_get_default_gN, .-SRP_get_default_gN
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
