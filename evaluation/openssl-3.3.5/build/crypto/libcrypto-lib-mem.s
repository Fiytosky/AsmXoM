	.file	"mem.c"
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
	.data
	.align 4
	.type	allow_customize, @object
	.size	allow_customize, 4
allow_customize:
	.long	1
	.section	.data.rel,"aw"
	.align 8
	.type	malloc_impl, @object
	.size	malloc_impl, 8
malloc_impl:
	.quad	CRYPTO_malloc
	.align 8
	.type	realloc_impl, @object
	.size	realloc_impl, 8
realloc_impl:
	.quad	CRYPTO_realloc
	.align 8
	.type	free_impl, @object
	.size	free_impl, 8
free_impl:
	.quad	CRYPTO_free
	.text
	.globl	CRYPTO_set_mem_functions
	.type	CRYPTO_set_mem_functions, @function
CRYPTO_set_mem_functions:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	allow_customize(%rip), %eax
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	%rax, malloc_impl(%rip)
.L8:
	cmpq	$0, -16(%rbp)
	je	.L9
	movq	-16(%rbp), %rax
	movq	%rax, realloc_impl(%rip)
.L9:
	cmpq	$0, -24(%rbp)
	je	.L10
	movq	-24(%rbp), %rax
	movq	%rax, free_impl(%rip)
.L10:
	movl	$1, %eax
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	CRYPTO_set_mem_functions, .-CRYPTO_set_mem_functions
	.globl	CRYPTO_get_mem_functions
	.type	CRYPTO_get_mem_functions, @function
CRYPTO_get_mem_functions:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L12
	movq	malloc_impl(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L12:
	cmpq	$0, -16(%rbp)
	je	.L13
	movq	realloc_impl(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L13:
	cmpq	$0, -24(%rbp)
	je	.L15
	movq	free_impl(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L15:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	CRYPTO_get_mem_functions, .-CRYPTO_get_mem_functions
	.globl	CRYPTO_malloc
	.type	CRYPTO_malloc, @function
CRYPTO_malloc:
.LFB162:
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
	movq	malloc_impl(%rip), %rax
	movq	CRYPTO_malloc@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L17
	movq	malloc_impl(%rip), %r8
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L18
	cmpq	$0, -24(%rbp)
	jne	.L26
.L18:
	movq	-8(%rbp), %rax
	jmp	.L20
.L17:
	cmpq	$0, -24(%rbp)
	jne	.L22
	movl	$0, %eax
	jmp	.L20
.L22:
	movl	allow_customize(%rip), %eax
	testl	%eax, %eax
	je	.L23
	movl	$0, allow_customize(%rip)
.L23:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L27
	movq	-8(%rbp), %rax
	jmp	.L20
.L26:
	nop
	jmp	.L21
.L27:
	nop
.L21:
	cmpq	$0, -32(%rbp)
	jne	.L24
	cmpl	$0, -36(%rbp)
	je	.L25
.L24:
	call	ERR_new@PLT
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L25:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	CRYPTO_malloc, .-CRYPTO_malloc
	.globl	CRYPTO_zalloc
	.type	CRYPTO_zalloc, @function
CRYPTO_zalloc:
.LFB163:
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
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L29
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L29:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	CRYPTO_zalloc, .-CRYPTO_zalloc
	.globl	CRYPTO_realloc
	.type	CRYPTO_realloc, @function
CRYPTO_realloc:
.LFB164:
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
	movl	%ecx, -28(%rbp)
	movq	realloc_impl(%rip), %rax
	movq	CRYPTO_realloc@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L32
	movq	realloc_impl(%rip), %r8
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%r8
	jmp	.L33
.L32:
	cmpq	$0, -8(%rbp)
	jne	.L34
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	jmp	.L33
.L34:
	cmpq	$0, -16(%rbp)
	jne	.L35
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L33
.L35:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	CRYPTO_realloc, .-CRYPTO_realloc
	.globl	CRYPTO_clear_realloc
	.type	CRYPTO_clear_realloc, @function
CRYPTO_clear_realloc:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L37
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	jmp	.L38
.L37:
	cmpq	$0, -40(%rbp)
	jne	.L39
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
	movl	$0, %eax
	jmp	.L38
.L39:
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L40
	movq	-32(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	OPENSSL_cleanse@PLT
	movq	-24(%rbp), %rax
	jmp	.L38
.L40:
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L41
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_clear_free@PLT
.L41:
	movq	-8(%rbp), %rax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	CRYPTO_clear_realloc, .-CRYPTO_clear_realloc
	.globl	CRYPTO_free
	.type	CRYPTO_free, @function
CRYPTO_free:
.LFB166:
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
	movq	free_impl(%rip), %rax
	movq	CRYPTO_free@GOTPCREL(%rip), %rdx
	cmpq	%rdx, %rax
	je	.L43
	movq	free_impl(%rip), %r8
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	jmp	.L42
.L43:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	CRYPTO_free, .-CRYPTO_free
	.globl	CRYPTO_clear_free
	.type	CRYPTO_clear_free, @function
CRYPTO_clear_free:
.LFB167:
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
	movl	%ecx, -28(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L49
	cmpq	$0, -16(%rbp)
	je	.L48
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
.L48:
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L45
.L49:
	nop
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	CRYPTO_clear_free, .-CRYPTO_clear_free
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
