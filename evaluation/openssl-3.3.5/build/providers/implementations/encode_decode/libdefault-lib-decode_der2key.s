	.file	"decode_der2key.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB499:
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
.LFE499:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB500:
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
.LFE500:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	der2key_decode_p8, @function
der2key_decode_p8:
.LFB570:
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
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_PKCS8_PRIV_KEY_INFO@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L6
	movq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	PKCS8_pkey_get0@PLT
	testl	%eax, %eax
	je	.L6
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movq	264(%rax), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	je	.L7
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$408, %eax
	jne	.L6
	movq	-72(%rbp), %rax
	movq	264(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$1172, %eax
	jne	.L6
.L7:
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -24(%rbp)
.L6:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS8_PRIV_KEY_INFO_free@PLT
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE570:
	.size	der2key_decode_p8, .-der2key_decode_p8
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/encode_decode/decode_der2key.c"
	.text
	.type	der2key_newctx, @function
der2key_newctx:
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
	leaq	.LC0(%rip), %rax
	movl	$134, %edx
	movq	%rax, %rsi
	movl	$280, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L10
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 264(%rax)
.L10:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE571:
	.size	der2key_newctx, .-der2key_newctx
	.type	der2key_settable_ctx_params, @function
der2key_settable_ctx_params:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	settables.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	der2key_settable_ctx_params, .-der2key_settable_ctx_params
	.section	.rodata
.LC1:
	.string	"properties"
	.text
	.type	der2key_set_ctx_params, @function
der2key_set_ctx_params:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	leaq	.LC1(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L15
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L15
	movl	$0, %eax
	jmp	.L17
.L15:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	der2key_set_ctx_params, .-der2key_set_ctx_params
	.type	der2key_freectx, @function
der2key_freectx:
.LFB574:
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
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$169, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	der2key_freectx, .-der2key_freectx
	.type	der2key_check_selection, @function
der2key_check_selection:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, -28(%rbp)
	movl	$2, -24(%rbp)
	movl	$132, -20(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L20
	movl	$1, %eax
	jmp	.L25
.L20:
	movq	$0, -8(%rbp)
	jmp	.L22
.L24:
	movq	-8(%rbp), %rax
	movl	-28(%rbp,%rax,4), %eax
	andl	-36(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movl	-28(%rbp,%rax,4), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L23
	movl	-16(%rbp), %eax
	jmp	.L25
.L23:
	addq	$1, -8(%rbp)
.L22:
	cmpq	$2, -8(%rbp)
	jbe	.L24
	movl	$0, %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	der2key_check_selection, .-der2key_check_selection
	.section	.rodata
.LC2:
	.string	"type"
.LC3:
	.string	"EC"
.LC4:
	.string	"SM2"
.LC5:
	.string	"data-type"
.LC6:
	.string	"reference"
	.text
	.type	der2key_decode, @function
der2key_decode:
.LFB576:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movl	%edx, -244(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	-244(%rbp), %edx
	movl	%edx, 272(%rax)
	cmpl	$0, -244(%rbp)
	jne	.L27
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, -244(%rbp)
.L27:
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movl	28(%rax), %eax
	andl	-244(%rbp), %eax
	testl	%eax, %eax
	jne	.L28
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$229, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L46
.L28:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_read_der@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L47
	movl	$0, -4(%rbp)
	call	ERR_set_mark@PLT
	movl	-244(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L32
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	56(%rax), %r8
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%r8
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movzbl	276(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L34
	call	ERR_clear_last_mark@PLT
	jmp	.L35
.L33:
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	32(%rax), %rcx
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -48(%rbp)
.L34:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L32
	movq	-16(%rbp), %rax
	movl	272(%rax), %eax
	testl	%eax, %eax
	je	.L32
	call	ERR_clear_last_mark@PLT
	jmp	.L31
.L32:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L36
	movl	-244(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L36
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -48(%rbp)
	jmp	.L38
.L37:
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	40(%rax), %rcx
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -48(%rbp)
.L38:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L36
	movq	-16(%rbp), %rax
	movl	272(%rax), %eax
	testl	%eax, %eax
	je	.L36
	call	ERR_clear_last_mark@PLT
	jmp	.L31
.L36:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L39
	movl	-244(%rbp), %eax
	andl	$132, %eax
	testl	%eax, %eax
	je	.L39
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	48(%rax), %rcx
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -48(%rbp)
.L40:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L39
	movq	-16(%rbp), %rax
	movl	272(%rax), %eax
	testl	%eax, %eax
	je	.L39
	call	ERR_clear_last_mark@PLT
	jmp	.L31
.L39:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L41
	call	ERR_clear_last_mark@PLT
	jmp	.L42
.L41:
	call	ERR_pop_to_mark@PLT
.L42:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L43
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	72(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L43
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	88(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	$0, -48(%rbp)
.L43:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L48
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	80(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L31
.L47:
	nop
	jmp	.L31
.L48:
	nop
.L31:
	movl	$1, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$310, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.L49
	movl	$2, -52(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-52(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L44
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_flags@PLT
	andl	$4, %eax
	testl	%eax, %eax
	je	.L44
	leaq	-320(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.L45
.L44:
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	(%rax), %rdx
	leaq	-320(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -152(%rbp)
.L45:
	leaq	-320(%rbp), %rax
	leaq	-48(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-264(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	-256(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	jmp	.L35
.L49:
	nop
.L35:
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	88(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$343, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	der2key_decode, .-der2key_decode
	.type	der2key_export_object, @function
der2key_export_object:
.LFB577:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_get_keymgmt_export@PLT
	movq	%rax, -24(%rbp)
	cmpq	$8, -56(%rbp)
	jne	.L51
	cmpq	$0, -24(%rbp)
	je	.L51
	movq	-16(%rbp), %rax
	movl	272(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L52
	movl	$135, -4(%rbp)
.L52:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	call	*%r8
	jmp	.L53
.L51:
	movl	$0, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE577:
	.size	der2key_export_object, .-der2key_export_object
	.type	dh_d2i_PKCS8, @function
dh_d2i_PKCS8:
.LFB578:
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
	movq	ossl_dh_key_from_pkcs8@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	der2key_decode_p8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE578:
	.size	dh_d2i_PKCS8, .-dh_d2i_PKCS8
	.type	dh_adjust, @function
dh_adjust:
.LFB579:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_dh_set0_libctx@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE579:
	.size	dh_adjust, .-dh_adjust
	.type	dsa_d2i_PKCS8, @function
dsa_d2i_PKCS8:
.LFB580:
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
	movq	ossl_dsa_key_from_pkcs8@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	der2key_decode_p8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE580:
	.size	dsa_d2i_PKCS8, .-dsa_d2i_PKCS8
	.type	dsa_adjust, @function
dsa_adjust:
.LFB581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_dsa_set0_libctx@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	dsa_adjust, .-dsa_adjust
	.type	ec_d2i_PKCS8, @function
ec_d2i_PKCS8:
.LFB582:
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
	movq	ossl_ec_key_from_pkcs8@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	der2key_decode_p8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	ec_d2i_PKCS8, .-ec_d2i_PKCS8
	.type	ec_check, @function
ec_check:
.LFB583:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EC_KEY_get_flags@PLT
	andl	$4, %eax
	shrl	$2, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L63
	movq	-32(%rbp), %rax
	movq	264(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$1172, %eax
	je	.L64
	movq	-32(%rbp), %rax
	movq	264(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$408, %eax
	jne	.L65
.L64:
	movl	$1, %eax
	jmp	.L66
.L65:
	movl	$0, %eax
.L66:
	movl	%eax, -4(%rbp)
	jmp	.L67
.L63:
	movq	-32(%rbp), %rax
	movq	264(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$1172, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L67:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	ec_check, .-ec_check
	.type	ec_adjust, @function
ec_adjust:
.LFB584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ec_key_set0_libctx@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	ec_adjust, .-ec_adjust
	.type	ecx_d2i_PKCS8, @function
ecx_d2i_PKCS8:
.LFB585:
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
	movq	ossl_ecx_key_from_pkcs8@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	der2key_decode_p8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE585:
	.size	ecx_d2i_PKCS8, .-ecx_d2i_PKCS8
	.type	ecx_key_adjust, @function
ecx_key_adjust:
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_ecx_key_set0_libctx@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE586:
	.size	ecx_key_adjust, .-ecx_key_adjust
	.type	sm2_d2i_PKCS8, @function
sm2_d2i_PKCS8:
.LFB587:
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
	movq	ossl_ec_key_from_pkcs8@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	der2key_decode_p8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	sm2_d2i_PKCS8, .-sm2_d2i_PKCS8
	.type	rsa_d2i_PKCS8, @function
rsa_d2i_PKCS8:
.LFB588:
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
	movq	ossl_rsa_key_from_pkcs8@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	der2key_decode_p8
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	rsa_d2i_PKCS8, .-rsa_d2i_PKCS8
	.type	rsa_check, @function
rsa_check:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$61440, %esi
	movq	%rax, %rdi
	call	RSA_test_flags@PLT
	testl	%eax, %eax
	je	.L78
	cmpl	$4096, %eax
	je	.L79
	jmp	.L82
.L78:
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$6, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L81
.L79:
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$912, %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.L81
.L82:
	movl	$0, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	rsa_check, .-rsa_check
	.type	rsa_adjust, @function
rsa_adjust:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rsa_set0_libctx@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	rsa_adjust, .-rsa_adjust
	.section	.rodata
.LC7:
	.string	"DH"
.LC8:
	.string	"PrivateKeyInfo"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	PrivateKeyInfo_dh_desc, @object
	.size	PrivateKeyInfo_dh_desc, 96
PrivateKeyInfo_dh_desc:
	.quad	.LC7
	.quad	ossl_dh_keymgmt_functions
	.quad	.LC8
	.long	28
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	dh_d2i_PKCS8
	.quad	0
	.quad	0
	.quad	dh_adjust
	.quad	DH_free
	.text
	.type	PrivateKeyInfo_der2dh_newctx, @function
PrivateKeyInfo_der2dh_newctx:
.LFB591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	PrivateKeyInfo_dh_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	PrivateKeyInfo_der2dh_newctx, .-PrivateKeyInfo_der2dh_newctx
	.type	PrivateKeyInfo_der2dh_does_selection, @function
PrivateKeyInfo_der2dh_does_selection:
.LFB592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_dh_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	PrivateKeyInfo_der2dh_does_selection, .-PrivateKeyInfo_der2dh_does_selection
	.globl	ossl_PrivateKeyInfo_der_to_dh_decoder_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_PrivateKeyInfo_der_to_dh_decoder_functions, @object
	.size	ossl_PrivateKeyInfo_der_to_dh_decoder_functions, 128
ossl_PrivateKeyInfo_der_to_dh_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2dh_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2dh_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC9:
	.string	"SubjectPublicKeyInfo"
	.section	.data.rel.ro
	.align 32
	.type	SubjectPublicKeyInfo_dh_desc, @object
	.size	SubjectPublicKeyInfo_dh_desc, 96
SubjectPublicKeyInfo_dh_desc:
	.quad	.LC7
	.quad	ossl_dh_keymgmt_functions
	.quad	.LC9
	.long	28
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_d2i_DH_PUBKEY
	.quad	0
	.quad	dh_adjust
	.quad	DH_free
	.text
	.type	SubjectPublicKeyInfo_der2dh_newctx, @function
SubjectPublicKeyInfo_der2dh_newctx:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	SubjectPublicKeyInfo_dh_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	SubjectPublicKeyInfo_der2dh_newctx, .-SubjectPublicKeyInfo_der2dh_newctx
	.type	SubjectPublicKeyInfo_der2dh_does_selection, @function
SubjectPublicKeyInfo_der2dh_does_selection:
.LFB594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_dh_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	SubjectPublicKeyInfo_der2dh_does_selection, .-SubjectPublicKeyInfo_der2dh_does_selection
	.globl	ossl_SubjectPublicKeyInfo_der_to_dh_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_dh_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_dh_decoder_functions, 128
ossl_SubjectPublicKeyInfo_der_to_dh_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2dh_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2dh_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC10:
	.string	"type-specific"
	.section	.data.rel.ro
	.align 32
	.type	type_specific_params_dh_desc, @object
	.size	type_specific_params_dh_desc, 96
type_specific_params_dh_desc:
	.quad	.LC7
	.quad	ossl_dh_keymgmt_functions
	.quad	.LC10
	.long	28
	.long	132
	.quad	0
	.quad	0
	.quad	d2i_DHparams
	.quad	0
	.quad	0
	.quad	0
	.quad	dh_adjust
	.quad	DH_free
	.text
	.type	type_specific_params_der2dh_newctx, @function
type_specific_params_der2dh_newctx:
.LFB595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	type_specific_params_dh_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	type_specific_params_der2dh_newctx, .-type_specific_params_der2dh_newctx
	.type	type_specific_params_der2dh_does_selection, @function
type_specific_params_der2dh_does_selection:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	type_specific_params_dh_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	type_specific_params_der2dh_does_selection, .-type_specific_params_der2dh_does_selection
	.globl	ossl_type_specific_params_der_to_dh_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_type_specific_params_der_to_dh_decoder_functions, @object
	.size	ossl_type_specific_params_der_to_dh_decoder_functions, 128
ossl_type_specific_params_der_to_dh_decoder_functions:
	.long	1
	.zero	4
	.quad	type_specific_params_der2dh_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	type_specific_params_der2dh_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	DH_dh_desc, @object
	.size	DH_dh_desc, 96
DH_dh_desc:
	.quad	.LC7
	.quad	ossl_dh_keymgmt_functions
	.quad	.LC7
	.long	28
	.long	132
	.quad	0
	.quad	0
	.quad	d2i_DHparams
	.quad	0
	.quad	0
	.quad	0
	.quad	dh_adjust
	.quad	DH_free
	.text
	.type	DH_der2dh_newctx, @function
DH_der2dh_newctx:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	DH_dh_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	DH_der2dh_newctx, .-DH_der2dh_newctx
	.type	DH_der2dh_does_selection, @function
DH_der2dh_does_selection:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	DH_dh_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	DH_der2dh_does_selection, .-DH_der2dh_does_selection
	.globl	ossl_DH_der_to_dh_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_DH_der_to_dh_decoder_functions, @object
	.size	ossl_DH_der_to_dh_decoder_functions, 128
ossl_DH_der_to_dh_decoder_functions:
	.long	1
	.zero	4
	.quad	DH_der2dh_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	DH_der2dh_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC11:
	.string	"DHX"
	.section	.data.rel.ro
	.align 32
	.type	PrivateKeyInfo_dhx_desc, @object
	.size	PrivateKeyInfo_dhx_desc, 96
PrivateKeyInfo_dhx_desc:
	.quad	.LC11
	.quad	ossl_dhx_keymgmt_functions
	.quad	.LC8
	.long	920
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	dh_d2i_PKCS8
	.quad	0
	.quad	0
	.quad	dh_adjust
	.quad	DH_free
	.text
	.type	PrivateKeyInfo_der2dhx_newctx, @function
PrivateKeyInfo_der2dhx_newctx:
.LFB599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	PrivateKeyInfo_dhx_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	PrivateKeyInfo_der2dhx_newctx, .-PrivateKeyInfo_der2dhx_newctx
	.type	PrivateKeyInfo_der2dhx_does_selection, @function
PrivateKeyInfo_der2dhx_does_selection:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_dhx_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	PrivateKeyInfo_der2dhx_does_selection, .-PrivateKeyInfo_der2dhx_does_selection
	.globl	ossl_PrivateKeyInfo_der_to_dhx_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_PrivateKeyInfo_der_to_dhx_decoder_functions, @object
	.size	ossl_PrivateKeyInfo_der_to_dhx_decoder_functions, 128
ossl_PrivateKeyInfo_der_to_dhx_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2dhx_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2dhx_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	SubjectPublicKeyInfo_dhx_desc, @object
	.size	SubjectPublicKeyInfo_dhx_desc, 96
SubjectPublicKeyInfo_dhx_desc:
	.quad	.LC11
	.quad	ossl_dhx_keymgmt_functions
	.quad	.LC9
	.long	920
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_d2i_DHx_PUBKEY
	.quad	0
	.quad	dh_adjust
	.quad	DH_free
	.text
	.type	SubjectPublicKeyInfo_der2dhx_newctx, @function
SubjectPublicKeyInfo_der2dhx_newctx:
.LFB601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	SubjectPublicKeyInfo_dhx_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	SubjectPublicKeyInfo_der2dhx_newctx, .-SubjectPublicKeyInfo_der2dhx_newctx
	.type	SubjectPublicKeyInfo_der2dhx_does_selection, @function
SubjectPublicKeyInfo_der2dhx_does_selection:
.LFB602:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_dhx_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	SubjectPublicKeyInfo_der2dhx_does_selection, .-SubjectPublicKeyInfo_der2dhx_does_selection
	.globl	ossl_SubjectPublicKeyInfo_der_to_dhx_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_dhx_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_dhx_decoder_functions, 128
ossl_SubjectPublicKeyInfo_der_to_dhx_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2dhx_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2dhx_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	type_specific_params_dhx_desc, @object
	.size	type_specific_params_dhx_desc, 96
type_specific_params_dhx_desc:
	.quad	.LC11
	.quad	ossl_dhx_keymgmt_functions
	.quad	.LC10
	.long	920
	.long	132
	.quad	0
	.quad	0
	.quad	d2i_DHxparams
	.quad	0
	.quad	0
	.quad	0
	.quad	dh_adjust
	.quad	DH_free
	.text
	.type	type_specific_params_der2dhx_newctx, @function
type_specific_params_der2dhx_newctx:
.LFB603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	type_specific_params_dhx_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	type_specific_params_der2dhx_newctx, .-type_specific_params_der2dhx_newctx
	.type	type_specific_params_der2dhx_does_selection, @function
type_specific_params_der2dhx_does_selection:
.LFB604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	type_specific_params_dhx_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE604:
	.size	type_specific_params_der2dhx_does_selection, .-type_specific_params_der2dhx_does_selection
	.globl	ossl_type_specific_params_der_to_dhx_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_type_specific_params_der_to_dhx_decoder_functions, @object
	.size	ossl_type_specific_params_der_to_dhx_decoder_functions, 128
ossl_type_specific_params_der_to_dhx_decoder_functions:
	.long	1
	.zero	4
	.quad	type_specific_params_der2dhx_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	type_specific_params_der2dhx_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	DHX_dhx_desc, @object
	.size	DHX_dhx_desc, 96
DHX_dhx_desc:
	.quad	.LC11
	.quad	ossl_dhx_keymgmt_functions
	.quad	.LC11
	.long	920
	.long	132
	.quad	0
	.quad	0
	.quad	d2i_DHxparams
	.quad	0
	.quad	0
	.quad	0
	.quad	dh_adjust
	.quad	DH_free
	.text
	.type	DHX_der2dhx_newctx, @function
DHX_der2dhx_newctx:
.LFB605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	DHX_dhx_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE605:
	.size	DHX_der2dhx_newctx, .-DHX_der2dhx_newctx
	.type	DHX_der2dhx_does_selection, @function
DHX_der2dhx_does_selection:
.LFB606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	DHX_dhx_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE606:
	.size	DHX_der2dhx_does_selection, .-DHX_der2dhx_does_selection
	.globl	ossl_DHX_der_to_dhx_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_DHX_der_to_dhx_decoder_functions, @object
	.size	ossl_DHX_der_to_dhx_decoder_functions, 128
ossl_DHX_der_to_dhx_decoder_functions:
	.long	1
	.zero	4
	.quad	DHX_der2dhx_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	DHX_der2dhx_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC12:
	.string	"DSA"
	.section	.data.rel.ro
	.align 32
	.type	PrivateKeyInfo_dsa_desc, @object
	.size	PrivateKeyInfo_dsa_desc, 96
PrivateKeyInfo_dsa_desc:
	.quad	.LC12
	.quad	ossl_dsa_keymgmt_functions
	.quad	.LC8
	.long	116
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	dsa_d2i_PKCS8
	.quad	0
	.quad	0
	.quad	dsa_adjust
	.quad	DSA_free
	.text
	.type	PrivateKeyInfo_der2dsa_newctx, @function
PrivateKeyInfo_der2dsa_newctx:
.LFB607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	PrivateKeyInfo_dsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE607:
	.size	PrivateKeyInfo_der2dsa_newctx, .-PrivateKeyInfo_der2dsa_newctx
	.type	PrivateKeyInfo_der2dsa_does_selection, @function
PrivateKeyInfo_der2dsa_does_selection:
.LFB608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_dsa_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE608:
	.size	PrivateKeyInfo_der2dsa_does_selection, .-PrivateKeyInfo_der2dsa_does_selection
	.globl	ossl_PrivateKeyInfo_der_to_dsa_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_PrivateKeyInfo_der_to_dsa_decoder_functions, @object
	.size	ossl_PrivateKeyInfo_der_to_dsa_decoder_functions, 128
ossl_PrivateKeyInfo_der_to_dsa_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2dsa_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2dsa_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	SubjectPublicKeyInfo_dsa_desc, @object
	.size	SubjectPublicKeyInfo_dsa_desc, 96
SubjectPublicKeyInfo_dsa_desc:
	.quad	.LC12
	.quad	ossl_dsa_keymgmt_functions
	.quad	.LC9
	.long	116
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_d2i_DSA_PUBKEY
	.quad	0
	.quad	dsa_adjust
	.quad	DSA_free
	.text
	.type	SubjectPublicKeyInfo_der2dsa_newctx, @function
SubjectPublicKeyInfo_der2dsa_newctx:
.LFB609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	SubjectPublicKeyInfo_dsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE609:
	.size	SubjectPublicKeyInfo_der2dsa_newctx, .-SubjectPublicKeyInfo_der2dsa_newctx
	.type	SubjectPublicKeyInfo_der2dsa_does_selection, @function
SubjectPublicKeyInfo_der2dsa_does_selection:
.LFB610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_dsa_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE610:
	.size	SubjectPublicKeyInfo_der2dsa_does_selection, .-SubjectPublicKeyInfo_der2dsa_does_selection
	.globl	ossl_SubjectPublicKeyInfo_der_to_dsa_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_dsa_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_dsa_decoder_functions, 128
ossl_SubjectPublicKeyInfo_der_to_dsa_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2dsa_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2dsa_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	type_specific_dsa_desc, @object
	.size	type_specific_dsa_desc, 96
type_specific_dsa_desc:
	.quad	.LC12
	.quad	ossl_dsa_keymgmt_functions
	.quad	.LC10
	.long	116
	.long	135
	.quad	d2i_DSAPrivateKey
	.quad	d2i_DSAPublicKey
	.quad	d2i_DSAparams
	.quad	0
	.quad	0
	.quad	0
	.quad	dsa_adjust
	.quad	DSA_free
	.text
	.type	type_specific_der2dsa_newctx, @function
type_specific_der2dsa_newctx:
.LFB611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	type_specific_dsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE611:
	.size	type_specific_der2dsa_newctx, .-type_specific_der2dsa_newctx
	.type	type_specific_der2dsa_does_selection, @function
type_specific_der2dsa_does_selection:
.LFB612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	type_specific_dsa_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE612:
	.size	type_specific_der2dsa_does_selection, .-type_specific_der2dsa_does_selection
	.globl	ossl_type_specific_der_to_dsa_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_type_specific_der_to_dsa_decoder_functions, @object
	.size	ossl_type_specific_der_to_dsa_decoder_functions, 128
ossl_type_specific_der_to_dsa_decoder_functions:
	.long	1
	.zero	4
	.quad	type_specific_der2dsa_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	type_specific_der2dsa_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	DSA_dsa_desc, @object
	.size	DSA_dsa_desc, 96
DSA_dsa_desc:
	.quad	.LC12
	.quad	ossl_dsa_keymgmt_functions
	.quad	.LC12
	.long	116
	.long	135
	.quad	d2i_DSAPrivateKey
	.quad	d2i_DSAPublicKey
	.quad	d2i_DSAparams
	.quad	0
	.quad	0
	.quad	0
	.quad	dsa_adjust
	.quad	DSA_free
	.text
	.type	DSA_der2dsa_newctx, @function
DSA_der2dsa_newctx:
.LFB613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	DSA_dsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE613:
	.size	DSA_der2dsa_newctx, .-DSA_der2dsa_newctx
	.type	DSA_der2dsa_does_selection, @function
DSA_der2dsa_does_selection:
.LFB614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	DSA_dsa_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE614:
	.size	DSA_der2dsa_does_selection, .-DSA_der2dsa_does_selection
	.globl	ossl_DSA_der_to_dsa_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_DSA_der_to_dsa_decoder_functions, @object
	.size	ossl_DSA_der_to_dsa_decoder_functions, 128
ossl_DSA_der_to_dsa_decoder_functions:
	.long	1
	.zero	4
	.quad	DSA_der2dsa_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	DSA_der2dsa_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	PrivateKeyInfo_ec_desc, @object
	.size	PrivateKeyInfo_ec_desc, 96
PrivateKeyInfo_ec_desc:
	.quad	.LC3
	.quad	ossl_ec_keymgmt_functions
	.quad	.LC8
	.long	408
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	ec_d2i_PKCS8
	.quad	0
	.quad	ec_check
	.quad	ec_adjust
	.quad	EC_KEY_free
	.text
	.type	PrivateKeyInfo_der2ec_newctx, @function
PrivateKeyInfo_der2ec_newctx:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	PrivateKeyInfo_ec_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	PrivateKeyInfo_der2ec_newctx, .-PrivateKeyInfo_der2ec_newctx
	.type	PrivateKeyInfo_der2ec_does_selection, @function
PrivateKeyInfo_der2ec_does_selection:
.LFB616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_ec_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE616:
	.size	PrivateKeyInfo_der2ec_does_selection, .-PrivateKeyInfo_der2ec_does_selection
	.globl	ossl_PrivateKeyInfo_der_to_ec_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_PrivateKeyInfo_der_to_ec_decoder_functions, @object
	.size	ossl_PrivateKeyInfo_der_to_ec_decoder_functions, 128
ossl_PrivateKeyInfo_der_to_ec_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2ec_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2ec_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	SubjectPublicKeyInfo_ec_desc, @object
	.size	SubjectPublicKeyInfo_ec_desc, 96
SubjectPublicKeyInfo_ec_desc:
	.quad	.LC3
	.quad	ossl_ec_keymgmt_functions
	.quad	.LC9
	.long	408
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	d2i_EC_PUBKEY
	.quad	ec_check
	.quad	ec_adjust
	.quad	EC_KEY_free
	.text
	.type	SubjectPublicKeyInfo_der2ec_newctx, @function
SubjectPublicKeyInfo_der2ec_newctx:
.LFB617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	SubjectPublicKeyInfo_ec_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE617:
	.size	SubjectPublicKeyInfo_der2ec_newctx, .-SubjectPublicKeyInfo_der2ec_newctx
	.type	SubjectPublicKeyInfo_der2ec_does_selection, @function
SubjectPublicKeyInfo_der2ec_does_selection:
.LFB618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_ec_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE618:
	.size	SubjectPublicKeyInfo_der2ec_does_selection, .-SubjectPublicKeyInfo_der2ec_does_selection
	.globl	ossl_SubjectPublicKeyInfo_der_to_ec_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_ec_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_ec_decoder_functions, 128
ossl_SubjectPublicKeyInfo_der_to_ec_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2ec_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2ec_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	type_specific_no_pub_ec_desc, @object
	.size	type_specific_no_pub_ec_desc, 96
type_specific_no_pub_ec_desc:
	.quad	.LC3
	.quad	ossl_ec_keymgmt_functions
	.quad	.LC10
	.long	408
	.long	133
	.quad	d2i_ECPrivateKey
	.quad	0
	.quad	d2i_ECParameters
	.quad	0
	.quad	0
	.quad	ec_check
	.quad	ec_adjust
	.quad	EC_KEY_free
	.text
	.type	type_specific_no_pub_der2ec_newctx, @function
type_specific_no_pub_der2ec_newctx:
.LFB619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	type_specific_no_pub_ec_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE619:
	.size	type_specific_no_pub_der2ec_newctx, .-type_specific_no_pub_der2ec_newctx
	.type	type_specific_no_pub_der2ec_does_selection, @function
type_specific_no_pub_der2ec_does_selection:
.LFB620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	type_specific_no_pub_ec_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE620:
	.size	type_specific_no_pub_der2ec_does_selection, .-type_specific_no_pub_der2ec_does_selection
	.globl	ossl_type_specific_no_pub_der_to_ec_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_type_specific_no_pub_der_to_ec_decoder_functions, @object
	.size	ossl_type_specific_no_pub_der_to_ec_decoder_functions, 128
ossl_type_specific_no_pub_der_to_ec_decoder_functions:
	.long	1
	.zero	4
	.quad	type_specific_no_pub_der2ec_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	type_specific_no_pub_der2ec_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	EC_ec_desc, @object
	.size	EC_ec_desc, 96
EC_ec_desc:
	.quad	.LC3
	.quad	ossl_ec_keymgmt_functions
	.quad	.LC3
	.long	408
	.long	133
	.quad	d2i_ECPrivateKey
	.quad	0
	.quad	d2i_ECParameters
	.quad	0
	.quad	0
	.quad	ec_check
	.quad	ec_adjust
	.quad	EC_KEY_free
	.text
	.type	EC_der2ec_newctx, @function
EC_der2ec_newctx:
.LFB621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	EC_ec_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE621:
	.size	EC_der2ec_newctx, .-EC_der2ec_newctx
	.type	EC_der2ec_does_selection, @function
EC_der2ec_does_selection:
.LFB622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	EC_ec_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE622:
	.size	EC_der2ec_does_selection, .-EC_der2ec_does_selection
	.globl	ossl_EC_der_to_ec_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_EC_der_to_ec_decoder_functions, @object
	.size	ossl_EC_der_to_ec_decoder_functions, 128
ossl_EC_der_to_ec_decoder_functions:
	.long	1
	.zero	4
	.quad	EC_der2ec_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	EC_der2ec_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC13:
	.string	"X25519"
	.section	.data.rel.ro
	.align 32
	.type	PrivateKeyInfo_x25519_desc, @object
	.size	PrivateKeyInfo_x25519_desc, 96
PrivateKeyInfo_x25519_desc:
	.quad	.LC13
	.quad	ossl_x25519_keymgmt_functions
	.quad	.LC8
	.long	1034
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_d2i_PKCS8
	.quad	0
	.quad	0
	.quad	ecx_key_adjust
	.quad	ossl_ecx_key_free
	.text
	.type	PrivateKeyInfo_der2x25519_newctx, @function
PrivateKeyInfo_der2x25519_newctx:
.LFB623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	PrivateKeyInfo_x25519_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE623:
	.size	PrivateKeyInfo_der2x25519_newctx, .-PrivateKeyInfo_der2x25519_newctx
	.type	PrivateKeyInfo_der2x25519_does_selection, @function
PrivateKeyInfo_der2x25519_does_selection:
.LFB624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_x25519_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE624:
	.size	PrivateKeyInfo_der2x25519_does_selection, .-PrivateKeyInfo_der2x25519_does_selection
	.globl	ossl_PrivateKeyInfo_der_to_x25519_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_PrivateKeyInfo_der_to_x25519_decoder_functions, @object
	.size	ossl_PrivateKeyInfo_der_to_x25519_decoder_functions, 128
ossl_PrivateKeyInfo_der_to_x25519_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2x25519_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2x25519_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	SubjectPublicKeyInfo_x25519_desc, @object
	.size	SubjectPublicKeyInfo_x25519_desc, 96
SubjectPublicKeyInfo_x25519_desc:
	.quad	.LC13
	.quad	ossl_x25519_keymgmt_functions
	.quad	.LC9
	.long	1034
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_d2i_X25519_PUBKEY
	.quad	0
	.quad	ecx_key_adjust
	.quad	ossl_ecx_key_free
	.text
	.type	SubjectPublicKeyInfo_der2x25519_newctx, @function
SubjectPublicKeyInfo_der2x25519_newctx:
.LFB625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	SubjectPublicKeyInfo_x25519_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE625:
	.size	SubjectPublicKeyInfo_der2x25519_newctx, .-SubjectPublicKeyInfo_der2x25519_newctx
	.type	SubjectPublicKeyInfo_der2x25519_does_selection, @function
SubjectPublicKeyInfo_der2x25519_does_selection:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_x25519_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	SubjectPublicKeyInfo_der2x25519_does_selection, .-SubjectPublicKeyInfo_der2x25519_does_selection
	.globl	ossl_SubjectPublicKeyInfo_der_to_x25519_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_x25519_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_x25519_decoder_functions, 128
ossl_SubjectPublicKeyInfo_der_to_x25519_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2x25519_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2x25519_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC14:
	.string	"X448"
	.section	.data.rel.ro
	.align 32
	.type	PrivateKeyInfo_x448_desc, @object
	.size	PrivateKeyInfo_x448_desc, 96
PrivateKeyInfo_x448_desc:
	.quad	.LC14
	.quad	ossl_x448_keymgmt_functions
	.quad	.LC8
	.long	1035
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_d2i_PKCS8
	.quad	0
	.quad	0
	.quad	ecx_key_adjust
	.quad	ossl_ecx_key_free
	.text
	.type	PrivateKeyInfo_der2x448_newctx, @function
PrivateKeyInfo_der2x448_newctx:
.LFB627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	PrivateKeyInfo_x448_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE627:
	.size	PrivateKeyInfo_der2x448_newctx, .-PrivateKeyInfo_der2x448_newctx
	.type	PrivateKeyInfo_der2x448_does_selection, @function
PrivateKeyInfo_der2x448_does_selection:
.LFB628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_x448_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE628:
	.size	PrivateKeyInfo_der2x448_does_selection, .-PrivateKeyInfo_der2x448_does_selection
	.globl	ossl_PrivateKeyInfo_der_to_x448_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_PrivateKeyInfo_der_to_x448_decoder_functions, @object
	.size	ossl_PrivateKeyInfo_der_to_x448_decoder_functions, 128
ossl_PrivateKeyInfo_der_to_x448_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2x448_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2x448_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	SubjectPublicKeyInfo_x448_desc, @object
	.size	SubjectPublicKeyInfo_x448_desc, 96
SubjectPublicKeyInfo_x448_desc:
	.quad	.LC14
	.quad	ossl_x448_keymgmt_functions
	.quad	.LC9
	.long	1035
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_d2i_X448_PUBKEY
	.quad	0
	.quad	ecx_key_adjust
	.quad	ossl_ecx_key_free
	.text
	.type	SubjectPublicKeyInfo_der2x448_newctx, @function
SubjectPublicKeyInfo_der2x448_newctx:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	SubjectPublicKeyInfo_x448_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	SubjectPublicKeyInfo_der2x448_newctx, .-SubjectPublicKeyInfo_der2x448_newctx
	.type	SubjectPublicKeyInfo_der2x448_does_selection, @function
SubjectPublicKeyInfo_der2x448_does_selection:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_x448_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	SubjectPublicKeyInfo_der2x448_does_selection, .-SubjectPublicKeyInfo_der2x448_does_selection
	.globl	ossl_SubjectPublicKeyInfo_der_to_x448_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_x448_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_x448_decoder_functions, 128
ossl_SubjectPublicKeyInfo_der_to_x448_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2x448_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2x448_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC15:
	.string	"ED25519"
	.section	.data.rel.ro
	.align 32
	.type	PrivateKeyInfo_ed25519_desc, @object
	.size	PrivateKeyInfo_ed25519_desc, 96
PrivateKeyInfo_ed25519_desc:
	.quad	.LC15
	.quad	ossl_ed25519_keymgmt_functions
	.quad	.LC8
	.long	1087
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_d2i_PKCS8
	.quad	0
	.quad	0
	.quad	ecx_key_adjust
	.quad	ossl_ecx_key_free
	.text
	.type	PrivateKeyInfo_der2ed25519_newctx, @function
PrivateKeyInfo_der2ed25519_newctx:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	PrivateKeyInfo_ed25519_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	PrivateKeyInfo_der2ed25519_newctx, .-PrivateKeyInfo_der2ed25519_newctx
	.type	PrivateKeyInfo_der2ed25519_does_selection, @function
PrivateKeyInfo_der2ed25519_does_selection:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_ed25519_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	PrivateKeyInfo_der2ed25519_does_selection, .-PrivateKeyInfo_der2ed25519_does_selection
	.globl	ossl_PrivateKeyInfo_der_to_ed25519_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_PrivateKeyInfo_der_to_ed25519_decoder_functions, @object
	.size	ossl_PrivateKeyInfo_der_to_ed25519_decoder_functions, 128
ossl_PrivateKeyInfo_der_to_ed25519_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2ed25519_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2ed25519_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	SubjectPublicKeyInfo_ed25519_desc, @object
	.size	SubjectPublicKeyInfo_ed25519_desc, 96
SubjectPublicKeyInfo_ed25519_desc:
	.quad	.LC15
	.quad	ossl_ed25519_keymgmt_functions
	.quad	.LC9
	.long	1087
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_d2i_ED25519_PUBKEY
	.quad	0
	.quad	ecx_key_adjust
	.quad	ossl_ecx_key_free
	.text
	.type	SubjectPublicKeyInfo_der2ed25519_newctx, @function
SubjectPublicKeyInfo_der2ed25519_newctx:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	SubjectPublicKeyInfo_ed25519_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	SubjectPublicKeyInfo_der2ed25519_newctx, .-SubjectPublicKeyInfo_der2ed25519_newctx
	.type	SubjectPublicKeyInfo_der2ed25519_does_selection, @function
SubjectPublicKeyInfo_der2ed25519_does_selection:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_ed25519_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	SubjectPublicKeyInfo_der2ed25519_does_selection, .-SubjectPublicKeyInfo_der2ed25519_does_selection
	.globl	ossl_SubjectPublicKeyInfo_der_to_ed25519_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_ed25519_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_ed25519_decoder_functions, 128
ossl_SubjectPublicKeyInfo_der_to_ed25519_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2ed25519_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2ed25519_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC16:
	.string	"ED448"
	.section	.data.rel.ro
	.align 32
	.type	PrivateKeyInfo_ed448_desc, @object
	.size	PrivateKeyInfo_ed448_desc, 96
PrivateKeyInfo_ed448_desc:
	.quad	.LC16
	.quad	ossl_ed448_keymgmt_functions
	.quad	.LC8
	.long	1088
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	ecx_d2i_PKCS8
	.quad	0
	.quad	0
	.quad	ecx_key_adjust
	.quad	ossl_ecx_key_free
	.text
	.type	PrivateKeyInfo_der2ed448_newctx, @function
PrivateKeyInfo_der2ed448_newctx:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	PrivateKeyInfo_ed448_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	PrivateKeyInfo_der2ed448_newctx, .-PrivateKeyInfo_der2ed448_newctx
	.type	PrivateKeyInfo_der2ed448_does_selection, @function
PrivateKeyInfo_der2ed448_does_selection:
.LFB636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_ed448_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE636:
	.size	PrivateKeyInfo_der2ed448_does_selection, .-PrivateKeyInfo_der2ed448_does_selection
	.globl	ossl_PrivateKeyInfo_der_to_ed448_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_PrivateKeyInfo_der_to_ed448_decoder_functions, @object
	.size	ossl_PrivateKeyInfo_der_to_ed448_decoder_functions, 128
ossl_PrivateKeyInfo_der_to_ed448_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2ed448_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2ed448_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	SubjectPublicKeyInfo_ed448_desc, @object
	.size	SubjectPublicKeyInfo_ed448_desc, 96
SubjectPublicKeyInfo_ed448_desc:
	.quad	.LC16
	.quad	ossl_ed448_keymgmt_functions
	.quad	.LC9
	.long	1088
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	ossl_d2i_ED448_PUBKEY
	.quad	0
	.quad	ecx_key_adjust
	.quad	ossl_ecx_key_free
	.text
	.type	SubjectPublicKeyInfo_der2ed448_newctx, @function
SubjectPublicKeyInfo_der2ed448_newctx:
.LFB637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	SubjectPublicKeyInfo_ed448_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE637:
	.size	SubjectPublicKeyInfo_der2ed448_newctx, .-SubjectPublicKeyInfo_der2ed448_newctx
	.type	SubjectPublicKeyInfo_der2ed448_does_selection, @function
SubjectPublicKeyInfo_der2ed448_does_selection:
.LFB638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_ed448_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE638:
	.size	SubjectPublicKeyInfo_der2ed448_does_selection, .-SubjectPublicKeyInfo_der2ed448_does_selection
	.globl	ossl_SubjectPublicKeyInfo_der_to_ed448_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_ed448_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_ed448_decoder_functions, 128
ossl_SubjectPublicKeyInfo_der_to_ed448_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2ed448_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2ed448_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	PrivateKeyInfo_sm2_desc, @object
	.size	PrivateKeyInfo_sm2_desc, 96
PrivateKeyInfo_sm2_desc:
	.quad	.LC4
	.quad	ossl_sm2_keymgmt_functions
	.quad	.LC8
	.long	1172
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	sm2_d2i_PKCS8
	.quad	0
	.quad	ec_check
	.quad	ec_adjust
	.quad	EC_KEY_free
	.text
	.type	PrivateKeyInfo_der2sm2_newctx, @function
PrivateKeyInfo_der2sm2_newctx:
.LFB639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	PrivateKeyInfo_sm2_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE639:
	.size	PrivateKeyInfo_der2sm2_newctx, .-PrivateKeyInfo_der2sm2_newctx
	.type	PrivateKeyInfo_der2sm2_does_selection, @function
PrivateKeyInfo_der2sm2_does_selection:
.LFB640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_sm2_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE640:
	.size	PrivateKeyInfo_der2sm2_does_selection, .-PrivateKeyInfo_der2sm2_does_selection
	.globl	ossl_PrivateKeyInfo_der_to_sm2_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_PrivateKeyInfo_der_to_sm2_decoder_functions, @object
	.size	ossl_PrivateKeyInfo_der_to_sm2_decoder_functions, 128
ossl_PrivateKeyInfo_der_to_sm2_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2sm2_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2sm2_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	SubjectPublicKeyInfo_sm2_desc, @object
	.size	SubjectPublicKeyInfo_sm2_desc, 96
SubjectPublicKeyInfo_sm2_desc:
	.quad	.LC4
	.quad	ossl_sm2_keymgmt_functions
	.quad	.LC9
	.long	1172
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	d2i_EC_PUBKEY
	.quad	ec_check
	.quad	ec_adjust
	.quad	EC_KEY_free
	.text
	.type	SubjectPublicKeyInfo_der2sm2_newctx, @function
SubjectPublicKeyInfo_der2sm2_newctx:
.LFB641:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	SubjectPublicKeyInfo_sm2_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE641:
	.size	SubjectPublicKeyInfo_der2sm2_newctx, .-SubjectPublicKeyInfo_der2sm2_newctx
	.type	SubjectPublicKeyInfo_der2sm2_does_selection, @function
SubjectPublicKeyInfo_der2sm2_does_selection:
.LFB642:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_sm2_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE642:
	.size	SubjectPublicKeyInfo_der2sm2_does_selection, .-SubjectPublicKeyInfo_der2sm2_does_selection
	.globl	ossl_SubjectPublicKeyInfo_der_to_sm2_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_sm2_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_sm2_decoder_functions, 128
ossl_SubjectPublicKeyInfo_der_to_sm2_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2sm2_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2sm2_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	type_specific_no_pub_sm2_desc, @object
	.size	type_specific_no_pub_sm2_desc, 96
type_specific_no_pub_sm2_desc:
	.quad	.LC4
	.quad	ossl_sm2_keymgmt_functions
	.quad	.LC10
	.long	1172
	.long	133
	.quad	d2i_ECPrivateKey
	.quad	0
	.quad	d2i_ECParameters
	.quad	0
	.quad	0
	.quad	ec_check
	.quad	ec_adjust
	.quad	EC_KEY_free
	.text
	.type	type_specific_no_pub_der2sm2_newctx, @function
type_specific_no_pub_der2sm2_newctx:
.LFB643:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	type_specific_no_pub_sm2_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE643:
	.size	type_specific_no_pub_der2sm2_newctx, .-type_specific_no_pub_der2sm2_newctx
	.type	type_specific_no_pub_der2sm2_does_selection, @function
type_specific_no_pub_der2sm2_does_selection:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	type_specific_no_pub_sm2_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	type_specific_no_pub_der2sm2_does_selection, .-type_specific_no_pub_der2sm2_does_selection
	.globl	ossl_type_specific_no_pub_der_to_sm2_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_type_specific_no_pub_der_to_sm2_decoder_functions, @object
	.size	ossl_type_specific_no_pub_der_to_sm2_decoder_functions, 128
ossl_type_specific_no_pub_der_to_sm2_decoder_functions:
	.long	1
	.zero	4
	.quad	type_specific_no_pub_der2sm2_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	type_specific_no_pub_der2sm2_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC17:
	.string	"RSA"
	.section	.data.rel.ro
	.align 32
	.type	PrivateKeyInfo_rsa_desc, @object
	.size	PrivateKeyInfo_rsa_desc, 96
PrivateKeyInfo_rsa_desc:
	.quad	.LC17
	.quad	ossl_rsa_keymgmt_functions
	.quad	.LC8
	.long	6
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	rsa_d2i_PKCS8
	.quad	0
	.quad	rsa_check
	.quad	rsa_adjust
	.quad	RSA_free
	.text
	.type	PrivateKeyInfo_der2rsa_newctx, @function
PrivateKeyInfo_der2rsa_newctx:
.LFB645:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	PrivateKeyInfo_rsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE645:
	.size	PrivateKeyInfo_der2rsa_newctx, .-PrivateKeyInfo_der2rsa_newctx
	.type	PrivateKeyInfo_der2rsa_does_selection, @function
PrivateKeyInfo_der2rsa_does_selection:
.LFB646:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_rsa_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE646:
	.size	PrivateKeyInfo_der2rsa_does_selection, .-PrivateKeyInfo_der2rsa_does_selection
	.globl	ossl_PrivateKeyInfo_der_to_rsa_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_PrivateKeyInfo_der_to_rsa_decoder_functions, @object
	.size	ossl_PrivateKeyInfo_der_to_rsa_decoder_functions, 128
ossl_PrivateKeyInfo_der_to_rsa_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2rsa_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2rsa_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	SubjectPublicKeyInfo_rsa_desc, @object
	.size	SubjectPublicKeyInfo_rsa_desc, 96
SubjectPublicKeyInfo_rsa_desc:
	.quad	.LC17
	.quad	ossl_rsa_keymgmt_functions
	.quad	.LC9
	.long	6
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	d2i_RSA_PUBKEY
	.quad	rsa_check
	.quad	rsa_adjust
	.quad	RSA_free
	.text
	.type	SubjectPublicKeyInfo_der2rsa_newctx, @function
SubjectPublicKeyInfo_der2rsa_newctx:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	SubjectPublicKeyInfo_rsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	SubjectPublicKeyInfo_der2rsa_newctx, .-SubjectPublicKeyInfo_der2rsa_newctx
	.type	SubjectPublicKeyInfo_der2rsa_does_selection, @function
SubjectPublicKeyInfo_der2rsa_does_selection:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_rsa_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	SubjectPublicKeyInfo_der2rsa_does_selection, .-SubjectPublicKeyInfo_der2rsa_does_selection
	.globl	ossl_SubjectPublicKeyInfo_der_to_rsa_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_rsa_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_rsa_decoder_functions, 128
ossl_SubjectPublicKeyInfo_der_to_rsa_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2rsa_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2rsa_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	type_specific_keypair_rsa_desc, @object
	.size	type_specific_keypair_rsa_desc, 96
type_specific_keypair_rsa_desc:
	.quad	.LC17
	.quad	ossl_rsa_keymgmt_functions
	.quad	.LC10
	.long	6
	.long	3
	.quad	d2i_RSAPrivateKey
	.quad	d2i_RSAPublicKey
	.quad	0
	.quad	0
	.quad	0
	.quad	rsa_check
	.quad	rsa_adjust
	.quad	RSA_free
	.text
	.type	type_specific_keypair_der2rsa_newctx, @function
type_specific_keypair_der2rsa_newctx:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	type_specific_keypair_rsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	type_specific_keypair_der2rsa_newctx, .-type_specific_keypair_der2rsa_newctx
	.type	type_specific_keypair_der2rsa_does_selection, @function
type_specific_keypair_der2rsa_does_selection:
.LFB650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	type_specific_keypair_rsa_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	type_specific_keypair_der2rsa_does_selection, .-type_specific_keypair_der2rsa_does_selection
	.globl	ossl_type_specific_keypair_der_to_rsa_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_type_specific_keypair_der_to_rsa_decoder_functions, @object
	.size	ossl_type_specific_keypair_der_to_rsa_decoder_functions, 128
ossl_type_specific_keypair_der_to_rsa_decoder_functions:
	.long	1
	.zero	4
	.quad	type_specific_keypair_der2rsa_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	type_specific_keypair_der2rsa_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	RSA_rsa_desc, @object
	.size	RSA_rsa_desc, 96
RSA_rsa_desc:
	.quad	.LC17
	.quad	ossl_rsa_keymgmt_functions
	.quad	.LC17
	.long	6
	.long	3
	.quad	d2i_RSAPrivateKey
	.quad	d2i_RSAPublicKey
	.quad	0
	.quad	0
	.quad	0
	.quad	rsa_check
	.quad	rsa_adjust
	.quad	RSA_free
	.text
	.type	RSA_der2rsa_newctx, @function
RSA_der2rsa_newctx:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	RSA_rsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	RSA_der2rsa_newctx, .-RSA_der2rsa_newctx
	.type	RSA_der2rsa_does_selection, @function
RSA_der2rsa_does_selection:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	RSA_rsa_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	RSA_der2rsa_does_selection, .-RSA_der2rsa_does_selection
	.globl	ossl_RSA_der_to_rsa_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_RSA_der_to_rsa_decoder_functions, @object
	.size	ossl_RSA_der_to_rsa_decoder_functions, 128
ossl_RSA_der_to_rsa_decoder_functions:
	.long	1
	.zero	4
	.quad	RSA_der2rsa_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	RSA_der2rsa_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC18:
	.string	"RSA-PSS"
	.section	.data.rel.ro
	.align 32
	.type	PrivateKeyInfo_rsapss_desc, @object
	.size	PrivateKeyInfo_rsapss_desc, 96
PrivateKeyInfo_rsapss_desc:
	.quad	.LC18
	.quad	ossl_rsapss_keymgmt_functions
	.quad	.LC8
	.long	912
	.long	1
	.quad	0
	.quad	0
	.quad	0
	.quad	rsa_d2i_PKCS8
	.quad	0
	.quad	rsa_check
	.quad	rsa_adjust
	.quad	RSA_free
	.text
	.type	PrivateKeyInfo_der2rsapss_newctx, @function
PrivateKeyInfo_der2rsapss_newctx:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	PrivateKeyInfo_rsapss_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	PrivateKeyInfo_der2rsapss_newctx, .-PrivateKeyInfo_der2rsapss_newctx
	.type	PrivateKeyInfo_der2rsapss_does_selection, @function
PrivateKeyInfo_der2rsapss_does_selection:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	PrivateKeyInfo_rsapss_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	PrivateKeyInfo_der2rsapss_does_selection, .-PrivateKeyInfo_der2rsapss_does_selection
	.globl	ossl_PrivateKeyInfo_der_to_rsapss_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_PrivateKeyInfo_der_to_rsapss_decoder_functions, @object
	.size	ossl_PrivateKeyInfo_der_to_rsapss_decoder_functions, 128
ossl_PrivateKeyInfo_der_to_rsapss_decoder_functions:
	.long	1
	.zero	4
	.quad	PrivateKeyInfo_der2rsapss_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	PrivateKeyInfo_der2rsapss_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.data.rel.ro
	.align 32
	.type	SubjectPublicKeyInfo_rsapss_desc, @object
	.size	SubjectPublicKeyInfo_rsapss_desc, 96
SubjectPublicKeyInfo_rsapss_desc:
	.quad	.LC18
	.quad	ossl_rsapss_keymgmt_functions
	.quad	.LC9
	.long	912
	.long	2
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	d2i_RSA_PUBKEY
	.quad	rsa_check
	.quad	rsa_adjust
	.quad	RSA_free
	.text
	.type	SubjectPublicKeyInfo_der2rsapss_newctx, @function
SubjectPublicKeyInfo_der2rsapss_newctx:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	SubjectPublicKeyInfo_rsapss_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	SubjectPublicKeyInfo_der2rsapss_newctx, .-SubjectPublicKeyInfo_der2rsapss_newctx
	.type	SubjectPublicKeyInfo_der2rsapss_does_selection, @function
SubjectPublicKeyInfo_der2rsapss_does_selection:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	SubjectPublicKeyInfo_rsapss_desc(%rip), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	der2key_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	SubjectPublicKeyInfo_der2rsapss_does_selection, .-SubjectPublicKeyInfo_der2rsapss_does_selection
	.globl	ossl_SubjectPublicKeyInfo_der_to_rsapss_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_rsapss_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_rsapss_decoder_functions, 128
ossl_SubjectPublicKeyInfo_der_to_rsapss_decoder_functions:
	.long	1
	.zero	4
	.quad	SubjectPublicKeyInfo_der2rsapss_newctx
	.long	2
	.zero	4
	.quad	der2key_freectx
	.long	10
	.zero	4
	.quad	SubjectPublicKeyInfo_der2rsapss_does_selection
	.long	11
	.zero	4
	.quad	der2key_decode
	.long	20
	.zero	4
	.quad	der2key_export_object
	.long	6
	.zero	4
	.quad	der2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	der2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	settables.1, @object
	.size	settables.1, 80
settables.1:
	.quad	.LC1
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
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"der2key_decode"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
