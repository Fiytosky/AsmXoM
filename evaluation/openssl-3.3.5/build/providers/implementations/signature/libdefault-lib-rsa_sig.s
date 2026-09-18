	.file	"rsa_sig.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"pkcs1"
.LC1:
	.string	"none"
.LC2:
	.string	"x931"
.LC3:
	.string	"pss"
	.section	.data.rel.local,"aw"
	.align 32
	.type	padding_item, @object
	.size	padding_item, 80
padding_item:
	.long	1
	.zero	4
	.quad	.LC0
	.long	3
	.zero	4
	.quad	.LC1
	.long	5
	.zero	4
	.quad	.LC2
	.long	6
	.zero	4
	.quad	.LC3
	.long	0
	.zero	4
	.quad	0
	.text
	.type	rsa_get_md_size, @function
rsa_get_md_size:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cltq
	jmp	.L7
.L6:
	movl	$0, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	rsa_get_md_size, .-rsa_get_md_size
	.section	.rodata
	.align 8
.LC4:
	.string	"../providers/implementations/signature/rsa_sig.c"
	.text
	.type	rsa_check_padding, @function
rsa_check_padding:
.LFB442:
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
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$6, %eax
	je	.L9
	cmpl	$6, %eax
	jg	.L21
	cmpl	$3, %eax
	je	.L11
	cmpl	$5, %eax
	je	.L12
	jmp	.L21
.L11:
	cmpq	$0, -16(%rbp)
	jne	.L13
	cmpl	$0, -28(%rbp)
	je	.L22
.L13:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$129, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$168, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L15
.L12:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	RSA_X931_hash_id@PLT
	cmpl	$-1, %eax
	jne	.L23
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$170, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L15
.L9:
	movq	-8(%rbp), %rax
	movl	180(%rax), %eax
	cmpl	$-1, %eax
	je	.L24
	cmpq	$0, -16(%rbp)
	je	.L19
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L20
.L19:
	cmpq	$0, -24(%rbp)
	je	.L24
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	jne	.L24
.L20:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$174, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L15
.L21:
	nop
	jmp	.L16
.L22:
	nop
	jmp	.L16
.L23:
	nop
	jmp	.L16
.L24:
	nop
.L16:
	movl	$1, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	rsa_check_padding, .-rsa_check_padding
	.type	rsa_check_parameters, @function
rsa_check_parameters:
.LFB443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$6, %eax
	jne	.L26
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%edx, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_bits@PLT
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.L27
	subl	$1, -20(%rbp)
.L27:
	cmpl	$0, -44(%rbp)
	js	.L28
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L29
.L28:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 180(%rax)
.L26:
	movl	$1, %eax
.L30:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	rsa_check_parameters, .-rsa_check_parameters
	.type	rsa_newctx, @function
