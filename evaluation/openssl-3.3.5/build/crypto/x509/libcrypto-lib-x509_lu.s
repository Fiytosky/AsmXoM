	.file	"x509_lu.c"
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
	.type	CRYPTO_UP_REF, @function
CRYPTO_UP_REF:
.LFB160:
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
.LFE160:
	.size	CRYPTO_UP_REF, .-CRYPTO_UP_REF
	.type	CRYPTO_DOWN_REF, @function
CRYPTO_DOWN_REF:
.LFB161:
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
	jne	.L8
.L8:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_NEW_REF, @function
CRYPTO_NEW_REF:
.LFB163:
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
.LFE163:
	.size	CRYPTO_NEW_REF, .-CRYPTO_NEW_REF
	.type	CRYPTO_FREE_REF, @function
CRYPTO_FREE_REF:
.LFB164:
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
.LFE164:
	.size	CRYPTO_FREE_REF, .-CRYPTO_FREE_REF
	.type	ossl_check_X509_CRL_type, @function
ossl_check_X509_CRL_type:
.LFB425:
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
.LFE425:
	.size	ossl_check_X509_CRL_type, .-ossl_check_X509_CRL_type
	.type	ossl_check_X509_CRL_sk_type, @function
ossl_check_X509_CRL_sk_type:
.LFB427:
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
.LFE427:
	.size	ossl_check_X509_CRL_sk_type, .-ossl_check_X509_CRL_sk_type
	.type	ossl_check_X509_CRL_freefunc_type, @function
ossl_check_X509_CRL_freefunc_type:
.LFB430:
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
.LFE430:
	.size	ossl_check_X509_CRL_freefunc_type, .-ossl_check_X509_CRL_freefunc_type
	.type	ossl_check_X509_LOOKUP_type, @function
ossl_check_X509_LOOKUP_type:
.LFB455:
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
.LFE455:
	.size	ossl_check_X509_LOOKUP_type, .-ossl_check_X509_LOOKUP_type
	.type	ossl_check_const_X509_LOOKUP_sk_type, @function
ossl_check_const_X509_LOOKUP_sk_type:
.LFB456:
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
.LFE456:
	.size	ossl_check_const_X509_LOOKUP_sk_type, .-ossl_check_const_X509_LOOKUP_sk_type
	.type	ossl_check_X509_LOOKUP_sk_type, @function
ossl_check_X509_LOOKUP_sk_type:
.LFB457:
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
.LFE457:
	.size	ossl_check_X509_LOOKUP_sk_type, .-ossl_check_X509_LOOKUP_sk_type
	.type	ossl_check_X509_OBJECT_type, @function
ossl_check_X509_OBJECT_type:
.LFB461:
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
.LFE461:
	.size	ossl_check_X509_OBJECT_type, .-ossl_check_X509_OBJECT_type
	.type	ossl_check_const_X509_OBJECT_sk_type, @function
ossl_check_const_X509_OBJECT_sk_type:
.LFB462:
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
.LFE462:
	.size	ossl_check_const_X509_OBJECT_sk_type, .-ossl_check_const_X509_OBJECT_sk_type
	.type	ossl_check_X509_OBJECT_sk_type, @function
ossl_check_X509_OBJECT_sk_type:
.LFB463:
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
.LFE463:
	.size	ossl_check_X509_OBJECT_sk_type, .-ossl_check_X509_OBJECT_sk_type
	.type	ossl_check_X509_OBJECT_compfunc_type, @function
ossl_check_X509_OBJECT_compfunc_type:
.LFB464:
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
.LFE464:
	.size	ossl_check_X509_OBJECT_compfunc_type, .-ossl_check_X509_OBJECT_compfunc_type
	.type	ossl_check_X509_OBJECT_copyfunc_type, @function
ossl_check_X509_OBJECT_copyfunc_type:
.LFB465:
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
.LFE465:
	.size	ossl_check_X509_OBJECT_copyfunc_type, .-ossl_check_X509_OBJECT_copyfunc_type
	.type	ossl_check_X509_OBJECT_freefunc_type, @function
ossl_check_X509_OBJECT_freefunc_type:
.LFB466:
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
.LFE466:
	.size	ossl_check_X509_OBJECT_freefunc_type, .-ossl_check_X509_OBJECT_freefunc_type
	.section	.rodata
.LC0:
	.string	"../crypto/x509/x509_lu.c"
	.text
	.globl	X509_LOOKUP_new
	.type	X509_LOOKUP_new, @function
X509_LOOKUP_new:
.LFB697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$20, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L40
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$27, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L39
.L40:
	movq	-8(%rbp), %rax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE697:
	.size	X509_LOOKUP_new, .-X509_LOOKUP_new
	.globl	X509_LOOKUP_free
	.type	X509_LOOKUP_free, @function
X509_LOOKUP_free:
.LFB698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L45
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L44:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$39, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L41
.L45:
	nop
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE698:
	.size	X509_LOOKUP_free, .-X509_LOOKUP_free
	.globl	X509_STORE_lock
	.type	X509_STORE_lock, @function
X509_STORE_lock:
.LFB699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE699:
	.size	X509_STORE_lock, .-X509_STORE_lock
	.globl	ossl_x509_store_read_lock
	.type	ossl_x509_store_read_lock, @function
