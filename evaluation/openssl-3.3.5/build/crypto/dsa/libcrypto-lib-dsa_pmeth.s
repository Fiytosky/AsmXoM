	.file	"dsa_pmeth.c"
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
	.string	"../crypto/dsa/dsa_pmeth.c"
	.text
	.type	pkey_dsa_init, @function
pkey_dsa_init:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$40, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movl	$2048, (%rax)
	movq	-8(%rbp), %rax
	movl	$224, 4(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 152(%rax)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-24(%rbp), %rax
	movl	$2, 112(%rax)
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	pkey_dsa_init, .-pkey_dsa_init
	.type	pkey_dsa_copy, @function
pkey_dsa_copy:
.LFB571:
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
	call	pkey_dsa_init
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
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
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	pkey_dsa_copy, .-pkey_dsa_copy
	.type	pkey_dsa_cleanup, @function
pkey_dsa_cleanup:
.LFB572:
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
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$74, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	pkey_dsa_cleanup, .-pkey_dsa_cleanup
	.type	pkey_dsa_sign, @function
pkey_dsa_sign:
.LFB573:
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
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DSA@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	cmpq	%rax, -72(%rbp)
	je	.L13
	movl	$0, %eax
	jmp	.L16
.L13:
	movq	-72(%rbp), %rax
	movl	%eax, %edi
	movq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_sign@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L15
	movl	-20(%rbp), %eax
	jmp	.L16
.L15:
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	pkey_dsa_sign, .-pkey_dsa_sign
	.type	pkey_dsa_verify, @function
pkey_dsa_verify:
.LFB574:
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
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DSA@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	cmpq	%rax, -72(%rbp)
	je	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-56(%rbp), %rax
	movl	%eax, %edi
	movq	-72(%rbp), %rax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %r9
	movl	%edi, %r8d
	movq	%rdx, %rcx
	movl	%esi, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	DSA_verify@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	pkey_dsa_verify, .-pkey_dsa_verify
	.type	pkey_dsa_ctrl, @function
pkey_dsa_ctrl:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$4099, -28(%rbp)
	je	.L21
	cmpl	$4099, -28(%rbp)
	jg	.L22
	cmpl	$4098, -28(%rbp)
	je	.L23
	cmpl	$4098, -28(%rbp)
	jg	.L22
	cmpl	$4097, -28(%rbp)
	je	.L24
	cmpl	$4097, -28(%rbp)
	jg	.L22
	cmpl	$13, -28(%rbp)
	je	.L25
	cmpl	$13, -28(%rbp)
	jg	.L22
	cmpl	$11, -28(%rbp)
	je	.L26
	cmpl	$11, -28(%rbp)
	jg	.L22
	cmpl	$7, -28(%rbp)
	je	.L26
	cmpl	$7, -28(%rbp)
	jg	.L22
	cmpl	$5, -28(%rbp)
	je	.L26
	cmpl	$5, -28(%rbp)
	jg	.L22
	cmpl	$1, -28(%rbp)
	je	.L27
	cmpl	$2, -28(%rbp)
	je	.L28
	jmp	.L22
.L24:
	cmpl	$255, -32(%rbp)
	jg	.L29
	movl	$-2, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L30
.L23:
	cmpl	$160, -32(%rbp)
	je	.L31
	cmpl	$224, -32(%rbp)
	je	.L31
	cmpl	$0, -32(%rbp)
	je	.L31
	cmpl	$256, -32(%rbp)
	je	.L31
	movl	$-2, %eax
	jmp	.L30
.L31:
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 4(%rax)
	movl	$1, %eax
	jmp	.L30
.L21:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$64, %eax
	je	.L32
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$675, %eax
	je	.L32
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$672, %eax
	je	.L32
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L32:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
	jmp	.L30
.L27:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$64, %eax
	je	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$116, %eax
	je	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$66, %eax
	je	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$675, %eax
	je	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$672, %eax
	je	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$673, %eax
	je	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$674, %eax
	je	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$1096, %eax
	je	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$1097, %eax
	je	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$1098, %eax
	je	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_type@PLT
	cmpl	$1099, %eax
	je	.L33
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$162, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L33:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
	jmp	.L30
.L25:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L30
.L26:
	movl	$1, %eax
	jmp	.L30
.L28:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$178, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$150, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L30
.L22:
	movl	$-2, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	pkey_dsa_ctrl, .-pkey_dsa_ctrl
	.section	.rodata
.LC1:
	.string	"dsa_paramgen_bits"
.LC2:
	.string	"dsa_paramgen_q_bits"
.LC3:
	.string	"dsa_paramgen_md"
	.text
	.type	pkey_dsa_ctrl_str, @function
pkey_dsa_ctrl_str:
.LFB576:
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
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L35
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_bits@PLT
	jmp	.L36
.L35:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L37
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_q_bits@PLT
	jmp	.L36
.L37:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L38
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_get_digestbyname@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$202, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$106, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L36
.L39:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dsa_paramgen_md@PLT
	jmp	.L36
.L38:
	movl	$-2, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	pkey_dsa_ctrl_str, .-pkey_dsa_ctrl_str
	.type	pkey_dsa_paramgen, @function
pkey_dsa_paramgen:
.LFB577:
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
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L41
	call	BN_GENCB_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L42
	movl	$0, %eax
	jmp	.L49
.L42:
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_set_cb_translate@PLT
	jmp	.L44
.L41:
	movq	$0, -8(%rbp)
.L44:
	call	DSA_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L45
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	movl	$0, %eax
	jmp	.L49
.L45:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_set_digest@PLT
.L46:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	-16(%rbp), %rdx
	leaq	8(%rdx), %rsi
	leaq	-32(%rbp), %rdx
	subq	$8, %rsp
	pushq	-8(%rbp)
	movq	%rdx, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %edi
	call	ossl_ffc_params_FIPS186_4_generate@PLT
	addq	$16, %rsp
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	cmpl	$0, -28(%rbp)
	jle	.L47
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	jmp	.L48
.L47:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
.L48:
	movl	-28(%rbp), %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	pkey_dsa_paramgen, .-pkey_dsa_paramgen
	.type	pkey_dsa_keygen, @function
pkey_dsa_keygen:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$248, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$10, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L52
.L51:
	call	DSA_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L53
	movl	$0, %eax
	jmp	.L52
.L53:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$116, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	jne	.L54
	movl	$0, %eax
	jmp	.L52
.L54:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DSA@PLT
	movq	%rax, %rdi
	call	DSA_generate_key@PLT
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	pkey_dsa_keygen, .-pkey_dsa_keygen
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	dsa_pkey_meth, @object
	.size	dsa_pkey_meth, 256
dsa_pkey_meth:
	.long	116
	.long	2
	.quad	pkey_dsa_init
	.quad	pkey_dsa_copy
	.quad	pkey_dsa_cleanup
	.quad	0
	.quad	pkey_dsa_paramgen
	.quad	0
	.quad	pkey_dsa_keygen
	.quad	0
	.quad	pkey_dsa_sign
	.quad	0
	.quad	pkey_dsa_verify
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
	.quad	pkey_dsa_ctrl
	.quad	pkey_dsa_ctrl_str
	.zero	48
	.text
	.globl	ossl_dsa_pkey_method
	.type	ossl_dsa_pkey_method, @function
ossl_dsa_pkey_method:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dsa_pkey_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	ossl_dsa_pkey_method, .-ossl_dsa_pkey_method
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 14
__func__.2:
	.string	"pkey_dsa_ctrl"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"pkey_dsa_ctrl_str"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"pkey_dsa_keygen"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
