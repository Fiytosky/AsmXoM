	.file	"param_build_test.c"
	.text
	.section	.rodata
	.align 32
	.type	params_empty, @object
	.size	params_empty, 40
params_empty:
	.zero	40
.LC0:
	.string	"bld = OSSL_PARAM_BLD_new()"
.LC1:
	.string	"../test/param_build_test.c"
.LC2:
	.string	"zbn = BN_new()"
.LC3:
	.string	"zeronumber"
	.align 8
.LC4:
	.string	"OSSL_PARAM_BLD_push_BN(bld, \"zeronumber\", idx == 0 ? zbn : NULL)"
	.align 8
.LC5:
	.string	"params_blt = OSSL_PARAM_BLD_to_param(bld)"
	.align 8
.LC6:
	.string	"p = OSSL_PARAM_locate(params, \"zeronumber\")"
.LC7:
	.string	"\"zeronumber\""
.LC8:
	.string	"p->key"
.LC9:
	.string	"OSSL_PARAM_UNSIGNED_INTEGER"
.LC10:
	.string	"p->data_type"
	.align 8
.LC11:
	.string	"OSSL_PARAM_get_BN(p, &zbn_res)"
.LC12:
	.string	"zbn"
.LC13:
	.string	"zbn_res"
	.text
	.type	template_public_single_zero_test, @function
