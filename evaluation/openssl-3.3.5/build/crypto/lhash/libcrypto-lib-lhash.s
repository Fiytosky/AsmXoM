	.file	"lhash.c"
	.text
	.globl	OPENSSL_LH_set_thunks
	.type	OPENSSL_LH_set_thunks, @function
OPENSSL_LH_set_thunks:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	OPENSSL_LH_set_thunks, .-OPENSSL_LH_set_thunks
	.section	.rodata
.LC0:
	.string	"../crypto/lhash/lhash.c"
	.text
	.globl	OPENSSL_LH_new
	.type	OPENSSL_LH_new, @function
OPENSSL_LH_new:
.LFB75:
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
	movl	$67, %edx
	movq	%rax, %rsi
	movl	$104, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	leaq	.LC0(%rip), %rax
	movl	$69, %edx
	movq	%rax, %rsi
	movl	$128, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L14
	cmpq	$0, -32(%rbp)
	je	.L9
	movq	-32(%rbp), %rax
	jmp	.L10
.L9:
	movq	strcmp@GOTPCREL(%rip), %rax
.L10:
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	cmpq	$0, -24(%rbp)
	je	.L11
	movq	-24(%rbp), %rax
	jmp	.L12
.L11:
	movq	OPENSSL_LH_strhash@GOTPCREL(%rip), %rax
.L12:
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movl	$8, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$16, 60(%rax)
	movq	-8(%rbp), %rax
	movl	$8, 68(%rax)
	movq	-8(%rbp), %rax
	movq	$512, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$256, 80(%rax)
	movq	-8(%rbp), %rax
	jmp	.L6
.L14:
	nop
.L8:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$81, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$82, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	OPENSSL_LH_new, .-OPENSSL_LH_new
	.globl	OPENSSL_LH_free
	.type	OPENSSL_LH_free, @function
OPENSSL_LH_free:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_flush@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$92, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$93, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L15
.L18:
	nop
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	OPENSSL_LH_free, .-OPENSSL_LH_free
	.globl	OPENSSL_LH_flush
	.type	OPENSSL_LH_flush, @function
OPENSSL_LH_flush:
.LFB77:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L26
	movl	$0, -4(%rbp)
	jmp	.L22
.L25:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L23
.L24:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$108, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L23:
	cmpq	$0, -16(%rbp)
	jne	.L24
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	addl	$1, -4(%rbp)
.L22:
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L25
	movq	-40(%rbp), %rax
	movq	$0, 88(%rax)
	jmp	.L19
.L26:
	nop
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	OPENSSL_LH_flush, .-OPENSSL_LH_flush
	.globl	OPENSSL_LH_insert
	.type	OPENSSL_LH_insert, @function
OPENSSL_LH_insert:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 96(%rax)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rax
	movl	$0, %edx
	divq	%rsi
	cmpq	%rcx, %rax
	jb	.L28
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	expand
	testl	%eax, %eax
	jne	.L28
	movl	$0, %eax
	jmp	.L33
