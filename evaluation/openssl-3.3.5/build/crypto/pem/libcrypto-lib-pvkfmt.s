	.file	"pvkfmt.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB493:
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
.LFE493:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB494:
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
.LFE494:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	read_ledword, @function
read_ledword:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	read_ledword, .-read_ledword
	.type	read_lebn, @function
read_lebn:
.LFB565:
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
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BN_lebin2bn@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	read_lebn, .-read_lebn
	.section	.rodata
.LC0:
	.string	"../crypto/pem/pvkfmt.c"
	.text
	.type	evp_pkey_new0_key, @function
evp_pkey_new0_key:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	cmpl	$6, -28(%rbp)
	je	.L13
	cmpl	$116, -28(%rbp)
	jne	.L14
.L13:
	movl	$1, %eax
	jmp	.L15
.L14:
	movl	$0, %eax
.L15:
	cltq
	testq	%rax, %rax
	jne	.L16
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$84, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L12
.L16:
	call	EVP_PKEY_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L17
	cmpl	$6, -28(%rbp)
	je	.L18
	cmpl	$116, -28(%rbp)
	je	.L19
	jmp	.L23
.L18:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_RSA@PLT
	testl	%eax, %eax
	jne	.L27
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -8(%rbp)
	jmp	.L23
.L19:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_set1_DSA@PLT
	testl	%eax, %eax
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$101, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	$0, -8(%rbp)
	jmp	.L23
.L17:
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$108, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L23
.L27:
	nop
	jmp	.L23
.L28:
	nop
.L23:
	cmpl	$6, -28(%rbp)
	je	.L24
	cmpl	$116, -28(%rbp)
	je	.L25
	jmp	.L26
