	.file	"bn_ctx.c"
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
	.section	.rodata
.LC0:
	.string	"%s\n"
.LC1:
	.string	"  (%16p): "
.LC2:
	.string	"%03x "
.LC3:
	.string	"\n"
.LC4:
	.string	""
.LC5:
	.string	"   %16s : "
.LC6:
	.string	"    "
.LC7:
	.string	"^^^ "
	.text
	.type	ctxdbg, @function
ctxdbg:
.LFB161:
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
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-56(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L6
.L7:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	andl	$15, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %ecx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movl	(%rax), %edx
	leaq	.LC2(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	-4(%rbp), %eax
	andl	$15, %eax
	testl	%eax, %eax
	jne	.L6
	movq	-16(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -16(%rbp)
.L6:
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jb	.L7
	leaq	.LC3(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, -4(%rbp)
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L8
.L10:
	leaq	.LC6(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L9:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-8(%rbp), %ecx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	cmpl	%edx, %eax
	jb	.L10
	leaq	.LC7(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -4(%rbp)
	addl	$1, -8(%rbp)
.L8:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jb	.L9
	leaq	.LC3(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ctxdbg, .-ctxdbg
	.section	.rodata
.LC8:
	.string	"../crypto/bn/bn_ctx.c"
	.text
	.globl	BN_CTX_new_ex
	.type	BN_CTX_new_ex, @function
BN_CTX_new_ex:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC8(%rip), %rax
	movl	$122, %edx
	movq	%rax, %rsi
	movl	$72, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_POOL_init
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	BN_STACK_init
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	BN_CTX_new_ex, .-BN_CTX_new_ex
	.globl	BN_CTX_new
	.type	BN_CTX_new, @function
BN_CTX_new:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	BN_CTX_new_ex@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	BN_CTX_new, .-BN_CTX_new
	.globl	BN_CTX_secure_new_ex
	.type	BN_CTX_secure_new_ex, @function
BN_CTX_secure_new_ex:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_CTX_new_ex@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movl	$8, 60(%rax)
.L18:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	BN_CTX_secure_new_ex, .-BN_CTX_secure_new_ex
	.globl	BN_CTX_secure_new
	.type	BN_CTX_secure_new, @function
BN_CTX_secure_new:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	BN_CTX_secure_new_ex@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BN_CTX_secure_new, .-BN_CTX_secure_new
	.globl	BN_CTX_free
	.type	BN_CTX_free, @function
BN_CTX_free:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L25
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	BN_STACK_finish
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_POOL_finish
	leaq	.LC8(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$176, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L22
.L25:
	nop
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BN_CTX_free, .-BN_CTX_free
	.globl	BN_CTX_start
	.type	BN_CTX_start, @function
BN_CTX_start:
.LFB167:
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
	movl	52(%rax), %eax
	testl	%eax, %eax
	jne	.L27
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L28
.L27:
	movq	-24(%rbp), %rax
	movl	52(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 52(%rax)
	jmp	.L29
.L28:
	movq	-24(%rbp), %rax
	movl	48(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	BN_STACK_push
	testl	%eax, %eax
	jne	.L29
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$187, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movl	52(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 52(%rax)
.L29:
	movq	$0, -16(%rbp)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	BN_CTX_start, .-BN_CTX_start
	.globl	BN_CTX_end
	.type	BN_CTX_end, @function
BN_CTX_end:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L36
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L33
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 52(%rax)
	jmp	.L34
.L33:
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	BN_STACK_pop
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jnb	.L35
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_POOL_release
.L35:
	movq	-40(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 48(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 56(%rax)
.L34:
	movq	$0, -24(%rbp)
	jmp	.L30
.L36:
	nop
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BN_CTX_end, .-BN_CTX_end
	.globl	BN_CTX_get
	.type	BN_CTX_get, @function
BN_CTX_get:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	jne	.L38
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L39
.L38:
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	-40(%rbp), %rax
	movl	60(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BN_POOL_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L41
	movq	-40(%rbp), %rax
	movl	$1, 56(%rax)
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$225, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L40
.L41:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_zero_ex@PLT
	movq	-16(%rbp), %rax
	movl	20(%rax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-40(%rbp), %rax
	movl	48(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	BN_CTX_get, .-BN_CTX_get
	.globl	ossl_bn_get_libctx
	.type	ossl_bn_get_libctx, @function
ossl_bn_get_libctx:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
.L44:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	ossl_bn_get_libctx, .-ossl_bn_get_libctx
	.type	BN_STACK_init, @function
BN_STACK_init:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BN_STACK_init, .-BN_STACK_init
	.type	BN_STACK_finish, @function
BN_STACK_finish:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	BN_STACK_finish, .-BN_STACK_finish
	.type	BN_STACK_push, @function
BN_STACK_push:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, %edx
	jne	.L48
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L49
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	shrl	%eax
	movl	%eax, -4(%rbp)
	jmp	.L50
.L49:
	movl	$32, -4(%rbp)
.L50:
	movl	-4(%rbp), %eax
	salq	$2, %rax
	leaq	.LC8(%rip), %rcx
	movl	$269, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L53
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L53:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$273, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 12(%rax)
.L48:
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 8(%rdx)
	movl	%eax, %eax
	salq	$2, %rax
	leaq	(%rsi,%rax), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	BN_STACK_push, .-BN_STACK_push
	.type	BN_STACK_pop, @function
BN_STACK_pop:
.LFB174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	BN_STACK_pop, .-BN_STACK_pop
	.type	BN_POOL_init, @function
BN_POOL_init:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	BN_POOL_init, .-BN_POOL_init
	.type	BN_POOL_finish, @function
BN_POOL_finish:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L58
.L62:
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L59
.L61:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L60
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_clear_free@PLT
.L60:
	addq	$24, -16(%rbp)
.L59:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	cmpl	$15, %eax
	jbe	.L61
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	392(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rcx
	movl	$306, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L58:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L62
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	BN_POOL_finish, .-BN_POOL_finish
	.type	BN_POOL_get, @function
BN_POOL_get:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %edx
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	%eax, %edx
	jne	.L64
	leaq	.LC8(%rip), %rax
	movl	$321, %edx
	movq	%rax, %rsi
	movl	$400, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L67
.L69:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	bn_init@PLT
	movl	-44(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L68
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BN_set_flags@PLT
.L68:
	addq	$24, -8(%rbp)
.L67:
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	cmpl	$15, %eax
	jbe	.L69
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 384(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 392(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L71
.L70:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 392(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L71:
	movq	-40(%rbp), %rax
	movl	28(%rax), %eax
	leal	16(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	jmp	.L66
.L64:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L72
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L73
.L72:
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	andl	$15, %eax
	testl	%eax, %eax
	jne	.L73
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	392(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
.L73:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, 24(%rdx)
	movl	%eax, %eax
	andl	$15, %eax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	BN_POOL_get, .-BN_POOL_get
	.type	BN_POOL_release, @function
BN_POOL_release:
.LFB178:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	subl	$1, %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L75
.L77:
	cmpl	$0, -4(%rbp)
	jne	.L76
	movl	$15, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	384(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L75
.L76:
	subl	$1, -4(%rbp)
.L75:
	movl	-28(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -28(%rbp)
	testl	%eax, %eax
	jne	.L77
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	BN_POOL_release, .-BN_POOL_release
	.section	.rodata
	.align 8
	.type	__func__.1, @object
	.size	__func__.1, 13
__func__.1:
	.string	"BN_CTX_start"
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 11
__func__.0:
	.string	"BN_CTX_get"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
