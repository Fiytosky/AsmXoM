	.file	"provider_status_test.c"
	.text
	.local	libctx
	.comm	libctx,8,8
	.local	provider_name
	.comm	provider_name,8,8
	.local	self_test_args
	.comm	self_test_args,4,4
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_options.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC0:
	.string	"\n%s\n"
.LC1:
	.string	"st-phase"
.LC2:
	.string	"st-desc"
.LC3:
	.string	"st-type"
.LC4:
	.string	"Start"
.LC5:
	.string	"%s : (%s) : "
.LC6:
	.string	"Pass"
.LC7:
	.string	"Fail"
.LC8:
	.string	"%s\n"
.LC9:
	.string	"Corrupt"
	.text
	.type	self_test_events, @function
self_test_events:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L4
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L4:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	leaq	.LC1(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L17
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L17
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC2(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L18
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L18
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L19
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L19
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC4(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L12
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L13
.L12:
	leaq	.LC6(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L14
	leaq	.LC7(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L13
.L14:
	movq	bio_out@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L13:
	cmpl	$0, -76(%rbp)
	je	.L15
	leaq	.LC9(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L20
.L15:
	movl	$1, -4(%rbp)
	jmp	.L7
.L17:
	nop
	jmp	.L7
.L18:
	nop
	jmp	.L7
.L19:
	nop
	jmp	.L7
.L20:
	nop
.L7:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	self_test_events, .-self_test_events
	.section	.rodata
.LC10:
	.string	"On Demand Failure"
	.text
	.type	self_test_on_demand_fail, @function
self_test_on_demand_fail:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC10(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	self_test_events
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	self_test_on_demand_fail, .-self_test_on_demand_fail
	.section	.rodata
.LC11:
	.string	"On Demand"
	.text
	.type	self_test_on_demand, @function
self_test_on_demand:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC11(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	self_test_events
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	self_test_on_demand, .-self_test_on_demand
	.section	.rodata
.LC12:
	.string	"On Loading"
	.text
	.type	self_test_on_load, @function
self_test_on_load:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC12(%rip), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	self_test_events
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	self_test_on_load, .-self_test_on_load
	.section	.rodata
	.align 8
.LC13:
	.string	"gettable = OSSL_PROVIDER_gettable_params(prov)"
	.align 8
.LC14:
	.string	"../test/provider_status_test.c"
.LC15:
	.string	"name"
	.align 8
.LC16:
	.string	"p = OSSL_PARAM_locate_const(gettable, OSSL_PROV_PARAM_NAME)"
.LC17:
	.string	"version"
	.align 8
.LC18:
	.string	"p = OSSL_PARAM_locate_const(gettable, OSSL_PROV_PARAM_VERSION)"
.LC19:
	.string	"status"
	.align 8
.LC20:
	.string	"p = OSSL_PARAM_locate_const(gettable, OSSL_PROV_PARAM_STATUS)"
.LC21:
	.string	"buildinfo"
	.align 8
.LC22:
	.string	"p = OSSL_PARAM_locate_const(gettable, OSSL_PROV_PARAM_BUILDINFO)"
	.align 8
.LC23:
	.string	"OSSL_PROVIDER_get_params(prov, params)"
	.align 8
.LC24:
	.string	"OSSL_PARAM_modified(params + 0)"
	.align 8
.LC25:
	.string	"OSSL_PARAM_modified(params + 1)"
	.align 8
.LC26:
	.string	"OSSL_PARAM_modified(params + 2)"
	.align 8
.LC27:
	.string	"OSSL_PARAM_modified(params + 3)"
.LC28:
	.string	"status == 1"
	.text
	.type	get_provider_params, @function
get_provider_params:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -264(%rbp)
	movl	$0, -4(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_gettable_params@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rcx
	movl	$115, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	leaq	.LC15(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rcx
	movl	$116, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	leaq	.LC17(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rcx
	movl	$117, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	leaq	.LC19(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC20(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rcx
	movl	$118, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	leaq	.LC21(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rcx
	movl	$119, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-320(%rbp), %rax
	leaq	-232(%rbp), %rdx
	leaq	.LC15(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rdx, -216(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -208(%rbp)
	movq	%rdx, -200(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-240(%rbp), %rdx
	leaq	.LC17(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -152(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-252(%rbp), %rdx
	leaq	.LC19(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_int@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -112(%rbp)
	leaq	-320(%rbp), %rax
	leaq	-248(%rbp), %rdx
	leaq	.LC21(%rip), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -72(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-320(%rbp), %rax
	movq	-312(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_set_all_unmodified@PLT
	leaq	-224(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movl	%eax, %ecx
	movl	$130, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movl	%eax, %ecx
	movl	$132, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	-224(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movl	%eax, %ecx
	movl	$133, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	-224(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movl	%eax, %ecx
	movl	$134, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	-224(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movl	%eax, %ecx
	movl	$135, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movl	-252(%rbp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movl	%eax, %ecx
	movl	$136, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movl	$1, -4(%rbp)
	jmp	.L30
.L35:
	nop
	jmp	.L30
.L36:
	nop
	jmp	.L30
.L37:
	nop
.L30:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	get_provider_params, .-get_provider_params
	.section	.rodata
	.align 8
.LC29:
	.string	"prov = OSSL_PROVIDER_load(libctx, provider_name)"
.LC30:
	.string	"SHA256"
	.align 8
.LC31:
	.string	"fetch = EVP_MD_fetch(libctx, \"SHA256\", NULL)"
.LC32:
	.string	"RSA"
	.align 8
.LC33:
	.string	"(pctx = EVP_PKEY_CTX_new_from_name(libctx, \"RSA\", NULL))"
.LC34:
	.string	"0"
.LC35:
	.string	"EVP_PKEY_keygen_init(pctx)"
	.align 8
.LC36:
	.string	"EVP_PKEY_CTX_set_rsa_keygen_bits(pctx, 2048)"
.LC37:
	.string	"EVP_PKEY_keygen(pctx, &pkey)"
.LC38:
	.string	"OSSL_PROVIDER_self_test(prov)"
	.text
	.type	test_provider_status, @function
test_provider_status:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	$0, -4(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -136(%rbp)
	movq	provider_name(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rcx
	movl	$154, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L53
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_params
	testl	%eax, %eax
	je	.L54
	leaq	-192(%rbp), %rax
	leaq	-36(%rbp), %rdx
	leaq	.LC19(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_uint@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-128(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movl	%eax, %ecx
	movl	$162, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movl	-36(%rbp), %eax
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movl	%eax, %ecx
	movl	$163, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L55
	movq	libctx(%rip), %rax
	leaq	.LC30(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rcx
	movl	$165, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L56
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	$0, -16(%rbp)
	movq	libctx(%rip), %rax
	leaq	.LC32(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_new_from_name@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC33(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rcx
	movl	$170, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L57
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_keygen_init@PLT
	movl	%eax, %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$171, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L57
	movq	-32(%rbp), %rax
	movl	$2048, %esi
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_set_rsa_keygen_bits@PLT
	movl	%eax, %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$172, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L57
	leaq	-136(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_PKEY_keygen@PLT
	movl	%eax, %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$173, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L57
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_PKEY_CTX_free@PLT
	movq	$0, -136(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, self_test_args(%rip)
	movq	libctx(%rip), %rax
	leaq	self_test_args(%rip), %rdx
	leaq	self_test_on_demand(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_set_callback@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_self_test@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movl	%eax, %ecx
	movl	$183, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	movl	$0, self_test_args(%rip)
	movq	libctx(%rip), %rax
	leaq	self_test_args(%rip), %rdx
	leaq	self_test_on_demand_fail(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_set_callback@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_self_test@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC38(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movl	%eax, %ecx
	movl	$189, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L59
	leaq	-128(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movl	%eax, %ecx
	movl	$191, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movl	-36(%rbp), %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$192, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L60
	movq	libctx(%rip), %rax
	leaq	.LC30(%rip), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MD_fetch@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rcx
	movl	$194, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L61
	movl	$1, -4(%rbp)
	jmp	.L40
.L53:
	nop
	jmp	.L40
.L54:
	nop
	jmp	.L40
.L55:
	nop
	jmp	.L40
.L56:
	nop
	jmp	.L40
.L57:
	nop
	jmp	.L40
.L58:
	nop
	jmp	.L40
.L59:
	nop
	jmp	.L40
.L60:
	nop
	jmp	.L40
.L61:
	nop
.L40:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_provider_status, .-test_provider_status
	.type	test_provider_gettable_params, @function
test_provider_gettable_params:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	provider_name(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rcx
	movl	$209, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L63
	movl	$0, %eax
	jmp	.L64
.L63:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	get_provider_params
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	-12(%rbp), %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_provider_gettable_params, .-test_provider_gettable_params
	.section	.rodata
.LC39:
	.string	"fips"
.LC40:
	.string	"Failed to load config\n"
.LC41:
	.string	"test_provider_status"
.LC42:
	.string	"test_provider_gettable_params"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	jmp	.L66
.L71:
	cmpl	$505, -12(%rbp)
	jg	.L67
	cmpl	$500, -12(%rbp)
	jge	.L66
	cmpl	$1, -12(%rbp)
	je	.L69
	cmpl	$2, -12(%rbp)
	jne	.L67
	call	opt_arg@PLT
	movq	%rax, -8(%rbp)
	jmp	.L66
.L69:
	call	opt_arg@PLT
	movq	%rax, provider_name(%rip)
	jmp	.L66
.L67:
	movl	$0, %eax
	jmp	.L70
.L66:
	call	opt_next@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L71
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, libctx(%rip)
	movq	libctx(%rip), %rax
	testq	%rax, %rax
	jne	.L72
	movl	$0, %eax
	jmp	.L70
.L72:
	movq	provider_name(%rip), %rax
	leaq	.LC39(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L73
	movl	$0, self_test_args(%rip)
	movq	libctx(%rip), %rax
	leaq	self_test_args(%rip), %rdx
	leaq	self_test_on_load(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_SELF_TEST_set_callback@PLT
	movq	libctx(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	testl	%eax, %eax
	jne	.L74
	leaq	.LC40(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L70
.L74:
	leaq	test_provider_status(%rip), %rdx
	leaq	.LC41(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	jmp	.L75
.L73:
	leaq	test_provider_gettable_params(%rip), %rdx
	leaq	.LC42(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L75:
	movl	$1, %eax
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	libctx(%rip), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
.LC43:
	.string	"Usage: %s [options]\n"
.LC44:
	.string	"Valid options are:\n"
.LC45:
	.string	"help"
.LC46:
	.string	"Display this summary"
.LC47:
	.string	"list"
	.align 8
.LC48:
	.string	"Display the list of tests available"
.LC49:
	.string	"test"
	.align 8
.LC50:
	.string	"Run a single test by id or name"
.LC51:
	.string	"iter"
	.align 8
.LC52:
	.string	"Run a single iteration of a test"
.LC53:
	.string	"indent"
	.align 8
.LC54:
	.string	"Number of tabs added to output"
.LC55:
	.string	"seed"
	.align 8
.LC56:
	.string	"Seed value to randomize tests with"
.LC57:
	.string	"provider_name"
	.align 8
.LC58:
	.string	"The name of the provider to load"
.LC59:
	.string	"config"
	.align 8
.LC60:
	.string	"The configuration file to use for the libctx"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 264
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC43
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC44
	.quad	.LC45
	.long	500
	.long	45
	.quad	.LC46
	.quad	.LC47
	.long	501
	.long	45
	.quad	.LC48
	.quad	.LC49
	.long	502
	.long	115
	.quad	.LC50
	.quad	.LC51
	.long	503
	.long	110
	.quad	.LC52
	.quad	.LC53
	.long	504
	.long	112
	.quad	.LC54
	.quad	.LC55
	.long	505
	.long	110
	.quad	.LC56
	.quad	.LC57
	.long	1
	.long	115
	.quad	.LC58
	.quad	.LC59
	.long	2
	.long	60
	.quad	.LC60
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
