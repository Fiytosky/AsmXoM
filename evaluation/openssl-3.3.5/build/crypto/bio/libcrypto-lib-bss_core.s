	.file	"bss_core.c"
	.text
	.type	OSSL_FUNC_BIO_read_ex, @function
OSSL_FUNC_BIO_read_ex:
.LFB44:
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
.LFE44:
	.size	OSSL_FUNC_BIO_read_ex, .-OSSL_FUNC_BIO_read_ex
	.type	OSSL_FUNC_BIO_write_ex, @function
OSSL_FUNC_BIO_write_ex:
.LFB45:
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
.LFE45:
	.size	OSSL_FUNC_BIO_write_ex, .-OSSL_FUNC_BIO_write_ex
	.type	OSSL_FUNC_BIO_gets, @function
OSSL_FUNC_BIO_gets:
.LFB46:
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
.LFE46:
	.size	OSSL_FUNC_BIO_gets, .-OSSL_FUNC_BIO_gets
	.type	OSSL_FUNC_BIO_puts, @function
OSSL_FUNC_BIO_puts:
.LFB47:
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
.LFE47:
	.size	OSSL_FUNC_BIO_puts, .-OSSL_FUNC_BIO_puts
	.type	OSSL_FUNC_BIO_up_ref, @function
OSSL_FUNC_BIO_up_ref:
.LFB48:
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
.LFE48:
	.size	OSSL_FUNC_BIO_up_ref, .-OSSL_FUNC_BIO_up_ref
	.type	OSSL_FUNC_BIO_free, @function
OSSL_FUNC_BIO_free:
.LFB49:
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
.LFE49:
	.size	OSSL_FUNC_BIO_free, .-OSSL_FUNC_BIO_free
	.type	OSSL_FUNC_BIO_ctrl, @function
OSSL_FUNC_BIO_ctrl:
.LFB52:
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
.LFE52:
	.size	OSSL_FUNC_BIO_ctrl, .-OSSL_FUNC_BIO_ctrl
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB386:
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
.LFE386:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB387:
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
.LFE387:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"../crypto/bio/bss_core.c"
	.text
	.globl	ossl_bio_core_globals_free
	.type	ossl_bio_core_globals_free, @function
ossl_bio_core_globals_free:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$27, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	ossl_bio_core_globals_free, .-ossl_bio_core_globals_free
	.globl	ossl_bio_core_globals_new
	.type	ossl_bio_core_globals_new, @function
ossl_bio_core_globals_new:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$32, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_bio_core_globals_new, .-ossl_bio_core_globals_new
	.type	get_globals, @function
get_globals:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$17, %esi
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_data@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	get_globals, .-get_globals
	.type	bio_core_read_ex, @function
bio_core_read_ex:
.LFB410:
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
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_globals
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L25
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L26
.L25:
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	call	*%rbx
.L27:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	bio_core_read_ex, .-bio_core_read_ex
	.type	bio_core_write_ex, @function
bio_core_write_ex:
.LFB411:
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
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_globals
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L29
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L30
.L29:
	movl	$0, %eax
	jmp	.L31
.L30:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	call	*%rbx
.L31:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	bio_core_write_ex, .-bio_core_write_ex
	.type	bio_core_ctrl, @function
bio_core_ctrl:
.LFB412:
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
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_globals
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L33
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L34
.L33:
	movq	$-1, %rax
	jmp	.L35
.L34:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	call	*%rbx
	cltq
.L35:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	bio_core_ctrl, .-bio_core_ctrl
	.type	bio_core_gets, @function
bio_core_gets:
.LFB413:
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_globals
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L37
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L38
.L37:
	movl	$-1, %eax
	jmp	.L39
.L38:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, %rcx
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	*%rbx
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	bio_core_gets, .-bio_core_gets
	.type	bio_core_puts, @function
bio_core_puts:
.LFB414:
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_globals
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L41
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L42
.L41:
	movl	$-1, %eax
	jmp	.L43
.L42:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	*%rbx
.L43:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE414:
	.size	bio_core_puts, .-bio_core_puts
	.type	bio_core_new, @function
