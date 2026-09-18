	.file	"fipsinstall.c"
	.text
	.type	ossl_check_OPENSSL_STRING_type, @function
ossl_check_OPENSSL_STRING_type:
.LFB0:
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
.LFE0:
	.size	ossl_check_OPENSSL_STRING_type, .-ossl_check_OPENSSL_STRING_type
	.type	ossl_check_OPENSSL_STRING_sk_type, @function
ossl_check_OPENSSL_STRING_sk_type:
.LFB2:
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
.LFE2:
	.size	ossl_check_OPENSSL_STRING_sk_type, .-ossl_check_OPENSSL_STRING_sk_type
	.type	lh_FUNCTION_hfn_thunk, @function
lh_FUNCTION_hfn_thunk:
.LFB631:
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
.LFE631:
	.size	lh_FUNCTION_hfn_thunk, .-lh_FUNCTION_hfn_thunk
	.type	lh_FUNCTION_cfn_thunk, @function
lh_FUNCTION_cfn_thunk:
.LFB632:
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
.LFE632:
	.size	lh_FUNCTION_cfn_thunk, .-lh_FUNCTION_cfn_thunk
	.local	self_test_corrupt_desc
	.comm	self_test_corrupt_desc,8,8
	.local	self_test_corrupt_type
	.comm	self_test_corrupt_type,8,8
	.data
	.align 4
	.type	self_test_log, @object
	.size	self_test_log, 4
self_test_log:
	.long	1
	.local	quiet
	.comm	quiet,4,4
	.globl	fipsinstall_options
	.section	.rodata
.LC0:
	.string	"General options:\n"
.LC1:
	.string	"help"
.LC2:
	.string	"Display this summary"
.LC3:
	.string	"pedantic"
	.align 8
.LC4:
	.string	"Set options for strict FIPS compliance"
.LC5:
	.string	"verify"
	.align 8
.LC6:
	.string	"Verify a config file instead of generating one"
.LC7:
	.string	"module"
	.align 8
.LC8:
	.string	"File name of the provider module"
.LC9:
	.string	"provider_name"
.LC10:
	.string	"FIPS provider name"
.LC11:
	.string	"section_name"
	.align 8
.LC12:
	.string	"FIPS Provider config section name (optional)"
.LC13:
	.string	"no_conditional_errors"
	.align 8
.LC14:
	.string	"Disable the ability of the fips module to enter an error state if any conditional self tests fail"
.LC15:
	.string	"no_security_checks"
	.align 8
.LC16:
	.string	"Disable the run-time FIPS security checks in the module"
.LC17:
	.string	"self_test_onload"
	.align 8
.LC18:
	.string	"Forces self tests to always run on module load"
.LC19:
	.string	"self_test_oninstall"
	.align 8
.LC20:
	.string	"Forces self tests to run once on module installation"
.LC21:
	.string	"ems_check"
	.align 8
.LC22:
	.string	"Enable the run-time FIPS check for EMS during TLS1_PRF"
.LC23:
	.string	"no_drbg_truncated_digests"
	.align 8
.LC24:
	.string	"Disallow truncated digests with Hash and HMAC DRBGs"
.LC25:
	.string	"Input options:\n"
.LC26:
	.string	"in"
	.align 8
.LC27:
	.string	"Input config file, used when verifying"
.LC28:
	.string	"Output options:\n"
.LC29:
	.string	"out"
	.align 8
.LC30:
	.string	"Output config file, used when generating"
.LC31:
	.string	"mac_name"
.LC32:
	.string	"MAC name"
.LC33:
	.string	"macopt"
	.align 8
.LC34:
	.string	"MAC algorithm parameters in n:v form."
	.align 8
.LC35:
	.string	"See 'PARAMETER NAMES' in the EVP_MAC_ docs"
.LC36:
	.string	"noout"
	.align 8
.LC37:
	.string	"Disable logging of self test events"
.LC38:
	.string	"corrupt_desc"
	.align 8
.LC39:
	.string	"Corrupt a self test by description"
.LC40:
	.string	"corrupt_type"
.LC41:
	.string	"Corrupt a self test by type"
.LC42:
	.string	"config"
.LC43:
	.string	"The parent config to verify"
.LC44:
	.string	"quiet"
