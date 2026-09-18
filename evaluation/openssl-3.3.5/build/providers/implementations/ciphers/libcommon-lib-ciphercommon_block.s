	.file	"ciphercommon_block.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB429:
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
.LFE429:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB430:
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
.LFE430:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.globl	ossl_cipher_fillblock
	.type	ossl_cipher_fillblock, @function
ossl_cipher_fillblock:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-40(%rbp), %rax
	negq	%rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L6
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L6:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	andq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	ossl_cipher_fillblock, .-ossl_cipher_fillblock
	.section	.rodata
	.align 8
.LC0:
	.string	"../providers/implementations/ciphers/ciphercommon_block.c"
	.text
	.globl	ossl_cipher_trailingdata
	.type	ossl_cipher_trailingdata, @function
ossl_cipher_trailingdata:
.LFB446:
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
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L11
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L10
.L11:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-8(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	ossl_cipher_trailingdata, .-ossl_cipher_trailingdata
	.globl	ossl_cipher_padblock
	.type	ossl_cipher_padblock, @function
ossl_cipher_padblock:
.LFB447:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movb	%al, -9(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L13
.L14:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-9(%rbp), %eax
	movb	%al, (%rdx)
	addq	$1, -8(%rbp)
.L13:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L14
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	ossl_cipher_padblock, .-ossl_cipher_padblock
	.globl	ossl_cipher_unpadblock
	.type	ossl_cipher_unpadblock, @function
ossl_cipher_unpadblock:
.LFB448:
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
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L16
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L16:
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	cmpq	%rax, -56(%rbp)
	jnb	.L19
.L18:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$107, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L19:
	movq	$0, -8(%rbp)
	jmp	.L20
.L22:
	subq	$1, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpq	%rax, -24(%rbp)
	je	.L21
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$100, %esi
	movl	$57, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L17
.L21:
	addq	$1, -8(%rbp)
.L20:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L22
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	ossl_cipher_unpadblock, .-ossl_cipher_unpadblock
	.globl	ossl_cipher_tlsunpadblock
	.type	ossl_cipher_tlsunpadblock, @function
ossl_cipher_tlsunpadblock:
.LFB449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	cmpl	$65279, -28(%rbp)
	je	.L24
	cmpl	$65279, -28(%rbp)
	ja	.L25
	cmpl	$65277, -28(%rbp)
	je	.L24
	cmpl	$65277, -28(%rbp)
	ja	.L25
	cmpl	$771, -28(%rbp)
	ja	.L25
	cmpl	$770, -28(%rbp)
	jnb	.L24
	cmpl	$769, -28(%rbp)
	je	.L26
	cmpl	$769, -28(%rbp)
	ja	.L25
	cmpl	$256, -28(%rbp)
	je	.L24
	cmpl	$768, -28(%rbp)
	jne	.L25
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %r8
	movq	16(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	pushq	-24(%rbp)
	pushq	24(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ssl3_cbc_remove_padding_and_mac@PLT
	addq	$16, %rsp
	jmp	.L27
.L24:
	movq	-56(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L26:
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %r9
	movq	16(%rbp), %r8
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movl	32(%rbp), %edi
	pushq	%rdi
	pushq	24(%rbp)
	movq	%rax, %rdi
	call	tls1_cbc_remove_padding_and_mac@PLT
	addq	$32, %rsp
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	jmp	.L27
.L25:
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	ossl_cipher_tlsunpadblock, .-ossl_cipher_tlsunpadblock
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 25
__func__.1:
	.string	"ossl_cipher_trailingdata"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 23
__func__.0:
	.string	"ossl_cipher_unpadblock"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
