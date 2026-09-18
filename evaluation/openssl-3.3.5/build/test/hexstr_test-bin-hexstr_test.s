	.file	"hexstr_test.c"
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
	.section	.rodata
	.type	test_1, @object
	.size	test_1, 4
test_1:
	.base64	"q83v8Q=="
	.type	test_2, @object
	.size	test_2, 5
test_2:
	.base64	"q83vdgA="
.LC0:
	.string	"AB:CD:EF:F1"
.LC1:
	.string	"AB:CD:EF:76:00"
.LC2:
	.string	"AB_CD_EF_F1"
.LC3:
	.string	"AB_CD_EF_76_00"
.LC4:
	.string	"ABCDEFF1"
.LC5:
	.string	"ABCDEF7600"
	.section	.data.rel.local,"aw"
	.align 32
	.type	tbl_testdata, @object
	.size	tbl_testdata, 192
tbl_testdata:
	.quad	.LC0
	.quad	test_1
	.quad	4
	.byte	58
	.zero	7
	.quad	.LC1
	.quad	test_2
	.quad	5
	.byte	58
	.zero	7
	.quad	.LC2
	.quad	test_1
	.quad	4
	.byte	95
	.zero	7
	.quad	.LC3
	.quad	test_2
	.quad	5
	.byte	95
	.zero	7
	.quad	.LC4
	.quad	test_1
	.quad	4
	.byte	0
	.zero	7
	.quad	.LC5
	.quad	test_2
	.quad	5
	.byte	0
	.zero	7
	.section	.rodata
	.align 8
.LC6:
	.string	"buf = ossl_hexstr2buf_sep(test->in, &len, test->sep)"
.LC7:
	.string	"../test/hexstr_test.c"
.LC8:
	.string	"test->expected"
.LC9:
	.string	"buf"
	.align 8
.LC10:
	.string	"out = ossl_buf2hexstr_sep(buf, len, test->sep)"
.LC11:
	.string	"test->in"
.LC12:
	.string	"out"
	.text
	.type	test_hexstr_sep_to_from, @function
test_hexstr_sep_to_from:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	tbl_testdata(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_hexstr2buf_sep@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movq	%rax, %rcx
	movl	$71, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L10
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %r9
	movq	-24(%rbp), %r8
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC7(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$72, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L10
	movq	-32(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_buf2hexstr_sep@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movq	%rax, %rcx
	movl	$73, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L10
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$74, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L10
	movl	$1, -4(%rbp)
	jmp	.L8
.L10:
	nop
.L8:
	leaq	.LC7(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$79, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC7(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	test_hexstr_sep_to_from, .-test_hexstr_sep_to_from
	.section	.rodata
	.align 8
.LC13:
	.string	"buf = OPENSSL_hexstr2buf(test->in, &len)"
	.align 8
.LC14:
	.string	"out = OPENSSL_buf2hexstr(buf, len)"
	.text
	.type	test_hexstr_to_from, @function
test_hexstr_to_from:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	-52(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	tbl_testdata(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	24(%rax), %eax
	cmpb	$95, %al
	je	.L12
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movq	%rax, %rcx
	movl	$93, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %r9
	movq	-16(%rbp), %r8
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC7(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L19
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_buf2hexstr@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC14(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movq	%rax, %rcx
	movl	$95, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L19
	movq	-32(%rbp), %rax
	movzbl	24(%rax), %eax
	cmpb	$58, %al
	jne	.L16
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L17
	jmp	.L15
.L16:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$100, %esi
	movq	%rax, %rdi
	call	test_str_ne@PLT
	testl	%eax, %eax
	jne	.L17
	jmp	.L15
.L12:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC13(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movq	%rax, %rcx
	movl	$104, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L20
.L17:
	movl	$1, -4(%rbp)
	jmp	.L15
.L19:
	nop
	jmp	.L15
.L20:
	nop
.L15:
	leaq	.LC7(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$109, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	leaq	.LC7(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$110, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	test_hexstr_to_from, .-test_hexstr_to_from
	.section	.rodata
	.align 8
.LC15:
	.string	"OPENSSL_hexstr2buf_ex(buf, sizeof(buf), &len, test->in, ':')"
	.align 8
.LC16:
	.string	"OPENSSL_buf2hexstr_ex(out, 3 * len - 1, NULL, buf, len, ':')"
	.align 8
.LC17:
	.string	"OPENSSL_buf2hexstr_ex(out, sizeof(out), NULL, buf, len, ':')"
	.align 8
.LC18:
	.string	"OPENSSL_buf2hexstr_ex(out, sizeof(out), NULL, buf, 0, ':')"
.LC19:
	.string	"0"
.LC20:
	.string	"strlen(out)"
	.text
	.type	test_hexstr_ex_to_from, @function
test_hexstr_ex_to_from:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -148(%rbp)
	movq	$0, -16(%rbp)
	movl	-148(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	tbl_testdata(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-16(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$58, %r8d
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_hexstr2buf_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC15(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$121, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L22
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %r9
	leaq	-144(%rbp), %r8
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC7(%rip), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$122, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L22
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	-1(%rax), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$58, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	OPENSSL_buf2hexstr_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC16(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$123, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L22
	movq	-16(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$58, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_buf2hexstr_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC17(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$125, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L22
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	leaq	-80(%rbp), %rsi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$127, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L22
	leaq	-144(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$58, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	OPENSSL_buf2hexstr_ex@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC18(%rip), %rdx
	leaq	.LC7(%rip), %rdi
	movl	%eax, %ecx
	movl	$128, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L22
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$130, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L22
	movl	$1, %eax
	jmp	.L24
.L22:
	movl	$0, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	test_hexstr_ex_to_from, .-test_hexstr_ex_to_from
	.section	.rodata
.LC21:
	.string	"test_hexstr_sep_to_from"
.LC22:
	.string	"test_hexstr_to_from"
.LC23:
	.string	"test_hexstr_ex_to_from"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_hexstr_sep_to_from(%rip), %rsi
	leaq	.LC21(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_hexstr_to_from(%rip), %rsi
	leaq	.LC22(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_hexstr_ex_to_from(%rip), %rsi
	leaq	.LC23(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