.LC45:
	.string	"No messages, just exit status"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	fipsinstall_options, @object
	.size	fipsinstall_options, 624
fipsinstall_options:
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC0
	.quad	.LC1
	.long	1
	.long	45
	.quad	.LC2
	.quad	.LC3
	.long	5
	.long	45
	.quad	.LC4
	.quad	.LC5
	.long	10
	.long	45
	.quad	.LC6
	.quad	.LC7
	.long	4
	.long	60
	.quad	.LC8
	.quad	.LC9
	.long	6
	.long	115
	.quad	.LC10
	.quad	.LC11
	.long	7
	.long	115
	.quad	.LC12
	.quad	.LC13
	.long	16
	.long	45
	.quad	.LC14
	.quad	.LC15
	.long	17
	.long	45
	.quad	.LC16
	.quad	.LC17
	.long	20
	.long	45
	.quad	.LC18
	.quad	.LC19
	.long	21
	.long	45
	.quad	.LC20
	.quad	.LC21
	.long	18
	.long	45
	.quad	.LC22
	.quad	.LC23
	.long	19
	.long	45
	.quad	.LC24
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC25
	.quad	.LC26
	.long	2
	.long	60
	.quad	.LC27
	.quad	OPT_SECTION_STR
	.long	1
	.long	45
	.quad	.LC28
	.quad	.LC29
	.long	3
	.long	62
	.quad	.LC30
	.quad	.LC31
	.long	8
	.long	115
	.quad	.LC32
	.quad	.LC33
	.long	9
	.long	115
	.quad	.LC34
	.quad	OPT_MORE_STR
	.long	0
	.long	0
	.quad	.LC35
	.quad	.LC36
	.long	11
	.long	45
	.quad	.LC37
	.quad	.LC38
	.long	12
	.long	115
	.quad	.LC39
	.quad	.LC40
	.long	13
	.long	115
	.quad	.LC41
	.quad	.LC42
	.long	15
	.long	60
	.quad	.LC43
	.quad	.LC44
	.long	14
	.long	45
	.quad	.LC45
	.quad	0
	.zero	16
	.section	.rodata
	.align 4
	.type	pedantic_opts, @object
	.size	pedantic_opts, 4
pedantic_opts:
	.byte	31
	.zero	3
	.data
	.align 4
	.type	fips_opts, @object
	.size	fips_opts, 4
fips_opts:
	.byte	7
	.zero	3
	.section	.rodata
	.align 8
.LC46:
	.string	"Cannot specify -%s after -pedantic\n"
	.text
	.type	check_non_pedantic_fips, @function
