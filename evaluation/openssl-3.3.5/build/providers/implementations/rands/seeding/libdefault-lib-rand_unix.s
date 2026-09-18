	.file	"rand_unix.c"
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
	.type	syscall_random, @function
syscall_random:
.LFB402:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	getentropy@GOTPCREL(%rip), %rax
	testq	%rax, %rax
	je	.L6
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getentropy@PLT
	testl	%eax, %eax
	jne	.L7
	movq	-16(%rbp), %rax
	jmp	.L8
.L7:
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$38, %eax
	je	.L6
	movq	$-1, %rax
	jmp	.L8
.L6:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$318, %edi
	movl	$0, %eax
	call	syscall@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE402:
	.size	syscall_random, .-syscall_random
	.section	.rodata
.LC0:
	.string	"/dev/urandom"
.LC1:
	.string	"/dev/random"
.LC2:
	.string	"/dev/hwrng"
.LC3:
	.string	"/dev/srandom"
	.section	.data.rel.local,"aw"
	.align 32
	.type	random_device_paths, @object
	.size	random_device_paths, 32
random_device_paths:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.local	random_devices
	.comm	random_devices,160,32
	.data
	.align 4
	.type	keep_random_devices_open, @object
	.size	keep_random_devices_open, 4
keep_random_devices_open:
	.long	1
	.local	shm_addr
	.comm	shm_addr,8,8
	.text
	.type	cleanup_shm, @function
cleanup_shm:
.LFB403:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	shm_addr(%rip), %rax
	movq	%rax, %rdi
	call	shmdt@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE403:
	.size	cleanup_shm, .-cleanup_shm
	.type	wait_random_seeded, @function
wait_random_seeded:
.LFB404:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movl	seeded.1(%rip), %eax
	testl	%eax, %eax
	jne	.L11
	movl	$0, %edx
	movl	$1, %esi
	movl	$114, %edi
	call	shmget@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L12
	leaq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	uname@PLT
	testl	%eax, %eax
	jne	.L13
	leaq	-432(%rbp), %rax
	addq	$130, %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -36(%rbp)
	leaq	-432(%rbp), %rax
	addq	$130, %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L14
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	atoi@PLT
	jmp	.L15
.L14:
	movl	$0, %eax
.L15:
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %edx
	movl	kernel_version.0(%rip), %eax
	cmpl	%eax, %edx
	jg	.L16
	movl	-36(%rbp), %edx
	movl	kernel_version.0(%rip), %eax
	cmpl	%eax, %edx
	jne	.L13
	movl	-32(%rbp), %edx
	movl	4+kernel_version.0(%rip), %eax
	cmpl	%eax, %edx
	jl	.L13
.L16:
	movl	$0, %eax
	jmp	.L22