ossl_x509_store_read_lock:
.LFB700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE700:
	.size	ossl_x509_store_read_lock, .-ossl_x509_store_read_lock
	.globl	X509_STORE_unlock
	.type	X509_STORE_unlock, @function
X509_STORE_unlock:
.LFB701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE701:
	.size	X509_STORE_unlock, .-X509_STORE_unlock
	.globl	X509_LOOKUP_init
	.type	X509_LOOKUP_init, @function
X509_LOOKUP_init:
.LFB702:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L53
	movl	$0, %eax
	jmp	.L54
.L53:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L54
.L55:
	movl	$1, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE702:
	.size	X509_LOOKUP_init, .-X509_LOOKUP_init
	.globl	X509_LOOKUP_shutdown
	.type	X509_LOOKUP_shutdown, @function
X509_LOOKUP_shutdown:
.LFB703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L57
	movl	$0, %eax
	jmp	.L58
.L57:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L59
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	jmp	.L58
.L59:
	movl	$1, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE703:
	.size	X509_LOOKUP_shutdown, .-X509_LOOKUP_shutdown
	.globl	X509_LOOKUP_ctrl_ex
	.type	X509_LOOKUP_ctrl_ex, @function
X509_LOOKUP_ctrl_ex:
.LFB704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L61
	movl	$-1, %eax
	jmp	.L62
.L61:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %r10
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	jmp	.L62
.L63:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %r9
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
	jmp	.L62
.L64:
	movl	$1, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE704:
	.size	X509_LOOKUP_ctrl_ex, .-X509_LOOKUP_ctrl_ex
	.globl	X509_LOOKUP_ctrl
	.type	X509_LOOKUP_ctrl, @function
X509_LOOKUP_ctrl:
.LFB705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	X509_LOOKUP_ctrl_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE705:
	.size	X509_LOOKUP_ctrl, .-X509_LOOKUP_ctrl
	.globl	X509_LOOKUP_by_subject_ex
	.type	X509_LOOKUP_by_subject_ex, @function
X509_LOOKUP_by_subject_ex:
.LFB706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L68
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L69
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L69
.L68:
	movl	$0, %eax
	jmp	.L70
.L69:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %r10
	movq	-48(%rbp), %r8
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	jmp	.L70
.L71:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE706:
	.size	X509_LOOKUP_by_subject_ex, .-X509_LOOKUP_by_subject_ex
	.globl	X509_LOOKUP_by_subject
	.type	X509_LOOKUP_by_subject, @function
X509_LOOKUP_by_subject:
.LFB707:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	X509_LOOKUP_by_subject_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE707:
	.size	X509_LOOKUP_by_subject, .-X509_LOOKUP_by_subject
	.globl	X509_LOOKUP_by_issuer_serial
	.type	X509_LOOKUP_by_issuer_serial, @function
X509_LOOKUP_by_issuer_serial:
.LFB708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L75
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L76
.L75:
	movl	$0, %eax
	jmp	.L77
.L76:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %r9
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE708:
	.size	X509_LOOKUP_by_issuer_serial, .-X509_LOOKUP_by_issuer_serial
	.globl	X509_LOOKUP_by_fingerprint
	.type	X509_LOOKUP_by_fingerprint, @function
X509_LOOKUP_by_fingerprint:
.LFB709:
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
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L80
.L79:
	movl	$0, %eax
	jmp	.L81
.L80:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %r9
	movq	-32(%rbp), %rdi
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE709:
	.size	X509_LOOKUP_by_fingerprint, .-X509_LOOKUP_by_fingerprint
	.globl	X509_LOOKUP_by_alias
	.type	X509_LOOKUP_by_alias, @function
X509_LOOKUP_by_alias:
.LFB710:
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
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L83
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L84
.L83:
	movl	$0, %eax
	jmp	.L85
.L84:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %r9
	movq	-32(%rbp), %rdi
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r9
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE710:
	.size	X509_LOOKUP_by_alias, .-X509_LOOKUP_by_alias
	.globl	X509_LOOKUP_set_method_data
	.type	X509_LOOKUP_set_method_data, @function
