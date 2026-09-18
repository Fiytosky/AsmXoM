	.file	"conf_include_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"../test/conf_include_test.c"
.LC1:
	.string	"changing path to %s"
	.text
	.type	change_path, @function
change_path:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	leaq	.LC0(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L5:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
.L4:
	movq	-8(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L5
	cmpq	$0, -16(%rbp)
	je	.L8
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	chdir@PLT
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L9
	movq	-16(%rbp), %rax
	addq	$1, %rax
	leaq	.LC0(%rip), %rcx
	movl	$62, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_strdup@PLT
	movq	%rax, -24(%rbp)
	jmp	.L7
.L8:
	nop
	jmp	.L7
.L9:
	nop
.L7:
	leaq	.LC0(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-24(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	change_path, .-change_path
	.local	conf
	.comm	conf,8,8
	.local	in
	.comm	in,8,8
	.local	expect_failure
	.comm	expect_failure,4,4
	.local	test_providers
	.comm	test_providers,4,4
	.local	libctx
	.comm	libctx,8,8
	.local	rel_conf_file
	.comm	rel_conf_file,8,8
	.section	.rodata
.LC2:
	.string	"0"
	.align 8
.LC3:
	.string	"NCONF_load_bio(conf, in, &errline)"
.LC4:
	.string	"err = ERR_peek_error()"
	.align 8
.LC5:
	.string	"Failure loading the configuration at line %ld"
	.align 8
.LC6:
	.string	"Failure expected but did not happen"
	.align 8
.LC7:
	.string	"CONF_modules_load(conf, NULL, 0)"
.LC8:
	.string	"Failed in CONF_modules_load"
.LC9:
	.string	"default_days"
.LC10:
	.string	"CA_default"
.LC11:
	.string	"1"
	.align 8
.LC12:
	.string	"NCONF_get_number(conf, \"CA_default\", \"default_days\", &val)"
.LC13:
	.string	"365"
.LC14:
	.string	"val"
.LC15:
	.string	"default_days incorrect"
.LC16:
	.string	"default_bits"
.LC17:
	.string	"req"
	.align 8
.LC18:
	.string	"NCONF_get_number(conf, \"req\", \"default_bits\", &val)"
.LC19:
	.string	"2048"
.LC20:
	.string	"default_bits incorrect"
.LC21:
	.string	"countryName_default"
.LC22:
	.string	"req_distinguished_name"
.LC23:
	.string	"str"
.LC24:
	.string	"AU"
.LC25:
	.string	"\"AU\""
.LC26:
	.string	"countryName_default incorrect"
.LC27:
	.string	"activate"
.LC28:
	.string	"null_sect"
	.align 8
.LC29:
	.string	"NCONF_get_number(conf, \"null_sect\", \"activate\", &val)"
.LC30:
	.string	"null provider not activated"
.LC31:
	.string	"default_sect"
	.align 8
.LC32:
	.string	"NCONF_get_number(conf, \"default_sect\", \"activate\", &val)"
	.align 8
.LC33:
	.string	"default provider not activated"
.LC34:
	.string	"legacy_sect"
	.align 8
.LC35:
	.string	"NCONF_get_number(conf, \"legacy_sect\", \"activate\", &val)"
.LC36:
	.string	"legacy provider not activated"
	.text
	.type	test_load_config, @function
test_load_config:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	in(%rip), %rcx
	movq	conf(%rip), %rax
	leaq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_load_bio@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$86, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L11
	call	ERR_peek_error@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L12
.L11:
	movl	expect_failure(%rip), %eax
	testl	%eax, %eax
	je	.L13
	movl	$1, %eax
	jmp	.L29
.L13:
	movq	-24(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L29
.L12:
	movl	expect_failure(%rip), %eax
	testl	%eax, %eax
	je	.L15
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L29
.L15:
	movq	conf(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	CONF_modules_load@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	jne	.L16
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L29
.L16:
	movq	$0, -32(%rbp)
	movq	conf(%rip), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC9(%rip), %rdi
	leaq	.LC10(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	NCONF_get_number_e@PLT
	movl	%eax, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$105, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$365, %r9d
	movl	%esi, %r8d
	movl	$106, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L18
.L17:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L29
.L18:
	movq	$0, -32(%rbp)
	movq	conf(%rip), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC16(%rip), %rdi
	leaq	.LC17(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	NCONF_get_number_e@PLT
	movl	%eax, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L19
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC19(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$2048, %r9d
	movl	%esi, %r8d
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L20
.L19:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L29
.L20:
	movq	conf(%rip), %rax
	leaq	.LC21(%rip), %rdx
	leaq	.LC22(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_string@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$121, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	leaq	.LC24(%rip), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC25(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$121, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L22
.L21:
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L29
.L22:
	movl	test_providers(%rip), %eax
	testl	%eax, %eax
	je	.L23
	movq	$0, -32(%rbp)
	movq	conf(%rip), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC27(%rip), %rdi
	leaq	.LC28(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	NCONF_get_number_e@PLT
	movl	%eax, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$129, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L24
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$130, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L25
.L24:
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L29
.L25:
	movq	$0, -32(%rbp)
	movq	conf(%rip), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC27(%rip), %rdi
	leaq	.LC31(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	NCONF_get_number_e@PLT
	movl	%eax, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$136, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L27
.L26:
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L29
.L27:
	movq	$0, -32(%rbp)
	movq	conf(%rip), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC27(%rip), %rdi
	leaq	.LC34(%rip), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	NCONF_get_number_e@PLT
	movl	%eax, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$141, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	-32(%rbp), %rax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$142, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L23
.L28:
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L29
.L23:
	movl	$1, %eax
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_load_config, .-test_load_config
	.section	.rodata
.LC37:
	.string	"123"
.LC38:
	.string	"FNORD"
.LC39:
	.string	"setenv(\"FNORD\", \"123\", 1)"
.LC40:
	.string	"missing"
	.align 8
.LC41:
	.string	"NCONF_get_number(NULL, \"missing\", \"FNORD\", &val)"
	.align 8
.LC42:
	.string	"environment variable with NULL conf failed"
.LC43:
	.string	"unsetenv(\"FNORD\")"
	.align 8
.LC44:
	.string	"missing environment variable with NULL conf failed"
	.text
	.type	test_check_null_numbers, @function
test_check_null_numbers:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	leaq	.LC37(%rip), %rcx
	leaq	.LC38(%rip), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	setenv@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$160, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	leaq	-8(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rcx
	movl	$0, %edi
	call	NCONF_get_number_e@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$161, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L31
	movq	-8(%rbp), %rsi
	leaq	.LC37(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$123, %r9d
	movq	%rsi, %r8
	movl	$162, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	jne	.L32
.L31:
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L36
.L32:
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	call	unsetenv@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$171, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L34
	leaq	-8(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rcx
	movl	$0, %edi
	call	NCONF_get_number_e@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$172, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L35
.L34:
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L36
.L35:
	movl	$1, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_check_null_numbers, .-test_check_null_numbers
	.section	.rodata
.LC45:
	.string	"0%ld"
.LC46:
	.string	"LONG_MAX"
	.text
	.type	test_check_overflow, @function
test_check_overflow:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -16(%rbp)
	movabsq	$9223372036854775807, %rcx
	leaq	.LC45(%rip), %rdx
	leaq	-48(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	cltq
	leaq	-1(%rax), %rdx
	leaq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	leaq	-48(%rbp), %rax
	leaq	.LC38(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	setenv@PLT
	leaq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rcx
	movl	$0, %edi
	call	NCONF_get_number_e@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$191, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-16(%rbp), %rsi
	movabsq	$9223372036854775807, %rdi
	leaq	.LC46(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$192, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	jne	.L41
.L38:
	movl	$0, %eax
	jmp	.L44
.L42:
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$48, (%rax)
.L41:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L42
	leaq	-48(%rbp), %rax
	leaq	.LC38(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	setenv@PLT
	leaq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC40(%rip), %rsi
	movq	%rax, %rcx
	movl	$0, %edi
	call	NCONF_get_number_e@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$199, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movl	$1, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_check_overflow, .-test_check_overflow
	.section	.rodata
.LC47:
	.string	"libctx"
.LC48:
	.string	"rel_conf_file"
.LC49:
	.string	"Failed to load config"
.LC50:
	.string	"default"
.LC51:
	.string	"Default provider is missing"
.LC52:
	.string	"legacy"
.LC53:
	.string	"Legacy provider is missing"
	.text
	.type	test_available_providers, @function
test_available_providers:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, libctx(%rip)
	movq	libctx(%rip), %rax
	leaq	.LC47(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$208, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	rel_conf_file(%rip), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$211, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L48
	movq	rel_conf_file(%rip), %rdx
	movq	libctx(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_load_config@PLT
	testl	%eax, %eax
	jne	.L49
.L48:
	leaq	.LC49(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L47
.L49:
	movq	libctx(%rip), %rax
	leaq	.LC50(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	cmpl	$1, %eax
	je	.L50
	leaq	.LC51(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L47
.L50:
	movq	libctx(%rip), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PROVIDER_available@PLT
	cmpl	$1, %eax
	je	.L51
	leaq	.LC53(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L47
.L51:
	movl	$1, %eax
.L47:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_available_providers, .-test_available_providers
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
.LC54:
	.string	"conf = NCONF_new(NULL)"
.LC55:
	.string	"conf_file"
.LC56:
	.string	"r"
	.align 8
.LC57:
	.string	"in = BIO_new_file(conf_file, \"r\")"
	.align 8
.LC58:
	.string	"Unable to open the file argument"
.LC59:
	.string	"Unable to change path"
.LC60:
	.string	"test_load_config"
.LC61:
	.string	"test_check_null_numbers"
.LC62:
	.string	"test_check_overflow"
.LC63:
	.string	"test_available_providers"
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
	movq	$0, -8(%rbp)
	movl	$0, %edi
	call	NCONF_new@PLT
	movq	%rax, conf(%rip)
	movq	conf(%rip), %rax
	leaq	.LC54(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$252, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L56
.L62:
	cmpl	$505, -12(%rbp)
	jg	.L58
	cmpl	$500, -12(%rbp)
	jge	.L57
	cmpl	$1, -12(%rbp)
	je	.L60
	cmpl	$2, -12(%rbp)
	je	.L61
	jmp	.L58
.L60:
	movl	$1, expect_failure(%rip)
	jmp	.L57
.L61:
	movl	$1, test_providers(%rip)
	jmp	.L57
.L58:
	movl	$0, %eax
	jmp	.L56
.L57:
	call	opt_next@PLT
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L62
	movl	$0, %edi
	call	test_get_argument@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$270, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L63
	leaq	.LC56(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_new_file@PLT
	movq	%rax, in(%rip)
	movq	in(%rip), %rax
	leaq	.LC57(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$271, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L64
.L63:
	leaq	.LC58(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L56
.L64:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	change_path
	movq	%rax, rel_conf_file(%rip)
	movq	rel_conf_file(%rip), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$281, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L65
	leaq	.LC59(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movl	$0, %eax
	jmp	.L56
.L65:
	leaq	test_load_config(%rip), %rdx
	leaq	.LC60(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_check_null_numbers(%rip), %rdx
	leaq	.LC61(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_check_overflow(%rip), %rdx
	leaq	.LC62(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	test_providers(%rip), %eax
	testl	%eax, %eax
	je	.L66
	leaq	test_available_providers(%rip), %rdx
	leaq	.LC63(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
.L66:
	movl	$1, %eax
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	rel_conf_file(%rip), %rax
	leaq	.LC0(%rip), %rcx
	movl	$297, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	in(%rip), %rax
	movq	%rax, %rdi
	call	BIO_vfree@PLT
	movq	conf(%rip), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	$1, %edi
	call	CONF_modules_unload@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	cleanup_tests, .-cleanup_tests
	.section	.rodata
	.align 8
.LC64:
	.string	"Usage: %s [options] conf_file\n"
.LC65:
	.string	"Valid options are:\n"
.LC66:
	.string	"help"
.LC67:
	.string	"Display this summary"
.LC68:
	.string	"list"
	.align 8
.LC69:
	.string	"Display the list of tests available"
.LC70:
	.string	"test"
	.align 8
.LC71:
	.string	"Run a single test by id or name"
.LC72:
	.string	"iter"
	.align 8
.LC73:
	.string	"Run a single iteration of a test"
.LC74:
	.string	"indent"
	.align 8
.LC75:
	.string	"Number of tabs added to output"
.LC76:
	.string	"seed"
	.align 8
.LC77:
	.string	"Seed value to randomize tests with"
.LC78:
	.string	"f"
.LC79:
	.string	"A failure is expected"
.LC80:
	.string	"providers"
	.align 8
.LC81:
	.string	"Test for activated default and legacy providers"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	test_options.0, @object
	.size	test_options.0, 264
test_options.0:
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC64
	.quad	OPT_HELP_STR
	.long	1
	.long	45
	.quad	.LC65
	.quad	.LC66
	.long	500
	.long	45
	.quad	.LC67
	.quad	.LC68
	.long	501
	.long	45
	.quad	.LC69
	.quad	.LC70
	.long	502
	.long	115
	.quad	.LC71
	.quad	.LC72
	.long	503
	.long	110
	.quad	.LC73
	.quad	.LC74
	.long	504
	.long	112
	.quad	.LC75
	.quad	.LC76
	.long	505
	.long	110
	.quad	.LC77
	.quad	.LC78
	.long	1
	.long	45
	.quad	.LC79
	.quad	.LC80
	.long	2
	.long	45
	.quad	.LC81
	.quad	0
	.zero	16
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