.L28:
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getrn
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	leaq	.LC0(%rip), %rax
	movl	$130, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L31
	movq	-40(%rbp), %rax
	movl	96(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 96(%rax)
	movl	$0, %eax
	jmp	.L33
.L31:
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	.L32
.L30:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
.L32:
	movq	-8(%rbp), %rax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	OPENSSL_LH_insert, .-OPENSSL_LH_insert
	.globl	OPENSSL_LH_delete
	.type	OPENSSL_LH_delete, @function
OPENSSL_LH_delete:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 96(%rax)
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getrn
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	movl	$0, %eax
	jmp	.L38
.L35:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$162, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	$16, %eax
	jbe	.L37
	movq	-40(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rax
	movl	$0, %edx
	divq	%rsi
	cmpq	%rax, %rcx
	jb	.L37
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	contract
.L37:
	movq	-24(%rbp), %rax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	OPENSSL_LH_delete, .-OPENSSL_LH_delete
	.globl	OPENSSL_LH_retrieve
	.type	OPENSSL_LH_retrieve, @function
OPENSSL_LH_retrieve:
.LFB80:
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
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L40
	movq	-24(%rbp), %rax
	movl	$0, 96(%rax)
.L40:
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getrn
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	jmp	.L43
.L41:
	movl	$0, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	OPENSSL_LH_retrieve, .-OPENSSL_LH_retrieve
	.type	doall_util_fn, @function
doall_util_fn:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L53
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L47
.L52:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L48
.L51:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L49
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	16(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L50
.L49:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L50:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L48:
	cmpq	$0, -16(%rbp)
	jne	.L51
	subl	$1, -4(%rbp)
.L47:
	cmpl	$0, -4(%rbp)
	jns	.L52
	jmp	.L44
.L53:
	nop
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	doall_util_fn, .-doall_util_fn
	.globl	OPENSSL_LH_doall
	.type	OPENSSL_LH_doall, @function
OPENSSL_LH_doall:
.LFB82:
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
	je	.L57
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	doall_util_fn
	addq	$16, %rsp
	jmp	.L54
.L57:
	nop
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	OPENSSL_LH_doall, .-OPENSSL_LH_doall
	.globl	OPENSSL_LH_doall_arg
	.type	OPENSSL_LH_doall_arg, @function
OPENSSL_LH_doall_arg:
.LFB83:
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
	cmpq	$0, -8(%rbp)
	je	.L61
	movq	-8(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-24(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	doall_util_fn
	addq	$16, %rsp
	jmp	.L58
.L61:
	nop
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	OPENSSL_LH_doall_arg, .-OPENSSL_LH_doall_arg
	.globl	OPENSSL_LH_doall_arg_thunk
	.type	OPENSSL_LH_doall_arg_thunk, @function
OPENSSL_LH_doall_arg_thunk:
.LFB84:
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
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	-32(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	doall_util_fn
	addq	$16, %rsp
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	OPENSSL_LH_doall_arg_thunk, .-OPENSSL_LH_doall_arg_thunk
	.type	expand, @function
expand:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-72(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	cmpl	-28(%rbp), %eax
	jb	.L64
	movl	-20(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	leaq	0(,%rax,8), %rsi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$254, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L65
	movq	-72(%rbp), %rax
	movl	96(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 96(%rax)
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-32(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movl	-20(%rbp), %eax
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-72(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 68(%rax)
	movq	-72(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 60(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 64(%rax)
	jmp	.L67
.L64:
	movq	-72(%rbp), %rax
	movl	64(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 64(%rax)
.L67:
	movq	-72(%rbp), %rax
	movl	56(%rax), %eax
	leal	1(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %edx
	addl	%ecx, %edx
	movl	%edx, %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L68
.L71:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-20(%rbp), %edi
	movq	-56(%rbp), %rax
	movl	$0, %edx
	divq	%rdi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	-24(%rbp), %eax
	cmpq	%rax, %rdx
	je	.L69
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L70
.L69:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
.L70:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L68:
	cmpq	$0, -16(%rbp)
	jne	.L71
	movl	$1, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	expand, .-expand
	.type	contract, @function
contract:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	addl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, %eax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	jne	.L73
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	sall	$3, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movl	$294, %ecx
	movq	%rax, %rdi
	call	CRYPTO_realloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L74
	movq	-40(%rbp), %rax
	movl	96(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 96(%rax)
	jmp	.L75
.L74:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L75:
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	shrl	%eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	shrl	%eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 68(%rax)
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 64(%rax)
	jmp	.L76
.L73:
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 64(%rax)
.L76:
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L79
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L81
.L80:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L79:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L80
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L81:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	contract, .-contract
	.type	getrn, @function
getrn:
.LFB87:
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
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L83
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	%rax, -24(%rbp)
	jmp	.L84
.L83:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -24(%rbp)
.L84:
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	68(%rax), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -32(%rbp)
	jnb	.L85
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, -32(%rbp)
.L85:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L86
.L92:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L87
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	jmp	.L88
.L87:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L89
	movq	-40(%rbp), %rax
	movq	32(%rax), %r8
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	testl	%eax, %eax
	jne	.L90
	jmp	.L91
.L89:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	testl	%eax, %eax
	je	.L94
.L90:
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
.L88:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L86:
	cmpq	$0, -16(%rbp)
	jne	.L92
	jmp	.L91
.L94:
	nop
.L91:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	getrn, .-getrn
	.globl	OPENSSL_LH_strhash
	.type	OPENSSL_LH_strhash, @function
OPENSSL_LH_strhash:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L96
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L97
.L96:
	movq	-8(%rbp), %rax
	jmp	.L98
.L97:
	movq	$256, -16(%rbp)
	jmp	.L99
.L100:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	orq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	addq	$256, -16(%rbp)
	movq	-24(%rbp), %rax
	shrq	$2, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	xorl	%edx, %eax
	andl	$15, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movl	$32, %eax
	subl	-28(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rsi, %rax
	movq	%rax, -8(%rbp)
	movl	$4294967295, %eax
	andq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	imulq	%rax, %rax
	xorq	%rax, -8(%rbp)
	addq	$1, -40(%rbp)
.L99:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L100
	movq	-8(%rbp), %rax
	shrq	$16, %rax
	xorq	-8(%rbp), %rax
.L98:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	OPENSSL_LH_strhash, .-OPENSSL_LH_strhash
	.globl	ossl_lh_strcasehash
	.type	ossl_lh_strcasehash, @function
ossl_lh_strcasehash:
.LFB89:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	$0, -8(%rbp)
	movq	$-33, -24(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L102
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L103
.L102:
	movq	-8(%rbp), %rax
	jmp	.L104
.L103:
	movq	$256, -16(%rbp)
	jmp	.L105
.L106:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	andq	-24(%rbp), %rax
	orq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$2, %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	xorl	%edx, %eax
	andl	$15, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movl	$32, %eax
	subl	-36(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rsi, %rax
	movq	%rax, -8(%rbp)
	movl	$4294967295, %eax
	andq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	imulq	%rax, %rax
	xorq	%rax, -8(%rbp)
	addq	$1, -56(%rbp)
	addq	$256, -16(%rbp)
.L105:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L106
	movq	-8(%rbp), %rax
	shrq	$16, %rax
	xorq	-8(%rbp), %rax
.L104:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	ossl_lh_strcasehash, .-ossl_lh_strcasehash
	.globl	OPENSSL_LH_num_items
	.type	OPENSSL_LH_num_items, @function
OPENSSL_LH_num_items:
.LFB90:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L108
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	jmp	.L110
.L108:
	movl	$0, %eax
.L110:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	OPENSSL_LH_num_items, .-OPENSSL_LH_num_items
	.globl	OPENSSL_LH_get_down_load
	.type	OPENSSL_LH_get_down_load, @function
OPENSSL_LH_get_down_load:
.LFB91:
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
.LFE91:
	.size	OPENSSL_LH_get_down_load, .-OPENSSL_LH_get_down_load
	.globl	OPENSSL_LH_set_down_load
	.type	OPENSSL_LH_set_down_load, @function
OPENSSL_LH_set_down_load:
.LFB92:
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
.LFE92:
	.size	OPENSSL_LH_set_down_load, .-OPENSSL_LH_set_down_load
	.globl	OPENSSL_LH_error
	.type	OPENSSL_LH_error, @function
OPENSSL_LH_error:
.LFB93:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	96(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	OPENSSL_LH_error, .-OPENSSL_LH_error
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
