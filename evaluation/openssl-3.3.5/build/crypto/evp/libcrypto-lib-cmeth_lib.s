	.file	"cmeth_lib.c"
	.text
	.globl	EVP_CIPHER_meth_new
	.type	EVP_CIPHER_meth_new, @function
EVP_CIPHER_meth_new:
.LFB438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	call	evp_cipher_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 24(%rax)
.L2:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	EVP_CIPHER_meth_new, .-EVP_CIPHER_meth_new
	.globl	EVP_CIPHER_meth_dup
	.type	EVP_CIPHER_meth_dup, @function
EVP_CIPHER_meth_dup:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	EVP_CIPHER_meth_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L7
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$248, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 128(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 24(%rax)
.L7:
	movq	-8(%rbp), %rax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	EVP_CIPHER_meth_dup, .-EVP_CIPHER_meth_dup
	.globl	EVP_CIPHER_meth_free
	.type	EVP_CIPHER_meth_free, @function
EVP_CIPHER_meth_free:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L12
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	evp_cipher_free_int@PLT
	jmp	.L8
.L12:
	nop
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	EVP_CIPHER_meth_free, .-EVP_CIPHER_meth_free
	.globl	EVP_CIPHER_meth_set_iv_length
	.type	EVP_CIPHER_meth_set_iv_length, @function
EVP_CIPHER_meth_set_iv_length:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 12(%rax)
	movl	$1, %eax
.L15:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	EVP_CIPHER_meth_set_iv_length, .-EVP_CIPHER_meth_set_iv_length
	.globl	EVP_CIPHER_meth_set_flags
	.type	EVP_CIPHER_meth_set_flags, @function
EVP_CIPHER_meth_set_flags:
.LFB442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movl	$0, %eax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$1, %eax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	EVP_CIPHER_meth_set_flags, .-EVP_CIPHER_meth_set_flags
	.globl	EVP_CIPHER_meth_set_impl_ctx_size
	.type	EVP_CIPHER_meth_set_impl_ctx_size, @function
EVP_CIPHER_meth_set_impl_ctx_size:
.LFB443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L20
	movl	$0, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 56(%rax)
	movl	$1, %eax
.L21:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	EVP_CIPHER_meth_set_impl_ctx_size, .-EVP_CIPHER_meth_set_impl_ctx_size
	.globl	EVP_CIPHER_meth_set_init
	.type	EVP_CIPHER_meth_set_init, @function
EVP_CIPHER_meth_set_init:
.LFB444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L24:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	EVP_CIPHER_meth_set_init, .-EVP_CIPHER_meth_set_init
	.globl	EVP_CIPHER_meth_set_do_cipher
	.type	EVP_CIPHER_meth_set_do_cipher, @function
EVP_CIPHER_meth_set_do_cipher:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$1, %eax
.L27:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	EVP_CIPHER_meth_set_do_cipher, .-EVP_CIPHER_meth_set_do_cipher
	.globl	EVP_CIPHER_meth_set_cleanup
	.type	EVP_CIPHER_meth_set_cleanup, @function
EVP_CIPHER_meth_set_cleanup:
.LFB446:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movl	$1, %eax
.L30:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE446:
	.size	EVP_CIPHER_meth_set_cleanup, .-EVP_CIPHER_meth_set_cleanup
	.globl	EVP_CIPHER_meth_set_set_asn1_params
	.type	EVP_CIPHER_meth_set_set_asn1_params, @function
EVP_CIPHER_meth_set_set_asn1_params:
.LFB447:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movl	$1, %eax
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE447:
	.size	EVP_CIPHER_meth_set_set_asn1_params, .-EVP_CIPHER_meth_set_set_asn1_params
	.globl	EVP_CIPHER_meth_set_get_asn1_params
	.type	EVP_CIPHER_meth_set_get_asn1_params, @function
EVP_CIPHER_meth_set_get_asn1_params:
.LFB448:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movl	$1, %eax
.L36:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE448:
	.size	EVP_CIPHER_meth_set_get_asn1_params, .-EVP_CIPHER_meth_set_get_asn1_params
	.globl	EVP_CIPHER_meth_set_ctrl
	.type	EVP_CIPHER_meth_set_ctrl, @function
EVP_CIPHER_meth_set_ctrl:
.LFB449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movl	$1, %eax
.L39:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	EVP_CIPHER_meth_set_ctrl, .-EVP_CIPHER_meth_set_ctrl
	.globl	EVP_CIPHER_meth_get_init
	.type	EVP_CIPHER_meth_get_init, @function
EVP_CIPHER_meth_get_init:
.LFB450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	EVP_CIPHER_meth_get_init, .-EVP_CIPHER_meth_get_init
	.globl	EVP_CIPHER_meth_get_do_cipher
	.type	EVP_CIPHER_meth_get_do_cipher, @function
EVP_CIPHER_meth_get_do_cipher:
.LFB451:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE451:
	.size	EVP_CIPHER_meth_get_do_cipher, .-EVP_CIPHER_meth_get_do_cipher
	.globl	EVP_CIPHER_meth_get_cleanup
	.type	EVP_CIPHER_meth_get_cleanup, @function
EVP_CIPHER_meth_get_cleanup:
.LFB452:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	EVP_CIPHER_meth_get_cleanup, .-EVP_CIPHER_meth_get_cleanup
	.globl	EVP_CIPHER_meth_get_set_asn1_params
	.type	EVP_CIPHER_meth_get_set_asn1_params, @function
EVP_CIPHER_meth_get_set_asn1_params:
.LFB453:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE453:
	.size	EVP_CIPHER_meth_get_set_asn1_params, .-EVP_CIPHER_meth_get_set_asn1_params
	.globl	EVP_CIPHER_meth_get_get_asn1_params
	.type	EVP_CIPHER_meth_get_get_asn1_params, @function
EVP_CIPHER_meth_get_get_asn1_params:
.LFB454:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE454:
	.size	EVP_CIPHER_meth_get_get_asn1_params, .-EVP_CIPHER_meth_get_get_asn1_params
	.globl	EVP_CIPHER_meth_get_ctrl
	.type	EVP_CIPHER_meth_get_ctrl, @function
EVP_CIPHER_meth_get_ctrl:
.LFB455:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE455:
	.size	EVP_CIPHER_meth_get_ctrl, .-EVP_CIPHER_meth_get_ctrl
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
