	.file	"encode_key2blob.c"
	.text
	.type	write_blob, @function
write_blob:
.LFB358:
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
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE358:
	.size	write_blob, .-write_blob
	.type	key2blob_newctx, @function
key2blob_newctx:
.LFB359:
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
.LFE359:
	.size	key2blob_newctx, .-key2blob_newctx
	.type	key2blob_freectx, @function
key2blob_freectx:
.LFB360:
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
.LFE360:
	.size	key2blob_freectx, .-key2blob_freectx
	.type	key2blob_check_selection, @function
key2blob_check_selection:
.LFB361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	$1, -28(%rbp)
	movl	$2, -24(%rbp)
	movl	$132, -20(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L8
	movl	$1, %eax
	jmp	.L13
.L8:
	movq	$0, -8(%rbp)
	jmp	.L10
.L12:
	movq	-8(%rbp), %rax
	movl	-28(%rbp,%rax,4), %eax
	andl	-36(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-28(%rbp,%rax,4), %eax
	andl	-40(%rbp), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L11
	movl	-16(%rbp), %eax
	jmp	.L13
.L11:
	addq	$1, -8(%rbp)
.L10:
	cmpq	$2, -8(%rbp)
	jbe	.L12
	movl	$0, %eax
.L13:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE361:
	.size	key2blob_check_selection, .-key2blob_check_selection
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/encode_decode/encode_key2blob.c"
	.text
	.type	key2blob_encode, @function
key2blob_encode:
.LFB362:
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
	movq	%rcx, -48(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2o_ECPublicKey@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L15
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L15
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	write_blob
	movl	%eax, -4(%rbp)
.L15:
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$97, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE362:
	.size	key2blob_encode, .-key2blob_encode
	.type	ec2blob_import_object, @function
ec2blob_import_object:
.LFB363:
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
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE363:
	.size	ec2blob_import_object, .-ec2blob_import_object
	.type	ec2blob_free_object, @function
ec2blob_free_object:
.LFB364:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_ec_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE364:
	.size	ec2blob_free_object, .-ec2blob_free_object
	.type	ec2blob_does_selection, @function
ec2blob_does_selection:
.LFB365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$134, %esi
	movl	%eax, %edi
	call	key2blob_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE365:
	.size	ec2blob_does_selection, .-ec2blob_does_selection
	.type	ec2blob_encode, @function
ec2blob_encode:
.LFB366:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L23
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$175, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	key2blob_encode
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE366:
	.size	ec2blob_encode, .-ec2blob_encode
	.globl	ossl_ec_to_blob_encoder_functions
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	ossl_ec_to_blob_encoder_functions, @object
	.size	ossl_ec_to_blob_encoder_functions, 112
ossl_ec_to_blob_encoder_functions:
	.long	1
	.zero	4
	.quad	key2blob_newctx
	.long	2
	.zero	4
	.quad	key2blob_freectx
	.long	10
	.zero	4
	.quad	ec2blob_does_selection
	.long	20
	.zero	4
	.quad	ec2blob_import_object
	.long	21
	.zero	4
	.quad	ec2blob_free_object
	.long	11
	.zero	4
	.quad	ec2blob_encode
	.long	0
	.zero	4
	.quad	0
	.text
	.type	sm22blob_import_object, @function
sm22blob_import_object:
.LFB367:
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
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	ossl_prov_import_key@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE367:
	.size	sm22blob_import_object, .-sm22blob_import_object
	.type	sm22blob_free_object, @function
sm22blob_free_object:
.LFB368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	ossl_sm2_keymgmt_functions@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_prov_free_key@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE368:
	.size	sm22blob_free_object, .-sm22blob_free_object
	.type	sm22blob_does_selection, @function
sm22blob_does_selection:
.LFB369:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	$134, %esi
	movl	%eax, %edi
	call	key2blob_check_selection
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE369:
	.size	sm22blob_does_selection, .-sm22blob_does_selection
	.type	sm22blob_encode, @function
sm22blob_encode:
.LFB370:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L31
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$177, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-16(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	key2blob_encode
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE370:
	.size	sm22blob_encode, .-sm22blob_encode
	.globl	ossl_sm2_to_blob_encoder_functions
	.section	.data.rel.ro.local
	.align 32
	.type	ossl_sm2_to_blob_encoder_functions, @object
	.size	ossl_sm2_to_blob_encoder_functions, 112
ossl_sm2_to_blob_encoder_functions:
	.long	1
	.zero	4
	.quad	key2blob_newctx
	.long	2
	.zero	4
	.quad	key2blob_freectx
	.long	10
	.zero	4
	.quad	sm22blob_does_selection
	.long	20
	.zero	4
	.quad	sm22blob_import_object
	.long	21
	.zero	4
	.quad	sm22blob_free_object
	.long	11
	.zero	4
	.quad	sm22blob_encode
	.long	0
	.zero	4
	.quad	0
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 15
__func__.1:
	.string	"ec2blob_encode"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 16
__func__.0:
	.string	"sm22blob_encode"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