.L24:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	jmp	.L26
.L25:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	nop
.L26:
	movq	-8(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	evp_pkey_new0_key, .-evp_pkey_new0_key
	.globl	ossl_do_blob_header
	.type	ossl_do_blob_header, @function
ossl_do_blob_header:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$15, -28(%rbp)
	ja	.L30
	movl	$0, %eax
	jmp	.L51
.L30:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$6, %eax
	je	.L32
	cmpl	$7, %eax
	je	.L33
	jmp	.L52
.L32:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L35:
	movq	-64(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L36
.L33:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L37
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L37:
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L36
.L52:
	movl	$0, %eax
	jmp	.L51
.L36:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	cmpb	$2, %al
	je	.L38
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$117, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L38:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	read_ledword
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	read_ledword
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$844321604, %eax
	je	.L39
	cmpl	$844321604, %eax
	ja	.L40
	cmpl	$843141970, %eax
	je	.L39
	cmpl	$843141970, %eax
	ja	.L40
	cmpl	$826364754, %eax
	je	.L41
	cmpl	$827544388, %eax
	jne	.L40
.L41:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L53
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$208, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$119, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L39:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L54
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L40:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$222, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L51
.L53:
	nop
	jmp	.L43
.L54:
	nop
.L43:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$844321604, %eax
	je	.L45
	cmpl	$844321604, %eax
	ja	.L46
	cmpl	$843141970, %eax
	je	.L47
	cmpl	$843141970, %eax
	ja	.L46
	cmpl	$826364754, %eax
	je	.L47
	cmpl	$827544388, %eax
	jne	.L46
.L45:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$231, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$131, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L48:
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L49
.L47:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L50
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$239, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$132, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L51
.L50:
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L49
.L46:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$246, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L51
.L49:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	ossl_do_blob_header, .-ossl_do_blob_header
	.globl	ossl_blob_length
	.type	ossl_blob_length, @function
ossl_blob_length:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	-20(%rbp), %eax
	addl	$7, %eax
	shrl	$3, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L56
	cmpl	$0, -28(%rbp)
	je	.L57
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	$44, %eax
	jmp	.L58
.L57:
	movl	-4(%rbp), %eax
	addl	$32, %eax
	addl	%eax, %eax
	jmp	.L58
.L56:
	cmpl	$0, -28(%rbp)
	je	.L59
	movl	-4(%rbp), %eax
	addl	$4, %eax
	jmp	.L58
.L59:
	movl	-4(%rbp), %eax
	addl	$2, %eax
	leal	(%rax,%rax), %ecx
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
.L58:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	ossl_blob_length, .-ossl_blob_length
	.type	do_b2i_key, @function
do_b2i_key:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	leaq	-20(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movl	-44(%rbp), %esi
	leaq	-16(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_do_blob_header@PLT
	testl	%eax, %eax
	jg	.L61
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$294, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$122, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L61:
	subl	$16, -44(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ossl_blob_length@PLT
	cmpl	%eax, -44(%rbp)
	jnb	.L63
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$299, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L63:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L64
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %ecx
	leaq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_b2i_RSA_after_header@PLT
	movq	%rax, -8(%rbp)
	jmp	.L65
.L64:
	movq	-64(%rbp), %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %ecx
	leaq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_b2i_DSA_after_header@PLT
	movq	%rax, -8(%rbp)
.L65:
	cmpq	$0, -8(%rbp)
	jne	.L66
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$310, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L67
.L66:
	movq	-8(%rbp), %rax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	do_b2i_key, .-do_b2i_key
	.globl	ossl_b2i
	.type	ossl_b2i, @function
ossl_b2i:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$-1, -12(%rbp)
	movq	-40(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	do_b2i_key
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L69
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	jne	.L70
	movl	$116, %eax
	jmp	.L71
.L70:
	movl	$0, %eax
	jmp	.L71
.L69:
	movl	$6, %eax
.L71:
	movq	-8(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	evp_pkey_new0_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	ossl_b2i, .-ossl_b2i
	.globl	ossl_b2i_bio
	.type	ossl_b2i_bio, @function
ossl_b2i_bio:
.LFB571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -76(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	cmpl	$16, %eax
	je	.L74
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$335, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L87
.L74:
	leaq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rdi
	leaq	-76(%rbp), %rsi
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$16, %esi
	movq	%rax, %rdi
	call	ossl_do_blob_header@PLT
	testl	%eax, %eax
	jg	.L76
	movl	$0, %eax
	jmp	.L87
.L76:
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movl	-76(%rbp), %ecx
	movl	-68(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ossl_blob_length@PLT
	movl	%eax, -28(%rbp)
	cmpl	$102400, -28(%rbp)
	jbe	.L77
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$344, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L87
.L77:
	movl	-28(%rbp), %eax
	leaq	.LC0(%rip), %rcx
	movl	$347, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L88
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	cmpl	%eax, %edx
	je	.L80
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$352, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L80:
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	jne	.L81
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movl	-68(%rbp), %ecx
	leaq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_b2i_RSA_after_header@PLT
	movq	%rax, -8(%rbp)
	jmp	.L82
.L81:
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movl	-68(%rbp), %ecx
	leaq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_b2i_DSA_after_header@PLT
	movq	%rax, -8(%rbp)
.L82:
	cmpq	$0, -8(%rbp)
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$364, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L83:
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	je	.L84
	movl	-76(%rbp), %eax
	cmpl	$1, %eax
	jne	.L85
	movl	$116, %eax
	jmp	.L86
.L85:
	movl	$0, %eax
	jmp	.L86
.L84:
	movl	$6, %eax
.L86:
	movq	-8(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	evp_pkey_new0_key
	movq	%rax, -16(%rbp)
	jmp	.L79
.L88:
	nop
.L79:
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$370, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	ossl_b2i_bio, .-ossl_b2i_bio
	.globl	ossl_b2i_DSA_after_header
	.type	ossl_b2i_DSA_after_header, @function
ossl_b2i_DSA_after_header:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	-92(%rbp), %eax
	addl	$7, %eax
	shrl	$3, %eax
	movl	%eax, -20(%rbp)
	call	DSA_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L107
	leaq	-40(%rbp), %rdx
	movl	-20(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	je	.L108
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	je	.L109
	leaq	-56(%rbp), %rdx
	movl	-20(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	je	.L110
	cmpl	$0, -96(%rbp)
	je	.L96
	leaq	-72(%rbp), %rdx
	movl	-20(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	jne	.L97
	jmp	.L93
.L96:
	leaq	-64(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	je	.L111
	movq	-64(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
	call	BN_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L112
	call	BN_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L113
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	BN_mod_exp@PLT
	testl	%eax, %eax
	je	.L114
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movq	$0, -8(%rbp)
.L97:
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_set0_pqg@PLT
	testl	%eax, %eax
	je	.L115
	movq	$0, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSA_set0_key@PLT
	testl	%eax, %eax
	je	.L116
	movq	$0, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	jmp	.L106
.L107:
	nop
	jmp	.L91
.L115:
	nop
	jmp	.L91
.L116:
	nop
.L91:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$431, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524298, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L105
.L108:
	nop
	jmp	.L93
.L109:
	nop
	jmp	.L93
.L110:
	nop
	jmp	.L93
.L111:
	nop
	jmp	.L93
.L112:
	nop
	jmp	.L93
.L113:
	nop
	jmp	.L93
.L114:
	nop
.L93:
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$434, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L105:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_free@PLT
	movl	$0, %eax
.L106:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	ossl_b2i_DSA_after_header, .-ossl_b2i_DSA_after_header
	.globl	ossl_b2i_RSA_after_header
	.type	ossl_b2i_RSA_after_header, @function
ossl_b2i_RSA_after_header:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	%edx, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -16(%rbp)
	movl	-108(%rbp), %eax
	addl	$7, %eax
	shrl	$3, %eax
	movl	%eax, -20(%rbp)
	movl	-108(%rbp), %eax
	addl	$15, %eax
	shrl	$4, %eax
	movl	%eax, -24(%rbp)
	call	RSA_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L137
	call	BN_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L138
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	read_ledword
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	je	.L139
	leaq	-40(%rbp), %rdx
	movl	-20(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	je	.L140
	cmpl	$0, -112(%rbp)
	jne	.L124
	leaq	-56(%rbp), %rdx
	movl	-24(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	je	.L141
	leaq	-64(%rbp), %rdx
	movl	-24(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	je	.L142
	leaq	-72(%rbp), %rdx
	movl	-24(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	je	.L143
	leaq	-80(%rbp), %rdx
	movl	-24(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	je	.L144
	leaq	-88(%rbp), %rdx
	movl	-24(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	je	.L145
	leaq	-48(%rbp), %rdx
	movl	-20(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	read_lebn
	testl	%eax, %eax
	je	.L146
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_set0_factors@PLT
	testl	%eax, %eax
	je	.L147
	movq	$0, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_set0_crt_params@PLT
	testl	%eax, %eax
	je	.L148
	movq	$0, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
.L124:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_set0_key@PLT
	testl	%eax, %eax
	je	.L149
	movq	$0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	jmp	.L136
.L137:
	nop
	jmp	.L119
.L147:
	nop
	jmp	.L119
.L148:
	nop
	jmp	.L119
.L149:
	nop
.L119:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$496, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524292, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L135
.L138:
	nop
	jmp	.L121
.L139:
	nop
	jmp	.L121
.L140:
	nop
	jmp	.L121
.L141:
	nop
	jmp	.L121
.L142:
	nop
	jmp	.L121
.L143:
	nop
	jmp	.L121
.L144:
	nop
	jmp	.L121
.L145:
	nop
	jmp	.L121
.L146:
	nop
.L121:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$499, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524291, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L135:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_free@PLT
	movl	$0, %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	ossl_b2i_RSA_after_header, .-ossl_b2i_RSA_after_header
	.globl	b2i_PrivateKey
	.type	b2i_PrivateKey, @function
b2i_PrivateKey:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_b2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	b2i_PrivateKey, .-b2i_PrivateKey
	.globl	b2i_PublicKey
	.type	b2i_PublicKey, @function
b2i_PublicKey:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$1, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_b2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	b2i_PublicKey, .-b2i_PublicKey
	.globl	b2i_PrivateKey_bio
	.type	b2i_PrivateKey_bio, @function
b2i_PrivateKey_bio:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_b2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	b2i_PrivateKey_bio, .-b2i_PrivateKey_bio
	.globl	b2i_PublicKey_bio
	.type	b2i_PublicKey_bio, @function
b2i_PublicKey_bio:
.LFB577:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	leaq	-4(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_b2i_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	b2i_PublicKey_bio, .-b2i_PublicKey_bio
	.type	write_ledword, @function
write_ledword:
.LFB578:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
	movl	-28(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-28(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-28(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	write_ledword, .-write_ledword
	.type	write_lebn, @function
write_lebn:
.LFB579:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BN_bn2lebinpad@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	write_lebn, .-write_lebn
	.section	.rodata
.LC1:
	.string	"RSA"
.LC2:
	.string	"DSA"
	.text
	.type	do_i2b, @function
do_i2b:
.LFB580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
	movl	$0, -16(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L161
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, %rcx
	leaq	-28(%rbp), %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	check_bitlen_rsa
	movl	%eax, -4(%rbp)
	movl	$41984, -8(%rbp)
	jmp	.L162
.L161:
	leaq	.LC2(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_is_a@PLT
	testl	%eax, %eax
	je	.L162
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DSA@PLT
	movq	%rax, %rcx
	leaq	-28(%rbp), %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	check_bitlen_dsa
	movl	%eax, -4(%rbp)
	movl	$8704, -8(%rbp)
.L162:
	cmpl	$0, -4(%rbp)
	je	.L174
	cmpl	$8704, -8(%rbp)
	sete	%al
	movzbl	%al, %ecx
	movl	-52(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ossl_blob_length@PLT
	addl	$16, %eax
	movl	%eax, -12(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L175
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L166
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L167
.L166:
	movl	-12(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$592, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L168
	movl	$-1, -12(%rbp)
	jmp	.L164
.L168:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, -16(%rbp)
.L167:
	cmpl	$0, -52(%rbp)
	je	.L169
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$6, (%rax)
	jmp	.L170
.L169:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$7, (%rax)
.L170:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$2, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	movl	-8(%rbp), %edx
	leaq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_ledword
	movl	-28(%rbp), %edx
	leaq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_ledword
	movl	-4(%rbp), %edx
	leaq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_ledword
	cmpl	$41984, -8(%rbp)
	jne	.L171
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	movq	%rax, %rcx
	movl	-52(%rbp), %edx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_rsa
	jmp	.L172
.L171:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_DSA@PLT
	movq	%rax, %rcx
	movl	-52(%rbp), %edx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_dsa
.L172:
	cmpl	$0, -16(%rbp)
	jne	.L176
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L164
.L174:
	nop
	jmp	.L164
.L175:
	nop
	jmp	.L164
.L176:
	nop
.L164:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	do_i2b, .-do_i2b
	.type	do_i2b_bio, @function
do_i2b_bio:
.LFB581:
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
	movq	$0, -16(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_i2b
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L178
	movl	$-1, %eax
	jmp	.L181
.L178:
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$630, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L180
	movl	-4(%rbp), %eax
	jmp	.L181
.L180:
	movl	$-1, %eax
.L181:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	do_i2b_bio, .-do_i2b_bio
	.type	check_bitlen_rsa, @function
check_bitlen_rsa:
.LFB582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movq	%rdx, -104(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	RSA_get0_key@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$32, %eax
	jg	.L192
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_bits@PLT
	movl	%eax, -4(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	$15, %eax
	sarl	$4, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -92(%rbp)
	je	.L185
	movq	-104(%rbp), %rax
	movl	$826364754, (%rax)
	movl	-4(%rbp), %eax
	jmp	.L191
.L185:
	movq	-104(%rbp), %rax
	movl	$843141970, (%rax)
	leaq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	RSA_get0_key@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cmpl	%eax, -8(%rbp)
	jl	.L193
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_get0_factors@PLT
	leaq	-56(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_crt_params@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L194
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L194
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L194
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L194
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L194
	movl	-4(%rbp), %eax
	jmp	.L191
.L192:
	nop
	jmp	.L184
.L193:
	nop
	jmp	.L184
.L194:
	nop
.L184:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$672, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	check_bitlen_rsa, .-check_bitlen_rsa
	.type	write_rsa, @function
write_rsa:
.LFB583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_size@PLT
	movl	%eax, -4(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_bits@PLT
	addl	$15, %eax
	sarl	$4, %eax
	movl	%eax, -8(%rbp)
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_key@PLT
	movq	-32(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	cmpl	$0, -100(%rbp)
	jne	.L198
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	RSA_get0_factors@PLT
	leaq	-56(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	RSA_get0_crt_params@PLT
	movq	-40(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	movq	-48(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	movq	-64(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	movq	-72(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	movq	-56(%rbp), %rcx
	movl	-8(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	jmp	.L195
.L198:
	nop
.L195:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	write_rsa, .-write_rsa
	.type	check_bitlen_dsa, @function
check_bitlen_dsa:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_pqg@PLT
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSA_get0_key@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L209
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$160, %eax
	jne	.L209
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L209
	cmpl	$0, -60(%rbp)
	je	.L203
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L210
	movq	-72(%rbp), %rax
	movl	$827544388, (%rax)
	jmp	.L205
.L203:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$160, %eax
	jg	.L211
	movq	-72(%rbp), %rax
	movl	$844321604, (%rax)
.L205:
	movl	-4(%rbp), %eax
	jmp	.L208
.L209:
	nop
	jmp	.L202
.L210:
	nop
	jmp	.L202
.L211:
	nop
.L202:
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$723, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$126, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	check_bitlen_dsa, .-check_bitlen_dsa
	.type	write_dsa, @function
write_dsa:
.LFB585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	DSA_get0_pqg@PLT
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	DSA_get0_key@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	movq	-32(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	cmpl	$0, -68(%rbp)
	je	.L213
	movq	-40(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
	jmp	.L214
.L213:
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_lebn
.L214:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$24, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	write_dsa, .-write_dsa
	.globl	i2b_PrivateKey_bio
	.type	i2b_PrivateKey_bio, @function
i2b_PrivateKey_bio:
.LFB586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_i2b_bio
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	i2b_PrivateKey_bio, .-i2b_PrivateKey_bio
	.globl	i2b_PublicKey_bio
	.type	i2b_PublicKey_bio, @function
i2b_PublicKey_bio:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_i2b_bio
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	i2b_PublicKey_bio, .-i2b_PublicKey_bio
	.globl	ossl_do_PVK_header
	.type	ossl_do_PVK_header, @function
ossl_do_PVK_header:
.LFB588:
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
	movq	%r8, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L221
	cmpl	$19, -28(%rbp)
	ja	.L222
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$769, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L221:
	cmpl	$23, -28(%rbp)
	ja	.L224
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$774, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L224:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	read_ledword
	movl	%eax, -4(%rbp)
	cmpl	$-1330253538, -4(%rbp)
	je	.L222
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$779, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$116, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L222:
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	read_ledword
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	read_ledword
	movl	%eax, -8(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	read_ledword
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	read_ledword
	movq	-48(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$102400, %eax
	ja	.L225
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$10240, %eax
	jbe	.L226
.L225:
	movl	$0, %eax
	jmp	.L228
.L226:
	cmpl	$0, -8(%rbp)
	je	.L227
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L227
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$796, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L228
.L227:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	ossl_do_PVK_header, .-ossl_do_PVK_header
	.section	.rodata
.LC3:
	.string	"PVKKDF"
.LC4:
	.string	"salt"
.LC5:
	.string	"pass"
.LC6:
	.string	"SHA1"
.LC7:
	.string	"digest"
.LC8:
	.string	"properties"
	.text
	.type	derive_pvk_key, @function
derive_pvk_key:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movl	%ecx, -284(%rbp)
	movq	%r8, -296(%rbp)
	movl	%r9d, -288(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	24(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_KDF_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L230
	movl	$0, %eax
	jmp	.L233
.L230:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_free@PLT
	cmpq	$0, -40(%rbp)
	jne	.L232
	movl	$0, %eax
	jmp	.L233
.L232:
	movl	-284(%rbp), %ecx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	movq	-280(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movl	-288(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	movq	-296(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -24(%rbp)
	leaq	-352(%rbp), %rax
	movq	24(%rbp), %rdx
	leaq	.LC8(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-24(%rbp), %rbx
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-320(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-256(%rbp), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_derive@PLT
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_KDF_CTX_free@PLT
	movl	-44(%rbp), %eax
.L233:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	derive_pvk_key, .-derive_pvk_key
	.section	.rodata
.LC9:
	.string	"RC4"
	.text
	.type	do_PVK_body_key, @function
do_PVK_body_key:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1168, %rsp
	movq	%rdi, -1128(%rbp)
	movl	%esi, -1132(%rbp)
	movl	%edx, -1136(%rbp)
	movq	%rcx, -1144(%rbp)
	movq	%r8, -1152(%rbp)
	movq	%r9, -1160(%rbp)
	movq	-1128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L235
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$853, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524294, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L236
.L235:
	cmpl	$0, -1132(%rbp)
	je	.L237
	cmpq	$0, -1144(%rbp)
	je	.L238
	movq	-1152(%rbp), %rdx
	leaq	-1120(%rbp), %rax
	movq	-1144(%rbp), %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -28(%rbp)
	jmp	.L239
.L238:
	movq	-1152(%rbp), %rdx
	leaq	-1120(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	PEM_def_callback@PLT
	movl	%eax, -28(%rbp)
.L239:
	cmpl	$0, -28(%rbp)
	jns	.L240
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$869, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L236
.L240:
	movl	-1136(%rbp), %eax
	addl	$8, %eax
	movl	%eax, %ecx
	leaq	.LC0(%rip), %rax
	movl	$872, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L255
	movq	-56(%rbp), %rdx
	movl	-28(%rbp), %edi
	leaq	-1120(%rbp), %rsi
	movl	-1132(%rbp), %ecx
	leaq	-80(%rbp), %rax
	pushq	32(%rbp)
	pushq	24(%rbp)
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	$20, %esi
	movq	%rax, %rdi
	call	derive_pvk_key
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L256
	movq	-56(%rbp), %rdx
	movl	-1132(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	cmpl	$7, -1136(%rbp)
	ja	.L244
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$883, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L236
.L244:
	movl	-1136(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	movq	32(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L257
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	testl	%eax, %eax
	je	.L258
	movq	-56(%rbp), %rcx
	movq	-96(%rbp), %rsi
	movl	-28(%rbp), %edi
	leaq	-84(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	je	.L259
	movq	-96(%rbp), %rdx
	movl	-84(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-84(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal_ex@PLT
	testl	%eax, %eax
	je	.L260
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	read_ledword
	movl	%eax, -44(%rbp)
	cmpl	$843141970, -44(%rbp)
	je	.L249
	cmpl	$844321604, -44(%rbp)
	je	.L249
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	leaq	-80(%rbp), %rax
	addq	$5, %rax
	movl	$11, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_DecryptInit_ex@PLT
	testl	%eax, %eax
	je	.L261
	movq	-56(%rbp), %rcx
	movq	-96(%rbp), %rsi
	movl	-28(%rbp), %edi
	leaq	-84(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_DecryptUpdate@PLT
	testl	%eax, %eax
	je	.L262
	movq	-96(%rbp), %rdx
	movl	-84(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-84(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DecryptFinal_ex@PLT
	testl	%eax, %eax
	je	.L263
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	read_ledword
	movl	%eax, -44(%rbp)
	cmpl	$843141970, -44(%rbp)
	je	.L249
	cmpl	$844321604, -44(%rbp)
	je	.L249
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$908, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L236
.L249:
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
.L237:
	movq	16(%rbp), %rcx
	movq	-1160(%rbp), %rdx
	movl	-1136(%rbp), %esi
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	do_b2i_key
	movq	%rax, -16(%rbp)
	jmp	.L236
.L255:
	nop
	jmp	.L236
.L256:
	nop
	jmp	.L236
.L257:
	nop
	jmp	.L236
.L258:
	nop
	jmp	.L236
.L259:
	nop
	jmp	.L236
.L260:
	nop
	jmp	.L236
.L261:
	nop
	jmp	.L236
.L262:
	nop
	jmp	.L236
.L263:
	nop
.L236:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	cmpq	$0, -8(%rbp)
	je	.L253
	leaq	-80(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$927, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L253:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	do_PVK_body_key, .-do_PVK_body_key
	.type	do_PVK_key_bio, @function
do_PVK_key_bio:
.LFB591:
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
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	leaq	-48(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	cmpl	$24, %eax
	je	.L265
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$943, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L271
.L265:
	leaq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-64(%rbp), %rcx
	leaq	-60(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$24, %esi
	movq	%rax, %rdi
	call	ossl_do_PVK_header@PLT
	testl	%eax, %eax
	jne	.L267
	movl	$0, %eax
	jmp	.L271
.L267:
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$951, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L268
	movl	$0, %eax
	jmp	.L271
.L268:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	cmpl	%eax, -20(%rbp)
	je	.L269
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$956, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$124, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L270
.L269:
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %esi
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	leaq	-56(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	pushq	-112(%rbp)
	pushq	-104(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_PVK_body_key
	addq	$32, %rsp
	movq	%rax, -8(%rbp)
.L270:
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC0(%rip), %rdx
	movq	-16(%rbp), %rax
	movl	$962, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movq	-8(%rbp), %rax
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	do_PVK_key_bio, .-do_PVK_key_bio
	.globl	b2i_DSA_PVK_bio_ex
	.type	b2i_DSA_PVK_bio_ex, @function
b2i_DSA_PVK_bio_ex:
.LFB592:
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
	movl	$1, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	-48(%rbp), %r8
	leaq	-8(%rbp), %rdi
	leaq	-4(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_PVK_key_bio
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	b2i_DSA_PVK_bio_ex, .-b2i_DSA_PVK_bio_ex
	.globl	b2i_DSA_PVK_bio
	.type	b2i_DSA_PVK_bio, @function
b2i_DSA_PVK_bio:
.LFB593:
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
	call	b2i_DSA_PVK_bio_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	b2i_DSA_PVK_bio, .-b2i_DSA_PVK_bio
	.globl	b2i_RSA_PVK_bio_ex
	.type	b2i_RSA_PVK_bio_ex, @function
b2i_RSA_PVK_bio_ex:
.LFB594:
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
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	-48(%rbp), %r8
	leaq	-8(%rbp), %rdi
	leaq	-4(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_PVK_key_bio
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	b2i_RSA_PVK_bio_ex, .-b2i_RSA_PVK_bio_ex
	.globl	b2i_RSA_PVK_bio
	.type	b2i_RSA_PVK_bio, @function
b2i_RSA_PVK_bio:
.LFB595:
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
	call	b2i_RSA_PVK_bio_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	b2i_RSA_PVK_bio, .-b2i_RSA_PVK_bio
	.globl	b2i_PVK_bio_ex
	.type	b2i_PVK_bio_ex, @function
b2i_PVK_bio_ex:
.LFB596:
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
	movl	$-1, -12(%rbp)
	movl	$-1, -16(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-12(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_PVK_key_bio
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L281
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	jne	.L282
	movl	$116, %eax
	jmp	.L283
.L282:
	movl	$0, %eax
	jmp	.L283
.L281:
	movl	$6, %eax
.L283:
	movq	-8(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	evp_pkey_new0_key
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	b2i_PVK_bio_ex, .-b2i_PVK_bio_ex
	.globl	b2i_PVK_bio
	.type	b2i_PVK_bio, @function
b2i_PVK_bio:
.LFB597:
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
	call	b2i_PVK_bio_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	b2i_PVK_bio, .-b2i_PVK_bio
	.type	i2b_PVK, @function
i2b_PVK:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1184, %rsp
	movq	%rdi, -1144(%rbp)
	movq	%rsi, -1152(%rbp)
	movl	%edx, -1156(%rbp)
	movq	%rcx, -1168(%rbp)
	movq	%r8, -1176(%rbp)
	movq	%r9, -1184(%rbp)
	movl	$-1, -4(%rbp)
	movl	$24, -8(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$0, -1156(%rbp)
	je	.L288
	addl	$16, -8(%rbp)
.L288:
	movq	-1152(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	do_i2b
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jns	.L289
	movl	$-1, %eax
	jmp	.L315
.L289:
	movl	-52(%rbp), %eax
	addl	%eax, -8(%rbp)
	cmpq	$0, -1144(%rbp)
	jne	.L291
	movl	-8(%rbp), %eax
	jmp	.L315
.L291:
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L292
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.L293
.L292:
	movl	-8(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$1035, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L293
	movl	$-1, %eax
	jmp	.L315
.L293:
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L316
	leaq	-64(%rbp), %rax
	movl	$-1330253538, %esi
	movq	%rax, %rdi
	call	write_ledword
	leaq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	write_ledword
	movq	-1152(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$6, %eax
	jne	.L296
	leaq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	write_ledword
	jmp	.L297
.L296:
	leaq	-64(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	write_ledword
.L297:
	cmpl	$0, -1156(%rbp)
	setne	%al
	movzbl	%al, %edx
	leaq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_ledword
	cmpl	$0, -1156(%rbp)
	je	.L298
	movl	$16, %edx
	jmp	.L299
.L298:
	movl	$0, %edx
.L299:
	leaq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_ledword
	movl	-52(%rbp), %edx
	leaq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	write_ledword
	cmpl	$0, -1156(%rbp)
	je	.L300
	movq	-64(%rbp), %rsi
	movq	-1184(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jle	.L317
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -64(%rbp)
.L300:
	movq	-1152(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_i2b
	cmpl	$0, -1156(%rbp)
	je	.L302
	cmpq	$0, -1168(%rbp)
	je	.L303
	movq	-1176(%rbp), %rdx
	leaq	-1136(%rbp), %rax
	movq	-1168(%rbp), %r8
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -36(%rbp)
	jmp	.L304
.L303:
	movq	-1176(%rbp), %rdx
	leaq	-1136(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	PEM_def_callback@PLT
	movl	%eax, -36(%rbp)
.L304:
	cmpl	$0, -36(%rbp)
	jg	.L305
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1074, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$104, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L295
.L305:
	movl	-36(%rbp), %esi
	leaq	-1136(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-96(%rbp), %rax
	pushq	16(%rbp)
	pushq	-1184(%rbp)
	movl	%esi, %r9d
	movq	%rcx, %r8
	movl	$16, %ecx
	movl	$20, %esi
	movq	%rax, %rdi
	call	derive_pvk_key
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L318
	movq	16(%rbp), %rdx
	leaq	.LC9(%rip), %rcx
	movq	-1184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L319
	cmpl	$1, -1156(%rbp)
	jne	.L309
	leaq	-96(%rbp), %rax
	addq	$5, %rax
	movl	$11, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L309:
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -64(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	je	.L320
	leaq	-96(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-52(%rbp), %eax
	leal	-8(%rax), %edi
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rsi
	leaq	-100(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	je	.L321
	movq	-64(%rbp), %rdx
	movl	-100(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	leaq	-100(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal_ex@PLT
	testl	%eax, %eax
	je	.L322
.L302:
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L313
	movq	-1144(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L313:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L295
.L316:
	nop
	jmp	.L295
.L317:
	nop
	jmp	.L295
.L318:
	nop
	jmp	.L295
.L319:
	nop
	jmp	.L295
.L320:
	nop
	jmp	.L295
.L321:
	nop
	jmp	.L295
.L322:
	nop
.L295:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-1144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L314
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1107, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L314:
	movl	-4(%rbp), %eax
.L315:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	i2b_PVK, .-i2b_PVK
	.globl	i2b_PVK_bio_ex
	.type	i2b_PVK_bio_ex, @function
i2b_PVK_bio_ex:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	leaq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	i2b_PVK
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L324
	movl	$-1, %eax
	jmp	.L327
.L324:
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1123, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L326
	movl	-4(%rbp), %eax
	jmp	.L327
.L326:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1127, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$118, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
.L327:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	i2b_PVK_bio_ex, .-i2b_PVK_bio_ex
	.globl	i2b_PVK_bio
	.type	i2b_PVK_bio, @function
i2b_PVK_bio:
.LFB600:
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
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	i2b_PVK_bio_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	i2b_PVK_bio, .-i2b_PVK_bio
	.section	.rodata
	.align 16
	.type	__func__.12, @object
	.size	__func__.12, 18
__func__.12:
	.string	"evp_pkey_new0_key"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 20
__func__.11:
	.string	"ossl_do_blob_header"
	.align 8
	.type	__func__.10, @object
	.size	__func__.10, 11
__func__.10:
	.string	"do_b2i_key"
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 13
__func__.9:
	.string	"ossl_b2i_bio"
	.align 16
	.type	__func__.8, @object
	.size	__func__.8, 26
__func__.8:
	.string	"ossl_b2i_DSA_after_header"
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 26
__func__.7:
	.string	"ossl_b2i_RSA_after_header"
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 17
__func__.6:
	.string	"check_bitlen_rsa"
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 17
__func__.5:
	.string	"check_bitlen_dsa"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 19
__func__.4:
	.string	"ossl_do_PVK_header"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 16
__func__.3:
	.string	"do_PVK_body_key"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 15
__func__.2:
	.string	"do_PVK_key_bio"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 8
__func__.1:
	.string	"i2b_PVK"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"i2b_PVK_bio_ex"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
