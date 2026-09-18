	.file	"str2key.c"
	.text
	.globl	DES_string_to_key
	.type	DES_string_to_key, @function
DES_string_to_key:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2
.L5:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %ebx
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%eax, %edx
	andl	$15, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$7, %eax
	jg	.L3
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %ecx
	movq	-176(%rbp), %rdx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	addl	%eax, %eax
	xorl	%edx, %eax
	movl	%eax, %esi
	movq	-176(%rbp), %rdx
	movslq	%ecx, %rax
	movb	%sil, (%rdx,%rax)
	jmp	.L4
.L3:
	movl	%ebx, %eax
	sall	$4, %eax
	shrb	$4, %bl
	movl	%ebx, %edx
	orl	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	sall	$2, %eax
	andl	$-52, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	shrb	$2, %al
	andl	$51, %eax
	orl	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	addl	%eax, %eax
	andl	$-86, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	shrb	%al
	andl	$85, %eax
	orl	%edx, %eax
	movl	%eax, %ebx
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$7, %edx
	subl	%eax, %edx
	movq	-176(%rbp), %rcx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edx
	movl	$7, %ecx
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%ebx, %ecx
	xorl	%edx, %ecx
	movq	-176(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, (%rdx,%rax)
.L4:
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L5
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	leaq	-160(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	movq	-176(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	DES_cbc_cksum@PLT
	leaq	-160(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	DES_string_to_key, .-DES_string_to_key
	.globl	DES_string_to_2keys
	.type	DES_string_to_2keys, @function
DES_string_to_2keys:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-176(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-184(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -24(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L7
.L12:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-168(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %ebx
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$27, %eax
	addl	%eax, %edx
	andl	$31, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$15, %eax
	jg	.L8
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%eax, %edx
	andl	$15, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$7, %eax
	jg	.L9
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %ecx
	movq	-176(%rbp), %rdx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	addl	%eax, %eax
	xorl	%edx, %eax
	movl	%eax, %esi
	movq	-176(%rbp), %rdx
	movslq	%ecx, %rax
	movb	%sil, (%rdx,%rax)
	jmp	.L10
.L9:
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %ecx
	movq	-184(%rbp), %rdx
	movslq	%ecx, %rax
	movzbl	(%rdx,%rax), %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	addl	%eax, %eax
	xorl	%edx, %eax
	movl	%eax, %esi
	movq	-184(%rbp), %rdx
	movslq	%ecx, %rax
	movb	%sil, (%rdx,%rax)
	jmp	.L10
.L8:
	movl	%ebx, %eax
	sall	$4, %eax
	shrb	$4, %bl
	movl	%ebx, %edx
	orl	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	sall	$2, %eax
	andl	$-52, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	shrb	$2, %al
	andl	$51, %eax
	orl	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	addl	%eax, %eax
	andl	$-86, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	shrb	%al
	andl	$85, %eax
	orl	%edx, %eax
	movl	%eax, %ebx
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%eax, %edx
	andl	$15, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$7, %eax
	jg	.L11
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$7, %edx
	subl	%eax, %edx
	movq	-176(%rbp), %rcx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edx
	movl	$7, %ecx
	movl	%ecx, %esi
	subl	%eax, %esi
	xorl	%edx, %ebx
	movl	%ebx, %ecx
	movq	-176(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, (%rdx,%rax)
	jmp	.L10
.L11:
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$7, %edx
	subl	%eax, %edx
	movq	-184(%rbp), %rcx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edx
	movl	$7, %ecx
	movl	%ecx, %esi
	subl	%eax, %esi
	xorl	%edx, %ebx
	movl	%ebx, %ecx
	movq	-184(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, (%rdx,%rax)
.L10:
	addl	$1, -20(%rbp)
.L7:
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L12
	cmpl	$8, -24(%rbp)
	jg	.L13
	movq	-176(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, (%rax)
.L13:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	leaq	-160(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-176(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	movq	-176(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	DES_cbc_cksum@PLT
	leaq	-160(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	DES_set_key_unchecked@PLT
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-184(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	movq	-184(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	DES_cbc_cksum@PLT
	leaq	-160(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	DES_set_odd_parity@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	DES_string_to_2keys, .-DES_string_to_2keys
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
