	.file	"drbgtest.c"
	.text
	.type	gen_bytes, @function
gen_bytes:
.LFB548:
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
	call	RAND_get_rand_method@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	call	RAND_OpenSSL@PLT
	cmpq	%rax, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	jmp	.L4
.L3:
	movl	$-1, %eax
	jmp	.L4
.L2:
	cmpq	$0, -24(%rbp)
	je	.L5
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	EVP_RAND_generate@PLT
	addq	$16, %rsp
	jmp	.L4
.L5:
	movl	$0, %eax
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE548:
	.size	gen_bytes, .-gen_bytes
	.type	rand_bytes, @function
rand_bytes:
.LFB549:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, %edi
	call	RAND_get0_public@PLT
	movq	%rax, %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	gen_bytes
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE549:
	.size	rand_bytes, .-rand_bytes
	.type	rand_priv_bytes, @function
rand_priv_bytes:
.LFB550:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, %edi
	call	RAND_get0_private@PLT
	movq	%rax, %rcx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	gen_bytes
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE550:
	.size	rand_priv_bytes, .-rand_priv_bytes
	.type	state, @function
state:
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
	call	EVP_RAND_get_state@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE551:
	.size	state, .-state
	.type	query_rand_uint, @function
query_rand_uint:
.LFB552:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm0, -16(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-84(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_get_params@PLT
	testl	%eax, %eax
	je	.L13
	movl	-84(%rbp), %eax
	jmp	.L15
.L13:
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE552:
	.size	query_rand_uint, .-query_rand_uint
	.section	.rodata
.LC0:
	.string	"reseed_counter"
	.text
	.type	reseed_counter, @function
reseed_counter:
.LFB553:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	query_rand_uint
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE553:
	.size	reseed_counter, .-reseed_counter
	.type	prov_rand, @function
prov_rand:
.LFB554:
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
.LFE554:
	.size	prov_rand, .-prov_rand
	.type	set_reseed_counter, @function
set_reseed_counter:
.LFB555:
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
	movq	%rax, %rdi
	call	prov_rand
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	addq	$216, %rdx
	xchgl	(%rdx), %eax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE555:
	.size	set_reseed_counter, .-set_reseed_counter
	.type	inc_reseed_counter, @function
inc_reseed_counter:
.LFB556:
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
	call	reseed_counter
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	set_reseed_counter
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE556:
	.size	inc_reseed_counter, .-inc_reseed_counter
	.section	.rodata
.LC1:
	.string	"reseed_time"
	.text
	.type	reseed_time, @function
reseed_time:
.LFB557:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm0, -16(%rbp)
	leaq	-160(%rbp), %rax
	leaq	-88(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_time_t@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_get_params@PLT
	testl	%eax, %eax
	je	.L23
	movq	-88(%rbp), %rax
	jmp	.L25
.L23:
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE557:
	.size	reseed_time, .-reseed_time
	.section	.rodata
.LC2:
	.string	"primary"
.LC3:
	.string	"../test/drbgtest.c"
.LC4:
	.string	"prov"
.LC5:
	.string	"OpenSSL FIPS Provider"
	.text
	.type	using_fips_rng, @function
using_fips_rng:
.LFB558:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, %edi
	call	RAND_get0_primary@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$138, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_get0_rand@PLT
	movq	%rax, %rdi
	call	EVP_RAND_get0_provider@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$142, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L29
	movl	$0, %eax
	jmp	.L28
.L29:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get0_name@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC5(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE558:
	.size	using_fips_rng, .-using_fips_rng
	.type	disable_crngt, @function
disable_crngt:
.LFB559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE559:
	.size	disable_crngt, .-disable_crngt
	.section	.rodata
.LC6:
	.string	"0"
	.align 8
.LC7:
	.string	"primary_reseed = reseed_counter(primary)"
	.align 8
.LC8:
	.string	"public_reseed = reseed_counter(public)"
	.align 8
.LC9:
	.string	"private_reseed = reseed_counter(private)"
.LC10:
	.string	"expect_success"
	.align 8
.LC11:
	.string	"rand_bytes((unsigned char*)public_random, RANDOM_SIZE)"
	.align 8
.LC12:
	.string	"rand_priv_bytes((unsigned char*) private_random, RANDOM_SIZE)"
.LC13:
	.string	"expected_state"
.LC14:
	.string	"state(primary)"
.LC15:
	.string	"state(public)"
.LC16:
	.string	"state(private)"
.LC17:
	.string	"primary_reseed"
.LC18:
	.string	"reseed_counter(primary)"
.LC19:
	.string	"public_reseed"
.LC20:
	.string	"reseed_counter(public)"
.LC21:
	.string	"private_reseed"
.LC22:
	.string	"reseed_counter(private)"
.LC23:
	.string	"reseed_time(primary)"
.LC24:
	.string	"before_reseed"
.LC25:
	.string	"after_reseed"
.LC26:
	.string	"reseed_time(public)"
.LC27:
	.string	"reseed_time(private)"
	.text
	.type	test_drbg_reseed, @function
test_drbg_reseed:
.LFB560:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L33
	movl	$1, -28(%rbp)
	jmp	.L34
.L33:
	movl	$2, -28(%rbp)
.L34:
	cmpq	$0, -104(%rbp)
	jne	.L35
	leaq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
.L35:
	cmpq	$0, -112(%rbp)
	jne	.L36
	leaq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
.L36:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$202, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L37
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$203, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L37
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$204, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	jne	.L38
.L37:
	movl	$0, %eax
	jmp	.L57
.L38:
	cmpq	$0, 40(%rbp)
	jne	.L40
	movl	$0, %edi
	call	time@PLT
	movq	%rax, 40(%rbp)
.L40:
	cmpl	$1, 16(%rbp)
	jne	.L41
	movq	40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L42
.L41:
	movq	$0, -24(%rbp)
.L42:
	movq	-104(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rand_bytes
	movl	%eax, %esi
	movl	-68(%rbp), %edi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$216, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L43
	movq	-112(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	rand_priv_bytes
	movl	%eax, %esi
	movl	-68(%rbp), %edi
	leaq	.LC10(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$218, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L44
.L43:
	movl	$0, %eax
	jmp	.L57
.L44:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	state
	movl	%eax, %esi
	movl	-28(%rbp), %edi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$229, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L45
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	state
	movl	%eax, %esi
	movl	-28(%rbp), %edi
	leaq	.LC13(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$230, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L45
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	state
	movl	%eax, %esi
	movl	-28(%rbp), %edi
	leaq	.LC13(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$231, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L46
.L45:
	movl	$0, %eax
	jmp	.L57
.L46:
	cmpl	$0, 16(%rbp)
	js	.L47
	movl	-32(%rbp), %ebx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$236, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L57
.L47:
	cmpl	$0, 24(%rbp)
	js	.L48
	movl	-36(%rbp), %ebx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$242, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L49
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %ebx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$243, %esi
	movq	%rax, %rdi
	call	test_uint_ge@PLT
	testl	%eax, %eax
	jne	.L48
.L49:
	movl	$0, %eax
	jmp	.L57
.L48:
	cmpl	$0, 32(%rbp)
	js	.L50
	movl	-40(%rbp), %ebx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$250, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L51
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %ebx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %esi
	leaq	.LC18(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$251, %esi
	movq	%rax, %rdi
	call	test_uint_ge@PLT
	testl	%eax, %eax
	jne	.L50
.L51:
	movl	$0, %eax
	jmp	.L57
.L50:
	cmpl	$1, -68(%rbp)
	jne	.L52
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_time
	movq	%rax, %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$258, %esi
	movq	%rax, %rdi
	call	test_time_t_le@PLT
	testl	%eax, %eax
	je	.L53
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_time
	movq	%rax, %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC25(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$259, %esi
	movq	%rax, %rdi
	call	test_time_t_le@PLT
	testl	%eax, %eax
	jne	.L54
.L53:
	movl	$0, %eax
	jmp	.L57
.L54:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_time
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_time
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$263, %esi
	movq	%rax, %rdi
	call	test_time_t_ge@PLT
	testl	%eax, %eax
	je	.L55
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_time
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_time
	movq	%rax, %rsi
	leaq	.LC23(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_time_t_ge@PLT
	testl	%eax, %eax
	jne	.L56
.L55:
	movl	$0, %eax
	jmp	.L57
.L52:
	call	ERR_clear_error@PLT
.L56:
	movl	$1, %eax
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE560:
	.size	test_drbg_reseed, .-test_drbg_reseed
	.type	compare_drbg_fork_result, @function
compare_drbg_fork_result:
.LFB561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L59
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	movl	%eax, -4(%rbp)
.L59:
	cmpl	$0, -4(%rbp)
	jne	.L60
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
.L60:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE561:
	.size	compare_drbg_fork_result, .-compare_drbg_fork_result
	.type	compare_rand_chunk, @function
compare_rand_chunk:
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
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE562:
	.size	compare_rand_chunk, .-compare_rand_chunk
	.section	.rodata
.LC28:
	.string	"pipe(fd)"
.LC29:
	.string	"pid = fork()"
.LC30:
	.string	"pid"
.LC31:
	.string	"waitpid(pid, &status, 0)"
.LC32:
	.string	"status"
	.align 8
.LC33:
	.string	"read(fd[0], &random[0], sizeof(random)) == sizeof(random)"
	.align 8
.LC34:
	.string	"test_drbg_reseed(1, primary, public, private, &random[0], &random[RANDOM_SIZE], 1, 1, 1, 0)"
	.align 8
.LC35:
	.string	"write(fd[1], random, sizeof(random)) == sizeof(random)"
	.text
	.type	test_drbg_reseed_in_child, @function
test_drbg_reseed_in_child:
.LFB563:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movl	$0, -4(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	pipe@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$340, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L65
	movl	$0, %eax
	jmp	.L71
.L65:
	call	fork@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$343, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	jne	.L67
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$0, %eax
	jmp	.L71
.L67:
	cmpl	$0, -8(%rbp)
	jle	.L68
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	leaq	-12(%rbp), %rcx
	movl	-8(%rbp), %eax
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	waitpid@PLT
	movl	%eax, %esi
	movl	-8(%rbp), %edi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$353, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L69
	movl	-12(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$354, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L69
	movl	-20(%rbp), %eax
	leaq	-64(%rbp), %rcx
	movl	$32, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	cmpq	$32, %rax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC33(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$355, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L69
	movq	-96(%rbp), %rax
	movl	-8(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-96(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-96(%rbp), %rax
	leaq	40(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, 20(%rdx)
	movq	-96(%rbp), %rax
	addq	$40, %rax
	movl	$1, 24(%rax)
	movq	-96(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movl	$1, -4(%rbp)
.L69:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	-4(%rbp), %eax
	jmp	.L71
.L68:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	leaq	-64(%rbp), %rax
	leaq	16(%rax), %rdi
	leaq	-64(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	pushq	$0
	pushq	$1
	pushq	$1
	pushq	$1
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_drbg_reseed
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$382, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movl	-16(%rbp), %eax
	leaq	-64(%rbp), %rcx
	movl	$32, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write@PLT
	cmpq	$32, %rax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC35(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$385, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L70
	movl	$1, -4(%rbp)
.L70:
	movl	-16(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	exit@PLT
.L71:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE563:
	.size	test_drbg_reseed_in_child, .-test_drbg_reseed_in_child
	.section	.rodata
.LC36:
	.string	"V"
.LC37:
	.string	"child %d"
	.align 8
.LC38:
	.string	"test_drbg_reseed_in_child(primary, public, private, presult)"
	.align 8
.LC39:
	.string	"test_drbg_reseed(1, primary, public, private, &random[0], &random[RANDOM_SIZE], 0, 0, 0, 0)"
	.align 8
.LC40:
	.string	"ERROR: %d duplicate prefixes in public random output"
	.align 8
.LC41:
	.string	"ERROR: %d duplicate prefixes in private random output"
	.align 8
.LC42:
	.string	"ERROR: %d duplicate chunks in random output"
.LC43:
	.string	"private"
.LC44:
	.string	"public"
	.align 8
.LC45:
	.string	"    random: %s, pid: %d (%s, %s)"
	.text
	.type	test_rand_reseed_on_fork, @function
test_rand_reseed_on_fork:
.LFB564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1232, %rsp
	movq	%rdi, -1208(%rbp)
	movq	%rsi, -1216(%rbp)
	movq	%rdx, -1224(%rbp)
	call	getpid@PLT
	movl	%eax, -28(%rbp)
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	call	getenv@PLT
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-1200(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -24(%rbp)
	leaq	-1200(%rbp), %rax
	movl	$800, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$1, -4(%rbp)
	jmp	.L73
.L76:
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movl	-4(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	leaq	28(%rax), %rdi
	movl	-4(%rbp), %eax
	leaq	.LC37(%rip), %rdx
	movl	%eax, %ecx
	movl	$10, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-24(%rbp), %rax
	leaq	28(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$40, %rax
	addq	$28, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-24(%rbp), %rcx
	movq	-1224(%rbp), %rdx
	movq	-1216(%rbp), %rsi
	movq	-1208(%rbp), %rax
	movq	%rax, %rdi
	call	test_drbg_reseed_in_child
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$424, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L74
	movl	$0, %eax
	jmp	.L95
.L74:
	addq	$80, -24(%rbp)
	addl	$1, -4(%rbp)
.L73:
	cmpl	$9, -4(%rbp)
	jbe	.L76
	leaq	-80(%rbp), %rax
	leaq	16(%rax), %rdi
	leaq	-80(%rbp), %rsi
	movq	-1224(%rbp), %rcx
	movq	-1216(%rbp), %rdx
	movq	-1208(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_drbg_reseed
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$434, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L77
	movl	$0, %eax
	jmp	.L95
.L77:
	leaq	-1200(%rbp), %rax
	addq	$28, %rax
	movl	$1701994864, (%rax)
	movl	$7630437, 3(%rax)
	leaq	-1200(%rbp), %rax
	addq	$68, %rax
	movl	$1701994864, (%rax)
	movl	$7630437, 3(%rax)
	movl	-28(%rbp), %eax
	movl	%eax, -1180(%rbp)
	movl	$0, -1176(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -1200(%rbp)
	movq	%rdx, -1192(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -1140(%rbp)
	movl	$1, -1136(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, -1160(%rbp)
	movq	%rdx, -1152(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L78
.L79:
	leaq	-1200(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	addq	$16, -16(%rbp)
	addl	$1, -4(%rbp)
.L78:
	cmpl	$19, -4(%rbp)
	jbe	.L79
	leaq	compare_drbg_fork_result(%rip), %rdx
	leaq	-1200(%rbp), %rax
	movq	%rdx, %rcx
	movl	$40, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	qsort@PLT
	movl	$1, -4(%rbp)
	jmp	.L80
.L82:
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1200, %rax
	movzbl	(%rax), %edx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1200, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L81
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1176, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movl	-48(%rbp,%rdx,4), %edx
	addl	$1, %edx
	cltq
	movl	%edx, -48(%rbp,%rax,4)
.L81:
	addl	$1, -4(%rbp)
.L80:
	cmpl	$19, -4(%rbp)
	jbe	.L82
	movl	-48(%rbp), %eax
	cmpl	$7, %eax
	jle	.L83
	movl	-48(%rbp), %eax
	leaq	.LC40(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, -8(%rbp)
.L83:
	movl	-44(%rbp), %eax
	cmpl	$7, %eax
	jle	.L84
	movl	-44(%rbp), %eax
	leaq	.LC41(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, -8(%rbp)
.L84:
	movl	$0, -48(%rbp)
	leaq	compare_rand_chunk(%rip), %rdx
	leaq	-400(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2, %edx
	movl	$160, %esi
	movq	%rax, %rdi
	call	qsort@PLT
	movl	$2, -4(%rbp)
	leaq	-400(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -16(%rbp)
	jmp	.L85
.L87:
	movq	-16(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	compare_rand_chunk
	testl	%eax, %eax
	jne	.L86
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.L86:
	addl	$2, -4(%rbp)
	addq	$2, -16(%rbp)
.L85:
	cmpl	$319, -4(%rbp)
	jbe	.L87
	movl	-48(%rbp), %eax
	cmpl	$7, %eax
	jle	.L88
	movl	-48(%rbp), %eax
	leaq	.LC42(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, -8(%rbp)
.L88:
	cmpl	$0, -32(%rbp)
	jne	.L89
	cmpl	$0, -8(%rbp)
	jne	.L90
.L89:
	movl	$0, -4(%rbp)
	jmp	.L91
.L94:
	leaq	-1200(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	OPENSSL_buf2hexstr@PLT
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1176, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L92
	leaq	.LC43(%rip), %rdx
	jmp	.L93
.L92:
	leaq	.LC44(%rip), %rdx
.L93:
	leaq	-1200(%rbp), %rsi
	movl	-4(%rbp), %ecx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	$16, %rax
	addq	%rsi, %rax
	leaq	12(%rax), %r9
	movl	-4(%rbp), %ecx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rbp, %rax
	subq	$1180, %rax
	movl	(%rax), %esi
	movq	-40(%rbp), %rax
	leaq	.LC45(%rip), %rdi
	movq	%rdx, %r8
	movq	%r9, %rcx
	movl	%esi, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	test_note@PLT
	leaq	.LC3(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$512, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	addl	$1, -4(%rbp)
.L91:
	cmpl	$19, -4(%rbp)
	jbe	.L94
.L90:
	movl	-8(%rbp), %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE564:
	.size	test_rand_reseed_on_fork, .-test_rand_reseed_on_fork
	.section	.rodata
	.align 8
.LC46:
	.string	"primary = RAND_get0_primary(NULL)"
	.align 8
.LC47:
	.string	"public = RAND_get0_public(NULL)"
	.align 8
.LC48:
	.string	"private = RAND_get0_private(NULL)"
	.align 8
.LC49:
	.string	"test_rand_reseed_on_fork(primary, public, private)"
.LC50:
	.string	"RAND_bytes(random, 1)"
.LC51:
	.string	"RAND_priv_bytes(random, 1)"
	.text
	.type	test_rand_fork_safety, @function
test_rand_fork_safety:
.LFB565:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$1, -4(%rbp)
	movl	$0, %edi
	call	RAND_get0_primary@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$526, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	movl	$0, %edi
	call	RAND_get0_public@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$527, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	movl	$0, %edi
	call	RAND_get0_private@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$528, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L98
.L97:
	movl	$0, %eax
	jmp	.L103
.L98:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_rand_reseed_on_fork
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$532, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L100
	movl	$0, -4(%rbp)
.L100:
	leaq	-33(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC50(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$536, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L101
	leaq	-33(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	RAND_priv_bytes@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$536, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L102
.L101:
	movl	$0, -4(%rbp)
.L102:
	movl	-4(%rbp), %eax
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE565:
	.size	test_rand_fork_safety, .-test_rand_fork_safety
	.section	.rodata
.LC52:
	.string	"CRNGT cannot be disabled"
.LC53:
	.string	"RAND_OpenSSL()"
.LC54:
	.string	"RAND_get_rand_method()"
.LC55:
	.string	"prov_rand(primary)"
.LC56:
	.string	"prov_rand(public)->parent"
.LC57:
	.string	"prov_rand(private)->parent"
.LC58:
	.string	"disable_crngt(primary)"
	.align 8
.LC59:
	.string	"test_drbg_reseed(1, primary, public, private, NULL, NULL, 1, 1, 1, 0)"
	.align 8
.LC60:
	.string	"test_drbg_reseed(1, primary, public, private, NULL, NULL, 0, 0, 0, 0)"
	.align 8
.LC61:
	.string	"test_drbg_reseed(1, primary, public, private, NULL, NULL, 0, 1, 1, 0)"
	.align 8
.LC62:
	.string	"test_drbg_reseed(1, primary, public, private, NULL, NULL, 0, 1, 0, 0)"
	.align 8
.LC63:
	.string	"test_drbg_reseed(1, primary, public, private, NULL, NULL, 0, 0, 1, 0)"
	.align 8
.LC65:
	.string	"test_drbg_reseed(1, primary, public, private, NULL, NULL, 1, 1, 1, before_reseed)"
	.text
	.type	test_rand_reseed, @function
test_rand_reseed:
.LFB566:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$312, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	call	using_fips_rng
	testl	%eax, %eax
	je	.L105
	leaq	.LC52(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$556, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L120
.L105:
	call	RAND_OpenSSL@PLT
	movq	%rax, %rbx
	call	RAND_get_rand_method@PLT
	movq	%rax, %rsi
	leaq	.LC53(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$560, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L107
	movl	$0, %eax
	jmp	.L120
.L107:
	movl	$0, %edi
	call	RAND_get0_primary@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC46(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$565, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	movl	$0, %edi
	call	RAND_get0_public@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$566, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	movl	$0, %edi
	call	RAND_get0_private@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$567, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L109
.L108:
	movl	$0, %eax
	jmp	.L120
.L109:
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC43(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$571, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L110
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC2(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$572, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L110
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC2(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$573, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L110
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	prov_rand
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	prov_rand
	movq	48(%rax), %rsi
	leaq	.LC55(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$574, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L110
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	prov_rand
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	prov_rand
	movq	48(%rax), %rsi
	leaq	.LC55(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$575, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	jne	.L111
.L110:
	movl	$0, %eax
	jmp	.L120
.L111:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	disable_crngt
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC58(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$579, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L112
	movl	$0, %eax
	jmp	.L120
.L112:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_uninstantiate@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_uninstantiate@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_uninstantiate@PLT
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	pushq	$0
	pushq	$1
	pushq	$1
	pushq	$1
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_drbg_reseed
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC59(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$590, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L121
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_drbg_reseed
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC60(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$599, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L122
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inc_reseed_counter
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	pushq	$0
	pushq	$1
	pushq	$1
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_drbg_reseed
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC61(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$610, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L123
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inc_reseed_counter
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	inc_reseed_counter
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	pushq	$0
	pushq	$0
	pushq	$1
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_drbg_reseed
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC62(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$622, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	inc_reseed_counter
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	inc_reseed_counter
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	pushq	$0
	pushq	$1
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_drbg_reseed
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC63(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$634, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L125
	leaq	-320(%rbp), %rax
	movl	$256, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -56(%rbp)
	movq	.LC64(%rip), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %xmm0
	movl	$256, %esi
	movq	%rax, %rdi
	call	RAND_add@PLT
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	pushq	-56(%rbp)
	pushq	$1
	pushq	$1
	pushq	$1
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_drbg_reseed
	addq	$32, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC65(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$653, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L126
	movl	$1, -20(%rbp)
	jmp	.L114
.L121:
	nop
	jmp	.L114
.L122:
	nop
	jmp	.L114
.L123:
	nop
	jmp	.L114
.L124:
	nop
	jmp	.L114
.L125:
	nop
	jmp	.L114
.L126:
	nop
.L114:
	movl	-20(%rbp), %eax
.L120:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE566:
	.size	test_rand_reseed, .-test_rand_reseed
	.data
	.align 4
	.type	multi_thread_rand_bytes_succeeded, @object
	.size	multi_thread_rand_bytes_succeeded, 4
multi_thread_rand_bytes_succeeded:
	.long	1
	.align 4
	.type	multi_thread_rand_priv_bytes_succeeded, @object
	.size	multi_thread_rand_priv_bytes_succeeded, 4
multi_thread_rand_priv_bytes_succeeded:
	.long	1
	.section	.rodata
.LC66:
	.string	"reseed_time_interval"
	.text
	.type	set_reseed_time_interval, @function
set_reseed_time_interval:
.LFB567:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	leaq	-144(%rbp), %rax
	leaq	-92(%rbp), %rdx
	leaq	.LC66(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_set_params@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE567:
	.size	set_reseed_time_interval, .-set_reseed_time_interval
	.section	.rodata
	.align 8
.LC67:
	.string	"set_reseed_time_interval(private, 1)"
	.align 8
.LC68:
	.string	"set_reseed_time_interval(public, 1)"
	.text
	.type	run_multi_thread_test, @function
run_multi_thread_test:
.LFB568:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, %edi
	call	RAND_get0_public@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$686, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L130
	movl	$0, %edi
	call	RAND_get0_private@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$687, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L130
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_reseed_time_interval
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC67(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$688, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L130
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	set_reseed_time_interval
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC68(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$689, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L131
.L130:
	movl	$0, multi_thread_rand_bytes_succeeded(%rip)
	jmp	.L129
.L131:
	leaq	-288(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rand_bytes
	testl	%eax, %eax
	jg	.L133
	movl	$0, multi_thread_rand_bytes_succeeded(%rip)
.L133:
	leaq	-288(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	rand_priv_bytes
	testl	%eax, %eax
	jg	.L134
	movl	$0, multi_thread_rand_priv_bytes_succeeded(%rip)
.L134:
	movl	$0, %edi
	call	time@PLT
	subq	-8(%rbp), %rax
	cmpq	$4, %rax
	jle	.L131
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE568:
	.size	run_multi_thread_test, .-run_multi_thread_test
	.type	thread_run, @function
thread_run:
.LFB569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	run_multi_thread_test
	call	OPENSSL_thread_stop@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE569:
	.size	thread_run, .-thread_run
	.type	run_thread, @function
run_thread:
.LFB570:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	thread_run(%rip), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %ecx
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
.LFE570:
	.size	run_thread, .-run_thread
	.type	wait_for_thread, @function
wait_for_thread:
.LFB571:
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
.LFE571:
	.size	wait_for_thread, .-wait_for_thread
	.section	.rodata
	.align 8
.LC69:
	.string	"multi_thread_rand_bytes_succeeded"
	.align 8
.LC70:
	.string	"multi_thread_rand_priv_bytes_succeeded"
	.text
	.type	test_multi_thread, @function
test_multi_thread:
.LFB572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	jmp	.L142
.L143:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	run_thread
	addl	$1, -4(%rbp)
.L142:
	cmpl	$2, -4(%rbp)
	jle	.L143
	call	run_multi_thread_test
	movl	$0, -4(%rbp)
	jmp	.L144
.L145:
	movl	-4(%rbp), %eax
	cltq
	movq	-32(%rbp,%rax,8), %rax
	movq	%rax, %rdi
	call	wait_for_thread
	addl	$1, -4(%rbp)
.L144:
	cmpl	$2, -4(%rbp)
	jle	.L145
	movl	multi_thread_rand_bytes_succeeded(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC69(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$773, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L146
	movl	$0, %eax
	jmp	.L149
.L146:
	movl	multi_thread_rand_priv_bytes_succeeded(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$775, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L148
	movl	$0, %eax
	jmp	.L149
.L148:
	movl	$1, %eax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE572:
	.size	test_multi_thread, .-test_multi_thread
	.section	.rodata
.LC71:
	.string	"AES-256-CTR"
.LC72:
	.string	"cipher"
.LC73:
	.string	"CTR-DRBG"
	.align 8
.LC74:
	.string	"rand = EVP_RAND_fetch(NULL, \"CTR-DRBG\", NULL)"
	.align 8
.LC75:
	.string	"drbg = EVP_RAND_CTX_new(rand, parent)"
	.align 8
.LC76:
	.string	"EVP_RAND_CTX_set_params(drbg, params)"
	.text
	.type	new_drbg, @function
new_drbg:
.LFB573:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	leaq	-160(%rbp), %rax
	leaq	.LC71(%rip), %rdx
	leaq	.LC72(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_string@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC73(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	EVP_RAND_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC74(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$792, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L151
	movq	-104(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_new@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC75(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$793, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L151
	leaq	-96(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_RAND_CTX_set_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC76(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$794, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L152
.L151:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movq	$0, -8(%rbp)
.L152:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_free@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE573:
	.size	new_drbg, .-new_drbg
	.section	.rodata
.LC77:
	.string	"x = new_drbg(NULL)"
.LC78:
	.string	"disable_crngt(x)"
	.align 8
.LC79:
	.string	"EVP_RAND_instantiate(x, 0, 0, NULL, 0, NULL)"
.LC80:
	.string	"y = new_drbg(x)"
	.align 8
.LC81:
	.string	"EVP_RAND_instantiate(y, 0, 0, NULL, 0, NULL)"
.LC82:
	.string	"z = new_drbg(y)"
	.align 8
.LC83:
	.string	"EVP_RAND_instantiate(z, 0, 0, NULL, 0, NULL)"
	.align 8
.LC84:
	.string	"EVP_RAND_reseed(z, 0, NULL, 0, NULL, 0)"
.LC85:
	.string	"xreseed"
.LC86:
	.string	"reseed_counter(x)"
.LC87:
	.string	"yreseed"
.LC88:
	.string	"reseed_counter(y)"
.LC89:
	.string	"zreseed"
.LC90:
	.string	"reseed_counter(z)"
	.align 8
.LC91:
	.string	"EVP_RAND_reseed(z, 1, NULL, 0, NULL, 0)"
	.align 8
.LC92:
	.string	"EVP_RAND_generate(z, buf1, sizeof(buf1), 0, 0, NULL, 0)"
	.align 8
.LC93:
	.string	"EVP_RAND_generate(z, buf2, sizeof(buf2), 0, 1, NULL, 0)"
.LC94:
	.string	"buf2"
.LC95:
	.string	"buf1"
	.text
	.type	test_rand_prediction_resistance, @function
test_rand_prediction_resistance:
.LFB574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	call	using_fips_rng
	testl	%eax, %eax
	je	.L155
	leaq	.LC52(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	$809, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	jmp	.L170
.L155:
	movl	$0, %edi
	call	new_drbg
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC77(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$812, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L171
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	disable_crngt
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC78(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$813, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L171
	movq	-32(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_instantiate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC79(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$814, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L171
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	new_drbg
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC80(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$815, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L171
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_instantiate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC81(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$816, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L171
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	new_drbg
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC82(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movq	%rax, %rcx
	movl	$817, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L171
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_instantiate@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC83(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$818, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L171
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	inc_reseed_counter
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_reseed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$829, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L172
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-36(%rbp), %esi
	leaq	.LC85(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$830, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L172
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-40(%rbp), %esi
	leaq	.LC87(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$831, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L172
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-44(%rbp), %esi
	leaq	.LC89(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$832, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L172
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_RAND_reseed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC91(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$840, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L173
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-36(%rbp), %esi
	leaq	.LC85(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$841, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L173
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-40(%rbp), %esi
	leaq	.LC87(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$842, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L173
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-44(%rbp), %esi
	leaq	.LC89(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$843, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L173
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	inc_reseed_counter
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -44(%rbp)
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$51, %edx
	movq	%rax, %rdi
	call	EVP_RAND_generate@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC92(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$852, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L174
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-36(%rbp), %esi
	leaq	.LC85(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$853, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L174
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-40(%rbp), %esi
	leaq	.LC87(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$854, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L174
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-44(%rbp), %esi
	leaq	.LC89(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$855, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L174
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -44(%rbp)
	leaq	-160(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$51, %edx
	movq	%rax, %rdi
	call	EVP_RAND_generate@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC93(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$863, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L175
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-36(%rbp), %esi
	leaq	.LC85(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$864, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L175
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-40(%rbp), %esi
	leaq	.LC87(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$865, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L175
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-44(%rbp), %esi
	leaq	.LC89(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$866, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L175
	leaq	-96(%rbp), %rdi
	leaq	.LC94(%rip), %rcx
	leaq	.LC95(%rip), %rdx
	leaq	.LC3(%rip), %rax
	pushq	$51
	leaq	-160(%rbp), %rsi
	pushq	%rsi
	movl	$51, %r9d
	movq	%rdi, %r8
	movl	$867, %esi
	movq	%rax, %rdi
	call	test_mem_ne@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L175
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	inc_reseed_counter
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_RAND_reseed@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC84(%rip), %rdx
	leaq	.LC3(%rip), %rdi
	movl	%eax, %ecx
	movl	$875, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L176
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-36(%rbp), %esi
	leaq	.LC85(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$876, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L176
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-40(%rbp), %esi
	leaq	.LC87(%rip), %rcx
	leaq	.LC88(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$877, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L176
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	reseed_counter
	movl	%eax, %edi
	movl	-44(%rbp), %esi
	leaq	.LC89(%rip), %rcx
	leaq	.LC90(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$878, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L176
	movl	$1, -20(%rbp)
	jmp	.L159
.L171:
	nop
	jmp	.L159
.L172:
	nop
	jmp	.L159
.L173:
	nop
	jmp	.L159
.L174:
	nop
	jmp	.L159
.L175:
	nop
	jmp	.L159
.L176:
	nop
.L159:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_RAND_CTX_free@PLT
	movl	-20(%rbp), %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE574:
	.size	test_rand_prediction_resistance, .-test_rand_prediction_resistance
	.section	.rodata
.LC96:
	.string	"test_rand_reseed"
.LC97:
	.string	"test_rand_fork_safety"
	.align 8
.LC98:
	.string	"test_rand_prediction_resistance"
.LC99:
	.string	"test_multi_thread"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB575:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_rand_reseed(%rip), %rdx
	leaq	.LC96(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_rand_fork_safety(%rip), %rsi
	leaq	.LC97(%rip), %rax
	movl	$1, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_rand_prediction_resistance(%rip), %rdx
	leaq	.LC98(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_multi_thread(%rip), %rdx
	leaq	.LC99(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE575:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
.LC64:
	.long	0
	.long	1081081856
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
