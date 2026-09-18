	.file	"eng_table.c"
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
	.type	sk_ENGINE_value, @function
sk_ENGINE_value:
.LFB546:
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
	call	OPENSSL_sk_value@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	sk_ENGINE_value, .-sk_ENGINE_value
	.type	sk_ENGINE_new_null, @function
sk_ENGINE_new_null:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OPENSSL_sk_new_null@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	sk_ENGINE_new_null, .-sk_ENGINE_new_null
	.type	sk_ENGINE_free, @function
sk_ENGINE_free:
.LFB551:
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
.LFE551:
	.size	sk_ENGINE_free, .-sk_ENGINE_free
	.type	sk_ENGINE_delete, @function
sk_ENGINE_delete:
.LFB553:
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
	call	OPENSSL_sk_delete@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	sk_ENGINE_delete, .-sk_ENGINE_delete
	.type	sk_ENGINE_delete_ptr, @function
sk_ENGINE_delete_ptr:
.LFB554:
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
	call	OPENSSL_sk_delete_ptr@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	sk_ENGINE_delete_ptr, .-sk_ENGINE_delete_ptr
	.type	sk_ENGINE_push, @function
sk_ENGINE_push:
.LFB555:
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
.LFE555:
	.size	sk_ENGINE_push, .-sk_ENGINE_push
	.type	sk_ENGINE_find, @function
sk_ENGINE_find:
.LFB562:
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
	call	OPENSSL_sk_find@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	sk_ENGINE_find, .-sk_ENGINE_find
	.type	lh_ENGINE_PILE_hfn_thunk, @function
lh_ENGINE_PILE_hfn_thunk:
.LFB570:
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
.LFE570:
	.size	lh_ENGINE_PILE_hfn_thunk, .-lh_ENGINE_PILE_hfn_thunk
	.type	lh_ENGINE_PILE_cfn_thunk, @function
lh_ENGINE_PILE_cfn_thunk:
.LFB571:
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
.LFE571:
	.size	lh_ENGINE_PILE_cfn_thunk, .-lh_ENGINE_PILE_cfn_thunk
	.type	lh_ENGINE_PILE_free, @function
lh_ENGINE_PILE_free:
.LFB572:
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
	call	OPENSSL_LH_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	lh_ENGINE_PILE_free, .-lh_ENGINE_PILE_free
	.type	lh_ENGINE_PILE_insert, @function
lh_ENGINE_PILE_insert:
.LFB574:
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
	call	OPENSSL_LH_insert@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	lh_ENGINE_PILE_insert, .-lh_ENGINE_PILE_insert
	.type	lh_ENGINE_PILE_retrieve, @function
lh_ENGINE_PILE_retrieve:
.LFB576:
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
	call	OPENSSL_LH_retrieve@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE576:
	.size	lh_ENGINE_PILE_retrieve, .-lh_ENGINE_PILE_retrieve
	.type	lh_ENGINE_PILE_doall_thunk, @function
lh_ENGINE_PILE_doall_thunk:
.LFB581:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE581:
	.size	lh_ENGINE_PILE_doall_thunk, .-lh_ENGINE_PILE_doall_thunk
	.type	lh_ENGINE_PILE_doall_arg_thunk, @function
lh_ENGINE_PILE_doall_arg_thunk:
.LFB582:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE582:
	.size	lh_ENGINE_PILE_doall_arg_thunk, .-lh_ENGINE_PILE_doall_arg_thunk
	.type	lh_ENGINE_PILE_doall, @function
lh_ENGINE_PILE_doall:
.LFB583:
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
	call	OPENSSL_LH_doall@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE583:
	.size	lh_ENGINE_PILE_doall, .-lh_ENGINE_PILE_doall
	.type	lh_ENGINE_PILE_new, @function
