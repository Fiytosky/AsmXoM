	.file	"provider_test.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$2147483648, %eax
	testq	%rax, %rax
	je	.L2
	movq	-8(%rbp), %rax
	andl	$2147483647, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	andl	$8388607, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.local	buf
	.comm	buf,256,32
	.section	.rodata
.LC0:
	.string	"greeting"
	.section	.data.rel.local,"aw"
	.align 32
	.type	greeting_request, @object
	.size	greeting_request, 80
greeting_request:
	.quad	.LC0
	.long	4
	.zero	4
	.quad	buf
	.quad	256
	.zero	8
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.local	digestsuccess
	.comm	digestsuccess,4,4
	.section	.rodata
.LC1:
	.string	"digest-check"
	.section	.data.rel.local
	.align 32
	.type	digest_check, @object
	.size	digest_check, 80
digest_check:
	.quad	.LC1
	.long	2
	.zero	4
	.quad	digestsuccess
	.quad	4
	.zero	8
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.local	stopsuccess
	.comm	stopsuccess,4,4
	.section	.rodata
.LC2:
	.string	"stop-property-mirror"
	.section	.data.rel.local
	.align 32
	.type	stop_property_mirror, @object
	.size	stop_property_mirror, 80
stop_property_mirror:
	.quad	.LC2
	.long	2
	.zero	4
	.quad	stopsuccess
	.quad	4
	.zero	8
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.section	.rodata
.LC3:
	.string	"3.3.5"
	.align 8
.LC4:
	.string	"Hello OpenSSL %.20s, greetings from %s!"
.LC5:
	.string	"fips=yes"
.LC6:
	.string	"base"
	.align 8
.LC7:
	.string	"base = OSSL_PROVIDER_load(*libctx, \"base\")"
.LC8:
	.string	"../test/provider_test.c"
	.align 8
.LC9:
	.string	"prov = OSSL_PROVIDER_load(*libctx, name)"
.LC10:
	.string	""
	.align 8
.LC11:
	.string	"OSSL_PROVIDER_get_params(prov, digest_check)"
.LC12:
	.string	"digestsuccess"
	.align 8
.LC13:
	.string	"OSSL_PROVIDER_get_params(prov, stop_property_mirror)"
.LC14:
	.string	"stopsuccess"
	.align 8
.LC15:
	.string	"OSSL_PROVIDER_get_params(prov, greeting_request)"
	.align 8
.LC16:
	.string	"greeting = greeting_request[0].data"
.LC17:
	.string	"0"
.LC18:
	.string	"greeting_request[0].data_size"
.LC19:
	.string	"expected_greeting"
.LC20:
	.string	"err"
.LC21:
	.string	"1"
.LC22:
	.string	"ERR_GET_REASON(err)"
.LC23:
	.string	"legacy"
.LC24:
	.string	"default"
.LC25:
	.string	"deflt"
	.align 8
.LC26:
	.string	"OSSL_PROVIDER_available(*libctx, \"default\")"
.LC27:
	.string	"OSSL_PROVIDER_unload(base)"
.LC28:
	.string	"OSSL_PROVIDER_unload(prov)"
	.text
	.type	test_provider, @function
