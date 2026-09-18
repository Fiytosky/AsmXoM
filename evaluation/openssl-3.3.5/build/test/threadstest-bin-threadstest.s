	.file	"threadstest.c"
	.text
	.type	safe_add_time, @function
safe_add_time:
.LFB465:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, %ecx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	jnc	.L2
	movl	$1, %ecx
.L2:
	movq	%rax, -8(%rbp)
	movq	%rcx, %rax
	andl	$1, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	movq	-8(%rbp), %rax
	jmp	.L6
.L4:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE465:
	.size	safe_add_time, .-safe_add_time
	.type	safe_sub_time, @function
safe_sub_time:
.LFB466:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L8
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L8:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE466:
	.size	safe_sub_time, .-safe_sub_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB475:
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
.LFE475:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_infinite, @function
ossl_time_infinite:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$-1, %rdi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	ossl_time_infinite, .-ossl_time_infinite
	.type	ossl_time_to_timeval, @function
ossl_time_to_timeval:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	leaq	-20(%rbp), %rdx
	movl	$999, %esi
	movq	%rax, %rdi
	call	safe_add_time
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L19
	call	ossl_time_infinite
	movq	%rax, -40(%rbp)
.L19:
	movq	-40(%rbp), %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	imulq	$1000000000, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$4, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	ossl_time_to_timeval, .-ossl_time_to_timeval
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_sub_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L22
	call	ossl_time_zero
	jmp	.L24
.L22:
	movq	-8(%rbp), %rax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	ossl_time_subtract, .-ossl_time_subtract
	.type	thread_run, @function
thread_run:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	call	*%rax
	call	OPENSSL_thread_stop@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	thread_run, .-thread_run
	.type	run_thread, @function
