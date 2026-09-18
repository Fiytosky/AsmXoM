	.file	"decode_spki2typespki.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/encode_decode/decode_spki2typespki.c"
	.text
	.type	spki2typespki_newctx, @function
spki2typespki_newctx:
.LFB476:
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
	movl	$264, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L2:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	spki2typespki_newctx, .-spki2typespki_newctx
	.type	spki2typespki_freectx, @function
spki2typespki_freectx:
.LFB477:
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
	movl	$51, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	spki2typespki_freectx, .-spki2typespki_freectx
	.type	spki2typespki_settable_ctx_params, @function
spki2typespki_settable_ctx_params:
.LFB478:
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
.LFE478:
	.size	spki2typespki_settable_ctx_params, .-spki2typespki_settable_ctx_params
	.section	.rodata
.LC1:
	.string	"properties"
	.text
	.type	spki2typespki_set_ctx_params, @function
spki2typespki_set_ctx_params:
.LFB479:
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
	je	.L8
	leaq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L10
.L8:
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	spki2typespki_set_ctx_params, .-spki2typespki_set_ctx_params
	.section	.rodata
.LC2:
	.string	"data-type"
.LC3:
	.string	"SubjectPublicKeyInfo"
.LC4:
	.string	"data-structure"
.LC5:
	.string	"data"
.LC6:
	.string	"type"
	.text
	.type	spki2typespki_decode, @function
spki2typespki_decode:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$456, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -376(%rbp)
	movq	%rsi, -384(%rbp)
	movl	%edx, -388(%rbp)
	movq	%rcx, -400(%rbp)
	movq	%r8, -408(%rbp)
	movq	%r9, -416(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	movl	$2, -76(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	leaq	-368(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-72(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	-384(%rbp), %rsi
	movq	%rax, %rdi
	call	ossl_read_der@PLT
	testl	%eax, %eax
	jne	.L12
	movl	$1, %eax
	jmp	.L19
.L12:
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_prov_ctx_get0_libctx@PLT
	movq	%rax, %rdx
	movq	-72(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	ossl_d2i_X509_PUBKEY_INTERNAL@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L14
	movl	$1, -20(%rbp)
	jmp	.L15
.L14:
	movq	-32(%rbp), %rdx
	leaq	-88(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	X509_PUBKEY_get0_param@PLT
	testl	%eax, %eax
	je	.L20
	movq	-88(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_ALGOR_get0@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cmpl	$408, %eax
	jne	.L17
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509_algor_is_sm2@PLT
	testl	%eax, %eax
	je	.L17
	leaq	-160(%rbp), %rax
	movl	$3296595, (%rax)
	jmp	.L18
.L17:
	movq	-96(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movl	$0, %ecx
	movl	$50, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	testl	%eax, %eax
	jle	.L21
.L18:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_X509_PUBKEY_INTERNAL_free@PLT
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-464(%rbp), %rax
	leaq	-160(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-464(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-464(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -48(%rbp)
	leaq	-464(%rbp), %rax
	leaq	-76(%rbp), %rdx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-48(%rbp), %rbx
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-464(%rbp), %rax
	movq	-456(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-448(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-432(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-408(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	-400(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -20(%rbp)
	jmp	.L15
.L20:
	nop
	jmp	.L15
.L21:
	nop
.L15:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_X509_PUBKEY_INTERNAL_free@PLT
	movq	-56(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$140, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	spki2typespki_decode, .-spki2typespki_decode
	.globl	ossl_SubjectPublicKeyInfo_der_to_der_decoder_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_SubjectPublicKeyInfo_der_to_der_decoder_functions, @object
	.size	ossl_SubjectPublicKeyInfo_der_to_der_decoder_functions, 96
ossl_SubjectPublicKeyInfo_der_to_der_decoder_functions:
	.long	1
	.zero	4
	.quad	spki2typespki_newctx
	.long	2
	.zero	4
	.quad	spki2typespki_freectx
	.long	11
	.zero	4
	.quad	spki2typespki_decode
	.long	6
	.zero	4
	.quad	spki2typespki_settable_ctx_params
	.long	5
	.zero	4
	.quad	spki2typespki_set_ctx_params
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
