	.file	"err_save.c"
	.text
	.type	err_get_slot, @function
err_get_slot:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%eax, %edx
	andl	$15, %edx
	subl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 896(%rax)
	movq	-8(%rbp), %rax
	movl	896(%rax), %edx
	movq	-8(%rbp), %rax
	movl	900(%rax), %eax
	cmpl	%eax, %edx
	jne	.L3
	movq	-8(%rbp), %rax
	movl	900(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$28, %eax
	addl	%eax, %edx
	andl	$15, %edx
	subl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 900(%rax)
.L3:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	err_get_slot, .-err_get_slot
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
	je	.L5
	cmpl	$0, -20(%rbp)
	je	.L6
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
	jmp	.L8
.L6:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L8
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	$1, (%rax,%rdx,4)
	jmp	.L8
.L5:
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
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	err_clear_data, .-err_clear_data
	.type	err_set_debug, @function
err_set_debug:
.LFB77:
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
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC0(%rip), %rcx
	movl	$57, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -24(%rbp)
	je	.L10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	$0, (%rax,%rdx,8)
	jmp	.L12
.L11:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	%rcx, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L12
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L12:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	176(%rdx), %rcx
	movl	-28(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC0(%rip), %rcx
	movl	$66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -40(%rbp)
	je	.L13
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L14
.L13:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	$0, (%rax,%rdx,8)
	jmp	.L16
.L14:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	%rcx, (%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L16
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L16:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	err_set_debug, .-err_set_debug
	.type	err_set_data, @function
err_set_data:
.LFB78:
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
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	(%rax,%rdx,4), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L18
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC0(%rip), %rcx
	movl	$78, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L18:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	32(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	128(%rdx), %rcx
	movl	-36(%rbp), %edx
	movl	%edx, (%rax,%rcx,4)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	err_set_data, .-err_set_data
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
	.globl	OSSL_ERR_STATE_new
	.type	OSSL_ERR_STATE_new, @function
OSSL_ERR_STATE_new:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edx
	movl	$0, %esi
	movl	$904, %edi
	call	CRYPTO_zalloc@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	OSSL_ERR_STATE_new, .-OSSL_ERR_STATE_new
	.globl	OSSL_ERR_STATE_save
	.type	OSSL_ERR_STATE_save, @function
OSSL_ERR_STATE_save:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L28
	movq	$0, -8(%rbp)
	jmp	.L25
.L26:
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	addq	$1, -8(%rbp)
.L25:
	cmpq	$15, -8(%rbp)
	jbe	.L26
	call	ossl_err_get_state_int@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L29
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$904, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-16(%rbp), %rax
	movl	$904, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	jmp	.L22
.L28:
	nop
	jmp	.L22
.L29:
	nop
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	OSSL_ERR_STATE_save, .-OSSL_ERR_STATE_save
	.globl	OSSL_ERR_STATE_save_to_mark
	.type	OSSL_ERR_STATE_save_to_mark, @function
OSSL_ERR_STATE_save_to_mark:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L47
	call	ossl_err_get_state_int@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L33
	movq	$0, -8(%rbp)
	jmp	.L34
.L35:
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	addq	$1, -8(%rbp)
.L34:
	cmpq	$15, -8(%rbp)
	jbe	.L35
	movq	-56(%rbp), %rax
	movl	$0, 900(%rax)
	movq	-56(%rbp), %rax
	movl	900(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 896(%rax)
	jmp	.L30
.L33:
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	896(%rax), %eax
	movl	%eax, -28(%rbp)
	jmp	.L36
.L40:
	cmpl	$0, -28(%rbp)
	jle	.L37
	subl	$1, -28(%rbp)
	jmp	.L38
.L37:
	movl	$15, -28(%rbp)
.L38:
	addq	$1, -24(%rbp)
.L36:
	movq	-40(%rbp), %rax
	movl	900(%rax), %eax
	cmpl	%eax, -28(%rbp)
	je	.L39
	movq	-40(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	$16, %rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L40
.L39:
	movq	$0, -8(%rbp)
	movl	-28(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	jmp	.L41
.L42:
	movq	-16(%rbp), %rax
	addq	$1, %rax
	andl	$15, %eax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	%ecx, (%rax,%rdx,4)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movl	$0, (%rax,%rdx,4)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$16, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$32, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$48, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	$-128, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$72, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$176, %rdx
	movl	(%rax,%rdx,4), %edx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$176, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$96, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	$0, (%rax,%rdx,4)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$16, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	subq	$-128, %rdx
	movl	$0, (%rax,%rdx,4)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$176, %rdx
	movl	$0, (%rax,%rdx,4)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	$0, (%rax,%rdx,8)
	addq	$1, -8(%rbp)
.L41:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L42
	cmpq	$0, -8(%rbp)
	je	.L43
	movq	-40(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 896(%rax)
	movq	-8(%rbp), %rax
	subl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 896(%rax)
	movq	-56(%rbp), %rax
	movl	$15, 900(%rax)
	jmp	.L45
.L43:
	movq	-56(%rbp), %rax
	movl	$0, 900(%rax)
	movq	-56(%rbp), %rax
	movl	900(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 896(%rax)
	jmp	.L45
.L46:
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	addq	$1, -8(%rbp)
.L45:
	cmpq	$15, -8(%rbp)
	jbe	.L46
	jmp	.L30
.L47:
	nop
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	OSSL_ERR_STATE_save_to_mark, .-OSSL_ERR_STATE_save_to_mark
	.globl	OSSL_ERR_STATE_restore
	.type	OSSL_ERR_STATE_restore, @function
OSSL_ERR_STATE_restore:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L58
	movq	-56(%rbp), %rax
	movl	900(%rax), %edx
	movq	-56(%rbp), %rax
	movl	896(%rax), %eax
	cmpl	%eax, %edx
	je	.L58
	call	ossl_err_get_state_int@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L59
	movq	-56(%rbp), %rax
	movl	900(%rax), %eax
	cltq
	movq	%rax, -8(%rbp)
	jmp	.L53
.L57:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	andl	$15, %eax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	(%rax,%rdx,4), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L54
	jmp	.L53
.L54:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	err_get_slot
	movq	-16(%rbp), %rax
	movl	896(%rax), %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movl	%ecx, (%rax,%rdx,4)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$16, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$16, %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$96, %rdx
	movq	(%rax,%rdx,8), %rdi
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$176, %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$72, %rdx
	movq	(%rax,%rdx,8), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	err_set_debug
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L55
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$48, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L55
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$48, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L53
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	$-128, %rdx
	movl	(%rax,%rdx,4), %eax
	orl	$1, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	err_set_data
	jmp	.L53
.L55:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear_data
.L53:
	movq	-56(%rbp), %rax
	movl	896(%rax), %eax
	cltq
	cmpq	%rax, -8(%rbp)
	jne	.L57
	jmp	.L48
.L58:
	nop
	jmp	.L48
.L59:
	nop
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	OSSL_ERR_STATE_restore, .-OSSL_ERR_STATE_restore
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
