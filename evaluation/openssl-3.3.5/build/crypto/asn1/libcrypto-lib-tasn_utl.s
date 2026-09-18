	.file	"tasn_utl.c"
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
	.globl	ossl_asn1_get_choice_selector
	.type	ossl_asn1_get_choice_selector, @function
ossl_asn1_get_choice_selector:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	ossl_asn1_get_choice_selector, .-ossl_asn1_get_choice_selector
	.globl	ossl_asn1_get_choice_selector_const
	.type	ossl_asn1_get_choice_selector_const, @function
ossl_asn1_get_choice_selector_const:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	ossl_asn1_get_choice_selector_const, .-ossl_asn1_get_choice_selector_const
	.globl	ossl_asn1_set_choice_selector
	.type	ossl_asn1_set_choice_selector, @function
ossl_asn1_set_choice_selector:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	ossl_asn1_set_choice_selector, .-ossl_asn1_set_choice_selector
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/tasn_utl.c"
	.text
	.globl	ossl_asn1_do_lock
	.type	ossl_asn1_do_lock, @function
ossl_asn1_do_lock:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$-1, -28(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	je	.L20
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$6, %al
	je	.L20
	movl	$0, %eax
	jmp	.L32
.L20:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L22
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L23
.L22:
	movl	$0, %eax
	jmp	.L32
.L23:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	cmpl	$1, -44(%rbp)
	je	.L24
	cmpl	$1, -44(%rbp)
	jg	.L25
	cmpl	$-1, -44(%rbp)
	je	.L26
	cmpl	$0, -44(%rbp)
	jne	.L25
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	jne	.L27
	movl	$-1, %eax
	jmp	.L32
.L27:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L28
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$91, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L32
.L28:
	movl	$1, -28(%rbp)
	jmp	.L25
.L24:
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jne	.L33
	movl	$-1, %eax
	jmp	.L32
.L26:
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_DOWN_REF
	testl	%eax, %eax
	jne	.L30
	movl	$-1, %eax
	jmp	.L32
.L30:
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L34
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	jmp	.L34
.L33:
	nop
	jmp	.L25
.L34:
	nop
.L25:
	movl	-28(%rbp), %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	ossl_asn1_do_lock, .-ossl_asn1_do_lock
	.type	asn1_get_enc_ptr, @function
asn1_get_enc_ptr:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L36
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L37
.L36:
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L39
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L40
.L39:
	movl	$0, %eax
	jmp	.L38
.L40:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	cltq
	addq	%rdx, %rax
.L38:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	asn1_get_enc_ptr, .-asn1_get_enc_ptr
	.type	asn1_get_const_enc_ptr, @function
asn1_get_const_enc_ptr:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L42
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L43
.L42:
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L45
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L46
.L45:
	movl	$0, %eax
	jmp	.L44
.L46:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	cltq
	addq	%rdx, %rax
.L44:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	asn1_get_const_enc_ptr, .-asn1_get_const_enc_ptr
	.globl	ossl_asn1_enc_init
	.type	ossl_asn1_enc_init, @function
ossl_asn1_enc_init:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_get_enc_ptr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L49
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
.L49:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	ossl_asn1_enc_init, .-ossl_asn1_enc_init
	.globl	ossl_asn1_enc_free
	.type	ossl_asn1_enc_free, @function
ossl_asn1_enc_free:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_get_enc_ptr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$157, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
.L52:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	ossl_asn1_enc_free, .-ossl_asn1_enc_free
	.globl	ossl_asn1_enc_save
	.type	ossl_asn1_enc_save, @function
ossl_asn1_enc_save:
.LFB521:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_get_enc_ptr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L54
	movl	$1, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$172, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	cmpl	$0, -36(%rbp)
	jg	.L56
	movl	$0, %eax
	jmp	.L55
.L56:
	movl	-36(%rbp), %eax
	cltq
	leaq	.LC0(%rip), %rcx
	movl	$175, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L57
	movl	$0, %eax
	jmp	.L55
.L57:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movl	$1, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	ossl_asn1_enc_save, .-ossl_asn1_enc_save
	.globl	ossl_asn1_enc_restore
	.type	ossl_asn1_enc_restore, @function
ossl_asn1_enc_restore:
.LFB522:
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
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	asn1_get_const_enc_ptr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L59
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L60
.L59:
	movl	$0, %eax
	jmp	.L61
.L60:
	cmpq	$0, -32(%rbp)
	je	.L62
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L62:
	cmpq	$0, -24(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L63:
	movl	$1, %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	ossl_asn1_enc_restore, .-ossl_asn1_enc_restore
	.globl	ossl_asn1_get_field_ptr
	.type	ossl_asn1_get_field_ptr, @function
ossl_asn1_get_field_ptr:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	ossl_asn1_get_field_ptr, .-ossl_asn1_get_field_ptr
	.globl	ossl_asn1_get_const_field_ptr
	.type	ossl_asn1_get_const_field_ptr, @function
ossl_asn1_get_const_field_ptr:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	ossl_asn1_get_const_field_ptr, .-ossl_asn1_get_const_field_ptr
	.globl	ossl_asn1_do_adb
	.type	ossl_asn1_do_adb, @function
ossl_asn1_do_adb:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	andl	$768, %eax
	testq	%rax, %rax
	jne	.L69
	movq	-64(%rbp), %rax
	jmp	.L82
.L69:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	call	*%rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L71
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L83
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.L82
.L71:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	andl	$256, %eax
	testq	%rax, %rax
	je	.L74
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	cltq
	movq	%rax, -40(%rbp)
	jmp	.L75
.L74:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_get@PLT
	movq	%rax, -40(%rbp)
.L75:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L76
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L76
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$261, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$164, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L82
.L76:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L77
.L79:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L78
	movq	-8(%rbp), %rax
	addq	$8, %rax
	jmp	.L82
.L78:
	addl	$1, -12(%rbp)
	addq	$48, -8(%rbp)
.L77:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jl	.L79
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	jmp	.L82
.L83:
	nop
	jmp	.L73
.L84:
	nop
.L73:
	cmpl	$0, -68(%rbp)
	je	.L81
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$286, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$164, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L81:
	movl	$0, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	ossl_asn1_do_adb, .-ossl_asn1_do_adb
	.section	.rodata
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"ossl_asn1_do_lock"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 17
__func__.0:
	.string	"ossl_asn1_do_adb"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
