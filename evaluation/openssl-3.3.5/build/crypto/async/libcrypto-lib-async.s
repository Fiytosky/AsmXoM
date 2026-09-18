	.file	"async.c"
	.text
	.type	async_fibre_swapcontext, @function
async_fibre_swapcontext:
.LFB30:
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
	movq	-8(%rbp), %rax
	movl	$1, 1168(%rax)
	cmpl	$0, -20(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	addq	$968, %rax
	movq	%rax, %rdi
	call	_setjmp@PLT
	testl	%eax, %eax
	jne	.L4
.L2:
	movq	-16(%rbp), %rax
	movl	1168(%rax), %eax
	testl	%eax, %eax
	je	.L5
	movq	-16(%rbp), %rax
	addq	$968, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_longjmp@PLT
.L5:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	setcontext@PLT
.L4:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	async_fibre_swapcontext, .-async_fibre_swapcontext
	.type	sk_ASYNC_JOB_new_reserve, @function
sk_ASYNC_JOB_new_reserve:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_new_reserve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	sk_ASYNC_JOB_new_reserve, .-sk_ASYNC_JOB_new_reserve
	.type	sk_ASYNC_JOB_free, @function
sk_ASYNC_JOB_free:
.LFB37:
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
	call	OPENSSL_sk_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	sk_ASYNC_JOB_free, .-sk_ASYNC_JOB_free
	.type	sk_ASYNC_JOB_push, @function
sk_ASYNC_JOB_push:
.LFB41:
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
.LFE41:
	.size	sk_ASYNC_JOB_push, .-sk_ASYNC_JOB_push
	.type	sk_ASYNC_JOB_pop, @function
sk_ASYNC_JOB_pop:
.LFB43:
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
	call	OPENSSL_sk_pop@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	sk_ASYNC_JOB_pop, .-sk_ASYNC_JOB_pop
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB170:
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
.LFE170:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB171:
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
.LFE171:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.local	ctxkey
	.comm	ctxkey,4,4
	.local	poolkey
	.comm	poolkey,4,4
	.section	.rodata
.LC0:
	.string	"../crypto/async/async.c"
	.text
	.type	async_ctx_new, @function
async_ctx_new:
.LFB186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	async_delete_thread_state(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_init_thread_start@PLT
	testl	%eax, %eax
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	leaq	.LC0(%rip), %rax
	movl	$42, %edx
	movq	%rax, %rsi
	movl	$1192, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L24
	movq	-8(%rbp), %rax
	movq	$0, 1176(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 1184(%rax)
	movq	-8(%rbp), %rax
	leaq	ctxkey(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	testl	%eax, %eax
	je	.L25
	movq	-8(%rbp), %rax
	jmp	.L20
.L24:
	nop
	jmp	.L22
.L25:
	nop
.L22:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$54, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	async_ctx_new, .-async_ctx_new
	.globl	async_get_ctx
	.type	async_get_ctx, @function
async_get_ctx:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ctxkey(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	async_get_ctx, .-async_get_ctx
	.type	async_ctx_free, @function
async_ctx_free:
.LFB188:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	async_get_ctx@PLT
	movq	%rax, -8(%rbp)
	leaq	ctxkey(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$73, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	async_ctx_free, .-async_ctx_free
	.type	async_job_new, @function
async_job_new:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$82, %edx
	movq	%rax, %rsi
	movl	$1216, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	movl	$0, 1196(%rax)
	movq	-8(%rbp), %rax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	async_job_new, .-async_job_new
	.type	async_job_free, @function
async_job_free:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movq	1184(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$94, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	async_fibre_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$96, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L36:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	async_job_free, .-async_job_free
	.type	async_get_pool_job, @function
async_get_pool_job:
.LFB191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	poolkey(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L38
	movl	$0, %esi
	movl	$0, %edi
	call	ASYNC_init_thread@PLT
	testl	%eax, %eax
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	leaq	poolkey(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -16(%rbp)
.L38:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_ASYNC_JOB_pop
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L41
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L42
	movl	$0, %eax
	jmp	.L40
.L42:
	call	async_job_new
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L41
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	async_fibre_makecontext@PLT
	testl	%eax, %eax
	jne	.L43
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	async_job_free
	movl	$0, %eax
	jmp	.L40
.L43:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
.L41:
	movq	-8(%rbp), %rax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	async_get_pool_job, .-async_get_pool_job
	.type	async_release_job, @function
async_release_job:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	poolkey(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$138, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$51, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L44
.L45:
	movq	-24(%rbp), %rax
	movq	1184(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$141, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
	movq	$0, 1184(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_ASYNC_JOB_push
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	async_release_job, .-async_release_job
	.globl	async_start_func
	.type	async_start_func, @function
async_start_func:
.LFB193:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	async_get_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$152, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$51, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L51
.L48:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	1176(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	1184(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-16(%rbp), %rdx
	movl	%eax, 1192(%rdx)
	movq	-16(%rbp), %rax
	movl	$3, 1196(%rax)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	async_fibre_swapcontext
	testl	%eax, %eax
	jne	.L48
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$168, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$51, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L48
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE193:
	.size	async_start_func, .-async_start_func
	.globl	ASYNC_start_job
	.type	ASYNC_start_job, @function
ASYNC_start_job:
.LFB194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movl	$0, %esi
	movl	$256, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	jne	.L53
	movl	$0, %eax
	jmp	.L54
.L53:
	call	async_get_ctx@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L55
	call	async_ctx_new
	movq	%rax, -24(%rbp)
.L55:
	cmpq	$0, -24(%rbp)
	jne	.L56
	movl	$0, %eax
	jmp	.L54
.L56:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 1176(%rax)
.L72:
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movl	1196(%rax), %eax
	cmpl	$3, %eax
	jne	.L59
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movl	1192(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	$0, 1200(%rax)
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, %rdi
	call	async_release_job
	movq	-24(%rbp), %rax
	movq	$0, 1176(%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$3, %eax
	jmp	.L54
.L59:
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movl	1196(%rax), %eax
	cmpl	$1, %eax
	jne	.L60
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movl	$2, 1196(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 1176(%rax)
	movl	$2, %eax
	jmp	.L54
.L60:
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movl	1196(%rax), %eax
	cmpl	$2, %eax
	jne	.L61
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L62
	movl	$0, %eax
	jmp	.L54
.L62:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 1176(%rax)
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	1208(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L63
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$221, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$51, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L64
.L63:
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	async_fibre_swapcontext
	testl	%eax, %eax
	jne	.L65
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, 1208(%rbx)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$228, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$51, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L64
.L65:
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, 1208(%rbx)
	jmp	.L66
.L61:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$241, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$51, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, %rdi
	call	async_release_job
	movq	-24(%rbp), %rax
	movq	$0, 1176(%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L54
.L58:
	call	async_get_pool_job
	movq	-24(%rbp), %rdx
	movq	%rax, 1176(%rdx)
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	movl	$1, %eax
	jmp	.L54
.L67:
	cmpq	$0, -72(%rbp)
	je	.L68
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rbx
	leaq	.LC0(%rip), %rcx
	movq	-80(%rbp), %rax
	movl	$253, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, 1184(%rbx)
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	1184(%rax), %rax
	testq	%rax, %rax
	jne	.L69
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, %rdi
	call	async_release_job
	movq	-24(%rbp), %rax
	movq	$0, 1176(%rax)
	movl	$0, %eax
	jmp	.L54
.L69:
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	1184(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L70
.L68:
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	$0, 1184(%rax)
.L70:
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 1176(%rax)
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 1200(%rax)
	movl	$0, %edi
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	async_fibre_swapcontext
	testl	%eax, %eax
	jne	.L71
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$269, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$51, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L64
.L71:
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_set0_default@PLT
	movq	%rax, 1208(%rbx)
.L66:
	jmp	.L72
.L64:
	movq	-24(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, %rdi
	call	async_release_job
	movq	-24(%rbp), %rax
	movq	$0, 1176(%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L54:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE194:
	.size	ASYNC_start_job, .-ASYNC_start_job
	.globl	ASYNC_pause_job
	.type	ASYNC_pause_job, @function
ASYNC_pause_job:
.LFB195:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	async_get_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L74
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	testq	%rax, %rax
	je	.L74
	movq	-8(%rbp), %rax
	movl	1184(%rax), %eax
	testl	%eax, %eax
	je	.L75
.L74:
	movl	$1, %eax
	jmp	.L76
.L75:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$1, 1196(%rax)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	async_fibre_swapcontext
	testl	%eax, %eax
	jne	.L77
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$306, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$102, %esi
	movl	$51, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L76
.L77:
	movq	-16(%rbp), %rax
	movq	1200(%rax), %rax
	movq	%rax, %rdi
	call	async_wait_ctx_reset_counts@PLT
	movl	$1, %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE195:
	.size	ASYNC_pause_job, .-ASYNC_pause_job
	.type	async_empty_pool, @function
async_empty_pool:
.LFB196:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L82
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L82
.L80:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_ASYNC_JOB_pop
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	async_job_free
	cmpq	$0, -8(%rbp)
	jne	.L80
	jmp	.L78
.L82:
	nop
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE196:
	.size	async_empty_pool, .-async_empty_pool
	.globl	async_init
	.type	async_init, @function
async_init:
.LFB197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ctxkey(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_init_local@PLT
	testl	%eax, %eax
	jne	.L84
	movl	$0, %eax
	jmp	.L85
.L84:
	leaq	poolkey(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_init_local@PLT
	testl	%eax, %eax
	jne	.L86
	leaq	ctxkey(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	movl	$0, %eax
	jmp	.L85
.L86:
	call	async_local_init@PLT
.L85:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE197:
	.size	async_init, .-async_init
	.globl	async_deinit
	.type	async_deinit, @function
async_deinit:
.LFB198:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	ctxkey(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	leaq	poolkey(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	call	async_local_deinit@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE198:
	.size	async_deinit, .-async_deinit
	.globl	ASYNC_init_thread
	.type	ASYNC_init_thread, @function
ASYNC_init_thread:
.LFB199:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jnb	.L89
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$354, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$103, %esi
	movl	$51, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L90
.L89:
	movl	$0, %esi
	movl	$256, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	jne	.L91
	movl	$0, %eax
	jmp	.L90
.L91:
	leaq	async_delete_thread_state(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	ossl_init_thread_start@PLT
	testl	%eax, %eax
	jne	.L92
	movl	$0, %eax
	jmp	.L90
.L92:
	leaq	.LC0(%rip), %rax
	movl	$364, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L93
	movl	$0, %eax
	jmp	.L90
.L93:
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	movl	$0, %edi
	call	sk_ASYNC_JOB_new_reserve
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L94
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$370, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$51, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$371, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L90
.L94:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L95
.L99:
	call	async_job_new
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L96
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	async_fibre_makecontext@PLT
	testl	%eax, %eax
	jne	.L97
.L96:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	async_job_free
	jmp	.L98
.L97:
	movq	-24(%rbp), %rax
	movq	$0, 1184(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_ASYNC_JOB_push
	addq	$1, -8(%rbp)
.L95:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	testq	%rax, %rax
	jne	.L99
.L98:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	leaq	poolkey(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	testl	%eax, %eax
	jne	.L100
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$395, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$101, %esi
	movl	$51, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
.L101:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	async_empty_pool
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_ASYNC_JOB_free
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$403, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L90
.L100:
	movl	$1, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE199:
	.size	ASYNC_init_thread, .-ASYNC_init_thread
	.type	async_delete_thread_state, @function
async_delete_thread_state:
.LFB200:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	poolkey(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L103
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	async_empty_pool
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_ASYNC_JOB_free
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$414, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	poolkey(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
.L103:
	call	async_local_cleanup@PLT
	call	async_ctx_free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE200:
	.size	async_delete_thread_state, .-async_delete_thread_state
	.globl	ASYNC_cleanup_thread
	.type	ASYNC_cleanup_thread, @function
ASYNC_cleanup_thread:
.LFB201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$256, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	je	.L107
	movl	$0, %edi
	call	async_delete_thread_state
	jmp	.L104
.L107:
	nop
.L104:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE201:
	.size	ASYNC_cleanup_thread, .-ASYNC_cleanup_thread
	.globl	ASYNC_get_current_job
	.type	ASYNC_get_current_job, @function
ASYNC_get_current_job:
.LFB202:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %esi
	movl	$256, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	jne	.L109
	movl	$0, %eax
	jmp	.L110
.L109:
	call	async_get_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L111
	movl	$0, %eax
	jmp	.L110
.L111:
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE202:
	.size	ASYNC_get_current_job, .-ASYNC_get_current_job
	.globl	ASYNC_get_wait_ctx
	.type	ASYNC_get_wait_ctx, @function
ASYNC_get_wait_ctx:
.LFB203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	1200(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE203:
	.size	ASYNC_get_wait_ctx, .-ASYNC_get_wait_ctx
	.globl	ASYNC_block_pause
	.type	ASYNC_block_pause, @function
ASYNC_block_pause:
.LFB204:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %esi
	movl	$256, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	je	.L119
	call	async_get_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L120
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-8(%rbp), %rax
	movl	1184(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 1184(%rax)
	jmp	.L114
.L119:
	nop
	jmp	.L114
.L120:
	nop
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE204:
	.size	ASYNC_block_pause, .-ASYNC_block_pause
	.globl	ASYNC_unblock_pause
	.type	ASYNC_unblock_pause, @function
ASYNC_unblock_pause:
.LFB205:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %esi
	movl	$256, %edi
	call	OPENSSL_init_crypto@PLT
	testl	%eax, %eax
	je	.L126
	call	async_get_ctx@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L127
	movq	-8(%rbp), %rax
	movq	1176(%rax), %rax
	testq	%rax, %rax
	je	.L127
	movq	-8(%rbp), %rax
	movl	1184(%rax), %eax
	testl	%eax, %eax
	je	.L121
	movq	-8(%rbp), %rax
	movl	1184(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 1184(%rax)
	jmp	.L121
.L126:
	nop
	jmp	.L121
.L127:
	nop
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE205:
	.size	ASYNC_unblock_pause, .-ASYNC_unblock_pause
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 18
__func__.4:
	.string	"async_release_job"
	.align 16
	.type	__func__.3, @object
	.size	__func__.3, 17
__func__.3:
	.string	"async_start_func"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"ASYNC_start_job"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"ASYNC_pause_job"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 18
__func__.0:
	.string	"ASYNC_init_thread"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