bio_core_new:
.LFB415:
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
	call	BIO_set_init@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE415:
	.size	bio_core_new, .-bio_core_new
	.type	bio_core_free, @function
bio_core_free:
.LFB416:
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	get_globals
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L47
	movl	$0, %eax
	jmp	.L48
.L47:
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_set_init@PLT
	movq	-24(%rbp), %rax
	movq	48(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_get_data@PLT
	movq	%rax, %rdi
	call	*%rbx
	movl	$1, %eax
.L48:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE416:
	.size	bio_core_free, .-bio_core_free
	.section	.rodata
.LC1:
	.string	"BIO to Core filter"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	corebiometh, @object
	.size	corebiometh, 112
corebiometh:
	.long	1049
	.zero	4
	.quad	.LC1
	.quad	bio_core_write_ex
	.quad	0
	.quad	bio_core_read_ex
	.quad	0
	.quad	bio_core_puts
	.quad	bio_core_gets
	.quad	bio_core_ctrl
	.quad	bio_core_new
	.quad	bio_core_free
	.quad	0
	.zero	16
	.text
	.globl	BIO_s_core
	.type	BIO_s_core, @function
BIO_s_core:
.LFB417:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	corebiometh(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE417:
	.size	BIO_s_core, .-BIO_s_core
	.globl	BIO_new_from_core_bio
	.type	BIO_new_from_core_bio, @function
BIO_new_from_core_bio:
.LFB418:
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
	movq	%rax, %rdi
	call	get_globals
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L53
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L53
.L52:
	movl	$0, %eax
	jmp	.L54
.L53:
	call	BIO_s_core@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_ex@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L55
	movl	$0, %eax
	jmp	.L54
.L55:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	testl	%eax, %eax
	jne	.L56
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
	jmp	.L54
.L56:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_data@PLT
	movq	-16(%rbp), %rax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE418:
	.size	BIO_new_from_core_bio, .-BIO_new_from_core_bio
	.globl	ossl_bio_init_core
	.type	ossl_bio_init_core, @function
ossl_bio_init_core:
.LFB419:
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
	movq	%rax, %rdi
	call	get_globals
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L60
	movl	$0, %eax
	jmp	.L59
.L76:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$50, %eax
	je	.L61
	cmpl	$50, %eax
	jg	.L62
	cmpl	$49, %eax
	je	.L63
	cmpl	$49, %eax
	jg	.L62
	cmpl	$48, %eax
	je	.L64
	cmpl	$48, %eax
	jg	.L62
	cmpl	$45, %eax
	je	.L65
	cmpl	$45, %eax
	jg	.L62
	cmpl	$44, %eax
	je	.L66
	cmpl	$44, %eax
	jg	.L62
	cmpl	$42, %eax
	je	.L67
	cmpl	$43, %eax
	je	.L68
	jmp	.L62
.L67:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L77
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_BIO_read_ex
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.L77
.L68:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L78
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_BIO_write_ex
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L78
.L63:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L79
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_BIO_gets
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	jmp	.L79
.L64:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L80
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_BIO_puts
	movq	-8(%rbp), %rdx
	movq	%rax, 24(%rdx)
	jmp	.L80
.L61:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L81
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_BIO_ctrl
	movq	-8(%rbp), %rdx
	movq	%rax, 32(%rdx)
	jmp	.L81
.L66:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L82
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_BIO_up_ref
	movq	-8(%rbp), %rdx
	movq	%rax, 40(%rdx)
	jmp	.L82
.L65:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L83
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_FUNC_BIO_free
	movq	-8(%rbp), %rdx
	movq	%rax, 48(%rdx)
	jmp	.L83
.L77:
	nop
	jmp	.L62
.L78:
	nop
	jmp	.L62
.L79:
	nop
	jmp	.L62
.L80:
	nop
	jmp	.L62
.L81:
	nop
	jmp	.L62
.L82:
	nop
	jmp	.L62
.L83:
	nop
.L62:
	addq	$16, -32(%rbp)
.L60:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L76
	movl	$1, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE419:
	.size	ossl_bio_init_core, .-ossl_bio_init_core
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