check_non_pedantic_fips:
.LFB647:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L10
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	.LC46(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$0, %eax
	jmp	.L11
.L10:
	movl	$1, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE647:
	.size	check_non_pedantic_fips, .-check_non_pedantic_fips
	.type	do_mac, @function
do_mac:
.LFB648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movl	$0, -4(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_MAC_init@PLT
	testl	%eax, %eax
	je	.L22
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_get_mac_size@PLT
	cmpq	%rax, -16(%rbp)
	jb	.L23
	jmp	.L17
.L19:
	cmpl	$0, -20(%rbp)
	js	.L24
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_update@PLT
	testl	%eax, %eax
	je	.L24
.L17:
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$4096, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L19
	jmp	.L16
.L23:
	nop
.L16:
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_final@PLT
	testl	%eax, %eax
	je	.L25
	movl	$1, -4(%rbp)
	jmp	.L14
.L22:
	nop
	jmp	.L14
.L24:
	nop
	jmp	.L14
.L25:
	nop
.L14:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE648:
	.size	do_mac, .-do_mac
	.section	.rodata
.LC47:
	.string	""
.LC48:
	.string	"Failed to load FIPS module\n"
.LC49:
	.string	"name"
.LC50:
	.string	"version"
.LC51:
	.string	"buildinfo"
	.align 8
.LC52:
	.string	"Failed to query FIPS module parameters\n"
.LC53:
	.string	"name:"
.LC54:
	.string	"\t%-10s\t%s\n"
.LC55:
	.string	"version:"
.LC56:
	.string	"build:"
	.text
	.type	load_fips_prov_and_run_self_test, @function
load_fips_prov_and_run_self_test:
.LFB649:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC47(%rip), %rax
	movq	%rax, -216(%rbp)
	leaq	.LC47(%rip), %rax
	movq	%rax, -224(%rbp)
	leaq	.LC47(%rip), %rax
	movq	%rax, -232(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_load@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L27
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L27:
	movl	quiet(%rip), %eax
	testl	%eax, %eax
	jne	.L29
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-216(%rbp), %rdx
	leaq	.LC49(%rip), %rsi
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-224(%rbp), %rdx
	leaq	.LC50(%rip), %rsi
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -40(%rbp)
	leaq	-304(%rbp), %rax
	leaq	-232(%rbp), %rdx
	leaq	.LC51(%rip), %rsi
	movl	$8, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_utf8_ptr@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	movq	-40(%rbp), %rbx
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_construct_end@PLT
	movq	-304(%rbp), %rax
	movq	-296(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	%rax, 16(%rbx)
	movq	%rdx, 24(%rbx)
	movq	-272(%rbp), %rax
	movq	%rax, 32(%rbx)
	leaq	-208(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_get_params@PLT
	testl	%eax, %eax
	jne	.L30
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L28
.L30:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L31
	movq	-216(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC53(%rip), %rdi
	leaq	.LC54(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L31:
	leaq	-208(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L32
	movq	-224(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC55(%rip), %rdi
	leaq	.LC54(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L32:
	leaq	-208(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_modified@PLT
	testl	%eax, %eax
	je	.L29
	movq	-232(%rbp), %rdx
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC56(%rip), %rdi
	leaq	.LC54(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L29:
	movl	$1, -20(%rbp)
.L28:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PROVIDER_unload@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE649:
	.size	load_fips_prov_and_run_self_test, .-load_fips_prov_and_run_self_test
	.section	.rodata
.LC57:
	.string	"%s = %s\n"
.LC58:
	.string	"../apps/fipsinstall.c"
	.text
	.type	print_mac, @function
print_mac:
.LFB650:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -8(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_buf2hexstr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L35
	movl	$0, %eax
	jmp	.L36
.L35:
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	.LC57(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	%eax, -12(%rbp)
	leaq	.LC58(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$190, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE650:
	.size	print_mac, .-print_mac
	.section	.rodata
.LC59:
	.string	"openssl_conf = openssl_init\n\n"
.LC60:
	.string	"[openssl_init]\n"
	.align 8
.LC61:
	.string	"providers = provider_section\n\n"
.LC62:
	.string	"[provider_section]\n"
.LC63:
	.string	"%s = %s\n\n"
	.text
	.type	write_config_header, @function
write_config_header:
.LFB651:
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
	leaq	.LC59(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC60(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC61(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC62(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	je	.L38
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	leaq	.LC63(%rip), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	je	.L38
	movl	$1, %eax
	jmp	.L40
.L38:
	movl	$0, %eax
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE651:
	.size	write_config_header, .-write_config_header
	.section	.rodata
.LC64:
	.string	"[%s]\n"
.LC65:
	.string	"activate = 1\n"
.LC66:
	.string	"1"
.LC67:
	.string	"install-version"
.LC68:
	.string	"0"
.LC69:
	.string	"conditional-errors"
.LC70:
	.string	"security-checks"
.LC71:
	.string	"tls1-prf-ems-check"
.LC72:
	.string	"drbg-no-trunc-md"
.LC73:
	.string	"module-mac"
.LC74:
	.string	"install-mac"
.LC75:
	.string	"INSTALL_SELF_TEST_KATS_RUN"
.LC76:
	.string	"install-status"
	.text
	.type	write_config_fips_section, @function
write_config_fips_section:
.LFB652:
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
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	$0, -4(%rbp)
	movq	-32(%rbp), %rdx
	leaq	.LC64(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L56
	leaq	.LC65(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L56
	leaq	.LC66(%rip), %rcx
	leaq	.LC67(%rip), %rdx
	leaq	.LC57(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L56
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$2, %eax
	testb	%al, %al
	je	.L43
	leaq	.LC66(%rip), %rax
	jmp	.L44
.L43:
	leaq	.LC68(%rip), %rax
.L44:
	leaq	.LC69(%rip), %rdx
	leaq	.LC57(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L56
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$4, %eax
	testb	%al, %al
	je	.L45
	leaq	.LC66(%rip), %rax
	jmp	.L46
.L45:
	leaq	.LC68(%rip), %rax
.L46:
	leaq	.LC70(%rip), %rdx
	leaq	.LC57(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L56
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$8, %eax
	testb	%al, %al
	je	.L47
	leaq	.LC66(%rip), %rax
	jmp	.L48
.L47:
	leaq	.LC68(%rip), %rax
.L48:
	leaq	.LC71(%rip), %rdx
	leaq	.LC57(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L56
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L49
	leaq	.LC66(%rip), %rax
	jmp	.L50
.L49:
	leaq	.LC68(%rip), %rax
.L50:
	leaq	.LC72(%rip), %rdx
	leaq	.LC57(%rip), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L56
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC73(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_mac
	testl	%eax, %eax
	je	.L56
	cmpq	$0, -64(%rbp)
	je	.L53
	cmpq	$0, 16(%rbp)
	je	.L53
	movq	16(%rbp), %rcx
	movq	-64(%rbp), %rdx
	leaq	.LC74(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print_mac
	testl	%eax, %eax
	je	.L57
	leaq	.LC75(%rip), %rcx
	leaq	.LC76(%rip), %rdx
	leaq	.LC57(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L57
.L53:
	movl	$1, -4(%rbp)
	jmp	.L52
.L56:
	nop
	jmp	.L52
.L57:
	nop
.L52:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE652:
	.size	write_config_fips_section, .-write_config_fips_section
	.type	generate_config_and_load, @function
generate_config_and_load:
.LFB653:
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
	movq	%r8, -56(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L59
	movl	$0, %eax
	jmp	.L60
.L59:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	write_config_header
	testl	%eax, %eax
	je	.L66
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	write_config_fips_section
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L66
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_load_config_bio@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L67
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CONF_modules_load@PLT
	testl	%eax, %eax
	jle	.L68
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-8(%rbp), %rax
	jmp	.L60
.L66:
	nop
	jmp	.L63
.L67:
	nop
	jmp	.L63
.L68:
	nop
.L63:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	$0, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE653:
	.size	generate_config_and_load, .-generate_config_and_load
	.type	free_config_and_unload, @function
free_config_and_unload:
.LFB654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L71
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	$1, %edi
	call	CONF_modules_unload@PLT
.L71:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE654:
	.size	free_config_and_unload, .-free_config_and_unload
	.type	verify_module_load, @function
verify_module_load:
.LFB655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_LIB_CTX_load_config@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE655:
	.size	verify_module_load, .-verify_module_load
	.section	.rodata
.LC77:
	.string	"version not found\n"
	.align 8
.LC78:
	.string	"Module integrity MAC not found\n"
.LC79:
	.string	"Module integrity mismatch\n"
.LC80:
	.string	"install status not found\n"
	.align 8
.LC81:
	.string	"Install indicator MAC not found\n"
	.align 8
.LC82:
	.string	"Install indicator status mismatch\n"
	.text
	.type	verify_config, @function
verify_config:
.LFB656:
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
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	app_load_config_internal@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L88
	leaq	.LC67(%rip), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L77
	leaq	.LC66(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L78
.L77:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC77(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L76
.L78:
	leaq	.LC73(%rip), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L79
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC78(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L76
.L79:
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L80
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L80
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L81
.L80:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC79(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L76
.L81:
	cmpq	$0, -88(%rbp)
	je	.L82
	cmpq	$0, -96(%rbp)
	je	.L82
	leaq	.LC76(%rip), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L83
	leaq	.LC75(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L84
.L83:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC80(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L76
.L84:
	leaq	.LC74(%rip), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L85
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC81(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L76
.L85:
	leaq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L86
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L86
	movq	-96(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L82
.L86:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC82(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L76
.L82:
	movl	$1, -4(%rbp)
	jmp	.L76
.L88:
	nop
.L76:
	leaq	.LC58(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$350, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC58(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$351, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE656:
	.size	verify_config, .-verify_config
	.section	.rodata
.LC83:
	.string	"fips_sect"
.LC84:
	.string	"HMAC"
.LC85:
	.string	"fips"
.LC86:
	.string	"%s: Use -help for summary.\n"
.LC87:
	.string	"hexkey:"
.LC88:
	.string	"digest:"
	.align 8
.LC89:
	.string	"Missing -in option for -verify\n"
.LC90:
	.string	"available"
.LC91:
	.string	" not available"
.LC92:
	.string	"FIPS provider is %s\n"
.LC93:
	.string	"digest:SHA256"
	.align 8
.LC94:
	.string	"hexkey:f4556650ac31d35461610bac4ed81b1a181b2d8a43ea2854cbae22ca74560813"
.LC95:
	.string	"Failed to open module file\n"
.LC96:
	.string	"I/O buffer"
.LC97:
	.string	"Unable to get MAC of type %s\n"
	.align 8
.LC98:
	.string	"Unable to create MAC CTX for module check\n"
.LC99:
	.string	"MAC parameter error\n"
	.align 8
.LC100:
	.string	"Unable to create MAC CTX for install indicator\n"
.LC101:
	.string	"Unable to create memory BIO\n"
.LC102:
	.string	"VERIFY PASSED\n"
.LC103:
	.string	"Failed to open file\n"
.LC104:
	.string	"INSTALL PASSED\n"
.LC105:
	.string	"VERIFY"
.LC106:
	.string	"INSTALL"
.LC107:
	.string	"%s FAILED\n"
	.text
	.globl	fipsinstall_main
	.type	fipsinstall_main, @function
fipsinstall_main:
.LFB657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$392, %rsp
	.cfi_offset 3, -24
	movl	%edi, -388(%rbp)
	movq	%rsi, -400(%rbp)
	movl	$1, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	leaq	.LC83(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC84(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC85(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -152(%rbp)
	movq	$64, -296(%rbp)
	movq	$64, -376(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -168(%rbp)
	call	OPENSSL_sk_new_null@PLT
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L162
	movq	fipsinstall_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	-400(%rbp), %rcx
	movl	-388(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	opt_init@PLT
	movq	%rax, -192(%rbp)
	jmp	.L92
.L123:
	cmpl	$21, -196(%rbp)
	je	.L93
	cmpl	$21, -196(%rbp)
	jg	.L92
	cmpl	$20, -196(%rbp)
	je	.L94
	cmpl	$20, -196(%rbp)
	jg	.L92
	cmpl	$19, -196(%rbp)
	je	.L95
	cmpl	$19, -196(%rbp)
	jg	.L92
	cmpl	$18, -196(%rbp)
	je	.L96
	cmpl	$18, -196(%rbp)
	jg	.L92
	cmpl	$17, -196(%rbp)
	je	.L97
	cmpl	$17, -196(%rbp)
	jg	.L92
	cmpl	$16, -196(%rbp)
	je	.L98
	cmpl	$16, -196(%rbp)
	jg	.L92
	cmpl	$15, -196(%rbp)
	je	.L99
	cmpl	$15, -196(%rbp)
	jg	.L92
	cmpl	$14, -196(%rbp)
	je	.L100
	cmpl	$14, -196(%rbp)
	jg	.L92
	cmpl	$13, -196(%rbp)
	je	.L101
	cmpl	$13, -196(%rbp)
	jg	.L92
	cmpl	$12, -196(%rbp)
	je	.L102
	cmpl	$12, -196(%rbp)
	jg	.L92
	cmpl	$11, -196(%rbp)
	je	.L103
	cmpl	$11, -196(%rbp)
	jg	.L92
	cmpl	$10, -196(%rbp)
	je	.L104
	cmpl	$10, -196(%rbp)
	jg	.L92
	cmpl	$9, -196(%rbp)
	je	.L105
	cmpl	$9, -196(%rbp)
	jg	.L92
	cmpl	$8, -196(%rbp)
	je	.L106
	cmpl	$8, -196(%rbp)
	jg	.L92
	cmpl	$7, -196(%rbp)
	je	.L107
	cmpl	$7, -196(%rbp)
	jg	.L92
	cmpl	$6, -196(%rbp)
	je	.L108
	cmpl	$6, -196(%rbp)
	jg	.L92
	cmpl	$5, -196(%rbp)
	je	.L109
	cmpl	$5, -196(%rbp)
	jg	.L92
	cmpl	$4, -196(%rbp)
	je	.L110
	cmpl	$4, -196(%rbp)
	jg	.L92
	cmpl	$3, -196(%rbp)
	je	.L111
	cmpl	$3, -196(%rbp)
	jg	.L92
	cmpl	$2, -196(%rbp)
	je	.L112
	cmpl	$2, -196(%rbp)
	jg	.L92
	cmpl	$0, -196(%rbp)
	jg	.L113
	cmpl	$-1, -196(%rbp)
	jge	.L114
	jmp	.L92
.L113:
	cmpl	$1, -196(%rbp)
	je	.L115
	jmp	.L92
.L165:
	nop
	jmp	.L114
.L167:
	nop
	jmp	.L114
.L169:
	nop
.L114:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-192(%rbp), %rdx
	leaq	.LC86(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L116
.L115:
	movq	fipsinstall_options@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	opt_help@PLT
	movl	$0, -20(%rbp)
	jmp	.L91
.L112:
	call	opt_arg@PLT
	movq	%rax, -96(%rbp)
	jmp	.L92
.L111:
	call	opt_arg@PLT
	movq	%rax, -104(%rbp)
	jmp	.L92
.L109:
	movl	pedantic_opts(%rip), %eax
	movl	%eax, fips_opts(%rip)
	movl	$1, -36(%rbp)
	jmp	.L92
.L98:
	leaq	.LC13(%rip), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	check_non_pedantic_fips
	testl	%eax, %eax
	je	.L163
	movzbl	fips_opts(%rip), %eax
	andl	$-3, %eax
	movb	%al, fips_opts(%rip)
	jmp	.L92
.L97:
	leaq	.LC15(%rip), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	check_non_pedantic_fips
	testl	%eax, %eax
	je	.L164
	movzbl	fips_opts(%rip), %eax
	andl	$-5, %eax
	movb	%al, fips_opts(%rip)
	jmp	.L92
.L96:
	movzbl	fips_opts(%rip), %eax
	orl	$8, %eax
	movb	%al, fips_opts(%rip)
	jmp	.L92
.L95:
	movzbl	fips_opts(%rip), %eax
	orl	$16, %eax
	movb	%al, fips_opts(%rip)
	jmp	.L92
.L100:
	movl	$1, quiet(%rip)
.L103:
	movl	$0, self_test_log(%rip)
	jmp	.L92
.L102:
	call	opt_arg@PLT
	movq	%rax, self_test_corrupt_desc(%rip)
	jmp	.L92
.L101:
	call	opt_arg@PLT
	movq	%rax, self_test_corrupt_type(%rip)
	jmp	.L92
.L108:
	call	opt_arg@PLT
	movq	%rax, -64(%rbp)
	jmp	.L92
.L110:
	call	opt_arg@PLT
	movq	%rax, -112(%rbp)
	jmp	.L92
.L107:
	call	opt_arg@PLT
	movq	%rax, -48(%rbp)
	jmp	.L92
.L106:
	call	opt_arg@PLT
	movq	%rax, -56(%rbp)
	jmp	.L92
.L99:
	call	opt_arg@PLT
	movq	%rax, -120(%rbp)
	jmp	.L92
.L105:
	call	opt_arg@PLT
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L165
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	.LC87(%rip), %rax
	movl	$7, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L120
	movl	$1, -28(%rbp)
	jmp	.L92
.L120:
	call	opt_arg@PLT
	movq	%rax, %rcx
	leaq	.LC88(%rip), %rax
	movl	$7, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L92
	movl	$1, -32(%rbp)
	jmp	.L92
.L104:
	movl	$1, -24(%rbp)
	jmp	.L92
.L94:
	movzbl	fips_opts(%rip), %eax
	orl	$1, %eax
	movb	%al, fips_opts(%rip)
	jmp	.L92
.L93:
	leaq	.LC19(%rip), %rdx
	movl	-36(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	check_non_pedantic_fips
	testl	%eax, %eax
	je	.L166
	movzbl	fips_opts(%rip), %eax
	andl	$-2, %eax
	movb	%al, fips_opts(%rip)
	nop
.L92:
	call	opt_next@PLT
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	jne	.L123
	movl	$0, %edi
	call	opt_check_rest_arg@PLT
	testl	%eax, %eax
	je	.L167
	cmpl	$0, -24(%rbp)
	je	.L125
	cmpq	$0, -96(%rbp)
	jne	.L125
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC89(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L114
.L125:
	cmpq	$0, -120(%rbp)
	je	.L126
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	verify_module_load
	testl	%eax, %eax
	je	.L168
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_available@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	quiet(%rip), %eax
	testl	%eax, %eax
	jne	.L168
	cmpl	$0, -20(%rbp)
	jne	.L128
	leaq	.LC90(%rip), %rax
	jmp	.L129
.L128:
	leaq	.LC91(%rip), %rax
.L129:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC92(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L168
.L126:
	cmpq	$0, -112(%rbp)
	je	.L169
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	opt_path_end@PLT
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.L131
	leaq	.LC58(%rip), %rcx
	movq	-112(%rbp), %rax
	movl	$491, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L170
	movq	-208(%rbp), %rax
	subq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_PROVIDER_set_default_search_path@PLT
	testl	%eax, %eax
	je	.L171
.L131:
	movl	self_test_log(%rip), %eax
	testl	%eax, %eax
	jne	.L133
	movq	self_test_corrupt_desc(%rip), %rax
	testq	%rax, %rax
	jne	.L133
	movq	self_test_corrupt_type(%rip), %rax
	testq	%rax, %rax
	je	.L134
.L133:
	leaq	self_test_events(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	OSSL_SELF_TEST_set_callback@PLT
.L134:
	cmpl	$0, -32(%rbp)
	jne	.L135
	leaq	.LC93(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L172
.L135:
	cmpl	$0, -28(%rbp)
	jne	.L136
	leaq	.LC94(%rip), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_type
	movq	%rax, %rbx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_sk_push@PLT
	testl	%eax, %eax
	je	.L173
.L136:
	movq	-112(%rbp), %rax
	movl	$2, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L137
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC95(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L91
.L137:
	leaq	.LC96(%rip), %rax
	movq	%rax, %rsi
	movl	$4096, %edi
	call	app_malloc@PLT
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L174
	call	app_get0_propq@PLT
	movq	%rax, %rbx
	call	app_get0_libctx@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	EVP_MAC_fetch@PLT
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L139
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	.LC97(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L91
.L139:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_new@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.L140
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC98(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L91
.L140:
	cmpq	$0, -184(%rbp)
	je	.L141
	movl	$1, -172(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_settable_ctx_params@PLT
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	app_params_new_from_opts@PLT
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	je	.L175
	movq	-216(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_MAC_CTX_set_params@PLT
	testl	%eax, %eax
	jne	.L143
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC99(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	movl	$0, -172(%rbp)
.L143:
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	app_params_free@PLT
	cmpl	$0, -172(%rbp)
	je	.L176
.L141:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_dup@PLT
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.L144
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC100(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L91
.L144:
	leaq	-296(%rbp), %rdi
	leaq	-288(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-136(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_mac
	testl	%eax, %eax
	je	.L177
	movzbl	fips_opts(%rip), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L146
	leaq	.LC75(%rip), %rax
	movl	$26, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L147
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC101(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L91
.L147:
	leaq	-376(%rbp), %rdi
	leaq	-368(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	-144(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_mac
	testl	%eax, %eax
	jne	.L148
	jmp	.L91
.L146:
	movq	$0, -376(%rbp)
.L148:
	cmpl	$0, -24(%rbp)
	je	.L149
	movq	-376(%rbp), %r8
	movq	-296(%rbp), %rcx
	leaq	-368(%rbp), %rdi
	leaq	-288(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	verify_config
	testl	%eax, %eax
	je	.L178
	movl	quiet(%rip), %eax
	testl	%eax, %eax
	jne	.L151
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC102(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L151
.L149:
	movq	-296(%rbp), %rcx
	leaq	fips_opts(%rip), %rdi
	leaq	-288(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	generate_config_and_load
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L179
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	load_fips_prov_and_run_self_test
	testl	%eax, %eax
	je	.L180
	cmpq	$0, -104(%rbp)
	jne	.L154
	movl	$32769, %edi
	call	dup_bio_out@PLT
	movq	%rax, -88(%rbp)
	jmp	.L155
.L154:
	movq	-104(%rbp), %rax
	movl	$32769, %edx
	movl	$119, %esi
	movq	%rax, %rdi
	call	bio_open_default@PLT
	movq	%rax, -88(%rbp)
.L155:
	cmpq	$0, -88(%rbp)
	jne	.L156
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC103(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L91
.L156:
	movq	-376(%rbp), %rdi
	movq	-296(%rbp), %rcx
	leaq	-368(%rbp), %r8
	leaq	fips_opts(%rip), %r10
	leaq	-288(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rdi
	call	write_config_fips_section
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L181
	movl	quiet(%rip), %eax
	testl	%eax, %eax
	jne	.L151
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	.LC104(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L151:
	movl	$0, -20(%rbp)
	jmp	.L91
.L162:
	nop
	jmp	.L91
.L163:
	nop
	jmp	.L91
.L164:
	nop
	jmp	.L91
.L166:
	nop
	jmp	.L91
.L168:
	nop
	jmp	.L91
.L170:
	nop
	jmp	.L91
.L171:
	nop
	jmp	.L91
.L172:
	nop
	jmp	.L91
.L173:
	nop
	jmp	.L91
.L174:
	nop
	jmp	.L91
.L175:
	nop
	jmp	.L91
.L176:
	nop
	jmp	.L91
.L177:
	nop
	jmp	.L91
.L178:
	nop
	jmp	.L91
.L179:
	nop
	jmp	.L91
.L180:
	nop
	jmp	.L91
.L181:
	nop
.L91:
	cmpl	$1, -20(%rbp)
	jne	.L182
	movl	quiet(%rip), %eax
	testl	%eax, %eax
	jne	.L158
	cmpl	$0, -24(%rbp)
	je	.L159
	leaq	.LC105(%rip), %rax
	jmp	.L160
.L159:
	leaq	.LC106(%rip), %rax
.L160:
	movq	bio_err@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rcx
	leaq	.LC107(%rip), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L158:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	jmp	.L116
.L182:
	nop
.L116:
	leaq	.LC58(%rip), %rcx
	movq	-128(%rbp), %rax
	movl	$611, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_STRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_free@PLT
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_MAC_CTX_free@PLT
	leaq	.LC58(%rip), %rcx
	movq	-152(%rbp), %rax
	movl	$619, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	free_config_and_unload
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE657:
	.size	fipsinstall_main, .-fipsinstall_main
	.section	.rodata
.LC108:
	.string	"st-phase"
.LC109:
	.string	"st-desc"
.LC110:
	.string	"st-type"
.LC111:
	.string	"Start"
.LC112:
	.string	"%s : (%s) : "
.LC113:
	.string	"Pass"
.LC114:
	.string	"Fail"
.LC115:
	.string	"%s\n"
.LC116:
	.string	"Corrupt"
.LC117:
	.string	"%s "
	.text
	.type	self_test_events, @function
self_test_events:
.LFB658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC108(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L199
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L199
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC109(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L200
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L200
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC110(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate_const@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L201
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$4, %eax
	jne	.L201
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	self_test_log(%rip), %eax
	testl	%eax, %eax
	je	.L191
	leaq	.LC111(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L192
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	.LC112(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L191
.L192:
	leaq	.LC113(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L193
	leaq	.LC114(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L191
.L193:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC115(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L191:
	leaq	.LC116(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L202
	movq	self_test_corrupt_desc(%rip), %rax
	testq	%rax, %rax
	jne	.L195
	movq	self_test_corrupt_type(%rip), %rax
	testq	%rax, %rax
	je	.L202
.L195:
	movq	self_test_corrupt_desc(%rip), %rax
	testq	%rax, %rax
	je	.L196
	movq	self_test_corrupt_desc(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L203
.L196:
	movq	self_test_corrupt_type(%rip), %rax
	testq	%rax, %rax
	je	.L197
	movq	self_test_corrupt_type(%rip), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L204
.L197:
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	.LC117(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L186
.L202:
	nop
	jmp	.L194
.L203:
	nop
	jmp	.L194
.L204:
	nop
.L194:
	movl	$1, -4(%rbp)
	jmp	.L186
.L199:
	nop
	jmp	.L186
.L200:
	nop
	jmp	.L186
.L201:
	nop
.L186:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE658:
	.size	self_test_events, .-self_test_events
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