X509_LOOKUP_set_method_data:
.LFB711:
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
	movq	%rdx, 16(%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE711:
	.size	X509_LOOKUP_set_method_data, .-X509_LOOKUP_set_method_data
	.globl	X509_LOOKUP_get_method_data
	.type	X509_LOOKUP_get_method_data, @function
X509_LOOKUP_get_method_data:
.LFB712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE712:
	.size	X509_LOOKUP_get_method_data, .-X509_LOOKUP_get_method_data
	.globl	X509_LOOKUP_get_store
	.type	X509_LOOKUP_get_store, @function
X509_LOOKUP_get_store:
.LFB713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE713:
	.size	X509_LOOKUP_get_store, .-X509_LOOKUP_get_store
	.type	x509_object_cmp, @function
x509_object_cmp:
.LFB714:
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
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L93
	movl	-4(%rbp), %eax
	jmp	.L94
.L93:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L95
	cmpl	$2, %eax
	ja	.L96
	testl	%eax, %eax
	je	.L97
	cmpl	$1, %eax
	jne	.L96
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_subject_name_cmp@PLT
	movl	%eax, -4(%rbp)
	jmp	.L96
.L95:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_cmp@PLT
	movl	%eax, -4(%rbp)
	jmp	.L96
.L97:
	movl	$0, %eax
	jmp	.L94
.L96:
	movl	-4(%rbp), %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE714:
	.size	x509_object_cmp, .-x509_object_cmp
	.globl	X509_STORE_new
	.type	X509_STORE_new, @function
X509_STORE_new:
.LFB715:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$184, %edx
	movq	%rax, %rsi
	movl	$160, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L99
	movl	$0, %eax
	jmp	.L100
.L99:
	leaq	x509_object_cmp(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_compfunc_type
	movq	%rax, %rdi
	call	OPENSSL_sk_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L101
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$189, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L101:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	call	OPENSSL_sk_new_null@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L103:
	call	X509_VERIFY_PARAM_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L104
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$199, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L104:
	movq	-8(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	jne	.L105
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$203, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L105:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 152(%rdx)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	jne	.L106
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$209, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L102
.L106:
	movq	-8(%rbp), %rax
	addq	$144, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	je	.L108
	movq	-8(%rbp), %rax
	jmp	.L100
.L108:
	nop
.L102:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_LOOKUP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$222, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE715:
	.size	X509_STORE_new, .-X509_STORE_new
	.globl	X509_STORE_free
	.type	X509_STORE_free, @function
X509_STORE_free:
.LFB716:
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
	cmpq	$0, -56(%rbp)
	je	.L116
	movq	-56(%rbp), %rax
	leaq	144(%rax), %rdx
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jg	.L117
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L113
.L114:
	movl	-36(%rbp), %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_LOOKUP_sk_type
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_LOOKUP_shutdown@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_LOOKUP_free@PLT
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.L113:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_LOOKUP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L114
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_LOOKUP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	X509_OBJECT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_freefunc_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movq	-56(%rbp), %rax
	leaq	128(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_free@PLT
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-56(%rbp), %rax
	addq	$144, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$253, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L109
.L116:
	nop
	jmp	.L109
.L117:
	nop
.L109:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE716:
	.size	X509_STORE_free, .-X509_STORE_free
	.globl	X509_STORE_up_ref
	.type	X509_STORE_up_ref, @function
X509_STORE_up_ref:
.LFB717:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	144(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L119
	movl	$0, %eax
	jmp	.L121
.L119:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE717:
	.size	X509_STORE_up_ref, .-X509_STORE_up_ref
	.globl	X509_STORE_add_lookup
	.type	X509_STORE_add_lookup, @function
X509_STORE_add_lookup:
.LFB718:
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
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L123
.L126:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_LOOKUP_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -64(%rbp)
	jne	.L124
	movq	-40(%rbp), %rax
	jmp	.L125
.L124:
	addl	$1, -20(%rbp)
.L123:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_LOOKUP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -20(%rbp)
	jl	.L126
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_LOOKUP_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L127
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$284, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L125
.L127:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_LOOKUP_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_LOOKUP_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L128
	movq	-40(%rbp), %rax
	jmp	.L125
.L128:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$292, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_LOOKUP_free@PLT
	movl	$0, %eax
.L125:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE718:
	.size	X509_STORE_add_lookup, .-X509_STORE_add_lookup
	.globl	X509_STORE_CTX_get_obj_by_subject
	.type	X509_STORE_CTX_get_obj_by_subject, @function
X509_STORE_CTX_get_obj_by_subject:
.LFB719:
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
	call	X509_OBJECT_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L130
	movl	$0, %eax
	jmp	.L131
.L130:
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_by_subject@PLT
	testl	%eax, %eax
	jne	.L132
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	movl	$0, %eax
	jmp	.L131
.L132:
	movq	-8(%rbp), %rax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE719:
	.size	X509_STORE_CTX_get_obj_by_subject, .-X509_STORE_CTX_get_obj_by_subject
	.type	ossl_x509_store_ctx_get_by_subject, @function
ossl_x509_store_ctx_get_by_subject:
.LFB720:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L134
	movl	$0, %eax
	jmp	.L148
.L134:
	movl	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509_store_read_lock@PLT
	testl	%eax, %eax
	jne	.L136
	movl	$0, %eax
	jmp	.L148
.L136:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_is_sorted@PLT
	testl	%eax, %eax
	jne	.L137
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_lock@PLT
	testl	%eax, %eax
	jne	.L138
	movl	$0, %eax
	jmp	.L148
.L138:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
.L137:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_OBJECT_retrieve_by_subject@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	cmpq	$0, -8(%rbp)
	je	.L139
	cmpl	$2, -76(%rbp)
	jne	.L140
.L139:
	movl	$0, -12(%rbp)
	jmp	.L141
.L146:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_LOOKUP_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L149
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L144
	movl	$-1, %eax
	jmp	.L148
.L144:
	movq	-72(%rbp), %rax
	movq	272(%rax), %r8
	movq	-72(%rbp), %rax
	movq	264(%rax), %rdi
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %esi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	X509_LOOKUP_by_subject_ex@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L143
	leaq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L145
.L149:
	nop
.L143:
	addl	$1, -12(%rbp)
.L141:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_LOOKUP_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L146
.L145:
	cmpq	$0, -8(%rbp)
	jne	.L140
	movl	$0, %eax
	jmp	.L148
.L140:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_up_ref_count@PLT
	testl	%eax, %eax
	jne	.L147
	movl	$-1, %eax
	jmp	.L148
.L147:
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE720:
	.size	ossl_x509_store_ctx_get_by_subject, .-ossl_x509_store_ctx_get_by_subject
	.globl	X509_STORE_CTX_get_by_subject
	.type	X509_STORE_CTX_get_by_subject, @function
X509_STORE_CTX_get_by_subject:
.LFB721:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509_store_ctx_get_by_subject
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE721:
	.size	X509_STORE_CTX_get_by_subject, .-X509_STORE_CTX_get_by_subject
	.type	x509_store_add, @function
x509_store_add:
.LFB722:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L153
	movl	$0, %eax
	jmp	.L154
.L153:
	call	X509_OBJECT_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L155
	movl	$0, %eax
	jmp	.L154
.L155:
	cmpl	$0, -52(%rbp)
	je	.L156
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L157
.L156:
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L157:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_up_ref_count@PLT
	testl	%eax, %eax
	jne	.L158
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	movl	$0, %eax
	jmp	.L154
.L158:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_lock@PLT
	testl	%eax, %eax
	jne	.L159
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	movl	$0, %eax
	jmp	.L154
.L159:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_OBJECT_retrieve_match@PLT
	testq	%rax, %rax
	je	.L160
	movl	$1, -20(%rbp)
	jmp	.L161
.L160:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
.L161:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	cmpl	$0, -24(%rbp)
	jne	.L162
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
.L162:
	movl	-20(%rbp), %eax
.L154:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE722:
	.size	x509_store_add, .-x509_store_add
	.globl	X509_STORE_add_cert
	.type	X509_STORE_add_cert, @function
X509_STORE_add_cert:
.LFB723:
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
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	x509_store_add
	testl	%eax, %eax
	jne	.L164
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$432, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L165
.L164:
	movl	$1, %eax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE723:
	.size	X509_STORE_add_cert, .-X509_STORE_add_cert
	.globl	X509_STORE_add_crl
	.type	X509_STORE_add_crl, @function
X509_STORE_add_crl:
.LFB724:
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
	call	x509_store_add
	testl	%eax, %eax
	jne	.L167
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$441, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524299, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L168
.L167:
	movl	$1, %eax
.L168:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE724:
	.size	X509_STORE_add_crl, .-X509_STORE_add_crl
	.globl	X509_OBJECT_up_ref_count
	.type	X509_OBJECT_up_ref_count, @function
X509_OBJECT_up_ref_count:
.LFB725:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L170
	cmpl	$2, %eax
	ja	.L171
	testl	%eax, %eax
	je	.L175
	cmpl	$1, %eax
	jne	.L171
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	jmp	.L174
.L170:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_CRL_up_ref@PLT
	jmp	.L174
.L175:
	nop
.L171:
	movl	$1, %eax
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE725:
	.size	X509_OBJECT_up_ref_count, .-X509_OBJECT_up_ref_count
	.globl	X509_OBJECT_get0_X509
	.type	X509_OBJECT_get0_X509, @function
X509_OBJECT_get0_X509:
.LFB726:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L177
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L178
.L177:
	movl	$0, %eax
	jmp	.L179
.L178:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L179:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE726:
	.size	X509_OBJECT_get0_X509, .-X509_OBJECT_get0_X509
	.globl	X509_OBJECT_get0_X509_CRL
	.type	X509_OBJECT_get0_X509_CRL, @function
X509_OBJECT_get0_X509_CRL:
.LFB727:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L181
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L182
.L181:
	movl	$0, %eax
	jmp	.L183
.L182:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L183:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE727:
	.size	X509_OBJECT_get0_X509_CRL, .-X509_OBJECT_get0_X509_CRL
	.globl	X509_OBJECT_get_type
	.type	X509_OBJECT_get_type, @function
X509_OBJECT_get_type:
.LFB728:
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
.LFE728:
	.size	X509_OBJECT_get_type, .-X509_OBJECT_get_type
	.globl	X509_OBJECT_new
	.type	X509_OBJECT_new, @function
X509_OBJECT_new:
.LFB729:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$481, %edx
	movq	%rax, %rsi
	movl	$16, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L187
	movl	$0, %eax
	jmp	.L188
.L187:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE729:
	.size	X509_OBJECT_new, .-X509_OBJECT_new
	.type	x509_object_free_internal, @function
x509_object_free_internal:
.LFB730:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L195
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L192
	cmpl	$2, %eax
	ja	.L189
	testl	%eax, %eax
	je	.L196
	cmpl	$1, %eax
	jne	.L189
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_free@PLT
	jmp	.L189
.L192:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	jmp	.L189
.L195:
	nop
	jmp	.L189
.L196:
	nop
.L189:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE730:
	.size	x509_object_free_internal, .-x509_object_free_internal
	.globl	X509_OBJECT_set1_X509
	.type	X509_OBJECT_set1_X509, @function
X509_OBJECT_set1_X509:
.LFB731:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L198
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	jne	.L199
.L198:
	movl	$0, %eax
	jmp	.L200
.L199:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	x509_object_free_internal
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L200:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE731:
	.size	X509_OBJECT_set1_X509, .-X509_OBJECT_set1_X509
	.globl	X509_OBJECT_set1_X509_CRL
	.type	X509_OBJECT_set1_X509_CRL, @function
X509_OBJECT_set1_X509_CRL:
.LFB732:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L202
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_up_ref@PLT
	testl	%eax, %eax
	jne	.L203
.L202:
	movl	$0, %eax
	jmp	.L204
.L203:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	x509_object_free_internal
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$1, %eax
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE732:
	.size	X509_OBJECT_set1_X509_CRL, .-X509_OBJECT_set1_X509_CRL
	.globl	X509_OBJECT_free
	.type	X509_OBJECT_free, @function
X509_OBJECT_free:
.LFB733:
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
	call	x509_object_free_internal
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$530, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE733:
	.size	X509_OBJECT_free, .-X509_OBJECT_free
	.type	x509_object_idx_cnt, @function
x509_object_idx_cnt:
.LFB734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$696, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -680(%rbp)
	movl	%esi, -684(%rbp)
	movq	%rdx, -696(%rbp)
	movq	%rcx, -704(%rbp)
	movl	-684(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$1, -684(%rbp)
	je	.L207
	cmpl	$2, -684(%rbp)
	je	.L208
	jmp	.L213
.L207:
	leaq	-416(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -344(%rbp)
	jmp	.L210
.L208:
	leaq	-672(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-696(%rbp), %rax
	movq	%rax, -648(%rbp)
	jmp	.L210
.L213:
	movl	$-1, %eax
	jmp	.L212
.L210:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_type
	movq	%rax, %rbx
	movq	-680(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rax, %rcx
	movq	-704(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	OPENSSL_sk_find_all@PLT
.L212:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE734:
	.size	x509_object_idx_cnt, .-x509_object_idx_cnt
	.globl	X509_OBJECT_idx_by_subject
	.type	X509_OBJECT_idx_by_subject, @function
X509_OBJECT_idx_by_subject:
.LFB735:
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
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	x509_object_idx_cnt
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE735:
	.size	X509_OBJECT_idx_by_subject, .-X509_OBJECT_idx_by_subject
	.globl	X509_OBJECT_retrieve_by_subject
	.type	X509_OBJECT_retrieve_by_subject, @function
X509_OBJECT_retrieve_by_subject:
.LFB736:
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
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	X509_OBJECT_idx_by_subject@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L217
	movl	$0, %eax
	jmp	.L218
.L217:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	nop
.L218:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE736:
	.size	X509_OBJECT_retrieve_by_subject, .-X509_OBJECT_retrieve_by_subject
	.globl	X509_STORE_get0_objects
	.type	X509_STORE_get0_objects, @function
X509_STORE_get0_objects:
.LFB737:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE737:
	.size	X509_STORE_get0_objects, .-X509_STORE_get0_objects
	.type	x509_object_dup, @function
x509_object_dup:
.LFB738:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	X509_OBJECT_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L222
	movl	$0, %eax
	jmp	.L223
.L222:
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_up_ref_count@PLT
	movq	-8(%rbp), %rax
.L223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE738:
	.size	x509_object_dup, .-x509_object_dup
	.globl	X509_STORE_get1_objects
	.type	X509_STORE_get1_objects, @function
X509_STORE_get1_objects:
.LFB739:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L225
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$602, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L226
.L225:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_x509_store_read_lock@PLT
	testl	%eax, %eax
	jne	.L227
	movl	$0, %eax
	jmp	.L226
.L227:
	movq	X509_OBJECT_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_freefunc_type
	movq	%rax, %r12
	leaq	x509_object_dup(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_copyfunc_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_deep_copy@PLT
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	movq	-24(%rbp), %rax
.L226:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE739:
	.size	X509_STORE_get1_objects, .-X509_STORE_get1_objects
	.globl	X509_STORE_get1_all_certs
	.type	X509_STORE_get1_all_certs, @function
X509_STORE_get1_all_certs:
.LFB740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L229
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$622, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$11, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L230
.L229:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L231
	movl	$0, %eax
	jmp	.L230
.L231:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_lock@PLT
	testl	%eax, %eax
	je	.L239
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_get0_objects@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L234
.L237:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdi
	call	X509_OBJECT_get0_X509@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L235
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_cert@PLT
	testl	%eax, %eax
	je	.L240
.L235:
	addl	$1, -4(%rbp)
.L234:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L237
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	movq	-16(%rbp), %rax
	jmp	.L230
.L240:
	nop
.L236:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	jmp	.L233
.L239:
	nop
.L233:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	$0, %eax
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE740:
	.size	X509_STORE_get1_all_certs, .-X509_STORE_get1_all_certs
	.globl	X509_STORE_CTX_get1_certs
	.type	X509_STORE_CTX_get1_certs, @function
X509_STORE_CTX_get1_certs:
.LFB741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L242
	call	OPENSSL_sk_new_null@PLT
	jmp	.L256
.L242:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_lock@PLT
	testl	%eax, %eax
	jne	.L244
	movl	$0, %eax
	jmp	.L256
.L244:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-52(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	x509_object_idx_cnt
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L245
	call	X509_OBJECT_new@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	cmpq	$0, -32(%rbp)
	jne	.L246
	movl	$0, %eax
	jmp	.L256
.L246:
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_x509_store_ctx_get_by_subject
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L247
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	cmpl	$0, -4(%rbp)
	js	.L248
	call	OPENSSL_sk_new_null@PLT
	jmp	.L256
.L248:
	movl	$0, %eax
	jmp	.L256
.L247:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_lock@PLT
	testl	%eax, %eax
	jne	.L250
	movl	$0, %eax
	jmp	.L256
.L250:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-52(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	x509_object_idx_cnt
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L245
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -16(%rbp)
	jmp	.L251
.L245:
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L257
	movl	$0, -4(%rbp)
	jmp	.L253
.L255:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	X509_add_cert@PLT
	testl	%eax, %eax
	jne	.L254
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_STACK_OF_X509_free@PLT
	movl	$0, %eax
	jmp	.L256
.L254:
	addl	$1, -4(%rbp)
	addl	$1, -8(%rbp)
.L253:
	movl	-52(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L255
	jmp	.L251
.L257:
	nop
.L251:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	movq	-16(%rbp), %rax
.L256:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE741:
	.size	X509_STORE_CTX_get1_certs, .-X509_STORE_CTX_get1_certs
	.globl	X509_STORE_CTX_get1_crls
	.type	X509_STORE_CTX_get1_crls, @function
X509_STORE_CTX_get1_crls:
.LFB742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$1, -20(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -32(%rbp)
	call	X509_OBJECT_new@PLT
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L259
	cmpq	$0, -40(%rbp)
	je	.L259
	movq	-40(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_x509_store_ctx_get_by_subject
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L260
.L259:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L269
.L260:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	cmpl	$0, -20(%rbp)
	jne	.L262
	movq	-32(%rbp), %rax
	jmp	.L269
.L262:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_lock@PLT
	testl	%eax, %eax
	jne	.L263
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, %eax
	jmp	.L269
.L263:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-68(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movl	$2, %esi
	movq	%rax, %rdi
	call	x509_object_idx_cnt
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L264
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	movq	-32(%rbp), %rax
	jmp	.L269
.L264:
	movl	$0, -20(%rbp)
	jmp	.L265
.L268:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_up_ref@PLT
	testl	%eax, %eax
	jne	.L266
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	movq	X509_CRL_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
	jmp	.L269
.L266:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L267
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	X509_CRL_free@PLT
	movq	X509_CRL_free@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_freefunc_type
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_CRL_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_pop_free@PLT
	movl	$0, %eax
	jmp	.L269
.L267:
	addl	$1, -20(%rbp)
	addl	$1, -24(%rbp)
.L265:
	movl	-68(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L268
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	movq	-32(%rbp), %rax
.L269:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE742:
	.size	X509_STORE_CTX_get1_crls, .-X509_STORE_CTX_get1_crls
	.globl	X509_OBJECT_retrieve_match
	.type	X509_OBJECT_retrieve_match, @function
X509_OBJECT_retrieve_match:
.LFB743:
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
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_type
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_find@PLT
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L271
	movl	$0, %eax
	jmp	.L280
.L271:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L273
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L273
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	jmp	.L280
.L273:
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -28(%rbp)
	jmp	.L274
.L279:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	x509_object_cmp
	testl	%eax, %eax
	je	.L275
	movl	$0, %eax
	jmp	.L280
.L275:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L276
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_cmp@PLT
	testl	%eax, %eax
	jne	.L277
	movq	-40(%rbp), %rax
	jmp	.L280
.L276:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L278
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_CRL_match@PLT
	testl	%eax, %eax
	jne	.L277
	movq	-40(%rbp), %rax
	jmp	.L280
.L278:
	movq	-40(%rbp), %rax
	jmp	.L280
.L277:
	addl	$1, -20(%rbp)
.L274:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L279
	movl	$0, %eax
.L280:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE743:
	.size	X509_OBJECT_retrieve_match, .-X509_OBJECT_retrieve_match
	.globl	X509_STORE_CTX_get1_issuer
	.type	X509_STORE_CTX_get1_issuer, @function
X509_STORE_CTX_get1_issuer:
.LFB744:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	call	X509_OBJECT_new@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L282
	movl	$-1, %eax
	jmp	.L296
.L282:
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	X509_get_issuer_name@PLT
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_x509_store_ctx_get_by_subject
	movl	%eax, -60(%rbp)
	cmpl	$1, -60(%rbp)
	je	.L284
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	movl	-60(%rbp), %eax
	jmp	.L296
.L284:
	movq	-96(%rbp), %rax
	movq	72(%rax), %r8
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L285
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_check_cert_time@PLT
	testl	%eax, %eax
	je	.L285
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	movl	$1, %eax
	jmp	.L296
.L285:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	cmpq	$0, -48(%rbp)
	jne	.L286
	movl	$0, %eax
	jmp	.L296
.L286:
	movl	$0, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_lock@PLT
	testl	%eax, %eax
	jne	.L287
	movl	$0, %eax
	jmp	.L296
.L287:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_X509_OBJECT_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_sort@PLT
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-68(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	x509_object_idx_cnt
	movl	%eax, -64(%rbp)
	cmpl	$-1, -64(%rbp)
	je	.L288
	movl	-64(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L289
.L294:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_X509_OBJECT_sk_type
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L297
	movq	-96(%rbp), %rax
	movq	72(%rax), %r8
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	je	.L291
	movl	$1, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-96(%rbp), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_x509_check_cert_time@PLT
	testl	%eax, %eax
	je	.L292
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L288
.L292:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L293
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	X509_get0_notAfter@PLT
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	ASN1_TIME_compare@PLT
	testl	%eax, %eax
	jle	.L291
.L293:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
.L291:
	addl	$1, -20(%rbp)
.L289:
	movl	-68(%rbp), %edx
	movl	-64(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L294
	jmp	.L288
.L297:
	nop
.L288:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L295
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	X509_up_ref@PLT
	testl	%eax, %eax
	jne	.L295
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movl	$-1, -24(%rbp)
.L295:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_unlock@PLT
	movl	-24(%rbp), %eax
.L296:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE744:
	.size	X509_STORE_CTX_get1_issuer, .-X509_STORE_CTX_get1_issuer
	.globl	X509_STORE_set_flags
	.type	X509_STORE_set_flags, @function
X509_STORE_set_flags:
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
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_flags@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE745:
	.size	X509_STORE_set_flags, .-X509_STORE_set_flags
	.globl	X509_STORE_set_depth
	.type	X509_STORE_set_depth, @function
X509_STORE_set_depth:
.LFB746:
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
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_depth@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE746:
	.size	X509_STORE_set_depth, .-X509_STORE_set_depth
	.globl	X509_STORE_set_purpose
	.type	X509_STORE_set_purpose, @function
X509_STORE_set_purpose:
.LFB747:
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
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_purpose@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE747:
	.size	X509_STORE_set_purpose, .-X509_STORE_set_purpose
	.globl	X509_STORE_set_trust
	.type	X509_STORE_set_trust, @function
X509_STORE_set_trust:
.LFB748:
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
	movq	24(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set_trust@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE748:
	.size	X509_STORE_set_trust, .-X509_STORE_set_trust
	.globl	X509_STORE_set1_param
	.type	X509_STORE_set1_param, @function
X509_STORE_set1_param:
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
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_VERIFY_PARAM_set1@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE749:
	.size	X509_STORE_set1_param, .-X509_STORE_set1_param
	.globl	X509_STORE_get0_param
	.type	X509_STORE_get0_param, @function
X509_STORE_get0_param:
.LFB750:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE750:
	.size	X509_STORE_get0_param, .-X509_STORE_get0_param
	.globl	X509_STORE_set_verify
	.type	X509_STORE_set_verify, @function
X509_STORE_set_verify:
.LFB751:
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
	movq	%rdx, 32(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE751:
	.size	X509_STORE_set_verify, .-X509_STORE_set_verify
	.globl	X509_STORE_get_verify
	.type	X509_STORE_get_verify, @function
X509_STORE_get_verify:
.LFB752:
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
.LFE752:
	.size	X509_STORE_get_verify, .-X509_STORE_get_verify
	.globl	X509_STORE_set_verify_cb
	.type	X509_STORE_set_verify_cb, @function
X509_STORE_set_verify_cb:
.LFB753:
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
	movq	%rdx, 40(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE753:
	.size	X509_STORE_set_verify_cb, .-X509_STORE_set_verify_cb
	.globl	X509_STORE_get_verify_cb
	.type	X509_STORE_get_verify_cb, @function
X509_STORE_get_verify_cb:
.LFB754:
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
.LFE754:
	.size	X509_STORE_get_verify_cb, .-X509_STORE_get_verify_cb
	.globl	X509_STORE_set_get_issuer
	.type	X509_STORE_set_get_issuer, @function
X509_STORE_set_get_issuer:
.LFB755:
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
	movq	%rdx, 48(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE755:
	.size	X509_STORE_set_get_issuer, .-X509_STORE_set_get_issuer
	.globl	X509_STORE_get_get_issuer
	.type	X509_STORE_get_get_issuer, @function
X509_STORE_get_get_issuer:
.LFB756:
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
.LFE756:
	.size	X509_STORE_get_get_issuer, .-X509_STORE_get_get_issuer
	.globl	X509_STORE_set_check_issued
	.type	X509_STORE_set_check_issued, @function
X509_STORE_set_check_issued:
.LFB757:
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
	movq	%rdx, 56(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE757:
	.size	X509_STORE_set_check_issued, .-X509_STORE_set_check_issued
	.globl	X509_STORE_get_check_issued
	.type	X509_STORE_get_check_issued, @function
X509_STORE_get_check_issued:
.LFB758:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE758:
	.size	X509_STORE_get_check_issued, .-X509_STORE_get_check_issued
	.globl	X509_STORE_set_check_revocation
	.type	X509_STORE_set_check_revocation, @function
X509_STORE_set_check_revocation:
.LFB759:
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
	movq	%rdx, 64(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE759:
	.size	X509_STORE_set_check_revocation, .-X509_STORE_set_check_revocation
	.globl	X509_STORE_get_check_revocation
	.type	X509_STORE_get_check_revocation, @function
X509_STORE_get_check_revocation:
.LFB760:
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
.LFE760:
	.size	X509_STORE_get_check_revocation, .-X509_STORE_get_check_revocation
	.globl	X509_STORE_set_get_crl
	.type	X509_STORE_set_get_crl, @function
X509_STORE_set_get_crl:
.LFB761:
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
	movq	%rdx, 72(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE761:
	.size	X509_STORE_set_get_crl, .-X509_STORE_set_get_crl
	.globl	X509_STORE_get_get_crl
	.type	X509_STORE_get_get_crl, @function
X509_STORE_get_get_crl:
.LFB762:
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
.LFE762:
	.size	X509_STORE_get_get_crl, .-X509_STORE_get_get_crl
	.globl	X509_STORE_set_check_crl
	.type	X509_STORE_set_check_crl, @function
X509_STORE_set_check_crl:
.LFB763:
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
	movq	%rdx, 80(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE763:
	.size	X509_STORE_set_check_crl, .-X509_STORE_set_check_crl
	.globl	X509_STORE_get_check_crl
	.type	X509_STORE_get_check_crl, @function
X509_STORE_get_check_crl:
.LFB764:
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
.LFE764:
	.size	X509_STORE_get_check_crl, .-X509_STORE_get_check_crl
	.globl	X509_STORE_set_cert_crl
	.type	X509_STORE_set_cert_crl, @function
X509_STORE_set_cert_crl:
.LFB765:
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
	movq	%rdx, 88(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE765:
	.size	X509_STORE_set_cert_crl, .-X509_STORE_set_cert_crl
	.globl	X509_STORE_get_cert_crl
	.type	X509_STORE_get_cert_crl, @function
X509_STORE_get_cert_crl:
.LFB766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE766:
	.size	X509_STORE_get_cert_crl, .-X509_STORE_get_cert_crl
	.globl	X509_STORE_set_check_policy
	.type	X509_STORE_set_check_policy, @function
X509_STORE_set_check_policy:
.LFB767:
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
.LFE767:
	.size	X509_STORE_set_check_policy, .-X509_STORE_set_check_policy
	.globl	X509_STORE_get_check_policy
	.type	X509_STORE_get_check_policy, @function
X509_STORE_get_check_policy:
.LFB768:
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
.LFE768:
	.size	X509_STORE_get_check_policy, .-X509_STORE_get_check_policy
	.globl	X509_STORE_set_lookup_certs
	.type	X509_STORE_set_lookup_certs, @function
X509_STORE_set_lookup_certs:
.LFB769:
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
.LFE769:
	.size	X509_STORE_set_lookup_certs, .-X509_STORE_set_lookup_certs
	.globl	X509_STORE_get_lookup_certs
	.type	X509_STORE_get_lookup_certs, @function
X509_STORE_get_lookup_certs:
.LFB770:
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
.LFE770:
	.size	X509_STORE_get_lookup_certs, .-X509_STORE_get_lookup_certs
	.globl	X509_STORE_set_lookup_crls
	.type	X509_STORE_set_lookup_crls, @function
X509_STORE_set_lookup_crls:
.LFB771:
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
.LFE771:
	.size	X509_STORE_set_lookup_crls, .-X509_STORE_set_lookup_crls
	.globl	X509_STORE_get_lookup_crls
	.type	X509_STORE_get_lookup_crls, @function
X509_STORE_get_lookup_crls:
.LFB772:
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
.LFE772:
	.size	X509_STORE_get_lookup_crls, .-X509_STORE_get_lookup_crls
	.globl	X509_STORE_set_cleanup
	.type	X509_STORE_set_cleanup, @function
X509_STORE_set_cleanup:
.LFB773:
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
	movq	%rdx, 120(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE773:
	.size	X509_STORE_set_cleanup, .-X509_STORE_set_cleanup
	.globl	X509_STORE_get_cleanup
	.type	X509_STORE_get_cleanup, @function
X509_STORE_get_cleanup:
.LFB774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE774:
	.size	X509_STORE_get_cleanup, .-X509_STORE_get_cleanup
	.globl	X509_STORE_set_ex_data
	.type	X509_STORE_set_ex_data, @function
X509_STORE_set_ex_data:
.LFB775:
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
	leaq	128(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE775:
	.size	X509_STORE_set_ex_data, .-X509_STORE_set_ex_data
	.globl	X509_STORE_get_ex_data
	.type	X509_STORE_get_ex_data, @function
X509_STORE_get_ex_data:
.LFB776:
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
	leaq	128(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE776:
	.size	X509_STORE_get_ex_data, .-X509_STORE_get_ex_data
	.globl	X509_STORE_CTX_get0_store
	.type	X509_STORE_CTX_get0_store, @function
X509_STORE_CTX_get0_store:
.LFB777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE777:
	.size	X509_STORE_CTX_get0_store, .-X509_STORE_CTX_get0_store
	.section	.rodata
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 15
__func__.5:
	.string	"X509_STORE_new"
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 22
__func__.4:
	.string	"X509_STORE_add_lookup"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 20
__func__.3:
	.string	"X509_STORE_add_cert"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 19
__func__.2:
	.string	"X509_STORE_add_crl"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 24
__func__.1:
	.string	"X509_STORE_get1_objects"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 26
__func__.0:
	.string	"X509_STORE_get1_all_certs"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
