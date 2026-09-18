	.file	"tls_multib.c"
	.text
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB600:
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
.LFE600:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB601:
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
.LFE601:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB616:
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
.LFE616:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB617:
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
.LFE617:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB693:
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
.LFE693:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB694:
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
.LFE694:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	tls_is_multiblock_capable, @function
tls_is_multiblock_capable:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	%al, -12(%rbp)
	cmpb	$23, -12(%rbp)
	jne	.L14
	movq	-32(%rbp), %rax
	salq	$2, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L14
	movq	-8(%rbp), %rax
	movq	4152(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movq	-8(%rbp), %rax
	movq	4376(%rax), %rax
	testq	%rax, %rax
	jne	.L14
	movq	-8(%rbp), %rax
	movl	4256(%rax), %eax
	testl	%eax, %eax
	jne	.L14
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$770, %eax
	je	.L15
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$771, %eax
	je	.L15
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$256, %eax
	je	.L15
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65279, %eax
	je	.L15
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$65277, %eax
	jne	.L14
.L15:
	movq	-8(%rbp), %rax
	movq	4128(%rax), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_get0_cipher@PLT
	movq	%rax, %rdi
	call	EVP_CIPHER_get_flags@PLT
	andl	$4194304, %eax
	testq	%rax, %rax
	je	.L14
	movl	$1, %eax
	jmp	.L16
.L14:
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	tls_is_multiblock_capable, .-tls_is_multiblock_capable
	.globl	tls_get_max_records_multiblock
	.type	tls_get_max_records_multiblock, @function
tls_get_max_records_multiblock:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movb	%al, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movzbl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	tls_is_multiblock_capable
	testl	%eax, %eax
	je	.L18
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	andl	$4095, %eax
	testq	%rax, %rax
	jne	.L19
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-512(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L19:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L20
	movl	$8, %eax
	jmp	.L21
.L20:
	movl	$4, %eax
	jmp	.L21
.L18:
	movzbl	-12(%rbp), %esi
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	tls_get_max_records_default@PLT
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	tls_get_max_records_multiblock, .-tls_get_max_records_multiblock
	.section	.rodata
	.align 8
.LC0:
	.string	"../ssl/record/methods/tls_multib.c"
	.text
	.type	tls_write_records_multiblock_int, @function
tls_write_records_multiblock_int:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	cmpq	$4, -120(%rbp)
	je	.L23
	cmpq	$8, -120(%rbp)
	je	.L23
	movl	$0, %eax
	jmp	.L36
.L23:
	movq	$1, -8(%rbp)
	jmp	.L25
.L28:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-24(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %cl
	jne	.L26
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-24(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rcx
	jne	.L26
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-24(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-24(%rax), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rcx
	je	.L27
.L26:
	movl	$0, %eax
	jmp	.L36
.L27:
	addq	$1, -8(%rbp)
.L25:
	movq	-8(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jb	.L28
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	-120(%rbp), %rdx
	imulq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	tls_is_multiblock_capable
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L36
.L29:
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movq	4128(%rax), %rax
	movl	$0, %ecx
	movl	$28, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	cltq
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	imulq	-120(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	tls_setup_write_buffer@PLT
	testl	%eax, %eax
	jne	.L30
	movl	$-1, %eax
	jmp	.L36
.L30:
	movq	-104(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	movl	%eax, -72(%rbp)
	movq	-104(%rbp), %rax
	addq	$4096, %rax
	movq	(%rax), %rax
	movq	%rax, -57(%rbp)
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -49(%rbp)
	movq	-112(%rbp), %rax
	movl	4(%rax), %eax
	shrl	$8, %eax
	movb	%al, -48(%rbp)
	movq	-112(%rbp), %rax
	movl	4(%rax), %eax
	movb	%al, -47(%rbp)
	movb	$0, -46(%rbp)
	movb	$0, -45(%rbp)
	movq	$0, -96(%rbp)
	leaq	-57(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	4128(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$25, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, -32(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.L31
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L32
.L31:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$137, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-1, %eax
	jmp	.L36
.L32:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	4128(%rax), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$32, %edx
	movl	$26, %esi
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_ctrl@PLT
	testl	%eax, %eax
	jg	.L33
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$148, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-104(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_rlayer_fatal@PLT
	movl	$-1, %eax
	jmp	.L36
.L33:
	movq	-104(%rbp), %rax
	movzbl	4103(%rax), %eax
	movl	-72(%rbp), %edx
	addl	%eax, %edx
	movq	-104(%rbp), %rax
	movb	%dl, 4103(%rax)
	movq	-104(%rbp), %rax
	movzbl	4103(%rax), %eax
	movzbl	%al, %edx
	movl	-72(%rbp), %eax
	cmpl	%eax, %edx
	jnb	.L34
	movl	$6, -12(%rbp)
	nop
.L35:
	cmpl	$0, -12(%rbp)
	js	.L34
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	movzbl	4096(%rcx,%rdx), %edx
	leal	1(%rdx), %esi
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	movb	%sil, 4096(%rcx,%rdx)
	movq	-104(%rbp), %rdx
	cltq
	movzbl	4096(%rdx,%rax), %eax
	testb	%al, %al
	je	.L35
.L34:
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	tls_write_records_multiblock_int, .-tls_write_records_multiblock_int
	.globl	tls_write_records_multiblock
	.type	tls_write_records_multiblock, @function
tls_write_records_multiblock:
.LFB732:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_write_records_multiblock_int
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	cmpl	$0, -4(%rbp)
	jne	.L40
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_write_records_default@PLT
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L39
.L40:
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	tls_write_records_multiblock, .-tls_write_records_multiblock
	.section	.rodata
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 33
__func__.0:
	.string	"tls_write_records_multiblock_int"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
