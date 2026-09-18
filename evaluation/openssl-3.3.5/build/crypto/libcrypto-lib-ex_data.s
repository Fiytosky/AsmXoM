	.file	"ex_data.c"
	.text
	.type	ossl_check_void_type, @function
ossl_check_void_type:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ossl_check_void_type, .-ossl_check_void_type
	.type	ossl_check_const_void_sk_type, @function
ossl_check_const_void_sk_type:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ossl_check_const_void_sk_type, .-ossl_check_const_void_sk_type
	.type	ossl_check_void_sk_type, @function
ossl_check_void_sk_type:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ossl_check_void_sk_type, .-ossl_check_void_sk_type
	.type	sk_EX_CALLBACK_num, @function
sk_EX_CALLBACK_num:
.LFB119:
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
	call	OPENSSL_sk_num@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE119:
	.size	sk_EX_CALLBACK_num, .-sk_EX_CALLBACK_num
	.type	sk_EX_CALLBACK_value, @function
sk_EX_CALLBACK_value:
.LFB120:
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
.LFE120:
	.size	sk_EX_CALLBACK_value, .-sk_EX_CALLBACK_value
	.type	sk_EX_CALLBACK_new_null, @function
sk_EX_CALLBACK_new_null:
.LFB122:
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
.LFE122:
	.size	sk_EX_CALLBACK_new_null, .-sk_EX_CALLBACK_new_null
	.type	sk_EX_CALLBACK_free, @function
sk_EX_CALLBACK_free:
.LFB125:
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
.LFE125:
	.size	sk_EX_CALLBACK_free, .-sk_EX_CALLBACK_free
	.type	sk_EX_CALLBACK_push, @function
sk_EX_CALLBACK_push:
.LFB129:
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
.LFE129:
	.size	sk_EX_CALLBACK_push, .-sk_EX_CALLBACK_push
	.type	sk_EX_CALLBACK_pop_free, @function
sk_EX_CALLBACK_pop_free:
.LFB133:
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
	call	OPENSSL_sk_pop_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.size	sk_EX_CALLBACK_pop_free, .-sk_EX_CALLBACK_pop_free
	.type	sk_EX_CALLBACK_set, @function
sk_EX_CALLBACK_set:
.LFB135:
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
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	OPENSSL_sk_set@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.size	sk_EX_CALLBACK_set, .-sk_EX_CALLBACK_set
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
	.globl	ossl_do_ex_data_init
	.type	ossl_do_ex_data_init, @function
ossl_do_ex_data_init:
.LFB160:
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
	call	ossl_lib_ctx_get_ex_data_global@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	ossl_do_ex_data_init, .-ossl_do_ex_data_init
	.section	.rodata
.LC0:
	.string	"../crypto/ex_data.c"
	.text
	.type	get_and_lock, @function
get_and_lock:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L27
	cmpl	$17, -28(%rbp)
	jle	.L28
.L27:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L29
.L28:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	movl	$0, %eax
	jmp	.L29
.L30:
	cmpl	$0, -32(%rbp)
	je	.L31
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L29
.L31:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L29
.L32:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	get_and_lock, .-get_and_lock
	.type	cleanup_cb, @function
cleanup_cb:
.LFB162:
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
	movl	$63, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	cleanup_cb, .-cleanup_cb
	.globl	ossl_crypto_cleanup_all_ex_data_int
	.type	ossl_crypto_cleanup_all_ex_data_int, @function
ossl_crypto_cleanup_all_ex_data_int:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_ex_data_global@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	movl	$0, -4(%rbp)
	jmp	.L37
