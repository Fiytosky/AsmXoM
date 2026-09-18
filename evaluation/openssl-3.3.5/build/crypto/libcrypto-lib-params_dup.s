	.file	"params_dup.c"
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
	.globl	ossl_param_bytes_to_blocks
	.type	ossl_param_bytes_to_blocks, @function
ossl_param_bytes_to_blocks:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	ossl_param_bytes_to_blocks, .-ossl_param_bytes_to_blocks
	.section	.rodata
.LC0:
	.string	"../crypto/params_dup.c"
	.text
	.type	ossl_param_buf_alloc, @function
ossl_param_buf_alloc:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L8
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$39, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_zalloc@PLT
	movq	%rax, %rdx
	jmp	.L9
.L8:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$39, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
.L9:
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ossl_param_buf_alloc, .-ossl_param_buf_alloc
	.globl	ossl_param_set_secure_block
	.type	ossl_param_set_secure_block, @function
ossl_param_set_secure_block:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$127, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	ossl_param_set_secure_block, .-ossl_param_set_secure_block
	.type	ossl_param_dup, @function
ossl_param_dup:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	cmpq	$0, -64(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L14
.L24:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L15
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	movl	-40(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 16(%rax)
.L15:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$7, %eax
	je	.L16
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$6, %eax
	jne	.L17
.L16:
	movq	$8, -32(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L19
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	jmp	.L19
.L17:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L19
	movq	-24(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L19:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L20
	addq	$1, -32(%rbp)
.L20:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_param_bytes_to_blocks@PLT
	movq	%rax, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L21
	addq	$40, -64(%rbp)
	movl	-40(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movl	-40(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rsi
	movq	-72(%rbp), %rax
	addq	%rsi, %rax
	addq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	jmp	.L22
.L21:
	movl	-40(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movl	-40(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 16(%rax)
.L22:
	cmpq	$0, -80(%rbp)
	je	.L23
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
.L23:
	addq	$40, -24(%rbp)
.L14:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	ossl_param_dup, .-ossl_param_dup
	.globl	OSSL_PARAM_dup
	.type	OSSL_PARAM_dup, @function
OSSL_PARAM_dup:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movl	$1, -100(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$106, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L31
.L27:
	leaq	-96(%rbp), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-100(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_param_dup
	movl	-100(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	ossl_param_bytes_to_blocks@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_param_buf_alloc
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L31
.L29:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L30
	leaq	-96(%rbp), %rax
	addq	$32, %rax
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_param_buf_alloc
	testl	%eax, %eax
	jne	.L30
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$126, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ossl_param_dup
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_param_set_secure_block@PLT
	movq	-16(%rbp), %rax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	OSSL_PARAM_dup, .-OSSL_PARAM_dup
	.type	compare_params, @function
compare_params:
.LFB165:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	compare_params, .-compare_params
	.globl	OSSL_PARAM_merge
	.type	OSSL_PARAM_merge, @function
OSSL_PARAM_merge:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$2168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -2168(%rbp)
	movq	%rsi, -2176(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$0, -2168(%rbp)
	jne	.L35
	cmpq	$0, -2176(%rbp)
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$157, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L35:
	cmpq	$0, -2168(%rbp)
	je	.L37
	movq	-2168(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L38
.L39:
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -1120(%rbp,%rax,8)
	addq	$40, -24(%rbp)
.L38:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L37
	cmpq	$127, -56(%rbp)
	jbe	.L39
.L37:
	movq	-56(%rbp), %rax
	movq	$0, -1120(%rbp,%rax,8)
	cmpq	$0, -2176(%rbp)
	je	.L40
	movq	-2176(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L41
.L42:
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -2160(%rbp,%rax,8)
	addq	$40, -24(%rbp)
.L41:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L40
	cmpq	$127, -64(%rbp)
	jbe	.L42
.L40:
	movq	-64(%rbp), %rax
	movq	$0, -2160(%rbp,%rax,8)
	cmpq	$0, -56(%rbp)
	jne	.L43
	cmpq	$0, -64(%rbp)
	jne	.L43
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L56
.L43:
	leaq	compare_params(%rip), %rdx
	movq	-56(%rbp), %rsi
	leaq	-1120(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	leaq	compare_params(%rip), %rdx
	movq	-64(%rbp), %rsi
	leaq	-2160(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	leaq	.LC0(%rip), %rax
	movl	$184, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L44
	movl	$0, %eax
	jmp	.L56
.L44:
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-1120(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-2160(%rbp), %rax
	movq	%rax, -40(%rbp)
.L55:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	jmp	.L46
.L47:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	addq	$8, -40(%rbp)
.L46:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L47
	jmp	.L48
.L45:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L49
	jmp	.L50
.L51:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	addq	$8, -32(%rbp)
.L50:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	jmp	.L48
.L49:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strcasecmp@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.L52
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	addq	$8, -40(%rbp)
	addq	$8, -32(%rbp)
	jmp	.L55
.L52:
	cmpl	$0, -76(%rbp)
	jle	.L54
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	addq	$8, -40(%rbp)
	jmp	.L55
.L54:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
	addq	$8, -32(%rbp)
	jmp	.L55
.L48:
	movq	-72(%rbp), %rax
.L56:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	OSSL_PARAM_merge, .-OSSL_PARAM_merge
	.globl	OSSL_PARAM_free
	.type	OSSL_PARAM_free, @function
OSSL_PARAM_free:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L62
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L59
.L60:
	addq	$40, -8(%rbp)
.L59:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L60
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$127, %eax
	jne	.L61
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$233, %ecx
	movq	%rax, %rdi
	call	CRYPTO_secure_clear_free@PLT
.L61:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$234, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L62:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	OSSL_PARAM_free, .-OSSL_PARAM_free
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"OSSL_PARAM_dup"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"OSSL_PARAM_merge"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
