	.file	"t_spki.c"
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
	.string	"Netscape SPKI:\n"
.LC1:
	.string	"UNKNOWN"
.LC2:
	.string	"  Public Key Algorithm: %s\n"
.LC3:
	.string	"  Unable to load public key\n"
.LC4:
	.string	"  Challenge String: %.*s\n"
.LC5:
	.string	"  Signature Algorithm: %s"
.LC6:
	.string	"\n      "
.LC7:
	.string	""
.LC8:
	.string	":"
.LC9:
	.string	"%02x%s"
.LC10:
	.string	"\n"
	.text
	.globl	NETSCAPE_SPKI_print
	.type	NETSCAPE_SPKI_print, @function
NETSCAPE_SPKI_print:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	X509_PUBKEY_get0_param@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L6
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	jmp	.L7
.L6:
	leaq	.LC1(%rip), %rax
.L7:
	leaq	.LC2(%rip), %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_PUBKEY_get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L8
	leaq	.LC3(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L9
.L8:
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	EVP_PKEY_print_public@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
.L9:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L10
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	leaq	.LC4(%rip), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L10:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L11
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	jmp	.L12
.L11:
	leaq	.LC1(%rip), %rax
.L12:
	leaq	.LC5(%rip), %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L13
.L17:
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$954437177, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L14
	leaq	.LC6(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
.L14:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -28(%rbp)
	jne	.L15
	leaq	.LC7(%rip), %rax
	jmp	.L16
.L15:
	leaq	.LC8(%rip), %rax
.L16:
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	leaq	.LC9(%rip), %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -4(%rbp)
.L13:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L17
	leaq	.LC10(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	NETSCAPE_SPKI_print, .-NETSCAPE_SPKI_print
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
