	.file	"mem_sec.c"
	.text
	.local	secure_mem_used
	.comm	secure_mem_used,8,8
	.local	secure_mem_initialized
	.comm	secure_mem_initialized,4,4
	.local	sec_malloc_lock
	.comm	sec_malloc_lock,8,8
	.globl	CRYPTO_secure_malloc_init
	.type	CRYPTO_secure_malloc_init, @function
CRYPTO_secure_malloc_init:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	secure_mem_initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L2
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, sec_malloc_lock(%rip)
	movq	sec_malloc_lock(%rip), %rax
	testq	%rax, %rax
	jne	.L3
	movl	$0, %eax
	jmp	.L4
.L3:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sh_init
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L5
	movl	$1, secure_mem_initialized(%rip)
	jmp	.L2
.L5:
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, sec_malloc_lock(%rip)
.L2:
	movl	-4(%rbp), %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	CRYPTO_secure_malloc_init, .-CRYPTO_secure_malloc_init
	.globl	CRYPTO_secure_malloc_done
	.type	CRYPTO_secure_malloc_done, @function
CRYPTO_secure_malloc_done:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	secure_mem_used(%rip), %rax
	testq	%rax, %rax
	jne	.L7
	call	sh_done
	movl	$0, secure_mem_initialized(%rip)
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, sec_malloc_lock(%rip)
	movl	$1, %eax
	jmp	.L8
.L7:
	movl	$0, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	CRYPTO_secure_malloc_done, .-CRYPTO_secure_malloc_done
	.globl	CRYPTO_secure_malloc_initialized
	.type	CRYPTO_secure_malloc_initialized, @function
CRYPTO_secure_malloc_initialized:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	secure_mem_initialized(%rip), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	CRYPTO_secure_malloc_initialized, .-CRYPTO_secure_malloc_initialized
	.globl	CRYPTO_secure_malloc
	.type	CRYPTO_secure_malloc, @function
CRYPTO_secure_malloc:
.LFB77:
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
	movq	$0, -8(%rbp)
	movl	$111, -20(%rbp)
	movl	secure_mem_initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L12
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	jmp	.L13
.L12:
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L14
	movl	$524303, -20(%rbp)
	jmp	.L15
.L14:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	sh_malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L16
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sh_actual_size
	movq	%rax, -16(%rbp)
	jmp	.L17
.L16:
	movq	$0, -16(%rbp)
.L17:
	movq	secure_mem_used(%rip), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, secure_mem_used(%rip)
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L15:
	cmpq	$0, -8(%rbp)
	jne	.L18
	cmpq	$0, -48(%rbp)
	jne	.L19
	cmpl	$0, -52(%rbp)
	je	.L18
