	.file	"bf_null.c"
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
	.string	"NULL filter"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_nullf, @object
	.size	methods_nullf, 112
methods_nullf:
	.long	529
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	nullf_write
	.quad	bread_conv
	.quad	nullf_read
	.quad	nullf_puts
	.quad	nullf_gets
	.quad	nullf_ctrl
	.quad	0
	.quad	0
	.quad	nullf_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_null
	.type	BIO_f_null, @function
BIO_f_null:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_nullf(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_f_null, .-BIO_f_null
	.type	nullf_read, @function
nullf_read:
.LFB166:
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
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movl	$0, %eax
	jmp	.L9
.L10:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-4(%rbp), %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	nullf_read, .-nullf_read
	.type	nullf_write, @function
nullf_write:
.LFB167:
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
	je	.L12
	cmpl	$0, -36(%rbp)
	jg	.L13
.L12:
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L15
	movl	$0, %eax
	jmp	.L14
.L15:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movl	-4(%rbp), %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	nullf_write, .-nullf_write
	.type	nullf_ctrl, @function
nullf_ctrl:
.LFB168:
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
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	cmpl	$12, -28(%rbp)
	je	.L19
	cmpl	$101, -28(%rbp)
	jne	.L20
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	jmp	.L21
.L19:
	movq	$0, -8(%rbp)
	jmp	.L21
.L20:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
.L21:
	movq	-8(%rbp), %rax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	nullf_ctrl, .-nullf_ctrl
	.type	nullf_callback_ctrl, @function
nullf_callback_ctrl:
.LFB169:
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
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_callback_ctrl@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	nullf_callback_ctrl, .-nullf_callback_ctrl
	.type	nullf_gets, @function
nullf_gets:
.LFB170:
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
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	nullf_gets, .-nullf_gets
	.type	nullf_puts, @function
nullf_puts:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	nullf_puts, .-nullf_puts
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
