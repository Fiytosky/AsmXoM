	.file	"file_store.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB300:
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
.LFE300:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB302:
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
.LFE302:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.type	ossl_ends_with_dirsep, @function
ossl_ends_with_dirsep:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	subq	$1, %rax
	addq	%rax, -8(%rbp)
.L8:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	ossl_ends_with_dirsep, .-ossl_ends_with_dirsep
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
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/storemgmt/file_store.c"
	.text
	.type	free_file_ctx, @function
free_file_ctx:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$113, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L17
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$116, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$117, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L17:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L14
.L18:
	nop
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	free_file_ctx, .-free_file_ctx
	.type	new_file_ctx, @function
new_file_ctx:
.LFB535:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$127, %edx
	movq	%rax, %rsi
	movl	$72, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L20
	cmpq	$0, -32(%rbp)
	je	.L21
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L20
.L21:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L22
.L20:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_file_ctx
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	new_file_ctx, .-new_file_ctx
	.type	file_open_stream, @function
file_open_stream:
.LFB536:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	new_file_ctx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L24
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524345, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L25:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_file_ctx
	movl	$0, %eax
	jmp	.L26
.L24:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	file_open_stream, .-file_open_stream
	.section	.rodata
	.align 8
.LC1:
	.string	"Calling OPENSSL_DIR_read(\"%s\")"
	.text
	.type	file_open_dir, @function
