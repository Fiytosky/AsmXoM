	.file	"err_mark.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/err/err_local.h"
	.text
	.type	err_clear_data, @function
err_clear_data:
.LFB75:
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
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	(%rax,%rdx,4), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2
	cmpl	$0, -20(%rbp)
	je	.L3
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC0(%rip), %rcx
	movl	$25, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	$0, (%rax,%rdx,4)
	jmp	.L5
.L3:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	$1, (%rax,%rdx,4)
	jmp	.L5
.L2:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	$0, (%rax,%rdx,4)
.L5:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	err_clear_data, .-err_clear_data
	.type	err_clear, @function
err_clear:
.LFB79:
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
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear_data
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	movl	$0, (%rax,%rdx,4)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	$0, (%rax,%rdx,4)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$176, %rdx
	movl	$-1, (%rax,%rdx,4)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC0(%rip), %rcx
	movl	$91, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC0(%rip), %rcx
	movl	$93, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	$0, (%rax,%rdx,8)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	err_clear, .-err_clear
	.globl	ERR_set_mark
	.type	ERR_set_mark, @function
ERR_set_mark:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ossl_err_get_state_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movl	900(%rax), %edx
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	cmpl	%eax, %edx
	jne	.L10
	movl	$0, %eax
	jmp	.L9
.L10:
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	movq	-8(%rbp), %rdx
	movslq	%eax, %rcx
	addq	$16, %rcx
	movl	(%rdx,%rcx,4), %edx
	leal	1(%rdx), %ecx
	movq	-8(%rbp), %rdx
	cltq
	addq	$16, %rax
	movl	%ecx, (%rdx,%rax,4)
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	ERR_set_mark, .-ERR_set_mark
	.globl	ERR_pop
	.type	ERR_pop, @function
ERR_pop:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ossl_err_get_state_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movl	900(%rax), %edx
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	cmpl	%eax, %edx
	jne	.L13
.L12:
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	testl	%eax, %eax
	jle	.L15
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	leal	-1(%rax), %edx
	jmp	.L16
.L15:
	movl	$15, %edx
.L16:
	movq	-8(%rbp), %rax
	movl	%edx, 896(%rax)
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	ERR_pop, .-ERR_pop
	.globl	ERR_pop_to_mark
	.type	ERR_pop_to_mark, @function
ERR_pop_to_mark:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ossl_err_get_state_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L20
	movl	$0, %eax
	jmp	.L19
.L24:
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	testl	%eax, %eax
	jle	.L21
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	leal	-1(%rax), %edx
	jmp	.L22
.L21:
	movl	$15, %edx
.L22:
	movq	-8(%rbp), %rax
	movl	%edx, 896(%rax)
.L20:
	movq	-8(%rbp), %rax
	movl	900(%rax), %edx
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	cmpl	%eax, %edx
	je	.L23
	movq	-8(%rbp), %rax
	movl	896(%rax), %edx
	movq	-8(%rbp), %rax
	movslq	%edx, %rdx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L24
.L23:
	movq	-8(%rbp), %rax
	movl	900(%rax), %edx
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	cmpl	%eax, %edx
	jne	.L25
	movl	$0, %eax
	jmp	.L19
.L25:
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	movq	-8(%rbp), %rdx
	movslq	%eax, %rcx
	addq	$16, %rcx
	movl	(%rdx,%rcx,4), %edx
	leal	-1(%rdx), %ecx
	movq	-8(%rbp), %rdx
	cltq
	addq	$16, %rax
	movl	%ecx, (%rdx,%rax,4)
	movl	$1, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	ERR_pop_to_mark, .-ERR_pop_to_mark
	.globl	ERR_count_to_mark
	.type	ERR_count_to_mark, @function
ERR_count_to_mark:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	call	ossl_err_get_state_int@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-16(%rbp), %rax
	movl	896(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L29
.L32:
	addl	$1, -4(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.L30
	subl	$1, -8(%rbp)
	jmp	.L29
.L30:
	movl	$15, -8(%rbp)
.L29:
	movq	-16(%rbp), %rax
	movl	900(%rax), %eax
	cmpl	%eax, -8(%rbp)
	je	.L31
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L32
.L31:
	movl	-4(%rbp), %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	ERR_count_to_mark, .-ERR_count_to_mark
	.globl	ERR_clear_last_mark
	.type	ERR_clear_last_mark, @function
ERR_clear_last_mark:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ossl_err_get_state_int@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-16(%rbp), %rax
	movl	896(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L36
.L39:
	cmpl	$0, -4(%rbp)
	jle	.L37
	subl	$1, -4(%rbp)
	jmp	.L36
.L37:
	movl	$15, -4(%rbp)
.L36:
	movq	-16(%rbp), %rax
	movl	900(%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L38
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L39
.L38:
	movq	-16(%rbp), %rax
	movl	900(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L40
	movl	$0, %eax
	jmp	.L35
.L40:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	leal	-1(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16, %rdx
	movl	%ecx, (%rax,%rdx,4)
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	ERR_clear_last_mark, .-ERR_clear_last_mark
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
