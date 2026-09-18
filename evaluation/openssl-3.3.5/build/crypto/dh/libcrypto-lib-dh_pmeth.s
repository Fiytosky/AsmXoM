	.file	"dh_pmeth.c"
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
	.string	"../crypto/dh/dh_pmeth.c"
	.text
	.type	pkey_dh_init, @function
pkey_dh_init:
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
	movl	$58, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movl	$2048, (%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 4(%rax)
	movq	-8(%rbp), %rax
	movb	$1, 44(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 152(%rax)
	movq	-8(%rbp), %rax
	leaq	36(%rax), %rdx
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
	.size	pkey_dh_init, .-pkey_dh_init
	.type	pkey_dh_cleanup, @function
pkey_dh_cleanup:
.LFB571:
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
	je	.L10
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$77, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$79, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	pkey_dh_cleanup, .-pkey_dh_cleanup
	.type	pkey_dh_copy, @function
pkey_dh_copy:
.LFB572:
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
	call	pkey_dh_init
	testl	%eax, %eax
	jne	.L12
	movl	$0, %eax
	jmp	.L13
.L12:
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
	movl	12(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-8(%rbp), %rax
	movzbl	44(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, 44(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movl	$0, %eax
	jmp	.L13
.L14:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L15
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
	jne	.L16
	movl	$0, %eax
	jmp	.L13
.L16:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
.L15:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 80(%rax)
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	pkey_dh_copy, .-pkey_dh_copy
	.type	pkey_dh_ctrl, @function
pkey_dh_ctrl:
.LFB573:
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
	cmpl	$4112, -28(%rbp)
	je	.L18
	cmpl	$4112, -28(%rbp)
	jg	.L19
	cmpl	$4111, -28(%rbp)
	je	.L20
	cmpl	$4111, -28(%rbp)
	jg	.L19
	cmpl	$4110, -28(%rbp)
	je	.L21
	cmpl	$4110, -28(%rbp)
	jg	.L19
	cmpl	$4109, -28(%rbp)
	je	.L22
	cmpl	$4109, -28(%rbp)
	jg	.L19
	cmpl	$4108, -28(%rbp)
	je	.L23
	cmpl	$4108, -28(%rbp)
	jg	.L19
	cmpl	$4107, -28(%rbp)
	je	.L24
	cmpl	$4107, -28(%rbp)
	jg	.L19
	cmpl	$4106, -28(%rbp)
	je	.L25
	cmpl	$4106, -28(%rbp)
	jg	.L19
	cmpl	$4105, -28(%rbp)
	je	.L26
	cmpl	$4105, -28(%rbp)
	jg	.L19
	cmpl	$4104, -28(%rbp)
	je	.L27
	cmpl	$4104, -28(%rbp)
	jg	.L19
	cmpl	$4103, -28(%rbp)
	je	.L28
	cmpl	$4103, -28(%rbp)
	jg	.L19
	cmpl	$4102, -28(%rbp)
	je	.L29
	cmpl	$4102, -28(%rbp)
	jg	.L19
	cmpl	$4101, -28(%rbp)
	je	.L30
	cmpl	$4101, -28(%rbp)
	jg	.L19
	cmpl	$4100, -28(%rbp)
	je	.L31
	cmpl	$4100, -28(%rbp)
	jg	.L19
	cmpl	$4099, -28(%rbp)
	je	.L32
	cmpl	$4099, -28(%rbp)
	jg	.L19
	cmpl	$4098, -28(%rbp)
	je	.L33
	cmpl	$4098, -28(%rbp)
	jg	.L19
	cmpl	$2, -28(%rbp)
	je	.L34
	cmpl	$4097, -28(%rbp)
	jne	.L19
	cmpl	$255, -32(%rbp)
	jg	.L35
	movl	$-2, %eax
	jmp	.L36
.L35:
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L36
.L31:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L37
	movl	$-2, %eax
	jmp	.L36
.L37:
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 12(%rax)
	movl	$1, %eax
	jmp	.L36
.L18:
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	$1, %eax
	jmp	.L36
.L33:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L38
	movl	$-2, %eax
	jmp	.L36
.L38:
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 4(%rax)
	movl	$1, %eax
	jmp	.L36
.L30:
	cmpl	$0, -32(%rbp)
	js	.L39
	cmpl	$2, -32(%rbp)
	jle	.L40
.L39:
	movl	$-2, %eax
	jmp	.L36
.L40:
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	$1, %eax
	jmp	.L36
.L32:
	cmpl	$0, -32(%rbp)
	jle	.L41
	cmpl	$3, -32(%rbp)
	jg	.L41
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L42
.L41:
	movl	$-2, %eax
	jmp	.L36
.L42:
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 32(%rax)
	movl	$1, %eax
	jmp	.L36
.L20:
	cmpl	$0, -32(%rbp)
	jle	.L43
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L44
.L43:
	movl	$-2, %eax
	jmp	.L36
.L44:
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 32(%rax)
	movl	$1, %eax
	jmp	.L36
.L34:
	movl	$1, %eax
	jmp	.L36
.L29:
	cmpl	$-2, -32(%rbp)
	jne	.L45
	movq	-8(%rbp), %rax
	movzbl	44(%rax), %eax
	movsbl	%al, %eax
	jmp	.L36
.L45:
	cmpl	$1, -32(%rbp)
	je	.L46
	cmpl	$2, -32(%rbp)
	je	.L46
	movl	$-2, %eax
	jmp	.L36
.L46:
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 44(%rax)
	movl	$1, %eax
	jmp	.L36
.L28:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movl	$1, %eax
	jmp	.L36
.L27:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L36
.L26:
	cmpl	$0, -32(%rbp)
	jg	.L47
	movl	$-2, %eax
	jmp	.L36
.L47:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movl	$1, %eax
	jmp	.L36
.L25:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L36
.L24:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$195, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 64(%rax)
	cmpq	$0, -40(%rbp)
	je	.L48
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L49
.L48:
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
.L49:
	movl	$1, %eax
	jmp	.L36
.L23:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	jmp	.L36
.L22:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movl	$1, %eax
	jmp	.L36
.L21:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L36
.L19:
	movl	$-2, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	pkey_dh_ctrl, .-pkey_dh_ctrl
	.section	.rodata
.LC1:
	.string	"dh_paramgen_prime_len"
.LC2:
	.string	"dh_rfc5114"
.LC3:
	.string	"dh_param"
.LC4:
	.string	"dh_paramgen_generator"
.LC5:
	.string	"dh_paramgen_subprime_len"
.LC6:
	.string	"dh_paramgen_type"
.LC7:
	.string	"dh_pad"
	.text
	.type	pkey_dh_ctrl_str, @function
pkey_dh_ctrl_str:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L51
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_paramgen_prime_len@PLT
	jmp	.L52
.L51:
	leaq	.LC2(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L53
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	js	.L54
	cmpl	$3, -44(%rbp)
	jle	.L55
.L54:
	movl	$-2, %eax
	jmp	.L52
.L55:
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 32(%rax)
	movl	$1, %eax
	jmp	.L52
.L53:
	leaq	.LC3(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L56
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_sn2nid@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$245, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L52
.L57:
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 32(%rax)
	movl	$1, %eax
	jmp	.L52
.L56:
	leaq	.LC4(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L58
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_paramgen_generator@PLT
	jmp	.L52
.L58:
	leaq	.LC5(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_paramgen_subprime_len@PLT
	jmp	.L52
.L59:
	leaq	.LC6(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L60
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_paramgen_type@PLT
	jmp	.L52
.L60:
	leaq	.LC7(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L61
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_dh_pad@PLT
	jmp	.L52
.L61:
	movl	$-2, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	pkey_dh_ctrl_str, .-pkey_dh_ctrl_str
	.type	ffc_params_generate, @function
ffc_params_generate:
.LFB575:
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
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jle	.L63
	movl	$0, %eax
	jmp	.L72
.L63:
	call	DH_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L72
.L65:
	cmpl	$-1, -8(%rbp)
	jne	.L66
	cmpl	$2047, -12(%rbp)
	jle	.L67
	movl	$256, -8(%rbp)
	jmp	.L66
.L67:
	movl	$160, -8(%rbp)
.L66:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get0_name@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_ffc_set_digest@PLT
.L68:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L69
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rsi
	leaq	-28(%rbp), %rdi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_2_generate@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	jmp	.L70
.L69:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L70
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rsi
	leaq	-28(%rbp), %rdi
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ossl_ffc_params_FIPS186_4_generate@PLT
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L70:
	cmpl	$0, -4(%rbp)
	jg	.L71
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-24(%rbp), %rax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	ffc_params_generate, .-ffc_params_generate
	.type	pkey_dh_paramgen, @function
pkey_dh_paramgen:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L74
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$3, %eax
	jg	.L75
	movl	$920, -12(%rbp)
	jmp	.L76
.L75:
	movl	$28, -12(%rbp)
.L76:
	movq	-32(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %edi
	call	DH_new_by_nid@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L77
	movl	$0, %eax
	jmp	.L78
.L77:
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
	jmp	.L78
.L74:
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L79
	call	BN_GENCB_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L80
	movl	$0, %eax
	jmp	.L78
.L80:
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	evp_pkey_set_cb_translate@PLT
.L79:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L81
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ffc_params_generate
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	cmpq	$0, -24(%rbp)
	jne	.L82
	movl	$0, %eax
	jmp	.L78
.L82:
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$920, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movl	$1, %eax
	jmp	.L78
.L81:
	call	DH_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L83
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	movl	$0, %eax
	jmp	.L78
.L83:
	movq	-32(%rbp), %rax
	movl	4(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_generate_parameters_ex@PLT
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_GENCB_free@PLT
	cmpl	$0, -36(%rbp)
	je	.L84
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$28, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	jmp	.L85
.L84:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_free@PLT
.L85:
	movl	-36(%rbp), %eax
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	pkey_dh_paramgen, .-pkey_dh_paramgen
	.type	pkey_dh_keygen, @function
pkey_dh_keygen:
.LFB577:
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
	movq	152(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L87
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L87
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$380, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$107, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L88
.L87:
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L89
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, %edi
	call	DH_new_by_nid@PLT
	movq	%rax, -8(%rbp)
	jmp	.L90
.L89:
	call	DH_new@PLT
	movq	%rax, -8(%rbp)
.L90:
	cmpq	$0, -8(%rbp)
	jne	.L91
	movl	$0, %eax
	jmp	.L88
.L91:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_assign@PLT
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L92
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_copy_parameters@PLT
	testl	%eax, %eax
	jne	.L92
	movl	$0, %eax
	jmp	.L88
.L92:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, %rdi
	call	DH_generate_key@PLT
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	pkey_dh_keygen, .-pkey_dh_keygen
	.type	pkey_dh_derive, @function
pkey_dh_derive:
.LFB578:
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
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-72(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L95
.L94:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$406, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L96
.L95:
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DH@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L97
	cmpq	$0, -24(%rbp)
	jne	.L98
.L97:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$412, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$108, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L96
.L98:
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movzbl	44(%rax), %eax
	cmpb	$1, %al
	jne	.L99
	cmpq	$0, -80(%rbp)
	jne	.L100
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L96
.L100:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L101
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key_padded@PLT
	movl	%eax, -4(%rbp)
	jmp	.L102
.L101:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key@PLT
	movl	%eax, -4(%rbp)
.L102:
	cmpl	$0, -4(%rbp)
	jg	.L103
	movl	-4(%rbp), %eax
	jmp	.L96
.L103:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L96
.L99:
	movq	-16(%rbp), %rax
	movzbl	44(%rax), %eax
	cmpb	$2, %al
	jne	.L104
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L106
.L105:
	movl	$0, %eax
	jmp	.L96
.L106:
	cmpq	$0, -80(%rbp)
	jne	.L107
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L96
.L107:
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	%rax, %rdx
	je	.L108
	movl	$0, %eax
	jmp	.L96
.L108:
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DH_size@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L109
	movl	$0, %eax
	jmp	.L96
.L109:
	movl	-52(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$446, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L110
	movl	$0, %eax
	jmp	.L96
.L110:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DH_compute_key_padded@PLT
	testl	%eax, %eax
	jle	.L114
	movq	-16(%rbp), %rax
	movq	56(%rax), %r8
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	64(%rax), %r9
	movq	-16(%rbp), %rax
	movq	48(%rax), %r10
	movl	-52(%rbp), %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	DH_KDF_X9_42@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L115
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L112
.L114:
	nop
	jmp	.L112
.L115:
	nop
.L112:
	movl	-52(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-48(%rbp), %rax
	movl	$456, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-4(%rbp), %eax
	jmp	.L96
.L104:
	movl	$0, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	pkey_dh_derive, .-pkey_dh_derive
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	dh_pkey_meth, @object
	.size	dh_pkey_meth, 256
dh_pkey_meth:
	.long	28
	.long	0
	.quad	pkey_dh_init
	.quad	pkey_dh_copy
	.quad	pkey_dh_cleanup
	.quad	0
	.quad	pkey_dh_paramgen
	.quad	0
	.quad	pkey_dh_keygen
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
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_dh_derive
	.quad	pkey_dh_ctrl
	.quad	pkey_dh_ctrl_str
	.zero	48
	.text
	.globl	ossl_dh_pkey_method
	.type	ossl_dh_pkey_method, @function
ossl_dh_pkey_method:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dh_pkey_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	ossl_dh_pkey_method, .-ossl_dh_pkey_method
	.section	.data.rel.ro.local
	.align 32
	.type	dhx_pkey_meth, @object
	.size	dhx_pkey_meth, 256
dhx_pkey_meth:
	.long	920
	.long	0
	.quad	pkey_dh_init
	.quad	pkey_dh_copy
	.quad	pkey_dh_cleanup
	.quad	0
	.quad	pkey_dh_paramgen
	.quad	0
	.quad	pkey_dh_keygen
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
	.quad	0
	.quad	0
	.quad	0
	.quad	pkey_dh_derive
	.quad	pkey_dh_ctrl
	.quad	pkey_dh_ctrl_str
	.zero	48
	.text
	.globl	ossl_dhx_pkey_method
	.type	ossl_dhx_pkey_method, @function
ossl_dhx_pkey_method:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	dhx_pkey_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	ossl_dhx_pkey_method, .-ossl_dhx_pkey_method
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"pkey_dh_ctrl_str"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"pkey_dh_keygen"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"pkey_dh_derive"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