lh_ENGINE_PILE_new:
.LFB584:
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
	call	OPENSSL_LH_new@PLT
	movq	%rax, %rdi
	leaq	lh_ENGINE_PILE_doall_arg_thunk(%rip), %rsi
	leaq	lh_ENGINE_PILE_doall_thunk(%rip), %rcx
	leaq	lh_ENGINE_PILE_cfn_thunk(%rip), %rdx
	leaq	lh_ENGINE_PILE_hfn_thunk(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	call	OPENSSL_LH_set_thunks@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE584:
	.size	lh_ENGINE_PILE_new, .-lh_ENGINE_PILE_new
	.local	table_flags
	.comm	table_flags,4,4
	.globl	ENGINE_get_table_flags
	.type	ENGINE_get_table_flags, @function
ENGINE_get_table_flags:
.LFB587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	table_flags(%rip), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE587:
	.size	ENGINE_get_table_flags, .-ENGINE_get_table_flags
	.globl	ENGINE_set_table_flags
	.type	ENGINE_set_table_flags, @function
ENGINE_set_table_flags:
.LFB588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, table_flags(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE588:
	.size	ENGINE_set_table_flags, .-ENGINE_set_table_flags
	.type	engine_pile_hash, @function
engine_pile_hash:
.LFB589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cltq
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE589:
	.size	engine_pile_hash, .-engine_pile_hash
	.type	engine_pile_cmp, @function
engine_pile_cmp:
.LFB590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE590:
	.size	engine_pile_cmp, .-engine_pile_cmp
	.type	int_table_check, @function
int_table_check:
.LFB591:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movl	$1, %eax
	jmp	.L41
.L40:
	cmpl	$0, -28(%rbp)
	jne	.L42
	movl	$0, %eax
	jmp	.L41
.L42:
	leaq	engine_pile_cmp(%rip), %rdx
	leaq	engine_pile_hash(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lh_ENGINE_PILE_new
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L41
.L43:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE591:
	.size	int_table_check, .-int_table_check
	.section	.rodata
.LC0:
	.string	"../crypto/engine/eng_table.c"
	.text
	.globl	engine_table_register
	.type	engine_table_register, @function
engine_table_register:
.LFB592:
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
	movl	%r8d, -84(%rbp)
	movl	%r9d, -88(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L60
.L45:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L47
	movl	$1, -8(%rbp)
.L47:
	movq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	int_table_check
	testl	%eax, %eax
	je	.L61
	cmpl	$0, -8(%rbp)
	je	.L51
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	engine_cleanup_add_first@PLT
	testl	%eax, %eax
	jne	.L51
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lh_ENGINE_PILE_free
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L49
.L59:
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	lh_ENGINE_PILE_retrieve
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L52
	leaq	.LC0(%rip), %rax
	movl	$106, %edx
	movq	%rax, %rsi
	movl	$32, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L62
	movq	-16(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	call	sk_ENGINE_new_null
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$113, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L49
.L54:
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	lh_ENGINE_PILE_insert
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	lh_ENGINE_PILE_retrieve
	cmpq	%rax, -16(%rbp)
	je	.L52
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_ENGINE_free
	leaq	.LC0(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L49
.L52:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_ENGINE_delete_ptr
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_ENGINE_push
	testl	%eax, %eax
	je	.L63
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	cmpl	$0, -88(%rbp)
	je	.L56
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	engine_unlocked_init@PLT
	testl	%eax, %eax
	jne	.L57
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$38, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L49
.L57:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	engine_unlocked_finish@PLT
.L58:
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 24(%rax)
.L56:
	addq	$4, -80(%rbp)
.L51:
	movl	-84(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -84(%rbp)
	testl	%eax, %eax
	jne	.L59
	movl	$1, -4(%rbp)
	jmp	.L49
.L61:
	nop
	jmp	.L49
.L62:
	nop
	jmp	.L49
.L63:
	nop
.L49:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE592:
	.size	engine_table_register, .-engine_table_register
	.type	int_unregister_cb, @function
int_unregister_cb:
.LFB593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	.L65
.L66:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_ENGINE_delete
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
.L65:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_ENGINE_find
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L66
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L68
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	engine_unlocked_finish@PLT
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
.L68:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE593:
	.size	int_unregister_cb, .-int_unregister_cb
	.type	lh_ENGINE_PILE_doall_ENGINE_thunk, @function
lh_ENGINE_PILE_doall_ENGINE_thunk:
.LFB594:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE594:
	.size	lh_ENGINE_PILE_doall_ENGINE_thunk, .-lh_ENGINE_PILE_doall_ENGINE_thunk
	.type	lh_ENGINE_PILE_doall_ENGINE, @function
lh_ENGINE_PILE_doall_ENGINE:
.LFB595:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	lh_ENGINE_PILE_doall_ENGINE_thunk(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg_thunk@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE595:
	.size	lh_ENGINE_PILE_doall_ENGINE, .-lh_ENGINE_PILE_doall_ENGINE
	.globl	engine_table_unregister
	.type	engine_table_unregister, @function
engine_table_unregister:
.LFB596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L75
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	int_table_check
	testl	%eax, %eax
	je	.L74
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-16(%rbp), %rax
	leaq	int_unregister_cb(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	lh_ENGINE_PILE_doall_ENGINE
.L74:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L71
.L75:
	nop
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE596:
	.size	engine_table_unregister, .-engine_table_unregister
	.type	int_cleanup_cb_doall, @function
int_cleanup_cb_doall:
.LFB597:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L80
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	sk_ENGINE_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	engine_unlocked_finish@PLT
.L79:
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$184, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L76
.L80:
	nop
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE597:
	.size	int_cleanup_cb_doall, .-int_cleanup_cb_doall
	.globl	engine_table_cleanup
	.type	engine_table_cleanup, @function
engine_table_cleanup:
.LFB598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	je	.L85
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	int_cleanup_cb_doall(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	lh_ENGINE_PILE_doall
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	lh_ENGINE_PILE_free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.L84:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	jmp	.L81
.L85:
	nop
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE598:
	.size	engine_table_cleanup, .-engine_table_cleanup
	.globl	ossl_engine_table_select
	.type	ossl_engine_table_select, @function
ossl_engine_table_select:
.LFB599:
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
	movl	%ecx, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, %esi
	movl	$64, %edi
	call	OPENSSL_init_crypto@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L87
	movl	$0, %eax
	jmp	.L103
.L87:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L89
	movl	$0, %eax
	jmp	.L103
.L89:
	call	ERR_set_mark@PLT
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	int_table_check
	testl	%eax, %eax
	je	.L104
	movl	-76(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	lh_ENGINE_PILE_retrieve
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L105
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L93
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	engine_unlocked_init@PLT
	testl	%eax, %eax
	je	.L93
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L91
.L93:
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L106
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L91
.L106:
	nop
.L94:
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	sk_ENGINE_value
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L107
	movq	-8(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	jg	.L96
	movl	table_flags(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L97
.L96:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	engine_unlocked_init@PLT
	movl	%eax, -20(%rbp)
	jmp	.L98
.L97:
	movl	$0, -20(%rbp)
.L98:
	cmpl	$0, -20(%rbp)
	je	.L94
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, -8(%rbp)
	je	.L108
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	engine_unlocked_init@PLT
	testl	%eax, %eax
	je	.L108
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L101
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	engine_unlocked_finish@PLT
.L101:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L108
.L104:
	nop
	jmp	.L91
.L105:
	nop
	jmp	.L91
.L107:
	nop
	jmp	.L91
.L108:
	nop
.L91:
	cmpq	$0, -16(%rbp)
	je	.L102
	movq	-16(%rbp), %rax
	movl	$1, 24(%rax)
.L102:
	movq	global_engine_lock@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	call	ERR_pop_to_mark@PLT
	movq	-8(%rbp), %rax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE599:
	.size	ossl_engine_table_select, .-ossl_engine_table_select
	.type	int_dall, @function
int_dall:
.LFB600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %r8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	*%r8
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE600:
	.size	int_dall, .-int_dall
	.type	lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL_thunk, @function
lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL_thunk:
.LFB601:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE601:
	.size	lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL_thunk, .-lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL_thunk
	.type	lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL, @function
lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL:
.LFB602:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL_thunk(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OPENSSL_LH_doall_arg_thunk@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE602:
	.size	lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL, .-lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL
	.globl	engine_table_doall
	.type	engine_table_doall, @function
engine_table_doall:
.LFB603:
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
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L114
	movq	-24(%rbp), %rax
	leaq	-16(%rbp), %rdx
	leaq	int_dall(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL
.L114:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE603:
	.size	engine_table_doall, .-engine_table_doall
	.section	.rodata
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 22
__func__.0:
	.string	"engine_table_register"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
