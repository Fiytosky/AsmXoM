	.file	"thread_posix.c"
	.text
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$-1, %rdi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	%rax, %rdx
	jnb	.L8
	movl	$1, %eax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L10
	movl	$-1, %eax
	jmp	.L9
.L10:
	movl	$0, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_infinite, @function
ossl_time_is_infinite:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_infinite
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	ossl_time_is_infinite, .-ossl_time_is_infinite
	.type	thread_start_thunk, @function
thread_start_thunk:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_lock@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_condvar_broadcast@PLT
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ossl_crypto_mutex_unlock@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	thread_start_thunk, .-thread_start_thunk
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/thread/arch/thread_posix.c"
	.text
	.globl	ossl_crypto_thread_native_spawn
	.type	ossl_crypto_thread_native_spawn, @function
ossl_crypto_thread_native_spawn:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$41, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L22
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_attr_init@PLT
	movq	-88(%rbp), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	jne	.L18
	leaq	-80(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	pthread_attr_setdetachstate@PLT
.L18:
	movq	-88(%rbp), %rdx
	leaq	thread_start_thunk(%rip), %rdi
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	pthread_create@PLT
	movl	%eax, -12(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_attr_destroy@PLT
	cmpl	$0, -12(%rbp)
	jne	.L23
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, %eax
	jmp	.L21
.L22:
	nop
	jmp	.L17
.L23:
	nop
.L17:
	movq	-88(%rbp), %rax
	movq	$0, 32(%rax)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	ossl_crypto_thread_native_spawn, .-ossl_crypto_thread_native_spawn
	.globl	ossl_crypto_thread_native_perform_join
	.type	ossl_crypto_thread_native_perform_join, @function
ossl_crypto_thread_native_perform_join:
.LFB60:
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
	je	.L25
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L26
.L25:
	movl	$0, %eax
	jmp	.L30
.L26:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_join@PLT
	testl	%eax, %eax
	je	.L28
	movl	$0, %eax
	jmp	.L30
.L28:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	ossl_crypto_thread_native_perform_join, .-ossl_crypto_thread_native_perform_join
	.globl	ossl_crypto_thread_native_exit
	.type	ossl_crypto_thread_native_exit, @function
ossl_crypto_thread_native_exit:
.LFB61:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	pthread_exit@PLT
	.cfi_endproc
.LFE61:
	.size	ossl_crypto_thread_native_exit, .-ossl_crypto_thread_native_exit
	.globl	ossl_crypto_thread_native_is_self
	.type	ossl_crypto_thread_native_is_self, @function
ossl_crypto_thread_native_is_self:
.LFB62:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	pthread_self@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_equal@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	ossl_crypto_thread_native_is_self, .-ossl_crypto_thread_native_is_self
	.globl	ossl_crypto_mutex_new
	.type	ossl_crypto_mutex_new, @function
ossl_crypto_mutex_new:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$100, %edx
	movq	%rax, %rsi
	movl	$40, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_mutex_init@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$103, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L36
.L37:
	movq	-8(%rbp), %rax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	ossl_crypto_mutex_new, .-ossl_crypto_mutex_new
	.globl	ossl_crypto_mutex_try_lock
	.type	ossl_crypto_mutex_try_lock, @function
ossl_crypto_mutex_try_lock:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_mutex_trylock@PLT
	cmpl	$16, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movl	$1, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	ossl_crypto_mutex_try_lock, .-ossl_crypto_mutex_try_lock
	.section	.rodata
.LC1:
	.string	"assertion failed: rc == 0"
	.text
	.globl	ossl_crypto_mutex_lock
	.type	ossl_crypto_mutex_lock, @function
ossl_crypto_mutex_lock:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L43
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$128, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L43:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	ossl_crypto_mutex_lock, .-ossl_crypto_mutex_lock
	.globl	ossl_crypto_mutex_unlock
	.type	ossl_crypto_mutex_unlock, @function
ossl_crypto_mutex_unlock:
.LFB66:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L46
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$138, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L46:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	ossl_crypto_mutex_unlock, .-ossl_crypto_mutex_unlock
	.globl	ossl_crypto_mutex_free
	.type	ossl_crypto_mutex_free, @function
ossl_crypto_mutex_free:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L51
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L50
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pthread_mutex_destroy@PLT
.L50:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$151, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L47
.L51:
	nop
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	ossl_crypto_mutex_free, .-ossl_crypto_mutex_free
	.globl	ossl_crypto_condvar_new
	.type	ossl_crypto_condvar_new, @function
ossl_crypto_condvar_new:
.LFB68:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$159, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L53
	movl	$0, %eax
	jmp	.L54
.L53:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_cond_init@PLT
	testl	%eax, %eax
	je	.L55
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$162, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L54
.L55:
	movq	-8(%rbp), %rax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	ossl_crypto_condvar_new, .-ossl_crypto_condvar_new
	.globl	ossl_crypto_condvar_wait
	.type	ossl_crypto_condvar_wait, @function
ossl_crypto_condvar_wait:
.LFB69:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_cond_wait@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	ossl_crypto_condvar_wait, .-ossl_crypto_condvar_wait
	.globl	ossl_crypto_condvar_wait_timeout
	.type	ossl_crypto_condvar_wait_timeout, @function
ossl_crypto_condvar_wait_timeout:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_is_infinite
	testl	%eax, %eax
	je	.L58
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_cond_wait@PLT
	jmp	.L60
.L58:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	movq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	imulq	$1000000000, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	pthread_cond_timedwait@PLT
.L60:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	ossl_crypto_condvar_wait_timeout, .-ossl_crypto_condvar_wait_timeout
	.globl	ossl_crypto_condvar_broadcast
	.type	ossl_crypto_condvar_broadcast, @function
ossl_crypto_condvar_broadcast:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_cond_broadcast@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	ossl_crypto_condvar_broadcast, .-ossl_crypto_condvar_broadcast
	.globl	ossl_crypto_condvar_signal
	.type	ossl_crypto_condvar_signal, @function
ossl_crypto_condvar_signal:
.LFB72:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_cond_signal@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	ossl_crypto_condvar_signal, .-ossl_crypto_condvar_signal
	.globl	ossl_crypto_condvar_free
	.type	ossl_crypto_condvar_free, @function
ossl_crypto_condvar_free:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L67
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	pthread_cond_destroy@PLT
.L66:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$229, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L63
.L67:
	nop
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	ossl_crypto_condvar_free, .-ossl_crypto_condvar_free
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
