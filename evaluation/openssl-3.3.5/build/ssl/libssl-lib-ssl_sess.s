	.file	"ssl_sess.c"
	.text
	.type	CRYPTO_UP_REF, @function
CRYPTO_UP_REF:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	CRYPTO_UP_REF, .-CRYPTO_UP_REF
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %edx
	negl	%edx
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	leal	-1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L4
.L4:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	xchgl	(%rax), %edx
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB504:
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
.LFE504:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB505:
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
.LFE505:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.type	safe_add_time, @function
safe_add_time:
.LFB615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	jnc	.L14
	movl	$1, %ecx
.L14:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L16
	movq	-8(%rbp), %rax
	jmp	.L18
.L16:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE615:
	.size	safe_add_time, .-safe_add_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB624:
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
.LFE624:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB625:
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
.LFE625:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE626:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB627:
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
.LFE627:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_to_time_t, @function
ossl_time_to_time_t:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	ossl_time_to_time_t, .-ossl_time_to_time_t
	.type	ossl_time_from_time_t, @function
ossl_time_from_time_t:
.LFB631:
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
	imulq	$1000000000, %rax, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	ossl_time_from_time_t, .-ossl_time_from_time_t
	.type	ossl_time_compare, @function
ossl_time_compare:
.LFB632:
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
	jnb	.L32
	movl	$1, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L34
	movl	$-1, %eax
	jmp	.L33
.L34:
	movl	$0, %eax
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	ossl_time_compare, .-ossl_time_compare
	.type	ossl_time_is_zero, @function
ossl_time_is_zero:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	call	ossl_time_zero
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
.LFE633:
	.size	ossl_time_is_zero, .-ossl_time_is_zero
	.type	ossl_time_add, @function
ossl_time_add:
.LFB635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_add_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L38
	call	ossl_time_infinite
	jmp	.L40