template_public_single_zero_test:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -28(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$26, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L11
	call	BN_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$27, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L11
	cmpl	$0, -68(%rbp)
	jne	.L3
	movq	-24(%rbp), %rax
	jmp	.L4
.L3:
	movl	$0, %eax
.L4:
	leaq	.LC3(%rip), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$28, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L11
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$30, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L11
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$35, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L12
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC3(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$36, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L12
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$37, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L12
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$38, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L12
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$39, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L12
	movl	$1, -28(%rbp)
	jmp	.L6
.L11:
	nop
	jmp	.L6
.L12:
	nop
.L6:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L9
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$44, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L9:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	template_public_single_zero_test, .-template_public_single_zero_test
	.section	.rodata
.LC14:
	.string	"zbn = BN_secure_new()"
	.align 8
.LC15:
	.string	"OSSL_PARAM_BLD_push_BN(bld, \"zeronumber\", zbn)"
	.align 8
.LC16:
	.string	"CRYPTO_secure_allocated(p->data)"
.LC17:
	.string	"BN_FLG_SECURE"
	.align 8
.LC18:
	.string	"BN_get_flags(zbn, BN_FLG_SECURE)"
	.text
	.type	template_private_single_zero_test, @function
template_private_single_zero_test:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$0, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -28(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$59, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	call	BN_secure_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$60, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	movq	-24(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$61, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L21
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$62, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L21
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$67, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L22
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$68, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L22
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC3(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L22
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$70, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L22
	leaq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$71, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L22
	movq	-24(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movl	%esi, %r8d
	movl	$72, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L22
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$73, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L22
	movl	$1, -28(%rbp)
	jmp	.L16
.L21:
	nop
	jmp	.L16
.L22:
	nop
.L16:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L19
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$78, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L19:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	template_private_single_zero_test, .-template_private_single_zero_test
	.section	.rodata
.LC19:
	.string	"bld"
.LC20:
	.string	"l"
	.align 8
.LC21:
	.string	"OSSL_PARAM_BLD_push_long(bld, \"l\", 42)"
.LC22:
	.string	"i32"
	.align 8
.LC23:
	.string	"OSSL_PARAM_BLD_push_int32(bld, \"i32\", 1532)"
.LC24:
	.string	"i64"
	.align 8
.LC25:
	.string	"OSSL_PARAM_BLD_push_int64(bld, \"i64\", -9999999)"
.LC26:
	.string	"t"
	.align 8
.LC27:
	.string	"OSSL_PARAM_BLD_push_time_t(bld, \"t\", 11224)"
.LC29:
	.string	"d"
	.align 8
.LC30:
	.string	"OSSL_PARAM_BLD_push_double(bld, \"d\", 1.61803398875)"
.LC31:
	.string	"pbn = BN_new()"
.LC32:
	.string	"BN_set_word(pbn, 1729)"
.LC33:
	.string	"bignumber"
	.align 8
.LC34:
	.string	"OSSL_PARAM_BLD_push_BN(bld, \"bignumber\", pbn)"
.LC35:
	.string	"nbn = BN_secure_new()"
.LC36:
	.string	"BN_set_word(nbn, 1733)"
.LC37:
	.string	"(BN_set_negative(nbn, 1), 1)"
.LC38:
	.string	"negativebignumber"
	.align 8
.LC39:
	.string	"OSSL_PARAM_BLD_push_BN(bld, \"negativebignumber\", nbn)"
.LC40:
	.string	"foo"
.LC41:
	.string	"utf8_s"
	.align 8
.LC42:
	.string	"OSSL_PARAM_BLD_push_utf8_string(bld, \"utf8_s\", \"foo\", sizeof(\"foo\"))"
.LC43:
	.string	"bar-boom"
.LC44:
	.string	"utf8_p"
	.align 8
.LC45:
	.string	"OSSL_PARAM_BLD_push_utf8_ptr(bld, \"utf8_p\", \"bar-boom\", 0)"
.LC46:
	.string	"i"
	.align 8
.LC47:
	.string	"OSSL_PARAM_BLD_push_int(bld, \"i\", -6)"
	.align 8
.LC48:
	.string	"p = OSSL_PARAM_locate(params, \"i\")"
.LC49:
	.string	"OSSL_PARAM_get_int(p, &i)"
.LC50:
	.string	"\"i\""
.LC51:
	.string	"OSSL_PARAM_INTEGER"
.LC52:
	.string	"sizeof(int)"
.LC53:
	.string	"p->data_size"
.LC54:
	.string	"-6"
	.align 8
.LC55:
	.string	"p = OSSL_PARAM_locate(params, \"i32\")"
.LC56:
	.string	"OSSL_PARAM_get_int32(p, &i32)"
.LC57:
	.string	"\"i32\""
.LC58:
	.string	"sizeof(int32_t)"
.LC59:
	.string	"1532"
.LC60:
	.string	"(int)i32"
	.align 8
.LC61:
	.string	"p = OSSL_PARAM_locate(params, \"i64\")"
.LC62:
	.string	"\"i64\""
.LC63:
	.string	"sizeof(int64_t)"
.LC64:
	.string	"OSSL_PARAM_get_int64(p, &i64)"
.LC65:
	.string	"-9999999"
.LC66:
	.string	"(long)i64"
	.align 8
.LC67:
	.string	"p = OSSL_PARAM_locate(params, \"l\")"
.LC68:
	.string	"\"l\""
.LC69:
	.string	"sizeof(long int)"
.LC70:
	.string	"OSSL_PARAM_get_long(p, &l)"
.LC71:
	.string	"42"
	.align 8
.LC72:
	.string	"p = OSSL_PARAM_locate(params, \"t\")"
.LC73:
	.string	"\"t\""
.LC74:
	.string	"sizeof(time_t)"
.LC75:
	.string	"OSSL_PARAM_get_time_t(p, &t)"
.LC76:
	.string	"11224"
	.align 8
.LC77:
	.string	"p = OSSL_PARAM_locate(params, \"d\")"
.LC78:
	.string	"OSSL_PARAM_get_double(p, &d)"
.LC79:
	.string	"\"d\""
.LC80:
	.string	"OSSL_PARAM_REAL"
.LC81:
	.string	"sizeof(double)"
.LC82:
	.string	"1.61803398875"
	.align 8
.LC83:
	.string	"p = OSSL_PARAM_locate(params, \"utf8_s\")"
.LC84:
	.string	"\"foo\""
.LC85:
	.string	"p->data"
	.align 8
.LC86:
	.string	"OSSL_PARAM_get_utf8_string(p, &utf, 0)"
.LC87:
	.string	"utf"
	.align 8
.LC88:
	.string	"p = OSSL_PARAM_locate(params, \"utf8_p\")"
	.align 8
.LC89:
	.string	"OSSL_PARAM_get_utf8_ptr(p, &cutf)"
.LC90:
	.string	"\"bar-boom\""
.LC91:
	.string	"cutf"
	.align 8
.LC92:
	.string	"p = OSSL_PARAM_locate(params, \"bignumber\")"
.LC93:
	.string	"\"bignumber\""
	.align 8
.LC94:
	.string	"OSSL_PARAM_get_BN(p, &pbn_res)"
.LC95:
	.string	"pbn"
.LC96:
	.string	"pbn_res"
	.align 8
.LC97:
	.string	"p = OSSL_PARAM_locate(params, \"negativebignumber\")"
.LC98:
	.string	"\"negativebignumber\""
	.align 8
.LC99:
	.string	"OSSL_PARAM_get_BN(p, &nbn_res)"
.LC100:
	.string	"nbn"
.LC101:
	.string	"nbn_res"
	.text
	.type	template_public_test, @function
template_public_test:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	%edi, -164(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -152(%rbp)
	movl	$0, -52(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$103, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC20(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_long@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$104, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC22(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$1532, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$105, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC24(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	$-9999999, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$106, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC26(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$11224, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_time_t@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$107, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	.LC28(%rip), %rdx
	leaq	.LC29(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rdx, %xmm0
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_double@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$108, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	call	BN_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$109, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	movq	-32(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$110, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC31(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$111, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	movq	-40(%rbp), %rax
	movl	$1729, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$112, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	-40(%rbp), %rdx
	leaq	.LC33(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$113, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	call	BN_secure_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$114, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	movq	-48(%rbp), %rax
	movl	$1733, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$115, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %ecx
	movl	$116, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	-48(%rbp), %rdx
	leaq	.LC38(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$117, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC40(%rip), %rdx
	leaq	.LC41(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	$4, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$118, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC43(%rip), %rdx
	leaq	.LC44(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_utf8_ptr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC45(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$120, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	leaq	.LC46(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$-6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC47(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$122, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L37
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$123, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L37
	cmpl	$3, -164(%rbp)
	je	.L27
	cmpl	$3, -164(%rbp)
	jg	.L28
	cmpl	$2, -164(%rbp)
	je	.L29
	cmpl	$2, -164(%rbp)
	jg	.L28
	cmpl	$0, -164(%rbp)
	je	.L30
	cmpl	$1, -164(%rbp)
	je	.L31
	jmp	.L28
.L30:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L32
.L31:
	leaq	params_empty(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -8(%rbp)
	jmp	.L32
.L29:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_dup@PLT
	movq	%rax, -8(%rbp)
	jmp	.L32
.L27:
	leaq	params_empty(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_dup@PLT
	movq	%rax, -8(%rbp)
	jmp	.L32
.L28:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_dup@PLT
	movq	%rax, -24(%rbp)
	leaq	params_empty(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -8(%rbp)
	nop
.L32:
	leaq	.LC46(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$146, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-100(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC49(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$147, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC46(%rip), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC51(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$149, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC52(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$150, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L38
	movl	-100(%rbp), %esi
	leaq	.LC54(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$-6, %r9d
	movl	%esi, %r8d
	movl	$151, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC22(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$153, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-116(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC56(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$154, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC22(%rip), %rdi
	leaq	.LC57(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$155, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC51(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$156, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$157, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L38
	movl	-116(%rbp), %esi
	leaq	.LC59(%rip), %rcx
	leaq	.LC60(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1532, %r9d
	movl	%esi, %r8d
	movl	$158, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC24(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$160, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC24(%rip), %rdi
	leaq	.LC62(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC51(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$162, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC63(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$163, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-128(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_int64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC64(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$164, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-128(%rbp), %rsi
	leaq	.LC65(%rip), %rcx
	leaq	.LC66(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	$-9999999, %r9
	movq	%rsi, %r8
	movl	$165, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC20(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$167, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC20(%rip), %rdi
	leaq	.LC68(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$168, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC51(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$169, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC69(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$170, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-112(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_long@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC70(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$171, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-112(%rbp), %rsi
	leaq	.LC71(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$42, %r9d
	movq	%rsi, %r8
	movl	$172, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC26(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC72(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$174, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC26(%rip), %rdi
	leaq	.LC73(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$175, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC51(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$176, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC74(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$177, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-144(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_time_t@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC75(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$178, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-144(%rbp), %rsi
	leaq	.LC76(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$11224, %r9d
	movq	%rsi, %r8
	movl	$179, %esi
	movq	%rax, %rdi
	call	test_time_t_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC29(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC77(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$181, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-136(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_double@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC78(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$182, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC29(%rip), %rdi
	leaq	.LC79(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$183, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC80(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$184, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC81(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$185, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-136(%rbp), %rax
	movsd	.LC28(%rip), %xmm0
	leaq	.LC82(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	movl	$186, %esi
	call	test_double_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC41(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$188, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	16(%rax), %rsi
	leaq	.LC40(%rip), %rdi
	leaq	.LC84(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$189, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-152(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC86(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$190, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-152(%rbp), %rsi
	leaq	.LC40(%rip), %rdi
	leaq	.LC84(%rip), %rcx
	leaq	.LC87(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$191, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC44(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC88(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$193, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-160(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_utf8_ptr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC89(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$194, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-160(%rbp), %rsi
	leaq	.LC43(%rip), %rdi
	leaq	.LC90(%rip), %rcx
	leaq	.LC91(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$195, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC3(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$197, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC3(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$198, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$199, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$200, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-80(%rbp), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$201, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC33(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC92(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$203, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC33(%rip), %rdi
	leaq	.LC93(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$204, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$205, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$206, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-88(%rbp), %rsi
	movq	-40(%rbp), %rdi
	leaq	.LC95(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$207, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC38(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$209, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC38(%rip), %rdi
	leaq	.LC98(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$210, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L38
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC51(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$211, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$212, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movq	-96(%rbp), %rsi
	movq	-48(%rbp), %rdi
	leaq	.LC100(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$213, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L38
	movl	$1, -52(%rbp)
	jmp	.L26
.L37:
	nop
	jmp	.L26
.L38:
	nop
.L26:
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$217, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L35
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$219, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L35:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-152(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movl	$222, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-52(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	template_public_test, .-template_public_test
	.section	.rodata
	.align 8
.LC102:
	.string	"data1 = OPENSSL_secure_malloc(data1_size)"
	.align 8
.LC103:
	.string	"data2 = OPENSSL_secure_malloc(data2_size)"
	.align 8
.LC104:
	.string	"OSSL_PARAM_BLD_push_uint(bld, \"i\", 6)"
	.align 8
.LC105:
	.string	"OSSL_PARAM_BLD_push_ulong(bld, \"l\", 42)"
	.align 8
.LC106:
	.string	"OSSL_PARAM_BLD_push_uint32(bld, \"i32\", 1532)"
	.align 8
.LC107:
	.string	"OSSL_PARAM_BLD_push_uint64(bld, \"i64\", 9999999)"
.LC108:
	.string	"st"
	.align 8
.LC109:
	.string	"OSSL_PARAM_BLD_push_size_t(bld, \"st\", 65537)"
.LC110:
	.string	"pbn = BN_secure_new()"
.LC111:
	.string	"oct_s"
	.align 8
.LC112:
	.string	"OSSL_PARAM_BLD_push_octet_string(bld, \"oct_s\", data1, data1_size)"
.LC113:
	.string	"oct_p"
	.align 8
.LC114:
	.string	"OSSL_PARAM_BLD_push_octet_ptr(bld, \"oct_p\", data2, data2_size)"
.LC115:
	.string	"OSSL_PARAM_get_uint(p, &i)"
.LC116:
	.string	"6"
	.align 8
.LC117:
	.string	"OSSL_PARAM_get_uint32(p, &i32)"
.LC118:
	.string	"(unsigned int)i32"
	.align 8
.LC119:
	.string	"OSSL_PARAM_get_uint64(p, &i64)"
.LC120:
	.string	"9999999"
.LC121:
	.string	"(unsigned long)i64"
.LC122:
	.string	"sizeof(unsigned long int)"
.LC123:
	.string	"OSSL_PARAM_get_ulong(p, &l)"
	.align 8
.LC124:
	.string	"p = OSSL_PARAM_locate(params, \"st\")"
.LC125:
	.string	"\"st\""
.LC126:
	.string	"sizeof(size_t)"
.LC127:
	.string	"OSSL_PARAM_get_size_t(p, &st)"
.LC128:
	.string	"65537"
	.align 8
.LC129:
	.string	"p = OSSL_PARAM_locate(params, \"oct_s\")"
.LC130:
	.string	"\"oct_s\""
.LC131:
	.string	"OSSL_PARAM_OCTET_STRING"
.LC132:
	.string	"data1"
	.align 8
.LC133:
	.string	"p = OSSL_PARAM_locate(params, \"oct_p\")"
	.align 8
.LC134:
	.string	"CRYPTO_secure_allocated(*(void **)p->data)"
.LC135:
	.string	"\"oct_p\""
.LC136:
	.string	"OSSL_PARAM_OCTET_PTR"
.LC137:
	.string	"data2"
.LC138:
	.string	"*(void **)p->data"
	.align 8
.LC139:
	.string	"BN_get_flags(pbn, BN_FLG_SECURE)"
	.align 8
.LC140:
	.string	"BN_get_flags(nbn, BN_FLG_SECURE)"
	.text
	.type	template_private_test, @function
template_private_test:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	%edi, -180(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -8(%rbp)
	movl	$12, -92(%rbp)
	movl	-92(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -96(%rbp)
	movl	$5, -100(%rbp)
	movl	-100(%rbp), %eax
	sall	$2, %eax
	movl	%eax, -104(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -176(%rbp)
	movl	$0, -76(%rbp)
	movl	-96(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$251, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	leaq	.LC102(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$251, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L59
	movl	-104(%rbp), %eax
	cltq
	leaq	.LC1(%rip), %rcx
	movl	$252, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC103(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$252, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L59
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$253, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L59
	movl	$0, -12(%rbp)
	jmp	.L43
.L44:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-12(%rbp), %edx
	movl	$0, %eax
	subl	%edx, %eax
	sall	$4, %eax
	movl	%eax, (%rcx)
	addl	$1, -12(%rbp)
.L43:
	movl	-12(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L44
	movl	$0, -12(%rbp)
	jmp	.L45
.L46:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	addl	%edx, %edx
	movl	%edx, (%rax)
	addl	$1, -12(%rbp)
.L45:
	movl	-12(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L46
	leaq	.LC46(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$261, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	leaq	.LC20(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_ulong@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC105(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$262, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	leaq	.LC22(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$1532, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$263, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	leaq	.LC24(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$9999999, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$264, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	leaq	.LC108(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$65537, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_size_t@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC109(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$265, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	call	BN_secure_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$266, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	movq	-56(%rbp), %rdx
	leaq	.LC3(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$267, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	call	BN_secure_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	.LC110(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$268, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	movq	-64(%rbp), %rax
	movl	$1729, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$269, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-64(%rbp), %rdx
	leaq	.LC33(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC34(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$270, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	call	BN_secure_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$271, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	movq	-72(%rbp), %rax
	movl	$1733, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC36(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$272, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	BN_set_negative@PLT
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %ecx
	movl	$273, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-72(%rbp), %rdx
	leaq	.LC38(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$274, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movl	-96(%rbp), %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	leaq	.LC111(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC112(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$275, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movl	-104(%rbp), %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	leaq	.LC113(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_ptr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC114(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$277, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L60
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$279, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L60
	cmpl	$3, -180(%rbp)
	je	.L49
	cmpl	$3, -180(%rbp)
	jg	.L50
	cmpl	$2, -180(%rbp)
	je	.L51
	cmpl	$2, -180(%rbp)
	jg	.L50
	cmpl	$0, -180(%rbp)
	je	.L52
	cmpl	$1, -180(%rbp)
	je	.L53
	jmp	.L50
.L52:
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L54
.L53:
	leaq	params_empty(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -32(%rbp)
	jmp	.L54
.L51:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_dup@PLT
	movq	%rax, -32(%rbp)
	jmp	.L54
.L49:
	leaq	params_empty(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_dup@PLT
	movq	%rax, -32(%rbp)
	jmp	.L54
.L50:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_dup@PLT
	movq	%rax, -48(%rbp)
	leaq	params_empty(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -32(%rbp)
	nop
.L54:
	leaq	.LC46(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$301, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$302, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-116(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC46(%rip), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$304, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$305, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC52(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$306, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L61
	movl	-116(%rbp), %esi
	leaq	.LC116(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$307, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	.LC22(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$309, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$310, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-132(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$311, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC22(%rip), %rdi
	leaq	.LC57(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$312, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$313, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$314, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L61
	movl	-132(%rbp), %esi
	leaq	.LC59(%rip), %rcx
	leaq	.LC118(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1532, %r9d
	movl	%esi, %r8d
	movl	$315, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	.LC24(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$317, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$318, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC24(%rip), %rdi
	leaq	.LC62(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$319, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$320, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC63(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$321, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-144(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$322, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-144(%rbp), %rsi
	leaq	.LC120(%rip), %rcx
	leaq	.LC121(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$9999999, %r9d
	movq	%rsi, %r8
	movl	$323, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	.LC20(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$325, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$326, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC20(%rip), %rdi
	leaq	.LC68(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$327, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$328, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC122(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$329, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-128(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_ulong@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC123(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$330, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-128(%rbp), %rsi
	leaq	.LC71(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$42, %r9d
	movq	%rsi, %r8
	movl	$331, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	.LC108(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC124(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$333, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$334, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC108(%rip), %rdi
	leaq	.LC125(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$335, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$336, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC126(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$337, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-152(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC127(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$338, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-152(%rbp), %rsi
	leaq	.LC128(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$65537, %r9d
	movq	%rsi, %r8
	movl	$339, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	.LC111(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC129(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$341, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$342, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC111(%rip), %rdi
	leaq	.LC130(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$343, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC131(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$344, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	movl	-96(%rbp), %eax
	movslq	%eax, %rsi
	movq	-112(%rbp), %rax
	movq	24(%rax), %r8
	movq	-112(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	.LC132(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-88(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$345, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L61
	leaq	.LC113(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$347, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$348, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC134(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$349, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC113(%rip), %rdi
	leaq	.LC135(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$350, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC136(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movl	%esi, %r8d
	movl	$351, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	movl	-104(%rbp), %eax
	movslq	%eax, %rsi
	movq	-112(%rbp), %rax
	movq	24(%rax), %r8
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	.LC137(%rip), %rcx
	leaq	.LC138(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	%rsi
	pushq	-8(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$352, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L61
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$354, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$355, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC3(%rip), %rdi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$356, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$357, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-160(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$358, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-64(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC139(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movl	%esi, %r8d
	movl	$359, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-160(%rbp), %rsi
	movq	-56(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$360, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	.LC33(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC92(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$362, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$363, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC33(%rip), %rdi
	leaq	.LC93(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$364, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$365, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-168(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC94(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$366, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-64(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC139(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movl	%esi, %r8d
	movl	$367, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-168(%rbp), %rsi
	movq	-64(%rbp), %rdi
	leaq	.LC95(%rip), %rcx
	leaq	.LC96(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$368, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	.LC38(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$370, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	CRYPTO_secure_allocated@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$371, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC38(%rip), %rdi
	leaq	.LC98(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$372, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-112(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC51(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$373, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L61
	leaq	-176(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC99(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$374, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L61
	movq	-72(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BN_get_flags@PLT
	movl	%eax, %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC140(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movl	%esi, %r8d
	movl	$375, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L61
	movq	-176(%rbp), %rsi
	movq	-72(%rbp), %rdi
	leaq	.LC100(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$376, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	testl	%eax, %eax
	je	.L61
	movl	$1, -76(%rbp)
	jmp	.L42
.L59:
	nop
	jmp	.L42
.L60:
	nop
	jmp	.L42
.L61:
	nop
.L42:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.L57
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
.L57:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-88(%rbp), %rax
	movl	$385, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_free@PLT
	leaq	.LC1(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$386, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_secure_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-76(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	template_private_test, .-template_private_test
	.section	.rodata
	.align 8
.LC141:
	.string	"OSSL_PARAM_BLD_push_int(bld, names[i], 3 * i + 1)"
	.align 8
.LC142:
	.string	"params = OSSL_PARAM_BLD_to_param(bld)"
.LC143:
	.string	"n"
.LC144:
	.string	"g"
	.align 8
.LC145:
	.string	"OSSL_PARAM_BLD_push_int(bld, \"g\", 2)"
.LC146:
	.string	"1"
	.text
	.type	builder_limit_test, @function
builder_limit_test:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movl	$100, -20(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -16(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$404, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L78
	movl	$0, -12(%rbp)
	jmp	.L65
.L67:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1321528399, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$3, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$64, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rbp, %rax
	subq	$336, %rax
	movb	%cl, (%rax)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1321528399, %rdx, %rdx
	shrq	$32, %rdx
	sarl	$3, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	imull	$26, %edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	$96, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rbp, %rax
	subq	$335, %rax
	movb	%cl, (%rax)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rbp, %rax
	subq	$334, %rax
	movb	$0, (%rax)
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	1(%rax), %esi
	leaq	-336(%rbp), %rcx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC141(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$411, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L79
	addl	$1, -12(%rbp)
.L65:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L67
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC142(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$414, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L80
	movl	$0, -12(%rbp)
	jmp	.L69
.L70:
	addl	$1, -12(%rbp)
.L69:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	movl	-20(%rbp), %edi
	movl	-12(%rbp), %esi
	leaq	.LC143(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$418, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L81
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	$0, -8(%rbp)
	leaq	.LC144(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_int@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC145(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$425, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L82
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC142(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$426, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L82
	movl	$0, -12(%rbp)
	jmp	.L74
.L75:
	addl	$1, -12(%rbp)
.L74:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L75
	movl	-12(%rbp), %esi
	leaq	.LC146(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$430, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L83
	movl	$1, -16(%rbp)
	jmp	.L64
.L78:
	nop
	jmp	.L64
.L79:
	nop
	jmp	.L64
.L80:
	nop
	jmp	.L64
.L81:
	nop
	jmp	.L64
.L82:
	nop
	jmp	.L64
.L83:
	nop
.L64:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	builder_limit_test, .-builder_limit_test
	.section	.rodata
.LC147:
	.string	"bn_priv = BN_secure_new()"
.LC148:
	.string	"BN_set_word(bn_priv, 1729)"
.LC149:
	.string	"bignumber_priv"
	.align 8
.LC150:
	.string	"OSSL_PARAM_BLD_push_BN(bld, \"bignumber_priv\", bn_priv)"
.LC151:
	.string	"bld2"
	.align 8
.LC152:
	.string	"OSSL_PARAM_BLD_push_octet_string(bld2, \"oct_s\", data1, sizeof(data1))"
	.align 8
.LC153:
	.string	"OSSL_PARAM_BLD_push_octet_ptr(bld2, \"oct_p\", data2, sizeof(data2))"
	.align 8
.LC154:
	.string	"OSSL_PARAM_BLD_push_uint32(bld2, \"i32\", 99)"
.LC155:
	.string	"bn_pub = BN_new()"
.LC156:
	.string	"BN_set_word(bn_pub, 0x42)"
.LC157:
	.string	"bignumber_pub"
	.align 8
.LC158:
	.string	"OSSL_PARAM_BLD_push_BN(bld2, \"bignumber_pub\", bn_pub)"
	.align 8
.LC159:
	.string	"params2_blt = OSSL_PARAM_BLD_to_param(bld2)"
	.align 8
.LC160:
	.string	"params = OSSL_PARAM_merge(params_blt, params2_blt)"
.LC161:
	.string	"99"
	.align 8
.LC162:
	.string	"p = OSSL_PARAM_locate(params, \"bignumber_pub\")"
.LC163:
	.string	"\"bignumber_pub\""
	.align 8
.LC164:
	.string	"OSSL_PARAM_get_BN(p, &bn_pub_res)"
.LC165:
	.string	"0"
.LC166:
	.string	"BN_cmp(bn_pub_res, bn_pub)"
	.align 8
.LC167:
	.string	"p = OSSL_PARAM_locate(params, \"bignumber_priv\")"
.LC168:
	.string	"\"bignumber_priv\""
	.align 8
.LC169:
	.string	"OSSL_PARAM_get_BN(p, &bn_priv_res)"
.LC170:
	.string	"BN_cmp(bn_priv_res, bn_priv)"
	.text
	.type	builder_merge_test, @function
builder_merge_test:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -56(%rbp)
	call	OSSL_PARAM_BLD_new@PLT
	movq	%rax, -64(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -128(%rbp)
	movl	$0, -44(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$455, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	leaq	.LC46(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC104(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$456, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	leaq	.LC20(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_ulong@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC105(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$457, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	leaq	.LC22(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$1532, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC106(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$458, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	leaq	.LC24(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$9999999, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC107(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$459, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	leaq	.LC108(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$65537, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_size_t@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC109(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$460, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	call	BN_secure_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC147(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$461, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	-32(%rbp), %rax
	movl	$1729, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC148(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$462, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-32(%rbp), %rdx
	leaq	.LC149(%rip), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC150(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$463, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L94
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$464, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	movq	-64(%rbp), %rax
	leaq	.LC151(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$467, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L95
	leaq	data1.1(%rip), %rdx
	leaq	.LC111(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	$28, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_string@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC152(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$468, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	leaq	data2.0(%rip), %rdx
	leaq	.LC113(%rip), %rsi
	movq	-64(%rbp), %rax
	movl	$5, %ecx
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_octet_ptr@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC153(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$470, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	leaq	.LC22(%rip), %rcx
	movq	-64(%rbp), %rax
	movl	$99, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC154(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$472, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	call	BN_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC155(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$473, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L95
	movq	-40(%rbp), %rax
	movl	$66, %esi
	movq	%rax, %rdi
	call	BN_set_word@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC156(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$474, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movq	-40(%rbp), %rdx
	leaq	.LC157(%rip), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_push_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC158(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$475, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L95
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_to_param@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC159(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$476, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L95
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_merge@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC160(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$479, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L96
	leaq	.LC46(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC48(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$482, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-76(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC115(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$483, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC46(%rip), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$484, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$485, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC52(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$486, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movl	-76(%rbp), %esi
	leaq	.LC116(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$487, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	.LC22(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC55(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$489, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-92(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint32@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC117(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$490, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC22(%rip), %rdi
	leaq	.LC57(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$491, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$492, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC58(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4, %r9d
	movq	%rsi, %r8
	movl	$493, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	movl	-92(%rbp), %esi
	leaq	.LC161(%rip), %rcx
	leaq	.LC118(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$99, %r9d
	movl	%esi, %r8d
	movl	$494, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	.LC24(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC61(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$496, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC24(%rip), %rdi
	leaq	.LC62(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$497, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$498, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC63(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$499, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-104(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_uint64@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC119(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$500, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	movq	-104(%rbp), %rsi
	leaq	.LC120(%rip), %rcx
	leaq	.LC121(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$9999999, %r9d
	movq	%rsi, %r8
	movl	$501, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	.LC20(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC67(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$503, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC20(%rip), %rdi
	leaq	.LC68(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$504, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$505, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC122(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$506, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-88(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_ulong@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC123(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$507, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	movq	-88(%rbp), %rsi
	leaq	.LC71(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$42, %r9d
	movq	%rsi, %r8
	movl	$508, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	.LC108(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC124(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$510, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC108(%rip), %rdi
	leaq	.LC125(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$511, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$512, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	24(%rax), %rsi
	leaq	.LC126(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$8, %r9d
	movq	%rsi, %r8
	movl	$513, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-112(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_size_t@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC127(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$514, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	movq	-112(%rbp), %rsi
	leaq	.LC128(%rip), %rcx
	leaq	.LC108(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$65537, %r9d
	movq	%rsi, %r8
	movl	$515, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	.LC111(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC129(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$517, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC111(%rip), %rdi
	leaq	.LC130(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$518, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC131(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$519, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	24(%rax), %r8
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	.LC132(%rip), %rcx
	leaq	.LC85(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$28
	leaq	data1.1(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$520, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L97
	leaq	.LC113(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$522, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC113(%rip), %rdi
	leaq	.LC135(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$523, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC136(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movl	%esi, %r8d
	movl	$524, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	24(%rax), %r8
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	leaq	.LC137(%rip), %rcx
	leaq	.LC138(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$5
	leaq	data2.0(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$525, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L97
	leaq	.LC157(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC162(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$527, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC157(%rip), %rdi
	leaq	.LC163(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$528, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$529, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-128(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC164(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$530, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	movq	-128(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	movl	%eax, %esi
	leaq	.LC165(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$531, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	.LC149(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	leaq	.LC167(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$532, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	.LC149(%rip), %rdi
	leaq	.LC168(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$533, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L97
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$534, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	testl	%eax, %eax
	je	.L97
	leaq	-120(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_get_BN@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC169(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$535, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L97
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_cmp@PLT
	movl	%eax, %esi
	leaq	.LC165(%rip), %rcx
	leaq	.LC170(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$536, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L97
	movl	$1, -44(%rbp)
	jmp	.L87
.L94:
	nop
	jmp	.L87
.L95:
	nop
	jmp	.L87
.L96:
	nop
	jmp	.L87
.L97:
	nop
.L87:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_PARAM_BLD_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-44(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	builder_merge_test, .-builder_merge_test
	.section	.rodata
	.align 8
.LC171:
	.string	"template_public_single_zero_test"
.LC172:
	.string	"template_public_test"
	.align 8
.LC173:
	.string	"template_private_single_zero_test"
.LC174:
	.string	"template_private_test"
.LC175:
	.string	"builder_limit_test"
.LC176:
	.string	"builder_merge_test"
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
	leaq	template_public_single_zero_test(%rip), %rsi
	leaq	.LC171(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	template_public_test(%rip), %rsi
	leaq	.LC172(%rip), %rax
	movl	$1, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$16, %esi
	movl	$65536, %edi
	call	CRYPTO_secure_malloc_init@PLT
	testl	%eax, %eax
	je	.L99
	leaq	template_private_single_zero_test(%rip), %rdx
	leaq	.LC173(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	template_private_test(%rip), %rsi
	leaq	.LC174(%rip), %rax
	movl	$1, %ecx
	movl	$5, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
.L99:
	leaq	builder_limit_test(%rip), %rdx
	leaq	.LC175(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	builder_merge_test(%rip), %rdx
	leaq	.LC176(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	setup_tests, .-setup_tests
	.data
	.align 16
	.type	data1.1, @object
	.size	data1.1, 28
data1.1:
	.long	2
	.long	3
	.long	5
	.long	7
	.long	11
	.long	15
	.long	17
	.type	data2.0, @object
	.size	data2.0, 5
data2.0:
	.base64	"AgQGCAo="
	.section	.rodata
	.align 8
.LC28:
	.long	-1684539775
	.long	1073341303
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
