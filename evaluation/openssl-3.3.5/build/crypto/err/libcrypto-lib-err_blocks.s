	.file	"err_blocks.c"
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
	.type	err_set_error, @function
err_set_error:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	cmpl	$2, -20(%rbp)
	jne	.L10
	movl	-24(%rbp), %eax
	orl	$-2147483648, %eax
	movl	%eax, %edx
	jmp	.L11
.L10:
	movl	-20(%rbp), %eax
	cltq
	salq	$23, %rax
	andl	$2139095040, %eax
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	cltq
	andl	$8388607, %eax
	orq	%rax, %rdx
.L11:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$16, %rcx
	movq	%rdx, (%rax,%rcx,8)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	err_set_error, .-err_set_error
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
	je	.L13
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L14
.L13:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	$0, (%rax,%rdx,8)
	jmp	.L15
.L14:
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
	je	.L15
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$72, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L15:
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
	je	.L16
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L17
.L16:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	$0, (%rax,%rdx,8)
	jmp	.L19
.L17:
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
	je	.L19
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$96, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L19:
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
	je	.L21
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	leaq	.LC0(%rip), %rcx
	movl	$78, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L21:
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
	.globl	ERR_new
	.type	ERR_new, @function
ERR_new:
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
	je	.L26
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	err_get_slot
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear
	jmp	.L23
.L26:
	nop
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	ERR_new, .-ERR_new
	.globl	ERR_set_debug
	.type	ERR_set_debug, @function
ERR_set_debug:
.LFB81:
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
	call	ossl_err_get_state_int@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L30
	movq	-8(%rbp), %rax
	movl	896(%rax), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	err_set_debug
	jmp	.L27
.L30:
	nop
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	ERR_set_debug, .-ERR_set_debug
	.globl	ERR_set_error
	.type	ERR_set_error, @function
ERR_set_error:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movl	%esi, -216(%rbp)
	movq	%rdx, -224(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L33
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L33:
	movl	$24, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	leaq	-200(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movl	-216(%rbp), %esi
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	ERR_vset_error@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	ERR_set_error, .-ERR_set_error
	.section	.rodata
.LC1:
	.string	"../crypto/err/err_blocks.c"
	.text
	.globl	ERR_vset_error
	.type	ERR_vset_error, @function
ERR_vset_error:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	ossl_err_get_state_int@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L43
	movq	-40(%rbp), %rax
	movl	896(%rax), %eax
	cltq
	movq	%rax, -48(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L37
	movl	$0, -28(%rbp)
	movq	$0, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	$32, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	$48, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	addq	$32, %rdx
	movq	$0, (%rax,%rdx,8)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	subq	$-128, %rdx
	movl	$0, (%rax,%rdx,4)
	cmpq	$1023, -16(%rbp)
	ja	.L38
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$84, %ecx
	movl	$1024, %esi
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L38
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$1024, -16(%rbp)
.L38:
	cmpq	$0, -8(%rbp)
	je	.L39
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_vsnprintf@PLT
	movl	%eax, -28(%rbp)
.L39:
	cmpl	$0, -28(%rbp)
	jns	.L40
	movl	$0, -28(%rbp)
.L40:
	cmpq	$0, -8(%rbp)
	je	.L41
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L41:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$103, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L42
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltq
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L42:
	cmpq	$0, -8(%rbp)
	je	.L37
	movq	$3, -24(%rbp)
.L37:
	movq	-40(%rbp), %rax
	movl	896(%rax), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	err_clear_data
	movq	-40(%rbp), %rax
	movl	896(%rax), %eax
	movslq	%eax, %rsi
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	err_set_error
	cmpq	$0, -80(%rbp)
	je	.L34
	movq	-24(%rbp), %rax
	movl	%eax, %edi
	movq	-40(%rbp), %rax
	movl	896(%rax), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	err_set_data
	jmp	.L34
.L43:
	nop
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	ERR_vset_error, .-ERR_vset_error
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
