	.file	"bf_prefix.c"
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
	.string	"prefix"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	prefix_meth, @object
	.size	prefix_meth, 112
prefix_meth:
	.long	521
	.zero	4
	.quad	.LC0
	.quad	prefix_write
	.quad	0
	.quad	prefix_read
	.quad	0
	.quad	prefix_puts
	.quad	prefix_gets
	.quad	prefix_ctrl
	.quad	prefix_create
	.quad	prefix_destroy
	.quad	prefix_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_prefix
	.type	BIO_f_prefix, @function
BIO_f_prefix:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	prefix_meth(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_f_prefix, .-BIO_f_prefix
	.section	.rodata
.LC1:
	.string	"../crypto/bio/bf_prefix.c"
	.text
	.type	prefix_create, @function
prefix_create:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$54, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	prefix_create, .-prefix_create
	.type	prefix_destroy, @function
prefix_destroy:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$71, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$72, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	prefix_destroy, .-prefix_destroy
	.type	prefix_read, @function
prefix_read:
.LFB168:
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	BIO_read_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	prefix_read, .-prefix_read
	.section	.rodata
.LC2:
	.string	""
.LC3:
	.string	"%*s"
	.text
	.type	prefix_write, @function
prefix_write:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L18
.L17:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L18
	cmpq	$0, -88(%rbp)
	je	.L19
	movq	-88(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 12(%rax)
.L19:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	call	BIO_write_ex@PLT
	jmp	.L16
.L18:
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L20
.L30:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L21
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %r12
	movq	-40(%rbp), %rax
	movq	(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, %rdi
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	BIO_write_ex@PLT
	testl	%eax, %eax
	jne	.L22
	movl	$0, %eax
	jmp	.L16
.L22:
	movq	-40(%rbp), %rax
	movl	8(%rax), %ebx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, %rdi
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdx, %rcx
	movl	%ebx, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-40(%rbp), %rax
	movl	$0, 12(%rax)
.L21:
	movq	$0, -24(%rbp)
	movb	$0, -25(%rbp)
	jmp	.L23
.L32:
	nop
	addq	$1, -24(%rbp)
.L23:
	movq	-24(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jnb	.L24
	movq	-80(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	cmpb	$10, -25(%rbp)
	jne	.L32
.L24:
	cmpb	$10, -25(%rbp)
	jne	.L27
	addq	$1, -24(%rbp)
	jmp	.L27
.L29:
	movq	$0, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, %rdi
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	call	BIO_write_ex@PLT
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L16
.L28:
	movq	-56(%rbp), %rax
	addq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	subq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	subq	%rax, -24(%rbp)
.L27:
	cmpq	$0, -24(%rbp)
	jne	.L29
	cmpb	$10, -25(%rbp)
	jne	.L20
	movq	-40(%rbp), %rax
	movl	$1, 12(%rax)
.L20:
	cmpq	$0, -88(%rbp)
	jne	.L30
	movl	$1, %eax
.L16:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	prefix_write, .-prefix_write
	.type	prefix_ctrl, @function
prefix_ctrl:
.LFB170:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L34
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L35
.L34:
	movq	$-1, %rax
	jmp	.L36
.L35:
	cmpl	$81, -28(%rbp)
	je	.L37
	cmpl	$81, -28(%rbp)
	jg	.L38
	cmpl	$79, -28(%rbp)
	je	.L39
	cmpl	$80, -28(%rbp)
	je	.L40
	jmp	.L38
.L39:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$161, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -48(%rbp)
	jne	.L41
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	$1, -8(%rbp)
	jmp	.L43
.L41:
	leaq	.LC1(%rip), %rcx
	movq	-48(%rbp), %rax
	movl	$166, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	jmp	.L43
.L40:
	cmpq	$0, -40(%rbp)
	js	.L48
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	$1, -8(%rbp)
	jmp	.L48
.L37:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	jmp	.L43
.L38:
	cmpl	$1, -28(%rbp)
	je	.L45
	cmpl	$128, -28(%rbp)
	jne	.L46
.L45:
	movq	-16(%rbp), %rax
	movl	$1, 12(%rax)
	nop
.L46:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	testq	%rax, %rax
	je	.L49
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	jmp	.L49
.L48:
	nop
	jmp	.L43
.L49:
	nop
.L43:
	movq	-8(%rbp), %rax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	prefix_ctrl, .-prefix_ctrl
	.type	prefix_callback_ctrl, @function
prefix_callback_ctrl:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	BIO_callback_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	prefix_callback_ctrl, .-prefix_callback_ctrl
	.type	prefix_gets, @function
prefix_gets:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_next@PLT
	movq	%rax, %rcx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	BIO_gets@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	prefix_gets, .-prefix_gets
	.type	prefix_puts, @function
prefix_puts:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	prefix_puts, .-prefix_puts
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
