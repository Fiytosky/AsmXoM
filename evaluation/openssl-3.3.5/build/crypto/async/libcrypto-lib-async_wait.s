	.file	"async_wait.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/async/async_wait.c"
	.text
	.globl	ASYNC_WAIT_CTX_new
	.type	ASYNC_WAIT_CTX_new, @function
ASYNC_WAIT_CTX_new:
.LFB100:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	movl	$17, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	ASYNC_WAIT_CTX_new, .-ASYNC_WAIT_CTX_new
	.globl	ASYNC_WAIT_CTX_free
	.type	ASYNC_WAIT_CTX_free, @function
ASYNC_WAIT_CTX_free:
.LFB101:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L6
.L8:
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L7
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movq	-8(%rbp), %rax
	movq	24(%rax), %r8
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L7:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$37, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L6:
	cmpq	$0, -8(%rbp)
	jne	.L8
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$41, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L3
.L9:
	nop
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	ASYNC_WAIT_CTX_free, .-ASYNC_WAIT_CTX_free
	.globl	ASYNC_WAIT_CTX_set_wait_fd
	.type	ASYNC_WAIT_CTX_set_wait_fd, @function
ASYNC_WAIT_CTX_set_wait_fd:
.LFB102:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	ASYNC_WAIT_CTX_set_wait_fd, .-ASYNC_WAIT_CTX_set_wait_fd
	.globl	ASYNC_WAIT_CTX_get_fd
	.type	ASYNC_WAIT_CTX_get_fd, @function
ASYNC_WAIT_CTX_get_fd:
.LFB103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L14
.L18:
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L15
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L14
.L15:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L16
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.L14:
	cmpq	$0, -8(%rbp)
	jne	.L18
	movl	$0, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	ASYNC_WAIT_CTX_get_fd, .-ASYNC_WAIT_CTX_get_fd
	.globl	ASYNC_WAIT_CTX_get_all_fds
	.type	ASYNC_WAIT_CTX_get_all_fds, @function
ASYNC_WAIT_CTX_get_all_fds:
.LFB104:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L20
.L23:
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L21
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L20
.L21:
	cmpq	$0, -32(%rbp)
	je	.L22
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	addq	$4, -32(%rbp)
.L22:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.L20:
	cmpq	$0, -8(%rbp)
	jne	.L23
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	ASYNC_WAIT_CTX_get_all_fds, .-ASYNC_WAIT_CTX_get_all_fds
	.globl	ASYNC_WAIT_CTX_get_changed_fds
	.type	ASYNC_WAIT_CTX_get_changed_fds, @function
ASYNC_WAIT_CTX_get_changed_fds:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -32(%rbp)
	jne	.L26
	cmpq	$0, -48(%rbp)
	jne	.L26
	movl	$1, %eax
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L28
.L31:
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L29
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L29
	cmpq	$0, -48(%rbp)
	je	.L29
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	addq	$4, -48(%rbp)
.L29:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L30
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	jne	.L30
	cmpq	$0, -32(%rbp)
	je	.L30
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	addq	$4, -32(%rbp)
.L30:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.L28:
	cmpq	$0, -8(%rbp)
	jne	.L31
	movl	$1, %eax
.L27:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ASYNC_WAIT_CTX_get_changed_fds, .-ASYNC_WAIT_CTX_get_changed_fds
	.globl	ASYNC_WAIT_CTX_clear_fd
	.type	ASYNC_WAIT_CTX_clear_fd, @function
ASYNC_WAIT_CTX_clear_fd:
.LFB106:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L33
.L40:
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	$1, %eax
	jne	.L34
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L33
.L34:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L35
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.L36
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L37
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L38
.L37:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
.L38:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$163, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
	jmp	.L39
.L36:
	movq	-8(%rbp), %rax
	movl	$1, 36(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$1, %eax
	jmp	.L39
.L35:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.L33:
	cmpq	$0, -8(%rbp)
	jne	.L40
	movl	$0, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	ASYNC_WAIT_CTX_clear_fd, .-ASYNC_WAIT_CTX_clear_fd
	.globl	ASYNC_WAIT_CTX_set_callback
	.type	ASYNC_WAIT_CTX_set_callback, @function
ASYNC_WAIT_CTX_set_callback:
.LFB107:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	ASYNC_WAIT_CTX_set_callback, .-ASYNC_WAIT_CTX_set_callback
	.globl	ASYNC_WAIT_CTX_get_callback
	.type	ASYNC_WAIT_CTX_get_callback, @function
ASYNC_WAIT_CTX_get_callback:
.LFB108:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L46:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	ASYNC_WAIT_CTX_get_callback, .-ASYNC_WAIT_CTX_get_callback
	.globl	ASYNC_WAIT_CTX_set_status
	.type	ASYNC_WAIT_CTX_set_status, @function
ASYNC_WAIT_CTX_set_status:
.LFB109:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 40(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	ASYNC_WAIT_CTX_set_status, .-ASYNC_WAIT_CTX_set_status
	.globl	ASYNC_WAIT_CTX_get_status
	.type	ASYNC_WAIT_CTX_get_status, @function
ASYNC_WAIT_CTX_get_status:
.LFB110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	ASYNC_WAIT_CTX_get_status, .-ASYNC_WAIT_CTX_get_status
	.globl	async_wait_ctx_reset_counts
	.type	async_wait_ctx_reset_counts, @function
async_wait_ctx_reset_counts:
.LFB111:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L52
.L59:
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L53
	cmpq	$0, -16(%rbp)
	jne	.L54
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
.L55:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$233, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -16(%rbp)
	jne	.L56
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L52
.L56:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L52
.L53:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L58
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
.L58:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.L52:
	cmpq	$0, -8(%rbp)
	jne	.L59
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	async_wait_ctx_reset_counts, .-async_wait_ctx_reset_counts
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
