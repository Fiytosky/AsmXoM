	.file	"property_test.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB493:
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
.LFE493:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB494:
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
.LFE494:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"0"
	.align 8
.LC1:
	.string	"ossl_property_name(NULL, n, 1)"
.LC2:
	.string	"../test/property_test.c"
	.text
	.type	add_property_names, @function
add_property_names:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L12
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L12:
	movl	$1, -180(%rbp)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
.L10:
	movq	-216(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_property_name@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$35, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, -180(%rbp)
.L7:
	movl	-208(%rbp), %eax
	cmpl	$47, %eax
	ja	.L8
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L9
.L8:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L9:
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.L10
	movl	-180(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	add_property_names, .-add_property_names
	.type	up_ref, @function
up_ref:
.LFB510:
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
.LFE510:
	.size	up_ref, .-up_ref
	.type	down_ref, @function
down_ref:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	down_ref, .-down_ref
	.section	.rodata
.LC3:
	.string	"ctx = OSSL_LIB_CTX_new()"
	.align 8
.LC4:
	.string	"store = ossl_method_store_new(ctx)"
.LC5:
	.string	"fnord"
	.align 8
.LC6:
	.string	"ossl_property_name(ctx, \"fnord\", 0)"
	.align 8
.LC7:
	.string	"ossl_property_name(ctx, \"fnord\", 1)"
.LC8:
	.string	"name"
	.align 8
.LC9:
	.string	"ossl_property_name(ctx, \"name\", 1)"
.LC10:
	.string	"provider"
.LC11:
	.string	"\"provider\""
	.align 8
.LC12:
	.string	"ossl_property_name_str(ctx, 1)"
.LC13:
	.string	"version"
.LC14:
	.string	"\"version\""
	.align 8
.LC15:
	.string	"ossl_property_name_str(ctx, 2)"
.LC16:
	.string	"fips"
.LC17:
	.string	"\"fips\""
	.align 8
.LC18:
	.string	"ossl_property_name_str(ctx, 3)"
.LC19:
	.string	"output"
.LC20:
	.string	"\"output\""
	.align 8
.LC21:
	.string	"ossl_property_name_str(ctx, 4)"
.LC22:
	.string	"input"
.LC23:
	.string	"\"input\""
	.align 8
.LC24:
	.string	"ossl_property_name_str(ctx, 5)"
.LC25:
	.string	"structure"
.LC26:
	.string	"\"structure\""
	.align 8
.LC27:
	.string	"ossl_property_name_str(ctx, 6)"
.LC28:
	.string	"\"fnord\""
	.align 8
.LC29:
	.string	"ossl_property_name_str(ctx, 7)"
.LC30:
	.string	"\"name\""
	.align 8
.LC31:
	.string	"ossl_property_name_str(ctx, 8)"
	.align 8
.LC32:
	.string	"ossl_property_name_str(ctx, 0)"
	.align 8
.LC33:
	.string	"ossl_property_name_str(ctx, 9)"
	.align 8
.LC34:
	.string	"ossl_property_value(ctx, \"fnord\", 0)"
.LC35:
	.string	"no"
	.align 8
.LC36:
	.string	"i = ossl_property_value(ctx, \"no\", 0)"
.LC37:
	.string	"yes"
	.align 8
.LC38:
	.string	"j = ossl_property_value(ctx, \"yes\", 0)"
.LC39:
	.string	"j"
.LC40:
	.string	"i"
	.align 8
.LC41:
	.string	"ossl_property_value(ctx, \"yes\", 1)"
	.align 8
.LC42:
	.string	"ossl_property_value(ctx, \"no\", 1)"
.LC43:
	.string	"illuminati"
	.align 8
.LC44:
	.string	"i = ossl_property_value(ctx, \"illuminati\", 1)"
.LC45:
	.string	"i + 1"
	.align 8
.LC46:
	.string	"j = ossl_property_value(ctx, \"fnord\", 1)"
	.align 8
.LC47:
	.string	"ossl_property_value(ctx, \"fnord\", 1)"
.LC48:
	.string	"\"yes\""
	.align 8
.LC49:
	.string	"ossl_property_value_str(ctx, 1)"
.LC50:
	.string	"\"no\""
	.align 8
.LC51:
	.string	"ossl_property_value_str(ctx, 2)"
.LC52:
	.string	"\"illuminati\""
	.align 8
.LC53:
	.string	"ossl_property_value_str(ctx, 3)"
	.align 8
.LC54:
	.string	"ossl_property_value_str(ctx, 4)"
	.align 8
.LC55:
	.string	"ossl_property_value_str(ctx, 0)"
	.align 8
.LC56:
	.string	"ossl_property_value_str(ctx, 5)"
.LC57:
	.string	"cold"
	.align 8
.LC58:
	.string	"ossl_property_value(ctx, \"cold\", 0)"
	.text
	.type	test_property_string, @function
test_property_string:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$62, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$63, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_name@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$64, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_name@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_name@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$66, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rdi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$70, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rdi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$71, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, %rsi
	leaq	.LC22(%rip), %rdi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$72, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, %rsi
	leaq	.LC25(%rip), %rdi
	leaq	.LC26(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$73, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$75, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	leaq	.LC30(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$76, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$78, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	ossl_property_name_str@PLT
	movq	%rax, %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$79, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$81, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC35(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC37(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L17
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %esi
	leaq	.LC39(%rip), %rcx
	leaq	.LC40(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$84, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC37(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movl	%eax, %esi
	movl	-48(%rbp), %edi
	leaq	.LC39(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC35(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movl	%eax, %esi
	movl	-44(%rbp), %edi
	leaq	.LC40(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$86, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC43(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC44(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L17
	movl	-44(%rbp), %eax
	leal	1(%rax), %ebx
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %esi
	leaq	.LC45(%rip), %rcx
	leaq	.LC46(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movl	%eax, %esi
	movl	-48(%rbp), %edi
	leaq	.LC39(%rip), %rcx
	leaq	.LC47(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ossl_property_value_str@PLT
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rdi
	leaq	.LC48(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$91, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ossl_property_value_str@PLT
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	leaq	.LC50(%rip), %rcx
	leaq	.LC51(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$92, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	ossl_property_value_str@PLT
	movq	%rax, %rsi
	leaq	.LC43(%rip), %rdi
	leaq	.LC52(%rip), %rcx
	leaq	.LC53(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ossl_property_value_str@PLT
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	leaq	.LC28(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_property_value_str@PLT
	movq	%rax, %rcx
	leaq	.LC55(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$97, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	ossl_property_value_str@PLT
	movq	%rax, %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC57(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC58(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$100, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_value@PLT
	movl	%eax, %ebx
	leaq	.LC5(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ossl_property_name@PLT
	movl	%eax, %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$101, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L17
	movl	$1, -28(%rbp)
.L17:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	test_property_string, .-test_property_string
	.section	.rodata
.LC59:
	.string	""
.LC60:
	.string	"sky=blue"
.LC61:
	.string	"sky!=blue"
.LC62:
	.string	"groan"
.LC63:
	.string	"cold=yes"
.LC64:
	.string	"cold!=no"
.LC65:
	.string	"groan=yes"
.LC66:
	.string	"groan=no"
.LC67:
	.string	"groan!=yes"
.LC68:
	.string	"cold=no"
.LC69:
	.string	"?cold"
.LC70:
	.string	"cold!=yes"
.LC71:
	.string	"groan=blue"
.LC72:
	.string	"groan=yellow"
.LC73:
	.string	"?groan=yellow"
.LC74:
	.string	"groan!=yellow"
.LC75:
	.string	"?groan!=yellow"
.LC76:
	.string	"today=monday, tomorrow=3"
.LC77:
	.string	"today!=2"
.LC78:
	.string	"today!='monday'"
.LC79:
	.string	"tomorrow=3"
.LC80:
	.string	"n=0x3"
.LC81:
	.string	"n=3"
.LC82:
	.string	"n=-3"
.LC83:
	.string	"n=0x33"
.LC84:
	.string	"n=51"
.LC85:
	.string	"n=0x123456789abcdef"
.LC86:
	.string	"n=0x7fffffffffffffff"
.LC87:
	.string	"n=9223372036854775807"
.LC88:
	.string	"n=0777777777777777777777"
.LC89:
	.string	"n=033"
.LC90:
	.string	"n=27"
.LC91:
	.string	"n=0"
.LC92:
	.string	"n=00"
.LC93:
	.string	"n=0x0"
.LC94:
	.string	"n=0, sky=blue"
.LC95:
	.string	"?n=0, sky=blue"
.LC96:
	.string	"n=1, sky=blue"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	parser_tests, @object
	.size	parser_tests, 816
parser_tests:
	.quad	.LC59
	.quad	.LC60
	.long	-1
	.zero	4
	.quad	.LC59
	.quad	.LC61
	.long	1
	.zero	4
	.quad	.LC62
	.quad	.LC59
	.long	0
	.zero	4
	.quad	.LC63
	.quad	.LC63
	.long	1
	.zero	4
	.quad	.LC63
	.quad	.LC57
	.long	1
	.zero	4
	.quad	.LC63
	.quad	.LC64
	.long	1
	.zero	4
	.quad	.LC62
	.quad	.LC65
	.long	1
	.zero	4
	.quad	.LC62
	.quad	.LC66
	.long	-1
	.zero	4
	.quad	.LC62
	.quad	.LC67
	.long	-1
	.zero	4
	.quad	.LC68
	.quad	.LC57
	.long	-1
	.zero	4
	.quad	.LC68
	.quad	.LC69
	.long	0
	.zero	4
	.quad	.LC68
	.quad	.LC68
	.long	1
	.zero	4
	.quad	.LC62
	.quad	.LC57
	.long	-1
	.zero	4
	.quad	.LC62
	.quad	.LC68
	.long	1
	.zero	4
	.quad	.LC62
	.quad	.LC70
	.long	1
	.zero	4
	.quad	.LC71
	.quad	.LC72
	.long	-1
	.zero	4
	.quad	.LC71
	.quad	.LC73
	.long	0
	.zero	4
	.quad	.LC71
	.quad	.LC74
	.long	1
	.zero	4
	.quad	.LC71
	.quad	.LC75
	.long	1
	.zero	4
	.quad	.LC76
	.quad	.LC77
	.long	1
	.zero	4
	.quad	.LC76
	.quad	.LC78
	.long	-1
	.zero	4
	.quad	.LC76
	.quad	.LC79
	.long	1
	.zero	4
	.quad	.LC80
	.quad	.LC81
	.long	1
	.zero	4
	.quad	.LC80
	.quad	.LC82
	.long	-1
	.zero	4
	.quad	.LC83
	.quad	.LC84
	.long	1
	.zero	4
	.quad	.LC85
	.quad	.LC85
	.long	1
	.zero	4
	.quad	.LC86
	.quad	.LC86
	.long	1
	.zero	4
	.quad	.LC87
	.quad	.LC87
	.long	1
	.zero	4
	.quad	.LC88
	.quad	.LC88
	.long	1
	.zero	4
	.quad	.LC89
	.quad	.LC90
	.long	1
	.zero	4
	.quad	.LC91
	.quad	.LC92
	.long	1
	.zero	4
	.quad	.LC93
	.quad	.LC91
	.long	1
	.zero	4
	.quad	.LC94
	.quad	.LC95
	.long	2
	.zero	4
	.quad	.LC96
	.quad	.LC95
	.long	1
	.zero	4
	.section	.rodata
	.align 8
.LC97:
	.string	"store = ossl_method_store_new(NULL)"
.LC98:
	.string	"n"
.LC99:
	.string	"tomorrow"
.LC100:
	.string	"today"
.LC101:
	.string	"sky"
	.align 8
.LC102:
	.string	"p = ossl_parse_property(NULL, parser_tests[n].defn)"
	.align 8
.LC103:
	.string	"q = ossl_parse_query(NULL, parser_tests[n].query, 0)"
.LC104:
	.string	"parser_tests[n].e"
	.align 8
.LC105:
	.string	"ossl_property_match_count(q, p)"
	.text
	.type	test_property_parse, @function
test_property_parse:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, %edi
	call	ossl_method_store_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$156, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	leaq	.LC98(%rip), %r8
	leaq	.LC99(%rip), %rdi
	leaq	.LC100(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC62(%rip), %rsi
	leaq	.LC101(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	add_property_names
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L20
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	parser_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_property@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC102(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$159, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+parser_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_query@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC103(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$160, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+parser_tests(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_match_count@PLT
	movl	%eax, %esi
	leaq	.LC104(%rip), %rcx
	leaq	.LC105(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L20
	movl	$1, -36(%rbp)
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	test_property_parse, .-test_property_parse
	.section	.rodata
.LC106:
	.string	"wood"
.LC107:
	.string	"wood=oak"
	.align 8
.LC108:
	.string	"p = ossl_parse_query(NULL, \"wood=oak\", 0)"
	.align 8
.LC109:
	.string	"q = ossl_parse_query(NULL, \"wood=oak\", 1)"
	.align 8
.LC110:
	.string	"o = ossl_parse_query(NULL, \"wood=oak\", 0)"
.LC111:
	.string	"-1"
.LC112:
	.string	"1"
	.align 8
.LC113:
	.string	"ossl_property_match_count(q, o)"
	.text
	.type	test_property_query_value_create, @function
test_property_query_value_create:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, %edi
	call	ossl_method_store_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$176, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	leaq	.LC106(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	add_property_names
	testl	%eax, %eax
	je	.L23
	leaq	.LC107(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_query@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC108(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$178, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	leaq	.LC107(%rip), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_query@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC109(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$179, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	leaq	.LC107(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_query@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC110(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$180, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L23
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_match_count@PLT
	movl	%eax, %esi
	leaq	.LC111(%rip), %rcx
	leaq	.LC105(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$181, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L23
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_match_count@PLT
	movl	%eax, %esi
	leaq	.LC112(%rip), %rcx
	leaq	.LC113(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$182, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L23
	movl	$1, -28(%rbp)
.L23:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	test_property_query_value_create, .-test_property_query_value_create
	.section	.rodata
.LC114:
	.string	"n=1, n=1"
.LC115:
	.string	"n=1, a=hi, n=1"
.LC116:
	.string	"n=1, a=bye, ?n=0"
.LC117:
	.string	"a=abc,#@!, n=1"
.LC118:
	.string	"a='Hello"
.LC119:
	.string	"a=\"World"
.LC120:
	.string	"a=_abd_"
.LC121:
	.string	"a=2, n=012345678"
.LC122:
	.string	"n=0x28FG, a=3"
.LC123:
	.string	"n=145d, a=2"
.LC124:
	.string	"n=0x8000000000000000, a=3"
.LC125:
	.string	"n=922337203000000000d, a=2"
.LC126:
	.string	"a=2, n=1000000000000000000000"
.LC127:
	.string	"@='hello'"
	.align 8
.LC128:
	.string	"n0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789=yes"
.LC129:
	.string	".n=3"
.LC130:
	.string	"fnord.fnord.=3"
	.section	.data.rel.ro.local
	.align 32
	.type	parse_error_tests, @object
	.size	parse_error_tests, 272
parse_error_tests:
	.long	0
	.zero	4
	.quad	.LC114
	.long	0
	.zero	4
	.quad	.LC115
	.long	1
	.zero	4
	.quad	.LC116
	.long	0
	.zero	4
	.quad	.LC117
	.long	1
	.zero	4
	.quad	.LC118
	.long	0
	.zero	4
	.quad	.LC119
	.long	0
	.zero	4
	.quad	.LC120
	.long	1
	.zero	4
	.quad	.LC121
	.long	0
	.zero	4
	.quad	.LC122
	.long	0
	.zero	4
	.quad	.LC123
	.long	0
	.zero	4
	.quad	.LC124
	.long	0
	.zero	4
	.quad	.LC125
	.long	0
	.zero	4
	.quad	.LC126
	.long	1
	.zero	4
	.quad	.LC127
	.long	1
	.zero	4
	.quad	.LC128
	.long	0
	.zero	4
	.quad	.LC129
	.long	1
	.zero	4
	.quad	.LC130
	.section	.rodata
.LC131:
	.string	"a"
	.align 8
.LC132:
	.string	"p = ossl_parse_query(NULL, ps, 1)"
	.align 8
.LC133:
	.string	"p = ossl_parse_property(NULL, ps)"
	.text
	.type	test_property_parse_error, @function
test_property_parse_error:
.LFB515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, %edi
	call	ossl_method_store_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$224, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	leaq	.LC98(%rip), %rcx
	leaq	.LC131(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	add_property_names
	testl	%eax, %eax
	je	.L32
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+parse_error_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	parse_error_tests(%rip), %rax
	movl	(%rdx,%rax), %eax
	testl	%eax, %eax
	je	.L29
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_query@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC132(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$229, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L30
	jmp	.L28
.L29:
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_property@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC133(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$231, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L33
.L30:
	movl	$1, -12(%rbp)
	jmp	.L28
.L32:
	nop
	jmp	.L28
.L33:
	nop
.L28:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE515:
	.size	test_property_parse_error, .-test_property_parse_error
	.section	.rodata
.LC134:
	.string	"colour=blue"
.LC135:
	.string	"colour=red"
.LC136:
	.string	"clouds=pink, urn=red"
.LC137:
	.string	"urn=blue, colour=green"
	.align 8
.LC138:
	.string	"urn=blue, colour=green, clouds=pink"
.LC139:
	.string	"pot=gold"
.LC140:
	.string	"urn=blue"
.LC141:
	.string	"pot=gold, urn=blue"
.LC142:
	.string	"night"
.LC143:
	.string	"day"
.LC144:
	.string	"day=yes, night=yes"
.LC145:
	.string	"day=yes"
.LC146:
	.string	"-day"
.LC147:
	.string	"day=no"
.LC148:
	.string	"day=arglebargle"
.LC149:
	.string	"pot=sesquioxidizing"
.LC150:
	.string	"day, night"
.LC151:
	.string	"-night, day"
.LC152:
	.string	"day=yes, night=no"
	.section	.data.rel.ro.local
	.align 32
	.type	merge_tests, @object
	.size	merge_tests, 336
merge_tests:
	.quad	.LC59
	.quad	.LC134
	.quad	.LC134
	.quad	.LC134
	.quad	.LC59
	.quad	.LC134
	.quad	.LC135
	.quad	.LC134
	.quad	.LC134
	.quad	.LC136
	.quad	.LC137
	.quad	.LC138
	.quad	.LC139
	.quad	.LC140
	.quad	.LC141
	.quad	.LC142
	.quad	.LC143
	.quad	.LC144
	.quad	.LC143
	.quad	.LC142
	.quad	.LC144
	.quad	.LC59
	.quad	.LC59
	.quad	.LC59
	.quad	.LC145
	.quad	.LC146
	.quad	.LC147
	.quad	.LC145
	.quad	.LC146
	.quad	.LC145
	.quad	.LC145
	.quad	.LC146
	.quad	.LC148
	.quad	.LC145
	.quad	.LC146
	.quad	.LC149
	.quad	.LC150
	.quad	.LC151
	.quad	.LC152
	.quad	.LC146
	.quad	.LC145
	.quad	.LC145
	.section	.rodata
.LC153:
	.string	"pot"
.LC154:
	.string	"clouds"
.LC155:
	.string	"urn"
.LC156:
	.string	"colour"
	.align 8
.LC157:
	.string	"prop = ossl_parse_property(NULL, merge_tests[n].prop)"
	.align 8
.LC158:
	.string	"q_global = ossl_parse_query(NULL, merge_tests[n].q_global, 0)"
	.align 8
.LC159:
	.string	"q_local = ossl_parse_query(NULL, merge_tests[n].q_local, 0)"
	.align 8
.LC160:
	.string	"q_combined = ossl_property_merge(q_local, q_global)"
	.align 8
.LC161:
	.string	"ossl_property_match_count(q_combined, prop)"
	.text
	.type	test_property_merge, @function
test_property_merge:
.LFB516:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, %edi
	call	ossl_method_store_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$274, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	leaq	.LC142(%rip), %r8
	leaq	.LC143(%rip), %rdi
	leaq	.LC153(%rip), %rcx
	leaq	.LC154(%rip), %rdx
	leaq	.LC155(%rip), %rsi
	leaq	.LC156(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	add_property_names
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L35
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+merge_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_property@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC157(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$277, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	merge_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_query@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC158(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$278, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+merge_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_query@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC159(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$280, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_merge@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC160(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$281, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L35
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_match_count@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC161(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$282, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	testl	%eax, %eax
	je	.L35
	movl	$1, -36(%rbp)
.L35:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE516:
	.size	test_property_merge, .-test_property_merge
	.section	.rodata
.LC162:
	.string	"blue"
.LC163:
	.string	"red"
	.align 8
.LC164:
	.string	"red = ossl_parse_property(NULL, \"red\")"
	.align 8
.LC165:
	.string	"blue = ossl_parse_property(NULL, \"blue\")"
	.align 8
.LC166:
	.string	"ossl_prop_defn_set(NULL, \"red\", &red)"
	.align 8
.LC167:
	.string	"ossl_prop_defn_set(NULL, \"blue\", &blue)"
	.align 8
.LC168:
	.string	"ossl_prop_defn_get(NULL, \"red\")"
	.align 8
.LC169:
	.string	"ossl_prop_defn_get(NULL, \"blue\")"
	.align 8
.LC170:
	.string	"blue2 = ossl_parse_property(NULL, \"blue\")"
.LC171:
	.string	"blue2"
	.align 8
.LC172:
	.string	"ossl_prop_defn_set(NULL, \"blue\", &blue2)"
	.text
	.type	test_property_defn_cache, @function
test_property_defn_cache:
.LFB517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, %edi
	call	ossl_method_store_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$298, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC162(%rip), %rcx
	leaq	.LC163(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	add_property_names
	testl	%eax, %eax
	je	.L38
	leaq	.LC163(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_property@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC164(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$300, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC162(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_property@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC165(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$301, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L38
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC162(%rip), %rcx
	leaq	.LC163(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$302, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-40(%rbp), %rax
	leaq	.LC163(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %edi
	call	ossl_prop_defn_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC166(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$303, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L38
	movl	$1, %eax
	jmp	.L39
.L38:
	movl	$0, %eax
.L39:
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L40
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	$0, -48(%rbp)
.L40:
	cmpl	$0, -28(%rbp)
	je	.L41
	leaq	-48(%rbp), %rax
	leaq	.LC162(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %edi
	call	ossl_prop_defn_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC167(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$312, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	movl	$1, %eax
	jmp	.L42
.L41:
	movl	$0, %eax
.L42:
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L43
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	$0, -48(%rbp)
.L43:
	cmpl	$0, -28(%rbp)
	je	.L44
	movq	-40(%rbp), %rbx
	leaq	.LC163(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_prop_defn_get@PLT
	movq	%rax, %rsi
	leaq	.LC163(%rip), %rcx
	leaq	.LC168(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$318, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L44
	movq	-48(%rbp), %rbx
	leaq	.LC162(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_prop_defn_get@PLT
	movq	%rax, %rsi
	leaq	.LC162(%rip), %rcx
	leaq	.LC169(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$319, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L44
	leaq	.LC162(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_property@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	.LC170(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$320, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L44
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC162(%rip), %rcx
	leaq	.LC171(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$321, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-56(%rbp), %rax
	leaq	.LC162(%rip), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movl	$0, %edi
	call	ossl_prop_defn_set@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC172(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$322, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L44
	movl	$1, %eax
	jmp	.L45
.L44:
	movl	$0, %eax
.L45:
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L46
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	$0, -56(%rbp)
.L46:
	cmpl	$0, -28(%rbp)
	je	.L47
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC162(%rip), %rcx
	leaq	.LC171(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$328, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L47
	movq	-48(%rbp), %rbx
	leaq	.LC162(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_prop_defn_get@PLT
	movq	%rax, %rsi
	leaq	.LC162(%rip), %rcx
	leaq	.LC169(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rbx, %r9
	movq	%rsi, %r8
	movl	$329, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE517:
	.size	test_property_defn_cache, .-test_property_defn_cache
	.section	.rodata
.LC173:
	.string	"alpha"
.LC174:
	.string	"alpha=yes"
.LC175:
	.string	"alpha=no"
.LC176:
	.string	"alpha=1"
.LC177:
	.string	"alpha=2"
.LC178:
	.string	"omega"
.LC179:
	.string	"?omega"
.LC180:
	.string	"?omega=1"
.LC181:
	.string	"?omega=no"
.LC182:
	.string	"?omega=yes"
.LC183:
	.string	"alpha, omega"
	.section	.data.rel.ro.local
	.align 32
	.type	definition_tests, @object
	.size	definition_tests, 264
definition_tests:
	.quad	.LC173
	.quad	.LC174
	.long	1
	.zero	4
	.quad	.LC175
	.quad	.LC173
	.long	-1
	.zero	4
	.quad	.LC176
	.quad	.LC176
	.long	1
	.zero	4
	.quad	.LC177
	.quad	.LC176
	.long	-1
	.zero	4
	.quad	.LC173
	.quad	.LC178
	.long	-1
	.zero	4
	.quad	.LC173
	.quad	.LC179
	.long	0
	.zero	4
	.quad	.LC173
	.quad	.LC180
	.long	0
	.zero	4
	.quad	.LC173
	.quad	.LC181
	.long	1
	.zero	4
	.quad	.LC173
	.quad	.LC182
	.long	0
	.zero	4
	.quad	.LC183
	.quad	.LC182
	.long	1
	.zero	4
	.quad	.LC183
	.quad	.LC181
	.long	0
	.zero	4
	.section	.rodata
	.align 8
.LC184:
	.string	"d = ossl_parse_property(NULL, definition_tests[n].defn)"
	.align 8
.LC185:
	.string	"q = ossl_parse_query(NULL, definition_tests[n].query, 0)"
.LC186:
	.string	"definition_tests[n].e"
	.align 8
.LC187:
	.string	"ossl_property_match_count(q, d)"
	.text
	.type	test_definition_compares, @function
test_definition_compares:
.LFB518:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, %edi
	call	ossl_method_store_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$359, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
	leaq	.LC178(%rip), %rcx
	leaq	.LC173(%rip), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	add_property_names
	testl	%eax, %eax
	je	.L51
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	definition_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_property@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC184(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$361, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+definition_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_query@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$362, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L51
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+definition_tests(%rip), %rax
	movl	(%rdx,%rax), %ebx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ossl_property_match_count@PLT
	movl	%eax, %esi
	leaq	.LC186(%rip), %rcx
	leaq	.LC187(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%ebx, %r9d
	movl	%esi, %r8d
	movl	$363, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L51
	movl	$1, %eax
	jmp	.L52
.L51:
	movl	$0, %eax
.L52:
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE518:
	.size	test_definition_compares, .-test_definition_compares
	.section	.rodata
.LC188:
	.string	"position"
	.align 8
.LC189:
	.string	"ossl_method_store_add(store, &prov, impls[i].nid, impls[i].prop, impls[i].impl, &up_ref, &down_ref)"
.LC190:
	.string	"iteration %zd"
	.align 8
.LC191:
	.string	"ossl_method_store_remove(store, nid, impl)"
.LC192:
	.string	"iteration %zd, position %zd"
	.align 8
.LC193:
	.string	"ossl_method_store_remove(store, impls[0].nid, impls[0].impl)"
	.text
	.type	test_register_deregister, @function
test_register_deregister:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -12(%rbp)
	movl	$1, -52(%rbp)
	movl	$0, %edi
	call	ossl_method_store_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$388, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L66
	leaq	.LC188(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	add_property_names
	testl	%eax, %eax
	je	.L66
	movq	$0, -8(%rbp)
	jmp	.L58
.L60:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+impls.6(%rip), %rax
	movq	(%rdx,%rax), %r8
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	8+impls.6(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	impls.6(%rip), %rax
	movl	(%rdx,%rax), %edx
	leaq	up_ref(%rip), %r9
	leaq	-52(%rbp), %rsi
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	leaq	down_ref(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_method_store_add@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC189(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$393, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L59
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	.LC190(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L57
.L59:
	addq	$1, -8(%rbp)
.L58:
	cmpq	$3, -8(%rbp)
	jbe	.L60
	movq	$0, -8(%rbp)
	jmp	.L61
.L64:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	andl	$3, %eax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	impls.6(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	leaq	16+impls.6(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_method_store_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC191(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$406, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_method_store_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC191(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$407, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L63
.L62:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	leaq	.LC192(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L57
.L63:
	addq	$1, -8(%rbp)
.L61:
	cmpq	$3, -8(%rbp)
	jbe	.L64
	movq	16+impls.6(%rip), %rdx
	movl	impls.6(%rip), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ossl_method_store_remove@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC193(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$413, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L67
	movl	$1, -12(%rbp)
	jmp	.L57
.L66:
	nop
	jmp	.L57
.L67:
	nop
.L57:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	test_register_deregister, .-test_register_deregister
	.section	.rodata
.LC194:
	.string	"furry"
.LC195:
	.string	"fast"
	.align 8
.LC196:
	.string	"ossl_method_store_add(store, *impls[i].prov, impls[i].nid, impls[i].prop, impls[i].impl, &up_ref, &down_ref)"
	.align 8
.LC197:
	.string	"ossl_method_store_fetch(store, queries[i].nid, queries[i].prop, &nullprov, &result)"
.LC198:
	.string	"queries[i].expected"
.LC199:
	.string	"(char *)result"
	.align 8
.LC200:
	.string	"ossl_method_store_fetch(store, queries[i].nid, queries[i].prop, &fake_prov1, &result)"
.LC201:
	.string	"&fake_provider1"
.LC202:
	.string	"fake_prov1"
.LC203:
	.string	"result"
	.align 8
.LC204:
	.string	"ossl_method_store_fetch(store, queries[i].nid, queries[i].prop, &fake_prov2, &result)"
.LC205:
	.string	"&fake_provider2"
.LC206:
	.string	"fake_prov2"
	.text
	.type	test_property, @function
test_property:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -12(%rbp)
	movl	$0, %edi
	call	ossl_method_store_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$462, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L92
	leaq	.LC194(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC156(%rip), %rsi
	leaq	.LC195(%rip), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	add_property_names
	testl	%eax, %eax
	je	.L92
	movq	$0, -8(%rbp)
	jmp	.L72
.L74:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+impls.5(%rip), %rax
	movq	(%rdx,%rax), %r8
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+impls.5(%rip), %rax
	movq	(%rdx,%rax), %rcx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	8+impls.5(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rsi
	leaq	impls.5(%rip), %rax
	movq	(%rsi,%rax), %rax
	movq	(%rax), %rsi
	leaq	up_ref(%rip), %r9
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	leaq	down_ref(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_method_store_add@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC196(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$467, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L73
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	.LC190(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L71
.L73:
	addq	$1, -8(%rbp)
.L72:
	cmpq	$5, -8(%rbp)
	jbe	.L74
	movq	$0, -8(%rbp)
	jmp	.L75
.L78:
	movq	$0, -64(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+queries.4(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	8+queries.4(%rip), %rax
	movl	(%rcx,%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_method_store_fetch@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC197(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$482, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L76
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+queries.4(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC198(%rip), %rcx
	leaq	.LC199(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$485, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L77
.L76:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	.LC190(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	jmp	.L71
.L77:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	addq	$1, -8(%rbp)
.L75:
	cmpq	$10, -8(%rbp)
	jbe	.L78
	movq	$0, -8(%rbp)
	jmp	.L79
.L84:
	movq	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	queries.4(%rip), %rax
	movq	(%rdx,%rax), %rdx
	leaq	fake_prov1.3(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L80
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+queries.4(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	8+queries.4(%rip), %rax
	movl	(%rcx,%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	fake_prov1.3(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_method_store_fetch@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC200(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$500, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L81
	movq	fake_prov1.3(%rip), %rsi
	leaq	fake_provider1.2(%rip), %rdi
	leaq	.LC201(%rip), %rcx
	leaq	.LC202(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$504, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L81
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+queries.4(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC198(%rip), %rcx
	leaq	.LC199(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$505, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L82
.L81:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	.LC190(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	jmp	.L71
.L80:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+queries.4(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	8+queries.4(%rip), %rax
	movl	(%rcx,%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	fake_prov1.3(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_method_store_fetch@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC200(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$511, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L83
	movq	fake_prov1.3(%rip), %rsi
	leaq	fake_provider1.2(%rip), %rdi
	leaq	.LC201(%rip), %rcx
	leaq	.LC202(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$515, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L83
	movq	-56(%rbp), %rax
	leaq	.LC203(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$516, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L82
.L83:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	.LC190(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	jmp	.L71
.L82:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	addq	$1, -8(%rbp)
.L79:
	cmpq	$10, -8(%rbp)
	jbe	.L84
	movq	$0, -8(%rbp)
	jmp	.L85
.L90:
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	queries.4(%rip), %rax
	movq	(%rdx,%rax), %rdx
	leaq	fake_prov2.1(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L86
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+queries.4(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	8+queries.4(%rip), %rax
	movl	(%rcx,%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	fake_prov2.1(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_method_store_fetch@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC204(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$532, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L87
	movq	fake_prov2.1(%rip), %rsi
	leaq	fake_provider2.0(%rip), %rdi
	leaq	.LC205(%rip), %rcx
	leaq	.LC206(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$536, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L87
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	24+queries.4(%rip), %rax
	movq	(%rdx,%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	.LC198(%rip), %rcx
	leaq	.LC199(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$537, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L88
.L87:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	.LC190(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	jmp	.L71
.L86:
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	16+queries.4(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	8+queries.4(%rip), %rax
	movl	(%rcx,%rax), %esi
	leaq	-56(%rbp), %rdi
	leaq	fake_prov2.1(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ossl_method_store_fetch@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC204(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$543, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L89
	movq	fake_prov2.1(%rip), %rsi
	leaq	fake_provider2.0(%rip), %rdi
	leaq	.LC205(%rip), %rcx
	leaq	.LC206(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$547, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L89
	movq	-56(%rbp), %rax
	leaq	.LC203(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$548, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L88
.L89:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	.LC190(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_note@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	jmp	.L71
.L88:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	addq	$1, -8(%rbp)
.L85:
	cmpq	$10, -8(%rbp)
	jbe	.L90
	movl	$1, -12(%rbp)
	jmp	.L71
.L92:
	nop
.L71:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	test_property, .-test_property
	.section	.rodata
.LC207:
	.string	"n=%d\n"
.LC208:
	.string	"abc"
	.align 8
.LC209:
	.string	"ossl_method_store_add(store, &prov, i, buf, \"abc\", &up_ref, &down_ref)"
	.align 8
.LC210:
	.string	"ossl_method_store_cache_set(store, &prov, i, buf, v + i, &up_ref, &down_ref)"
.LC211:
	.string	"miss"
.LC212:
	.string	"n=1234"
	.align 8
.LC213:
	.string	"ossl_method_store_cache_set(store, &prov, i, \"n=1234\", \"miss\", &up_ref, &down_ref)"
.LC214:
	.string	"iteration %d"
.LC215:
	.string	"tail"
.LC216:
	.string	"errors"
.LC217:
	.string	"max - tail"
	.text
	.type	test_query_cache_stochastic, @function
test_query_cache_stochastic:
.LFB521:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40128, %rsp
	movl	$10000, -16(%rbp)
	movl	$10, -20(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$1, -40116(%rbp)
	movl	$0, %edi
	call	ossl_method_store_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC97(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$573, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L108
	leaq	.LC98(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	add_property_names
	testl	%eax, %eax
	je	.L108
	movl	$1, -4(%rbp)
	jmp	.L97
.L100:
	movl	-4(%rbp), %eax
	leal	(%rax,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, -40112(%rbp,%rax,4)
	movl	-4(%rbp), %edx
	leaq	.LC207(%rip), %rsi
	leaq	-96(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	up_ref(%rip), %r9
	leaq	.LC208(%rip), %r8
	leaq	-96(%rbp), %rcx
	movl	-4(%rbp), %edx
	leaq	-40116(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	leaq	down_ref(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_method_store_add@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC209(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$580, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L98
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-40112(%rbp), %rax
	leaq	(%rax,%rdx), %r8
	leaq	up_ref(%rip), %r9
	leaq	-96(%rbp), %rcx
	movl	-4(%rbp), %edx
	leaq	-40116(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	leaq	down_ref(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_method_store_cache_set@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC210(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$582, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L98
	leaq	up_ref(%rip), %r9
	leaq	.LC211(%rip), %r8
	leaq	.LC212(%rip), %rcx
	movl	-4(%rbp), %edx
	leaq	-40116(%rbp), %rsi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	leaq	down_ref(%rip), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ossl_method_store_cache_set@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC213(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$585, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L99
.L98:
	movl	-4(%rbp), %eax
	leaq	.LC214(%rip), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	test_note@PLT
	jmp	.L96
.L99:
	addl	$1, -4(%rbp)
.L97:
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L100
	movl	$1, -4(%rbp)
	jmp	.L101
.L104:
	movl	-4(%rbp), %edx
	leaq	.LC207(%rip), %rsi
	leaq	-96(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$50, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	leaq	-104(%rbp), %rsi
	leaq	-96(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_method_store_cache_get@PLT
	testl	%eax, %eax
	je	.L102
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-40112(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L103
.L102:
	addl	$1, -12(%rbp)
.L103:
	addl	$1, -4(%rbp)
.L101:
	movl	-4(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.L104
	movl	-20(%rbp), %edi
	movl	-12(%rbp), %esi
	leaq	.LC215(%rip), %rcx
	leaq	.LC216(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$599, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L105
	movl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, %edi
	movl	-12(%rbp), %esi
	leaq	.LC217(%rip), %rcx
	leaq	.LC216(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$599, %esi
	movq	%rax, %rdi
	call	test_int_lt@PLT
	testl	%eax, %eax
	je	.L105
	movl	$1, %eax
	jmp	.L106
.L105:
	movl	$0, %eax
.L106:
	movl	%eax, -8(%rbp)
	jmp	.L96
.L108:
	nop
.L96:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_method_store_free@PLT
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE521:
	.size	test_query_cache_stochastic, .-test_query_cache_stochastic
	.section	.rodata
.LC218:
	.string	"default=yes,fips=yes"
	.align 8
.LC219:
	.string	"EVP_set_default_properties(ctx, \"default=yes,fips=yes\")"
	.align 8
.LC220:
	.string	"EVP_default_properties_is_fips_enabled(ctx)"
.LC221:
	.string	"fips=no,default=yes"
	.align 8
.LC222:
	.string	"EVP_set_default_properties(ctx, \"fips=no,default=yes\")"
.LC223:
	.string	"fips=no"
	.align 8
.LC224:
	.string	"EVP_set_default_properties(ctx, \"fips=no\")"
.LC225:
	.string	"fips!=no"
	.align 8
.LC226:
	.string	"EVP_set_default_properties(ctx, \"fips!=no\")"
	.align 8
.LC227:
	.string	"EVP_default_properties_enable_fips(ctx, 1)"
	.align 8
.LC228:
	.string	"EVP_default_properties_enable_fips(ctx, 0)"
	.text
	.type	test_fips_mode, @function
test_fips_mode:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$611, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L115
	leaq	.LC218(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC219(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$614, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_default_properties_is_fips_enabled@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC220(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$615, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	.LC221(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC222(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$616, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_default_properties_is_fips_enabled@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC220(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$617, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L112
	leaq	.LC223(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC224(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$618, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_default_properties_is_fips_enabled@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC220(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$619, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L112
	leaq	.LC225(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC226(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$620, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_default_properties_is_fips_enabled@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC220(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$621, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	leaq	.LC223(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC224(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$622, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_default_properties_is_fips_enabled@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC220(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$623, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L112
	leaq	.LC221(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	EVP_set_default_properties@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC222(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$624, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	EVP_default_properties_enable_fips@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC227(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$625, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_default_properties_is_fips_enabled@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC220(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$626, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	EVP_default_properties_enable_fips@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC228(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$627, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L112
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	EVP_default_properties_is_fips_enabled@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC220(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$628, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L112
	movl	$1, %eax
	jmp	.L113
.L112:
	movl	$0, %eax
.L113:
	movl	%eax, -4(%rbp)
	jmp	.L111
.L115:
	nop
.L111:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_LIB_CTX_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	test_fips_mode, .-test_fips_mode
	.section	.rodata
.LC229:
	.string	"fips=yes"
.LC230:
	.string	"fips!=yes"
.LC231:
	.string	"fips = yes"
.LC232:
	.string	"-fips"
.LC233:
	.string	"?fips=yes"
.LC234:
	.string	"fips=yes,provider=fips"
.LC235:
	.string	"fips = yes , provider = fips"
.LC236:
	.string	"fips=yes,provider!=fips"
.LC237:
	.string	"fips=yes,?provider=fips"
.LC238:
	.string	"fips=yes,-provider"
.LC239:
	.string	"foo=yes,fips=yes"
.LC240:
	.string	"fips=3"
.LC241:
	.string	"fips=-3"
.LC242:
	.string	"provider='foo bar'"
.LC243:
	.string	"provider=\"foo bar'\""
.LC244:
	.string	"provider=abc***"
.LC245:
	.string	"provider='abc***'"
	.section	.data.rel.local,"aw"
	.align 32
	.type	to_string_tests, @object
	.size	to_string_tests, 320
to_string_tests:
	.quad	.LC229
	.quad	.LC229
	.quad	.LC230
	.quad	.LC230
	.quad	.LC231
	.quad	.LC229
	.quad	.LC16
	.quad	.LC229
	.quad	.LC223
	.quad	.LC223
	.quad	.LC232
	.quad	.LC232
	.quad	.LC233
	.quad	.LC233
	.quad	.LC234
	.quad	.LC234
	.quad	.LC235
	.quad	.LC234
	.quad	.LC236
	.quad	.LC236
	.quad	.LC237
	.quad	.LC237
	.quad	.LC238
	.quad	.LC238
	.quad	.LC239
	.quad	.LC229
	.quad	.LC59
	.quad	.LC59
	.quad	.LC240
	.quad	.LC240
	.quad	.LC241
	.quad	.LC241
	.quad	.LC242
	.quad	.LC242
	.quad	.LC243
	.quad	.LC243
	.quad	.LC244
	.quad	.LC245
	.quad	0
	.quad	.LC59
	.section	.rodata
	.align 8
.LC246:
	.string	"pl = ossl_parse_query(NULL, to_string_tests[i].in, 1)"
.LC247:
	.string	"bufsize"
.LC248:
	.string	"buf"
	.align 8
.LC249:
	.string	"ossl_property_list_to_string(NULL, pl, buf, bufsize)"
.LC250:
	.string	"to_string_tests[i].out"
	.align 8
.LC251:
	.string	"strlen(to_string_tests[i].out) + 1"
	.text
	.type	test_property_list_to_string, @function
test_property_list_to_string:
.LFB523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	$0, -24(%rbp)
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	to_string_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L117
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	to_string_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_query@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC246(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$669, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L123
.L117:
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_property_list_to_string@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	leaq	.LC0(%rip), %rcx
	leaq	.LC247(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$672, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	testl	%eax, %eax
	je	.L124
	leaq	.LC2(%rip), %rcx
	movq	-32(%rbp), %rax
	movl	$674, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC248(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$675, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L125
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_property_list_to_string@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC247(%rip), %rcx
	leaq	.LC249(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$676, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L125
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+to_string_tests(%rip), %rax
	movq	(%rdx,%rax), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC248(%rip), %rcx
	leaq	.LC250(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$679, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L125
	movl	-36(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	8+to_string_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	leaq	1(%rax), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC251(%rip), %rcx
	leaq	.LC247(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$680, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L125
	movl	$1, -12(%rbp)
	jmp	.L118
.L123:
	nop
	jmp	.L118
.L124:
	nop
	jmp	.L118
.L125:
	nop
.L118:
	leaq	.LC2(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$685, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE523:
	.size	test_property_list_to_string, .-test_property_list_to_string
	.section	.rodata
.LC252:
	.string	"provider='$1'"
	.align 8
.LC253:
	.string	"pl = ossl_parse_query(NULL, \"provider='$1'\", 1)"
.LC254:
	.string	"14"
	.align 8
.LC255:
	.string	"ossl_property_list_to_string(NULL, pl, buf, 10)"
	.text
	.type	test_property_list_to_string_bounds, @function
test_property_list_to_string_bounds:
.LFB524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC252(%rip), %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_parse_query@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC253(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$696, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L131
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ossl_property_list_to_string@PLT
	movq	%rax, %rsi
	leaq	.LC254(%rip), %rcx
	leaq	.LC255(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$14, %r9d
	movq	%rsi, %r8
	movl	$698, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L132
	movl	$1, -4(%rbp)
	jmp	.L128
.L131:
	nop
	jmp	.L128
.L132:
	nop
.L128:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_property_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE524:
	.size	test_property_list_to_string_bounds, .-test_property_list_to_string_bounds
	.section	.rodata
.LC256:
	.string	"test_property_string"
	.align 8
.LC257:
	.string	"test_property_query_value_create"
.LC258:
	.string	"test_property_parse"
.LC259:
	.string	"test_property_parse_error"
.LC260:
	.string	"test_property_merge"
.LC261:
	.string	"test_property_defn_cache"
.LC262:
	.string	"test_definition_compares"
.LC263:
	.string	"test_register_deregister"
.LC264:
	.string	"test_property"
.LC265:
	.string	"test_query_cache_stochastic"
.LC266:
	.string	"test_fips_mode"
.LC267:
	.string	"test_property_list_to_string"
	.align 8
.LC268:
	.string	"test_property_list_to_string_bounds"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB525:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_property_string(%rip), %rdx
	leaq	.LC256(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_property_query_value_create(%rip), %rdx
	leaq	.LC257(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_property_parse(%rip), %rsi
	leaq	.LC258(%rip), %rax
	movl	$1, %ecx
	movl	$34, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_property_parse_error(%rip), %rsi
	leaq	.LC259(%rip), %rax
	movl	$1, %ecx
	movl	$17, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_property_merge(%rip), %rsi
	leaq	.LC260(%rip), %rax
	movl	$1, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_property_defn_cache(%rip), %rdx
	leaq	.LC261(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_definition_compares(%rip), %rsi
	leaq	.LC262(%rip), %rax
	movl	$1, %ecx
	movl	$11, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_register_deregister(%rip), %rdx
	leaq	.LC263(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_property(%rip), %rdx
	leaq	.LC264(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_query_cache_stochastic(%rip), %rdx
	leaq	.LC265(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_fips_mode(%rip), %rdx
	leaq	.LC266(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_property_list_to_string(%rip), %rsi
	leaq	.LC267(%rip), %rax
	movl	$1, %ecx
	movl	$20, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_property_list_to_string_bounds(%rip), %rdx
	leaq	.LC268(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE525:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC269:
	.string	"position=1"
.LC270:
	.string	"position=2"
.LC271:
	.string	"b"
.LC272:
	.string	"position=3"
.LC273:
	.string	"c"
.LC274:
	.string	"position=4"
.LC275:
	.string	"d"
	.section	.data.rel.ro.local
	.align 32
	.type	impls.6, @object
	.size	impls.6, 96
impls.6:
	.long	6
	.zero	4
	.quad	.LC269
	.quad	.LC131
	.long	6
	.zero	4
	.quad	.LC270
	.quad	.LC271
	.long	6
	.zero	4
	.quad	.LC272
	.quad	.LC273
	.long	6
	.zero	4
	.quad	.LC274
	.quad	.LC275
	.section	.rodata
.LC276:
	.string	"fast=no, colour=green"
.LC277:
	.string	"fast, colour=blue"
.LC278:
	.string	"-"
.LC279:
	.string	"sky=blue, furry"
	.align 8
.LC280:
	.string	"sky.colour=blue, sky=green, old.data"
.LC281:
	.string	"e"
	.section	.data.rel.ro.local
	.align 32
	.type	impls.5, @object
	.size	impls.5, 192
impls.5:
	.quad	fake_prov1.3
	.long	1
	.zero	4
	.quad	.LC276
	.quad	.LC131
	.quad	fake_prov1.3
	.long	1
	.zero	4
	.quad	.LC277
	.quad	.LC271
	.quad	fake_prov1.3
	.long	1
	.zero	4
	.quad	.LC59
	.quad	.LC278
	.quad	fake_prov2.1
	.long	9
	.zero	4
	.quad	.LC279
	.quad	.LC273
	.quad	fake_prov2.1
	.long	3
	.zero	4
	.quad	0
	.quad	.LC275
	.quad	fake_prov2.1
	.long	6
	.zero	4
	.quad	.LC280
	.quad	.LC281
	.section	.rodata
.LC282:
	.string	"fast=yes"
.LC283:
	.string	"colour=blue, fast"
.LC284:
	.string	"sky.colour=blue"
.LC285:
	.string	"old.data"
.LC286:
	.string	"furry=yes, sky=blue"
	.section	.data.rel.local
	.align 32
	.type	queries.4, @object
	.size	queries.4, 352
queries.4:
	.quad	fake_prov1.3
	.long	1
	.zero	4
	.quad	.LC195
	.quad	.LC271
	.quad	fake_prov1.3
	.long	1
	.zero	4
	.quad	.LC282
	.quad	.LC271
	.quad	fake_prov1.3
	.long	1
	.zero	4
	.quad	.LC276
	.quad	.LC131
	.quad	fake_prov1.3
	.long	1
	.zero	4
	.quad	.LC283
	.quad	.LC271
	.quad	fake_prov1.3
	.long	1
	.zero	4
	.quad	.LC134
	.quad	.LC271
	.quad	fake_prov2.1
	.long	9
	.zero	4
	.quad	.LC194
	.quad	.LC273
	.quad	fake_prov2.1
	.long	6
	.zero	4
	.quad	.LC284
	.quad	.LC281
	.quad	fake_prov2.1
	.long	6
	.zero	4
	.quad	.LC285
	.quad	.LC281
	.quad	fake_prov2.1
	.long	9
	.zero	4
	.quad	.LC286
	.quad	.LC273
	.quad	fake_prov1.3
	.long	1
	.zero	4
	.quad	.LC59
	.quad	.LC131
	.quad	fake_prov2.1
	.long	3
	.zero	4
	.quad	.LC59
	.quad	.LC275
	.align 8
	.type	fake_prov1.3, @object
	.size	fake_prov1.3, 8
fake_prov1.3:
	.quad	fake_provider1.2
	.data
	.align 4
	.type	fake_provider1.2, @object
	.size	fake_provider1.2, 4
fake_provider1.2:
	.long	1
	.section	.data.rel.local
	.align 8
	.type	fake_prov2.1, @object
	.size	fake_prov2.1, 8
fake_prov2.1:
	.quad	fake_provider2.0
	.data
	.align 4
	.type	fake_provider2.0, @object
	.size	fake_provider2.0, 4
fake_provider2.0:
	.long	2
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
