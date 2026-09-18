	.file	"rsa_x931.c"
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
	.string	"../crypto/rsa/rsa_x931.c"
	.text
	.globl	RSA_padding_add_X931
	.type	RSA_padding_add_X931, @function
RSA_padding_add_X931:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L6
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$110, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L7
.L6:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L8
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$106, (%rax)
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$107, (%rax)
	cmpl	$1, -12(%rbp)
	jle	.L10
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-12(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rax, -8(%rbp)
.L10:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$-70, (%rax)
.L9:
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$-52, (%rax)
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	RSA_padding_add_X931, .-RSA_padding_add_X931
	.globl	RSA_padding_check_X931
	.type	RSA_padding_check_X931, @function
RSA_padding_check_X931:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -60(%rbp)
	movl	$0, -4(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.L12
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$106, %al
	je	.L13
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$107, %al
	je	.L13
.L12:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$67, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$137, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L14
.L13:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	cmpb	$107, %al
	jne	.L15
	movl	-48(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L16
.L20:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	cmpb	$-70, -17(%rbp)
	je	.L23
	cmpb	$-69, -17(%rbp)
	je	.L19
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$78, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L14
.L19:
	addl	$1, -4(%rbp)
.L16:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L20
	jmp	.L18
.L23:
	nop
.L18:
	movl	-4(%rbp), %eax
	subl	%eax, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L21
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$86, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$138, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L14
.L15:
	movl	-48(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -8(%rbp)
.L21:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$-52, %al
	je	.L22
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$95, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$139, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L14
.L22:
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-8(%rbp), %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	RSA_padding_check_X931, .-RSA_padding_check_X931
	.globl	RSA_X931_hash_id
	.type	RSA_X931_hash_id, @function
RSA_X931_hash_id:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$674, -4(%rbp)
	je	.L25
	cmpl	$674, -4(%rbp)
	jg	.L26
	cmpl	$673, -4(%rbp)
	je	.L27
	cmpl	$673, -4(%rbp)
	jg	.L26
	cmpl	$64, -4(%rbp)
	je	.L28
	cmpl	$672, -4(%rbp)
	je	.L29
	jmp	.L26
.L28:
	movl	$51, %eax
	jmp	.L30
.L29:
	movl	$52, %eax
	jmp	.L30
.L27:
	movl	$54, %eax
	jmp	.L30
.L25:
	movl	$53, %eax
	jmp	.L30
.L26:
	movl	$-1, %eax
.L30:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	RSA_X931_hash_id, .-RSA_X931_hash_id
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 21
__func__.1:
	.string	"RSA_padding_add_X931"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"RSA_padding_check_X931"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
