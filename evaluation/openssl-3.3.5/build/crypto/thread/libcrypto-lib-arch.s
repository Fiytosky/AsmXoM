	.file	"arch.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/thread/arch.c"
	.text
	.globl	ossl_crypto_thread_native_start
	.type	ossl_crypto_thread_native_start, @function
ossl_crypto_thread_native_start:
.LFB58:
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
	cmpq	$0, -24(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	leaq	.LC0(%rip), %rax
	movl	$21, %edx
	movq	%rax, %rsi
	movl	$88, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L4:
	call	ossl_crypto_mutex_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L9
	call	ossl_crypto_mutex_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L10
	call	ossl_crypto_condvar_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L11
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_spawn@PLT
	cmpl	$1, %eax
	jne	.L12
	movq	-8(%rbp), %rax
	jmp	.L3
.L9:
	nop
	jmp	.L6
.L10:
	nop
	jmp	.L6
.L11:
	nop
	jmp	.L6
.L12:
	nop
.L6:
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_crypto_condvar_free@PLT
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_free@PLT
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$43, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	ossl_crypto_thread_native_start, .-ossl_crypto_thread_native_start
	.globl	ossl_crypto_thread_native_join
	.type	ossl_crypto_thread_native_join, @function
ossl_crypto_thread_native_join:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	movq	$5, -8(%rbp)
	jmp	.L16
.L17:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_condvar_wait@PLT
.L16:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	andq	-8(%rbp), %rax
	testq	%rax, %rax
	je	.L17
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L27
	jmp	.L20
.L22:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L21
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_condvar_wait@PLT
.L21:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	andl	$4, %eax
	testq	%rax, %rax
	jne	.L28
.L20:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	andl	$2, %eax
	testq	%rax, %rax
	jne	.L22
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_crypto_thread_native_perform_join@PLT
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	jmp	.L19
.L27:
	nop
	jmp	.L19
.L28:
	nop
.L19:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$-262145, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_condvar_signal@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	cmpq	$0, -32(%rbp)
	je	.L25
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L25:
	movl	$1, %eax
	jmp	.L15
.L29:
	nop
.L24:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$262144, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	andl	$-3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_condvar_signal@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	ossl_crypto_thread_native_join, .-ossl_crypto_thread_native_join
	.globl	ossl_crypto_thread_native_clean
	.type	ossl_crypto_thread_native_clean, @function
ossl_crypto_thread_native_clean:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	$0, -8(%rbp)
	orq	$1, -8(%rbp)
	orq	$4, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	andq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L33
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	movl	$0, %eax
	jmp	.L32
.L33:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_free@PLT
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_free@PLT
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	call	ossl_crypto_condvar_free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$129, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	ossl_crypto_thread_native_clean, .-ossl_crypto_thread_native_clean
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
