	.file	"decode_pvk2key.c"
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
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/encode_decode/decode_pvk2key.c"
	.text
	.type	pvk2key_newctx, @function
pvk2key_newctx:
.LFB465:
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
	movl	$70, %edx
	movq	%rax, %rsi
	movl	$280, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 264(%rax)
.L8:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	pvk2key_newctx, .-pvk2key_newctx
	.type	pvk2key_freectx, @function
pvk2key_freectx:
.LFB466:
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
	movl	$83, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	pvk2key_freectx, .-pvk2key_freectx
	.type	pvk2key_settable_ctx_params, @function
pvk2key_settable_ctx_params:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	settables.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	pvk2key_settable_ctx_params, .-pvk2key_settable_ctx_params
	.section	.rodata
.LC1:
	.string	"properties"
	.text
	.type	pvk2key_set_ctx_params, @function
pvk2key_set_ctx_params:
.LFB468:
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
	je	.L14
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$0, %eax
	jmp	.L16
.L14:
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	pvk2key_set_ctx_params, .-pvk2key_set_ctx_params
	.type	pvk2key_does_selection, @function
pvk2key_does_selection:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L18
	movl	$1, %eax
	jmp	.L19
.L18:
	movl	-12(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L20
	movl	$1, %eax
	jmp	.L19
.L20:
	movl	$0, %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	pvk2key_does_selection, .-pvk2key_does_selection
	.section	.rodata
.LC2:
	.string	"type"
.LC3:
	.string	"data-type"
.LC4:
	.string	"reference"
	.text
	.type	pvk2key_decode, @function
pvk2key_decode:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$320, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movl	%edx, -260(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -280(%rbp)
	movq	%r9, -288(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L33
.L22:
	movq	-40(%rbp), %rax
	movl	-260(%rbp), %edx
	movl	%edx, 272(%rax)
	cmpl	$0, -260(%rbp)
	je	.L24
	movl	-260(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L25
.L24:
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L25
	leaq	-240(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	16(%rbp), %rdx
	movq	-288(%rbp), %rcx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pw_set_ossl_passphrase_cb@PLT
	testl	%eax, %eax
	je	.L34
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	24(%rax), %rbx
	movq	-40(%rbp), %rax
	leaq	8(%rax), %r12
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rcx
	leaq	-240(%rbp), %rdx
	movq	ossl_pw_pvk_password@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	-24(%rbp), %rax
	movq	%r12, %r8
	movq	%rax, %rdi
	call	*%rbx
	movq	%rax, -64(%rbp)
	call	ERR_peek_last_error@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	ERR_GET_LIB
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, -52(%rbp)
	cmpl	$9, -48(%rbp)
	jne	.L28
	cmpl	$104, -52(%rbp)
	je	.L29
	cmpl	$101, -52(%rbp)
	jne	.L28
.L29:
	call	ERR_clear_last_mark@PLT
	jmp	.L32
.L28:
	cmpl	$0, -260(%rbp)
	je	.L25
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L35
.L25:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L36
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	32(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L31
.L35:
	nop
	jmp	.L31
.L36:
	nop
.L31:
	movl	$1, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -24(%rbp)
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L37
	movl	$2, -68(%rbp)
	leaq	-336(%rbp), %rax
	leaq	-68(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	8(%rax), %rdx
	leaq	-336(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	-336(%rbp), %rax
	leaq	-64(%rbp), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -128(%rbp)
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-280(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -28(%rbp)
	jmp	.L32
.L34:
	nop
	jmp	.L32
.L37:
	nop
.L32:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	40(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	-28(%rbp), %eax
.L33:
	addq	$320, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	pvk2key_decode, .-pvk2key_decode
	.type	pvk2key_export_object, @function
pvk2key_export_object:
.LFB471:
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
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_get_keymgmt_export@PLT
	movq	%rax, -24(%rbp)
	cmpq	$8, -56(%rbp)
	jne	.L39
	cmpq	$0, -24(%rbp)
	je	.L39
	movq	-16(%rbp), %rax
	movl	272(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L40
	movl	$135, -4(%rbp)
.L40:
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
	jmp	.L41
.L39:
	movl	$0, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	pvk2key_export_object, .-pvk2key_export_object
	.type	rsa_adjust, @function
rsa_adjust:
.LFB472:
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
.LFE472:
	.size	rsa_adjust, .-rsa_adjust
	.section	.rodata
.LC5:
	.string	"DSA"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	pvk2dsa_desc, @object
	.size	pvk2dsa_desc, 48
pvk2dsa_desc:
	.long	116
	.zero	4
	.quad	.LC5
	.quad	ossl_dsa_keymgmt_functions
	.quad	b2i_DSA_PVK_bio_ex
	.quad	0
	.quad	DSA_free
	.text
	.type	pvk2dsa_newctx, @function
pvk2dsa_newctx:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	pvk2dsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pvk2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	pvk2dsa_newctx, .-pvk2dsa_newctx
	.globl	ossl_pvk_to_dsa_decoder_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_pvk_to_dsa_decoder_functions, @object
	.size	ossl_pvk_to_dsa_decoder_functions, 128
ossl_pvk_to_dsa_decoder_functions:
	.long	1
	.zero	4
	.quad	pvk2dsa_newctx
	.long	2
	.zero	4
	.quad	pvk2key_freectx
	.long	10
	.zero	4
	.quad	pvk2key_does_selection
	.long	11
	.zero	4
	.quad	pvk2key_decode
	.long	20
	.zero	4
	.quad	pvk2key_export_object
	.long	6
	.zero	4
	.quad	pvk2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	pvk2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC6:
	.string	"RSA"
	.section	.data.rel.ro
	.align 32
	.type	pvk2rsa_desc, @object
	.size	pvk2rsa_desc, 48
pvk2rsa_desc:
	.long	6
	.zero	4
	.quad	.LC6
	.quad	ossl_rsa_keymgmt_functions
	.quad	b2i_RSA_PVK_bio_ex
	.quad	rsa_adjust
	.quad	RSA_free
	.text
	.type	pvk2rsa_newctx, @function
pvk2rsa_newctx:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	pvk2rsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pvk2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	pvk2rsa_newctx, .-pvk2rsa_newctx
	.globl	ossl_pvk_to_rsa_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_pvk_to_rsa_decoder_functions, @object
	.size	ossl_pvk_to_rsa_decoder_functions, 128
ossl_pvk_to_rsa_decoder_functions:
	.long	1
	.zero	4
	.quad	pvk2rsa_newctx
	.long	2
	.zero	4
	.quad	pvk2key_freectx
	.long	10
	.zero	4
	.quad	pvk2key_does_selection
	.long	11
	.zero	4
	.quad	pvk2key_decode
	.long	20
	.zero	4
	.quad	pvk2key_export_object
	.long	6
	.zero	4
	.quad	pvk2key_settable_ctx_params
	.long	5
	.zero	4
	.quad	pvk2key_set_ctx_params
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	settables.0, @object
	.size	settables.0, 80
settables.0:
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
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