test_provider:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -344(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-336(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	-320(%rbp), %rax
	movq	%rsi, %r8
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$63, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L29
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	-336(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$65, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L30
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	cmpl	$0, -44(%rbp)
	je	.L8
	leaq	digest_check(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$74, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L31
	movl	digestsuccess(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$75, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L31
	leaq	stop_property_mirror(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC13(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$82, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movl	stopsuccess(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC14(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$83, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L32
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	leaq	digest_check(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$86, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L33
	movl	digestsuccess(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$87, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L33
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
.L8:
	leaq	greeting_request(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$91, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L34
	movq	16+greeting_request(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$92, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L34
	movq	24+greeting_request(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L34
	leaq	-320(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC19(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L34
	call	ERR_peek_last_error@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$99, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L35
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$100, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L35
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	$0, -344(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L19
	leaq	digest_check(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	movl	digestsuccess(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$109, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L36
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -344(%rbp)
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC25(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$119, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$120, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	$0, -24(%rbp)
	movq	-344(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$124, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC26(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$125, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L38
	leaq	digest_check(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$126, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movl	digestsuccess(%rip), %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC12(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$127, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	$0, -344(%rbp)
.L19:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$133, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$136, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L40
	movq	$0, -8(%rbp)
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	-328(%rbp), %rax
	movq	$0, (%rax)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	movl	$1, -12(%rbp)
	jmp	.L6
.L29:
	nop
	jmp	.L6
.L30:
	nop
	jmp	.L6
.L31:
	nop
	jmp	.L6
.L32:
	nop
	jmp	.L6
.L33:
	nop
	jmp	.L6
.L34:
	nop
	jmp	.L6
.L35:
	nop
	jmp	.L6
.L36:
	nop
	jmp	.L6
.L37:
	nop
	jmp	.L6
.L38:
	nop
	jmp	.L6
.L39:
	nop
	jmp	.L6
.L40:
	nop
.L6:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	$0, -344(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	-328(%rbp), %rax
	movq	$0, (%rax)
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_provider, .-test_provider
	.section	.rodata
.LC29:
	.string	"bld = OSSL_PARAM_BLD_new()"
	.align 8
.LC30:
	.string	"OSSL_PARAM_BLD_push_utf8_string(bld, \"greeting\", custom_buf, strlen(custom_buf))"
	.align 8
.LC31:
	.string	"params = OSSL_PARAM_BLD_to_param(bld)"
	.align 8
.LC32:
	.string	"prov = OSSL_PROVIDER_load_ex(*libctx, name, params)"
.LC33:
	.string	"custom_buf"
	.text
	.type	test_provider_ex, @function
test_provider_ex:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -12(%rbp)
	movabsq	$7431059710623839555, %rax
	movabsq	$29113321804621170, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC29(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$172, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L52
	leaq	-64(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movq	-40(%rbp), %rax
	movl	$15, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$173, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L52
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$175, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L52
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load_ex@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$179, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L53
	leaq	greeting_request(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$182, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L54
	movq	16+greeting_request(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$183, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L54
	movq	24+greeting_request(%rip), %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$184, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L54
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC33(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$185, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L54
	call	ERR_peek_last_error@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$190, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L55
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$191, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L55
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$194, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L56
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
	movl	$1, -12(%rbp)
	jmp	.L44
.L52:
	nop
	jmp	.L44
.L53:
	nop
	jmp	.L44
.L54:
	nop
	jmp	.L44
.L55:
	nop
	jmp	.L44
.L56:
	nop
.L44:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_provider_ex, .-test_provider_ex
	.section	.rodata
.LC34:
	.string	"p_test_builtin"
.LC35:
	.string	"libctx"
	.align 8
.LC36:
	.string	"OSSL_PROVIDER_add_builtin(libctx, name, PROVIDER_INIT_FUNCTION_NAME)"
	.text
	.type	test_builtin_provider, @function
test_builtin_provider:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC34(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$225, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L58
	movq	-24(%rbp), %rax
	movq	p_test_init@GOTPCREL(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_add_builtin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$226, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L58
	movq	-8(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_provider
	testl	%eax, %eax
	je	.L58
	movl	$1, %eax
	jmp	.L59
.L58:
	movl	$0, %eax
.L59:
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_builtin_provider, .-test_builtin_provider
	.section	.rodata
.LC37:
	.string	"p_test"
	.text
	.type	test_builtin_provider_with_child, @function
test_builtin_provider_with_child:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC37(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$243, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L62
	movl	$0, %eax
	jmp	.L66
.L62:
	movq	-24(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L64
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	$1, %eax
	jmp	.L66
.L64:
	movq	-24(%rbp), %rax
	movq	p_test_init@GOTPCREL(%rip), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_add_builtin@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movl	%eax, %ecx
	movl	$256, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L65
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_provider
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_builtin_provider_with_child, .-test_builtin_provider_with_child
	.type	test_loaded_provider, @function
test_loaded_provider:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC37(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$275, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L68
	movl	$0, %eax
	jmp	.L73
.L68:
	movq	-8(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test_provider
	movl	%eax, -12(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC8(%rip), %rdi
	movq	%rax, %rcx
	movl	$282, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L70
	movl	$0, %eax
	jmp	.L73
.L70:
	cmpl	$0, -12(%rbp)
	je	.L71
	movq	-8(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_provider_ex
	testl	%eax, %eax
	je	.L71
	movl	$1, %eax
	jmp	.L72
.L71:
	movl	$0, %eax
.L72:
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_loaded_provider, .-test_loaded_provider
	.globl	test_get_options
	.type	test_get_options, @function
test_get_options:
.LFB473:
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
.LFE473:
	.size	test_get_options, .-test_get_options
	.section	.rodata
.LC38:
	.string	"test_builtin_provider"
	.align 8
.LC39:
	.string	"test_builtin_provider_with_child"
.LC40:
	.string	"test_loaded_provider"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L77
.L81:
	cmpl	$1, -8(%rbp)
	je	.L78
	cmpl	$0, -8(%rbp)
	jle	.L79
	movl	-8(%rbp), %eax
	subl	$500, %eax
	cmpl	$5, %eax
	ja	.L79
	jmp	.L77
.L78:
	movl	$1, -4(%rbp)
	jmp	.L77
.L79:
	movl	$0, %eax
	jmp	.L80
.L77:
	call	opt_next@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L81
	cmpl	$0, -4(%rbp)
	jne	.L82
	leaq	test_builtin_provider(%rip), %rdx
	leaq	.LC38(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_builtin_provider_with_child(%rip), %rdx
	leaq	.LC39(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	jmp	.L83
.L82:
	leaq	test_loaded_provider(%rip), %rdx
	leaq	.LC40(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L83:
	movl	$1, %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC41:
	.string	"Usage: %s [options]\n"
.LC42:
	.string	"Valid options are:\n"
.LC43:
	.string	"help"
.LC44:
	.string	"Display this summary"
.LC45:
	.string	"list"
	.align 8
.LC46:
	.string	"Display the list of tests available"
.LC47:
	.string	"test"
	.align 8
.LC48:
	.string	"Run a single test by id or name"
.LC49:
	.string	"iter"
	.align 8
.LC50:
	.string	"Run a single iteration of a test"
.LC51:
	.string	"indent"
	.align 8
.LC52:
	.string	"Number of tabs added to output"
.LC53:
	.string	"seed"
	.align 8
.LC54:
	.string	"Seed value to randomize tests with"
.LC55:
	.string	"loaded"
	.align 8
.LC56:
	.string	"Run test with a loaded provider"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 240
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC41
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC42
	.quad	.LC43
	.long	500
	.long	45
	.quad	.LC44
	.quad	.LC45
	.long	501
	.long	45
	.quad	.LC46
	.quad	.LC47
	.long	502
	.long	115
	.quad	.LC48
	.quad	.LC49
	.long	503
	.long	110
	.quad	.LC50
	.quad	.LC51
	.long	504
	.long	112
	.quad	.LC52
	.quad	.LC53
	.long	505
	.long	110
	.quad	.LC54
	.quad	.LC55
	.long	1
	.long	45
	.quad	.LC56
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
