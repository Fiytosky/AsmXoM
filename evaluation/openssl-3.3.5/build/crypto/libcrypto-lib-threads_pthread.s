	.file	"threads_pthread.c"
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
	.type	get_hold_current_qp, @function
get_hold_current_qp:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
.L8:
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	lock addq	$1, (%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	je	.L11
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	lock subq	$1, (%rax)
	jmp	.L8
.L11:
	nop
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	get_hold_current_qp, .-get_hold_current_qp
	.section	.rodata
.LC0:
	.string	"../crypto/threads_pthread.c"
	.text
	.type	ossl_rcu_free_local_data, @function
ossl_rcu_free_local_data:
.LFB161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_rcukey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$282, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ossl_rcu_free_local_data, .-ossl_rcu_free_local_data
	.section	.rodata
	.align 8
.LC1:
	.string	"assertion failed: data != NULL"
	.text
	.globl	ossl_rcu_read_lock
	.type	ossl_rcu_read_lock, @function
ossl_rcu_read_lock:
.LFB162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$-1, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_rcukey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	leaq	.LC0(%rip), %rax
	movl	$299, %edx
	movq	%rax, %rsi
	movl	$240, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
	movl	$300, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L15:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	leaq	ossl_rcu_free_local_data(%rip), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_init_thread_start@PLT
.L14:
	movl	$0, -12(%rbp)
	jmp	.L16
.L20:
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	cmpl	$-1, -16(%rbp)
	jne	.L17
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
.L17:
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L18
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$8, %rax
	movl	%ecx, (%rax)
	jmp	.L13
.L18:
	addl	$1, -12(%rbp)
.L16:
	cmpl	$9, -12(%rbp)
	jle	.L20
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_hold_current_qp
	movq	%rax, %rcx
	movq	-8(%rbp), %rsi
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	ossl_rcu_read_lock, .-ossl_rcu_read_lock
	.section	.rodata
	.align 8
.LC2:
	.string	"assertion failed: ret != UINT64_MAX"
	.text
	.globl	ossl_rcu_read_unlock
	.type	ossl_rcu_read_unlock, @function
ossl_rcu_read_unlock:
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
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_rcukey@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L22
.L27:
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	jne	.L23
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	leal	-1(%rax), %ecx
	movq	-24(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$8, %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L28
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$1, %eax
	negq	%rax
	movq	%rax, %rdx
	lock xaddq	%rdx, (%rcx)
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.L25
	leaq	.LC0(%rip), %rcx
	leaq	.LC2(%rip), %rax
	movl	$345, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L25:
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movq	$0, (%rax)
	jmp	.L28
.L23:
	addl	$1, -4(%rbp)
.L22:
	cmpl	$9, -4(%rbp)
	jle	.L27
	jmp	.L21
.L28:
	nop
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	ossl_rcu_read_unlock, .-ossl_rcu_read_unlock
	.type	update_qp, @function
update_qp:
.LFB164:
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
	addq	$88, %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	jmp	.L30
.L31:
	movq	-24(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	subq	$-128, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_cond_wait@PLT
.L30:
	movq	-24(%rbp), %rax
	movl	28(%rax), %edx
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	subl	%eax, %edx
	cmpl	$1, %edx
	jbe	.L31
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	leal	1(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	28(%rax), %esi
	movl	%ecx, %eax
	movl	$0, %edx
	divl	%esi
	movl	%edx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	movq	-24(%rbp), %rdx
	addq	$32, %rdx
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	lock addq	$0, (%rax)
	movq	-24(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	pthread_cond_signal@PLT
	movq	-24(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	salq	$3, %rdx
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	update_qp, .-update_qp
	.type	retire_qp, @function
retire_qp:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	movq	-8(%rbp), %rax
	movl	44(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-8(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, %rdi
	call	pthread_cond_signal@PLT
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	retire_qp, .-retire_qp
	.type	allocate_new_qp_group, @function
allocate_new_qp_group:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	salq	$3, %rax
	leaq	.LC0(%rip), %rcx
	movl	$422, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	allocate_new_qp_group, .-allocate_new_qp_group
	.globl	ossl_rcu_write_lock
	.type	ossl_rcu_write_lock, @function
ossl_rcu_write_lock:
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
	addq	$48, %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	ossl_rcu_write_lock, .-ossl_rcu_write_lock
	.globl	ossl_rcu_write_unlock
	.type	ossl_rcu_write_unlock, @function
ossl_rcu_write_unlock:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	ossl_rcu_write_unlock, .-ossl_rcu_write_unlock
	.globl	ossl_synchronize_rcu
	.type	ossl_synchronize_rcu, @function
ossl_synchronize_rcu:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	leaq	-36(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	update_qp
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	addq	$176, %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	jmp	.L39
.L40:
	movq	-56(%rbp), %rax
	leaq	176(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	$216, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_cond_wait@PLT
.L39:
	movq	-56(%rbp), %rax
	movl	36(%rax), %edx
	movl	-36(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L40
.L41:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L41
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-56(%rbp), %rax
	addq	$216, %rax
	movq	%rax, %rdi
	call	pthread_cond_broadcast@PLT
	movq	-56(%rbp), %rax
	addq	$176, %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	retire_qp
	jmp	.L42
.L43:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	*%rdx
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$481, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L42:
	cmpq	$0, -8(%rbp)
	jne	.L43
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	ossl_synchronize_rcu, .-ossl_synchronize_rcu
	.globl	ossl_rcu_call
	.type	ossl_rcu_call, @function
ossl_rcu_call:
.LFB170:
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
	leaq	.LC0(%rip), %rax
	movl	$492, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L46
.L45:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	ossl_rcu_call, .-ossl_rcu_call
	.globl	ossl_rcu_uptr_deref
	.type	ossl_rcu_uptr_deref, @function
ossl_rcu_uptr_deref:
.LFB171:
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
.LFE171:
	.size	ossl_rcu_uptr_deref, .-ossl_rcu_uptr_deref
	.globl	ossl_rcu_assign_uptr
	.type	ossl_rcu_assign_uptr, @function
ossl_rcu_assign_uptr:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	ossl_rcu_assign_uptr, .-ossl_rcu_assign_uptr
	.globl	ossl_rcu_lock_new
	.type	ossl_rcu_lock_new, @function
ossl_rcu_lock_new:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$1, -20(%rbp)
	jg	.L51
	movl	$2, -20(%rbp)
.L51:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_lib_ctx_get_concrete@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	leaq	.LC0(%rip), %rax
	movl	$530, %edx
	movq	%rax, %rsi
	movl	$264, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L54
	movl	$0, %eax
	jmp	.L53
.L54:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_mutex_init@PLT
	movq	-8(%rbp), %rax
	addq	$176, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_mutex_init@PLT
	movq	-8(%rbp), %rax
	addq	$88, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_mutex_init@PLT
	movq	-8(%rbp), %rax
	addq	$216, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_cond_init@PLT
	movq	-8(%rbp), %rax
	subq	$-128, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_cond_init@PLT
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	allocate_new_qp_group
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L55
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$543, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	$0, -8(%rbp)
.L55:
	movq	-8(%rbp), %rax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	ossl_rcu_lock_new, .-ossl_rcu_lock_new
	.globl	ossl_rcu_lock_free
	.type	ossl_rcu_lock_free, @function
ossl_rcu_lock_free:
.LFB174:
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
	cmpq	$0, -24(%rbp)
	je	.L59
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_synchronize_rcu@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	.LC0(%rip), %rcx
	movl	$560, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$562, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L56
.L59:
	nop
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE174:
	.size	ossl_rcu_lock_free, .-ossl_rcu_lock_free
	.globl	CRYPTO_THREAD_lock_new
	.type	CRYPTO_THREAD_lock_new, @function
CRYPTO_THREAD_lock_new:
.LFB175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rax
	movl	$570, %edx
	movq	%rax, %rsi
	movl	$56, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L61
	movl	$0, %eax
	jmp	.L62
.L61:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_rwlock_init@PLT
	testl	%eax, %eax
	je	.L63
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$575, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	$0, %eax
	jmp	.L62
.L63:
	movq	-8(%rbp), %rax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE175:
	.size	CRYPTO_THREAD_lock_new, .-CRYPTO_THREAD_lock_new
	.globl	CRYPTO_THREAD_read_lock
	.type	CRYPTO_THREAD_read_lock, @function
CRYPTO_THREAD_read_lock:
.LFB176:
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
	call	pthread_rwlock_rdlock@PLT
	testl	%eax, %eax
	je	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	movl	$1, %eax
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE176:
	.size	CRYPTO_THREAD_read_lock, .-CRYPTO_THREAD_read_lock
	.globl	CRYPTO_THREAD_write_lock
	.type	CRYPTO_THREAD_write_lock, @function
CRYPTO_THREAD_write_lock:
.LFB177:
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
	call	pthread_rwlock_wrlock@PLT
	testl	%eax, %eax
	je	.L68
	movl	$0, %eax
	jmp	.L69
.L68:
	movl	$1, %eax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE177:
	.size	CRYPTO_THREAD_write_lock, .-CRYPTO_THREAD_write_lock
	.globl	CRYPTO_THREAD_unlock
	.type	CRYPTO_THREAD_unlock, @function
CRYPTO_THREAD_unlock:
.LFB178:
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
	call	pthread_rwlock_unlock@PLT
	testl	%eax, %eax
	je	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movl	$1, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE178:
	.size	CRYPTO_THREAD_unlock, .-CRYPTO_THREAD_unlock
	.globl	CRYPTO_THREAD_lock_free
	.type	CRYPTO_THREAD_lock_free, @function
CRYPTO_THREAD_lock_free:
.LFB179:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L76
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_rwlock_destroy@PLT
	leaq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$665, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	jmp	.L73
.L76:
	nop
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE179:
	.size	CRYPTO_THREAD_lock_free, .-CRYPTO_THREAD_lock_free
	.globl	CRYPTO_THREAD_run_once
	.type	CRYPTO_THREAD_run_once, @function
CRYPTO_THREAD_run_once:
.LFB180:
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
	call	pthread_once@PLT
	testl	%eax, %eax
	je	.L78
	movl	$0, %eax
	jmp	.L79
.L78:
	movl	$1, %eax
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE180:
	.size	CRYPTO_THREAD_run_once, .-CRYPTO_THREAD_run_once
	.globl	CRYPTO_THREAD_init_local
	.type	CRYPTO_THREAD_init_local, @function
CRYPTO_THREAD_init_local:
.LFB181:
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
	call	pthread_key_create@PLT
	testl	%eax, %eax
	je	.L81
	movl	$0, %eax
	jmp	.L82
.L81:
	movl	$1, %eax
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE181:
	.size	CRYPTO_THREAD_init_local, .-CRYPTO_THREAD_init_local
	.globl	CRYPTO_THREAD_get_local
	.type	CRYPTO_THREAD_get_local, @function
CRYPTO_THREAD_get_local:
.LFB182:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	pthread_getspecific@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE182:
	.size	CRYPTO_THREAD_get_local, .-CRYPTO_THREAD_get_local
	.globl	CRYPTO_THREAD_set_local
	.type	CRYPTO_THREAD_set_local, @function
CRYPTO_THREAD_set_local:
.LFB183:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	pthread_setspecific@PLT
	testl	%eax, %eax
	je	.L86
	movl	$0, %eax
	jmp	.L87
.L86:
	movl	$1, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE183:
	.size	CRYPTO_THREAD_set_local, .-CRYPTO_THREAD_set_local
	.globl	CRYPTO_THREAD_cleanup_local
	.type	CRYPTO_THREAD_cleanup_local, @function
CRYPTO_THREAD_cleanup_local:
.LFB184:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	pthread_key_delete@PLT
	testl	%eax, %eax
	je	.L89
	movl	$0, %eax
	jmp	.L90
.L89:
	movl	$1, %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE184:
	.size	CRYPTO_THREAD_cleanup_local, .-CRYPTO_THREAD_cleanup_local
	.globl	CRYPTO_THREAD_get_current_id
	.type	CRYPTO_THREAD_get_current_id, @function
CRYPTO_THREAD_get_current_id:
.LFB185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	pthread_self@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE185:
	.size	CRYPTO_THREAD_get_current_id, .-CRYPTO_THREAD_get_current_id
	.globl	CRYPTO_THREAD_compare_id
	.type	CRYPTO_THREAD_compare_id, @function
CRYPTO_THREAD_compare_id:
.LFB186:
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
	call	pthread_equal@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE186:
	.size	CRYPTO_THREAD_compare_id, .-CRYPTO_THREAD_compare_id
	.globl	CRYPTO_atomic_add
	.type	CRYPTO_atomic_add, @function
CRYPTO_atomic_add:
.LFB187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, %eax
	lock xaddl	%eax, (%rdx)
	addl	%ecx, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE187:
	.size	CRYPTO_atomic_add, .-CRYPTO_atomic_add
	.globl	CRYPTO_atomic_or
	.type	CRYPTO_atomic_or, @function
CRYPTO_atomic_or:
.LFB188:
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
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rax
.L98:
	movq	%rax, %rcx
	orq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	lock cmpxchgq	%rcx, (%rdx)
	sete	%cl
	testb	%cl, %cl
	je	.L98
	movq	-24(%rbp), %rax
	movq	%rsi, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE188:
	.size	CRYPTO_atomic_or, .-CRYPTO_atomic_or
	.globl	CRYPTO_atomic_load
	.type	CRYPTO_atomic_load, @function
CRYPTO_atomic_load:
.LFB189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE189:
	.size	CRYPTO_atomic_load, .-CRYPTO_atomic_load
	.globl	CRYPTO_atomic_load_int
	.type	CRYPTO_atomic_load_int, @function
CRYPTO_atomic_load_int:
.LFB190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE190:
	.size	CRYPTO_atomic_load_int, .-CRYPTO_atomic_load_int
	.globl	openssl_init_fork_handlers
	.type	openssl_init_fork_handlers, @function
openssl_init_fork_handlers:
.LFB191:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE191:
	.size	openssl_init_fork_handlers, .-openssl_init_fork_handlers
	.globl	openssl_get_fork_id
	.type	openssl_get_fork_id, @function
openssl_get_fork_id:
.LFB192:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	getpid@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE192:
	.size	openssl_get_fork_id, .-openssl_get_fork_id
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
