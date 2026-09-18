	.file	"t_pkey.c"
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
	.string	"\n"
.LC1:
	.string	""
.LC2:
	.string	":"
.LC3:
	.string	"%02x%s"
	.text
	.globl	ASN1_buf_print
	.type	ASN1_buf_print, @function
ASN1_buf_print:
.LFB160:
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
	movq	$0, -8(%rbp)
	jmp	.L6
.L13:
	movq	-8(%rbp), %rcx
	movabsq	$-8608480567731124087, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	testq	%rax, %rax
	jne	.L7
	cmpq	$0, -8(%rbp)
	je	.L8
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jg	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	-44(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L9
.L7:
	movq	-40(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, -8(%rbp)
	jne	.L10
	leaq	.LC1(%rip), %rax
	jmp	.L11
.L10:
	leaq	.LC2(%rip), %rax
.L11:
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	leaq	.LC3(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L12
	movl	$0, %eax
	jmp	.L9
.L12:
	addq	$1, -8(%rbp)
.L6:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L13
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L14
	movl	$0, %eax
	jmp	.L9
.L14:
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	ASN1_buf_print, .-ASN1_buf_print
	.section	.rodata
.LC4:
	.string	"-"
.LC5:
	.string	"%s 0\n"
.LC6:
	.string	"%s %s%lu (%s0x%lx)\n"
.LC7:
	.string	"../crypto/asn1/t_pkey.c"
.LC8:
	.string	" (Negative)"
.LC9:
	.string	"%s%s\n"
	.text
	.globl	ASN1_bn_print
	.type	ASN1_bn_print, @function
ASN1_bn_print:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	%r8d, -100(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L16
	movl	$1, %eax
	jmp	.L17
.L16:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_negative@PLT
	testl	%eax, %eax
	je	.L18
	leaq	.LC4(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L19
.L18:
	leaq	.LC1(%rip), %rax
	movq	%rax, -32(%rbp)
.L19:
	movl	-100(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	$128, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_indent@PLT
	testl	%eax, %eax
	jne	.L20
	movl	$0, %eax
	jmp	.L17
.L20:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_is_zero@PLT
	testl	%eax, %eax
	je	.L21
	movq	-80(%rbp), %rdx
	leaq	.LC5(%rip), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jg	.L22
	movl	$0, %eax
	jmp	.L17
.L22:
	movl	$1, %eax
	jmp	.L17
.L21:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	cmpl	$64, %eax
	jg	.L23
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	bn_get_words@PLT
	movq	(%rax), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	bn_get_words@PLT
	movq	(%rax), %rdi
	movq	-32(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L24
	movl	$0, %eax
	jmp	.L17
.L24:
	movl	$1, %eax
	jmp	.L17
.L23:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_num_bits@PLT
	addl	$7, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	.LC7(%rip), %rcx
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L33
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L27
	leaq	.LC8(%rip), %rax
	jmp	.L28
.L27:
	leaq	.LC1(%rip), %rax
.L28:
	movq	-80(%rbp), %rdx
	leaq	.LC9(%rip), %rsi
	movq	-72(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L34
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_bn2bin@PLT
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L30
	addl	$1, -20(%rbp)
	jmp	.L31
.L30:
	addq	$1, -40(%rbp)
.L31:
	movl	-100(%rbp), %eax
	leal	4(%rax), %ecx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_buf_print@PLT
	testl	%eax, %eax
	je	.L35
	movl	$1, -24(%rbp)
	jmp	.L26
.L33:
	nop
	jmp	.L26
.L34:
	nop
	jmp	.L26
.L35:
	nop
.L26:
	movl	-52(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC7(%rip), %rdx
	movq	-48(%rbp), %rax
	movl	$91, %ecx
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	-24(%rbp), %eax
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ASN1_bn_print, .-ASN1_bn_print
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
