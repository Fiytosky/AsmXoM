	.file	"async_posix.c"
	.text
	.local	async_mem_lock
	.comm	async_mem_lock,8,8
	.globl	async_local_init
	.type	async_local_init, @function
async_local_init:
.LFB100:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, async_mem_lock(%rip)
	movq	async_mem_lock(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	async_local_init, .-async_local_init
	.globl	async_local_deinit
	.type	async_local_deinit, @function
async_local_deinit:
.LFB101:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	async_mem_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	async_local_deinit, .-async_local_deinit
	.data
	.align 4
	.type	allow_customize, @object
	.size	allow_customize, 4
allow_customize:
	.long	1
	.section	.data.rel.local,"aw"
	.align 8
	.type	stack_alloc_impl, @object
	.size	stack_alloc_impl, 8
stack_alloc_impl:
	.quad	async_stack_alloc
	.align 8
	.type	stack_free_impl, @object
	.size	stack_free_impl, 8
stack_free_impl:
	.quad	async_stack_free
	.text
	.globl	ASYNC_is_capable
	.type	ASYNC_is_capable, @function
ASYNC_is_capable:
.LFB102:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$976, %rsp
	leaq	-976(%rbp), %rax
	movq	%rax, %rdi
	call	getcontext@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	ASYNC_is_capable, .-ASYNC_is_capable
	.globl	ASYNC_set_mem_functions
	.type	ASYNC_set_mem_functions, @function
ASYNC_set_mem_functions:
.LFB103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %esi
	movl	$256, %edi
	call	OPENSSL_init_crypto@PLT
	movq	async_mem_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	allow_customize(%rip), %eax
	testl	%eax, %eax
	jne	.L10
	movq	async_mem_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	$0, %eax
	jmp	.L9
.L10:
	movq	async_mem_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -8(%rbp)
	je	.L11
	movq	-8(%rbp), %rax
	movq	%rax, stack_alloc_impl(%rip)
.L11:
	cmpq	$0, -16(%rbp)
	je	.L12
	movq	-16(%rbp), %rax
	movq	%rax, stack_free_impl(%rip)
.L12:
	movl	$1, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	ASYNC_set_mem_functions, .-ASYNC_set_mem_functions
	.globl	ASYNC_get_mem_functions
	.type	ASYNC_get_mem_functions, @function
ASYNC_get_mem_functions:
.LFB104:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L14
	movq	stack_alloc_impl(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L14:
	cmpq	$0, -16(%rbp)
	je	.L16
	movq	stack_free_impl(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L16:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	ASYNC_get_mem_functions, .-ASYNC_get_mem_functions
	.section	.rodata
	.align 8
.LC0:
	.string	"../crypto/async/arch/async_posix.c"
	.text
	.type	async_stack_alloc, @function
async_stack_alloc:
.LFB105:
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
	leaq	.LC0(%rip), %rcx
	movl	$84, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	async_stack_alloc, .-async_stack_alloc
	.type	async_stack_free, @function
async_stack_free:
.LFB106:
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
	movl	$89, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	async_stack_free, .-async_stack_free
	.globl	async_local_cleanup
	.type	async_local_cleanup, @function
async_local_cleanup:
.LFB107:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	async_local_cleanup, .-async_local_cleanup
	.globl	async_fibre_makecontext
	.type	async_fibre_makecontext, @function
async_fibre_makecontext:
.LFB108:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, 1168(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getcontext@PLT
	testl	%eax, %eax
	jne	.L23
	movq	$32768, -8(%rbp)
	movl	allow_customize(%rip), %eax
	testl	%eax, %eax
	je	.L24
	movq	async_mem_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L25
	movl	$0, %eax
	jmp	.L29
.L25:
	movl	$0, allow_customize(%rip)
	movq	async_mem_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L24:
	movq	stack_alloc_impl(%rip), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	async_start_func@GOTPCREL(%rip), %rdx
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	makecontext@PLT
	movl	$1, %eax
	jmp	.L29
.L23:
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
.L28:
	movl	$0, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	async_fibre_makecontext, .-async_fibre_makecontext
	.globl	async_fibre_free
	.type	async_fibre_free, @function
async_fibre_free:
.LFB109:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	stack_free_impl(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	async_fibre_free, .-async_fibre_free
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
