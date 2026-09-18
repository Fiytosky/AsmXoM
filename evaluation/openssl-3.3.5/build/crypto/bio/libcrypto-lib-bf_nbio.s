	.file	"bf_nbio.c"
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
	.string	"non-blocking IO test filter"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	methods_nbiof, @object
	.size	methods_nbiof, 112
methods_nbiof:
	.long	528
	.zero	4
	.quad	.LC0
	.quad	bwrite_conv
	.quad	nbiof_write
	.quad	bread_conv
	.quad	nbiof_read
	.quad	nbiof_puts
	.quad	nbiof_gets
	.quad	nbiof_ctrl
	.quad	nbiof_new
	.quad	nbiof_free
	.quad	nbiof_callback_ctrl
	.zero	16
	.text
	.globl	BIO_f_nbio_test
	.type	BIO_f_nbio_test, @function
BIO_f_nbio_test:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	methods_nbiof(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	BIO_f_nbio_test, .-BIO_f_nbio_test
	.section	.rodata
.LC1:
	.string	"../crypto/bio/bf_nbio.c"
	.text
	.type	nbiof_new, @function
nbiof_new:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC1(%rip), %rax
	movl	$58, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movl	$-1, (%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 4(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 40(%rax)
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	nbiof_new, .-nbiof_new
	.type	nbiof_free, @function
nbiof_free:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movl	$71, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	nbiof_free, .-nbiof_free
	.type	nbiof_read, @function
nbiof_read:
.LFB410:
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
	jne	.L14
	movl	$0, %eax
	jmp	.L21
.L14:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movl	$0, %eax
	jmp	.L21
.L16:
	movq	-24(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	leaq	-9(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	testl	%eax, %eax
	jg	.L17
	movl	$-1, %eax
	jmp	.L21
.L17:
	movzbl	-9(%rbp), %eax
	movzbl	%al, %eax
	andl	$7, %eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L18
	movl	-8(%rbp), %eax
	movl	%eax, -36(%rbp)
.L18:
	cmpl	$0, -8(%rbp)
	jne	.L19
	movl	$-1, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L20
.L19:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L20
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
.L20:
	movl	-4(%rbp), %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	nbiof_read, .-nbiof_read
	.type	nbiof_write, @function
nbiof_write:
.LFB411:
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
	je	.L23
	cmpl	$0, -52(%rbp)
	jg	.L24
.L23:
	movl	$0, %eax
	jmp	.L33
.L24:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	movl	$0, %eax
	jmp	.L33
.L26:
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jle	.L27
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	.L28
.L27:
	leaq	-17(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	testl	%eax, %eax
	jg	.L29
	movl	$-1, %eax
	jmp	.L33
.L29:
	movzbl	-17(%rbp), %eax
	movzbl	%al, %eax
	andl	$7, %eax
	movl	%eax, -8(%rbp)
.L28:
	movl	-52(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L30
	movl	-8(%rbp), %eax
	movl	%eax, -52(%rbp)
.L30:
	cmpl	$0, -8(%rbp)
	jne	.L31
	movl	$-1, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	jmp	.L32
.L31:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L32
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_copy_next_retry@PLT
	movq	-16(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 4(%rax)
.L32:
	movl	-4(%rbp), %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	nbiof_write, .-nbiof_write
	.type	nbiof_ctrl, @function
nbiof_ctrl:
.LFB412:
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
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	cmpl	$12, -28(%rbp)
	je	.L37
	cmpl	$101, -28(%rbp)
	jne	.L38
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
	jmp	.L39
.L37:
	movq	$0, -8(%rbp)
	jmp	.L39
.L38:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	nop
.L39:
	movq	-8(%rbp), %rax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	nbiof_ctrl, .-nbiof_ctrl
	.type	nbiof_callback_ctrl, @function
nbiof_callback_ctrl:
.LFB413:
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
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	BIO_callback_ctrl@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	nbiof_callback_ctrl, .-nbiof_callback_ctrl
	.type	nbiof_gets, @function
nbiof_gets:
.LFB414:
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
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_gets@PLT
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	nbiof_gets, .-nbiof_gets
	.type	nbiof_puts, @function
nbiof_puts:
.LFB415:
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
	jne	.L47
	movl	$0, %eax
	jmp	.L48
.L47:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	nbiof_puts, .-nbiof_puts
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