.L38:
	movq	-8(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE635:
	.size	ossl_time_add, .-ossl_time_add
	.type	lh_SSL_SESSION_hfn_thunk, @function
lh_SSL_SESSION_hfn_thunk:
.LFB647:
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
.LFE647:
	.size	lh_SSL_SESSION_hfn_thunk, .-lh_SSL_SESSION_hfn_thunk
	.type	lh_SSL_SESSION_cfn_thunk, @function
lh_SSL_SESSION_cfn_thunk:
.LFB648:
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
.LFE648:
	.size	lh_SSL_SESSION_cfn_thunk, .-lh_SSL_SESSION_cfn_thunk
	.type	lh_SSL_SESSION_insert, @function
lh_SSL_SESSION_insert:
.LFB651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	lh_SSL_SESSION_insert, .-lh_SSL_SESSION_insert
	.type	lh_SSL_SESSION_delete, @function
lh_SSL_SESSION_delete:
.LFB652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	lh_SSL_SESSION_delete, .-lh_SSL_SESSION_delete
	.type	lh_SSL_SESSION_retrieve, @function
lh_SSL_SESSION_retrieve:
.LFB653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	lh_SSL_SESSION_retrieve, .-lh_SSL_SESSION_retrieve
	.type	lh_SSL_SESSION_get_down_load, @function
lh_SSL_SESSION_get_down_load:
.LFB656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_get_down_load@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	lh_SSL_SESSION_get_down_load, .-lh_SSL_SESSION_get_down_load
	.type	lh_SSL_SESSION_set_down_load, @function
lh_SSL_SESSION_set_down_load:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_LH_set_down_load@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	lh_SSL_SESSION_set_down_load, .-lh_SSL_SESSION_set_down_load
	.type	lh_X509_NAME_hfn_thunk, @function
lh_X509_NAME_hfn_thunk:
.LFB663:
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
.LFE663:
	.size	lh_X509_NAME_hfn_thunk, .-lh_X509_NAME_hfn_thunk
	.type	lh_X509_NAME_cfn_thunk, @function
lh_X509_NAME_cfn_thunk:
.LFB664:
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
.LFE664:
	.size	lh_X509_NAME_cfn_thunk, .-lh_X509_NAME_cfn_thunk
	.type	ssl_tsan_lock, @function
ssl_tsan_lock:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	ssl_tsan_lock, .-ssl_tsan_lock
	.type	ssl_tsan_unlock, @function
ssl_tsan_unlock:
.LFB733:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	ssl_tsan_unlock, .-ssl_tsan_unlock
	.type	ssl_tsan_counter, @function
ssl_tsan_counter:
.LFB734:
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
	movq	%rax, %rdi
	call	ssl_tsan_lock
	testl	%eax, %eax
	je	.L63
	movq	-16(%rbp), %rax
	lock addl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_tsan_unlock
.L63:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	ssl_tsan_counter, .-ssl_tsan_counter
	.type	sk_SSL_SESSION_new_null, @function
sk_SSL_SESSION_new_null:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	sk_SSL_SESSION_new_null, .-sk_SSL_SESSION_new_null
	.type	sk_SSL_SESSION_push, @function
sk_SSL_SESSION_push:
.LFB745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	sk_SSL_SESSION_push, .-sk_SSL_SESSION_push
	.type	sk_SSL_SESSION_pop_free, @function
sk_SSL_SESSION_pop_free:
.LFB749:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	sk_SSL_SESSION_pop_free, .-sk_SSL_SESSION_pop_free
	.type	sess_timedout, @function
sess_timedout:
.LFB760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	744(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE760:
	.size	sess_timedout, .-sess_timedout
	.type	timeoutcmp, @function
timeoutcmp:
.LFB761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	744(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_compare
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	timeoutcmp, .-timeoutcmp
	.globl	ssl_session_calculate_timeout
	.type	ssl_session_calculate_timeout, @function
ssl_session_calculate_timeout:
.LFB762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rbx
	movq	-16(%rbp), %rax
	movq	728(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_add
	movq	%rax, 744(%rbx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE762:
	.size	ssl_session_calculate_timeout, .-ssl_session_calculate_timeout
	.globl	SSL_get_session
	.type	SSL_get_session, @function
SSL_get_session:
.LFB763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L75
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L76
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L77
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L78
.L77:
	movq	$0, -8(%rbp)
	jmp	.L78
.L76:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L78
.L75:
	movq	$0, -8(%rbp)
.L78:
	cmpq	$0, -8(%rbp)
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
.L80:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	SSL_get_session, .-SSL_get_session
	.globl	SSL_get1_session
	.type	SSL_get1_session, @function
SSL_get1_session:
.LFB764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L82
	movl	$0, %eax
	jmp	.L83
.L82:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_get_session@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L84
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_up_ref@PLT
.L84:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE764:
	.size	SSL_get1_session, .-SSL_get1_session
	.globl	SSL_SESSION_set_ex_data
	.type	SSL_SESSION_set_ex_data, @function
SSL_SESSION_set_ex_data:
.LFB765:
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
	leaq	784(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	SSL_SESSION_set_ex_data, .-SSL_SESSION_set_ex_data
	.globl	SSL_SESSION_get_ex_data
	.type	SSL_SESSION_get_ex_data, @function
SSL_SESSION_get_ex_data:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	leaq	784(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	SSL_SESSION_get_ex_data, .-SSL_SESSION_get_ex_data
	.section	.rodata
.LC0:
	.string	"../ssl/ssl_sess.c"
	.text
	.globl	SSL_SESSION_new
	.type	SSL_SESSION_new, @function
SSL_SESSION_new:
.LFB767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	$0, %esi
	movl	$2097152, %edi
	call	OPENSSL_init_ssl@PLT
	testl	%eax, %eax
	jne	.L90
	movl	$0, %eax
	jmp	.L91
.L90:
	leaq	.LC0(%rip), %rax
	movl	$108, %edx
	movq	%rax, %rsi
	movl	$928, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L92
	movl	$0, %eax
	jmp	.L91
.L92:
	movq	-24(%rbp), %rax
	movb	$-1, 856(%rax)
	movq	-24(%rbp), %rax
	movq	$1, 720(%rax)
	movq	-24(%rbp), %rbx
	movabsq	$304000000000, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, 728(%rbx)
	movq	-24(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 736(%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_session_calculate_timeout@PLT
	movq	-24(%rbp), %rax
	addq	$920, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L93
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L91
.L93:
	movq	-24(%rbp), %rax
	leaq	784(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	jne	.L94
	movq	-24(%rbp), %rax
	addq	$920, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$125, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L91
.L94:
	movq	-24(%rbp), %rax
.L91:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE767:
	.size	SSL_SESSION_new, .-SSL_SESSION_new
	.type	ssl_session_dup_intern, @function
ssl_session_dup_intern:
.LFB768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$139, %edx
	movq	%rax, %rsi
	movl	$928, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L96
	movl	$0, %eax
	jmp	.L97
.L96:
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$904, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	$0, 672(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 680(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 800(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 808(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 840(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 864(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 712(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 704(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 696(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 872(%rax)
	movq	-8(%rbp), %rax
	addq	$784, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-8(%rbp), %rax
	movq	$0, 904(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 912(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 896(%rax)
	movq	-8(%rbp), %rax
	addq	$920, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L98
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$175, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L97
.L98:
	movq	-8(%rbp), %rax
	leaq	784(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	jne	.L99
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$180, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L99:
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	testq	%rax, %rax
	je	.L101
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	jne	.L102
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$186, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L102:
	movq	-24(%rbp), %rax
	movq	704(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 704(%rax)
.L101:
	movq	-24(%rbp), %rax
	movq	712(%rax), %rax
	testq	%rax, %rax
	je	.L103
	movq	-24(%rbp), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	call	X509_chain_up_ref@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 712(%rdx)
	movq	-8(%rbp), %rax
	movq	712(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$195, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L103:
	movq	-24(%rbp), %rax
	movq	696(%rax), %rax
	testq	%rax, %rax
	je	.L104
	movq	-24(%rbp), %rax
	movq	696(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	testl	%eax, %eax
	je	.L116
	movq	-24(%rbp), %rax
	movq	696(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 696(%rax)
.L104:
	movq	-24(%rbp), %rax
	movq	672(%rax), %rax
	testq	%rax, %rax
	je	.L106
	movq	-24(%rbp), %rax
	movq	672(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$208, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 672(%rdx)
	movq	-8(%rbp), %rax
	movq	672(%rax), %rax
	testq	%rax, %rax
	je	.L117
.L106:
	movq	-24(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L107
	movq	-24(%rbp), %rax
	movq	680(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$213, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 680(%rdx)
	movq	-8(%rbp), %rax
	movq	680(%rax), %rax
	testq	%rax, %rax
	je	.L118
.L107:
	movq	-24(%rbp), %rax
	leaq	784(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$784, %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	CRYPTO_dup_ex_data@PLT
	testl	%eax, %eax
	jne	.L108
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$221, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L100
.L108:
	movq	-24(%rbp), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-24(%rbp), %rax
	movq	800(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$226, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 800(%rdx)
	movq	-8(%rbp), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	je	.L119
.L109:
	cmpl	$0, -28(%rbp)
	je	.L110
	movq	-24(%rbp), %rax
	movq	808(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-24(%rbp), %rax
	movq	816(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	808(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$233, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 808(%rdx)
	movq	-8(%rbp), %rax
	movq	808(%rax), %rax
	testq	%rax, %rax
	jne	.L112
	jmp	.L100
.L110:
	movq	-8(%rbp), %rax
	movq	$0, 824(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 816(%rax)
.L112:
	movq	-24(%rbp), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	je	.L113
	movq	-24(%rbp), %rax
	movq	848(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	840(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$242, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 840(%rdx)
	movq	-8(%rbp), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	je	.L120
.L113:
	movq	-24(%rbp), %rax
	movq	864(%rax), %rax
	testq	%rax, %rax
	je	.L114
	movq	-24(%rbp), %rax
	movq	864(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$250, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 864(%rdx)
	movq	-8(%rbp), %rax
	movq	864(%rax), %rax
	testq	%rax, %rax
	je	.L121
.L114:
	movq	-24(%rbp), %rax
	movq	872(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-24(%rbp), %rax
	movq	880(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	872(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$258, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 872(%rdx)
	movq	-8(%rbp), %rax
	movq	872(%rax), %rax
	testq	%rax, %rax
	je	.L122
.L115:
	movq	-8(%rbp), %rax
	jmp	.L97
.L116:
	nop
	jmp	.L100
.L117:
	nop
	jmp	.L100
.L118:
	nop
	jmp	.L100
.L119:
	nop
	jmp	.L100
.L120:
	nop
	jmp	.L100
.L121:
	nop
	jmp	.L100
.L122:
	nop
.L100:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movl	$0, %eax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE768:
	.size	ssl_session_dup_intern, .-ssl_session_dup_intern
	.globl	SSL_SESSION_dup
	.type	SSL_SESSION_dup, @function
SSL_SESSION_dup:
.LFB769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ssl_session_dup_intern
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE769:
	.size	SSL_SESSION_dup, .-SSL_SESSION_dup
	.globl	ssl_session_dup
	.type	ssl_session_dup, @function
ssl_session_dup:
.LFB770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ssl_session_dup_intern
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L126
	movq	-8(%rbp), %rax
	movl	$0, 688(%rax)
.L126:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE770:
	.size	ssl_session_dup, .-ssl_session_dup
	.globl	SSL_SESSION_get_id
	.type	SSL_SESSION_get_id, @function
SSL_SESSION_get_id:
.LFB771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L129
	movq	-8(%rbp), %rax
	movq	592(%rax), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L129:
	movq	-8(%rbp), %rax
	addq	$600, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE771:
	.size	SSL_SESSION_get_id, .-SSL_SESSION_get_id
	.globl	SSL_SESSION_get0_id_context
	.type	SSL_SESSION_get0_id_context, @function
SSL_SESSION_get0_id_context:
.LFB772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L132
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L132:
	movq	-8(%rbp), %rax
	addq	$640, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE772:
	.size	SSL_SESSION_get0_id_context, .-SSL_SESSION_get0_id_context
	.globl	SSL_SESSION_get_compress_id
	.type	SSL_SESSION_get_compress_id, @function
SSL_SESSION_get_compress_id:
.LFB773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	752(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	SSL_SESSION_get_compress_id, .-SSL_SESSION_get_compress_id
	.type	def_generate_session_id, @function
def_generate_session_id:
.LFB774:
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
	movl	$0, -4(%rbp)
.L140:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	testl	%eax, %eax
	jg	.L137
	movl	$0, %eax
	jmp	.L138
.L137:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_has_matching_session_id@PLT
	testl	%eax, %eax
	je	.L139
	addl	$1, -4(%rbp)
	cmpl	$9, -4(%rbp)
	jbe	.L140
.L139:
	cmpl	$9, -4(%rbp)
	ja	.L141
	movl	$1, %eax
	jmp	.L138
.L141:
	movl	$0, %eax
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	def_generate_session_id, .-def_generate_session_id
	.globl	ssl_generate_session_id
	.type	ssl_generate_session_id, @function
ssl_generate_session_id:
.LFB775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	def_generate_session_id(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$65279, %eax
	je	.L143
	cmpl	$65279, %eax
	jg	.L144
	cmpl	$65277, %eax
	je	.L143
	cmpl	$65277, %eax
	jg	.L144
	cmpl	$256, %eax
	je	.L143
	cmpl	$256, %eax
	jl	.L144
	subl	$768, %eax
	cmpl	$4, %eax
	ja	.L144
.L143:
	movq	-48(%rbp), %rax
	movq	$32, 592(%rax)
	nop
	movq	-40(%rbp), %rax
	movl	2536(%rax), %eax
	testl	%eax, %eax
	je	.L147
	jmp	.L157
.L144:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$367, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$259, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L156
.L157:
	movq	-48(%rbp), %rax
	movq	$0, 592(%rax)
	movl	$1, %eax
	jmp	.L156
.L147:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L148
	movl	$0, %eax
	jmp	.L156
.L148:
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L149
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$396, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$277, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L156
.L149:
	movq	-40(%rbp), %rax
	movq	2216(%rax), %rax
	testq	%rax, %rax
	je	.L150
	movq	-40(%rbp), %rax
	movq	2216(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L151
.L150:
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	movq	440(%rax), %rax
	testq	%rax, %rax
	je	.L151
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	movq	440(%rax), %rax
	movq	%rax, -8(%rbp)
.L151:
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-48(%rbp), %rax
	movq	592(%rax), %rax
	movq	-48(%rbp), %rdx
	leaq	600(%rdx), %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	memset@PLT
	movq	-48(%rbp), %rax
	movq	592(%rax), %rax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	leaq	600(%rax), %rsi
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	jne	.L152
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$411, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$301, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L156
.L152:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L153
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	592(%rax), %rax
	cmpq	%rdx, %rax
	jnb	.L154
.L153:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$421, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$303, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L156
.L154:
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movq	%rdx, 592(%rax)
	movq	-48(%rbp), %rax
	movq	592(%rax), %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	leaq	600(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SSL_has_matching_session_id@PLT
	testl	%eax, %eax
	je	.L155
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$429, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$302, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L156
.L155:
	movl	$1, %eax
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	ssl_generate_session_id, .-ssl_generate_session_id
	.globl	ssl_get_new_session
	.type	ssl_get_new_session, @function
ssl_get_new_session:
.LFB776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	$0, -24(%rbp)
	call	SSL_SESSION_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L159
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$443, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$524308, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$0, %eax
	jmp	.L160
.L159:
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_is_zero
	testl	%eax, %eax
	je	.L161
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	208(%rax), %rax
	movq	-24(%rbp), %rbx
	call	*%rax
	movq	%rax, 728(%rbx)
	jmp	.L162
.L161:
	movq	-40(%rbp), %rax
	movq	2800(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	88(%rdx), %rdx
	movq	%rdx, 728(%rax)
.L162:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_session_calculate_timeout@PLT
	movq	-40(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-40(%rbp), %rax
	movq	$0, 2184(%rax)
	cmpl	$0, -44(%rbp)
	je	.L163
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L164
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L164
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L164
	movq	-24(%rbp), %rax
	movq	$0, 592(%rax)
	jmp	.L166
.L164:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_generate_session_id@PLT
	testl	%eax, %eax
	jne	.L166
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movl	$0, %eax
	jmp	.L160
.L163:
	movq	-24(%rbp), %rax
	movq	$0, 592(%rax)
.L166:
	movq	-40(%rbp), %rax
	movq	2144(%rax), %rax
	cmpq	$32, %rax
	jbe	.L167
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movl	$0, %eax
	jmp	.L160
.L167:
	movq	-40(%rbp), %rax
	movq	2144(%rax), %rax
	movq	-40(%rbp), %rdx
	leaq	2152(%rdx), %rsi
	movq	-24(%rbp), %rdx
	leaq	640(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-40(%rbp), %rax
	movq	2144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 632(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 2184(%rax)
	movq	-40(%rbp), %rax
	movl	72(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 720(%rax)
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	je	.L168
	movq	-24(%rbp), %rax
	movl	888(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 888(%rax)
.L168:
	movl	$1, %eax
.L160:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	ssl_get_new_session, .-ssl_get_new_session
	.globl	lookup_sess_in_cache
	.type	lookup_sess_in_cache, @function
lookup_sess_in_cache:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$976, %rsp
	movq	%rdi, -952(%rbp)
	movq	%rsi, -960(%rbp)
	movq	%rdx, -968(%rbp)
	movq	$0, -8(%rbp)
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	movl	80(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L170
	movq	-952(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -944(%rbp)
	cmpq	$32, -968(%rbp)
	setbe	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	jne	.L171
	movl	$0, %eax
	jmp	.L176
.L171:
	movq	-968(%rbp), %rdx
	movq	-960(%rbp), %rax
	leaq	-944(%rbp), %rcx
	addq	$600, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movq	-968(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L173
	movl	$0, %eax
	jmp	.L176
.L173:
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	movq	48(%rax), %rax
	leaq	-944(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SSL_SESSION_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L174
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_up_ref@PLT
.L174:
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -8(%rbp)
	jne	.L170
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	144(%rax), %rdx
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
.L170:
	cmpq	$0, -8(%rbp)
	jne	.L177
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L177
	movl	$1, -12(%rbp)
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	movq	112(%rax), %r8
	movq	-968(%rbp), %rax
	movl	%eax, %edi
	movq	-952(%rbp), %rax
	movq	64(%rax), %rax
	leaq	-12(%rbp), %rdx
	movq	-960(%rbp), %rsi
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L177
	movq	-8(%rbp), %rax
	movl	688(%rax), %eax
	testl	%eax, %eax
	je	.L179
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L180
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
.L180:
	movl	$0, %eax
	jmp	.L176
.L179:
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	160(%rax), %rdx
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L181
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_up_ref@PLT
.L181:
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	movl	80(%rax), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L177
	movq	-952(%rbp), %rax
	movq	2800(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_add_session@PLT
.L177:
	movq	-8(%rbp), %rax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	lookup_sess_in_cache, .-lookup_sess_in_cache
	.globl	ssl_get_prev_session
	.type	ssl_get_prev_session, @function
ssl_get_prev_session:
.LFB778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L183
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L183
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L183
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-56(%rbp), %rax
	movq	$0, 2184(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 2536(%rax)
	movq	-64(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$128, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	tls_parse_extension@PLT
	testl	%eax, %eax
	je	.L184
	movq	-64(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$128, %edx
	movl	$28, %esi
	movq	%rax, %rdi
	call	tls_parse_extension@PLT
	testl	%eax, %eax
	jne	.L185
.L184:
	movl	$-1, %eax
	jmp	.L208
.L185:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L187
.L183:
	leaq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	tls_get_ticket_from_client@PLT
	movl	%eax, -28(%rbp)
	cmpl	$6, -28(%rbp)
	jg	.L187
	cmpl	$4, -28(%rbp)
	jge	.L210
	cmpl	$1, -28(%rbp)
	jg	.L189
	cmpl	$0, -28(%rbp)
	jns	.L190
	jmp	.L187
.L189:
	movl	-28(%rbp), %eax
	subl	$2, %eax
	cmpl	$1, %eax
	ja	.L187
	jmp	.L209
.L190:
	movl	$1, -20(%rbp)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$616, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$786691, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	jmp	.L192
.L209:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movl	$1, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-64(%rbp), %rax
	leaq	48(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lookup_sess_in_cache@PLT
	movq	%rax, -40(%rbp)
	jmp	.L211
.L210:
	nop
	jmp	.L187
.L211:
	nop
.L187:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L212
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-56(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	%eax, %edx
	jne	.L213
	movq	-40(%rbp), %rax
	movq	632(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	2144(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L214
	movq	-40(%rbp), %rax
	movq	632(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	2152(%rdx), %rsi
	movq	-40(%rbp), %rdx
	leaq	640(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L214
	movq	-56(%rbp), %rax
	movl	2264(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L198
	movq	-56(%rbp), %rax
	movq	2144(%rax), %rax
	testq	%rax, %rax
	jne	.L198
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$662, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$277, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$1, -20(%rbp)
	jmp	.L192
.L198:
	movq	-40(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	sess_timedout
	testl	%eax, %eax
	je	.L199
	movq	-56(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	148(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
	cmpl	$0, -24(%rbp)
	je	.L215
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_remove_session@PLT
	jmp	.L215
.L199:
	movq	-40(%rbp), %rax
	movl	888(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L201
	movq	-56(%rbp), %rax
	movq	288(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	jne	.L202
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$681, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$104, %edx
	movl	$47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ossl_statem_fatal@PLT
	movl	$1, -20(%rbp)
	jmp	.L192
.L201:
	movq	-56(%rbp), %rax
	movq	288(%rax), %rax
	andl	$512, %eax
	testq	%rax, %rax
	jne	.L216
.L202:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L203
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L203
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	jne	.L204
.L203:
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 2184(%rax)
.L204:
	movq	-56(%rbp), %rax
	movq	2800(%rax), %rax
	leaq	156(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
	movq	-56(%rbp), %rax
	movq	2184(%rax), %rax
	movq	720(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 2336(%rax)
	movl	$1, %eax
	jmp	.L208
.L212:
	nop
	jmp	.L192
.L213:
	nop
	jmp	.L192
.L214:
	nop
	jmp	.L192
.L215:
	nop
	jmp	.L192
.L216:
	nop
.L192:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L205
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	216(%rax), %rax
	movl	80(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L206
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$771, %eax
	jle	.L206
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	cmpl	$65536, %eax
	je	.L206
	movq	-56(%rbp), %rax
	movq	$0, 2184(%rax)
.L206:
	cmpl	$0, -24(%rbp)
	jne	.L205
	movq	-56(%rbp), %rax
	movl	$1, 2536(%rax)
.L205:
	cmpl	$0, -20(%rbp)
	je	.L207
	movl	$-1, %eax
	jmp	.L208
.L207:
	movl	$0, %eax
.L208:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE778:
	.size	ssl_get_prev_session, .-ssl_get_prev_session
	.globl	SSL_CTX_add_session
	.type	SSL_CTX_add_session, @function
SSL_CTX_add_session:
.LFB779:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_up_ref@PLT
	movq	-40(%rbp), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L218
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movl	$0, %eax
	jmp	.L219
.L218:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SSL_SESSION_insert
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L220
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L220
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_list_remove
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	$0, -32(%rbp)
	jmp	.L221
.L220:
	cmpq	$0, -32(%rbp)
	jne	.L221
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SSL_SESSION_retrieve
	testq	%rax, %rax
	jne	.L221
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
.L221:
	movq	-40(%rbp), %rax
	movl	80(%rax), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L222
	movq	-48(%rbp), %rbx
	call	ossl_time_now@PLT
	movq	%rax, 736(%rbx)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_session_calculate_timeout@PLT
.L222:
	cmpq	$0, -32(%rbp)
	jne	.L223
	movl	$1, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	testq	%rax, %rax
	jle	.L223
	jmp	.L224
.L226:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remove_session_lock
	testl	%eax, %eax
	je	.L228
	movq	-40(%rbp), %rax
	leaq	152(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ssl_tsan_counter
.L224:
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	cmpq	%rax, %rbx
	jge	.L226
	jmp	.L223
.L228:
	nop
.L223:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_list_add
	cmpq	$0, -32(%rbp)
	je	.L227
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movl	$0, -20(%rbp)
.L227:
	movq	-40(%rbp), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-20(%rbp), %eax
.L219:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE779:
	.size	SSL_CTX_add_session, .-SSL_CTX_add_session
	.globl	SSL_CTX_remove_session
	.type	SSL_CTX_remove_session, @function
SSL_CTX_remove_session:
.LFB780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remove_session_lock
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE780:
	.size	SSL_CTX_remove_session, .-SSL_CTX_remove_session
	.type	remove_session_lock, @function
remove_session_lock:
.LFB781:
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
	movl	$0, -12(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L232
	movq	-32(%rbp), %rax
	movq	592(%rax), %rax
	testq	%rax, %rax
	je	.L232
	cmpl	$0, -36(%rbp)
	je	.L233
	movq	-24(%rbp), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L233
	movl	$0, %eax
	jmp	.L234
.L233:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SSL_SESSION_retrieve
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L235
	movl	$1, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SSL_SESSION_delete
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_list_remove
.L235:
	movq	-32(%rbp), %rax
	movl	$1, 688(%rax)
	cmpl	$0, -36(%rbp)
	je	.L236
	movq	-24(%rbp), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L236:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L237
	movq	-24(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L237:
	cmpl	$0, -12(%rbp)
	je	.L232
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
.L232:
	movl	-12(%rbp), %eax
.L234:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE781:
	.size	remove_session_lock, .-remove_session_lock
	.globl	SSL_SESSION_free
	.type	SSL_SESSION_free, @function
SSL_SESSION_free:
.LFB782:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L243
	movq	-24(%rbp), %rax
	leaq	920(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L244
	movq	-24(%rbp), %rax
	leaq	784(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-24(%rbp), %rax
	addq	$600, %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-24(%rbp), %rax
	movq	704(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	movq	-24(%rbp), %rax
	movq	696(%rax), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-24(%rbp), %rax
	movq	712(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movq	-24(%rbp), %rax
	movq	800(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$861, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	808(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$862, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	672(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$864, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	680(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$865, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	864(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$868, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	840(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$870, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	872(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$871, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	addq	$920, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	$873, %ecx
	movl	$928, %esi
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	jmp	.L238
.L243:
	nop
	jmp	.L238
.L244:
	nop
.L238:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE782:
	.size	SSL_SESSION_free, .-SSL_SESSION_free
	.globl	SSL_SESSION_up_ref
	.type	SSL_SESSION_up_ref, @function
SSL_SESSION_up_ref:
.LFB783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	920(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L246
	movl	$0, %eax
	jmp	.L248
.L246:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L248:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE783:
	.size	SSL_SESSION_up_ref, .-SSL_SESSION_up_ref
	.globl	SSL_set_session
	.type	SSL_set_session, @function
SSL_set_session:
.LFB784:
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
	je	.L250
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L251
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L252
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L253
.L252:
	movq	$0, -8(%rbp)
	jmp	.L253
.L251:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L253
.L250:
	movq	$0, -8(%rbp)
.L253:
	cmpq	$0, -8(%rbp)
	jne	.L254
	movl	$0, %eax
	jmp	.L255
.L254:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_clear_bad_session@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	je	.L256
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_set_ssl_method@PLT
	testl	%eax, %eax
	jne	.L256
	movl	$0, %eax
	jmp	.L255
.L256:
	cmpq	$0, -32(%rbp)
	je	.L257
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_up_ref@PLT
	movq	-32(%rbp), %rax
	movq	720(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 2336(%rax)
.L257:
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2184(%rax)
	movl	$1, %eax
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE784:
	.size	SSL_set_session, .-SSL_set_session
	.globl	SSL_SESSION_set1_id
	.type	SSL_SESSION_set1_id, @function
SSL_SESSION_set1_id:
.LFB785:
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
	cmpl	$32, -20(%rbp)
	jbe	.L259
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$915, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$408, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L260
.L259:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rdx, 592(%rax)
	movq	-8(%rbp), %rax
	addq	$600, %rax
	cmpq	%rax, -16(%rbp)
	je	.L261
	cmpl	$0, -20(%rbp)
	je	.L261
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	600(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L261:
	movl	$1, %eax
.L260:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE785:
	.size	SSL_SESSION_set1_id, .-SSL_SESSION_set1_id
	.globl	SSL_SESSION_set_timeout
	.type	SSL_SESSION_set_timeout, @function
SSL_SESSION_set_timeout:
.LFB786:
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
	imulq	$1000000000, %rax, %rax
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L263
	cmpq	$0, -32(%rbp)
	jns	.L264
.L263:
	movl	$0, %eax
	jmp	.L269
.L264:
	movq	-24(%rbp), %rax
	movq	896(%rax), %rax
	testq	%rax, %rax
	je	.L266
	movq	-24(%rbp), %rax
	movq	896(%rax), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L267
	movl	$0, %eax
	jmp	.L269
.L267:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 728(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_session_calculate_timeout@PLT
	movq	-24(%rbp), %rax
	movq	896(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_list_add
	movq	-24(%rbp), %rax
	movq	896(%rax), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L268
.L266:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 728(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_session_calculate_timeout@PLT
.L268:
	movl	$1, %eax
.L269:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE786:
	.size	SSL_SESSION_set_timeout, .-SSL_SESSION_set_timeout
	.globl	SSL_SESSION_get_timeout
	.type	SSL_SESSION_get_timeout, @function
SSL_SESSION_get_timeout:
.LFB787:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L271
	movl	$0, %eax
	jmp	.L272
.L271:
	movq	-8(%rbp), %rax
	movq	728(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_to_time_t
	nop
.L272:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE787:
	.size	SSL_SESSION_get_timeout, .-SSL_SESSION_get_timeout
	.globl	SSL_SESSION_get_time
	.type	SSL_SESSION_get_time, @function
SSL_SESSION_get_time:
.LFB788:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_get_time_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE788:
	.size	SSL_SESSION_get_time, .-SSL_SESSION_get_time
	.globl	SSL_SESSION_get_time_ex
	.type	SSL_SESSION_get_time_ex, @function
SSL_SESSION_get_time_ex:
.LFB789:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L276
	movl	$0, %eax
	jmp	.L277
.L276:
	movq	-8(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time_to_time_t
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE789:
	.size	SSL_SESSION_get_time_ex, .-SSL_SESSION_get_time_ex
	.globl	SSL_SESSION_set_time_ex
	.type	SSL_SESSION_set_time_ex, @function
SSL_SESSION_set_time_ex:
.LFB790:
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
	call	ossl_time_from_time_t
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L279
	movl	$0, %eax
	jmp	.L284
.L279:
	movq	-24(%rbp), %rax
	movq	896(%rax), %rax
	testq	%rax, %rax
	je	.L281
	movq	-24(%rbp), %rax
	movq	896(%rax), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L282
	movl	$0, %eax
	jmp	.L284
.L282:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 736(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_session_calculate_timeout@PLT
	movq	-24(%rbp), %rax
	movq	896(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_list_add
	movq	-24(%rbp), %rax
	movq	896(%rax), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L283
.L281:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 736(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ssl_session_calculate_timeout@PLT
.L283:
	movq	-32(%rbp), %rax
.L284:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE790:
	.size	SSL_SESSION_set_time_ex, .-SSL_SESSION_set_time_ex
	.globl	SSL_SESSION_set_time
	.type	SSL_SESSION_set_time, @function
SSL_SESSION_set_time:
.LFB791:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_set_time_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE791:
	.size	SSL_SESSION_set_time, .-SSL_SESSION_set_time
	.globl	SSL_SESSION_get_protocol_version
	.type	SSL_SESSION_get_protocol_version, @function
SSL_SESSION_get_protocol_version:
.LFB792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE792:
	.size	SSL_SESSION_get_protocol_version, .-SSL_SESSION_get_protocol_version
	.globl	SSL_SESSION_set_protocol_version
	.type	SSL_SESSION_set_protocol_version, @function
SSL_SESSION_set_protocol_version:
.LFB793:
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
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE793:
	.size	SSL_SESSION_set_protocol_version, .-SSL_SESSION_set_protocol_version
	.globl	SSL_SESSION_get0_cipher
	.type	SSL_SESSION_get0_cipher, @function
SSL_SESSION_get0_cipher:
.LFB794:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	760(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE794:
	.size	SSL_SESSION_get0_cipher, .-SSL_SESSION_get0_cipher
	.globl	SSL_SESSION_set_cipher
	.type	SSL_SESSION_set_cipher, @function
SSL_SESSION_set_cipher:
.LFB795:
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
	movq	%rdx, 760(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE795:
	.size	SSL_SESSION_set_cipher, .-SSL_SESSION_set_cipher
	.globl	SSL_SESSION_get0_hostname
	.type	SSL_SESSION_get0_hostname, @function
SSL_SESSION_get0_hostname:
.LFB796:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	800(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE796:
	.size	SSL_SESSION_get0_hostname, .-SSL_SESSION_get0_hostname
	.globl	SSL_SESSION_set1_hostname
	.type	SSL_SESSION_set1_hostname, @function
SSL_SESSION_set1_hostname:
.LFB797:
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
	movq	800(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1018, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -16(%rbp)
	jne	.L298
	movq	-8(%rbp), %rax
	movq	$0, 800(%rax)
	movl	$1, %eax
	jmp	.L299
.L298:
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$1023, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 800(%rdx)
	movq	-8(%rbp), %rax
	movq	800(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L299:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE797:
	.size	SSL_SESSION_set1_hostname, .-SSL_SESSION_set1_hostname
	.globl	SSL_SESSION_has_ticket
	.type	SSL_SESSION_has_ticket, @function
SSL_SESSION_has_ticket:
.LFB798:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	816(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE798:
	.size	SSL_SESSION_has_ticket, .-SSL_SESSION_has_ticket
	.globl	SSL_SESSION_get_ticket_lifetime_hint
	.type	SSL_SESSION_get_ticket_lifetime_hint, @function
SSL_SESSION_get_ticket_lifetime_hint:
.LFB799:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	824(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE799:
	.size	SSL_SESSION_get_ticket_lifetime_hint, .-SSL_SESSION_get_ticket_lifetime_hint
	.globl	SSL_SESSION_get0_ticket
	.type	SSL_SESSION_get0_ticket, @function
SSL_SESSION_get0_ticket:
.LFB800:
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
	movq	816(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$0, -16(%rbp)
	je	.L306
	movq	-8(%rbp), %rax
	movq	808(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L306:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE800:
	.size	SSL_SESSION_get0_ticket, .-SSL_SESSION_get0_ticket
	.globl	SSL_SESSION_get_max_early_data
	.type	SSL_SESSION_get_max_early_data, @function
SSL_SESSION_get_max_early_data:
.LFB801:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	836(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE801:
	.size	SSL_SESSION_get_max_early_data, .-SSL_SESSION_get_max_early_data
	.globl	SSL_SESSION_set_max_early_data
	.type	SSL_SESSION_set_max_early_data, @function
SSL_SESSION_set_max_early_data:
.LFB802:
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
	movl	%edx, 836(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE802:
	.size	SSL_SESSION_set_max_early_data, .-SSL_SESSION_set_max_early_data
	.globl	SSL_SESSION_get0_alpn_selected
	.type	SSL_SESSION_get0_alpn_selected, @function
SSL_SESSION_get0_alpn_selected:
.LFB803:
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
	movq	840(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	848(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE803:
	.size	SSL_SESSION_get0_alpn_selected, .-SSL_SESSION_get0_alpn_selected
	.globl	SSL_SESSION_set1_alpn_selected
	.type	SSL_SESSION_set1_alpn_selected, @function
SSL_SESSION_set1_alpn_selected:
.LFB804:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	840(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1069, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpq	$0, -16(%rbp)
	je	.L313
	cmpq	$0, -24(%rbp)
	jne	.L314
.L313:
	movq	-8(%rbp), %rax
	movq	$0, 840(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 848(%rax)
	movl	$1, %eax
	jmp	.L315
.L314:
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$1075, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 840(%rdx)
	movq	-8(%rbp), %rax
	movq	840(%rax), %rax
	testq	%rax, %rax
	jne	.L316
	movq	-8(%rbp), %rax
	movq	$0, 848(%rax)
	movl	$0, %eax
	jmp	.L315
.L316:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 848(%rax)
	movl	$1, %eax
.L315:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE804:
	.size	SSL_SESSION_set1_alpn_selected, .-SSL_SESSION_set1_alpn_selected
	.globl	SSL_SESSION_get0_peer
	.type	SSL_SESSION_get0_peer, @function
SSL_SESSION_get0_peer:
.LFB805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	704(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE805:
	.size	SSL_SESSION_get0_peer, .-SSL_SESSION_get0_peer
	.globl	SSL_SESSION_get0_peer_rpk
	.type	SSL_SESSION_get0_peer_rpk, @function
SSL_SESSION_get0_peer_rpk:
.LFB806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	696(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE806:
	.size	SSL_SESSION_get0_peer_rpk, .-SSL_SESSION_get0_peer_rpk
	.globl	SSL_SESSION_set1_id_context
	.type	SSL_SESSION_set1_id_context, @function
SSL_SESSION_set1_id_context:
.LFB807:
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
	cmpl	$32, -20(%rbp)
	jbe	.L322
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1099, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$273, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L323
.L322:
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rdx, 632(%rax)
	movq	-8(%rbp), %rax
	addq	$640, %rax
	cmpq	%rax, -16(%rbp)
	je	.L324
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	leaq	640(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
.L324:
	movl	$1, %eax
.L323:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE807:
	.size	SSL_SESSION_set1_id_context, .-SSL_SESSION_set1_id_context
	.globl	SSL_SESSION_is_resumable
	.type	SSL_SESSION_is_resumable, @function
SSL_SESSION_is_resumable:
.LFB808:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	688(%rax), %eax
	testl	%eax, %eax
	jne	.L326
	movq	-8(%rbp), %rax
	movq	592(%rax), %rax
	testq	%rax, %rax
	jne	.L327
	movq	-8(%rbp), %rax
	movq	816(%rax), %rax
	testq	%rax, %rax
	je	.L326
.L327:
	movl	$1, %eax
	jmp	.L329
.L326:
	movl	$0, %eax
.L329:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE808:
	.size	SSL_SESSION_is_resumable, .-SSL_SESSION_is_resumable
	.globl	SSL_CTX_set_timeout
	.type	SSL_CTX_set_timeout, @function
SSL_CTX_set_timeout:
.LFB809:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L331
	movl	$0, %eax
	jmp	.L332
.L331:
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	imulq	$1000000000, %rax, %rax
	movq	-32(%rbp), %rbx
	movq	%rax, %rdi
	call	ossl_ticks2time
	movq	%rax, 88(%rbx)
	movq	-16(%rbp), %rax
.L332:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE809:
	.size	SSL_CTX_set_timeout, .-SSL_CTX_set_timeout
	.globl	SSL_CTX_get_timeout
	.type	SSL_CTX_get_timeout, @function
SSL_CTX_get_timeout:
.LFB810:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L334
	movl	$0, %eax
	jmp	.L335
.L334:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
.L335:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE810:
	.size	SSL_CTX_get_timeout, .-SSL_CTX_get_timeout
	.globl	SSL_set_session_secret_cb
	.type	SSL_set_session_secret_cb, @function
SSL_set_session_secret_cb:
.LFB811:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L337
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L338
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L339
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L340
.L339:
	movq	$0, -8(%rbp)
	jmp	.L340
.L338:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L340
.L337:
	movq	$0, -8(%rbp)
.L340:
	cmpq	$0, -8(%rbp)
	jne	.L341
	movl	$0, %eax
	jmp	.L342
.L341:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2632(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 2640(%rax)
	movl	$1, %eax
.L342:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE811:
	.size	SSL_set_session_secret_cb, .-SSL_set_session_secret_cb
	.globl	SSL_set_session_ticket_ext_cb
	.type	SSL_set_session_ticket_ext_cb, @function
SSL_set_session_ticket_ext_cb:
.LFB812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L344
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L345
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L346
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L347
.L346:
	movq	$0, -8(%rbp)
	jmp	.L347
.L345:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L347
.L344:
	movq	$0, -8(%rbp)
.L347:
	cmpq	$0, -8(%rbp)
	jne	.L348
	movl	$0, %eax
	jmp	.L349
.L348:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 2616(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 2624(%rax)
	movl	$1, %eax
.L349:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE812:
	.size	SSL_set_session_ticket_ext_cb, .-SSL_set_session_ticket_ext_cb
	.globl	SSL_set_session_ticket_ext
	.type	SSL_set_session_ticket_ext, @function
SSL_set_session_ticket_ext:
.LFB813:
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
	je	.L351
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L352
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L353
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L354
.L353:
	movq	$0, -8(%rbp)
	jmp	.L354
.L352:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L354
.L351:
	movq	$0, -8(%rbp)
.L354:
	cmpq	$0, -8(%rbp)
	jne	.L355
	movl	$0, %eax
	jmp	.L356
.L355:
	movq	-8(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	$768, %eax
	jle	.L357
	movq	-8(%rbp), %rax
	movq	2608(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1172, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 2608(%rax)
	movl	-36(%rbp), %eax
	cltq
	addq	$16, %rax
	leaq	.LC0(%rip), %rcx
	movl	$1175, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 2608(%rax)
	movq	-8(%rbp), %rax
	movq	2608(%rax), %rax
	testq	%rax, %rax
	jne	.L358
	movl	$0, %eax
	jmp	.L356
.L358:
	cmpq	$0, -32(%rbp)
	je	.L359
	movq	-8(%rbp), %rax
	movq	2608(%rax), %rax
	movl	-36(%rbp), %edx
	movw	%dx, (%rax)
	movq	-8(%rbp), %rax
	movq	2608(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	2608(%rax), %rax
	addq	$16, %rdx
	movq	%rdx, 8(%rax)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	2608(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L360
.L359:
	movq	-8(%rbp), %rax
	movq	2608(%rax), %rax
	movw	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	2608(%rax), %rax
	movq	$0, 8(%rax)
.L360:
	movl	$1, %eax
	jmp	.L356
.L357:
	movl	$0, %eax
.L356:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE813:
	.size	SSL_set_session_ticket_ext, .-SSL_set_session_ticket_ext
	.globl	SSL_CTX_flush_sessions
	.type	SSL_CTX_flush_sessions, @function
SSL_CTX_flush_sessions:
.LFB814:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time_from_time_t
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L370
	call	sk_SSL_SESSION_new_null
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	lh_SSL_SESSION_get_down_load
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	lh_SSL_SESSION_set_down_load
	jmp	.L364
.L369:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L365
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sess_timedout
	testl	%eax, %eax
	je	.L366
.L365:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SSL_SESSION_delete
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_list_remove
	movq	-24(%rbp), %rax
	movl	$1, 688(%rax)
	movq	-40(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L367
	movq	-40(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L367:
	cmpq	$0, -8(%rbp)
	je	.L368
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_SSL_SESSION_push
	testl	%eax, %eax
	jne	.L364
.L368:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_SESSION_free@PLT
.L364:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L369
.L366:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_SSL_SESSION_set_down_load
	movq	-40(%rbp), %rax
	movq	976(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	SSL_SESSION_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_SSL_SESSION_pop_free
	jmp	.L361
.L370:
	nop
.L361:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE814:
	.size	SSL_CTX_flush_sessions, .-SSL_CTX_flush_sessions
	.globl	ssl_clear_bad_session
	.type	ssl_clear_bad_session, @function
ssl_clear_bad_session:
.LFB815:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rax
	testq	%rax, %rax
	je	.L372
	movq	-8(%rbp), %rax
	movl	132(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L372
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_init@PLT
	testl	%eax, %eax
	jne	.L372
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	SSL_in_before@PLT
	testl	%eax, %eax
	jne	.L372
	movq	-8(%rbp), %rax
	movq	2184(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	2800(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_CTX_remove_session@PLT
	movl	$1, %eax
	jmp	.L373
.L372:
	movl	$0, %eax
.L373:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE815:
	.size	ssl_clear_bad_session, .-ssl_clear_bad_session
	.type	SSL_SESSION_list_remove, @function
SSL_SESSION_list_remove:
.LFB816:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	912(%rax), %rax
	testq	%rax, %rax
	je	.L382
	movq	-16(%rbp), %rax
	movq	904(%rax), %rax
	testq	%rax, %rax
	je	.L382
	movq	-16(%rbp), %rax
	movq	912(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$72, %rax
	cmpq	%rax, %rdx
	jne	.L378
	movq	-16(%rbp), %rax
	movq	904(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L379
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
	jmp	.L380
.L379:
	movq	-16(%rbp), %rax
	movq	904(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	904(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$72, %rdx
	movq	%rdx, 912(%rax)
	jmp	.L380
.L378:
	movq	-16(%rbp), %rax
	movq	904(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L381
	movq	-16(%rbp), %rax
	movq	912(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-16(%rbp), %rax
	movq	912(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$64, %rdx
	movq	%rdx, 904(%rax)
	jmp	.L380
.L381:
	movq	-16(%rbp), %rax
	movq	912(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	904(%rdx), %rdx
	movq	%rdx, 904(%rax)
	movq	-16(%rbp), %rax
	movq	904(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	912(%rdx), %rdx
	movq	%rdx, 912(%rax)
.L380:
	movq	-16(%rbp), %rax
	movq	$0, 912(%rax)
	movq	-16(%rbp), %rax
	movq	912(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 904(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 896(%rax)
	jmp	.L374
.L382:
	nop
.L374:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE816:
	.size	SSL_SESSION_list_remove, .-SSL_SESSION_list_remove
	.type	SSL_SESSION_list_add, @function
SSL_SESSION_list_add:
.LFB817:
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
	movq	912(%rax), %rax
	testq	%rax, %rax
	je	.L384
	movq	-32(%rbp), %rax
	movq	904(%rax), %rax
	testq	%rax, %rax
	je	.L384
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SSL_SESSION_list_remove
.L384:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L385
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 904(%rax)
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 912(%rax)
	jmp	.L386
.L385:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	timeoutcmp
	testl	%eax, %eax
	js	.L387
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 912(%rax)
	movq	-32(%rbp), %rax
	movq	912(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 904(%rax)
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 904(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 64(%rax)
	jmp	.L386
.L387:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	timeoutcmp
	testl	%eax, %eax
	jns	.L388
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 904(%rax)
	movq	-32(%rbp), %rax
	movq	904(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 912(%rax)
	movq	-24(%rbp), %rax
	leaq	72(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 912(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 72(%rax)
	jmp	.L386
.L388:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	912(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L389
.L391:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	timeoutcmp
	testl	%eax, %eax
	js	.L390
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 912(%rax)
	movq	-8(%rbp), %rax
	movq	904(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 904(%rax)
	movq	-8(%rbp), %rax
	movq	904(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 912(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 904(%rax)
	jmp	.L386
.L390:
	movq	-8(%rbp), %rax
	movq	912(%rax), %rax
	movq	%rax, -8(%rbp)
.L389:
	movq	-24(%rbp), %rax
	addq	$72, %rax
	cmpq	%rax, -8(%rbp)
	jne	.L391
.L386:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 896(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE817:
	.size	SSL_SESSION_list_add, .-SSL_SESSION_list_add
	.globl	SSL_CTX_sess_set_new_cb
	.type	SSL_CTX_sess_set_new_cb, @function
SSL_CTX_sess_set_new_cb:
.LFB818:
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
	movq	%rdx, 96(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE818:
	.size	SSL_CTX_sess_set_new_cb, .-SSL_CTX_sess_set_new_cb
	.globl	SSL_CTX_sess_get_new_cb
	.type	SSL_CTX_sess_get_new_cb, @function
SSL_CTX_sess_get_new_cb:
.LFB819:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE819:
	.size	SSL_CTX_sess_get_new_cb, .-SSL_CTX_sess_get_new_cb
	.globl	SSL_CTX_sess_set_remove_cb
	.type	SSL_CTX_sess_set_remove_cb, @function
SSL_CTX_sess_set_remove_cb:
.LFB820:
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
	movq	%rdx, 104(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE820:
	.size	SSL_CTX_sess_set_remove_cb, .-SSL_CTX_sess_set_remove_cb
	.globl	SSL_CTX_sess_get_remove_cb
	.type	SSL_CTX_sess_get_remove_cb, @function
SSL_CTX_sess_get_remove_cb:
.LFB821:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE821:
	.size	SSL_CTX_sess_get_remove_cb, .-SSL_CTX_sess_get_remove_cb
	.globl	SSL_CTX_sess_set_get_cb
	.type	SSL_CTX_sess_set_get_cb, @function
SSL_CTX_sess_set_get_cb:
.LFB822:
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
	movq	%rdx, 112(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE822:
	.size	SSL_CTX_sess_set_get_cb, .-SSL_CTX_sess_set_get_cb
	.globl	SSL_CTX_sess_get_get_cb
	.type	SSL_CTX_sess_get_get_cb, @function
SSL_CTX_sess_get_get_cb:
.LFB823:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE823:
	.size	SSL_CTX_sess_get_get_cb, .-SSL_CTX_sess_get_get_cb
	.globl	SSL_CTX_set_info_callback
	.type	SSL_CTX_set_info_callback, @function
SSL_CTX_set_info_callback:
.LFB824:
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
	movq	%rdx, 288(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE824:
	.size	SSL_CTX_set_info_callback, .-SSL_CTX_set_info_callback
	.globl	SSL_CTX_get_info_callback
	.type	SSL_CTX_get_info_callback, @function
SSL_CTX_get_info_callback:
.LFB825:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE825:
	.size	SSL_CTX_get_info_callback, .-SSL_CTX_get_info_callback
	.globl	SSL_CTX_set_client_cert_cb
	.type	SSL_CTX_set_client_cert_cb, @function
SSL_CTX_set_client_cert_cb:
.LFB826:
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
	movq	%rdx, 200(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE826:
	.size	SSL_CTX_set_client_cert_cb, .-SSL_CTX_set_client_cert_cb
	.globl	SSL_CTX_get_client_cert_cb
	.type	SSL_CTX_get_client_cert_cb, @function
SSL_CTX_get_client_cert_cb:
.LFB827:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE827:
	.size	SSL_CTX_get_client_cert_cb, .-SSL_CTX_get_client_cert_cb
	.globl	SSL_CTX_set_cookie_generate_cb
	.type	SSL_CTX_set_cookie_generate_cb, @function
SSL_CTX_set_cookie_generate_cb:
.LFB828:
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
	movq	%rdx, 208(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE828:
	.size	SSL_CTX_set_cookie_generate_cb, .-SSL_CTX_set_cookie_generate_cb
	.globl	SSL_CTX_set_cookie_verify_cb
	.type	SSL_CTX_set_cookie_verify_cb, @function
SSL_CTX_set_cookie_verify_cb:
.LFB829:
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
	movq	%rdx, 216(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE829:
	.size	SSL_CTX_set_cookie_verify_cb, .-SSL_CTX_set_cookie_verify_cb
	.globl	SSL_SESSION_set1_ticket_appdata
	.type	SSL_SESSION_set1_ticket_appdata, @function
SSL_SESSION_set1_ticket_appdata:
.LFB830:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	872(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$1412, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, 880(%rax)
	cmpq	$0, -16(%rbp)
	je	.L410
	cmpq	$0, -24(%rbp)
	jne	.L411
.L410:
	movq	-8(%rbp), %rax
	movq	$0, 872(%rax)
	movl	$1, %eax
	jmp	.L412
.L411:
	leaq	.LC0(%rip), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	$1418, %ecx
	movq	%rax, %rdi
	call	CRYPTO_memdup@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 872(%rdx)
	movq	-8(%rbp), %rax
	movq	872(%rax), %rax
	testq	%rax, %rax
	je	.L413
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 880(%rax)
	movl	$1, %eax
	jmp	.L412
.L413:
	movl	$0, %eax
.L412:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE830:
	.size	SSL_SESSION_set1_ticket_appdata, .-SSL_SESSION_set1_ticket_appdata
	.globl	SSL_SESSION_get0_ticket_appdata
	.type	SSL_SESSION_get0_ticket_appdata, @function
SSL_SESSION_get0_ticket_appdata:
.LFB831:
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
	movq	872(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	880(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE831:
	.size	SSL_SESSION_get0_ticket_appdata, .-SSL_SESSION_get0_ticket_appdata
	.globl	SSL_CTX_set_stateless_cookie_generate_cb
	.type	SSL_CTX_set_stateless_cookie_generate_cb, @function
SSL_CTX_set_stateless_cookie_generate_cb:
.LFB832:
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
	movq	%rdx, 224(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE832:
	.size	SSL_CTX_set_stateless_cookie_generate_cb, .-SSL_CTX_set_stateless_cookie_generate_cb
	.globl	SSL_CTX_set_stateless_cookie_verify_cb
	.type	SSL_CTX_set_stateless_cookie_verify_cb, @function
SSL_CTX_set_stateless_cookie_verify_cb:
.LFB833:
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
	movq	%rdx, 232(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE833:
	.size	SSL_CTX_set_stateless_cookie_verify_cb, .-SSL_CTX_set_stateless_cookie_verify_cb
	.section	.rodata
.LC1:
	.string	"SSL SESSION PARAMETERS"
	.text
	.globl	PEM_read_bio_SSL_SESSION
	.type	PEM_read_bio_SSL_SESSION, @function
PEM_read_bio_SSL_SESSION:
.LFB834:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	d2i_SSL_SESSION@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read_bio@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE834:
	.size	PEM_read_bio_SSL_SESSION, .-PEM_read_bio_SSL_SESSION
	.globl	PEM_read_SSL_SESSION
	.type	PEM_read_SSL_SESSION, @function
PEM_read_SSL_SESSION:
.LFB835:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	d2i_SSL_SESSION@GOTPCREL(%rip), %r8
	movq	%r8, %r10
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%r10, %rdi
	call	PEM_ASN1_read@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE835:
	.size	PEM_read_SSL_SESSION, .-PEM_read_SSL_SESSION
	.globl	PEM_write_bio_SSL_SESSION
	.type	PEM_write_bio_SSL_SESSION, @function
PEM_write_bio_SSL_SESSION:
.LFB836:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	i2d_SSL_SESSION@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write_bio@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE836:
	.size	PEM_write_bio_SSL_SESSION, .-PEM_write_bio_SSL_SESSION
	.globl	PEM_write_SSL_SESSION
	.type	PEM_write_SSL_SESSION, @function
PEM_write_SSL_SESSION:
.LFB837:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	i2d_SSL_SESSION@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdi
	subq	$8, %rsp
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	PEM_ASN1_write@PLT
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE837:
	.size	PEM_write_SSL_SESSION, .-PEM_write_SSL_SESSION
	.section	.rodata
	.align 16
	.type	__func__.5, @object
	.size	__func__.5, 23
__func__.5:
	.string	"ssl_session_dup_intern"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 24
__func__.4:
	.string	"ssl_generate_session_id"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 20
__func__.3:
	.string	"ssl_get_new_session"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 21
__func__.2:
	.string	"ssl_get_prev_session"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 20
__func__.1:
	.string	"SSL_SESSION_set1_id"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 28
__func__.0:
	.string	"SSL_SESSION_set1_id_context"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
