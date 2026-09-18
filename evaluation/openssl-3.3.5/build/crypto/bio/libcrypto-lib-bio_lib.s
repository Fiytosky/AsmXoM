	.file	"bio_lib.c"
	.text
	.type	ERR_GET_LIB, @function
ERR_GET_LIB:
.LFB103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movl	$2, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	shrq	$23, %rax
	movzbl	%al, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	ERR_GET_LIB, .-ERR_GET_LIB
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
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
	jne	.L14
.L14:
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	CRYPTO_DOWN_REF, .-CRYPTO_DOWN_REF
	.type	CRYPTO_GET_REF, @function
CRYPTO_GET_REF:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	CRYPTO_GET_REF, .-CRYPTO_GET_REF
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
	.type	bio_call_callback, @function
bio_call_callback:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -56(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-24(%rbp), %rax
	movq	24(%rax), %r10
	movq	16(%rbp), %rax
	movl	%eax, %r9d
	movq	-56(%rbp), %r8
	movl	-32(%rbp), %edi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	pushq	24(%rbp)
	pushq	%r9
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	*%r10
	addq	$16, %rsp
	jmp	.L23
.L22:
	movl	-28(%rbp), %eax
	andb	$127, %al
	movl	%eax, -12(%rbp)
	cmpl	$2, -12(%rbp)
	je	.L24
	cmpl	$3, -12(%rbp)
	je	.L24
	cmpl	$5, -12(%rbp)
	jne	.L25
.L24:
	cmpq	$2147483647, -48(%rbp)
	jbe	.L26
	movq	$-1, %rax
	jmp	.L23
.L26:
	movq	-48(%rbp), %rax
	movl	%eax, -32(%rbp)
.L25:
	cmpq	$0, 16(%rbp)
	jle	.L27
	movl	-28(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L27
	cmpl	$6, -12(%rbp)
	je	.L27
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$2147483647, %rax
	jbe	.L28
	movq	$-1, %rax
	jmp	.L23
.L28:
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, 16(%rbp)
.L27:
	movq	-24(%rbp), %rax
	movq	16(%rax), %r10
	movq	16(%rbp), %r8
	movq	-56(%rbp), %rdi
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L29
	movl	-28(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L29
	cmpl	$6, -12(%rbp)
	je	.L29
	movq	-8(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$1, -8(%rbp)
.L29:
	movq	-8(%rbp), %rax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	bio_call_callback, .-bio_call_callback
	.section	.rodata
.LC0:
	.string	"../crypto/bio/bio_lib.c"
	.text
	.globl	BIO_new_ex
	.type	BIO_new_ex, @function
BIO_new_ex:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$83, %edx
	movq	%rax, %rsi
	movl	$128, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 44(%rax)
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_NEW_REF
	testl	%eax, %eax
	je	.L38
	movq	-8(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$12, %edi
	call	CRYPTO_new_ex_data@PLT
	testl	%eax, %eax
	je	.L39
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$99, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786693, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-8(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$12, %edi
	call	CRYPTO_free_ex_data@PLT
	jmp	.L34
.L36:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
.L37:
	movq	-8(%rbp), %rax
	jmp	.L32
.L38:
	nop
	jmp	.L34
.L39:
	nop
.L34:
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BIO_new_ex, .-BIO_new_ex
	.globl	BIO_new
	.type	BIO_new, @function
BIO_new:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	BIO_new_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BIO_new, .-BIO_new
	.globl	BIO_free
	.type	BIO_free, @function
BIO_free:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L50
.L43:
	movq	-24(%rbp), %rax
	leaq	88(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_DOWN_REF
	testl	%eax, %eax
	jg	.L45
	movl	$0, %eax
	jmp	.L50
.L45:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jle	.L46
	movl	$1, %eax
	jmp	.L50
.L46:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L47
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L48
.L47:
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$1
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jg	.L48
	movl	$0, %eax
	jmp	.L50
.L48:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L49:
	movq	-24(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$12, %edi
	call	CRYPTO_free_ex_data@PLT
	movq	-24(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$147, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BIO_free, .-BIO_free
	.globl	BIO_set_data
	.type	BIO_set_data, @function
BIO_set_data:
.LFB169:
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
.LFE169:
	.size	BIO_set_data, .-BIO_set_data
	.globl	BIO_get_data
	.type	BIO_get_data, @function
BIO_get_data:
.LFB170:
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
.LFE170:
	.size	BIO_get_data, .-BIO_get_data
	.globl	BIO_set_init
	.type	BIO_set_init, @function
BIO_set_init:
.LFB171:
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
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BIO_set_init, .-BIO_set_init
	.globl	BIO_get_init
	.type	BIO_get_init, @function
BIO_get_init:
.LFB172:
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
.LFE172:
	.size	BIO_get_init, .-BIO_get_init
	.globl	BIO_set_shutdown
	.type	BIO_set_shutdown, @function
BIO_set_shutdown:
.LFB173:
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
	movl	%edx, 44(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	BIO_set_shutdown, .-BIO_set_shutdown
	.globl	BIO_get_shutdown
	.type	BIO_get_shutdown, @function
BIO_get_shutdown:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	BIO_get_shutdown, .-BIO_get_shutdown
	.globl	BIO_vfree
	.type	BIO_vfree, @function
BIO_vfree:
.LFB175:
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
	call	BIO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	BIO_vfree, .-BIO_vfree
	.globl	BIO_up_ref
	.type	BIO_up_ref, @function
BIO_up_ref:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	88(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_UP_REF
	testl	%eax, %eax
	jg	.L62
	movl	$0, %eax
	jmp	.L64
.L62:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	setg	%al
	movzbl	%al, %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	BIO_up_ref, .-BIO_up_ref
	.globl	BIO_clear_flags
	.type	BIO_clear_flags, @function
BIO_clear_flags:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	movl	-12(%rbp), %edx
	notl	%edx
	andl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	BIO_clear_flags, .-BIO_clear_flags
	.globl	BIO_test_flags
	.type	BIO_test_flags, @function
BIO_test_flags:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	andl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	BIO_test_flags, .-BIO_test_flags
	.globl	BIO_set_flags
	.type	BIO_set_flags, @function
BIO_set_flags:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	orl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 48(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	BIO_set_flags, .-BIO_set_flags
	.globl	BIO_get_callback
	.type	BIO_get_callback, @function
BIO_get_callback:
.LFB180:
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
.LFE180:
	.size	BIO_get_callback, .-BIO_get_callback
	.globl	BIO_set_callback
	.type	BIO_set_callback, @function
BIO_set_callback:
.LFB181:
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
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	BIO_set_callback, .-BIO_set_callback
	.globl	BIO_get_callback_ex
	.type	BIO_get_callback_ex, @function
BIO_get_callback_ex:
.LFB182:
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
.LFE182:
	.size	BIO_get_callback_ex, .-BIO_get_callback_ex
	.globl	BIO_set_callback_ex
	.type	BIO_set_callback_ex, @function
BIO_set_callback_ex:
.LFB183:
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
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	BIO_set_callback_ex, .-BIO_set_callback_ex
	.globl	BIO_set_callback_arg
	.type	BIO_set_callback_arg, @function
BIO_set_callback_arg:
.LFB184:
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
.LFE184:
	.size	BIO_set_callback_arg, .-BIO_set_callback_arg
	.globl	BIO_get_callback_arg
	.type	BIO_get_callback_arg, @function
BIO_get_callback_arg:
.LFB185:
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
.LFE185:
	.size	BIO_get_callback_arg, .-BIO_get_callback_arg
	.globl	BIO_method_name
	.type	BIO_method_name, @function
BIO_method_name:
.LFB186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	BIO_method_name, .-BIO_method_name
	.globl	BIO_method_type
	.type	BIO_method_type, @function
BIO_method_type:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	BIO_method_type, .-BIO_method_type
	.type	bio_read_intern, @function
bio_read_intern:
.LFB188:
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
	cmpq	$0, -24(%rbp)
	jne	.L83
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$267, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L84
.L83:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L86
.L85:
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$271, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L84
.L86:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L87
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L88
.L87:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$1
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$2, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L88
	movl	-4(%rbp), %eax
	jmp	.L84
.L88:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L89
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$281, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L84
.L89:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L90
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 96(%rax)
.L90:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L91
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L92
.L91:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	-48(%rbp)
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$130, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L92:
	cmpl	$0, -4(%rbp)
	jle	.L93
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L93
	call	ERR_new@PLT
	leaq	__func__.11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$296, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L84
.L93:
	movl	-4(%rbp), %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	bio_read_intern, .-bio_read_intern
	.globl	BIO_read
	.type	BIO_read, @function
BIO_read:
.LFB189:
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
	cmpl	$0, -36(%rbp)
	jns	.L95
	movl	$0, %eax
	jmp	.L98
.L95:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-16(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bio_read_intern
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L97
	movq	-16(%rbp), %rax
	movl	%eax, -4(%rbp)
.L97:
	movl	-4(%rbp), %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	BIO_read, .-BIO_read
	.globl	BIO_read_ex
	.type	BIO_read_ex, @function
BIO_read_ex:
.LFB190:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bio_read_intern
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	BIO_read_ex, .-BIO_read_ex
	.type	bio_write_intern, @function
bio_write_intern:
.LFB191:
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
	cmpq	$0, -48(%rbp)
	je	.L102
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.L102:
	cmpq	$0, -24(%rbp)
	jne	.L103
	movl	$0, %eax
	jmp	.L114
.L103:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L106
.L105:
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$342, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L114
.L106:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L107
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L108
.L107:
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$1
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$3, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L108
	movl	-4(%rbp), %eax
	jmp	.L114
.L108:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L109
	call	ERR_new@PLT
	leaq	__func__.10(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$352, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L114
.L109:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %r8
	leaq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L110
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 104(%rax)
.L110:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L111
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L112
.L111:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	-16(%rbp), %rdi
	pushq	%rdi
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$131, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L112:
	cmpq	$0, -48(%rbp)
	je	.L113
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L113:
	movl	-4(%rbp), %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	bio_write_intern, .-bio_write_intern
	.globl	BIO_write
	.type	BIO_write, @function
BIO_write:
.LFB192:
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
	cmpl	$0, -36(%rbp)
	jg	.L116
	movl	$0, %eax
	jmp	.L119
.L116:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-16(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	bio_write_intern
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L118
	movq	-16(%rbp), %rax
	movl	%eax, -4(%rbp)
.L118:
	movl	-4(%rbp), %eax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	BIO_write, .-BIO_write
	.globl	BIO_write_ex
	.type	BIO_write_ex, @function
BIO_write_ex:
.LFB193:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bio_write_intern
	testl	%eax, %eax
	jg	.L121
	cmpq	$0, -8(%rbp)
	je	.L122
	cmpq	$0, -24(%rbp)
	jne	.L122
.L121:
	movl	$1, %eax
	jmp	.L124
.L122:
	movl	$0, %eax
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	BIO_write_ex, .-BIO_write_ex
	.globl	BIO_sendmmsg
	.type	BIO_sendmmsg, @function
BIO_sendmmsg:
.LFB194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L126
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$403, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L135
.L126:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L129
.L128:
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$409, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L135
.L129:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L130
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L131
.L130:
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	pushq	$0
	pushq	$1
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$8, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L131
	movl	$0, %eax
	jmp	.L135
.L131:
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L132
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.9(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$428, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L135
.L132:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	96(%rax), %r10
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	cltq
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L133
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L134
.L133:
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$136, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
.L134:
	movq	-8(%rbp), %rax
.L135:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	BIO_sendmmsg, .-BIO_sendmmsg
	.globl	BIO_recvmmsg
	.type	BIO_recvmmsg, @function
BIO_recvmmsg:
.LFB195:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L137
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$450, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L146
.L137:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L139
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L140
.L139:
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$456, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L146
.L140:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L141
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L142
.L141:
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	pushq	$0
	pushq	$1
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$7, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L142
	movl	$0, %eax
	jmp	.L146
.L142:
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L143
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L146
.L143:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %r10
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	cltq
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L144
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L145
.L144:
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	pushq	$0
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$135, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
.L145:
	movq	-8(%rbp), %rax
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	BIO_recvmmsg, .-BIO_recvmmsg
	.globl	BIO_get_rpoll_descriptor
	.type	BIO_get_rpoll_descriptor, @function
BIO_get_rpoll_descriptor:
.LFB196:
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
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$91, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE196:
	.size	BIO_get_rpoll_descriptor, .-BIO_get_rpoll_descriptor
	.globl	BIO_get_wpoll_descriptor
	.type	BIO_get_wpoll_descriptor, @function
BIO_get_wpoll_descriptor:
.LFB197:
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
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$92, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE197:
	.size	BIO_get_wpoll_descriptor, .-BIO_get_wpoll_descriptor
	.globl	BIO_puts
	.type	BIO_puts, @function
BIO_puts:
.LFB198:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L152
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$504, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L164
.L152:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L154
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L155
.L154:
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$508, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L164
.L155:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L156
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L157
.L156:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$1
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$4, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L157
	movl	-4(%rbp), %eax
	jmp	.L164
.L157:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L158
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$519, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L164
.L158:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L159
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 104(%rax)
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
.L159:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L160
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L161
.L160:
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	-16(%rbp), %rsi
	pushq	%rsi
	pushq	%rcx
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$132, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L161:
	cmpl	$0, -4(%rbp)
	jle	.L162
	movq	-16(%rbp), %rax
	cmpq	$2147483647, %rax
	jbe	.L163
	call	ERR_new@PLT
	leaq	__func__.7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$537, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, -4(%rbp)
	jmp	.L162
.L163:
	movq	-16(%rbp), %rax
	movl	%eax, -4(%rbp)
.L162:
	movl	-4(%rbp), %eax
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE198:
	.size	BIO_puts, .-BIO_puts
	.globl	BIO_gets
	.type	BIO_gets, @function
BIO_gets:
.LFB199:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L166
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$553, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L179
.L166:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L168
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L169
.L168:
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$557, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-2, %eax
	jmp	.L179
.L169:
	cmpl	$0, -36(%rbp)
	jns	.L170
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$562, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L179
.L170:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L171
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L172
.L171:
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$1
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$5, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L172
	movl	-4(%rbp), %eax
	jmp	.L179
.L172:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L173
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$573, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L179
.L173:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %r8
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L174
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
.L174:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L175
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L176
.L175:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	-16(%rbp), %rdi
	pushq	%rdi
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$133, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
.L176:
	cmpl	$0, -4(%rbp)
	jle	.L177
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	cmpq	%rax, %rdx
	jnb	.L178
	movl	$-1, -4(%rbp)
	jmp	.L177
.L178:
	movq	-16(%rbp), %rax
	movl	%eax, -4(%rbp)
.L177:
	movl	-4(%rbp), %eax
.L179:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	BIO_gets, .-BIO_gets
	.globl	BIO_get_line
	.type	BIO_get_line, @function
BIO_get_line:
.LFB200:
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
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L181
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$605, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L182
.L181:
	cmpl	$0, -36(%rbp)
	jg	.L183
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$609, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$125, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L182
.L183:
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	cmpq	$0, -24(%rbp)
	jne	.L184
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$615, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L182
.L184:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L186
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$619, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$120, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L182
.L188:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L192
.L186:
	movl	-36(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -36(%rbp)
	cmpl	$1, %eax
	jle	.L187
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L188
	jmp	.L187
.L192:
	nop
.L187:
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	cmpl	$0, -4(%rbp)
	jg	.L189
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	je	.L190
.L189:
	movq	-16(%rbp), %rax
	subq	-32(%rbp), %rax
	jmp	.L182
.L190:
	movl	-4(%rbp), %eax
.L182:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	BIO_get_line, .-BIO_get_line
	.section	.rodata
.LC1:
	.string	" "
	.text
	.globl	BIO_indent
	.type	BIO_indent, @function
BIO_indent:
.LFB201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L194
	movl	$0, -12(%rbp)
.L194:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L196
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L196
.L198:
	leaq	.LC1(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	cmpl	$1, %eax
	je	.L196
	movl	$0, %eax
	jmp	.L197
.L196:
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	jne	.L198
	movl	$1, %eax
.L197:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	BIO_indent, .-BIO_indent
	.globl	BIO_int_ctrl
	.type	BIO_int_ctrl, @function
BIO_int_ctrl:
.LFB202:
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
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	BIO_int_ctrl, .-BIO_int_ctrl
	.globl	BIO_ptr_ctrl
	.type	BIO_ptr_ctrl, @function
BIO_ptr_ctrl:
.LFB203:
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
	movq	$0, -8(%rbp)
	leaq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L202
	movl	$0, %eax
	jmp	.L204
.L202:
	movq	-8(%rbp), %rax
.L204:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE203:
	.size	BIO_ptr_ctrl, .-BIO_ptr_ctrl
	.globl	BIO_ctrl
	.type	BIO_ctrl, @function
BIO_ctrl:
.LFB204:
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
	movq	%rcx, -48(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L206
	movq	$-1, %rax
	jmp	.L207
.L206:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L208
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L209
.L208:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$667, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$-2, %rax
	jmp	.L207
.L209:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L210
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L211
.L210:
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$1
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	$6, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jg	.L211
	movq	-8(%rbp), %rax
	jmp	.L207
.L211:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	64(%rax), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L212
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L213
.L212:
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	-8(%rbp)
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	$134, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
.L213:
	movq	-8(%rbp), %rax
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	BIO_ctrl, .-BIO_ctrl
	.globl	BIO_callback_ctrl
	.type	BIO_callback_ctrl, @function
BIO_callback_ctrl:
.LFB205:
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
	cmpq	$0, -24(%rbp)
	jne	.L215
	movq	$-2, %rax
	jmp	.L216
.L215:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L217
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L217
	cmpl	$14, -28(%rbp)
	je	.L218
.L217:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$694, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$121, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	$-2, %rax
	jmp	.L216
.L218:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L219
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L220
.L219:
	movl	-28(%rbp), %ecx
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$1
	movl	$0, %r9d
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	$6, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jg	.L220
	movq	-8(%rbp), %rax
	jmp	.L216
.L220:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	88(%rax), %r8
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L221
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L222
.L221:
	movl	-28(%rbp), %ecx
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	-8(%rbp)
	movl	$0, %r9d
	movl	%ecx, %r8d
	movl	$0, %ecx
	movl	$134, %esi
	movq	%rax, %rdi
	call	bio_call_callback
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
.L222:
	movq	-8(%rbp), %rax
.L216:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	BIO_callback_ctrl, .-BIO_callback_ctrl
	.globl	BIO_ctrl_pending
	.type	BIO_ctrl_pending, @function
BIO_ctrl_pending:
.LFB206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jns	.L224
	movq	$0, -8(%rbp)
.L224:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE206:
	.size	BIO_ctrl_pending, .-BIO_ctrl_pending
	.globl	BIO_ctrl_wpending
	.type	BIO_ctrl_wpending, @function
BIO_ctrl_wpending:
.LFB207:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$13, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jns	.L227
	movq	$0, -8(%rbp)
.L227:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE207:
	.size	BIO_ctrl_wpending, .-BIO_ctrl_wpending
	.globl	BIO_push
	.type	BIO_push, @function
BIO_push:
.LFB208:
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
	jne	.L230
	movq	-32(%rbp), %rax
	jmp	.L231
.L230:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L232
.L233:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
.L232:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.L233
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 72(%rax)
	cmpq	$0, -32(%rbp)
	je	.L234
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 80(%rax)
.L234:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE208:
	.size	BIO_push, .-BIO_push
	.globl	BIO_pop
	.type	BIO_pop, @function
BIO_pop:
.LFB209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L236
	movl	$0, %eax
	jmp	.L237
.L236:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$7, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L238
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rdx, 72(%rax)
.L238:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L239
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, 80(%rax)
.L239:
	movq	-24(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-8(%rbp), %rax
.L237:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE209:
	.size	BIO_pop, .-BIO_pop
	.globl	BIO_get_retry_BIO
	.type	BIO_get_retry_BIO, @function
BIO_get_retry_BIO:
.LFB210:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L244:
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	je	.L247
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L248
	jmp	.L244
.L247:
	nop
	jmp	.L242
.L248:
	nop
.L242:
	cmpq	$0, -32(%rbp)
	je	.L245
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L245:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE210:
	.size	BIO_get_retry_BIO, .-BIO_get_retry_BIO
	.globl	BIO_get_retry_reason
	.type	BIO_get_retry_reason, @function
BIO_get_retry_reason:
.LFB211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE211:
	.size	BIO_get_retry_reason, .-BIO_get_retry_reason
	.globl	BIO_set_retry_reason
	.type	BIO_set_retry_reason, @function
BIO_set_retry_reason:
.LFB212:
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
	movl	%edx, 52(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE212:
	.size	BIO_set_retry_reason, .-BIO_set_retry_reason
	.globl	BIO_find_type
	.type	BIO_find_type, @function
BIO_find_type:
.LFB213:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L253
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$817, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L254
.L253:
	movl	-28(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.L257:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L255
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L256
	movl	-8(%rbp), %eax
	andl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L255
	movq	-24(%rbp), %rax
	jmp	.L254
.L256:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.L255
	movq	-24(%rbp), %rax
	jmp	.L254
.L255:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L257
	movl	$0, %eax
.L254:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE213:
	.size	BIO_find_type, .-BIO_find_type
	.globl	BIO_next
	.type	BIO_next, @function
BIO_next:
.LFB214:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L259
	movl	$0, %eax
	jmp	.L260
.L259:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
.L260:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE214:
	.size	BIO_next, .-BIO_next
	.globl	BIO_set_next
	.type	BIO_set_next, @function
BIO_set_next:
.LFB215:
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
.LFE215:
	.size	BIO_set_next, .-BIO_set_next
	.globl	BIO_free_all
	.type	BIO_free_all, @function
BIO_free_all:
.LFB216:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L263
.L265:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	88(%rax), %rdx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_GET_REF
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	jg	.L266
.L263:
	cmpq	$0, -24(%rbp)
	jne	.L265
	jmp	.L267
.L266:
	nop
.L267:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE216:
	.size	BIO_free_all, .-BIO_free_all
	.globl	BIO_dup_chain
	.type	BIO_dup_chain, @function
BIO_dup_chain:
.LFB217:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L269
.L276:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L278
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	40(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	56(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L272
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L271
.L272:
	movq	-24(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rsi
	movl	$12, %edi
	call	CRYPTO_dup_ex_data@PLT
	testl	%eax, %eax
	jne	.L273
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L271
.L273:
	cmpq	$0, -8(%rbp)
	jne	.L274
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L275
.L274:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
.L275:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
.L269:
	cmpq	$0, -24(%rbp)
	jne	.L276
	movq	-8(%rbp), %rax
	jmp	.L277
.L278:
	nop
.L271:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free_all@PLT
	movl	$0, %eax
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE217:
	.size	BIO_dup_chain, .-BIO_dup_chain
	.globl	BIO_copy_next_retry
	.type	BIO_copy_next_retry, @function
BIO_copy_next_retry:
.LFB218:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	52(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 52(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE218:
	.size	BIO_copy_next_retry, .-BIO_copy_next_retry
	.globl	BIO_set_ex_data
	.type	BIO_set_ex_data, @function
BIO_set_ex_data:
.LFB219:
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
	leaq	112(%rax), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	CRYPTO_set_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE219:
	.size	BIO_set_ex_data, .-BIO_set_ex_data
	.globl	BIO_get_ex_data
	.type	BIO_get_ex_data, @function
BIO_get_ex_data:
.LFB220:
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
	leaq	112(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	CRYPTO_get_ex_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE220:
	.size	BIO_get_ex_data, .-BIO_get_ex_data
	.globl	BIO_number_read
	.type	BIO_number_read, @function
BIO_number_read:
.LFB221:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L285
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	jmp	.L286
.L285:
	movl	$0, %eax
.L286:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE221:
	.size	BIO_number_read, .-BIO_number_read
	.globl	BIO_number_written
	.type	BIO_number_written, @function
BIO_number_written:
.LFB222:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L288
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	jmp	.L289
.L288:
	movl	$0, %eax
.L289:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE222:
	.size	BIO_number_written, .-BIO_number_written
	.globl	bio_free_ex_data
	.type	bio_free_ex_data, @function
bio_free_ex_data:
.LFB223:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$12, %edi
	call	CRYPTO_free_ex_data@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE223:
	.size	bio_free_ex_data, .-bio_free_ex_data
	.globl	bio_cleanup
	.type	bio_cleanup, @function
bio_cleanup:
.LFB224:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	bio_sock_cleanup_int@PLT
	movq	bio_lookup_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	bio_lookup_lock@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	movq	bio_type_count@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_FREE_REF
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE224:
	.size	bio_cleanup, .-bio_cleanup
	.type	bio_wait, @function
bio_wait:
.LFB225:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L293
	movl	$1, %eax
	jmp	.L299
.L293:
	leaq	-20(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$105, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L295
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	movl	%eax, %ecx
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rdx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	BIO_socket_wait@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	je	.L295
	movl	-4(%rbp), %eax
	jmp	.L299
.L295:
	movl	$0, %edi
	call	time@PLT
	movq	-48(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jns	.L296
	movl	$0, %eax
	jmp	.L299
.L296:
	cmpq	$0, -16(%rbp)
	jne	.L297
	cmpl	$1000, -52(%rbp)
	jbe	.L298
	movl	$1000, -52(%rbp)
	jmp	.L298
.L297:
	movq	-16(%rbp), %rax
	imulq	$1000, %rax, %rdx
	movl	-52(%rbp), %eax
	cmpq	%rax, %rdx
	jnb	.L298
	movq	-16(%rbp), %rax
	imull	$1000, %eax, %eax
	movl	%eax, -52(%rbp)
.L298:
	movl	-52(%rbp), %eax
	movq	%rax, %rdi
	call	OSSL_sleep@PLT
	movl	$1, %eax
.L299:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE225:
	.size	bio_wait, .-bio_wait
	.globl	BIO_wait
	.type	BIO_wait, @function
BIO_wait:
.LFB226:
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
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bio_wait
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L301
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1006, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpl	$0, -4(%rbp)
	jne	.L302
	movl	$105, %eax
	jmp	.L303
.L302:
	movl	$104, %eax
.L303:
	movl	$0, %edx
	movl	%eax, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L301:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE226:
	.size	BIO_wait, .-BIO_wait
	.globl	BIO_do_connect_retry
	.type	BIO_do_connect_retry, @function
BIO_do_connect_retry:
.LFB227:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	cmpl	$0, -44(%rbp)
	setle	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.L306
	movl	$0, %edi
	call	time@PLT
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L307
.L306:
	movq	$0, -8(%rbp)
.L307:
	cmpq	$0, -40(%rbp)
	jne	.L308
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1026, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786690, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L309
.L308:
	cmpl	$0, -48(%rbp)
	jns	.L310
	movl	$100, -48(%rbp)
.L310:
	cmpl	$0, -20(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$102, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L311:
	call	ERR_set_mark@PLT
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$101, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L312
	call	ERR_peek_last_error@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	ERR_GET_LIB
	cmpl	$32, %eax
	jne	.L313
	cmpl	$524290, -28(%rbp)
	je	.L314
	cmpl	$524290, -28(%rbp)
	jg	.L322
	cmpl	$103, -28(%rbp)
	je	.L314
	cmpl	$110, -28(%rbp)
	jne	.L322
.L314:
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	$1, -16(%rbp)
	jmp	.L313
.L322:
	nop
.L313:
	cmpl	$0, -44(%rbp)
	js	.L316
	cmpl	$0, -16(%rbp)
	je	.L316
	call	ERR_pop_to_mark@PLT
	movl	-48(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bio_wait
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.L317
	jmp	.L311
.L317:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1068, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	cmpl	$0, -12(%rbp)
	jne	.L318
	movl	$147, %eax
	jmp	.L319
.L318:
	movl	$103, %eax
.L319:
	movl	$0, %edx
	movl	%eax, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L321
.L316:
	call	ERR_clear_last_mark@PLT
	movl	$-1, -12(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L321
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1075, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$32, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L321
.L312:
	call	ERR_clear_last_mark@PLT
.L321:
	movl	-12(%rbp), %eax
.L309:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE227:
	.size	BIO_do_connect_retry, .-BIO_do_connect_retry
	.section	.rodata
	.align 8
	.type	__func__.12, @object
	.size	__func__.12, 11
__func__.12:
	.string	"BIO_new_ex"
	.align 16
	.type	__func__.11, @object
	.size	__func__.11, 16
__func__.11:
	.string	"bio_read_intern"
	.align 16
	.type	__func__.10, @object
	.size	__func__.10, 17
__func__.10:
	.string	"bio_write_intern"
	.align 8
	.type	__func__.9, @object
	.size	__func__.9, 13
__func__.9:
	.string	"BIO_sendmmsg"
	.align 8
	.type	__func__.8, @object
	.size	__func__.8, 13
__func__.8:
	.string	"BIO_recvmmsg"
	.align 8
	.type	__func__.7, @object
	.size	__func__.7, 9
__func__.7:
	.string	"BIO_puts"
	.align 8
	.type	__func__.6, @object
	.size	__func__.6, 9
__func__.6:
	.string	"BIO_gets"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 13
__func__.5:
	.string	"BIO_get_line"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 9
__func__.4:
	.string	"BIO_ctrl"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 18
__func__.3:
	.string	"BIO_callback_ctrl"
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 14
__func__.2:
	.string	"BIO_find_type"
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 9
__func__.1:
	.string	"BIO_wait"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 21
__func__.0:
	.string	"BIO_do_connect_retry"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
