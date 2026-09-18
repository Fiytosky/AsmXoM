	.file	"bss_fd.c"
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
	.string	"file descriptor"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_fdp, @object
	.size	methods_fdp, 112
methods_fdp:
	.long	1284
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	fd_write
	.quad	bread_conv
	.quad	fd_read
	.quad	fd_puts
	.quad	fd_gets
	.quad	fd_ctrl
	.quad	fd_new
	.quad	fd_free
	.quad	0
	.zero	16
	.text
	.globl	BIO_s_fd
	.type	BIO_s_fd, @function
BIO_s_fd:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_fdp(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_s_fd, .-BIO_s_fd
	.globl	BIO_new_fd
	.type	BIO_new_fd, @function
BIO_new_fd:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	call	BIO_s_fd@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	BIO_int_ctrl@PLT
	movq	-8(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BIO_new_fd, .-BIO_new_fd
	.type	fd_new, @function
fd_new:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	fd_new, .-fd_new
	.type	fd_free, @function
fd_free:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	je	.L15
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L16
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
.L16:
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
.L15:
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	fd_free, .-fd_free
	.type	fd_read, @function
fd_read:
.LFB169:
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
	movl	$0, -4(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L18
	call	__errno_location@PLT
	movl	$0, (%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	cmpl	$0, -4(%rbp)
	jg	.L18
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_fd_should_retry@PLT
	testl	%eax, %eax
	je	.L19
	movq	-24(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L18
.L19:
	cmpl	$0, -4(%rbp)
	jne	.L18
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	orb	$8, %ah
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 48(%rax)
.L18:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	fd_read, .-fd_read
	.type	fd_write, @function
fd_write:
.LFB170:
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
	call	__errno_location@PLT
	movl	$0, (%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	cmpl	$0, -4(%rbp)
	jg	.L22
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_fd_should_retry@PLT
	testl	%eax, %eax
	je	.L22
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
.L22:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	fd_write, .-fd_write
	.type	fd_ctrl, @function
fd_ctrl:
.LFB171:
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
	movq	$1, -8(%rbp)
	cmpl	$133, -28(%rbp)
	je	.L25
	cmpl	$133, -28(%rbp)
	jg	.L26
	cmpl	$128, -28(%rbp)
	je	.L27
	cmpl	$128, -28(%rbp)
	jg	.L26
	cmpl	$105, -28(%rbp)
	je	.L28
	cmpl	$105, -28(%rbp)
	jg	.L26
	cmpl	$104, -28(%rbp)
	je	.L29
	cmpl	$104, -28(%rbp)
	jg	.L26
	cmpl	$13, -28(%rbp)
	je	.L30
	cmpl	$13, -28(%rbp)
	jg	.L26
	cmpl	$12, -28(%rbp)
	jg	.L26
	cmpl	$11, -28(%rbp)
	jge	.L31
	cmpl	$10, -28(%rbp)
	je	.L30
	cmpl	$10, -28(%rbp)
	jg	.L26
	cmpl	$9, -28(%rbp)
	je	.L32
	cmpl	$9, -28(%rbp)
	jg	.L26
	cmpl	$8, -28(%rbp)
	je	.L33
	cmpl	$8, -28(%rbp)
	jg	.L26
	cmpl	$3, -28(%rbp)
	je	.L25
	cmpl	$3, -28(%rbp)
	jg	.L26
	cmpl	$1, -28(%rbp)
	je	.L34
	cmpl	$2, -28(%rbp)
	je	.L35
	jmp	.L26
.L34:
	movq	$0, -40(%rbp)
.L27:
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movq	-40(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -8(%rbp)
	jmp	.L36
.L25:
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	lseek@PLT
	movq	%rax, -8(%rbp)
	jmp	.L36
.L29:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fd_free
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.L36
.L28:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L37
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L38
	movq	-24(%rbp), %rax
	movl	56(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L38:
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L36
.L37:
	movq	$-1, -8(%rbp)
	jmp	.L36
.L33:
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L36
.L32:
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
	jmp	.L36
.L30:
	movq	$0, -8(%rbp)
	jmp	.L36
.L31:
	movq	$1, -8(%rbp)
	jmp	.L36
.L35:
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	andl	$2048, %eax
	shrl	$11, %eax
	andl	$1, %eax
	movzbl	%al, %eax
	movq	%rax, -8(%rbp)
	jmp	.L36
.L26:
	movq	$0, -8(%rbp)
	nop
.L36:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	fd_ctrl, .-fd_ctrl
	.type	fd_puts, @function
fd_puts:
.LFB172:
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
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fd_write
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	fd_puts, .-fd_puts
	.type	fd_gets, @function
fd_gets:
.LFB173:
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
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L44
.L46:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L49
.L44:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L45
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fd_read
	testl	%eax, %eax
	jg	.L46
	jmp	.L45
.L49:
	nop
.L45:
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L47
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
.L47:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	fd_gets, .-fd_gets
	.globl	BIO_fd_should_retry
	.type	BIO_fd_should_retry, @function
BIO_fd_should_retry:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L51
	cmpl	$-1, -20(%rbp)
	jne	.L52
.L51:
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	BIO_fd_non_fatal_error@PLT
	jmp	.L53
.L52:
	movl	$0, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	BIO_fd_should_retry, .-BIO_fd_should_retry
	.globl	BIO_fd_non_fatal_error
	.type	BIO_fd_non_fatal_error, @function
BIO_fd_non_fatal_error:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$115, -4(%rbp)
	jg	.L59
	cmpl	$114, -4(%rbp)
	jge	.L56
	cmpl	$107, -4(%rbp)
	je	.L56
	cmpl	$107, -4(%rbp)
	jg	.L59
	cmpl	$71, -4(%rbp)
	je	.L56
	cmpl	$71, -4(%rbp)
	jg	.L59
	cmpl	$4, -4(%rbp)
	je	.L56
	cmpl	$11, -4(%rbp)
	jne	.L59
.L56:
	movl	$1, %eax
	jmp	.L57
.L59:
	nop
	movl	$0, %eax
.L57:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	BIO_fd_non_fatal_error, .-BIO_fd_non_fatal_error
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
