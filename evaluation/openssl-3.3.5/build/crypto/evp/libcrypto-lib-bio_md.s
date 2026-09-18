	.file	"bio_md.c"
	.text
	.section	.rodata
.LC0:
	.string	"message digest"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_md, @object
	.size	methods_md, 112
methods_md:
	.long	520
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	md_write
	.quad	bread_conv
	.quad	md_read
	.quad	0
	.quad	md_gets
	.quad	md_ctrl
	.quad	md_new
	.quad	md_free
	.quad	md_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_md
	.type	BIO_f_md, @function
BIO_f_md:
.LFB320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_md(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE320:
	.size	BIO_f_md, .-BIO_f_md
	.type	md_new, @function
md_new:
.LFB321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movl	$1, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE321:
	.size	md_new, .-md_new
	.type	md_free, @function
md_free:
.LFB322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE322:
	.size	md_free, .-md_free
	.type	md_read, @function
md_read:
.LFB323:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L11
.L10:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L12
	cmpq	$0, -24(%rbp)
	jne	.L13
.L12:
	movl	$0, %eax
	jmp	.L11
.L13:
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_init@PLT
	testl	%eax, %eax
	je	.L14
	cmpl	$0, -4(%rbp)
	jle	.L14
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jg	.L14
	movl	$-1, %eax
	jmp	.L11
.L14:
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-4(%rbp), %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE323:
	.size	md_read, .-md_read
	.type	md_write, @function
md_write:
.LFB324:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L16
	cmpl	$0, -52(%rbp)
	jg	.L17
.L16:
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L19
	cmpq	$0, -24(%rbp)
	je	.L19
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -4(%rbp)
.L19:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_init@PLT
	testl	%eax, %eax
	je	.L20
	cmpl	$0, -4(%rbp)
	jle	.L20
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	jne	.L20
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movl	$0, %eax
	jmp	.L18
.L20:
	cmpq	$0, -24(%rbp)
	je	.L21
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
.L21:
	movl	-4(%rbp), %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE324:
	.size	md_write, .-md_write
	.type	md_ctrl, @function
md_ctrl:
.LFB325:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	$1, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -24(%rbp)
	cmpl	$148, -76(%rbp)
	je	.L23
	cmpl	$148, -76(%rbp)
	jg	.L24
	cmpl	$120, -76(%rbp)
	je	.L25
	cmpl	$120, -76(%rbp)
	jg	.L24
	cmpl	$112, -76(%rbp)
	je	.L26
	cmpl	$112, -76(%rbp)
	jg	.L24
	cmpl	$111, -76(%rbp)
	je	.L27
	cmpl	$111, -76(%rbp)
	jg	.L24
	cmpl	$101, -76(%rbp)
	je	.L28
	cmpl	$101, -76(%rbp)
	jg	.L24
	cmpl	$1, -76(%rbp)
	je	.L29
	cmpl	$12, -76(%rbp)
	je	.L30
	jmp	.L24
.L29:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_init@PLT
	testl	%eax, %eax
	je	.L31
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L32
.L31:
	movq	$0, -8(%rbp)
.L32:
	cmpq	$0, -8(%rbp)
	jle	.L42
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L42
.L26:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_init@PLT
	testl	%eax, %eax
	je	.L35
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L34
.L35:
	movq	$0, -8(%rbp)
	jmp	.L34
.L25:
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	jmp	.L34
.L23:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_init@PLT
	testl	%eax, %eax
	je	.L37
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	jmp	.L34
.L37:
	movq	$0, -8(%rbp)
	jmp	.L34
.L28:
	movq	-72(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L34
.L27:
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L43
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	jmp	.L43
.L30:
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_CTX_copy_ex@PLT
	testl	%eax, %eax
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	jmp	.L34
.L24:
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L34
.L42:
	nop
	jmp	.L34
.L43:
	nop
.L34:
	movq	-8(%rbp), %rax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE325:
	.size	md_ctrl, .-md_ctrl
	.type	md_callback_ctrl, @function
md_callback_ctrl:
.LFB326:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_callback_ctrl@PLT
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE326:
	.size	md_callback_ctrl, .-md_callback_ctrl
	.type	md_gets, @function
md_gets:
.LFB327:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_get0_md@PLT
	movq	%rax, %rdi
	call	EVP_MD_get_size@PLT
	cmpl	%eax, -36(%rbp)
	jge	.L48
	movl	$0, %eax
	jmp	.L51
.L48:
	leaq	-12(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal_ex@PLT
	testl	%eax, %eax
	jg	.L50
	movl	$-1, %eax
	jmp	.L51
.L50:
	movl	-12(%rbp), %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE327:
	.size	md_gets, .-md_gets
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
