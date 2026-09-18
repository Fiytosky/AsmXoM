	.file	"pk7_mime.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
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
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
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
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	i2d_PKCS7_bio_stream
	.type	i2d_PKCS7_bio_stream, @function
i2d_PKCS7_bio_stream:
.LFB509:
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
	call	PKCS7_it@PLT
	movq	%rax, %rdi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	i2d_ASN1_bio_stream@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	i2d_PKCS7_bio_stream, .-i2d_PKCS7_bio_stream
	.section	.rodata
.LC0:
	.string	"PKCS7"
	.text
	.globl	PEM_write_bio_PKCS7_stream
	.type	PEM_write_bio_PKCS7_stream, @function
PEM_write_bio_PKCS7_stream:
.LFB510:
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
	call	PKCS7_it@PLT
	movq	%rax, %rdi
	leaq	.LC0(%rip), %r8
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, %r9
	movq	%rax, %rdi
	call	PEM_write_bio_ASN1_stream@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	PEM_write_bio_PKCS7_stream, .-PEM_write_bio_PKCS7_stream
	.globl	SMIME_write_PKCS7
	.type	SMIME_write_PKCS7, @function
SMIME_write_PKCS7:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_get0_ctx@PLT
	movq	%rax, -40(%rbp)
	cmpl	$22, -28(%rbp)
	jne	.L10
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L13
.L10:
	movq	$0, -24(%rbp)
.L13:
	xorl	$1024, -76(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_propq@PLT
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_ctx_get0_libctx@PLT
	movq	%rax, %rbx
	call	PKCS7_it@PLT
	movq	%rax, %rdi
	movl	-28(%rbp), %r8d
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	pushq	%r12
	pushq	%rbx
	pushq	%rdi
	pushq	-24(%rbp)
	movl	$0, %r9d
	movq	%rax, %rdi
	call	SMIME_write_ASN1_ex@PLT
	addq	$32, %rsp
.L12:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	SMIME_write_PKCS7, .-SMIME_write_PKCS7
	.globl	SMIME_read_PKCS7_ex
	.type	SMIME_read_PKCS7_ex, @function
SMIME_read_PKCS7_ex:
.LFB512:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L15
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
.L15:
	call	PKCS7_it@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	SMIME_read_ASN1_ex@PLT
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L16
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_pkcs7_resolve_libctx@PLT
.L16:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	SMIME_read_PKCS7_ex, .-SMIME_read_PKCS7_ex
	.globl	SMIME_read_PKCS7
	.type	SMIME_read_PKCS7, @function
SMIME_read_PKCS7:
.LFB513:
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
	call	SMIME_read_PKCS7_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	SMIME_read_PKCS7, .-SMIME_read_PKCS7
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