file_open_dir:
.LFB537:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	new_file_ctx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$173, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524345, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_DIR_read@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L31
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$181, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	movq	-24(%rbp), %rdx
	leaq	.LC1(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L32:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	file_close
	movl	$0, %eax
	jmp	.L29
.L31:
	movq	-8(%rbp), %rax
	movl	$1, 32(%rax)
.L30:
	movq	-8(%rbp), %rax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	file_open_dir, .-file_open_dir
	.section	.rodata
.LC2:
	.string	"file:"
.LC3:
	.string	"//"
.LC4:
	.string	"localhost/"
.LC5:
	.string	"/"
.LC6:
	.string	"Given path=%s"
.LC7:
	.string	"calling stat(%s)"
.LC8:
	.string	"rb"
	.text
	.type	file_open, @function
file_open:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -56(%rbp)
	call	ERR_set_mark@PLT
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$240, %rax
	movzbl	8(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	salq	$4, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-240(%rax), %rdx
	movq	-272(%rbp), %rax
	movq	%rax, (%rdx)
	leaq	.LC2(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L34
	addq	$5, -56(%rbp)
	movl	$1, %eax
	jmp	.L35
.L34:
	movl	$0, %eax
.L35:
	testb	%al, %al
	je	.L36
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC3(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L37
	addq	$2, -64(%rbp)
	movl	$1, %eax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	testb	%al, %al
	je	.L39
	subq	$1, -32(%rbp)
	leaq	.LC4(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L40
	addq	$10, -64(%rbp)
	jmp	.L41
.L40:
	leaq	.LC5(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L42
	addq	$1, -64(%rbp)
.L41:
	movq	-64(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.L39
.L42:
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$223, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L39:
	movq	-32(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$240, %rax
	movzbl	8(%rax), %edx
	orl	$1, %edx
	movb	%dl, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	salq	$4, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-240(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
.L36:
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L44
.L49:
	movq	-40(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$240, %rax
	movzbl	8(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L45
	movq	-40(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$240, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L45
	call	ERR_clear_last_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$257, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$240, %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	movl	$219, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L54
.L45:
	movq	-40(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$240, %rax
	movq	(%rax), %rax
	leaq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stat@PLT
	testl	%eax, %eax
	jns	.L46
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$263, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$240, %rax
	movq	(%rax), %rbx
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC7(%rip), %rdx
	movq	%rbx, %rcx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L47
.L46:
	movq	-40(%rbp), %rax
	salq	$4, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	subq	$240, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.L47:
	addq	$1, -40(%rbp)
.L44:
	cmpq	$0, -48(%rbp)
	jne	.L48
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L49
.L48:
	cmpq	$0, -48(%rbp)
	jne	.L50
	call	ERR_clear_last_mark@PLT
	movl	$0, %eax
	jmp	.L54
.L50:
	call	ERR_pop_to_mark@PLT
	movl	-200(%rbp), %eax
	andl	$61440, %eax
	cmpl	$16384, %eax
	jne	.L51
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_open_dir
	movq	%rax, -24(%rbp)
	jmp	.L52
.L51:
	leaq	.LC8(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L53
	movq	-264(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	file_open_stream
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L52
.L53:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
.L52:
	movq	-24(%rbp), %rax
.L54:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	file_open, .-file_open
	.type	file_attach, @function
file_attach:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	file_open_stream
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L58
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
.L58:
	movq	-16(%rbp), %rax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	file_attach, .-file_attach
	.type	file_settable_ctx_params, @function
file_settable_ctx_params:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	known_settable_ctx_params.4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	file_settable_ctx_params, .-file_settable_ctx_params
	.section	.rodata
.LC9:
	.string	"properties"
.LC10:
	.string	"input-type"
.LC11:
	.string	"expect"
.LC12:
	.string	"subject"
.LC13:
	.string	"%08lx"
	.text
	.type	file_set_ctx_params, @function
file_set_ctx_params:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L62
	movl	$1, %eax
	jmp	.L63
.L62:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L64
	leaq	.LC9(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L65
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$330, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L65
	movl	$0, %eax
	jmp	.L63
.L65:
	leaq	.LC10(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L64
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$337, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	leaq	40(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L64
	movl	$0, %eax
	jmp	.L63
.L64:
	leaq	.LC11(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L66
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	jne	.L66
	movl	$0, %eax
	jmp	.L63
.L66:
	leaq	.LC12(%rip), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L67
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	je	.L68
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$355, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$222, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L63
.L68:
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_octet_string_ptr@PLT
	testl	%eax, %eax
	je	.L70
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_X509_NAME@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L71
.L70:
	movl	$0, %eax
	jmp	.L63
.L71:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rsi
	leaq	-52(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_NAME_hash_ex@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	36(%rax), %rdi
	movq	-32(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	movl	$9, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L63
.L67:
	movl	$1, %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	file_set_ctx_params, .-file_set_ctx_params
	.type	file_load_construct, @function
file_load_construct:
.LFB542:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	file_load_construct, .-file_load_construct
	.type	file_load_cleanup, @function
file_load_cleanup:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	file_load_cleanup, .-file_load_cleanup
	.section	.rodata
.LC14:
	.string	"Certificate"
.LC15:
	.string	"CertificateList"
	.text
	.type	file_setup_decoders, @function
file_setup_decoders:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L77
	call	OSSL_DECODER_CTX_new@PLT
	movq	-56(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L78
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$423, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L78:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_input_type@PLT
	testl	%eax, %eax
	jne	.L80
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$430, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L80:
	movq	-56(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$5, %eax
	je	.L81
	cmpl	$6, %eax
	je	.L82
	jmp	.L85
.L81:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_input_structure@PLT
	testl	%eax, %eax
	jne	.L95
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$444, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L82:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_input_structure@PLT
	testl	%eax, %eax
	jne	.L96
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$451, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L95:
	nop
	jmp	.L85
.L96:
	nop
.L85:
	movq	ossl_any_to_obj_algorithm@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L87
.L91:
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_decoder_from_algorithm@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L88
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_instance_new@PLT
	movq	%rax, -24(%rbp)
.L88:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_DECODER_free@PLT
	cmpq	$0, -24(%rbp)
	je	.L97
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_decoder_ctx_add_decoder_inst@PLT
	testl	%eax, %eax
	jne	.L90
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_decoder_instance_free@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$481, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L90:
	addq	$32, -8(%rbp)
.L87:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L91
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_add_extra@PLT
	testl	%eax, %eax
	jne	.L92
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$488, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L92:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	leaq	file_load_construct(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_construct@PLT
	testl	%eax, %eax
	je	.L93
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	leaq	file_load_cleanup(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_cleanup@PLT
	testl	%eax, %eax
	jne	.L77
.L93:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$500, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524348, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L79
.L77:
	movl	$1, -12(%rbp)
	jmp	.L79
.L97:
	nop
.L79:
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	file_setup_decoders, .-file_setup_decoders
	.type	file_load_file, @function
file_load_file:
.LFB545:
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
	movq	%rax, %rdi
	call	file_setup_decoders
	testl	%eax, %eax
	jne	.L99
	movl	$0, %eax
	jmp	.L103
.L99:
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_construct_data@PLT
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_CTX_set_passphrase_cb@PLT
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_DECODER_from_bio@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L101
	call	ERR_peek_last_error@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L101
	movl	-8(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$60, %eax
	jne	.L101
	movl	-8(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cmpl	$524556, %eax
	jne	.L101
	call	ERR_pop_to_mark@PLT
	jmp	.L102
.L101:
	call	ERR_clear_last_mark@PLT
.L102:
	movl	-4(%rbp), %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	file_load_file, .-file_load_file
	.section	.rodata
.LC16:
	.string	""
	.text
	.type	file_name_to_uri, @function
file_name_to_uri:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_ends_with_dirsep
	testl	%eax, %eax
	je	.L105
	leaq	.LC16(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L106
.L105:
	leaq	.LC5(%rip), %rax
	movq	%rax, -24(%rbp)
.L106:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rbx, %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$558, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L107
	movl	$0, %eax
	jmp	.L108
.L107:
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strlcat@PLT
	movq	-32(%rbp), %rax
.L108:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	file_name_to_uri, .-file_name_to_uri
	.type	file_name_check, @function
file_name_check:
.LFB547:
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
	addq	$36, %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movzbl	36(%rax), %eax
	testb	%al, %al
	jne	.L110
	movl	$1, %eax
	jmp	.L111
.L110:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L112
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$5, %eax
	je	.L112
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$6, %eax
	je	.L112
	movl	$0, %eax
	jmp	.L111
.L112:
	movq	-24(%rbp), %rax
	leaq	36(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_strncasecmp@PLT
	testl	%eax, %eax
	jne	.L113
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L114
.L113:
	movl	$0, %eax
	jmp	.L111
.L114:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$114, %al
	jne	.L115
	addq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L116
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$6, %eax
	je	.L116
	movl	$0, %eax
	jmp	.L111
.L115:
	movq	-24(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$6, %eax
	jne	.L116
	movl	$0, %eax
	jmp	.L111
.L116:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L118
	movl	$0, %eax
	jmp	.L111
.L119:
	addq	$1, -8(%rbp)
.L118:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L119
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	sete	%al
	movzbl	%al, %eax
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	file_name_check, .-file_name_check
	.section	.rodata
.LC17:
	.string	"type"
.LC18:
	.string	"data"
	.text
	.type	file_load_dir_entry, @function
file_load_dir_entry:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -144(%rbp)
	movl	$1, -136(%rbp)
	leaq	object_type.1(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	$4, -120(%rbp)
	movq	$-1, -112(%rbp)
	leaq	.LC18(%rip), %rax
	movq	%rax, -104(%rbp)
	movl	$4, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$-1, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
.L126:
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L121
	movq	-152(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L122
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$650, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-152(%rbp), %rax
	movl	56(%rax), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L122:
	movl	$0, %eax
	jmp	.L127
.L121:
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L124
	movq	-152(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	file_name_check
	testl	%eax, %eax
	je	.L124
	movq	-152(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	file_name_to_uri
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L124
	movl	$0, %eax
	jmp	.L127
.L124:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rdx
	addq	$24, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_DIR_read@PLT
	movq	-152(%rbp), %rdx
	movq	%rax, 48(%rdx)
	call	__errno_location@PLT
	movl	(%rax), %edx
	movq	-152(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-152(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L125
	movq	-152(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L125
	movq	-152(%rbp), %rax
	movl	$1, 32(%rax)
.L125:
	cmpq	$0, -8(%rbp)
	je	.L126
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -80(%rbp)
	movq	-168(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -12(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$681, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	file_load_dir_entry, .-file_load_dir_entry
	.type	file_load, @function
file_load:
.LFB549:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L129
	cmpl	$1, %eax
	je	.L130
	nop
	movl	$0, %eax
	jmp	.L132
.L129:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	file_load_file
	jmp	.L132
.L130:
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	file_load_dir_entry
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	file_load, .-file_load
	.type	file_eof, @function
file_eof:
.LFB550:
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
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L135
	cmpl	$1, %eax
	jne	.L136
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	jmp	.L137
.L135:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	jne	.L138
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L138
	movl	$1, %eax
	jmp	.L137
.L138:
	movl	$0, %eax
	jmp	.L137
.L136:
	movl	$1, %eax
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	file_eof, .-file_eof
	.type	file_close_dir, @function
file_close_dir:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L141
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	OPENSSL_DIR_end@PLT
.L141:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_file_ctx
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	file_close_dir, .-file_close_dir
	.type	file_close_stream, @function
file_close_stream:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free_file_ctx
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	file_close_stream, .-file_close_stream
	.type	file_close, @function
file_close:
.LFB553:
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
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L146
	cmpl	$1, %eax
	jne	.L147
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	file_close_dir
	jmp	.L148
.L146:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	file_close_stream
	jmp	.L148
.L147:
	movl	$1, %eax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	file_close, .-file_close
	.globl	ossl_file_store_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_file_store_functions, @object
	.size	ossl_file_store_functions, 128
ossl_file_store_functions:
	.long	1
	.zero	4
	.quad	file_open
	.long	2
	.zero	4
	.quad	file_attach
	.long	3
	.zero	4
	.quad	file_settable_ctx_params
	.long	4
	.zero	4
	.quad	file_set_ctx_params
	.long	5
	.zero	4
	.quad	file_load
	.long	6
	.zero	4
	.quad	file_eof
	.long	7
	.zero	4
	.quad	file_close
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.7, @object
	.size	__func__.7, 17
__func__.7:
	.string	"file_open_stream"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 14
__func__.6:
	.string	"file_open_dir"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 10
__func__.5:
	.string	"file_open"
	.section	.data.rel.ro.local
	.align 32
	.type	known_settable_ctx_params.4, @object
	.size	known_settable_ctx_params.4, 200
known_settable_ctx_params.4:
	.quad	.LC9
	.long	4
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC11
	.long	1
	.zero	4
	.quad	0
	.quad	4
	.quad	-1
	.quad	.LC12
	.long	5
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC10
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
	.section	.rodata
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 20
__func__.3:
	.string	"file_set_ctx_params"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 20
__func__.2:
	.string	"file_setup_decoders"
	.align 4
	.type	object_type.1, @object
	.size	object_type.1, 4
object_type.1:
	.long	1
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"file_load_dir_entry"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
