	.file	"x509type.c"
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
	.globl	X509_certificate_type
	.type	X509_certificate_type, @function
X509_certificate_type:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L25
.L6:
	cmpq	$0, -32(%rbp)
	jne	.L8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get0_pubkey@PLT
	movq	%rax, -8(%rbp)
	jmp	.L9
.L8:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L9:
	cmpq	$0, -8(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L25
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get_id@PLT
	cmpl	$1088, %eax
	jg	.L26
	cmpl	$1087, %eax
	jge	.L12
	cmpl	$980, %eax
	jg	.L26
	cmpl	$979, %eax
	jge	.L13
	cmpl	$912, %eax
	je	.L14
	cmpl	$912, %eax
	jg	.L26
	cmpl	$811, %eax
	je	.L13
	cmpl	$811, %eax
	jg	.L26
	cmpl	$408, %eax
	je	.L15
	cmpl	$408, %eax
	jg	.L26
	cmpl	$116, %eax
	je	.L16
	cmpl	$116, %eax
	jg	.L26
	cmpl	$6, %eax
	je	.L17
	cmpl	$28, %eax
	je	.L18
	jmp	.L26
.L17:
	movl	$17, -12(%rbp)
	orl	$32, -12(%rbp)
	jmp	.L19
.L14:
	movl	$17, -12(%rbp)
	jmp	.L19
.L16:
	movl	$18, -12(%rbp)
	jmp	.L19
.L15:
	movl	$88, -12(%rbp)
	jmp	.L19
.L12:
	movl	$16, -12(%rbp)
	jmp	.L19
.L18:
	movl	$68, -12(%rbp)
	jmp	.L19
.L13:
	movl	$80, -12(%rbp)
	jmp	.L19
.L26:
	nop
.L19:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_signature_nid@PLT
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.L20
	movl	-16(%rbp), %eax
	leaq	-16(%rbp), %rdx
	movl	$0, %esi
	movl	%eax, %edi
	call	OBJ_find_sigid_algs@PLT
	testl	%eax, %eax
	je	.L20
	movl	-16(%rbp), %eax
	cmpl	$408, %eax
	je	.L21
	cmpl	$408, %eax
	jg	.L27
	cmpl	$116, %eax
	je	.L23
	cmpl	$116, %eax
	jg	.L27
	cmpl	$67, %eax
	je	.L23
	cmpl	$67, %eax
	jg	.L27
	cmpl	$6, %eax
	je	.L24
	cmpl	$19, %eax
	jne	.L27
.L24:
	orl	$256, -12(%rbp)
	jmp	.L20
.L23:
	orl	$512, -12(%rbp)
	jmp	.L20
.L21:
	orl	$1024, -12(%rbp)
	jmp	.L20
.L27:
	nop
.L20:
	movl	-12(%rbp), %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	X509_certificate_type, .-X509_certificate_type
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