run_thread:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	(%rax), %rdx
	leaq	thread_run(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	run_thread, .-run_thread
	.type	wait_for_thread, @function
wait_for_thread:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	wait_for_thread, .-wait_for_thread
	.local	do_fips
	.comm	do_fips,4,4
	.local	privkey
	.comm	privkey,8,8
	.local	storedir
	.comm	storedir,8,8
	.local	config_file
	.comm	config_file,8,8
	.local	multidefault_run
	.comm	multidefault_run,4,4
	.section	.rodata
.LC0:
	.string	"default"
	.section	.data.rel.local,"aw"
	.align 16
	.type	default_provider, @object
	.size	default_provider, 16
default_provider:
	.quad	.LC0
	.quad	0
	.section	.rodata
.LC1:
	.string	"fips"
	.section	.data.rel.local
	.align 16
	.type	fips_provider, @object
	.size	fips_provider, 16
fips_provider:
	.quad	.LC1
	.quad	0
	.align 16
	.type	fips_and_default_providers, @object
	.size	fips_and_default_providers, 24
fips_and_default_providers:
	.quad	.LC0
	.quad	.LC1
	.quad	0
	.local	global_lock
	.comm	global_lock,8,8
	.text
	.type	get_new_uid, @function
get_new_uid:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	lock xaddl	%eax, current_uid.1(%rip)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	get_new_uid, .-get_new_uid
	.section	.rodata
.LC2:
	.string	"lock"
.LC3:
	.string	"../test/threadstest.c"
.LC4:
	.string	"CRYPTO_THREAD_read_lock(lock)"
.LC5:
	.string	"CRYPTO_THREAD_unlock(lock)"
	.align 8
.LC6:
	.string	"CRYPTO_THREAD_write_lock(lock)"
	.text
	.type	test_lock, @function
test_lock:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$94, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$97, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$98, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC6(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$99, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC5(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$100, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movl	$1, %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movl	-12(%rbp), %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	test_lock, .-test_lock
	.local	contention
	.comm	contention,4,4
	.local	rwwriter1_done
	.comm	rwwriter1_done,4,4
	.local	rwwriter2_done
	.comm	rwwriter2_done,4,4
	.local	rwreader1_iterations
	.comm	rwreader1_iterations,4,4
	.local	rwreader2_iterations
	.comm	rwreader2_iterations,4,4
	.local	rwwriter1_iterations
	.comm	rwwriter1_iterations,4,4
	.local	rwwriter2_iterations
	.comm	rwwriter2_iterations,4,4
	.local	rwwriter_ptr
	.comm	rwwriter_ptr,8,8
	.data
	.align 4
	.type	rw_torture_result, @object
	.size	rw_torture_result, 4
rw_torture_result:
	.long	1
	.local	rwtorturelock
	.comm	rwtorturelock,8,8
	.local	atomiclock
	.comm	atomiclock,8,8
	.text
	.type	rwwriter_fn, @function
rwwriter_fn:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	call	ossl_time_now@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
.L47:
	movl	$0, %edx
	movl	$0, %esi
	movl	$4, %edi
	call	CRYPTO_zalloc@PLT
	movq	%rax, -32(%rbp)
	movl	contention(%rip), %eax
	testl	%eax, %eax
	jne	.L39
	movl	$1000, %edi
	call	OSSL_sleep@PLT
.L39:
	movq	rwtorturelock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L40
	call	abort@PLT
.L40:
	movq	rwwriter_ptr(%rip), %rax
	testq	%rax, %rax
	je	.L41
	movq	rwwriter_ptr(%rip), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L42
.L41:
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.L42:
	movq	rwwriter_ptr(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, rwwriter_ptr(%rip)
	movq	rwtorturelock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	testl	%eax, %eax
	jne	.L43
	call	abort@PLT
.L43:
	cmpq	$0, -40(%rbp)
	je	.L44
	leaq	.LC3(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$143, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L44:
	call	ossl_time_now@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rbx
	shrq	$11, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	subq	%rax, %rbx
	movq	%rbx, %rdx
	cmpq	$3, %rdx
	ja	.L50
	addl	$1, -20(%rbp)
	jmp	.L47
.L50:
	nop
	movq	-80(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	rwwriter_fn, .-rwwriter_fn
	.section	.rodata
.LC7:
	.string	"Starting writer1"
	.text
	.type	rwwriter1_fn, @function
rwwriter1_fn:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC7(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$156, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	rwwriter1_iterations(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	rwwriter_fn
	movq	atomiclock(%rip), %rdx
	leaq	-4(%rbp), %rax
	leaq	rwwriter1_done(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	CRYPTO_atomic_add@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	rwwriter1_fn, .-rwwriter1_fn
	.section	.rodata
.LC8:
	.string	"Starting writer 2"
	.text
	.type	rwwriter2_fn, @function
rwwriter2_fn:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC8(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$165, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	rwwriter2_iterations(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	rwwriter_fn
	movq	atomiclock(%rip), %rdx
	leaq	-4(%rbp), %rax
	leaq	rwwriter2_done(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	CRYPTO_atomic_add@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	rwwriter2_fn, .-rwwriter2_fn
	.section	.rodata
	.align 8
.LC9:
	.string	"rwwriter pointer went backwards! %d : %d\n"
	.text
	.type	rwreader_fn, @function
rwreader_fn:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	rwtorturelock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L55
	call	abort@PLT
.L61:
	movq	atomiclock(%rip), %rdx
	leaq	-12(%rbp), %rax
	leaq	rwwriter1_done(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	CRYPTO_atomic_add@PLT
	movq	atomiclock(%rip), %rdx
	leaq	-16(%rbp), %rax
	leaq	rwwriter2_done(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	CRYPTO_atomic_add@PLT
	addl	$1, -4(%rbp)
	movq	rwwriter_ptr(%rip), %rax
	testq	%rax, %rax
	je	.L56
	movq	rwwriter_ptr(%rip), %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L57
	movq	rwwriter_ptr(%rip), %rax
	movl	(%rax), %ecx
	movl	-8(%rbp), %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%ecx, %r8d
	movl	%eax, %ecx
	movl	$188, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, rw_torture_result(%rip)
.L57:
	movq	rwwriter_ptr(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
.L56:
	movq	rwtorturelock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	testl	%eax, %eax
	jne	.L58
	call	abort@PLT
.L58:
	movl	rw_torture_result(%rip), %eax
	testl	%eax, %eax
	jne	.L59
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L53
.L59:
	movq	rwtorturelock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_read_lock@PLT
	testl	%eax, %eax
	jne	.L55
	call	abort@PLT
.L55:
	movl	-12(%rbp), %eax
	cmpl	$1, %eax
	jne	.L61
	movl	-16(%rbp), %eax
	cmpl	$1, %eax
	jne	.L61
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	rwtorturelock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
	testl	%eax, %eax
	jne	.L53
	call	abort@PLT
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	rwreader_fn, .-rwreader_fn
	.section	.rodata
.LC10:
	.string	"Starting reader 1"
	.text
	.type	rwreader1_fn, @function
rwreader1_fn:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$210, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	rwreader1_iterations(%rip), %rax
	movq	%rax, %rdi
	call	rwreader_fn
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	rwreader1_fn, .-rwreader1_fn
	.section	.rodata
.LC11:
	.string	"Starting reader 2"
	.text
	.type	rwreader2_fn, @function
rwreader2_fn:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC11(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$216, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	rwreader2_iterations(%rip), %rax
	movq	%rax, %rdi
	call	rwreader_fn
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	rwreader2_fn, .-rwreader2_fn
	.local	rwwriter1
	.comm	rwwriter1,8,8
	.local	rwwriter2
	.comm	rwwriter2,8,8
	.local	rwreader1
	.comm	rwreader1,8,8
	.local	rwreader2
	.comm	rwreader2,8,8
	.section	.rodata
.LC13:
	.string	"rwtorturelock"
.LC14:
	.string	"atomiclock"
.LC15:
	.string	"Staring rw torture"
	.align 8
.LC16:
	.string	"run_thread(&rwreader1, rwreader1_fn)"
	.align 8
.LC17:
	.string	"run_thread(&rwreader2, rwreader2_fn)"
	.align 8
.LC18:
	.string	"run_thread(&rwwriter1, rwwriter1_fn)"
	.align 8
.LC19:
	.string	"run_thread(&rwwriter2, rwwriter2_fn)"
.LC20:
	.string	"wait_for_thread(rwwriter1)"
.LC21:
	.string	"wait_for_thread(rwwriter2)"
.LC22:
	.string	"wait_for_thread(rwreader1)"
.LC23:
	.string	"wait_for_thread(rwreader2)"
.LC25:
	.string	"rw_torture_result is %d\n"
	.align 8
.LC26:
	.string	"performed %d reads and %d writes over 2 read and 2 write threads in %e seconds"
.LC27:
	.string	"Threads did not iterate\n"
.LC28:
	.string	"Average read time %e/read"
.LC29:
	.string	"Averate write time %e/write"
.LC30:
	.string	"1"
.LC31:
	.string	"rw_torture_result"
	.text
	.type	_torture_rw, @function
_torture_rw:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	$0, -4(%rbp)
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, rwtorturelock(%rip)
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, atomiclock(%rip)
	movq	rwtorturelock(%rip), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$235, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	movq	atomiclock(%rip), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$235, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L74
	movl	$0, rwwriter1_iterations(%rip)
	movl	$0, rwwriter2_iterations(%rip)
	movl	$0, rwreader1_iterations(%rip)
	movl	$0, rwreader2_iterations(%rip)
	movl	$0, rwwriter1_done(%rip)
	movl	$0, rwwriter2_done(%rip)
	movl	$1, rw_torture_result(%rip)
	movq	$0, rwwriter1(%rip)
	movq	$0, rwwriter2(%rip)
	movq	$0, rwreader1(%rip)
	movq	$0, rwreader2(%rip)
	leaq	.LC15(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$251, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	ossl_time_now@PLT
	movq	%rax, -40(%rbp)
	leaq	rwreader1_fn(%rip), %rdx
	leaq	rwreader1(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$253, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	leaq	rwreader2_fn(%rip), %rdx
	leaq	rwreader2(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$254, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	leaq	rwwriter1_fn(%rip), %rdx
	leaq	rwwriter1(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$255, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	leaq	rwwriter2_fn(%rip), %rdx
	leaq	rwwriter2(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC19(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	movq	rwwriter1(%rip), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC20(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$257, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	movq	rwwriter2(%rip), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$258, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	movq	rwreader1(%rip), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$259, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	movq	rwreader2(%rip), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$260, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L75
	call	ossl_time_now@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, %rdi
	call	ossl_time_to_timeval
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	-56(%rbp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC24(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	rw_torture_result(%rip), %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$266, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	rwwriter1_iterations(%rip), %edx
	movl	rwwriter2_iterations(%rip), %eax
	leal	(%rdx,%rax), %esi
	movl	rwreader1_iterations(%rip), %edx
	movl	rwreader2_iterations(%rip), %eax
	leal	(%rdx,%rax), %ecx
	movq	-16(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %xmm0
	movl	%esi, %r8d
	movl	$267, %esi
	movl	$1, %eax
	call	test_info@PLT
	movl	rwreader1_iterations(%rip), %edx
	movl	rwreader2_iterations(%rip), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	je	.L71
	movl	rwwriter1_iterations(%rip), %edx
	movl	rwwriter2_iterations(%rip), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	jne	.L72
.L71:
	leaq	.LC27(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$272, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L68
.L72:
	movl	rwreader1_iterations(%rip), %edx
	movl	rwreader2_iterations(%rip), %eax
	addl	%edx, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	rwwriter1_iterations(%rip), %edx
	movl	rwwriter2_iterations(%rip), %eax
	addl	%edx, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rax, %xmm0
	movl	$277, %esi
	movq	%rcx, %rdi
	movl	$1, %eax
	call	test_info@PLT
	movq	-32(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rax, %xmm0
	movl	$278, %esi
	movq	%rcx, %rdi
	movl	$1, %eax
	call	test_info@PLT
	movl	rw_torture_result(%rip), %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$280, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L76
	movl	$1, -4(%rbp)
	jmp	.L68
.L74:
	nop
	jmp	.L68
.L75:
	nop
	jmp	.L68
.L76:
	nop
.L68:
	movq	rwtorturelock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	atomiclock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movq	$0, rwtorturelock(%rip)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	_torture_rw, .-_torture_rw
	.type	torture_rw_low, @function
torture_rw_low:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, contention(%rip)
	call	_torture_rw
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	torture_rw_low, .-torture_rw_low
	.type	torture_rw_high, @function
torture_rw_high:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, contention(%rip)
	call	_torture_rw
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	torture_rw_high, .-torture_rw_high
	.local	rcu_lock
	.comm	rcu_lock,8,8
	.local	writer1_done
	.comm	writer1_done,4,4
	.local	writer2_done
	.comm	writer2_done,4,4
	.local	reader1_iterations
	.comm	reader1_iterations,4,4
	.local	reader2_iterations
	.comm	reader2_iterations,4,4
	.local	writer1_iterations
	.comm	writer1_iterations,4,4
	.local	writer2_iterations
	.comm	writer2_iterations,4,4
	.local	writer_ptr
	.comm	writer_ptr,8,8
	.local	global_ctr
	.comm	global_ctr,8,8
	.data
	.align 4
	.type	rcu_torture_result, @object
	.size	rcu_torture_result, 4
rcu_torture_result:
	.long	1
	.text
	.type	free_old_rcu_data, @function
free_old_rcu_data:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	free_old_rcu_data, .-free_old_rcu_data
	.type	writer_fn, @function
writer_fn:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	call	ossl_time_now@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
.L88:
	movl	$0, %edx
	movl	$0, %esi
	movl	$8, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	$2989, (%rax)
	movl	contention(%rip), %eax
	testl	%eax, %eax
	jne	.L83
	movl	$1000, %edi
	call	OSSL_sleep@PLT
.L83:
	movq	rcu_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_lock@PLT
	leaq	writer_ptr(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_uptr_deref@PLT
	movq	%rax, -32(%rbp)
	movq	global_ctr(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, global_ctr(%rip)
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-56(%rbp), %rax
	leaq	writer_ptr(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_rcu_assign_uptr@PLT
	movl	contention(%rip), %eax
	testl	%eax, %eax
	jne	.L84
	movq	rcu_lock(%rip), %rax
	movq	-32(%rbp), %rdx
	leaq	free_old_rcu_data(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rcu_call@PLT
.L84:
	movq	rcu_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_write_unlock@PLT
	movl	contention(%rip), %eax
	testl	%eax, %eax
	je	.L85
	movq	rcu_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_synchronize_rcu@PLT
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L85:
	call	ossl_time_now@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rbx
	shrq	$11, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_time2ticks
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$11, %rax
	subq	%rax, %rbx
	movq	%rbx, %rdx
	cmpq	$3, %rdx
	ja	.L91
	addl	$1, -20(%rbp)
	jmp	.L88
.L91:
	nop
	movq	-80(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	writer_fn, .-writer_fn
	.type	writer1_fn, @function
writer1_fn:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC7(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$355, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	writer1_iterations(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	writer_fn
	movq	atomiclock(%rip), %rdx
	leaq	-4(%rbp), %rax
	leaq	writer1_done(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	CRYPTO_atomic_add@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	writer1_fn, .-writer1_fn
	.section	.rodata
.LC32:
	.string	"Starting writer2"
	.text
	.type	writer2_fn, @function
writer2_fn:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC32(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$364, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	writer2_iterations(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	writer_fn
	movq	atomiclock(%rip), %rdx
	leaq	-4(%rbp), %rax
	leaq	writer2_done(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$1, %esi
	call	CRYPTO_atomic_add@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	writer2_fn, .-writer2_fn
	.section	.rodata
	.align 8
.LC33:
	.string	"rcu torture value went backwards! %llu : %llu"
	.align 8
.LC34:
	.string	"ossl_rcu_deref did return NULL!"
	.text
	.type	reader_fn, @function
reader_fn:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L95
.L101:
	movq	atomiclock(%rip), %rdx
	leaq	-36(%rbp), %rax
	leaq	writer1_done(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	CRYPTO_atomic_add@PLT
	movq	atomiclock(%rip), %rdx
	leaq	-40(%rbp), %rax
	leaq	writer2_done(%rip), %rdi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	call	CRYPTO_atomic_add@PLT
	addl	$1, -4(%rbp)
	movq	rcu_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_read_lock@PLT
	leaq	writer_ptr(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_uptr_deref@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L96
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L97
.L96:
	movq	$0, -16(%rbp)
.L97:
	movq	-24(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L98
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rcx, %r8
	movq	%rax, %rcx
	movl	$387, %esi
	movl	$0, %eax
	call	test_info@PLT
	cmpq	$0, -32(%rbp)
	jne	.L99
	leaq	.LC34(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$389, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
.L99:
	movl	$0, rcu_torture_result(%rip)
.L98:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	rcu_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_read_unlock@PLT
	movl	rcu_torture_result(%rip), %eax
	testl	%eax, %eax
	jne	.L95
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L94
.L95:
	movl	-36(%rbp), %eax
	cmpl	$1, %eax
	jne	.L101
	movl	-40(%rbp), %eax
	cmpl	$1, %eax
	jne	.L101
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	reader_fn, .-reader_fn
	.type	reader1_fn, @function
reader1_fn:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC10(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$404, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	reader1_iterations(%rip), %rax
	movq	%rax, %rdi
	call	reader_fn
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	reader1_fn, .-reader1_fn
	.type	reader2_fn, @function
reader2_fn:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC11(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$410, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	reader2_iterations(%rip), %rax
	movq	%rax, %rdi
	call	reader_fn
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	reader2_fn, .-reader2_fn
	.local	writer1
	.comm	writer1,8,8
	.local	writer2
	.comm	writer2,8,8
	.local	reader1
	.comm	reader1,8,8
	.local	reader2
	.comm	reader2,8,8
	.section	.rodata
.LC35:
	.string	"Staring rcu torture"
	.align 8
.LC36:
	.string	"run_thread(&reader1, reader1_fn)"
	.align 8
.LC37:
	.string	"run_thread(&reader2, reader2_fn)"
	.align 8
.LC38:
	.string	"run_thread(&writer1, writer1_fn)"
	.align 8
.LC39:
	.string	"run_thread(&writer2, writer2_fn)"
.LC40:
	.string	"wait_for_thread(writer1)"
.LC41:
	.string	"wait_for_thread(writer2)"
.LC42:
	.string	"wait_for_thread(reader1)"
.LC43:
	.string	"wait_for_thread(reader2)"
.LC44:
	.string	"rcu_torture_result is %d\n"
.LC45:
	.string	"Average write time %e/write"
.LC46:
	.string	"rcu_torture_result"
	.text
	.type	_torture_rcu, @function
_torture_rcu:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, atomiclock(%rip)
	movq	atomiclock(%rip), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$428, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L118
	movq	$0, writer1(%rip)
	movq	$0, writer2(%rip)
	movq	$0, reader1(%rip)
	movq	$0, reader2(%rip)
	movl	$0, writer1_iterations(%rip)
	movl	$0, writer2_iterations(%rip)
	movl	$0, reader1_iterations(%rip)
	movl	$0, reader2_iterations(%rip)
	movl	$0, writer1_done(%rip)
	movl	$0, writer2_done(%rip)
	movl	$1, rcu_torture_result(%rip)
	movl	contention(%rip), %eax
	cmpl	$2, %eax
	jne	.L107
	movl	$4, %eax
	jmp	.L108
.L107:
	movl	$1, %eax
.L108:
	movl	$0, %esi
	movl	%eax, %edi
	call	ossl_rcu_lock_new@PLT
	movq	%rax, rcu_lock(%rip)
	movq	rcu_lock(%rip), %rax
	testq	%rax, %rax
	je	.L119
	leaq	.LC35(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$448, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	ossl_time_now@PLT
	movq	%rax, -40(%rbp)
	leaq	reader1_fn(%rip), %rdx
	leaq	reader1(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$450, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L120
	leaq	reader2_fn(%rip), %rdx
	leaq	reader2(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC37(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$451, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L120
	leaq	writer1_fn(%rip), %rdx
	leaq	writer1(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$452, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L120
	leaq	writer2_fn(%rip), %rdx
	leaq	writer2(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$453, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L120
	movq	writer1(%rip), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$454, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L120
	movq	writer2(%rip), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$455, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L120
	movq	reader1(%rip), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$456, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L120
	movq	reader2(%rip), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC43(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$457, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L120
	call	ossl_time_now@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_time_subtract
	movq	%rax, %rdi
	call	ossl_time_to_timeval
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movq	-56(%rbp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC24(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	rcu_torture_result(%rip), %eax
	leaq	.LC44(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$463, %esi
	movl	$0, %eax
	call	test_info@PLT
	movl	writer1_iterations(%rip), %edx
	movl	writer2_iterations(%rip), %eax
	leal	(%rdx,%rax), %esi
	movl	reader1_iterations(%rip), %edx
	movl	reader2_iterations(%rip), %eax
	leal	(%rdx,%rax), %ecx
	movq	-16(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %xmm0
	movl	%esi, %r8d
	movl	$464, %esi
	movl	$1, %eax
	call	test_info@PLT
	movl	reader1_iterations(%rip), %edx
	movl	reader2_iterations(%rip), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	je	.L112
	movl	writer1_iterations(%rip), %edx
	movl	writer2_iterations(%rip), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	jne	.L113
.L112:
	leaq	.LC27(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$469, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	jmp	.L106
.L113:
	movl	reader1_iterations(%rip), %edx
	movl	reader2_iterations(%rip), %eax
	addl	%edx, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	writer1_iterations(%rip), %edx
	movl	writer2_iterations(%rip), %eax
	addl	%edx, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	-16(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC28(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rax, %xmm0
	movl	$474, %esi
	movq	%rcx, %rdi
	movl	$1, %eax
	call	test_info@PLT
	movq	-32(%rbp), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC3(%rip), %rcx
	movq	%rax, %xmm0
	movl	$475, %esi
	movq	%rcx, %rdi
	movl	$1, %eax
	call	test_info@PLT
	movl	rcu_torture_result(%rip), %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$477, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L121
	movl	$1, -4(%rbp)
	jmp	.L106
.L118:
	nop
	jmp	.L106
.L119:
	nop
	jmp	.L106
.L120:
	nop
	jmp	.L106
.L121:
	nop
.L106:
	movq	rcu_lock(%rip), %rax
	movq	%rax, %rdi
	call	ossl_rcu_lock_free@PLT
	movq	atomiclock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movl	rcu_torture_result(%rip), %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$484, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L115
	movl	$0, %eax
	jmp	.L117
.L115:
	movl	-4(%rbp), %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	_torture_rcu, .-_torture_rcu
	.type	torture_rcu_low, @function
torture_rcu_low:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, contention(%rip)
	call	_torture_rcu
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	torture_rcu_low, .-torture_rcu_low
	.type	torture_rcu_high, @function
torture_rcu_high:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, contention(%rip)
	call	_torture_rcu
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	torture_rcu_high, .-torture_rcu_high
	.type	torture_rcu_high2, @function
torture_rcu_high2:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$2, contention(%rip)
	call	_torture_rcu
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	torture_rcu_high2, .-torture_rcu_high2
	.local	once_run
	.comm	once_run,4,4
	.local	once_run_count
	.comm	once_run_count,4,4
	.type	once_do_run, @function
once_do_run:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	once_run_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, once_run_count(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	once_do_run, .-once_do_run
	.type	once_run_thread_cb, @function
once_run_thread_cb:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	once_do_run(%rip), %rdx
	leaq	once_run(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	once_run_thread_cb, .-once_run_thread_cb
	.section	.rodata
	.align 8
.LC47:
	.string	"run_thread(&thread, once_run_thread_cb)"
.LC48:
	.string	"wait_for_thread(thread)"
.LC49:
	.string	"once_run_count"
	.text
	.type	test_once, @function
test_once:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	once_run_thread_cb(%rip), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$526, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L131
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC48(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$527, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L131
	leaq	once_do_run(%rip), %rdx
	leaq	once_run(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_run_once@PLT
	testl	%eax, %eax
	je	.L131
	movl	once_run_count(%rip), %eax
	movl	%eax, %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$529, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L132
.L131:
	movl	$0, %eax
	jmp	.L134
.L132:
	movl	$1, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	test_once, .-test_once
	.local	thread_local_key
	.comm	thread_local_key,4,4
	.local	destructor_run_count
	.comm	destructor_run_count,4,4
	.local	thread_local_thread_cb_ok
	.comm	thread_local_thread_cb_ok,4,4
	.type	thread_local_destructor, @function
thread_local_destructor:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L138
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L135
.L138:
	nop
.L135:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	thread_local_destructor, .-thread_local_destructor
	.section	.rodata
.LC50:
	.string	"ptr"
	.align 8
.LC51:
	.string	"CRYPTO_THREAD_set_local(&thread_local_key, &destructor_run_count)"
.LC52:
	.string	"&destructor_run_count"
	.text
	.type	thread_local_thread_cb, @function
thread_local_thread_cb:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	thread_local_key(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$555, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L144
	leaq	destructor_run_count(%rip), %rdx
	leaq	thread_local_key(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC51(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$556, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L144
	leaq	thread_local_key(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	leaq	destructor_run_count(%rip), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC52(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$561, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L145
	movl	$1, thread_local_thread_cb_ok(%rip)
	jmp	.L139
.L144:
	nop
	jmp	.L139
.L145:
	nop
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	thread_local_thread_cb, .-thread_local_thread_cb
	.section	.rodata
	.align 8
.LC53:
	.string	"CRYPTO_THREAD_init_local(&thread_local_key, thread_local_destructor)"
	.align 8
.LC54:
	.string	"run_thread(&thread, thread_local_thread_cb)"
.LC55:
	.string	"thread_local_thread_cb_ok"
.LC56:
	.string	"destructor_run_count"
	.align 8
.LC57:
	.string	"CRYPTO_THREAD_cleanup_local(&thread_local_key)"
	.text
	.type	test_thread_local, @function
test_thread_local:
.LFB526:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	leaq	thread_local_destructor(%rip), %rdx
	leaq	thread_local_key(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_init_local@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$572, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L147
	movl	$0, %eax
	jmp	.L154
.L147:
	leaq	thread_local_key(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$577, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L149
	leaq	thread_local_thread_cb(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC54(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$578, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC48(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$579, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L149
	movl	thread_local_thread_cb_ok(%rip), %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$580, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L150
.L149:
	movl	$0, %eax
	jmp	.L154
.L150:
	leaq	thread_local_key(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_get_local@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC50(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$586, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L151
	movl	$0, %eax
	jmp	.L154
.L151:
	movl	destructor_run_count(%rip), %eax
	movl	%eax, %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$590, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L152
	movl	$0, %eax
	jmp	.L154
.L152:
	leaq	thread_local_key(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$595, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L153
	movl	$0, %eax
	jmp	.L154
.L153:
	movl	$1, %eax
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE526:
	.size	test_thread_local, .-test_thread_local
	.section	.rodata
	.align 8
.LC58:
	.string	"CRYPTO_THREAD_set_local(&thread_local_key, &dummy)"
	.text
	.type	test_thread_local_multi_key, @function
test_thread_local_multi_key:
.LFB527:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L156
.L161:
	leaq	thread_local_destructor(%rip), %rdx
	leaq	thread_local_key(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_THREAD_init_local@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC53(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$610, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L157
	movl	$0, %eax
	jmp	.L162
.L157:
	leaq	-8(%rbp), %rax
	leaq	thread_local_key(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	CRYPTO_THREAD_set_local@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC58(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$614, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L159
	movl	$0, %eax
	jmp	.L162
.L159:
	leaq	thread_local_key(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_cleanup_local@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC57(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$617, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L160
	movl	$0, %eax
	jmp	.L162
.L160:
	addl	$1, -4(%rbp)
.L156:
	cmpl	$999, -4(%rbp)
	jle	.L161
	movl	$1, %eax
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE527:
	.size	test_thread_local_multi_key, .-test_thread_local_multi_key
	.section	.rodata
.LC59:
	.string	"val"
.LC60:
	.string	"ret"
.LC61:
	.string	"0"
	.align 8
.LC62:
	.string	"CRYPTO_atomic_add(&val, 1, &ret, lock)"
.LC63:
	.string	"3"
.LC64:
	.string	"(unsigned int)val64"
.LC65:
	.string	"(unsigned int)ret64"
	.align 8
.LC66:
	.string	"CRYPTO_atomic_or(&val64, 2, &ret64, lock)"
	.align 8
.LC67:
	.string	"CRYPTO_atomic_load(&val64, &ret64, lock)"
	.text
	.type	test_atomic, @function
test_atomic:
.LFB528:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	$1, -32(%rbp)
	movq	$0, -40(%rbp)
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$629, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L164
	movl	$0, %eax
	jmp	.L188
.L164:
	leaq	-24(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_atomic_add@PLT
	testl	%eax, %eax
	je	.L166
	movl	-20(%rbp), %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$634, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L189
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$634, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L168
	jmp	.L189
.L166:
	movl	-20(%rbp), %esi
	leaq	.LC61(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$638, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L190
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$638, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L190
.L168:
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	leaq	-20(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	CRYPTO_atomic_add@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC62(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$644, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L191
	movl	-20(%rbp), %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$646, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L192
	movl	-24(%rbp), %edi
	movl	-20(%rbp), %esi
	leaq	.LC60(%rip), %rcx
	leaq	.LC59(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$646, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L192
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	CRYPTO_atomic_or@PLT
	testl	%eax, %eax
	je	.L174
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC63(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$651, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L193
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC65(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$652, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L176
	jmp	.L193
.L174:
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$656, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L194
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC61(%rip), %rcx
	leaq	.LC65(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$657, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L194
.L176:
	movq	$1, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	CRYPTO_atomic_or@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC66(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$663, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L195
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC63(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$666, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L196
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC65(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$667, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L196
	movq	$0, -40(%rbp)
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_atomic_load@PLT
	testl	%eax, %eax
	je	.L181
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC63(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$673, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L197
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC65(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$674, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	jne	.L183
	jmp	.L197
.L181:
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC63(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$678, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L198
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC61(%rip), %rcx
	leaq	.LC65(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$679, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L198
.L183:
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_atomic_load@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$684, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L199
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC63(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$687, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L200
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC65(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$688, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L200
	movl	$1, -4(%rbp)
	jmp	.L169
.L189:
	nop
	jmp	.L169
.L190:
	nop
	jmp	.L169
.L191:
	nop
	jmp	.L169
.L192:
	nop
	jmp	.L169
.L193:
	nop
	jmp	.L169
.L194:
	nop
	jmp	.L169
.L195:
	nop
	jmp	.L169
.L196:
	nop
	jmp	.L169
.L197:
	nop
	jmp	.L169
.L198:
	nop
	jmp	.L169
.L199:
	nop
	jmp	.L169
.L200:
	nop
.L169:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	movl	-4(%rbp), %eax
.L188:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE528:
	.size	test_atomic, .-test_atomic
	.local	multi_libctx
	.comm	multi_libctx,8,8
	.local	multi_success
	.comm	multi_success,4,4
	.local	multi_provider
	.comm	multi_provider,40,32
	.local	multi_num_threads
	.comm	multi_num_threads,8,8
	.local	multi_threads
	.comm	multi_threads,80,32
	.type	multi_intialise, @function
multi_intialise:
.LFB529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, multi_success(%rip)
	movq	$0, multi_libctx(%rip)
	movq	$0, multi_num_threads(%rip)
	leaq	multi_threads(%rip), %rax
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	multi_provider(%rip), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE529:
	.size	multi_intialise, .-multi_intialise
	.type	multi_set_success, @function
multi_set_success:
.LFB530:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	global_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_write_lock@PLT
	testl	%eax, %eax
	jne	.L203
	movl	-4(%rbp), %eax
	movl	%eax, multi_success(%rip)
	jmp	.L202
.L203:
	movl	-4(%rbp), %eax
	movl	%eax, multi_success(%rip)
	movq	global_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_unlock@PLT
.L202:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE530:
	.size	multi_set_success, .-multi_set_success
	.type	thead_teardown_libctx, @function
thead_teardown_libctx:
.LFB531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	multi_provider(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L206
.L207:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	addq	$8, -8(%rbp)
.L206:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L207
	movq	multi_libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	call	multi_intialise
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE531:
	.size	thead_teardown_libctx, .-thead_teardown_libctx
	.section	.rodata
	.align 8
.LC68:
	.string	"test_get_libctx(&multi_libctx, NULL, config_file, NULL, NULL)"
.LC69:
	.string	"MAXIMUM_PROVIDERS"
.LC70:
	.string	"n"
	.align 8
.LC71:
	.string	"multi_provider[n] = OSSL_PROVIDER_load(multi_libctx, providers[n])"
	.text
	.type	thread_setup_libctx, @function
thread_setup_libctx:
.LFB532:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L209
	movq	config_file(%rip), %rax
	leaq	multi_libctx(%rip), %rdi
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	call	test_get_libctx@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$739, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L209
	movl	$0, %eax
	jmp	.L210
.L209:
	cmpq	$0, -32(%rbp)
	je	.L211
	movq	$0, -8(%rbp)
	jmp	.L212
.L215:
	movq	-8(%rbp), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC70(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$745, %esi
	movq	%rax, %rdi
	call	test_size_t_lt@PLT
	testl	%eax, %eax
	je	.L213
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	multi_libctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	-8(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	multi_provider(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	multi_provider(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.LC71(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$746, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L214
.L213:
	call	thead_teardown_libctx
	movl	$0, %eax
	jmp	.L210
.L214:
	addq	$1, -8(%rbp)
.L212:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L215
.L211:
	movl	$1, %eax
.L210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE532:
	.size	thread_setup_libctx, .-thread_setup_libctx
	.section	.rodata
	.align 8
.LC72:
	.string	"wait_for_thread(multi_threads[i])"
	.text
	.type	teardown_threads, @function
teardown_threads:
.LFB533:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	jmp	.L217
.L220:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	multi_threads(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC72(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$759, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L218
	movl	$0, %eax
	jmp	.L219
.L218:
	addq	$1, -8(%rbp)
.L217:
	movq	multi_num_threads(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L220
	movl	$1, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE533:
	.size	teardown_threads, .-teardown_threads
	.section	.rodata
.LC73:
	.string	"MAXIMUM_THREADS"
.LC74:
	.string	"multi_num_threads + n"
	.align 8
.LC75:
	.string	"run_thread(multi_threads + multi_num_threads++, thread_func)"
	.text
	.type	start_threads, @function
start_threads:
.LFB534:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	multi_num_threads(%rip), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	leaq	.LC73(%rip), %rcx
	leaq	.LC74(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$10, %r9d
	movq	%rsi, %r8
	movl	$768, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	testl	%eax, %eax
	jne	.L222
	movl	$0, %eax
	jmp	.L223
.L222:
	movq	$0, -8(%rbp)
	jmp	.L224
.L226:
	movq	multi_num_threads(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, multi_num_threads(%rip)
	leaq	0(,%rax,8), %rdx
	leaq	multi_threads(%rip), %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	run_thread
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC75(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$772, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L225
	movl	$0, %eax
	jmp	.L223
.L225:
	addq	$1, -8(%rbp)
.L224:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L226
	movl	$1, %eax
.L223:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE534:
	.size	start_threads, .-start_threads
	.section	.rodata
.LC76:
	.string	"multi_success"
	.text
	.type	thread_run_test, @function
thread_run_test:
.LFB535:
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
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movl	$0, -4(%rbp)
	call	multi_intialise
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	thread_setup_libctx
	testl	%eax, %eax
	je	.L235
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	start_threads
	testl	%eax, %eax
	je	.L235
	cmpq	$0, -24(%rbp)
	je	.L231
	movq	-24(%rbp), %rax
	call	*%rax
.L231:
	call	teardown_threads
	testl	%eax, %eax
	je	.L236
	movl	multi_success(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$793, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L236
	movl	$1, -4(%rbp)
	jmp	.L230
.L235:
	nop
	jmp	.L230
.L236:
	nop
.L230:
	call	thead_teardown_libctx
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE535:
	.size	thread_run_test, .-thread_run_test
	.section	.rodata
.LC77:
	.string	"SHA2-256"
.LC78:
	.string	"AES-128-CBC"
.LC79:
	.string	"Hello World"
.LC80:
	.string	"mdctx"
.LC81:
	.string	"md"
.LC82:
	.string	"cipherctx"
.LC83:
	.string	"ciph"
	.align 8
.LC84:
	.string	"EVP_DigestInit_ex(mdctx, md, NULL)"
	.align 8
.LC85:
	.string	"EVP_DigestUpdate(mdctx, message, messlen)"
	.align 8
.LC86:
	.string	"EVP_DigestFinal(mdctx, out, &mdoutl)"
	.align 8
.LC87:
	.string	"EVP_EncryptInit_ex(cipherctx, ciph, NULL, key, iv)"
	.align 8
.LC88:
	.string	"EVP_EncryptUpdate(cipherctx, out, &ciphoutl, (unsigned char *)message, messlen)"
	.align 8
.LC89:
	.string	"EVP_EncryptFinal(cipherctx, out, &ciphoutl)"
.LC90:
	.string	"RSA"
.LC91:
	.string	"pkey"
	.text
	.type	thread_general_worker, @function
thread_general_worker:
.LFB536:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	call	EVP_MD_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	multi_libctx(%rip), %rax
	leaq	.LC77(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -32(%rbp)
	call	EVP_CIPHER_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	multi_libctx(%rip), %rax
	leaq	.LC78(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_CIPHER_fetch@PLT
	movq	%rax, -48(%rbp)
	leaq	.LC79(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -64(%rbp)
	movabsq	$506097522914230528, %rax
	movabsq	$1084818905618843912, %rdx
	movq	%rax, -160(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	multi_libctx(%rip), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$827, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L253
	movq	-32(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$828, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L253
	movq	-40(%rbp), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$829, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L253
	movq	-48(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$830, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L253
	movl	$0, -16(%rbp)
	jmp	.L241
.L244:
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$835, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L254
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC85(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$836, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L254
	leaq	-180(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_DigestFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC86(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$837, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L254
	addl	$1, -16(%rbp)
.L241:
	cmpl	$4, -16(%rbp)
	jle	.L244
	movl	$0, -16(%rbp)
	jmp	.L245
.L248:
	leaq	-176(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	EVP_EncryptInit_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC87(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$841, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L255
	movq	-64(%rbp), %rax
	movl	%eax, %edi
	movq	-56(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	EVP_EncryptUpdate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC88(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$842, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L255
	leaq	-184(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_EncryptFinal@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$845, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L255
	addl	$1, -16(%rbp)
.L245:
	cmpl	$4, -16(%rbp)
	jle	.L248
	cmpl	$0, -68(%rbp)
	je	.L249
	movl	$2048, %ecx
	jmp	.L250
.L249:
	movl	$512, %ecx
.L250:
	movq	multi_libctx(%rip), %rax
	leaq	.LC90(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	EVP_PKEY_Q_keygen@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC91(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$855, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L256
	movl	$1, -12(%rbp)
	jmp	.L240
.L253:
	nop
	jmp	.L240
.L254:
	nop
	jmp	.L240
.L255:
	nop
	jmp	.L240
.L256:
	nop
.L240:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_CTX_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_CIPHER_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	cmpl	$0, -12(%rbp)
	jne	.L257
	movl	$0, %edi
	call	multi_set_success
.L257:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE536:
	.size	thread_general_worker, .-thread_general_worker
	.type	thread_multi_simple_fetch, @function
thread_multi_simple_fetch:
.LFB537:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	multi_libctx(%rip), %rax
	leaq	.LC77(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L259
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	jmp	.L261
.L259:
	movl	$0, %edi
	call	multi_set_success
.L261:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE537:
	.size	thread_multi_simple_fetch, .-thread_multi_simple_fetch
	.local	shared_evp_pkey
	.comm	shared_evp_pkey,8,8
	.section	.rodata
.LC92:
	.string	"provider=default"
.LC93:
	.string	"provider=fips"
.LC94:
	.string	"ctx"
.LC95:
	.string	"EVP_PKEY_encrypt_init(ctx)"
	.align 8
.LC96:
	.string	"EVP_PKEY_encrypt(ctx, ctbuf, &ctlen, (unsigned char *)msg, strlen(msg))"
.LC97:
	.string	"EVP_PKEY_decrypt_init(ctx)"
	.align 8
.LC98:
	.string	"EVP_PKEY_decrypt(ctx, ptbuf, &ptlen, ctbuf, ctlen)"
.LC99:
	.string	"ptbuf"
.LC100:
	.string	"msg"
	.text
	.type	thread_shared_evp_pkey, @function
thread_shared_evp_pkey:
.LFB538:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	leaq	.LC79(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	$256, -576(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L263
.L274:
	cmpl	$0, -32(%rbp)
	jle	.L264
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
.L264:
	cmpl	$0, -32(%rbp)
	jne	.L265
	leaq	.LC92(%rip), %rax
	jmp	.L266
.L265:
	leaq	.LC93(%rip), %rax
.L266:
	movq	shared_evp_pkey(%rip), %rsi
	movq	multi_libctx(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$897, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L276
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt_init@PLT
	movl	%eax, %esi
	leaq	.LC61(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$900, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L277
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	movq	-40(%rbp), %rcx
	leaq	-576(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_encrypt@PLT
	movl	%eax, %esi
	leaq	.LC61(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$901, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L277
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	shared_evp_pkey(%rip), %rcx
	movq	multi_libctx(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_pkey@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$909, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L278
	movq	$256, -568(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt_init@PLT
	movl	%eax, %esi
	leaq	.LC61(%rip), %rcx
	leaq	.LC97(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$913, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L279
	movq	-576(%rbp), %rdi
	leaq	-304(%rbp), %rcx
	leaq	-568(%rbp), %rdx
	leaq	-560(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	EVP_PKEY_decrypt@PLT
	movl	%eax, %esi
	leaq	.LC61(%rip), %rcx
	leaq	.LC98(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$914, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L279
	movq	-568(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdi
	movq	-40(%rbp), %r8
	leaq	.LC99(%rip), %rcx
	leaq	.LC100(%rip), %rdx
	leaq	.LC3(%rip), %rax
	pushq	%rbx
	leaq	-560(%rbp), %rsi
	pushq	%rsi
	movq	%rdi, %r9
	movl	$916, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L279
	addl	$1, -32(%rbp)
.L263:
	movl	do_fips(%rip), %eax
	cmpl	%eax, -32(%rbp)
	jle	.L274
	movl	$1, -28(%rbp)
	jmp	.L268
.L276:
	nop
	jmp	.L268
.L277:
	nop
	jmp	.L268
.L278:
	nop
	jmp	.L268
.L279:
	nop
.L268:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	cmpl	$0, -28(%rbp)
	jne	.L280
	movl	$0, %edi
	call	multi_set_success
.L280:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	thread_shared_evp_pkey, .-thread_shared_evp_pkey
	.section	.rodata
.LC101:
	.string	"deflt"
	.align 8
.LC102:
	.string	"OSSL_PROVIDER_available(multi_libctx, \"default\")"
	.text
	.type	thread_provider_load_unload, @function
thread_provider_load_unload:
.LFB539:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	multi_libctx(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC101(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$932, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L282
	movq	multi_libctx(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC102(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$933, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L283
.L282:
	movl	$0, %edi
	call	multi_set_success
.L283:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE539:
	.size	thread_provider_load_unload, .-thread_provider_load_unload
	.type	test_multi_general_worker_default_provider, @function
test_multi_general_worker_default_provider:
.LFB540:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	default_provider(%rip), %rcx
	leaq	thread_general_worker(%rip), %rdx
	leaq	thread_general_worker(%rip), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	thread_run_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE540:
	.size	test_multi_general_worker_default_provider, .-test_multi_general_worker_default_provider
	.section	.rodata
.LC103:
	.string	"FIPS not supported"
	.text
	.type	test_multi_general_worker_fips_provider, @function
test_multi_general_worker_fips_provider:
.LFB541:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	do_fips(%rip), %eax
	testl	%eax, %eax
	jne	.L287
	leaq	.LC103(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$948, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L288
.L287:
	leaq	fips_provider(%rip), %rcx
	leaq	thread_general_worker(%rip), %rdx
	leaq	thread_general_worker(%rip), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	thread_run_test
.L288:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE541:
	.size	test_multi_general_worker_fips_provider, .-test_multi_general_worker_fips_provider
	.type	test_multi_fetch_worker, @function
test_multi_fetch_worker:
.LFB542:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	default_provider(%rip), %rcx
	leaq	thread_multi_simple_fetch(%rip), %rdx
	leaq	thread_multi_simple_fetch(%rip), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	thread_run_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE542:
	.size	test_multi_fetch_worker, .-test_multi_fetch_worker
	.section	.rodata
	.align 8
.LC104:
	.string	"shared_evp_pkey = load_pkey_pem(privkey, multi_libctx)"
	.text
	.type	test_multi_shared_pkey_common, @function
test_multi_shared_pkey_common:
.LFB543:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	call	multi_intialise
	movl	do_fips(%rip), %eax
	testl	%eax, %eax
	je	.L292
	leaq	fips_and_default_providers(%rip), %rax
	jmp	.L293
.L292:
	leaq	default_provider(%rip), %rax
.L293:
	movq	%rax, %rsi
	movl	$1, %edi
	call	thread_setup_libctx
	testl	%eax, %eax
	je	.L300
	movq	multi_libctx(%rip), %rdx
	movq	privkey(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	%rax, shared_evp_pkey(%rip)
	movq	shared_evp_pkey(%rip), %rax
	leaq	.LC104(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$966, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L300
	leaq	thread_shared_evp_pkey(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	start_threads
	testl	%eax, %eax
	je	.L300
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	start_threads
	testl	%eax, %eax
	je	.L300
	call	thread_shared_evp_pkey
	call	teardown_threads
	testl	%eax, %eax
	je	.L301
	movl	multi_success(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$974, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L301
	movl	$1, -4(%rbp)
	jmp	.L296
.L300:
	nop
	jmp	.L296
.L301:
	nop
.L296:
	movq	shared_evp_pkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	call	thead_teardown_libctx
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE543:
	.size	test_multi_shared_pkey_common, .-test_multi_shared_pkey_common
	.type	thread_downgrade_shared_evp_pkey, @function
thread_downgrade_shared_evp_pkey:
.LFB544:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	shared_evp_pkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_get0_RSA@PLT
	testq	%rax, %rax
	jne	.L304
	movl	$0, %edi
	call	multi_set_success
.L304:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE544:
	.size	thread_downgrade_shared_evp_pkey, .-thread_downgrade_shared_evp_pkey
	.type	test_multi_downgrade_shared_pkey, @function
test_multi_downgrade_shared_pkey:
.LFB545:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	thread_downgrade_shared_evp_pkey(%rip), %rax
	movq	%rax, %rdi
	call	test_multi_shared_pkey_common
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE545:
	.size	test_multi_downgrade_shared_pkey, .-test_multi_downgrade_shared_pkey
	.type	test_multi_shared_pkey, @function
test_multi_shared_pkey:
.LFB546:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	thread_shared_evp_pkey(%rip), %rax
	movq	%rax, %rdi
	call	test_multi_shared_pkey_common
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE546:
	.size	test_multi_shared_pkey, .-test_multi_shared_pkey
	.type	thread_release_shared_pkey, @function
thread_release_shared_pkey:
.LFB547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	OSSL_sleep@PLT
	movq	shared_evp_pkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE547:
	.size	thread_release_shared_pkey, .-thread_release_shared_pkey
	.section	.rodata
	.align 8
.LC105:
	.string	"EVP_PKEY_up_ref(shared_evp_pkey)"
	.text
	.type	test_multi_shared_pkey_release, @function
test_multi_shared_pkey_release:
.LFB548:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	$1, -16(%rbp)
	call	multi_intialise
	movq	$0, shared_evp_pkey(%rip)
	movl	do_fips(%rip), %eax
	testl	%eax, %eax
	je	.L311
	leaq	fips_and_default_providers(%rip), %rax
	jmp	.L312
.L311:
	leaq	default_provider(%rip), %rax
.L312:
	movq	%rax, %rsi
	movl	$1, %edi
	call	thread_setup_libctx
	testl	%eax, %eax
	je	.L325
	movq	multi_libctx(%rip), %rdx
	movq	privkey(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	load_pkey_pem@PLT
	movq	%rax, shared_evp_pkey(%rip)
	movq	shared_evp_pkey(%rip), %rax
	leaq	.LC104(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1020, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L325
	jmp	.L316
.L318:
	movq	shared_evp_pkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_up_ref@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC105(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1023, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L326
	addq	$1, -16(%rbp)
.L316:
	cmpq	$9, -16(%rbp)
	jbe	.L318
	leaq	thread_release_shared_pkey(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	start_threads
	testl	%eax, %eax
	je	.L327
	movq	$0, -16(%rbp)
	call	teardown_threads
	testl	%eax, %eax
	je	.L328
	movl	multi_success(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1032, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L328
	movl	$1, -4(%rbp)
	jmp	.L322
.L325:
	nop
	jmp	.L322
.L326:
	nop
	jmp	.L322
.L327:
	nop
	jmp	.L322
.L328:
	nop
.L315:
	jmp	.L322
.L323:
	movq	shared_evp_pkey(%rip), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	subq	$1, -16(%rbp)
.L322:
	cmpq	$0, -16(%rbp)
	jne	.L323
	call	thead_teardown_libctx
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	test_multi_shared_pkey_release, .-test_multi_shared_pkey_release
	.section	.rodata
	.align 8
.LC106:
	.string	"prov = OSSL_PROVIDER_load(multi_libctx, \"default\")"
	.align 8
.LC107:
	.string	"sha256 = EVP_MD_fetch(multi_libctx, \"SHA2-256\", NULL)"
.LC108:
	.string	"OSSL_PROVIDER_unload(prov)"
	.text
	.type	test_multi_load_unload_provider, @function
test_multi_load_unload_provider:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	multi_intialise
	movl	$0, %esi
	movl	$1, %edi
	call	thread_setup_libctx
	testl	%eax, %eax
	je	.L337
	movq	multi_libctx(%rip), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC106(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1052, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L337
	movq	multi_libctx(%rip), %rax
	leaq	.LC77(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC107(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1053, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L337
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1054, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L337
	movq	$0, -16(%rbp)
	leaq	thread_provider_load_unload(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	start_threads
	testl	%eax, %eax
	je	.L338
	call	thread_provider_load_unload
	call	teardown_threads
	testl	%eax, %eax
	je	.L339
	movl	multi_success(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1064, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L339
	movl	$1, -20(%rbp)
	jmp	.L332
.L337:
	nop
	jmp	.L332
.L338:
	nop
	jmp	.L332
.L339:
	nop
.L332:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	call	thead_teardown_libctx
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	test_multi_load_unload_provider, .-test_multi_load_unload_provider
	.section	.rodata
.LC109:
	.string	"legacy"
	.section	.data.rel.local
	.align 8
	.type	multi_load_provider, @object
	.size	multi_load_provider, 8
multi_load_provider:
	.quad	.LC109
	.section	.rodata
	.align 8
.LC110:
	.string	"prov = OSSL_PROVIDER_load(multi_libctx, multi_load_provider)"
	.text
	.type	test_multi_load_worker, @function
test_multi_load_worker:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	multi_load_provider(%rip), %rdx
	movq	multi_libctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC110(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1084, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L341
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC108(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1085, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L343
.L341:
	movl	$0, %edi
	call	multi_set_success
.L343:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	test_multi_load_worker, .-test_multi_load_worker
	.section	.rodata
	.align 8
.LC111:
	.string	"multi default test already run"
	.text
	.type	test_multi_default, @function
test_multi_default:
.LFB551:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	multidefault_run(%rip), %eax
	testl	%eax, %eax
	je	.L345
	leaq	.LC111(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1093, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	movl	$1, %eax
	jmp	.L346
.L345:
	movl	$1, multidefault_run(%rip)
	leaq	thread_multi_simple_fetch(%rip), %rdx
	leaq	thread_multi_simple_fetch(%rip), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	thread_run_test
.L346:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	test_multi_default, .-test_multi_default
	.section	.rodata
	.align 8
.LC112:
	.string	"Running multi default test first"
	.align 8
.LC113:
	.string	"Cannot load legacy provider - assuming this is a no-legacy build"
	.text
	.type	test_multi_load, @function
test_multi_load:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	movl	multidefault_run(%rip), %eax
	testl	%eax, %eax
	jne	.L348
	leaq	.LC112(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1109, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	call	test_multi_default
	movl	%eax, -4(%rbp)
.L348:
	leaq	.LC109(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L349
	leaq	.LC113(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1121, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC0(%rip), %rax
	movq	%rax, multi_load_provider(%rip)
.L349:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	leaq	test_multi_load_worker(%rip), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$10, %esi
	movl	$0, %edi
	call	thread_run_test
	testl	%eax, %eax
	je	.L350
	cmpl	$0, -4(%rbp)
	je	.L350
	movl	$1, %eax
	jmp	.L352
.L350:
	movl	$0, %eax
.L352:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	test_multi_load, .-test_multi_load
	.section	.rodata
.LC114:
	.string	"%d"
.LC115:
	.string	"1.3.6.1.4.1.16604.%s"
.LC116:
	.string	"short-name-%s"
.LC117:
	.string	"long-name-%s"
.LC118:
	.string	"id"
.LC119:
	.string	"id = OBJ_create(oid, sn, ln)"
	.align 8
.LC120:
	.string	"OBJ_add_sigid(id, NID_sha3_256, NID_rsa)"
	.text
	.type	test_obj_create_one, @function
test_obj_create_one:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	call	get_new_uid
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	leaq	.LC114(%rip), %rsi
	leaq	-16(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-16(%rbp), %rdx
	leaq	.LC115(%rip), %rsi
	leaq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-16(%rbp), %rdx
	leaq	.LC116(%rip), %rsi
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$30, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-16(%rbp), %rdx
	leaq	.LC117(%rip), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$30, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	-4(%rbp), %esi
	leaq	.LC61(%rip), %rcx
	leaq	.LC118(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$1139, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L354
	leaq	-128(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OBJ_create@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1140, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L354
	movl	-4(%rbp), %eax
	movl	$19, %edx
	movl	$1097, %esi
	movl	%eax, %edi
	call	OBJ_add_sigid@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC120(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1141, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L356
.L354:
	movl	$0, %edi
	call	multi_set_success
.L356:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	test_obj_create_one, .-test_obj_create_one
	.type	test_obj_add, @function
test_obj_add:
.LFB554:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	default_provider(%rip), %rcx
	leaq	test_obj_create_one(%rip), %rdx
	leaq	test_obj_create_one(%rip), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$10, %esi
	movq	%rax, %rdi
	call	thread_run_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE554:
	.size	test_obj_add, .-test_obj_add
	.section	.rodata
	.align 8
.LC121:
	.string	"OSSL_LIB_CTX_load_config(multi_libctx, config_file)"
	.text
	.type	test_lib_ctx_load_config_worker, @function
test_lib_ctx_load_config_worker:
.LFB555:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	config_file(%rip), %rdx
	movq	multi_libctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	movl	%eax, %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC121(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1154, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L361
	movl	$0, %edi
	call	multi_set_success
.L361:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	test_lib_ctx_load_config_worker, .-test_lib_ctx_load_config_worker
	.type	test_lib_ctx_load_config, @function
test_lib_ctx_load_config:
.LFB556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	default_provider(%rip), %rcx
	leaq	test_lib_ctx_load_config_worker(%rip), %rdx
	leaq	test_lib_ctx_load_config_worker(%rip), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$10, %esi
	movq	%rax, %rdi
	call	thread_run_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	test_lib_ctx_load_config, .-test_lib_ctx_load_config
	.local	multi_bio1
	.comm	multi_bio1,8,8
	.local	multi_bio2
	.comm	multi_bio2,8,8
	.section	.rodata
	.align 8
.LC122:
	.string	"RAND_bytes_ex(multi_libctx, &ch, 1, 64)"
	.text
	.type	test_bio_dgram_pair_worker, @function
test_bio_dgram_pair_worker:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	$0, -4(%rbp)
	movb	$0, -9(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movq	%xmm0, -96(%rbp)
	movq	$0, -136(%rbp)
	movq	multi_libctx(%rip), %rax
	leaq	-9(%rbp), %rsi
	movl	$64, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	RAND_bytes_ex@PLT
	movl	%eax, %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC122(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1177, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L374
	leaq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$64, -120(%rbp)
	movzbl	-9(%rbp), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L367
	movzbl	-9(%rbp), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L368
	movq	multi_bio2(%rip), %rax
	jmp	.L369
.L368:
	movq	multi_bio1(%rip), %rax
.L369:
	leaq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_sendmmsg@PLT
	movl	%eax, -8(%rbp)
	jmp	.L370
.L367:
	movzbl	-9(%rbp), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L371
	movq	multi_bio2(%rip), %rax
	jmp	.L372
.L371:
	movq	multi_bio1(%rip), %rax
.L372:
	leaq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$40, %edx
	movq	%rax, %rdi
	call	BIO_recvmmsg@PLT
	movl	%eax, -8(%rbp)
.L370:
	movl	$1, -4(%rbp)
	jmp	.L366
.L374:
	nop
.L366:
	cmpl	$0, -4(%rbp)
	jne	.L375
	movl	$0, %edi
	call	multi_set_success
.L375:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	test_bio_dgram_pair_worker, .-test_bio_dgram_pair_worker
	.section	.rodata
.LC123:
	.string	"r"
	.text
	.type	test_bio_dgram_pair, @function
test_bio_dgram_pair:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_new_bio_dgram_pair@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC123(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$1206, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L380
	movq	-16(%rbp), %rax
	movq	%rax, multi_bio1(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, multi_bio2(%rip)
	leaq	default_provider(%rip), %rcx
	leaq	test_bio_dgram_pair_worker(%rip), %rdx
	leaq	test_bio_dgram_pair_worker(%rip), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$10, %esi
	movq	%rax, %rdi
	call	thread_run_test
	movl	%eax, -4(%rbp)
	jmp	.L378
.L380:
	nop
.L378:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	test_bio_dgram_pair, .-test_bio_dgram_pair
	.section	.rodata
	.align 8
.LC124:
	.string	"-----BEGIN RSA PRIVATE KEY-----\n"
	.align 8
.LC125:
	.string	"MIIBOgIBAAJBAMFcGsaxxdgiuuGmCkVImy4h99CqT7jwY3pexPGcnUFtR2Fh36Bp\n"
	.align 8
.LC126:
	.string	"oncwtkZ4cAgtvd4Qs8PkxUdp6p/DlUmObdkCAwEAAQJAUR44xX6zB3eaeyvTRzms\n"
	.align 8
.LC127:
	.string	"kHADrPCmPWnr8dxsNwiDGHzrMKLN+i/HAam+97HxIKVWNDH2ba9Mf1SA8xu9dcHZ\n"
	.align 8
.LC128:
	.string	"AQIhAOHPCLxbtQFVxlnhSyxYeb7O323c3QulPNn3bhOipElpAiEA2zZpBE8ZXVnL\n"
	.align 8
.LC129:
	.string	"74QjG4zINlDfH+EOEtjJJ3RtaYDugvECIBtsQDxXytChsRgDQ1TcXdStXPcDppie\n"
	.align 8
.LC130:
	.string	"dZhm8yhRTTBZAiAZjE/U9rsIDC0ebxIAZfn3iplWh84yGB3pgUI3J5WkoQIhAInE\n"
	.align 8
.LC131:
	.string	"HTUY5WRj5riZtkyGnbm3DvF+1eMtO2lYV+OuLcfE\n"
	.align 8
.LC132:
	.string	"-----END RSA PRIVATE KEY-----\n"
	.section	.data.rel.local
	.align 32
	.type	pemdataraw, @object
	.size	pemdataraw, 80
pemdataraw:
	.quad	.LC124
	.quad	.LC125
	.quad	.LC126
	.quad	.LC127
	.quad	.LC128
	.quad	.LC129
	.quad	.LC130
	.quad	.LC131
	.quad	.LC132
	.quad	0
	.text
	.type	test_pem_read_one, @function
test_pem_read_one:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	-32(%rbp), %rax
	leaq	pemdataraw(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	glue_strings@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L382
	movl	$0, %edi
	call	multi_set_success
	jmp	.L383
.L382:
	movq	-32(%rbp), %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L384
	movl	$0, %edi
	call	multi_set_success
	jmp	.L383
.L384:
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	PEM_read_bio_PrivateKey@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L385
	movl	$0, %edi
	call	multi_set_success
	jmp	.L383
.L385:
	nop
.L383:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1262, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	test_pem_read_one, .-test_pem_read_one
	.type	test_pem_read, @function
test_pem_read:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	default_provider(%rip), %rcx
	leaq	test_pem_read_one(%rip), %rdx
	leaq	test_pem_read_one(%rip), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movl	$10, %esi
	movq	%rax, %rdi
	call	thread_run_test
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	test_pem_read, .-test_pem_read
	.local	store
	.comm	store,8,8
	.section	.rodata
	.align 8
.LC133:
	.string	"X509_STORE_CTX_init(ctx, store, NULL, NULL)"
.LC134:
	.string	"name"
.LC135:
	.string	"Root CA"
.LC136:
	.string	"CN"
	.align 8
.LC137:
	.string	"X509_NAME_add_entry_by_txt(name, \"CN\", MBSTRING_ASC, (unsigned char *)\"Root CA\", -1, -1, 0)"
.LC138:
	.string	"obj"
	.text
	.type	test_x509_store_by_subject, @function
test_x509_store_by_subject:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	X509_STORE_CTX_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC94(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1282, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L396
	movq	store(%rip), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509_STORE_CTX_init@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC133(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1285, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L397
	call	X509_NAME_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC134(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1289, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L398
	leaq	.LC135(%rip), %rdx
	leaq	.LC136(%rip), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$-1, %r9d
	movl	$-1, %r8d
	movq	%rdx, %rcx
	movl	$4097, %edx
	movq	%rax, %rdi
	call	X509_NAME_add_entry_by_txt@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC137(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1291, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L399
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	X509_STORE_CTX_get_obj_by_subject@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC138(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1296, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L400
	movl	$1, -20(%rbp)
	jmp	.L390
.L396:
	nop
	jmp	.L390
.L397:
	nop
	jmp	.L390
.L398:
	nop
	jmp	.L390
.L399:
	nop
	jmp	.L390
.L400:
	nop
.L390:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	X509_OBJECT_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	X509_STORE_CTX_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_NAME_free@PLT
	cmpl	$0, -20(%rbp)
	jne	.L401
	movl	$0, %edi
	call	multi_set_success
.L401:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	test_x509_store_by_subject, .-test_x509_store_by_subject
	.section	.rodata
.LC139:
	.string	"store"
	.align 8
.LC140:
	.string	"X509_STORE_load_store(store, storedir)"
	.text
	.type	test_x509_store, @function
test_x509_store:
.LFB562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	call	X509_STORE_new@PLT
	movq	%rax, store(%rip)
	movq	store(%rip), %rax
	leaq	.LC139(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1314, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L403
	movl	$0, %eax
	jmp	.L404
.L403:
	movq	storedir(%rip), %rdx
	movq	store(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	X509_STORE_load_store@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC140(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$1316, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L407
	leaq	test_x509_store_by_subject(%rip), %rdx
	leaq	test_x509_store_by_subject(%rip), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$10, %esi
	movq	%rax, %rdi
	call	thread_run_test
	movl	%eax, -4(%rbp)
	jmp	.L406
.L407:
	nop
.L406:
	movq	store(%rip), %rax
	movq	%rax, %rdi
	call	X509_STORE_free@PLT
	movq	$0, store(%rip)
	movl	-4(%rbp), %eax
.L404:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	test_x509_store, .-test_x509_store
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	test_get_options, .-test_get_options
	.section	.rodata
	.align 8
.LC141:
	.string	"datadir = test_get_argument(0)"
.LC142:
	.string	"rsakey.pem"
.LC143:
	.string	"privkey"
.LC144:
	.string	"storedir"
	.align 8
.LC145:
	.string	"global_lock = CRYPTO_THREAD_lock_new()"
.LC146:
	.string	"test_multi_default"
.LC147:
	.string	"test_lock"
.LC148:
	.string	"torture_rw_low"
.LC149:
	.string	"torture_rw_high"
.LC150:
	.string	"torture_rcu_low"
.LC151:
	.string	"torture_rcu_high"
.LC152:
	.string	"torture_rcu_high2"
.LC153:
	.string	"test_once"
.LC154:
	.string	"test_thread_local"
.LC155:
	.string	"test_thread_local_multi_key"
.LC156:
	.string	"test_atomic"
.LC157:
	.string	"test_multi_load"
	.align 8
.LC158:
	.string	"test_multi_general_worker_default_provider"
	.align 8
.LC159:
	.string	"test_multi_general_worker_fips_provider"
.LC160:
	.string	"test_multi_fetch_worker"
.LC161:
	.string	"test_multi_shared_pkey"
	.align 8
.LC162:
	.string	"test_multi_downgrade_shared_pkey"
	.align 8
.LC163:
	.string	"test_multi_shared_pkey_release"
	.align 8
.LC164:
	.string	"test_multi_load_unload_provider"
.LC165:
	.string	"test_obj_add"
.LC166:
	.string	"test_lib_ctx_load_config"
.LC167:
	.string	"test_bio_dgram_pair"
.LC168:
	.string	"test_pem_read"
.LC169:
	.string	"test_x509_store"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	jmp	.L411
.L417:
	cmpl	$505, -4(%rbp)
	jg	.L412
	cmpl	$500, -4(%rbp)
	jge	.L411
	cmpl	$1, -4(%rbp)
	je	.L414
	cmpl	$2, -4(%rbp)
	je	.L415
	jmp	.L412
.L414:
	movl	$1, do_fips(%rip)
	jmp	.L411
.L415:
	call	opt_arg@PLT
	movq	%rax, config_file(%rip)
	jmp	.L411
.L412:
	movl	$0, %eax
	jmp	.L416
.L411:
	call	opt_next@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L417
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC141(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1367, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L418
	movl	$0, %eax
	jmp	.L416
.L418:
	leaq	.LC142(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, privkey(%rip)
	movq	privkey(%rip), %rax
	leaq	.LC143(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1371, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L419
	movl	$0, %eax
	jmp	.L416
.L419:
	leaq	.LC139(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_mk_file_path@PLT
	movq	%rax, storedir(%rip)
	movq	storedir(%rip), %rax
	leaq	.LC144(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1375, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L420
	movl	$0, %eax
	jmp	.L416
.L420:
	call	CRYPTO_THREAD_lock_new@PLT
	movq	%rax, global_lock(%rip)
	movq	global_lock(%rip), %rax
	leaq	.LC145(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$1378, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L421
	movl	$0, %eax
	jmp	.L416
.L421:
	leaq	test_multi_default(%rip), %rdx
	leaq	.LC146(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_lock(%rip), %rdx
	leaq	.LC147(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	torture_rw_low(%rip), %rdx
	leaq	.LC148(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	torture_rw_high(%rip), %rdx
	leaq	.LC149(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	torture_rcu_low(%rip), %rdx
	leaq	.LC150(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	torture_rcu_high(%rip), %rdx
	leaq	.LC151(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	torture_rcu_high2(%rip), %rdx
	leaq	.LC152(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_once(%rip), %rdx
	leaq	.LC153(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_thread_local(%rip), %rdx
	leaq	.LC154(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_thread_local_multi_key(%rip), %rdx
	leaq	.LC155(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_atomic(%rip), %rdx
	leaq	.LC156(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multi_load(%rip), %rdx
	leaq	.LC157(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multi_general_worker_default_provider(%rip), %rdx
	leaq	.LC158(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multi_general_worker_fips_provider(%rip), %rdx
	leaq	.LC159(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multi_fetch_worker(%rip), %rdx
	leaq	.LC160(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multi_shared_pkey(%rip), %rdx
	leaq	.LC161(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multi_downgrade_shared_pkey(%rip), %rdx
	leaq	.LC162(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multi_shared_pkey_release(%rip), %rdx
	leaq	.LC163(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multi_load_unload_provider(%rip), %rdx
	leaq	.LC164(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_obj_add(%rip), %rdx
	leaq	.LC165(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_lib_ctx_load_config(%rip), %rdx
	leaq	.LC166(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bio_dgram_pair(%rip), %rdx
	leaq	.LC167(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pem_read(%rip), %rdx
	leaq	.LC168(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_x509_store(%rip), %rdx
	leaq	.LC169(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L416:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	privkey(%rip), %rax
	leaq	.LC3(%rip), %rcx
	movl	$1423, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	storedir(%rip), %rax
	leaq	.LC3(%rip), %rcx
	movl	$1424, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	global_lock(%rip), %rax
	movq	%rax, %rdi
	call	CRYPTO_THREAD_lock_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	cleanup_tests, .-cleanup_tests
	.data
	.align 4
	.type	current_uid.1, @object
	.size	current_uid.1, 4
current_uid.1:
	.long	1073741824
	.section	.rodata
.LC170:
	.string	"Usage: %s [options]\n"
.LC171:
	.string	"Valid options are:\n"
.LC172:
	.string	"help"
.LC173:
	.string	"Display this summary"
.LC174:
	.string	"list"
	.align 8
.LC175:
	.string	"Display the list of tests available"
.LC176:
	.string	"test"
	.align 8
.LC177:
	.string	"Run a single test by id or name"
.LC178:
	.string	"iter"
	.align 8
.LC179:
	.string	"Run a single iteration of a test"
.LC180:
	.string	"indent"
	.align 8
.LC181:
	.string	"Number of tabs added to output"
.LC182:
	.string	"seed"
	.align 8
.LC183:
	.string	"Seed value to randomize tests with"
.LC184:
	.string	"Test the FIPS provider"
.LC185:
	.string	"config"
	.align 8
.LC186:
	.string	"The configuration file to use for the libctx"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	options.0, @object
	.size	options.0, 264
options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC170
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC171
	.quad	.LC172
	.long	500
	.long	45
	.quad	.LC173
	.quad	.LC174
	.long	501
	.long	45
	.quad	.LC175
	.quad	.LC176
	.long	502
	.long	115
	.quad	.LC177
	.quad	.LC178
	.long	503
	.long	110
	.quad	.LC179
	.quad	.LC180
	.long	504
	.long	112
	.quad	.LC181
	.quad	.LC182
	.long	505
	.long	110
	.quad	.LC183
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC184
	.quad	.LC185
	.long	2
	.long	60
	.quad	.LC186
	.quad	0
	.zero	16
	.section	.rodata
	.align 8
.LC24:
	.long	0
	.long	1093567616
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
