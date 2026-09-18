	.file	"endecoder_common.c"
	.text
	.type	OSSL_FUNC_keymgmt_new, @function
OSSL_FUNC_keymgmt_new:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	OSSL_FUNC_keymgmt_new, .-OSSL_FUNC_keymgmt_new
	.type	OSSL_FUNC_keymgmt_free, @function
OSSL_FUNC_keymgmt_free:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	OSSL_FUNC_keymgmt_free, .-OSSL_FUNC_keymgmt_free
	.type	OSSL_FUNC_keymgmt_import, @function
OSSL_FUNC_keymgmt_import:
.LFB183:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	OSSL_FUNC_keymgmt_import, .-OSSL_FUNC_keymgmt_import
	.type	OSSL_FUNC_keymgmt_export, @function
OSSL_FUNC_keymgmt_export:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	OSSL_FUNC_keymgmt_export, .-OSSL_FUNC_keymgmt_export
	.globl	ossl_prov_get_keymgmt_new
	.type	ossl_prov_get_keymgmt_new, @function
ossl_prov_get_keymgmt_new:
.LFB278:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L10
.L13:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_keymgmt_new
	jmp	.L12
.L11:
	addq	$16, -8(%rbp)
.L10:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE278:
	.size	ossl_prov_get_keymgmt_new, .-ossl_prov_get_keymgmt_new
	.globl	ossl_prov_get_keymgmt_free
	.type	ossl_prov_get_keymgmt_free, @function
ossl_prov_get_keymgmt_free:
.LFB279:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L15
.L18:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$10, %eax
	jne	.L16
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_keymgmt_free
	jmp	.L17
.L16:
	addq	$16, -8(%rbp)
.L15:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L18
	movl	$0, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE279:
	.size	ossl_prov_get_keymgmt_free, .-ossl_prov_get_keymgmt_free
	.globl	ossl_prov_get_keymgmt_import
	.type	ossl_prov_get_keymgmt_import, @function
ossl_prov_get_keymgmt_import:
.LFB280:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L20
.L23:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$40, %eax
	jne	.L21
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_keymgmt_import
	jmp	.L22
.L21:
	addq	$16, -8(%rbp)
.L20:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L23
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE280:
	.size	ossl_prov_get_keymgmt_import, .-ossl_prov_get_keymgmt_import
	.globl	ossl_prov_get_keymgmt_export
	.type	ossl_prov_get_keymgmt_export, @function
ossl_prov_get_keymgmt_export:
.LFB281:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L25
.L28:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$42, %eax
	jne	.L26
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_keymgmt_export
	jmp	.L27
.L26:
	addq	$16, -8(%rbp)
.L25:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE281:
	.size	ossl_prov_get_keymgmt_export, .-ossl_prov_get_keymgmt_export
	.globl	ossl_prov_import_key
	.type	ossl_prov_import_key, @function
ossl_prov_import_key:
.LFB282:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_get_keymgmt_new@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_get_keymgmt_free@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_prov_get_keymgmt_import@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L30
	cmpq	$0, -32(%rbp)
	je	.L30
	cmpq	$0, -24(%rbp)
	je	.L30
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L31
	movq	-64(%rbp), %rdx
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %r8
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L30
.L31:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	movq	$0, -8(%rbp)
.L30:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE282:
	.size	ossl_prov_import_key, .-ossl_prov_import_key
	.globl	ossl_prov_free_key
	.type	ossl_prov_free_key, @function
ossl_prov_free_key:
.LFB283:
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
	movq	%rax, %rdi
	call	ossl_prov_get_keymgmt_free@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L35
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
.L35:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE283:
	.size	ossl_prov_free_key, .-ossl_prov_free_key
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/encode_decode/endecoder_common.c"
	.text
	.globl	ossl_read_der
	.type	ossl_read_der, @function
ossl_read_der:
.LFB284:
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
	movq	%rcx, -64(%rbp)
	movq	$0, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_bio_new_from_core_bio@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L40
.L37:
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_d2i_read_bio@PLT
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L39
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L39:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE284:
	.size	ossl_read_der, .-ossl_read_der
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