.L19:
	call	ERR_new@PLT
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-20(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L18:
	movq	-8(%rbp), %rax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	CRYPTO_secure_malloc, .-CRYPTO_secure_malloc
	.globl	CRYPTO_secure_zalloc
	.type	CRYPTO_secure_zalloc, @function
CRYPTO_secure_zalloc:
.LFB78:
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
	movl	secure_mem_initialized(%rip), %eax
	testl	%eax, %eax
	je	.L21
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	jmp	.L22
.L21:
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	CRYPTO_secure_zalloc, .-CRYPTO_secure_zalloc
	.globl	CRYPTO_secure_free
	.type	CRYPTO_secure_free, @function
CRYPTO_secure_free:
.LFB79:
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
	je	.L28
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	jne	.L26
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L23
.L26:
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sh_actual_size
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	secure_mem_used(%rip), %rax
	subq	-8(%rbp), %rax
	movq	%rax, secure_mem_used(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sh_free
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L23
.L28:
	nop
	jmp	.L23
.L29:
	nop
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	CRYPTO_secure_free, .-CRYPTO_secure_free
	.globl	CRYPTO_secure_clear_free
	.type	CRYPTO_secure_clear_free, @function
CRYPTO_secure_clear_free:
.LFB80:
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
	movl	%ecx, -44(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L35
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	jne	.L33
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L30
.L33:
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L36
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sh_actual_size
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_cleanse@PLT
	movq	secure_mem_used(%rip), %rax
	subq	-8(%rbp), %rax
	movq	%rax, secure_mem_used(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sh_free
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L30
.L35:
	nop
	jmp	.L30
.L36:
	nop
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	CRYPTO_secure_clear_free, .-CRYPTO_secure_clear_free
	.globl	CRYPTO_secure_allocated
	.type	CRYPTO_secure_allocated, @function
CRYPTO_secure_allocated:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	secure_mem_initialized(%rip), %eax
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L39
.L38:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	sh_allocated
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	CRYPTO_secure_allocated, .-CRYPTO_secure_allocated
	.globl	CRYPTO_secure_used
	.type	CRYPTO_secure_used, @function
CRYPTO_secure_used:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	secure_mem_used(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	CRYPTO_secure_used, .-CRYPTO_secure_used
	.globl	CRYPTO_secure_actual_size
	.type	CRYPTO_secure_actual_size, @function
CRYPTO_secure_actual_size:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L44
	movl	$0, %eax
	jmp	.L45
.L44:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sh_actual_size
	movq	%rax, -8(%rbp)
	movq	sec_malloc_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-8(%rbp), %rax
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	CRYPTO_secure_actual_size, .-CRYPTO_secure_actual_size
	.local	sh
	.comm	sh,80,32
	.section	.rodata
.LC0:
	.string	"../crypto/mem_sec.c"
	.align 8
.LC1:
	.string	"assertion failed: (bit & 1) == 0"
	.text
	.type	sh_getlist, @function
sh_getlist:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	40+sh(%rip), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	movq	24+sh(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	16+sh(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	48+sh(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rax, -16(%rbp)
	jmp	.L47
.L51:
	movq	56+sh(%rip), %rax
	movq	-16(%rbp), %rdx
	shrq	$3, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	andl	$7, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L53
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L50
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$354, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L50:
	shrq	-16(%rbp)
	subq	$1, -8(%rbp)
.L47:
	cmpq	$0, -16(%rbp)
	jne	.L51
	jmp	.L49
.L53:
	nop
.L49:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	sh_getlist, .-sh_getlist
	.section	.rodata
	.align 8
.LC2:
	.string	"assertion failed: list >= 0 && list < sh.freelist_size"
	.align 8
.LC3:
	.string	"assertion failed: ((ptr - sh.arena) & ((sh.arena_size >> list) - 1)) == 0"
	.align 8
.LC4:
	.string	"assertion failed: bit > 0 && bit < sh.bittable_size"
	.text
	.type	sh_testbit, @function
sh_testbit:
.LFB85:
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
	cmpl	$0, -28(%rbp)
	js	.L55
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	40+sh(%rip), %rax
	cmpq	%rax, %rdx
	jl	.L56
.L55:
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$365, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L56:
	movq	16+sh(%rip), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rsi
	movq	24+sh(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	andq	%rsi, %rax
	testq	%rax, %rax
	je	.L57
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$366, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L57:
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	16+sh(%rip), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rdi
	movq	24+sh(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	movq	%rdi, %rax
	movl	$0, %edx
	divq	%rcx
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L58
	movq	72+sh(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L59
.L58:
	leaq	.LC0(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movl	$368, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L59:
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	andl	$7, %edx
	movl	$1, %esi
	movl	%edx, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rdx
	andl	%edx, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	sh_testbit, .-sh_testbit
	.section	.rodata
	.align 8
.LC5:
	.string	"assertion failed: TESTBIT(table, bit)"
	.text
	.type	sh_clearbit, @function
sh_clearbit:
.LFB86:
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
	cmpl	$0, -28(%rbp)
	js	.L62
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	40+sh(%rip), %rax
	cmpq	%rax, %rdx
	jl	.L63
.L62:
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$376, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L63:
	movq	16+sh(%rip), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rsi
	movq	24+sh(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	andq	%rsi, %rax
	testq	%rax, %rax
	je	.L64
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$377, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L64:
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	16+sh(%rip), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rdi
	movq	24+sh(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	movq	%rdi, %rax
	movl	$0, %edx
	divq	%rcx
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L65
	movq	72+sh(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L66
.L65:
	leaq	.LC0(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movl	$379, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L66:
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	andl	$7, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L67
	leaq	.LC0(%rip), %rcx
	leaq	.LC5(%rip), %rax
	movl	$380, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L67:
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-8(%rbp), %rax
	andl	$7, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	notl	%eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	andl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	sh_clearbit, .-sh_clearbit
	.section	.rodata
	.align 8
.LC6:
	.string	"assertion failed: !TESTBIT(table, bit)"
	.text
	.type	sh_setbit, @function
sh_setbit:
.LFB87:
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
	cmpl	$0, -28(%rbp)
	js	.L69
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	40+sh(%rip), %rax
	cmpq	%rax, %rdx
	jl	.L70
.L69:
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$388, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L70:
	movq	16+sh(%rip), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rsi
	movq	24+sh(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	subq	$1, %rax
	andq	%rsi, %rax
	testq	%rax, %rax
	je	.L71
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rax
	movl	$389, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L71:
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	16+sh(%rip), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rdi
	movq	24+sh(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	movq	%rdi, %rax
	movl	$0, %edx
	divq	%rcx
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L72
	movq	72+sh(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L73
.L72:
	leaq	.LC0(%rip), %rcx
	leaq	.LC4(%rip), %rax
	movl	$391, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L73:
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	andl	$7, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L74
	leaq	.LC0(%rip), %rcx
	leaq	.LC6(%rip), %rax
	movl	$392, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L74:
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %esi
	movq	-8(%rbp), %rax
	andl	$7, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	orl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	sh_setbit, .-sh_setbit
	.section	.rodata
	.align 8
.LC7:
	.string	"assertion failed: WITHIN_FREELIST(list)"
	.align 8
.LC8:
	.string	"assertion failed: WITHIN_ARENA(ptr)"
	.align 8
.LC9:
	.string	"assertion failed: temp->next == NULL || WITHIN_ARENA(temp->next)"
	.align 8
.LC10:
	.string	"assertion failed: (char **)temp->next->p_next == list"
	.text
	.type	sh_add_to_list, @function
sh_add_to_list:
.LFB88:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	32+sh(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L76
	movq	32+sh(%rip), %rax
	movq	40+sh(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L77
.L76:
	leaq	.LC0(%rip), %rcx
	leaq	.LC7(%rip), %rax
	movl	$400, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L77:
	movq	16+sh(%rip), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L78
	movq	16+sh(%rip), %rdx
	movq	24+sh(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -32(%rbp)
	jb	.L79
.L78:
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rax
	movl	$401, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L79:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	16+sh(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L81
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	16+sh(%rip), %rcx
	movq	24+sh(%rip), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jb	.L80
.L81:
	leaq	.LC0(%rip), %rcx
	leaq	.LC9(%rip), %rax
	movl	$405, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L80:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L83
	leaq	.LC0(%rip), %rcx
	leaq	.LC10(%rip), %rax
	movl	$409, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L83:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L82:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	sh_add_to_list, .-sh_add_to_list
	.section	.rodata
	.align 8
.LC11:
	.string	"assertion failed: WITHIN_FREELIST(temp2->p_next) || WITHIN_ARENA(temp2->p_next)"
	.text
	.type	sh_remove_from_list, @function
sh_remove_from_list:
.LFB89:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L85
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L85:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32+sh(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L88
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	32+sh(%rip), %rax
	movq	40+sh(%rip), %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jb	.L84
.L88:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16+sh(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L89
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16+sh(%rip), %rcx
	movq	24+sh(%rip), %rax
	addq	%rcx, %rax
	cmpq	%rax, %rdx
	jb	.L84
.L89:
	leaq	.LC0(%rip), %rcx
	leaq	.LC11(%rip), %rax
	movl	$428, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L90:
	nop
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	sh_remove_from_list, .-sh_remove_from_list
	.section	.rodata
.LC12:
	.string	"assertion failed: size > 0"
	.align 8
.LC13:
	.string	"assertion failed: (size & (size - 1)) == 0"
	.align 8
.LC14:
	.string	"assertion failed: (minsize & (minsize - 1)) == 0"
	.align 8
.LC15:
	.string	"assertion failed: sh.freelist != NULL"
	.align 8
.LC16:
	.string	"assertion failed: sh.bittable != NULL"
	.align 8
.LC17:
	.string	"assertion failed: sh.bitmalloc != NULL"
	.text
	.type	sh_init, @function
sh_init:
.LFB90:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	leaq	sh(%rip), %rax
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	cmpq	$0, -56(%rbp)
	jne	.L92
	leaq	.LC0(%rip), %rcx
	leaq	.LC12(%rip), %rax
	movl	$446, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L92:
	movq	-56(%rbp), %rax
	subq	$1, %rax
	andq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L93
	leaq	.LC0(%rip), %rcx
	leaq	.LC13(%rip), %rax
	movl	$447, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L93:
	cmpq	$0, -56(%rbp)
	je	.L118
	movq	-56(%rbp), %rax
	subq	$1, %rax
	andq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.L118
	cmpq	$16, -64(%rbp)
	ja	.L97
	movq	$15, -64(%rbp)
	movq	-64(%rbp), %rax
	shrq	%rax
	orq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	shrq	$2, %rax
	orq	%rax, -64(%rbp)
	addq	$1, -64(%rbp)
	jmp	.L98
.L97:
	movq	-64(%rbp), %rax
	subq	$1, %rax
	andq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L99
	leaq	.LC0(%rip), %rcx
	leaq	.LC14(%rip), %rax
	movl	$468, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L99:
	movq	-64(%rbp), %rax
	subq	$1, %rax
	andq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L119
.L98:
	movq	-56(%rbp), %rax
	movq	%rax, 24+sh(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, 48+sh(%rip)
	movq	24+sh(%rip), %rax
	movq	48+sh(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	addq	%rax, %rax
	movq	%rax, 72+sh(%rip)
	movq	72+sh(%rip), %rax
	shrq	$3, %rax
	testq	%rax, %rax
	je	.L120
	movq	$-1, 40+sh(%rip)
	movq	72+sh(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L101
.L102:
	movq	40+sh(%rip), %rax
	addq	$1, %rax
	movq	%rax, 40+sh(%rip)
	shrq	-16(%rbp)
.L101:
	cmpq	$0, -16(%rbp)
	jne	.L102
	movq	40+sh(%rip), %rax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$485, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, 32+sh(%rip)
	movq	32+sh(%rip), %rax
	testq	%rax, %rax
	jne	.L103
	leaq	.LC0(%rip), %rcx
	leaq	.LC15(%rip), %rax
	movl	$486, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L103:
	movq	32+sh(%rip), %rax
	testq	%rax, %rax
	je	.L121
	movq	72+sh(%rip), %rax
	shrq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$490, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, 56+sh(%rip)
	movq	56+sh(%rip), %rax
	testq	%rax, %rax
	jne	.L105
	leaq	.LC0(%rip), %rcx
	leaq	.LC16(%rip), %rax
	movl	$491, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L105:
	movq	56+sh(%rip), %rax
	testq	%rax, %rax
	je	.L122
	movq	72+sh(%rip), %rax
	shrq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$495, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, 64+sh(%rip)
	movq	64+sh(%rip), %rax
	testq	%rax, %rax
	jne	.L107
	leaq	.LC0(%rip), %rcx
	leaq	.LC17(%rip), %rax
	movl	$496, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L107:
	movq	64+sh(%rip), %rax
	testq	%rax, %rax
	je	.L123
	movl	$30, %edi
	call	sysconf@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jg	.L109
	movq	$4096, -24(%rbp)
	jmp	.L110
.L109:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.L110:
	movq	24+sh(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 8+sh(%rip)
	movq	8+sh(%rip), %rax
	movl	$0, %r9d
	movl	$-1, %r8d
	movl	$34, %ecx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	mmap@PLT
	movq	%rax, sh(%rip)
	movq	sh(%rip), %rax
	cmpq	$-1, %rax
	je	.L124
	movq	sh(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 16+sh(%rip)
	movq	56+sh(%rip), %rdx
	movq	16+sh(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sh_setbit
	movq	16+sh(%rip), %rdx
	movq	32+sh(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sh_add_to_list
	movl	$1, -4(%rbp)
	movq	sh(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mprotect@PLT
	testl	%eax, %eax
	jns	.L112
	movl	$2, -4(%rbp)
.L112:
	movq	24+sh(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	negq	%rax
	andq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	sh(%rip), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	mprotect@PLT
	testl	%eax, %eax
	jns	.L113
	movl	$2, -4(%rbp)
.L113:
	movq	24+sh(%rip), %rdx
	movq	16+sh(%rip), %rax
	movl	$1, %ecx
	movq	%rax, %rsi
	movl	$325, %edi
	movl	$0, %eax
	call	syscall@PLT
	testq	%rax, %rax
	jns	.L114
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$38, %eax
	jne	.L115
	movq	24+sh(%rip), %rdx
	movq	16+sh(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mlock@PLT
	testl	%eax, %eax
	jns	.L114
	movl	$2, -4(%rbp)
	jmp	.L114
.L115:
	movl	$2, -4(%rbp)
.L114:
	movq	24+sh(%rip), %rcx
	movq	16+sh(%rip), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	madvise@PLT
	testl	%eax, %eax
	jns	.L116
	movl	$2, -4(%rbp)
.L116:
	movl	-4(%rbp), %eax
	jmp	.L117
.L118:
	nop
	jmp	.L96
.L119:
	nop
	jmp	.L96
.L120:
	nop
	jmp	.L96
.L121:
	nop
	jmp	.L96
.L122:
	nop
	jmp	.L96
.L123:
	nop
	jmp	.L96
.L124:
	nop
.L96:
	call	sh_done
	movl	$0, %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	sh_init, .-sh_init
	.type	sh_done, @function
sh_done:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	32+sh(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$602, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	56+sh(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$603, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	64+sh(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$604, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	sh(%rip), %rax
	cmpq	$-1, %rax
	je	.L126
	movq	8+sh(%rip), %rax
	testq	%rax, %rax
	je	.L126
	movq	8+sh(%rip), %rdx
	movq	sh(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	munmap@PLT
.L126:
	leaq	sh(%rip), %rax
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	sh_done, .-sh_done
	.type	sh_allocated, @function
sh_allocated:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	16+sh(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L128
	movq	16+sh(%rip), %rdx
	movq	24+sh(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L128
	movl	$1, %eax
	jmp	.L130
.L128:
	movl	$0, %eax
.L130:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	sh_allocated, .-sh_allocated
	.type	sh_find_my_buddy, @function
sh_find_my_buddy:
.LFB93:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	$0, -8(%rbp)
	movl	-28(%rbp), %eax
	movl	$1, %edx
	movq	%rdx, %rsi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	16+sh(%rip), %rax
	movq	-24(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rdi
	movq	24+sh(%rip), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rcx
	movq	%rdi, %rax
	movl	$0, %edx
	divq	%rcx
	addq	%rsi, %rax
	movq	%rax, -16(%rbp)
	xorq	$1, -16(%rbp)
	movq	56+sh(%rip), %rax
	movq	-16(%rbp), %rdx
	shrq	$3, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	andl	$7, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L132
	movq	64+sh(%rip), %rax
	movq	-16(%rbp), %rdx
	shrq	$3, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	andl	$7, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L132
	movq	16+sh(%rip), %rsi
	movl	-28(%rbp), %eax
	movq	$-1, %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	notq	%rax
	andq	-16(%rbp), %rax
	movq	24+sh(%rip), %rdi
	movl	-28(%rbp), %edx
	movl	%edx, %ecx
	shrq	%cl, %rdi
	movq	%rdi, %rdx
	imulq	%rdx, %rax
	addq	%rsi, %rax
	movq	%rax, -8(%rbp)
.L132:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	sh_find_my_buddy, .-sh_find_my_buddy
	.section	.rodata
	.align 8
.LC18:
	.string	"assertion failed: !sh_testbit(temp, slist, sh.bitmalloc)"
	.align 8
.LC19:
	.string	"assertion failed: temp != sh.freelist[slist]"
	.align 8
.LC20:
	.string	"assertion failed: sh.freelist[slist] == temp"
	.align 8
.LC21:
	.string	"assertion failed: temp-(sh.arena_size >> slist) == sh_find_my_buddy(temp, slist)"
	.align 8
.LC22:
	.string	"assertion failed: sh_testbit(chunk, list, sh.bittable)"
	.align 8
.LC23:
	.string	"assertion failed: WITHIN_ARENA(chunk)"
	.text
	.type	sh_malloc, @function
sh_malloc:
.LFB94:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	24+sh(%rip), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	movq	40+sh(%rip), %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	48+sh(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L137
.L138:
	subq	$1, -24(%rbp)
	salq	-40(%rbp)
.L137:
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L138
	cmpq	$0, -24(%rbp)
	jns	.L139
	movl	$0, %eax
	jmp	.L136
.L139:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L140
.L143:
	movq	32+sh(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L156
	subq	$1, -32(%rbp)
.L140:
	cmpq	$0, -32(%rbp)
	jns	.L143
	jmp	.L142
.L156:
	nop
.L142:
	cmpq	$0, -32(%rbp)
	jns	.L145
	movl	$0, %eax
	jmp	.L136
.L152:
	movq	32+sh(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	64+sh(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_testbit
	testl	%eax, %eax
	je	.L146
	leaq	.LC0(%rip), %rcx
	leaq	.LC18(%rip), %rax
	movl	$661, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L146:
	movq	56+sh(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_clearbit
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	sh_remove_from_list
	movq	32+sh(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jne	.L147
	leaq	.LC0(%rip), %rcx
	leaq	.LC19(%rip), %rax
	movl	$664, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L147:
	addq	$1, -32(%rbp)
	movq	64+sh(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_testbit
	testl	%eax, %eax
	je	.L148
	leaq	.LC0(%rip), %rcx
	leaq	.LC18(%rip), %rax
	movl	$670, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L148:
	movq	56+sh(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_setbit
	movq	32+sh(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sh_add_to_list
	movq	32+sh(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	je	.L149
	leaq	.LC0(%rip), %rcx
	leaq	.LC20(%rip), %rax
	movl	$673, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L149:
	movq	24+sh(%rip), %rax
	movq	-32(%rbp), %rdx
	movl	%edx, %ecx
	shrq	%cl, %rax
	addq	%rax, -56(%rbp)
	movq	64+sh(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_testbit
	testl	%eax, %eax
	je	.L150
	leaq	.LC0(%rip), %rcx
	leaq	.LC18(%rip), %rax
	movl	$677, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L150:
	movq	56+sh(%rip), %rdx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_setbit
	movq	32+sh(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sh_add_to_list
	movq	32+sh(%rip), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	je	.L151
	leaq	.LC0(%rip), %rcx
	leaq	.LC20(%rip), %rax
	movl	$680, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L151:
	movq	24+sh(%rip), %rax
	movq	-32(%rbp), %rdx
	movl	%edx, %ecx
	shrq	%cl, %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sh_find_my_buddy
	cmpq	%rax, %rbx
	je	.L145
	leaq	.LC0(%rip), %rcx
	leaq	.LC21(%rip), %rax
	movl	$682, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L145:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L152
	movq	32+sh(%rip), %rax
	movq	-24(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	56+sh(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_testbit
	testl	%eax, %eax
	jne	.L153
	leaq	.LC0(%rip), %rcx
	leaq	.LC22(%rip), %rax
	movl	$687, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L153:
	movq	64+sh(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_setbit
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	sh_remove_from_list
	movq	16+sh(%rip), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L154
	movq	16+sh(%rip), %rdx
	movq	24+sh(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -48(%rbp)
	jb	.L155
.L154:
	leaq	.LC0(%rip), %rcx
	leaq	.LC23(%rip), %rax
	movl	$691, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L155:
	movq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-48(%rbp), %rax
.L136:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	sh_malloc, .-sh_malloc
	.section	.rodata
	.align 8
.LC24:
	.string	"assertion failed: sh_testbit(ptr, list, sh.bittable)"
	.align 8
.LC25:
	.string	"assertion failed: ptr == sh_find_my_buddy(buddy, list)"
.LC26:
	.string	"assertion failed: ptr != NULL"
	.align 8
.LC27:
	.string	"assertion failed: !sh_testbit(ptr, list, sh.bitmalloc)"
	.align 8
.LC28:
	.string	"assertion failed: sh.freelist[list] == ptr"
	.text
	.type	sh_free, @function
sh_free:
.LFB95:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L173
	movq	16+sh(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L160
	movq	16+sh(%rip), %rdx
	movq	24+sh(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L161
.L160:
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rax
	movl	$706, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L161:
	movq	16+sh(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L174
	movq	16+sh(%rip), %rdx
	movq	24+sh(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -24(%rbp)
	jnb	.L174
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sh_getlist
	movq	%rax, -8(%rbp)
	movq	56+sh(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_testbit
	testl	%eax, %eax
	jne	.L164
	leaq	.LC0(%rip), %rcx
	leaq	.LC24(%rip), %rax
	movl	$711, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L164:
	movq	64+sh(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_clearbit
	movq	32+sh(%rip), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sh_add_to_list
	jmp	.L165
.L172:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sh_find_my_buddy
	cmpq	%rax, -24(%rbp)
	je	.L166
	leaq	.LC0(%rip), %rcx
	leaq	.LC25(%rip), %rax
	movl	$717, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L166:
	cmpq	$0, -24(%rbp)
	jne	.L167
	leaq	.LC0(%rip), %rcx
	leaq	.LC26(%rip), %rax
	movl	$718, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L167:
	movq	64+sh(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_testbit
	testl	%eax, %eax
	je	.L168
	leaq	.LC0(%rip), %rcx
	leaq	.LC27(%rip), %rax
	movl	$719, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L168:
	movq	56+sh(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_clearbit
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sh_remove_from_list
	movq	64+sh(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_testbit
	testl	%eax, %eax
	je	.L169
	leaq	.LC0(%rip), %rcx
	leaq	.LC27(%rip), %rax
	movl	$722, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L169:
	movq	56+sh(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_clearbit
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	sh_remove_from_list
	subq	$1, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	cmpq	%rax, %rdx
	cmovnb	%rdx, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-24(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L170
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L170:
	movq	64+sh(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_testbit
	testl	%eax, %eax
	je	.L171
	leaq	.LC0(%rip), %rcx
	leaq	.LC27(%rip), %rax
	movl	$733, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L171:
	movq	56+sh(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_setbit
	movq	32+sh(%rip), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	sh_add_to_list
	movq	32+sh(%rip), %rax
	movq	-8(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -24(%rbp)
	je	.L165
	leaq	.LC0(%rip), %rcx
	leaq	.LC28(%rip), %rax
	movl	$736, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L165:
	movq	-8(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sh_find_my_buddy
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L172
	jmp	.L157
.L173:
	nop
	jmp	.L157
.L174:
	nop
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	sh_free, .-sh_free
	.type	sh_actual_size, @function
sh_actual_size:
.LFB96:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	16+sh(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L176
	movq	16+sh(%rip), %rdx
	movq	24+sh(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L177
.L176:
	leaq	.LC0(%rip), %rcx
	leaq	.LC8(%rip), %rax
	movl	$744, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L177:
	movq	16+sh(%rip), %rax
	cmpq	%rax, -24(%rbp)
	jb	.L178
	movq	16+sh(%rip), %rdx
	movq	24+sh(%rip), %rax
	addq	%rdx, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L179
.L178:
	movl	$0, %eax
	jmp	.L180
.L179:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	sh_getlist
	movl	%eax, -4(%rbp)
	movq	56+sh(%rip), %rdx
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sh_testbit
	testl	%eax, %eax
	jne	.L181
	leaq	.LC0(%rip), %rcx
	leaq	.LC24(%rip), %rax
	movl	$748, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L181:
	movq	24+sh(%rip), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	sh_actual_size, .-sh_actual_size
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
