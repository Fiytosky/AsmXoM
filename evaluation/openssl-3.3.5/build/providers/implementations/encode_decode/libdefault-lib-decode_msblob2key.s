	.file	"decode_msblob2key.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/encode_decode/decode_msblob2key.c"
	.text
	.type	msblob2key_newctx, @function
msblob2key_newctx:
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
	movl	$66, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L2:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	msblob2key_newctx, .-msblob2key_newctx
	.type	msblob2key_freectx, @function
msblob2key_freectx:
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
	movl	$79, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	msblob2key_freectx, .-msblob2key_freectx
	.type	msblob2key_does_selection, @function
msblob2key_does_selection:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L6
	movl	$1, %eax
	jmp	.L7
.L6:
	movl	-12(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L8
	movl	$1, %eax
	jmp	.L7
.L8:
	movl	$0, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	msblob2key_does_selection, .-msblob2key_does_selection
	.section	.rodata
.LC1:
	.string	"type"
.LC2:
	.string	"data-type"
.LC3:
	.string	"reference"
	.text
	.type	msblob2key_decode, @function
msblob2key_decode:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movl	%edx, -276(%rbp)
	movq	%rcx, -288(%rbp)
	movq	%r8, -296(%rbp)
	movq	%r9, -304(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$-1, -76(%rbp)
	movl	$-1, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L28
.L10:
	leaq	-64(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	cmpl	$16, %eax
	je	.L12
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L13
.L12:
	call	ERR_set_mark@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-76(%rbp), %rsi
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$16, %esi
	movq	%rax, %rdi
	call	ossl_do_blob_header@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -20(%rbp)
	je	.L29
	movq	-32(%rbp), %rax
	movl	-276(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	$0, -20(%rbp)
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	je	.L15
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$116, %eax
	jne	.L30
.L15:
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	jne	.L17
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	jne	.L30
.L17:
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-68(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ossl_blob_length@PLT
	movl	%eax, -36(%rbp)
	cmpl	$102400, -36(%rbp)
	jbe	.L18
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$131, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L13
.L18:
	movl	-36(%rbp), %eax
	leaq	.LC0(%rip), %rcx
	movl	$134, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L31
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	cmpl	%eax, %edx
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$139, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$123, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L13
.L21:
	cmpl	$0, -276(%rbp)
	je	.L22
	movl	-276(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L23
.L22:
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	jne	.L23
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L23
	leaq	-256(%rbp), %rax
	movl	$48, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	16(%rbp), %rdx
	movq	-304(%rbp), %rcx
	leaq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_pw_set_ossl_passphrase_cb@PLT
	testl	%eax, %eax
	je	.L32
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %r8
	movl	-80(%rbp), %edx
	movl	-68(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -88(%rbp)
	cmpl	$0, -276(%rbp)
	je	.L23
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L33
.L23:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L26
	cmpl	$0, -276(%rbp)
	je	.L27
	movl	-276(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L26
.L27:
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	je	.L26
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %r8
	movl	-80(%rbp), %edx
	movl	-68(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -88(%rbp)
	cmpl	$0, -276(%rbp)
	je	.L26
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L34
.L26:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L35
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L13
.L29:
	nop
	jmp	.L13
.L30:
	nop
	jmp	.L13
.L33:
	nop
	jmp	.L13
.L34:
	nop
	jmp	.L13
.L35:
	nop
.L13:
	movl	$1, -20(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$182, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L36
	movl	$2, -92(%rbp)
	leaq	-352(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	leaq	-352(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-352(%rbp), %rax
	leaq	-88(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -144(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-352(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movq	%rdx, -128(%rbp)
	movq	-336(%rbp), %rax
	movq	-328(%rbp), %rdx
	movq	%rax, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-296(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	-288(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -20(%rbp)
	jmp	.L20
.L31:
	nop
	jmp	.L20
.L32:
	nop
	jmp	.L20
.L36:
	nop
.L20:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$207, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	-20(%rbp), %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	msblob2key_decode, .-msblob2key_decode
	.type	msblob2key_export_object, @function
msblob2key_export_object:
.LFB469:
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
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_get_keymgmt_export@PLT
	movq	%rax, -24(%rbp)
	cmpq	$8, -56(%rbp)
	jne	.L38
	cmpq	$0, -24(%rbp)
	je	.L38
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L39
	movl	$135, -4(%rbp)
.L39:
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
	jmp	.L40
.L38:
	movl	$0, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	msblob2key_export_object, .-msblob2key_export_object
	.type	rsa_adjust, @function
rsa_adjust:
.LFB470:
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
.LFE470:
	.size	rsa_adjust, .-rsa_adjust
	.section	.rodata
.LC4:
	.string	"DSA"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	mstype2dsa_desc, @object
	.size	mstype2dsa_desc, 56
mstype2dsa_desc:
	.long	116
	.zero	4
	.quad	.LC4
	.quad	ossl_dsa_keymgmt_functions
	.quad	ossl_b2i_DSA_after_header
	.quad	ossl_b2i_DSA_after_header
	.quad	0
	.quad	DSA_free
	.text
	.type	msblob2dsa_newctx, @function
msblob2dsa_newctx:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	mstype2dsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	msblob2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	msblob2dsa_newctx, .-msblob2dsa_newctx
	.globl	ossl_msblob_to_dsa_decoder_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_msblob_to_dsa_decoder_functions, @object
	.size	ossl_msblob_to_dsa_decoder_functions, 96
ossl_msblob_to_dsa_decoder_functions:
	.long	1
	.zero	4
	.quad	msblob2dsa_newctx
	.long	2
	.zero	4
	.quad	msblob2key_freectx
	.long	10
	.zero	4
	.quad	msblob2key_does_selection
	.long	11
	.zero	4
	.quad	msblob2key_decode
	.long	20
	.zero	4
	.quad	msblob2key_export_object
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
.LC5:
	.string	"RSA"
	.section	.data.rel.ro
	.align 32
	.type	mstype2rsa_desc, @object
	.size	mstype2rsa_desc, 56
mstype2rsa_desc:
	.long	6
	.zero	4
	.quad	.LC5
	.quad	ossl_rsa_keymgmt_functions
	.quad	ossl_b2i_RSA_after_header
	.quad	ossl_b2i_RSA_after_header
	.quad	rsa_adjust
	.quad	RSA_free
	.text
	.type	msblob2rsa_newctx, @function
msblob2rsa_newctx:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	mstype2rsa_desc(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	msblob2key_newctx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	msblob2rsa_newctx, .-msblob2rsa_newctx
	.globl	ossl_msblob_to_rsa_decoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_msblob_to_rsa_decoder_functions, @object
	.size	ossl_msblob_to_rsa_decoder_functions, 96
ossl_msblob_to_rsa_decoder_functions:
	.long	1
	.zero	4
	.quad	msblob2rsa_newctx
	.long	2
	.zero	4
	.quad	msblob2key_freectx
	.long	10
	.zero	4
	.quad	msblob2key_does_selection
	.long	11
	.zero	4
	.quad	msblob2key_decode
	.long	20
	.zero	4
	.quad	msblob2key_export_object
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"msblob2key_decode"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