rsa_newctx:
.LFB444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	leaq	.LC4(%rip), %rax
	movl	$181, %edx
	movq	%rax, %rsi
	movl	$192, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L34
	cmpq	$0, -32(%rbp)
	je	.L35
	leaq	.LC4(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$183, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L35
.L34:
	leaq	.LC4(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$184, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L33
.L35:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movzbl	28(%rax), %edx
	orl	$1, %edx
	movb	%dl, 28(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$-4, 176(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 180(%rax)
	movq	-16(%rbp), %rax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	rsa_newctx, .-rsa_newctx
	.section	.rodata
	.align 8
.LC5:
	.string	"minimum salt length: %d, actual salt length: %d"
	.text
	.type	rsa_pss_compute_saltlen, @function
rsa_pss_compute_saltlen:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	176(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	$-1, -8(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L37
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L38
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$211, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L39
.L37:
	cmpl	$-4, -4(%rbp)
	jne	.L38
	movl	$-3, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L38
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$217, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L39
.L38:
	cmpl	$-3, -4(%rbp)
	je	.L40
	cmpl	$-2, -4(%rbp)
	jne	.L41
.L40:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L42
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L39
.L42:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, -16(%rbp)
	cmpl	$2, -16(%rbp)
	jle	.L43
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L44
.L43:
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$229, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$158, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L39
.L44:
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_bits@PLT
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.L45
	subl	$1, -4(%rbp)
.L45:
	cmpl	$0, -8(%rbp)
	js	.L41
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L41
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.L41:
	cmpl	$0, -4(%rbp)
	jns	.L46
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$239, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L39
.L46:
	movq	-24(%rbp), %rax
	movl	180(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jge	.L47
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$242, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movl	180(%rax), %eax
	movl	-4(%rbp), %ecx
	leaq	.LC5(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$172, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L39
.L47:
	movl	-4(%rbp), %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	rsa_pss_compute_saltlen, .-rsa_pss_compute_saltlen
	.section	.rodata
	.align 8
.LC6:
	.string	"Algorithm ID generation - md NID: %d"
	.align 8
.LC7:
	.string	"Algorithm ID generation - pad mode: %d"
	.text
	.type	rsa_generate_signature_aid, @function
rsa_generate_signature_aid:
.LFB446:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	$0, -8(%rbp)
	movq	-136(%rbp), %rdx
	movq	-128(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	WPACKET_init_der@PLT
	testl	%eax, %eax
	jne	.L49
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$262, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L61
.L49:
	movq	-120(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$1, %eax
	je	.L51
	cmpl	$6, %eax
	je	.L52
	jmp	.L62
.L51:
	movq	-120(%rbp), %rax
	movl	48(%rax), %edx
	leaq	-80(%rbp), %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_algorithmIdentifier_MDWithRSAEncryption@PLT
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jg	.L63
	cmpl	$0, -16(%rbp)
	jne	.L56
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$274, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L56:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$277, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	48(%rax), %eax
	leaq	.LC6(%rip), %rdx
	movl	%eax, %ecx
	movl	$524556, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L52:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_pss_compute_saltlen
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L64
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_defaults@PLT
	testl	%eax, %eax
	je	.L59
	movq	-120(%rbp), %rax
	movl	48(%rax), %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_hashalg@PLT
	testl	%eax, %eax
	je	.L59
	movq	-120(%rbp), %rax
	movl	120(%rax), %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_maskgenhashalg@PLT
	testl	%eax, %eax
	je	.L59
	movl	-12(%rbp), %edx
	leaq	-112(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_set_saltlen@PLT
	testl	%eax, %eax
	je	.L59
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4096, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	ossl_DER_w_algorithmIdentifier_RSA_PSS@PLT
	testl	%eax, %eax
	jne	.L65
.L59:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$293, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L62:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$298, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-120(%rbp), %rax
	movl	104(%rax), %eax
	leaq	.LC7(%rip), %rdx
	movl	%eax, %ecx
	movl	$524556, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L57
.L63:
	nop
	jmp	.L55
.L65:
	nop
.L55:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_finish@PLT
	testl	%eax, %eax
	je	.L66
	movq	-144(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	WPACKET_get_total_written@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_get_curr@PLT
	movq	%rax, -8(%rbp)
	jmp	.L57
.L64:
	nop
	jmp	.L57
.L66:
	nop
.L57:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	WPACKET_cleanup@PLT
	movq	-8(%rbp), %rax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	rsa_generate_signature_aid, .-rsa_generate_signature_aid
	.section	.rodata
.LC8:
	.string	"%s could not be fetched"
.LC9:
	.string	"digest=%s"
.LC10:
	.string	"%s exceeds name buffer length"
.LC11:
	.string	"digest %s != %s"
	.text
	.type	rsa_setup_md, @function
rsa_setup_md:
.LFB447:
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
	cmpq	$0, -56(%rbp)
	jne	.L68
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.L68:
	cmpq	$0, -48(%rbp)
	je	.L69
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$16, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_digest_rsa_sign_get_md_nid@PLT
	movl	%eax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L70
	cmpl	$0, -16(%rbp)
	jle	.L70
	movl	-16(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	rsa_check_padding
	testl	%eax, %eax
	je	.L70
	cmpq	$49, -24(%rbp)
	jbe	.L71
.L70:
	cmpq	$0, -8(%rbp)
	jne	.L72
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$330, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L72:
	cmpl	$0, -16(%rbp)
	jg	.L73
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$333, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	movl	$174, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L73:
	cmpq	$49, -24(%rbp)
	jbe	.L74
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L74:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L75
.L71:
	movq	-40(%rbp), %rax
	movzbl	28(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L76
	movq	-40(%rbp), %rax
	movzbl	52(%rax), %eax
	testb	%al, %al
	je	.L77
	movq	-40(%rbp), %rax
	leaq	52(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	jne	.L77
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$344, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	leaq	52(%rax), %rcx
	movq	-48(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$174, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L75
.L77:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$1, %eax
	jmp	.L75
.L76:
	movq	-40(%rbp), %rax
	movzbl	28(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	jne	.L78
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	jne	.L79
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L75
.L79:
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-40(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 120(%rax)
	movq	-40(%rbp), %rax
	leaq	124(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcpy@PLT
.L78:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 48(%rax)
	movq	-40(%rbp), %rax
	leaq	52(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcpy@PLT
.L69:
	movl	$1, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	rsa_setup_md, .-rsa_setup_md
	.type	rsa_setup_mgf1_md, @function
rsa_setup_mgf1_md:
.LFB448:
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
	cmpq	$0, -56(%rbp)
	jne	.L81
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.L81:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L82
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$387, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_digest_rsa_sign_get_md_nid@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L84
	movl	-12(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	rsa_check_padding
	testl	%eax, %eax
	jne	.L85
.L84:
	cmpl	$0, -12(%rbp)
	jg	.L86
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$395, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	movl	$174, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L86:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L83
.L85:
	movq	-40(%rbp), %rax
	leaq	124(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	%rax, -24(%rbp)
	cmpq	$49, -24(%rbp)
	jbe	.L87
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$402, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-48(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movl	$0, %eax
	jmp	.L83
.L87:
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 120(%rax)
	movq	-40(%rbp), %rax
	movzbl	28(%rax), %edx
	orl	$2, %edx
	movb	%dl, 28(%rax)
	movl	$1, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	rsa_setup_mgf1_md, .-rsa_setup_mgf1_md
	.section	.rodata
	.align 8
.LC12:
	.string	"PSS restrictions lack hash algorithm"
	.align 8
.LC13:
	.string	"PSS restrictions lack MGF1 hash algorithm"
.LC14:
	.string	"hash algorithm name too long"
	.align 8
.LC15:
	.string	"MGF1 hash algorithm name too long"
	.text
	.type	rsa_signverify_init, @function
rsa_signverify_init:
.LFB449:
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
	movl	%ecx, -92(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L89
	cmpq	$0, -8(%rbp)
	jne	.L90
.L89:
	movl	$0, %eax
	jmp	.L91
.L90:
	cmpq	$0, -80(%rbp)
	jne	.L92
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L92
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$424, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$114, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L92:
	cmpq	$0, -80(%rbp)
	je	.L93
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %edx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_check_key@PLT
	testl	%eax, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L91
.L94:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_up_ref@PLT
	testl	%eax, %eax
	jne	.L95
	movl	$0, %eax
	jmp	.L91
.L95:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movq	-8(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L93:
	movq	-8(%rbp), %rax
	movl	-92(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$-4, 176(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 180(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	testl	%eax, %eax
	je	.L96
	cmpl	$4096, %eax
	je	.L97
	jmp	.L107
.L96:
	movq	-8(%rbp), %rax
	movl	$1, 104(%rax)
	jmp	.L99
.L97:
	movq	-8(%rbp), %rax
	movl	$6, 104(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_rsa_get0_pss_params_30@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_is_unrestricted@PLT
	testl	%eax, %eax
	jne	.L108
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_hashalg@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_maskgenhashalg@PLT
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rsa_pss_params_30_saltlen@PLT
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rsa_oaeppss_nid2name@PLT
	movq	%rax, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	ossl_rsa_oaeppss_nid2name@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$466, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L101:
	cmpq	$0, -48(%rbp)
	jne	.L102
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$471, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L102:
	movq	-8(%rbp), %rax
	leaq	52(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	%rax, -56(%rbp)
	cmpq	$49, -56(%rbp)
	jbe	.L103
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$479, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L103:
	movq	-8(%rbp), %rax
	leaq	124(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_strlcpy@PLT
	movq	%rax, -56(%rbp)
	cmpq	$49, -56(%rbp)
	jbe	.L104
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$486, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdx
	movl	$122, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L104:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 176(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_setup_mgf1_md
	testl	%eax, %eax
	je	.L105
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_setup_md
	testl	%eax, %eax
	je	.L105
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	rsa_check_parameters
	testl	%eax, %eax
	jne	.L108
.L105:
	movl	$0, %eax
	jmp	.L91
.L107:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$502, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$178, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L91
.L108:
	nop
.L99:
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rsa_set_ctx_params
	testl	%eax, %eax
	jne	.L106
	movl	$0, %eax
	jmp	.L91
.L106:
	movl	$1, %eax
.L91:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	rsa_signverify_init, .-rsa_signverify_init
	.type	setup_tbuf, @function
setup_tbuf:
.LFB450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movl	$1, %eax
	jmp	.L111
.L110:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	cltq
	leaq	.LC4(%rip), %rcx
	movl	$516, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 184(%rax)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	jne	.L112
	movl	$0, %eax
	jmp	.L111
.L112:
	movl	$1, %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	setup_tbuf, .-setup_tbuf
	.type	clean_tbuf, @function
clean_tbuf:
.LFB451:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L115:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	clean_tbuf, .-clean_tbuf
	.type	free_tbuf, @function
free_tbuf:
.LFB452:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clean_tbuf
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	leaq	.LC4(%rip), %rcx
	movl	$530, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 184(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	free_tbuf, .-free_tbuf
	.type	rsa_sign_init, @function
rsa_sign_init:
.LFB453:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L118
	movl	$0, %eax
	jmp	.L119
.L118:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	rsa_signverify_init
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	rsa_sign_init, .-rsa_sign_init
	.section	.rodata
	.align 8
.LC16:
	.string	"is %zu, should be at least %zu"
.LC17:
	.string	"MDC2"
	.align 8
.LC18:
	.string	"only PKCS#1 padding supported with MDC2"
	.align 8
.LC19:
	.string	"RSA key size = %d, expected minimum = %d"
	.align 8
.LC20:
	.string	"minimum salt length set to %d, but the digest only gives %d"
	.align 8
.LC21:
	.string	"minimum salt length set to %d, but theactual salt length is only set to %d"
	.align 8
.LC22:
	.string	"Only X.931, PKCS#1 v1.5 or PSS padding allowed"
	.text
	.type	rsa_sign, @function
rsa_sign:
.LFB454:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	cltq
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_get_md_size
	movq	%rax, -48(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L121
	movl	$0, %eax
	jmp	.L122
.L121:
	cmpq	$0, -80(%rbp)
	jne	.L123
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L122
.L123:
	movq	-96(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L124
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$558, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rcx
	movq	-96(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$179, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L124:
	cmpq	$0, -48(%rbp)
	je	.L125
	movq	-112(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L126
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$565, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$166, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L126:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_is_a@PLT
	testl	%eax, %eax
	je	.L127
	movq	-32(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$1, %eax
	je	.L128
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$574, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdx
	movl	$168, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L128:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-112(%rbp), %rax
	movl	%eax, %edi
	leaq	-52(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	RSA_sign_ASN1_OCTET_STRING@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L130
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$582, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L130:
	movl	-52(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L131
.L127:
	movq	-32(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$6, %eax
	je	.L132
	cmpl	$6, %eax
	jg	.L133
	cmpl	$1, %eax
	je	.L134
	cmpl	$5, %eax
	jne	.L133
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movslq	%eax, %rdx
	movq	-112(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, %rdx
	jnb	.L135
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$592, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-112(%rbp), %rax
	leaq	1(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, %edx
	leaq	.LC19(%rip), %rax
	movq	%rbx, %r8
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$171, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L135:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L136
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$598, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524345, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L136:
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, %edi
	call	RSA_X931_hash_id@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	movq	-112(%rbp), %rdx
	addl	$1, %edx
	movl	%edx, %edi
	movq	-80(%rbp), %rdx
	movl	$5, %r8d
	movq	%rax, %rsi
	call	RSA_private_encrypt@PLT
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	clean_tbuf
	jmp	.L131
.L134:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-112(%rbp), %rax
	movl	%eax, %r10d
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	leaq	-56(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%r10d, %edx
	movl	%eax, %edi
	call	RSA_sign@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L138
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$615, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L138:
	movl	-56(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L131
.L132:
	movq	-32(%rbp), %rax
	movl	180(%rax), %eax
	cmpl	$-1, %eax
	je	.L139
	movq	-32(%rbp), %rax
	movl	176(%rax), %eax
	cmpl	$-1, %eax
	jne	.L140
	movq	-32(%rbp), %rax
	movl	180(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cmpl	%eax, %ebx
	jle	.L140
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$628, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	180(%rax), %eax
	leaq	.LC20(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$172, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L140:
	movq	-32(%rbp), %rax
	movl	176(%rax), %eax
	testl	%eax, %eax
	js	.L145
	movq	-32(%rbp), %rax
	movl	176(%rax), %edx
	movq	-32(%rbp), %rax
	movl	180(%rax), %eax
	cmpl	%eax, %edx
	jge	.L145
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$640, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movl	176(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	180(%rax), %eax
	leaq	.LC21(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$172, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L145:
	nop
.L139:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L142
	movl	$0, %eax
	jmp	.L122
.L142:
	movq	-32(%rbp), %rax
	movl	176(%rax), %r8d
	movq	-32(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	184(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-104(%rbp), %rdx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	RSA_padding_add_PKCS1_PSS_mgf1@PLT
	testl	%eax, %eax
	jne	.L143
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$657, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L143:
	movq	-32(%rbp), %rax
	movq	16(%rax), %r12
	movq	-32(%rbp), %rax
	movq	184(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, %edi
	movq	-80(%rbp), %rax
	movl	$3, %r8d
	movq	%r12, %rcx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	RSA_private_encrypt@PLT
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	clean_tbuf
	jmp	.L131
.L133:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$666, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	movl	$168, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L125:
	movq	-32(%rbp), %rax
	movl	104(%rax), %esi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-112(%rbp), %rax
	movl	%eax, %edi
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	RSA_private_encrypt@PLT
	movl	%eax, -20(%rbp)
.L131:
	cmpl	$0, -20(%rbp)
	jg	.L144
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$679, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L122
.L144:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L122:
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	rsa_sign, .-rsa_sign
	.type	rsa_verify_recover_init, @function
rsa_verify_recover_init:
.LFB455:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L147
	movl	$0, %eax
	jmp	.L148
.L147:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$64, %ecx
	movq	%rax, %rdi
	call	rsa_signverify_init
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	rsa_verify_recover_init, .-rsa_verify_recover_init
	.section	.rodata
.LC23:
	.string	"Should be %d, but got %d"
	.align 8
.LC24:
	.string	"buffer size is %d, should be %d"
	.align 8
.LC25:
	.string	"Only X.931 or PKCS#1 v1.5 padding allowed"
	.text
	.type	rsa_verify_recover, @function
rsa_verify_recover:
.LFB456:
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
	movq	%r9, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L150
	movl	$0, %eax
	jmp	.L151
.L150:
	cmpq	$0, -64(%rbp)
	jne	.L152
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L151
.L152:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L153
	movq	-32(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$1, %eax
	je	.L154
	cmpl	$5, %eax
	jne	.L155
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L156
	movl	$0, %eax
	jmp	.L151
.L156:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-96(%rbp), %rax
	movl	%eax, %edi
	movq	-88(%rbp), %rax
	movl	$5, %r8d
	movq	%rax, %rsi
	call	RSA_public_decrypt@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L157
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$722, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L151
.L157:
	subl	$1, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	184(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, %edi
	call	RSA_X931_hash_id@PLT
	cmpl	%eax, %ebx
	je	.L158
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$727, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$173, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L151
.L158:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cmpl	%eax, -20(%rbp)
	je	.L159
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$731, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, %edx
	movl	-20(%rbp), %ecx
	leaq	.LC23(%rip), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rax, %rdx
	movl	$166, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L151
.L159:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	cmpq	%rax, -64(%rbp)
	je	.L165
	movl	-20(%rbp), %eax
	cltq
	cmpq	%rax, -80(%rbp)
	jnb	.L161
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$740, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-20(%rbp), %ecx
	movq	-80(%rbp), %rax
	leaq	.LC24(%rip), %rdx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movl	$106, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L151
.L161:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	184(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L165
.L154:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	movq	-88(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	movq	-64(%rbp), %rdx
	pushq	%rcx
	pushq	-96(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	ossl_rsa_verify@PLT
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L163
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$756, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L151
.L163:
	movq	-40(%rbp), %rax
	movl	%eax, -20(%rbp)
	jmp	.L164
.L155:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$764, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdx
	movl	$168, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L151
.L153:
	movq	-32(%rbp), %rax
	movl	104(%rax), %esi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	%eax, %edi
	movq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	RSA_public_decrypt@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L164
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$772, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L151
.L165:
	nop
.L164:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L151:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE456:
	.size	rsa_verify_recover, .-rsa_verify_recover
	.type	rsa_verify_init, @function
rsa_verify_init:
.LFB457:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L167
	movl	$0, %eax
	jmp	.L168
.L167:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$32, %ecx
	movq	%rax, %rdi
	call	rsa_signverify_init
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE457:
	.size	rsa_verify_init, .-rsa_verify_init
	.type	rsa_verify, @function
rsa_verify:
.LFB458:
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
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L170
	movl	$0, %eax
	jmp	.L190
.L170:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L172
	movq	-8(%rbp), %rax
	movl	104(%rax), %eax
	cmpl	$6, %eax
	je	.L173
	cmpl	$6, %eax
	jg	.L174
	cmpl	$1, %eax
	je	.L175
	cmpl	$5, %eax
	je	.L176
	jmp	.L174
.L175:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	%eax, %r8d
	movq	-88(%rbp), %rax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	%rcx, %r9
	movq	%rdx, %rcx
	movl	%edi, %edx
	movl	%eax, %edi
	call	RSA_verify@PLT
	testl	%eax, %eax
	jne	.L177
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$801, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L177:
	movl	$1, %eax
	jmp	.L190
.L176:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L178
	movl	$0, %eax
	jmp	.L190
.L178:
	movq	-8(%rbp), %rax
	movq	184(%rax), %rsi
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	rsa_verify_recover
	testl	%eax, %eax
	jg	.L191
	movl	$0, %eax
	jmp	.L190
.L173:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_get_md_size
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L181
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$823, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$166, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L181:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L182
	movl	$0, %eax
	jmp	.L190
.L182:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	%eax, %edi
	movq	-64(%rbp), %rax
	movl	$3, %r8d
	movq	%rax, %rsi
	call	RSA_public_decrypt@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L183
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$834, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L183:
	movq	-8(%rbp), %rax
	movl	176(%rax), %r8d
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	112(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-80(%rbp), %rsi
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	RSA_verify_PKCS1_PSS_mgf1@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.L184
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$842, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L184:
	movl	$1, %eax
	jmp	.L190
.L174:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$848, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdx
	movl	$168, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L172:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	setup_tbuf
	testl	%eax, %eax
	jne	.L186
	movl	$0, %eax
	jmp	.L190
.L186:
	movq	-8(%rbp), %rax
	movl	104(%rax), %esi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	%eax, %edi
	movq	-64(%rbp), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	RSA_public_decrypt@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L187
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$860, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L190
.L187:
	movl	-12(%rbp), %eax
	cltq
	movq	%rax, -40(%rbp)
	jmp	.L185
.L191:
	nop
.L185:
	movq	-40(%rbp), %rax
	cmpq	%rax, -88(%rbp)
	jne	.L188
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	184(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L189
.L188:
	movl	$0, %eax
	jmp	.L190
.L189:
	movl	$1, %eax
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE458:
	.size	rsa_verify, .-rsa_verify
	.type	rsa_digest_signverify_init, @function
rsa_digest_signverify_init:
.LFB459:
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
	movl	%r8d, -52(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L193
	movl	$0, %eax
	jmp	.L194
.L193:
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_signverify_init
	testl	%eax, %eax
	jne	.L195
	movl	$0, %eax
	jmp	.L194
.L195:
	cmpq	$0, -32(%rbp)
	je	.L196
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L197
	movq	-8(%rbp), %rax
	leaq	52(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_strcasecmp@PLT
	testl	%eax, %eax
	je	.L196
.L197:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_setup_md
	testl	%eax, %eax
	jne	.L196
	movl	$0, %eax
	jmp	.L194
.L196:
	movq	-8(%rbp), %rax
	movzbl	28(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 28(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L198
	call	EVP_MD_CTX_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L201
.L198:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex2@PLT
	testl	%eax, %eax
	je	.L202
	movl	$1, %eax
	jmp	.L194
.L201:
	nop
	jmp	.L199
.L202:
	nop
.L199:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$0, %eax
.L194:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE459:
	.size	rsa_digest_signverify_init, .-rsa_digest_signverify_init
	.type	rsa_digest_signverify_update, @function
rsa_digest_signverify_update:
.LFB460:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L204
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L205
.L204:
	movl	$0, %eax
	jmp	.L206
.L205:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
.L206:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE460:
	.size	rsa_digest_signverify_update, .-rsa_digest_signverify_update
	.type	rsa_digest_sign_init, @function
rsa_digest_sign_init:
.LFB461:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L208
	movl	$0, %eax
	jmp	.L209
.L208:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$16, %r8d
	movq	%rax, %rdi
	call	rsa_digest_signverify_init
.L209:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE461:
	.size	rsa_digest_sign_init, .-rsa_digest_sign_init
	.type	rsa_digest_sign_final, @function
rsa_digest_sign_final:
.LFB462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -84(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	je	.L211
	cmpq	$0, -8(%rbp)
	jne	.L212
.L211:
	movl	$0, %eax
	jmp	.L216
.L212:
	movq	-8(%rbp), %rax
	movzbl	28(%rax), %edx
	orl	$1, %edx
	movb	%dl, 28(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L214
	movl	$0, %eax
	jmp	.L216
.L214:
	cmpq	$0, -112(%rbp)
	je	.L215
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L215
	movl	$0, %eax
	jmp	.L216
.L215:
	movl	-84(%rbp), %eax
	movl	%eax, %r8d
	leaq	-80(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsa_sign
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE462:
	.size	rsa_digest_sign_final, .-rsa_digest_sign_final
	.type	rsa_digest_verify_init, @function
rsa_digest_verify_init:
.LFB463:
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
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L218
	movl	$0, %eax
	jmp	.L219
.L218:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$32, %r8d
	movq	%rax, %rdi
	call	rsa_digest_signverify_init
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE463:
	.size	rsa_digest_verify_init, .-rsa_digest_verify_init
	.type	rsa_digest_verify_final, @function
rsa_digest_verify_final:
.LFB464:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -84(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L221
	movl	$0, %eax
	jmp	.L226
.L221:
	cmpq	$0, -8(%rbp)
	jne	.L223
	movl	$0, %eax
	jmp	.L226
.L223:
	movq	-8(%rbp), %rax
	movzbl	28(%rax), %edx
	orl	$1, %edx
	movb	%dl, 28(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L224
	movl	$0, %eax
	jmp	.L226
.L224:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	-84(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jne	.L225
	movl	$0, %eax
	jmp	.L226
.L225:
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	leaq	-80(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	rsa_verify
.L226:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE464:
	.size	rsa_digest_verify_final, .-rsa_digest_verify_final
	.type	rsa_freectx, @function
rsa_freectx:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L230
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC4(%rip), %rcx
	movl	$1003, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_tbuf
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$1007, %ecx
	movl	$192, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L227
.L230:
	nop
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	rsa_freectx, .-rsa_freectx
	.type	rsa_dupctx, @function
rsa_dupctx:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	call	ossl_prov_is_running@PLT
	testl	%eax, %eax
	jne	.L232
	movl	$0, %eax
	jmp	.L233
.L232:
	leaq	.LC4(%rip), %rax
	movl	$1018, %edx
	movq	%rax, %rsi
	movl	$192, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L234
	movl	$0, %eax
	jmp	.L233
.L234:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	96(%rdx), %rcx
	movq	104(%rdx), %rbx
	movq	%rcx, 96(%rax)
	movq	%rbx, 104(%rax)
	movq	112(%rdx), %rcx
	movq	120(%rdx), %rbx
	movq	%rcx, 112(%rax)
	movq	%rbx, 120(%rax)
	movq	128(%rdx), %rcx
	movq	136(%rdx), %rbx
	movq	%rcx, 128(%rax)
	movq	%rbx, 136(%rax)
	movq	144(%rdx), %rcx
	movq	152(%rdx), %rbx
	movq	%rcx, 144(%rax)
	movq	%rbx, 152(%rax)
	movq	160(%rdx), %rcx
	movq	168(%rdx), %rbx
	movq	%rcx, 160(%rax)
	movq	%rbx, 168(%rax)
	movq	176(%rdx), %rcx
	movq	184(%rdx), %rbx
	movq	%rcx, 176(%rax)
	movq	%rbx, 184(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 184(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L235
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	RSA_up_ref@PLT
	testl	%eax, %eax
	je	.L242
.L235:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L237
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	je	.L243
.L237:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L238
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_up_ref@PLT
	testl	%eax, %eax
	je	.L244
.L238:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L239
	call	EVP_MD_CTX_new@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L245
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	je	.L245
.L239:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L241
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC4(%rip), %rcx
	movl	$1050, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-32(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L246
.L241:
	movq	-32(%rbp), %rax
	jmp	.L233
.L242:
	nop
	jmp	.L236
.L243:
	nop
	jmp	.L236
.L244:
	nop
	jmp	.L236
.L245:
	nop
	jmp	.L236
.L246:
	nop
.L236:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	rsa_freectx
	movl	$0, %eax
.L233:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	rsa_dupctx, .-rsa_dupctx
	.section	.rodata
.LC26:
	.string	"algorithm-id"
.LC27:
	.string	"pad-mode"
.LC28:
	.string	"digest"
.LC29:
	.string	"mgf1-digest"
.LC30:
	.string	"saltlen"
.LC31:
	.string	"max"
.LC32:
	.string	"auto"
.LC33:
	.string	"auto-digestmax"
.LC34:
	.string	"%d"
	.text
	.type	rsa_get_ctx_params, @function
rsa_get_ctx_params:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L248
	movl	$0, %eax
	jmp	.L249
.L248:
	leaq	.LC26(%rip), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L250
	leaq	-64(%rbp), %rdx
	leaq	-192(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$128, %edx
	movq	%rax, %rdi
	call	rsa_generate_signature_aid
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L251
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_octet_string@PLT
	testl	%eax, %eax
	jne	.L250
.L251:
	movl	$0, %eax
	jmp	.L249
.L250:
	leaq	.LC27(%rip), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L253
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L254
	cmpl	$4, %eax
	je	.L255
	jmp	.L275
.L254:
	movq	-32(%rbp), %rax
	movl	104(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L276
	movl	$0, %eax
	jmp	.L249
.L255:
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L258
.L261:
	movq	-32(%rbp), %rax
	movl	104(%rax), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	leaq	padding_item(%rip), %rdx
	movl	(%rcx,%rdx), %edx
	cmpl	%edx, %eax
	jne	.L259
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+padding_item(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L260
.L259:
	addl	$1, -4(%rbp)
.L258:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	padding_item(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L261
.L260:
	cmpq	$0, -16(%rbp)
	je	.L262
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L277
	movl	$0, %eax
	jmp	.L249
.L262:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$1105, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L277
.L275:
	movl	$0, %eax
	jmp	.L249
.L276:
	nop
	jmp	.L253
.L277:
	nop
.L253:
	leaq	.LC28(%rip), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L264
	movq	-32(%rbp), %rax
	leaq	52(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L264
	movl	$0, %eax
	jmp	.L249
.L264:
	leaq	.LC29(%rip), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L265
	movq	-32(%rbp), %rax
	leaq	124(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L265
	movl	$0, %eax
	jmp	.L249
.L265:
	leaq	.LC30(%rip), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L266
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L267
	movq	-32(%rbp), %rax
	movl	176(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L266
	movl	$0, %eax
	jmp	.L249
.L267:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L266
	movq	$0, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	176(%rax), %eax
	cmpl	$-1, %eax
	je	.L268
	testl	%eax, %eax
	jns	.L269
	cmpl	$-2, %eax
	je	.L270
	cmpl	$-2, %eax
	jg	.L269
	cmpl	$-4, %eax
	je	.L271
	cmpl	$-3, %eax
	je	.L272
	jmp	.L269
.L268:
	leaq	.LC28(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L273
.L272:
	leaq	.LC31(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L273
.L270:
	leaq	.LC32(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L273
.L271:
	leaq	.LC33(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L273
.L269:
	movq	-32(%rbp), %rax
	movl	176(%rax), %edx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC34(%rip), %rdi
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L274
	movl	$0, %eax
	jmp	.L249
.L274:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	nop
.L273:
	cmpq	$0, -24(%rbp)
	je	.L266
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_string@PLT
	testl	%eax, %eax
	jne	.L266
	movl	$0, %eax
	jmp	.L249
.L266:
	movl	$1, %eax
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	rsa_get_ctx_params, .-rsa_get_ctx_params
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	known_gettable_ctx_params, @object
	.size	known_gettable_ctx_params, 240
known_gettable_ctx_params:
	.quad	.LC26
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC27
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC28
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC29
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC30
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	rsa_gettable_ctx_params, @function
rsa_gettable_ctx_params:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	known_gettable_ctx_params(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	rsa_gettable_ctx_params, .-rsa_gettable_ctx_params
	.section	.rodata
.LC35:
	.string	"properties"
	.align 8
.LC36:
	.string	"OAEP padding not allowed for signing / verifying"
	.align 8
.LC37:
	.string	"PSS padding only allowed for sign and verify operations"
	.align 8
.LC38:
	.string	"PKCS#1 padding not allowed with RSA-PSS"
	.align 8
.LC39:
	.string	"No padding not allowed with RSA-PSS"
	.align 8
.LC40:
	.string	"X.931 padding not allowed with RSA-PSS"
	.align 8
.LC41:
	.string	"PSS saltlen can only be specified if PSS padding has been specified first"
	.align 8
.LC42:
	.string	"Cannot use autodetected salt length"
	.align 8
.LC43:
	.string	"Should be more than %d, but would be set to match digest size (%d)"
	.align 8
.LC44:
	.string	"Should be more than %d, but would be set to %d"
.LC45:
	.string	"mgf1-properties"
.LC46:
	.string	"SHA1"
	.text
	.type	rsa_set_ctx_params, @function
rsa_set_ctx_params:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$760, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -760(%rbp)
	movq	%rsi, -768(%rbp)
	movq	-760(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movw	$0, -80(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -376(%rbp)
	movq	$0, -368(%rbp)
	movq	$0, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -328(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -264(%rbp)
	movq	$0, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -240(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -408(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -456(%rbp)
	movq	$0, -448(%rbp)
	movq	$0, -440(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -424(%rbp)
	movw	$0, -416(%rbp)
	movq	$0, -472(%rbp)
	movq	$0, -736(%rbp)
	movq	$0, -728(%rbp)
	movq	$0, -720(%rbp)
	movq	$0, -712(%rbp)
	movq	$0, -704(%rbp)
	movq	$0, -696(%rbp)
	movq	$0, -688(%rbp)
	movq	$0, -680(%rbp)
	movq	$0, -672(%rbp)
	movq	$0, -664(%rbp)
	movq	$0, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	$0, -640(%rbp)
	movq	$0, -632(%rbp)
	movq	$0, -624(%rbp)
	movq	$0, -616(%rbp)
	movq	$0, -608(%rbp)
	movq	$0, -600(%rbp)
	movq	$0, -592(%rbp)
	movq	$0, -584(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -568(%rbp)
	movq	$0, -560(%rbp)
	movq	$0, -552(%rbp)
	movq	$0, -544(%rbp)
	movq	$0, -536(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -520(%rbp)
	movq	$0, -512(%rbp)
	movq	$0, -504(%rbp)
	movq	$0, -496(%rbp)
	movq	$0, -488(%rbp)
	movq	$0, -744(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L281
	movl	$0, %eax
	jmp	.L332
.L281:
	cmpq	$0, -768(%rbp)
	jne	.L283
	movl	$1, %eax
	jmp	.L332
.L283:
	movq	-40(%rbp), %rax
	movl	104(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	176(%rax), %eax
	movl	%eax, -72(%rbp)
	leaq	.LC28(%rip), %rdx
	movq	-768(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L284
	leaq	.LC35(%rip), %rdx
	movq	-768(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -56(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	-136(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L285
	movl	$0, %eax
	jmp	.L332
.L285:
	cmpq	$0, -56(%rbp)
	je	.L284
	leaq	-400(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-408(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L284
	movl	$0, %eax
	jmp	.L332
.L284:
	leaq	.LC27(%rip), %rdx
	movq	-768(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L286
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L287
	cmpl	$4, %eax
	je	.L288
	jmp	.L333
.L287:
	leaq	-68(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L335
	movl	$0, %eax
	jmp	.L332
.L288:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L292
	movl	$0, %eax
	jmp	.L332
.L292:
	movl	$0, -28(%rbp)
	jmp	.L293
.L296:
	movl	-28(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+padding_item(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L294
	movl	-28(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	padding_item(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -68(%rbp)
	nop
	jmp	.L291
.L294:
	addl	$1, -28(%rbp)
.L293:
	movl	-28(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	padding_item(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	jne	.L296
	jmp	.L291
.L333:
	movl	$0, %eax
	jmp	.L332
.L335:
	nop
.L291:
	movl	-68(%rbp), %eax
	cmpl	$6, %eax
	je	.L297
	cmpl	$6, %eax
	jg	.L298
	cmpl	$5, %eax
	je	.L299
	cmpl	$5, %eax
	jg	.L298
	cmpl	$4, %eax
	je	.L300
	cmpl	$4, %eax
	jg	.L298
	cmpl	$1, %eax
	je	.L301
	cmpl	$3, %eax
	je	.L302
	jmp	.L298
.L300:
	leaq	.LC36(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L298
.L297:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	andl	$48, %eax
	testl	%eax, %eax
	jne	.L336
	leaq	.LC37(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L298
.L301:
	leaq	.LC38(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L304
.L302:
	leaq	.LC39(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L304
.L299:
	leaq	.LC40(%rip), %rax
	movq	%rax, -24(%rbp)
.L304:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	testl	%eax, %eax
	je	.L337
	nop
.L298:
	cmpq	$0, -24(%rbp)
	jne	.L305
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$1274, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$165, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L306
.L305:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$1277, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	$165, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L306:
	movl	$0, %eax
	jmp	.L332
.L336:
	nop
	jmp	.L286
.L337:
	nop
.L286:
	leaq	.LC30(%rip), %rdx
	movq	-768(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L307
	movl	-68(%rbp), %eax
	cmpl	$6, %eax
	je	.L308
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$1287, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdx
	movl	$136, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L332
.L308:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	je	.L309
	cmpl	$4, %eax
	je	.L310
	jmp	.L334
.L309:
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L338
	movl	$0, %eax
	jmp	.L332
.L310:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC28(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L314
	movl	$-1, -72(%rbp)
	jmp	.L313
.L314:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC31(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L316
	movl	$-3, -72(%rbp)
	jmp	.L313
.L316:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC32(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L317
	movl	$-2, -72(%rbp)
	jmp	.L313
.L317:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC33(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L318
	movl	$-4, -72(%rbp)
	jmp	.L313
.L318:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -72(%rbp)
	jmp	.L313
.L334:
	movl	$0, %eax
	jmp	.L332
.L338:
	nop
.L313:
	movl	-72(%rbp), %eax
	cmpl	$-4, %eax
	jge	.L319
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$1320, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$112, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L332
.L319:
	movq	-40(%rbp), %rax
	movl	180(%rax), %eax
	cmpl	$-1, %eax
	je	.L307
	movl	-72(%rbp), %eax
	cmpl	$-1, %eax
	je	.L320
	testl	%eax, %eax
	jns	.L321
	cmpl	$-4, %eax
	je	.L322
	cmpl	$-2, %eax
	jne	.L321
.L322:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$32, %eax
	jne	.L339
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$1329, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdx
	movl	$112, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L332
.L320:
	movq	-40(%rbp), %rax
	movl	180(%rax), %ebx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cmpl	%eax, %ebx
	jle	.L340
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$1336, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	180(%rax), %eax
	leaq	.LC43(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$172, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L332
.L321:
	movl	-72(%rbp), %eax
	testl	%eax, %eax
	js	.L307
	movq	-40(%rbp), %rax
	movl	180(%rax), %edx
	movl	-72(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L307
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$1347, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-72(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	180(%rax), %eax
	leaq	.LC44(%rip), %rdx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$172, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L332
.L339:
	nop
	jmp	.L307
.L340:
	nop
.L307:
	leaq	.LC29(%rip), %rdx
	movq	-768(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L325
	leaq	.LC45(%rip), %rdx
	movq	-768(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -64(%rbp)
	leaq	-464(%rbp), %rax
	movq	%rax, -472(%rbp)
	leaq	-472(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$50, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L326
	movl	$0, %eax
	jmp	.L332
.L326:
	cmpq	$0, -64(%rbp)
	je	.L327
	leaq	-736(%rbp), %rax
	movq	%rax, -744(%rbp)
	leaq	-744(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L327
	movl	$0, %eax
	jmp	.L332
.L327:
	movl	-68(%rbp), %eax
	cmpl	$6, %eax
	je	.L325
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$1376, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$167, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L332
.L325:
	movl	-72(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 176(%rax)
	movl	-68(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 104(%rax)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L328
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	jne	.L328
	movl	-68(%rbp), %eax
	cmpl	$6, %eax
	jne	.L328
	leaq	.LC46(%rip), %rax
	movq	%rax, -136(%rbp)
.L328:
	movq	-472(%rbp), %rax
	testq	%rax, %rax
	je	.L329
	movq	-744(%rbp), %rdx
	movq	-472(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_setup_mgf1_md
	testl	%eax, %eax
	jne	.L329
	movl	$0, %eax
	jmp	.L332
.L329:
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	je	.L330
	movq	-408(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	rsa_setup_md
	testl	%eax, %eax
	jne	.L331
	movl	$0, %eax
	jmp	.L332
.L330:
	movq	-40(%rbp), %rax
	movl	48(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	rsa_check_padding
	testl	%eax, %eax
	jne	.L331
	movl	$0, %eax
	jmp	.L332
.L331:
	movl	$1, %eax
.L332:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	rsa_set_ctx_params, .-rsa_set_ctx_params
	.section	.data.rel.ro.local
	.align 32
	.type	settable_ctx_params, @object
	.size	settable_ctx_params, 280
settable_ctx_params:
	.quad	.LC28
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC35
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC27
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC29
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC45
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC30
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.align 32
	.type	settable_ctx_params_no_digest, @object
	.size	settable_ctx_params_no_digest, 200
settable_ctx_params_no_digest:
	.quad	.LC27
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC29
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC45
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC30
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	rsa_settable_ctx_params, @function
rsa_settable_ctx_params:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L342
	movq	-8(%rbp), %rax
	movzbl	28(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L342
	leaq	settable_ctx_params_no_digest(%rip), %rax
	jmp	.L343
.L342:
	leaq	settable_ctx_params(%rip), %rax
.L343:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	rsa_settable_ctx_params, .-rsa_settable_ctx_params
	.type	rsa_get_ctx_md_params, @function
rsa_get_ctx_md_params:
.LFB471:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L345
	movl	$0, %eax
	jmp	.L346
.L345:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_get_params@PLT
.L346:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	rsa_get_ctx_md_params, .-rsa_get_ctx_md_params
	.type	rsa_gettable_ctx_md_params, @function
rsa_gettable_ctx_md_params:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L348
	movl	$0, %eax
	jmp	.L349
.L348:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_gettable_ctx_params@PLT
.L349:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	rsa_gettable_ctx_md_params, .-rsa_gettable_ctx_md_params
	.type	rsa_set_ctx_md_params, @function
rsa_set_ctx_md_params:
.LFB473:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L351
	movl	$0, %eax
	jmp	.L352
.L351:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_set_params@PLT
.L352:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	rsa_set_ctx_md_params, .-rsa_set_ctx_md_params
	.type	rsa_settable_ctx_md_params, @function
rsa_settable_ctx_md_params:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L354
	movl	$0, %eax
	jmp	.L355
.L354:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	EVP_MD_settable_ctx_params@PLT
.L355:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	rsa_settable_ctx_md_params, .-rsa_settable_ctx_md_params
	.globl	ossl_rsa_signature_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_rsa_signature_functions, @object
	.size	ossl_rsa_signature_functions, 384
ossl_rsa_signature_functions:
	.long	1
	.zero	4
	.quad	rsa_newctx
	.long	2
	.zero	4
	.quad	rsa_sign_init
	.long	3
	.zero	4
	.quad	rsa_sign
	.long	4
	.zero	4
	.quad	rsa_verify_init
	.long	5
	.zero	4
	.quad	rsa_verify
	.long	6
	.zero	4
	.quad	rsa_verify_recover_init
	.long	7
	.zero	4
	.quad	rsa_verify_recover
	.long	8
	.zero	4
	.quad	rsa_digest_sign_init
	.long	9
	.zero	4
	.quad	rsa_digest_signverify_update
	.long	10
	.zero	4
	.quad	rsa_digest_sign_final
	.long	12
	.zero	4
	.quad	rsa_digest_verify_init
	.long	13
	.zero	4
	.quad	rsa_digest_signverify_update
	.long	14
	.zero	4
	.quad	rsa_digest_verify_final
	.long	16
	.zero	4
	.quad	rsa_freectx
	.long	17
	.zero	4
	.quad	rsa_dupctx
	.long	18
	.zero	4
	.quad	rsa_get_ctx_params
	.long	19
	.zero	4
	.quad	rsa_gettable_ctx_params
	.long	20
	.zero	4
	.quad	rsa_set_ctx_params
	.long	21
	.zero	4
	.quad	rsa_settable_ctx_params
	.long	22
	.zero	4
	.quad	rsa_get_ctx_md_params
	.long	23
	.zero	4
	.quad	rsa_gettable_ctx_md_params
	.long	24
	.zero	4
	.quad	rsa_set_ctx_md_params
	.long	25
	.zero	4
	.quad	rsa_settable_ctx_md_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 18
__func__.11:
	.string	"rsa_check_padding"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 21
__func__.10:
	.string	"rsa_check_parameters"
	.align 16
	.type	__func__.9, @object
	.size	__func__.9, 24
__func__.9:
	.string	"rsa_pss_compute_saltlen"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 27
__func__.8:
	.string	"rsa_generate_signature_aid"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 13
__func__.7:
	.string	"rsa_setup_md"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 18
__func__.6:
	.string	"rsa_setup_mgf1_md"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 20
__func__.5:
	.string	"rsa_signverify_init"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 9
__func__.4:
	.string	"rsa_sign"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 19
__func__.3:
	.string	"rsa_verify_recover"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 11
__func__.2:
	.string	"rsa_verify"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 19
__func__.1:
	.string	"rsa_get_ctx_params"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"rsa_set_ctx_params"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
