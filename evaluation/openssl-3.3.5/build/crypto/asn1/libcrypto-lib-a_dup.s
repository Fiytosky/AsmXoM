	.file	"a_dup.c"
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
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/a_dup.c"
	.text
	.globl	ASN1_dup
	.type	ASN1_dup, @function
ASN1_dup:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L10
.L6:
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L8
	movl	$0, %eax
	jmp	.L10
.L8:
	movl	-4(%rbp), %eax
	addl	$10, %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$30, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -24(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$37, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	ASN1_dup, .-ASN1_dup
	.section	.rodata
.LC1:
	.string	"Type=%s"
	.text
	.globl	ASN1_item_dup
	.type	ASN1_item_dup, @function
ASN1_item_dup:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jne	.L12
	movl	$0, %eax
	jmp	.L22
.L12:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	je	.L14
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	je	.L14
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	jne	.L15
.L14:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L16
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L15
.L16:
	movq	$0, -8(%rbp)
.L15:
	cmpq	$0, -8(%rbp)
	je	.L17
	movq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	-8(%rbp), %r8
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$14, %edi
	call	*%r8
	testl	%eax, %eax
	je	.L23
	leaq	-56(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	-8(%rbp), %r8
	movq	%rax, %rsi
	movl	$16, %edi
	call	*%r8
	testl	%eax, %eax
	je	.L23
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	-8(%rbp), %r8
	movq	%rax, %rsi
	movl	$17, %edi
	call	*%r8
	testl	%eax, %eax
	je	.L23
.L17:
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	cltq
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L20
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524301, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L22
.L20:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_item_d2i_ex@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movl	$84, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -8(%rbp)
	je	.L21
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	-8(%rbp), %r8
	movq	%rax, %rsi
	movl	$15, %edi
	call	*%r8
	testl	%eax, %eax
	je	.L24
.L21:
	movq	-48(%rbp), %rax
	jmp	.L22
.L23:
	nop
	jmp	.L19
.L24:
	nop
.L19:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$93, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	movl	$100, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	ASN1_item_dup, .-ASN1_item_dup
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"ASN1_item_dup"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
