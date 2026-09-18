	.file	"file_store_any2obj.c"
	.text
	.type	any2obj_newctx, @function
any2obj_newctx:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	any2obj_newctx, .-any2obj_newctx
	.type	any2obj_freectx, @function
any2obj_freectx:
.LFB466:
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
.LFE466:
	.size	any2obj_freectx, .-any2obj_freectx
	.section	.rodata
.LC0:
	.string	"type"
.LC1:
	.string	"data"
	.text
	.type	any2obj_decode_final, @function
any2obj_decode_final:
.LFB467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movl	$1, -4(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L5
	leaq	-224(%rbp), %rax
	leaq	-140(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rcx
	movq	-152(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-224(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_octet_string@PLT
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-168(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
.L5:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE467:
	.size	any2obj_decode_final, .-any2obj_decode_final
	.type	der2obj_decode, @function
der2obj_decode:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L11
.L8:
	call	ERR_set_mark@PLT
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_d2i_read_bio@PLT
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -12(%rbp)
	jne	.L10
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L10
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	$0, -24(%rbp)
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	any2obj_decode_final
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	der2obj_decode, .-der2obj_decode
	.section	.rodata
	.align 8
.LC2:
	.string	"../providers/implementations/storemgmt/file_store_any2obj.c"
	.text
	.type	msblob2obj_decode, @function
msblob2obj_decode:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	$-1, -60(%rbp)
	movl	$-1, -64(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L24
	movq	$16, -40(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L15
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	jne	.L16
.L15:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L14
.L16:
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movq	-40(%rbp), %rdx
	cmpl	%edx, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -12(%rbp)
	je	.L25
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$16, %esi
	movq	%rax, %rdi
	call	ossl_do_blob_header@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -12(%rbp)
	je	.L26
	movl	$0, -12(%rbp)
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %ecx
	movl	-52(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	ossl_blob_length@PLT
	movl	%eax, %eax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$150, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L14
.L20:
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movq	-40(%rbp), %rdx
	cmpl	%edx, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	jmp	.L18
.L25:
	nop
	jmp	.L18
.L26:
	nop
.L18:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -12(%rbp)
	jne	.L21
	cmpq	$0, -8(%rbp)
	je	.L21
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	$0, -8(%rbp)
.L21:
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r8
	movl	$2, %esi
	movq	%rax, %rdi
	call	any2obj_decode_final
	jmp	.L23
.L24:
	nop
.L14:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	msblob2obj_decode, .-msblob2obj_decode
	.type	pvk2obj_decode, @function
pvk2obj_decode:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L39
	movq	$24, -40(%rbp)
	call	BUF_MEM_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L30
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	jne	.L31
.L30:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L31:
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movq	-40(%rbp), %rdx
	cmpl	%edx, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -12(%rbp)
	je	.L40
	call	ERR_set_mark@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-56(%rbp), %rcx
	leaq	-52(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$24, %esi
	movq	%rax, %rdi
	call	ossl_do_PVK_header@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	call	ERR_pop_to_mark@PLT
	cmpl	$0, -12(%rbp)
	je	.L41
	movl	$0, -12(%rbp)
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %eax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BUF_MEM_grow@PLT
	testq	%rax, %rax
	jne	.L35
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$217, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524295, %esi
	movl	$9, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L29
.L35:
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movq	-40(%rbp), %rdx
	cmpl	%edx, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	addq	%rax, -32(%rbp)
	call	ERR_pop_to_mark@PLT
	jmp	.L33
.L40:
	nop
	jmp	.L33
.L41:
	nop
.L33:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	cmpl	$0, -12(%rbp)
	jne	.L36
	cmpq	$0, -8(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movq	$0, -8(%rbp)
.L36:
	movq	-104(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rsi, %r8
	movl	$2, %esi
	movq	%rax, %rdi
	call	any2obj_decode_final
	jmp	.L38
.L39:
	nop
.L29:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	pvk2obj_decode, .-pvk2obj_decode
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	der_to_obj_decoder_functions, @object
	.size	der_to_obj_decoder_functions, 64
der_to_obj_decoder_functions:
	.long	1
	.zero	4
	.quad	any2obj_newctx
	.long	2
	.zero	4
	.quad	any2obj_freectx
	.long	11
	.zero	4
	.quad	der2obj_decode
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	msblob_to_obj_decoder_functions, @object
	.size	msblob_to_obj_decoder_functions, 64
msblob_to_obj_decoder_functions:
	.long	1
	.zero	4
	.quad	any2obj_newctx
	.long	2
	.zero	4
	.quad	any2obj_freectx
	.long	11
	.zero	4
	.quad	msblob2obj_decode
	.long	0
	.zero	4
	.quad	0
	.align 32
	.type	pvk_to_obj_decoder_functions, @object
	.size	pvk_to_obj_decoder_functions, 64
pvk_to_obj_decoder_functions:
	.long	1
	.zero	4
	.quad	any2obj_newctx
	.long	2
	.zero	4
	.quad	any2obj_freectx
	.long	11
	.zero	4
	.quad	pvk2obj_decode
	.long	0
	.zero	4
	.quad	0
	.globl	ossl_any_to_obj_algorithm
	.section	.rodata
.LC3:
	.string	"obj"
.LC4:
	.string	"input=DER"
.LC5:
	.string	"input=MSBLOB"
.LC6:
	.string	"input=PVK"
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_any_to_obj_algorithm, @object
	.size	ossl_any_to_obj_algorithm, 128
ossl_any_to_obj_algorithm:
	.quad	.LC3
	.quad	.LC4
	.quad	der_to_obj_decoder_functions
	.zero	8
	.quad	.LC3
	.quad	.LC5
	.quad	msblob_to_obj_decoder_functions
	.zero	8
	.quad	.LC3
	.quad	.LC6
	.quad	pvk_to_obj_decoder_functions
	.zero	8
	.quad	0
	.zero	24
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"msblob2obj_decode"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 15
__func__.0:
	.string	"pvk2obj_decode"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