.L38:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	cleanup_cb(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_pop_free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	addl	$1, -4(%rbp)
.L37:
	cmpl	$17, -4(%rbp)
	jle	.L38
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L34
.L39:
	nop
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	ossl_crypto_cleanup_all_ex_data_int, .-ossl_crypto_cleanup_all_ex_data_int
	.type	dummy_new, @function
dummy_new:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	dummy_new, .-dummy_new
	.type	dummy_free, @function
dummy_free:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	dummy_free, .-dummy_free
	.type	dummy_dup, @function
dummy_dup:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	dummy_dup, .-dummy_dup
	.globl	ossl_crypto_free_ex_index_ex
	.type	ossl_crypto_free_ex_index_ex, @function
ossl_crypto_free_ex_index_ex:
.LFB167:
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
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_ex_data_global@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_and_lock
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L47
	movl	$0, %eax
	jmp	.L46
.L47:
	cmpl	$0, -48(%rbp)
	js	.L52
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_num
	cmpl	%eax, -48(%rbp)
	jge	.L52
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_value
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L53
	movq	-32(%rbp), %rax
	leaq	dummy_new(%rip), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	leaq	dummy_dup(%rip), %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	leaq	dummy_free(%rip), %rdx
	movq	%rdx, 32(%rax)
	movl	$1, -4(%rbp)
	jmp	.L50
.L52:
	nop
	jmp	.L50
.L53:
	nop
.L50:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	ossl_crypto_free_ex_index_ex, .-ossl_crypto_free_ex_index_ex
	.globl	CRYPTO_free_ex_index
	.type	CRYPTO_free_ex_index, @function
CRYPTO_free_ex_index:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	ossl_crypto_free_ex_index_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	CRYPTO_free_ex_index, .-CRYPTO_free_ex_index
	.globl	ossl_crypto_get_ex_new_index_ex
	.type	ossl_crypto_get_ex_new_index_ex, @function
ossl_crypto_get_ex_new_index_ex:
.LFB169:
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
	movl	$-1, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_ex_data_global@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L57
	movl	$-1, %eax
	jmp	.L58
.L57:
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_and_lock
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L59
	movl	$-1, %eax
	jmp	.L58
.L59:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L60
	call	sk_EX_CALLBACK_new_null
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_push
	testl	%eax, %eax
	jne	.L60
.L61:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_free
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	jmp	.L62
.L60:
	leaq	.LC0(%rip), %rax
	movl	$181, %edx
	movq	%rax, %rsi
	movl	$48, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L65
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_push
	testl	%eax, %eax
	jne	.L64
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$192, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$193, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L62
.L64:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_num
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_set
	jmp	.L62
.L65:
	nop
.L62:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movl	-4(%rbp), %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	ossl_crypto_get_ex_new_index_ex, .-ossl_crypto_get_ex_new_index_ex
	.globl	CRYPTO_get_ex_new_index
	.type	CRYPTO_get_ex_new_index, @function
CRYPTO_get_ex_new_index:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	pushq	$0
	pushq	-48(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	%eax, %esi
	movl	$0, %edi
	call	ossl_crypto_get_ex_new_index_ex@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	CRYPTO_get_ex_new_index, .-CRYPTO_get_ex_new_index
	.globl	ossl_crypto_new_ex_data_ex
	.type	ossl_crypto_new_ex_data_ex, @function
ossl_crypto_new_ex_data_ex:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	$0, -32(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_ex_data_global@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L69
	movl	$0, %eax
	jmp	.L82
.L69:
	movl	-156(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_and_lock
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L71
	movl	$0, %eax
	jmp	.L82
.L71:
	movq	-176(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-176(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_num
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.L72
	cmpl	$9, -52(%rbp)
	jg	.L73
	leaq	-144(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L74
.L73:
	movl	-52(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$243, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
.L74:
	cmpq	$0, -32(%rbp)
	je	.L72
	movl	$0, -20(%rbp)
	jmp	.L75
.L76:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_value
	movq	%rax, (%rbx)
	addl	$1, -20(%rbp)
.L75:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L76
.L72:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpl	$0, -52(%rbp)
	jle	.L77
	cmpq	$0, -32(%rbp)
	jne	.L77
	movl	$0, %eax
	jmp	.L82
.L77:
	movl	$0, -20(%rbp)
	jmp	.L78
.L80:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movl	-20(%rbp), %edx
	movq	-176(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %r10
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %r8
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %ecx
	movq	-176(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
.L79:
	addl	$1, -20(%rbp)
.L78:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L80
	leaq	-144(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	je	.L81
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$260, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L81:
	movl	$1, %eax
.L82:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	ossl_crypto_new_ex_data_ex, .-ossl_crypto_new_ex_data_ex
	.globl	CRYPTO_new_ex_data
	.type	CRYPTO_new_ex_data, @function
CRYPTO_new_ex_data:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	ossl_crypto_new_ex_data_ex@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	CRYPTO_new_ex_data, .-CRYPTO_new_ex_data
	.globl	CRYPTO_dup_ex_data
	.type	CRYPTO_dup_ex_data, @function
CRYPTO_dup_ex_data:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L86
	movl	$1, %eax
	jmp	.L104
.L86:
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_ex_data_global@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L88
	movl	$0, %eax
	jmp	.L104
.L88:
	movl	-164(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_and_lock
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L89
	movl	$0, %eax
	jmp	.L104
.L89:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_num
	movl	%eax, -20(%rbp)
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_void_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L90
	movl	-60(%rbp), %eax
	movl	%eax, -20(%rbp)
.L90:
	cmpl	$0, -20(%rbp)
	jle	.L91
	cmpl	$9, -20(%rbp)
	jg	.L92
	leaq	-160(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L93
.L92:
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$305, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
.L93:
	cmpq	$0, -32(%rbp)
	je	.L91
	movl	$0, -24(%rbp)
	jmp	.L94
.L95:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-24(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_value
	movq	%rax, (%rbx)
	addl	$1, -24(%rbp)
.L94:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L95
.L91:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpl	$0, -20(%rbp)
	jne	.L96
	movl	$1, %eax
	jmp	.L104
.L96:
	cmpq	$0, -32(%rbp)
	jne	.L97
	movl	$0, %eax
	jmp	.L104
.L97:
	movl	-20(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-176(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-176(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	CRYPTO_set_ex_data@PLT
	testl	%eax, %eax
	je	.L105
	movl	$0, -24(%rbp)
	jmp	.L100
.L102:
	movl	-24(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -72(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L101
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L101
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	40(%rax), %r10
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %r8
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	-24(%rbp), %ecx
	leaq	-72(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-176(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
	testl	%eax, %eax
	je	.L106
.L101:
	movq	-72(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movq	-176(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	CRYPTO_set_ex_data@PLT
	addl	$1, -24(%rbp)
.L100:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L102
	movl	$1, -36(%rbp)
	jmp	.L99
.L105:
	nop
	jmp	.L99
.L106:
	nop
.L99:
	leaq	-160(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	je	.L103
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$337, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L103:
	movl	-36(%rbp), %eax
.L104:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	CRYPTO_dup_ex_data, .-CRYPTO_dup_ex_data
	.type	ex_callback_compare, @function
ex_callback_compare:
.LFB174:
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
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L108
	movl	$0, %eax
	jmp	.L109
.L108:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L110
	movl	$1, %eax
	jmp	.L109
.L110:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L111
	movl	$-1, %eax
	jmp	.L109
.L111:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	jne	.L112
	movl	$0, %eax
	jmp	.L109
.L112:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %eax
	cmpl	%eax, %edx
	jle	.L113
	movl	$-1, %eax
	jmp	.L109
.L113:
	movl	$1, %eax
.L109:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	ex_callback_compare, .-ex_callback_compare
	.globl	CRYPTO_free_ex_data
	.type	CRYPTO_free_ex_data, @function
CRYPTO_free_ex_data:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movl	%edi, -244(%rbp)
	movq	%rsi, -256(%rbp)
	movq	%rdx, -264(%rbp)
	movq	$0, -32(%rbp)
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_ex_data_global@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L128
	movl	-244(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_and_lock
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L129
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_num
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.L119
	cmpl	$9, -52(%rbp)
	jg	.L120
	leaq	-240(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L121
.L120:
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	.LC0(%rip), %rcx
	movl	$389, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -32(%rbp)
.L121:
	cmpq	$0, -32(%rbp)
	je	.L119
	movl	$0, -20(%rbp)
	jmp	.L122
.L123:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movq	-32(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_value
	movq	%rax, (%rbx)
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, 8(%rdx)
	addl	$1, -20(%rbp)
.L122:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L123
.L119:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	cmpq	$0, -32(%rbp)
	je	.L124
	movl	-52(%rbp), %eax
	movslq	%eax, %rsi
	leaq	ex_callback_compare(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	movl	$0, -20(%rbp)
	jmp	.L125
.L127:
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L126
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %edx
	movq	-264(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %r10
	movq	-64(%rbp), %rax
	movq	8(%rax), %r8
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movq	-264(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-256(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	*%r10
.L126:
	addl	$1, -20(%rbp)
.L125:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L127
.L124:
	leaq	-240(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	je	.L130
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$412, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L117
.L128:
	nop
	jmp	.L117
.L129:
	nop
	jmp	.L117
.L130:
	nop
.L117:
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_void_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-264(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-264(%rbp), %rax
	movq	$0, (%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	CRYPTO_free_ex_data, .-CRYPTO_free_ex_data
	.globl	CRYPTO_alloc_ex_data
	.type	CRYPTO_alloc_ex_data, @function
CRYPTO_alloc_ex_data:
.LFB176:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	CRYPTO_get_ex_data@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L132
	movl	$1, %eax
	jmp	.L133
.L132:
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ossl_crypto_alloc_ex_data_intern@PLT
.L133:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	CRYPTO_alloc_ex_data, .-CRYPTO_alloc_ex_data
	.globl	ossl_crypto_alloc_ex_data_intern
	.type	ossl_crypto_alloc_ex_data_intern, @function
ossl_crypto_alloc_ex_data_intern:
.LFB177:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_ex_data_global@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L135
	movl	$0, %eax
	jmp	.L136
.L135:
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	get_and_lock
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L137
	movl	$0, %eax
	jmp	.L136
.L137:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sk_EX_CALLBACK_value
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L138
	movl	$0, %eax
	jmp	.L136
.L138:
	movq	-24(%rbp), %rax
	movq	24(%rax), %r10
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movl	-40(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	*%r10
	movl	$1, %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	ossl_crypto_alloc_ex_data_intern, .-ossl_crypto_alloc_ex_data_intern
	.globl	CRYPTO_set_ex_data
	.type	CRYPTO_set_ex_data, @function
CRYPTO_set_ex_data:
.LFB178:
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
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L140
	call	OPENSSL_sk_new_null@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L140
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$475, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L141
.L140:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_void_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	movl	%eax, -20(%rbp)
	jmp	.L142
.L144:
	movl	$0, %edi
	call	ossl_check_void_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_void_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	jne	.L143
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$482, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524303, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L141
.L143:
	addl	$1, -20(%rbp)
.L142:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.L144
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_void_type
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_void_sk_type
	movq	%rax, %rcx
	movl	-44(%rbp), %eax
	movq	%rbx, %rdx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	OPENSSL_sk_set@PLT
	cmpq	%rax, -56(%rbp)
	je	.L145
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$488, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$524550, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L141
.L145:
	movl	$1, %eax
.L141:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	CRYPTO_set_ex_data, .-CRYPTO_set_ex_data
	.globl	CRYPTO_get_ex_data
	.type	CRYPTO_get_ex_data, @function
CRYPTO_get_ex_data:
.LFB179:
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
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L147
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_void_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -12(%rbp)
	jl	.L148
.L147:
	movl	$0, %eax
	jmp	.L149
.L148:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_check_const_void_sk_type
	movq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	CRYPTO_get_ex_data, .-CRYPTO_get_ex_data
	.globl	ossl_crypto_ex_data_get_ossl_lib_ctx
	.type	ossl_crypto_ex_data_get_ossl_lib_ctx, @function
ossl_crypto_ex_data_get_ossl_lib_ctx:
.LFB180:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	ossl_crypto_ex_data_get_ossl_lib_ctx, .-ossl_crypto_ex_data_get_ossl_lib_ctx
	.section	.rodata
	.align 8
	.type	__func__.2, @object
	.size	__func__.2, 13
__func__.2:
	.string	"get_and_lock"
	.align 32
	.type	__func__.1, @object
	.size	__func__.1, 32
__func__.1:
	.string	"ossl_crypto_get_ex_new_index_ex"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 19
__func__.0:
	.string	"CRYPTO_set_ex_data"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