.L13:
	leaq	.LC1(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	je	.L12
	cmpl	$1023, -20(%rbp)
	jg	.L23
	movl	$0, %eax
	movl	$16, %ecx
	leaq	-560(%rbp), %rdx
	movq	%rdx, %rdi
#APP
# 470 "../providers/implementations/rands/seeding/rand_unix.c" 1
	cld; rep; stosq
# 0 "" 2
#NO_APP
	movl	%edi, %eax
	movl	%ecx, %edx
	movl	%edx, -24(%rbp)
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	leal	63(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$6, %eax
	movl	%eax, %esi
	movslq	%esi, %rax
	movq	-560(%rbp,%rax,8), %rax
	movl	-20(%rbp), %edx
	andl	$63, %edx
	movl	$1, %edi
	movl	%edx, %ecx
	salq	%cl, %rdi
	movq	%rdi, %rdx
	orq	%rax, %rdx
	movslq	%esi, %rax
	movq	%rdx, -560(%rbp,%rax,8)
	nop
.L20:
	movl	-20(%rbp), %eax
	leal	1(%rax), %edi
	leaq	-560(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	select@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L19
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L20
	jmp	.L19
.L23:
	nop
.L21:
	leaq	-37(%rbp), %rcx
	movl	-20(%rbp), %eax
	movl	$1, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L19
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.L21
.L19:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	cmpl	$1, -8(%rbp)
	jne	.L12
	movl	$1, seeded.1(%rip)
	movl	$804, %edx
	movl	$1, %esi
	movl	$114, %edi
	call	shmget@PLT
	movl	%eax, -4(%rbp)
.L12:
	cmpl	$-1, -4(%rbp)
	je	.L11
	movl	$1, seeded.1(%rip)
	movl	-4(%rbp), %eax
	movl	$4096, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	shmat@PLT
	movq	%rax, shm_addr(%rip)
	movq	shm_addr(%rip), %rax
	cmpq	$-1, %rax
	je	.L11
	leaq	cleanup_shm(%rip), %rax
	movq	%rax, %rdi
	call	OPENSSL_atexit@PLT
.L11:
	movl	seeded.1(%rip), %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE404:
	.size	wait_random_seeded, .-wait_random_seeded
	.type	check_random_device, @function
check_random_device:
.LFB405:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L25
	movq	-152(%rbp), %rax
	movl	(%rax), %eax
	leaq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	cmpl	$-1, %eax
	je	.L25
	movq	-152(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-144(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L25
	movq	-152(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-136(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L25
	movq	-152(%rbp), %rax
	movl	24(%rax), %edx
	movl	-120(%rbp), %eax
	xorl	%edx, %eax
	cmpl	$511, %eax
	ja	.L25
	movq	-152(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-104(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L25
	movl	$1, %eax
	jmp	.L27
.L25:
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE405:
	.size	check_random_device, .-check_random_device
	.type	get_random_device, @function
get_random_device:
.LFB406:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	-168(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	random_devices(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	check_random_device
	testl	%eax, %eax
	je	.L29
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L34
.L29:
	movq	-168(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	leaq	random_device_paths(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movq	-8(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L31
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L34
.L31:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	cmpl	$-1, %eax
	je	.L32
	movq	-160(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	-136(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-120(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L33
.L32:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
	movq	-8(%rbp), %rax
	movl	$-1, (%rax)
.L33:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE406:
	.size	get_random_device, .-get_random_device
	.type	close_random_device, @function
close_random_device:
.LFB407:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	random_devices(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	check_random_device
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	close@PLT
.L36:
	movq	-8(%rbp), %rax
	movl	$-1, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE407:
	.size	close_random_device, .-close_random_device
	.globl	ossl_rand_pool_init
	.type	ossl_rand_pool_init, @function
ossl_rand_pool_init:
.LFB408:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$0, -8(%rbp)
	jmp	.L38
.L39:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	random_devices(%rip), %rax
	movl	$-1, (%rdx,%rax)
	addq	$1, -8(%rbp)
.L38:
	cmpq	$3, -8(%rbp)
	jbe	.L39
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE408:
	.size	ossl_rand_pool_init, .-ossl_rand_pool_init
	.globl	ossl_rand_pool_cleanup
	.type	ossl_rand_pool_cleanup, @function
ossl_rand_pool_cleanup:
.LFB409:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	jmp	.L42
.L43:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	close_random_device
	addq	$1, -8(%rbp)
.L42:
	cmpq	$3, -8(%rbp)
	jbe	.L43
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE409:
	.size	ossl_rand_pool_cleanup, .-ossl_rand_pool_cleanup
	.globl	ossl_rand_pool_keep_random_devices_open
	.type	ossl_rand_pool_keep_random_devices_open, @function
ossl_rand_pool_keep_random_devices_open:
.LFB410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L45
	call	ossl_rand_pool_cleanup@PLT
.L45:
	movl	-4(%rbp), %eax
	movl	%eax, keep_random_devices_open(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE410:
	.size	ossl_rand_pool_keep_random_devices_open, .-ossl_rand_pool_keep_random_devices_open
	.globl	ossl_pool_acquire_entropy
	.type	ossl_pool_acquire_entropy, @function
ossl_pool_acquire_entropy:
.LFB411:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	$0, -56(%rbp)
	movl	$3, -12(%rbp)
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_rand_pool_bytes_needed@PLT
	movq	%rax, -8(%rbp)
	jmp	.L47
.L50:
	movq	-8(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rand_pool_add_begin@PLT
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	syscall_random
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jle	.L48
	movq	-72(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rand_pool_add_end@PLT
	movq	-72(%rbp), %rax
	subq	%rax, -8(%rbp)
	movl	$3, -12(%rbp)
	jmp	.L47
.L48:
	cmpq	$0, -72(%rbp)
	jns	.L47
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L65
.L47:
	cmpq	$0, -8(%rbp)
	je	.L49
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -12(%rbp)
	testl	%eax, %eax
	jg	.L50
	jmp	.L49
.L65:
	nop
.L49:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_entropy_available@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L51
	movq	-56(%rbp), %rax
	jmp	.L52
.L51:
	call	wait_random_seeded
	testl	%eax, %eax
	je	.L53
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_rand_pool_bytes_needed@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L54
.L64:
	movq	$0, -40(%rbp)
	movl	$3, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	get_random_device
	movl	%eax, -76(%rbp)
	cmpl	$-1, -76(%rbp)
	je	.L66
	jmp	.L57
.L60:
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_rand_pool_add_begin@PLT
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movl	-76(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jle	.L58
	movq	-40(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_rand_pool_add_end@PLT
	movq	-40(%rbp), %rax
	subq	%rax, -24(%rbp)
	movl	$3, -44(%rbp)
	jmp	.L57
.L58:
	cmpq	$0, -40(%rbp)
	jns	.L57
	call	__errno_location@PLT
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L67
.L57:
	cmpq	$0, -24(%rbp)
	je	.L59
	movl	-44(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -44(%rbp)
	testl	%eax, %eax
	jg	.L60
	jmp	.L59
.L67:
	nop
.L59:
	cmpq	$0, -40(%rbp)
	js	.L61
	movl	keep_random_devices_open(%rip), %eax
	testl	%eax, %eax
	jne	.L62
.L61:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	close_random_device
.L62:
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_rand_pool_bytes_needed@PLT
	movq	%rax, -24(%rbp)
	jmp	.L56
.L66:
	nop
.L56:
	addq	$1, -32(%rbp)
.L54:
	cmpq	$0, -24(%rbp)
	je	.L63
	cmpq	$3, -32(%rbp)
	jbe	.L64
.L63:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_entropy_available@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L53
	movq	-56(%rbp), %rax
	jmp	.L52
.L53:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_rand_pool_entropy_available@PLT
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE411:
	.size	ossl_pool_acquire_entropy, .-ossl_pool_acquire_entropy
	.globl	ossl_pool_add_nonce_data
	.type	ossl_pool_add_nonce_data, @function
ossl_pool_add_nonce_data:
.LFB412:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	leaq	-32(%rbp), %rax
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	call	getpid@PLT
	movl	%eax, -32(%rbp)
	call	CRYPTO_THREAD_get_current_id@PLT
	movq	%rax, -24(%rbp)
	call	get_time_stamp
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$24, %edx
	movq	%rax, %rdi
	call	ossl_rand_pool_add@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE412:
	.size	ossl_pool_add_nonce_data, .-ossl_pool_add_nonce_data
	.type	get_time_stamp, @function
get_time_stamp:
.LFB413:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	testl	%eax, %eax
	jne	.L71
	movq	-16(%rbp), %rax
	salq	$32, %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	jmp	.L72
.L71:
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday@PLT
	testl	%eax, %eax
	jne	.L73
	movq	-32(%rbp), %rax
	salq	$32, %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	jmp	.L72
.L73:
	movl	$0, %edi
	call	time@PLT
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE413:
	.size	get_time_stamp, .-get_time_stamp
	.local	seeded.1
	.comm	seeded.1,4,4
	.section	.rodata
	.align 8
	.type	kernel_version.0, @object
	.size	kernel_version.0, 8
kernel_version.0:
	.long	4
	.long	8
	.weak	getentropy
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
