	.file	"test_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"# FATAL: %s != %d\n"
	.text
	.type	test_case, @function
test_case:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	je	.L2
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_case, .-test_case
	.section	.rodata
.LC1:
	.string	"1"
.LC2:
	.string	"../test/test_test.c"
.LC3:
	.string	"TEST_int_eq(1, 1)"
.LC4:
	.string	"-1"
.LC5:
	.string	"TEST_int_eq(1, -1)"
.LC6:
	.string	"2"
.LC7:
	.string	"TEST_int_ne(1, 2)"
.LC8:
	.string	"3"
.LC9:
	.string	"TEST_int_ne(3, 3)"
.LC10:
	.string	"9"
.LC11:
	.string	"4"
.LC12:
	.string	"TEST_int_lt(4, 9)"
.LC13:
	.string	"TEST_int_lt(9, 4)"
.LC14:
	.string	"TEST_int_le(4, 9)"
.LC15:
	.string	"5"
.LC16:
	.string	"TEST_int_le(5, 5)"
.LC17:
	.string	"TEST_int_le(9, 4)"
.LC18:
	.string	"8"
.LC19:
	.string	"TEST_int_gt(8, 5)"
.LC20:
	.string	"TEST_int_gt(5, 8)"
.LC21:
	.string	"TEST_int_ge(8, 5)"
.LC22:
	.string	"6"
.LC23:
	.string	"TEST_int_ge(6, 6)"
.LC24:
	.string	"TEST_int_ge(5, 8)"
	.text
	.type	test_int, @function
test_int:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC1(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$35, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, %edx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC4(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-1, %r9d
	movl	$1, %r8d
	movl	$36, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC6(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	$1, %r8d
	movl	$37, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	movl	%eax, %edx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC8(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3, %r9d
	movl	$3, %r8d
	movl	$38, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	movl	%eax, %edx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$9, %r9d
	movl	$4, %r8d
	movl	$39, %esi
	movq	%rax, %rdi
	call	test_int_lt@PLT
	movl	%eax, %edx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC11(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	$9, %r8d
	movl	$40, %esi
	movq	%rax, %rdi
	call	test_int_lt@PLT
	movl	%eax, %edx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$9, %r9d
	movl	$4, %r8d
	movl	$41, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	movl	%eax, %edx
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC15(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	$5, %r8d
	movl	$42, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	movl	%eax, %edx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC11(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	$9, %r8d
	movl	$43, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	movl	%eax, %edx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC15(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	$8, %r8d
	movl	$44, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	movl	%eax, %edx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC18(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8, %r9d
	movl	$5, %r8d
	movl	$45, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	movl	%eax, %edx
	leaq	.LC20(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC15(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	$8, %r8d
	movl	$46, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	movl	%eax, %edx
	leaq	.LC21(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC22(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$6, %r9d
	movl	$6, %r8d
	movl	$47, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	movl	%eax, %edx
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	leaq	.LC18(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8, %r9d
	movl	$5, %r8d
	movl	$48, %esi
	movq	%rax, %rdi
	call	test_int_ge@PLT
	movl	%eax, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L9
	movl	$1, %eax
	jmp	.L8
.L9:
	nop
.L7:
	movl	$0, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_int, .-test_int
	.section	.rodata
.LC25:
	.string	"3u"
.LC26:
	.string	"TEST_uint_eq(3u, 3u)"
.LC27:
	.string	"5u"
.LC28:
	.string	"TEST_uint_eq(3u, 5u)"
.LC29:
	.string	"2u"
.LC30:
	.string	"4u"
.LC31:
	.string	"TEST_uint_ne(4u, 2u)"
.LC32:
	.string	"6u"
.LC33:
	.string	"TEST_uint_ne(6u, 6u)"
.LC34:
	.string	"9u"
.LC35:
	.string	"TEST_uint_lt(5u, 9u)"
.LC36:
	.string	"TEST_uint_lt(9u, 5u)"
.LC37:
	.string	"TEST_uint_le(5u, 9u)"
.LC38:
	.string	"7u"
.LC39:
	.string	"TEST_uint_le(7u, 7u)"
.LC40:
	.string	"TEST_uint_le(9u, 5u)"
.LC41:
	.string	"1u"
.LC42:
	.string	"11u"
.LC43:
	.string	"TEST_uint_gt(11u, 1u)"
.LC44:
	.string	"TEST_uint_gt(1u, 11u)"
.LC45:
	.string	"TEST_uint_ge(11u, 1u)"
.LC46:
	.string	"TEST_uint_ge(6u, 6u)"
.LC47:
	.string	"TEST_uint_ge(1u, 11u)"
	.text
	.type	test_uint, @function
test_uint:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC25(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3, %r9d
	movl	$3, %r8d
	movl	$58, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	movl	%eax, %edx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC27(%rip), %rcx
	leaq	.LC25(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	$3, %r8d
	movl	$59, %esi
	movq	%rax, %rdi
	call	test_uint_eq@PLT
	movl	%eax, %edx
	leaq	.LC28(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC29(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	$4, %r8d
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_uint_ne@PLT
	movl	%eax, %edx
	leaq	.LC31(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC32(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$6, %r9d
	movl	$6, %r8d
	movl	$61, %esi
	movq	%rax, %rdi
	call	test_uint_ne@PLT
	movl	%eax, %edx
	leaq	.LC33(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC34(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$9, %r9d
	movl	$5, %r8d
	movl	$62, %esi
	movq	%rax, %rdi
	call	test_uint_lt@PLT
	movl	%eax, %edx
	leaq	.LC35(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC27(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	$9, %r8d
	movl	$63, %esi
	movq	%rax, %rdi
	call	test_uint_lt@PLT
	movl	%eax, %edx
	leaq	.LC36(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC34(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$9, %r9d
	movl	$5, %r8d
	movl	$64, %esi
	movq	%rax, %rdi
	call	test_uint_le@PLT
	movl	%eax, %edx
	leaq	.LC37(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC38(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$7, %r9d
	movl	$7, %r8d
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_uint_le@PLT
	movl	%eax, %edx
	leaq	.LC39(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC27(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	$9, %r8d
	movl	$66, %esi
	movq	%rax, %rdi
	call	test_uint_le@PLT
	movl	%eax, %edx
	leaq	.LC40(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	$11, %r8d
	movl	$67, %esi
	movq	%rax, %rdi
	call	test_uint_gt@PLT
	movl	%eax, %edx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC42(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$11, %r9d
	movl	$1, %r8d
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_uint_gt@PLT
	movl	%eax, %edx
	leaq	.LC44(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	$11, %r8d
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_uint_ge@PLT
	movl	%eax, %edx
	leaq	.LC45(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC32(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$6, %r9d
	movl	$6, %r8d
	movl	$70, %esi
	movq	%rax, %rdi
	call	test_uint_ge@PLT
	movl	%eax, %edx
	leaq	.LC46(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	leaq	.LC42(%rip), %rcx
	leaq	.LC41(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$11, %r9d
	movl	$1, %r8d
	movl	$71, %esi
	movq	%rax, %rdi
	call	test_uint_ge@PLT
	movl	%eax, %edx
	leaq	.LC47(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L15
	movl	$1, %eax
	jmp	.L14
.L15:
	nop
.L13:
	movl	$0, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_uint, .-test_uint
	.section	.rodata
.LC48:
	.string	"'a'"
.LC49:
	.string	"TEST_char_eq('a', 'a')"
.LC50:
	.string	"'A'"
.LC51:
	.string	"TEST_char_eq('a', 'A')"
.LC52:
	.string	"'c'"
.LC53:
	.string	"TEST_char_ne('a', 'c')"
.LC54:
	.string	"'e'"
.LC55:
	.string	"TEST_char_ne('e', 'e')"
.LC56:
	.string	"'x'"
.LC57:
	.string	"'i'"
.LC58:
	.string	"TEST_char_lt('i', 'x')"
.LC59:
	.string	"TEST_char_lt('x', 'i')"
.LC60:
	.string	"TEST_char_le('i', 'x')"
.LC61:
	.string	"'n'"
.LC62:
	.string	"TEST_char_le('n', 'n')"
.LC63:
	.string	"TEST_char_le('x', 'i')"
.LC64:
	.string	"'w'"
.LC65:
	.string	"TEST_char_gt('w', 'n')"
.LC66:
	.string	"TEST_char_gt('n', 'w')"
.LC67:
	.string	"TEST_char_ge('w', 'n')"
.LC68:
	.string	"'p'"
.LC69:
	.string	"TEST_char_ge('p', 'p')"
.LC70:
	.string	"TEST_char_ge('n', 'w')"
	.text
	.type	test_char, @function
test_char:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC48(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$97, %r9d
	movl	$97, %r8d
	movl	$81, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	movl	%eax, %edx
	leaq	.LC49(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC50(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$65, %r9d
	movl	$97, %r8d
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	movl	%eax, %edx
	leaq	.LC51(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC52(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$99, %r9d
	movl	$97, %r8d
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_char_ne@PLT
	movl	%eax, %edx
	leaq	.LC53(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC54(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$101, %r9d
	movl	$101, %r8d
	movl	$84, %esi
	movq	%rax, %rdi
	call	test_char_ne@PLT
	movl	%eax, %edx
	leaq	.LC55(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC56(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$120, %r9d
	movl	$105, %r8d
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_char_lt@PLT
	movl	%eax, %edx
	leaq	.LC58(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC57(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$105, %r9d
	movl	$120, %r8d
	movl	$86, %esi
	movq	%rax, %rdi
	call	test_char_lt@PLT
	movl	%eax, %edx
	leaq	.LC59(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC56(%rip), %rcx
	leaq	.LC57(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$120, %r9d
	movl	$105, %r8d
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_char_le@PLT
	movl	%eax, %edx
	leaq	.LC60(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC61(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$110, %r9d
	movl	$110, %r8d
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_char_le@PLT
	movl	%eax, %edx
	leaq	.LC62(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC57(%rip), %rcx
	leaq	.LC56(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$105, %r9d
	movl	$120, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_char_le@PLT
	movl	%eax, %edx
	leaq	.LC63(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC61(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$110, %r9d
	movl	$119, %r8d
	movl	$90, %esi
	movq	%rax, %rdi
	call	test_char_gt@PLT
	movl	%eax, %edx
	leaq	.LC65(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC64(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$119, %r9d
	movl	$110, %r8d
	movl	$91, %esi
	movq	%rax, %rdi
	call	test_char_gt@PLT
	movl	%eax, %edx
	leaq	.LC66(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC61(%rip), %rcx
	leaq	.LC64(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$110, %r9d
	movl	$119, %r8d
	movl	$92, %esi
	movq	%rax, %rdi
	call	test_char_ge@PLT
	movl	%eax, %edx
	leaq	.LC67(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC68(%rip), %rcx
	leaq	.LC68(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$112, %r9d
	movl	$112, %r8d
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_char_ge@PLT
	movl	%eax, %edx
	leaq	.LC69(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	leaq	.LC64(%rip), %rcx
	leaq	.LC61(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$119, %r9d
	movl	$110, %r8d
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_char_ge@PLT
	movl	%eax, %edx
	leaq	.LC70(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L21
	movl	$1, %eax
	jmp	.L20
.L21:
	nop
.L19:
	movl	$0, %eax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_char, .-test_char
	.section	.rodata
.LC71:
	.string	"49"
.LC72:
	.string	"TEST_uchar_eq(49, 49)"
.LC73:
	.string	"60"
.LC74:
	.string	"TEST_uchar_eq(49, 60)"
.LC75:
	.string	"50"
.LC76:
	.string	"TEST_uchar_ne(50, 2)"
.LC77:
	.string	"66"
.LC78:
	.string	"TEST_uchar_ne(66, 66)"
.LC79:
	.string	"80"
.LC80:
	.string	"TEST_uchar_lt(60, 80)"
.LC81:
	.string	"TEST_uchar_lt(80, 60)"
.LC82:
	.string	"TEST_uchar_le(60, 80)"
.LC83:
	.string	"78"
.LC84:
	.string	"TEST_uchar_le(78, 78)"
.LC85:
	.string	"TEST_uchar_le(80, 60)"
.LC86:
	.string	"37"
.LC87:
	.string	"88"
.LC88:
	.string	"TEST_uchar_gt(88, 37)"
.LC89:
	.string	"TEST_uchar_gt(37, 88)"
.LC90:
	.string	"TEST_uchar_ge(88, 37)"
.LC91:
	.string	"TEST_uchar_ge(66, 66)"
.LC92:
	.string	"TEST_uchar_ge(37, 88)"
	.text
	.type	test_uchar, @function
test_uchar:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC71(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$49, %r9d
	movl	$49, %r8d
	movl	$104, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	movl	%eax, %edx
	leaq	.LC72(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC73(%rip), %rcx
	leaq	.LC71(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$60, %r9d
	movl	$49, %r8d
	movl	$105, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	movl	%eax, %edx
	leaq	.LC74(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC6(%rip), %rcx
	leaq	.LC75(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	$50, %r8d
	movl	$106, %esi
	movq	%rax, %rdi
	call	test_uchar_ne@PLT
	movl	%eax, %edx
	leaq	.LC76(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC77(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$66, %r9d
	movl	$66, %r8d
	movl	$107, %esi
	movq	%rax, %rdi
	call	test_uchar_ne@PLT
	movl	%eax, %edx
	leaq	.LC78(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC79(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$80, %r9d
	movl	$60, %r8d
	movl	$108, %esi
	movq	%rax, %rdi
	call	test_uchar_lt@PLT
	movl	%eax, %edx
	leaq	.LC80(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC73(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$60, %r9d
	movl	$80, %r8d
	movl	$109, %esi
	movq	%rax, %rdi
	call	test_uchar_lt@PLT
	movl	%eax, %edx
	leaq	.LC81(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC79(%rip), %rcx
	leaq	.LC73(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$80, %r9d
	movl	$60, %r8d
	movl	$110, %esi
	movq	%rax, %rdi
	call	test_uchar_le@PLT
	movl	%eax, %edx
	leaq	.LC82(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC83(%rip), %rcx
	leaq	.LC83(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$78, %r9d
	movl	$78, %r8d
	movl	$111, %esi
	movq	%rax, %rdi
	call	test_uchar_le@PLT
	movl	%eax, %edx
	leaq	.LC84(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC73(%rip), %rcx
	leaq	.LC79(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$60, %r9d
	movl	$80, %r8d
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_uchar_le@PLT
	movl	%eax, %edx
	leaq	.LC85(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC86(%rip), %rcx
	leaq	.LC87(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$37, %r9d
	movl	$88, %r8d
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_uchar_gt@PLT
	movl	%eax, %edx
	leaq	.LC88(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC87(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$88, %r9d
	movl	$37, %r8d
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_uchar_gt@PLT
	movl	%eax, %edx
	leaq	.LC89(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC86(%rip), %rcx
	leaq	.LC87(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$37, %r9d
	movl	$88, %r8d
	movl	$115, %esi
	movq	%rax, %rdi
	call	test_uchar_ge@PLT
	movl	%eax, %edx
	leaq	.LC90(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC77(%rip), %rcx
	leaq	.LC77(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$66, %r9d
	movl	$66, %r8d
	movl	$116, %esi
	movq	%rax, %rdi
	call	test_uchar_ge@PLT
	movl	%eax, %edx
	leaq	.LC91(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	leaq	.LC87(%rip), %rcx
	leaq	.LC86(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$88, %r9d
	movl	$37, %r8d
	movl	$117, %esi
	movq	%rax, %rdi
	call	test_uchar_ge@PLT
	movl	%eax, %edx
	leaq	.LC92(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L27
	movl	$1, %eax
	jmp	.L26
.L27:
	nop
.L25:
	movl	$0, %eax
.L26:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_uchar, .-test_uchar
	.section	.rodata
.LC93:
	.string	"123l"
.LC94:
	.string	"TEST_long_eq(123l, 123l)"
.LC95:
	.string	"-123l"
.LC96:
	.string	"TEST_long_eq(123l, -123l)"
.LC97:
	.string	"500l"
.LC98:
	.string	"TEST_long_ne(123l, 500l)"
.LC99:
	.string	"1000l"
.LC100:
	.string	"TEST_long_ne(1000l, 1000l)"
.LC101:
	.string	"102934563l"
.LC102:
	.string	"-8923l"
	.align 8
.LC103:
	.string	"TEST_long_lt(-8923l, 102934563l)"
	.align 8
.LC104:
	.string	"TEST_long_lt(102934563l, -8923l)"
	.align 8
.LC105:
	.string	"TEST_long_le(-8923l, 102934563l)"
.LC106:
	.string	"12345l"
.LC107:
	.string	"TEST_long_le(12345l, 12345l)"
	.align 8
.LC108:
	.string	"TEST_long_le(102934563l, -8923l)"
.LC109:
	.string	"84325677l"
	.align 8
.LC110:
	.string	"TEST_long_gt(84325677l, 12345l)"
	.align 8
.LC111:
	.string	"TEST_long_gt(12345l, 84325677l)"
	.align 8
.LC112:
	.string	"TEST_long_ge(84325677l, 12345l)"
.LC113:
	.string	"465869l"
	.align 8
.LC114:
	.string	"TEST_long_ge(465869l, 465869l)"
	.align 8
.LC115:
	.string	"TEST_long_ge(12345l, 84325677l)"
	.text
	.type	test_long, @function
test_long:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC93(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$123, %r9d
	movl	$123, %r8d
	movl	$127, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	movl	%eax, %edx
	leaq	.LC94(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC95(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	$-123, %r9
	movl	$123, %r8d
	movl	$128, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	movl	%eax, %edx
	leaq	.LC96(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC97(%rip), %rcx
	leaq	.LC93(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$500, %r9d
	movl	$123, %r8d
	movl	$129, %esi
	movq	%rax, %rdi
	call	test_long_ne@PLT
	movl	%eax, %edx
	leaq	.LC98(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC99(%rip), %rcx
	leaq	.LC99(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1000, %r9d
	movl	$1000, %r8d
	movl	$130, %esi
	movq	%rax, %rdi
	call	test_long_ne@PLT
	movl	%eax, %edx
	leaq	.LC100(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC101(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$102934563, %r9d
	movq	$-8923, %r8
	movl	$131, %esi
	movq	%rax, %rdi
	call	test_long_lt@PLT
	movl	%eax, %edx
	leaq	.LC103(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC102(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	$-8923, %r9
	movl	$102934563, %r8d
	movl	$132, %esi
	movq	%rax, %rdi
	call	test_long_lt@PLT
	movl	%eax, %edx
	leaq	.LC104(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC101(%rip), %rcx
	leaq	.LC102(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$102934563, %r9d
	movq	$-8923, %r8
	movl	$133, %esi
	movq	%rax, %rdi
	call	test_long_le@PLT
	movl	%eax, %edx
	leaq	.LC105(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC106(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$12345, %r9d
	movl	$12345, %r8d
	movl	$134, %esi
	movq	%rax, %rdi
	call	test_long_le@PLT
	movl	%eax, %edx
	leaq	.LC107(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC102(%rip), %rcx
	leaq	.LC101(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	$-8923, %r9
	movl	$102934563, %r8d
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_long_le@PLT
	movl	%eax, %edx
	leaq	.LC108(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC106(%rip), %rcx
	leaq	.LC109(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$12345, %r9d
	movl	$84325677, %r8d
	movl	$136, %esi
	movq	%rax, %rdi
	call	test_long_gt@PLT
	movl	%eax, %edx
	leaq	.LC110(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC109(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$84325677, %r9d
	movl	$12345, %r8d
	movl	$137, %esi
	movq	%rax, %rdi
	call	test_long_gt@PLT
	movl	%eax, %edx
	leaq	.LC111(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC106(%rip), %rcx
	leaq	.LC109(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$12345, %r9d
	movl	$84325677, %r8d
	movl	$138, %esi
	movq	%rax, %rdi
	call	test_long_ge@PLT
	movl	%eax, %edx
	leaq	.LC112(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC113(%rip), %rcx
	leaq	.LC113(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$465869, %r9d
	movl	$465869, %r8d
	movl	$139, %esi
	movq	%rax, %rdi
	call	test_long_ge@PLT
	movl	%eax, %edx
	leaq	.LC114(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	leaq	.LC109(%rip), %rcx
	leaq	.LC106(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$84325677, %r9d
	movl	$12345, %r8d
	movl	$140, %esi
	movq	%rax, %rdi
	call	test_long_ge@PLT
	movl	%eax, %edx
	leaq	.LC115(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L33
	movl	$1, %eax
	jmp	.L32
.L33:
	nop
.L31:
	movl	$0, %eax
.L32:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_long, .-test_long
	.section	.rodata
.LC116:
	.string	"919ul"
.LC117:
	.string	"TEST_ulong_eq(919ul, 919ul)"
.LC118:
	.string	"10234ul"
.LC119:
	.string	"TEST_ulong_eq(919ul, 10234ul)"
.LC120:
	.string	"66ul"
.LC121:
	.string	"8190ul"
.LC122:
	.string	"TEST_ulong_ne(8190ul, 66ul)"
.LC123:
	.string	"10555ul"
	.align 8
.LC124:
	.string	"TEST_ulong_ne(10555ul, 10555ul)"
.LC125:
	.string	"1000000ul"
	.align 8
.LC126:
	.string	"TEST_ulong_lt(10234ul, 1000000ul)"
	.align 8
.LC127:
	.string	"TEST_ulong_lt(1000000ul, 10234ul)"
	.align 8
.LC128:
	.string	"TEST_ulong_le(10234ul, 1000000ul)"
.LC129:
	.string	"100000ul"
	.align 8
.LC130:
	.string	"TEST_ulong_le(100000ul, 100000ul)"
	.align 8
.LC131:
	.string	"TEST_ulong_le(1000000ul, 10234ul)"
.LC132:
	.string	"22ul"
.LC133:
	.string	"100000000ul"
	.align 8
.LC134:
	.string	"TEST_ulong_gt(100000000ul, 22ul)"
	.align 8
.LC135:
	.string	"TEST_ulong_gt(22ul, 100000000ul)"
	.align 8
.LC136:
	.string	"TEST_ulong_ge(100000000ul, 22ul)"
	.align 8
.LC137:
	.string	"TEST_ulong_ge(10555ul, 10555ul)"
	.align 8
.LC138:
	.string	"TEST_ulong_ge(22ul, 100000000ul)"
	.text
	.type	test_ulong, @function
test_ulong:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC116(%rip), %rcx
	leaq	.LC116(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$919, %r9d
	movl	$919, %r8d
	movl	$150, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	movl	%eax, %edx
	leaq	.LC117(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC118(%rip), %rcx
	leaq	.LC116(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$10234, %r9d
	movl	$919, %r8d
	movl	$151, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	movl	%eax, %edx
	leaq	.LC119(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC120(%rip), %rcx
	leaq	.LC121(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$66, %r9d
	movl	$8190, %r8d
	movl	$152, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	movl	%eax, %edx
	leaq	.LC122(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC123(%rip), %rcx
	leaq	.LC123(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$10555, %r9d
	movl	$10555, %r8d
	movl	$153, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	movl	%eax, %edx
	leaq	.LC124(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC125(%rip), %rcx
	leaq	.LC118(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1000000, %r9d
	movl	$10234, %r8d
	movl	$154, %esi
	movq	%rax, %rdi
	call	test_ulong_lt@PLT
	movl	%eax, %edx
	leaq	.LC126(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC118(%rip), %rcx
	leaq	.LC125(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$10234, %r9d
	movl	$1000000, %r8d
	movl	$155, %esi
	movq	%rax, %rdi
	call	test_ulong_lt@PLT
	movl	%eax, %edx
	leaq	.LC127(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC125(%rip), %rcx
	leaq	.LC118(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1000000, %r9d
	movl	$10234, %r8d
	movl	$156, %esi
	movq	%rax, %rdi
	call	test_ulong_le@PLT
	movl	%eax, %edx
	leaq	.LC128(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC129(%rip), %rcx
	leaq	.LC129(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$100000, %r9d
	movl	$100000, %r8d
	movl	$157, %esi
	movq	%rax, %rdi
	call	test_ulong_le@PLT
	movl	%eax, %edx
	leaq	.LC130(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC118(%rip), %rcx
	leaq	.LC125(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$10234, %r9d
	movl	$1000000, %r8d
	movl	$158, %esi
	movq	%rax, %rdi
	call	test_ulong_le@PLT
	movl	%eax, %edx
	leaq	.LC131(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC132(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$22, %r9d
	movl	$100000000, %r8d
	movl	$159, %esi
	movq	%rax, %rdi
	call	test_ulong_gt@PLT
	movl	%eax, %edx
	leaq	.LC134(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC133(%rip), %rcx
	leaq	.LC132(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$100000000, %r9d
	movl	$22, %r8d
	movl	$160, %esi
	movq	%rax, %rdi
	call	test_ulong_gt@PLT
	movl	%eax, %edx
	leaq	.LC135(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC132(%rip), %rcx
	leaq	.LC133(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$22, %r9d
	movl	$100000000, %r8d
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_ulong_ge@PLT
	movl	%eax, %edx
	leaq	.LC136(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC123(%rip), %rcx
	leaq	.LC123(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$10555, %r9d
	movl	$10555, %r8d
	movl	$162, %esi
	movq	%rax, %rdi
	call	test_ulong_ge@PLT
	movl	%eax, %edx
	leaq	.LC137(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	leaq	.LC133(%rip), %rcx
	leaq	.LC132(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$100000000, %r9d
	movl	$22, %r8d
	movl	$163, %esi
	movq	%rax, %rdi
	call	test_ulong_ge@PLT
	movl	%eax, %edx
	leaq	.LC138(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L39
	movl	$1, %eax
	jmp	.L38
.L39:
	nop
.L37:
	movl	$0, %eax
.L38:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_ulong, .-test_ulong
	.section	.rodata
.LC139:
	.string	"(size_t)10"
	.align 8
.LC140:
	.string	"TEST_size_t_eq((size_t)10, (size_t)10)"
.LC141:
	.string	"(size_t)12"
	.align 8
.LC142:
	.string	"TEST_size_t_eq((size_t)10, (size_t)12)"
	.align 8
.LC143:
	.string	"TEST_size_t_ne((size_t)10, (size_t)12)"
.LC144:
	.string	"(size_t)24"
	.align 8
.LC145:
	.string	"TEST_size_t_ne((size_t)24, (size_t)24)"
.LC146:
	.string	"(size_t)88"
.LC147:
	.string	"(size_t)30"
	.align 8
.LC148:
	.string	"TEST_size_t_lt((size_t)30, (size_t)88)"
	.align 8
.LC149:
	.string	"TEST_size_t_lt((size_t)88, (size_t)30)"
	.align 8
.LC150:
	.string	"TEST_size_t_le((size_t)30, (size_t)88)"
.LC151:
	.string	"(size_t)33"
	.align 8
.LC152:
	.string	"TEST_size_t_le((size_t)33, (size_t)33)"
	.align 8
.LC153:
	.string	"TEST_size_t_le((size_t)88, (size_t)30)"
.LC154:
	.string	"(size_t)52"
	.align 8
.LC155:
	.string	"TEST_size_t_gt((size_t)52, (size_t)33)"
	.align 8
.LC156:
	.string	"TEST_size_t_gt((size_t)33, (size_t)52)"
	.align 8
.LC157:
	.string	"TEST_size_t_ge((size_t)52, (size_t)33)"
.LC158:
	.string	"(size_t)38"
	.align 8
.LC159:
	.string	"TEST_size_t_ge((size_t)38, (size_t)38)"
	.align 8
.LC160:
	.string	"TEST_size_t_ge((size_t)33, (size_t)52)"
	.text
	.type	test_size_t, @function
test_size_t:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC139(%rip), %rcx
	leaq	.LC139(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$10, %r9d
	movl	$10, %r8d
	movl	$173, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	movl	%eax, %edx
	leaq	.LC140(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC141(%rip), %rcx
	leaq	.LC139(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$12, %r9d
	movl	$10, %r8d
	movl	$174, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	movl	%eax, %edx
	leaq	.LC142(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC141(%rip), %rcx
	leaq	.LC139(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$12, %r9d
	movl	$10, %r8d
	movl	$175, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	movl	%eax, %edx
	leaq	.LC143(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC144(%rip), %rcx
	leaq	.LC144(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$24, %r9d
	movl	$24, %r8d
	movl	$176, %esi
	movq	%rax, %rdi
	call	test_size_t_ne@PLT
	movl	%eax, %edx
	leaq	.LC145(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC146(%rip), %rcx
	leaq	.LC147(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$88, %r9d
	movl	$30, %r8d
	movl	$177, %esi
	movq	%rax, %rdi
	call	test_size_t_lt@PLT
	movl	%eax, %edx
	leaq	.LC148(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC147(%rip), %rcx
	leaq	.LC146(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$30, %r9d
	movl	$88, %r8d
	movl	$178, %esi
	movq	%rax, %rdi
	call	test_size_t_lt@PLT
	movl	%eax, %edx
	leaq	.LC149(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC146(%rip), %rcx
	leaq	.LC147(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$88, %r9d
	movl	$30, %r8d
	movl	$179, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	movl	%eax, %edx
	leaq	.LC150(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC151(%rip), %rcx
	leaq	.LC151(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$33, %r9d
	movl	$33, %r8d
	movl	$180, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	movl	%eax, %edx
	leaq	.LC152(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC147(%rip), %rcx
	leaq	.LC146(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$30, %r9d
	movl	$88, %r8d
	movl	$181, %esi
	movq	%rax, %rdi
	call	test_size_t_le@PLT
	movl	%eax, %edx
	leaq	.LC153(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC151(%rip), %rcx
	leaq	.LC154(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$33, %r9d
	movl	$52, %r8d
	movl	$182, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	movl	%eax, %edx
	leaq	.LC155(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC154(%rip), %rcx
	leaq	.LC151(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$52, %r9d
	movl	$33, %r8d
	movl	$183, %esi
	movq	%rax, %rdi
	call	test_size_t_gt@PLT
	movl	%eax, %edx
	leaq	.LC156(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC151(%rip), %rcx
	leaq	.LC154(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$33, %r9d
	movl	$52, %r8d
	movl	$184, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	movl	%eax, %edx
	leaq	.LC157(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC158(%rip), %rcx
	leaq	.LC158(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$38, %r9d
	movl	$38, %r8d
	movl	$185, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	movl	%eax, %edx
	leaq	.LC159(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	leaq	.LC154(%rip), %rcx
	leaq	.LC151(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$52, %r9d
	movl	$33, %r8d
	movl	$186, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	movl	%eax, %edx
	leaq	.LC160(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L45
	movl	$1, %eax
	jmp	.L44
.L45:
	nop
.L43:
	movl	$0, %eax
.L44:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_size_t, .-test_size_t
	.section	.rodata
.LC161:
	.string	"(time_t)10"
	.align 8
.LC162:
	.string	"TEST_time_t_eq((time_t)10, (time_t)10)"
.LC163:
	.string	"(time_t)12"
	.align 8
.LC164:
	.string	"TEST_time_t_eq((time_t)10, (time_t)12)"
	.align 8
.LC165:
	.string	"TEST_time_t_ne((time_t)10, (time_t)12)"
.LC166:
	.string	"(time_t)24"
	.align 8
.LC167:
	.string	"TEST_time_t_ne((time_t)24, (time_t)24)"
.LC168:
	.string	"(time_t)88"
.LC169:
	.string	"(time_t)30"
	.align 8
.LC170:
	.string	"TEST_time_t_lt((time_t)30, (time_t)88)"
	.align 8
.LC171:
	.string	"TEST_time_t_lt((time_t)88, (time_t)30)"
	.align 8
.LC172:
	.string	"TEST_time_t_le((time_t)30, (time_t)88)"
.LC173:
	.string	"(time_t)33"
	.align 8
.LC174:
	.string	"TEST_time_t_le((time_t)33, (time_t)33)"
	.align 8
.LC175:
	.string	"TEST_time_t_le((time_t)88, (time_t)30)"
.LC176:
	.string	"(time_t)52"
	.align 8
.LC177:
	.string	"TEST_time_t_gt((time_t)52, (time_t)33)"
	.align 8
.LC178:
	.string	"TEST_time_t_gt((time_t)33, (time_t)52)"
	.align 8
.LC179:
	.string	"TEST_time_t_ge((time_t)52, (time_t)33)"
.LC180:
	.string	"(time_t)38"
	.align 8
.LC181:
	.string	"TEST_time_t_ge((time_t)38, (time_t)38)"
	.align 8
.LC182:
	.string	"TEST_time_t_ge((time_t)33, (time_t)52)"
	.text
	.type	test_time_t, @function
test_time_t:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC161(%rip), %rcx
	leaq	.LC161(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$10, %r9d
	movl	$10, %r8d
	movl	$196, %esi
	movq	%rax, %rdi
	call	test_time_t_eq@PLT
	movl	%eax, %edx
	leaq	.LC162(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC163(%rip), %rcx
	leaq	.LC161(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$12, %r9d
	movl	$10, %r8d
	movl	$197, %esi
	movq	%rax, %rdi
	call	test_time_t_eq@PLT
	movl	%eax, %edx
	leaq	.LC164(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC163(%rip), %rcx
	leaq	.LC161(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$12, %r9d
	movl	$10, %r8d
	movl	$198, %esi
	movq	%rax, %rdi
	call	test_time_t_ne@PLT
	movl	%eax, %edx
	leaq	.LC165(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC166(%rip), %rcx
	leaq	.LC166(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$24, %r9d
	movl	$24, %r8d
	movl	$199, %esi
	movq	%rax, %rdi
	call	test_time_t_ne@PLT
	movl	%eax, %edx
	leaq	.LC167(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC168(%rip), %rcx
	leaq	.LC169(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$88, %r9d
	movl	$30, %r8d
	movl	$200, %esi
	movq	%rax, %rdi
	call	test_time_t_lt@PLT
	movl	%eax, %edx
	leaq	.LC170(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC169(%rip), %rcx
	leaq	.LC168(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$30, %r9d
	movl	$88, %r8d
	movl	$201, %esi
	movq	%rax, %rdi
	call	test_time_t_lt@PLT
	movl	%eax, %edx
	leaq	.LC171(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC168(%rip), %rcx
	leaq	.LC169(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$88, %r9d
	movl	$30, %r8d
	movl	$202, %esi
	movq	%rax, %rdi
	call	test_time_t_le@PLT
	movl	%eax, %edx
	leaq	.LC172(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC173(%rip), %rcx
	leaq	.LC173(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$33, %r9d
	movl	$33, %r8d
	movl	$203, %esi
	movq	%rax, %rdi
	call	test_time_t_le@PLT
	movl	%eax, %edx
	leaq	.LC174(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC169(%rip), %rcx
	leaq	.LC168(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$30, %r9d
	movl	$88, %r8d
	movl	$204, %esi
	movq	%rax, %rdi
	call	test_time_t_le@PLT
	movl	%eax, %edx
	leaq	.LC175(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC173(%rip), %rcx
	leaq	.LC176(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$33, %r9d
	movl	$52, %r8d
	movl	$205, %esi
	movq	%rax, %rdi
	call	test_time_t_gt@PLT
	movl	%eax, %edx
	leaq	.LC177(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC176(%rip), %rcx
	leaq	.LC173(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$52, %r9d
	movl	$33, %r8d
	movl	$206, %esi
	movq	%rax, %rdi
	call	test_time_t_gt@PLT
	movl	%eax, %edx
	leaq	.LC178(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC173(%rip), %rcx
	leaq	.LC176(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$33, %r9d
	movl	$52, %r8d
	movl	$207, %esi
	movq	%rax, %rdi
	call	test_time_t_ge@PLT
	movl	%eax, %edx
	leaq	.LC179(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC180(%rip), %rcx
	leaq	.LC180(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$38, %r9d
	movl	$38, %r8d
	movl	$208, %esi
	movq	%rax, %rdi
	call	test_time_t_ge@PLT
	movl	%eax, %edx
	leaq	.LC181(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	leaq	.LC176(%rip), %rcx
	leaq	.LC173(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$52, %r9d
	movl	$33, %r8d
	movl	$209, %esi
	movq	%rax, %rdi
	call	test_time_t_ge@PLT
	movl	%eax, %edx
	leaq	.LC182(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L51
	movl	$1, %eax
	jmp	.L50
.L51:
	nop
.L49:
	movl	$0, %eax
.L50:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	test_time_t, .-test_time_t
	.section	.rodata
.LC183:
	.string	"&y"
.LC184:
	.string	"TEST_ptr(&y)"
.LC185:
	.string	"NULL"
.LC186:
	.string	"TEST_ptr(NULL)"
.LC187:
	.string	"TEST_ptr_null(&y)"
.LC188:
	.string	"TEST_ptr_null(NULL)"
.LC189:
	.string	"TEST_ptr_eq(NULL, NULL)"
.LC190:
	.string	"TEST_ptr_eq(NULL, &y)"
.LC191:
	.string	"TEST_ptr_eq(&y, NULL)"
.LC192:
	.string	"&x"
.LC193:
	.string	"TEST_ptr_eq(&y, &x)"
.LC194:
	.string	"TEST_ptr_eq(&x, &x)"
.LC195:
	.string	"TEST_ptr_ne(NULL, NULL)"
.LC196:
	.string	"TEST_ptr_ne(NULL, &y)"
.LC197:
	.string	"TEST_ptr_ne(&y, NULL)"
.LC198:
	.string	"TEST_ptr_ne(&y, &x)"
.LC199:
	.string	"TEST_ptr_ne(&x, &x)"
	.text
	.type	test_pointer, @function
test_pointer:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movb	$1, -5(%rbp)
	leaq	-5(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$222, %esi
	call	test_ptr@PLT
	movl	%eax, %edx
	leaq	.LC184(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %ecx
	movl	$223, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	movl	%eax, %edx
	leaq	.LC186(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	-5(%rbp), %rax
	leaq	.LC183(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$224, %esi
	call	test_ptr_null@PLT
	movl	%eax, %edx
	leaq	.LC187(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %ecx
	movl	$225, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	movl	%eax, %edx
	leaq	.LC188(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	.LC185(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$226, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	movl	%eax, %edx
	leaq	.LC189(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	-5(%rbp), %rsi
	leaq	.LC183(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$227, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	movl	%eax, %edx
	leaq	.LC190(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	-5(%rbp), %rsi
	leaq	.LC185(%rip), %rcx
	leaq	.LC183(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$228, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	movl	%eax, %edx
	leaq	.LC191(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	-4(%rbp), %rdi
	leaq	-5(%rbp), %rsi
	leaq	.LC192(%rip), %rcx
	leaq	.LC183(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$229, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	movl	%eax, %edx
	leaq	.LC193(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	-4(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	leaq	.LC192(%rip), %rcx
	leaq	.LC192(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$230, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	movl	%eax, %edx
	leaq	.LC194(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	.LC185(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$231, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	movl	%eax, %edx
	leaq	.LC195(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	-5(%rbp), %rsi
	leaq	.LC183(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$232, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	movl	%eax, %edx
	leaq	.LC196(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	-5(%rbp), %rsi
	leaq	.LC185(%rip), %rcx
	leaq	.LC183(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$233, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	movl	%eax, %edx
	leaq	.LC197(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	-4(%rbp), %rdi
	leaq	-5(%rbp), %rsi
	leaq	.LC192(%rip), %rcx
	leaq	.LC183(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$234, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	movl	%eax, %edx
	leaq	.LC198(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	leaq	-4(%rbp), %rdi
	leaq	-4(%rbp), %rsi
	leaq	.LC192(%rip), %rcx
	leaq	.LC192(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$235, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	movl	%eax, %edx
	leaq	.LC199(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L58
	movl	$1, %eax
	jmp	.L57
.L58:
	nop
.L55:
	movl	$0, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	test_pointer, .-test_pointer
	.section	.rodata
.LC200:
	.string	"0"
.LC201:
	.string	"TEST_true(0)"
.LC202:
	.string	"TEST_true(1)"
.LC203:
	.string	"TEST_false(0)"
.LC204:
	.string	"TEST_false(1)"
	.text
	.type	test_bool, @function
test_bool:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC200(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %ecx
	movl	$245, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	movl	%eax, %edx
	leaq	.LC201(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L64
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %ecx
	movl	$246, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	movl	%eax, %edx
	leaq	.LC202(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L64
	leaq	.LC200(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %ecx
	movl	$247, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	movl	%eax, %edx
	leaq	.LC203(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L64
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %ecx
	movl	$248, %esi
	movq	%rax, %rdi
	call	test_false@PLT
	movl	%eax, %edx
	leaq	.LC204(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L64
	movl	$1, %eax
	jmp	.L63
.L64:
	nop
.L62:
	movl	$0, %eax
.L63:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	test_bool, .-test_bool
	.section	.rodata
.LC205:
	.string	"TEST_str_eq(NULL, NULL)"
.LC206:
	.string	"abc"
.LC207:
	.string	"buf"
.LC208:
	.string	"\"abc\""
.LC209:
	.string	"TEST_str_eq(\"abc\", buf)"
.LC210:
	.string	"TEST_str_eq(\"abc\", NULL)"
.LC211:
	.string	""
.LC212:
	.string	"\"\""
.LC213:
	.string	"TEST_str_eq(\"abc\", \"\")"
.LC214:
	.string	"TEST_str_eq(NULL, buf)"
.LC215:
	.string	"TEST_str_ne(NULL, NULL)"
.LC216:
	.string	"TEST_str_eq(\"\", NULL)"
.LC217:
	.string	"TEST_str_eq(NULL, \"\")"
.LC218:
	.string	"TEST_str_ne(\"\", \"\")"
.LC219:
	.base64	"AXgDBgUA"
.LC220:
	.base64	"AQIDBAUA"
.LC221:
	.base64	"IlwxeFwzXDZcNSIA"
.LC222:
	.string	"\"\\1\\2\\3\\4\\5\""
	.align 8
.LC223:
	.string	"TEST_str_eq(\"\\1\\2\\3\\4\\5\", \"\\1x\\3\\6\\5\")"
.LC224:
	.string	"TEST_str_ne(\"abc\", buf)"
.LC225:
	.string	"TEST_str_ne(\"abc\", NULL)"
.LC226:
	.string	"TEST_str_ne(NULL, buf)"
.LC227:
	.string	"abcdefghijk"
.LC228:
	.string	"abcdef"
.LC229:
	.string	"\"abcdefghijk\""
.LC230:
	.string	"\"abcdef\""
	.align 8
.LC231:
	.string	"TEST_str_eq(\"abcdef\", \"abcdefghijk\")"
	.text
	.type	test_string, @function
test_string:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC185(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$260, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC205(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	buf.1(%rip), %rdi
	leaq	.LC206(%rip), %rsi
	leaq	.LC207(%rip), %rcx
	leaq	.LC208(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$261, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC209(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	.LC206(%rip), %rsi
	leaq	.LC185(%rip), %rcx
	leaq	.LC208(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$262, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC210(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	.LC211(%rip), %rdi
	leaq	.LC206(%rip), %rsi
	leaq	.LC212(%rip), %rcx
	leaq	.LC208(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$263, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC213(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	buf.1(%rip), %rsi
	leaq	.LC207(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC214(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	.LC185(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_str_ne@PLT
	movl	%eax, %edx
	leaq	.LC215(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	.LC211(%rip), %rsi
	leaq	.LC185(%rip), %rcx
	leaq	.LC212(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$266, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC216(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	.LC211(%rip), %rsi
	leaq	.LC212(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$267, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC217(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	.LC211(%rip), %rdi
	leaq	.LC211(%rip), %rsi
	leaq	.LC212(%rip), %rcx
	leaq	.LC212(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$268, %esi
	movq	%rax, %rdi
	call	test_str_ne@PLT
	movl	%eax, %edx
	leaq	.LC218(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	.LC219(%rip), %rdi
	leaq	.LC220(%rip), %rsi
	leaq	.LC221(%rip), %rcx
	leaq	.LC222(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$269, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC223(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	buf.1(%rip), %rdi
	leaq	.LC206(%rip), %rsi
	leaq	.LC207(%rip), %rcx
	leaq	.LC208(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$270, %esi
	movq	%rax, %rdi
	call	test_str_ne@PLT
	movl	%eax, %edx
	leaq	.LC224(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	.LC206(%rip), %rsi
	leaq	.LC185(%rip), %rcx
	leaq	.LC208(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$271, %esi
	movq	%rax, %rdi
	call	test_str_ne@PLT
	movl	%eax, %edx
	leaq	.LC225(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	buf.1(%rip), %rsi
	leaq	.LC207(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$272, %esi
	movq	%rax, %rdi
	call	test_str_ne@PLT
	movl	%eax, %edx
	leaq	.LC226(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	leaq	.LC227(%rip), %rdi
	leaq	.LC228(%rip), %rsi
	leaq	.LC229(%rip), %rcx
	leaq	.LC230(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$273, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC231(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L70
	movl	$1, %eax
	jmp	.L69
.L70:
	nop
.L68:
	movl	$0, %eax
.L69:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_string, .-test_string
	.section	.rodata
.LC232:
	.string	"TEST_mem_eq(NULL, 0, NULL, 0)"
.LC233:
	.string	"TEST_mem_eq(NULL, 1, NULL, 2)"
.LC234:
	.string	"\"xyz\""
.LC235:
	.string	"xyz"
	.align 8
.LC236:
	.string	"TEST_mem_eq(NULL, 0, \"xyz\", 3)"
	.align 8
.LC237:
	.string	"TEST_mem_eq(NULL, 7, \"abc\", 3)"
.LC238:
	.string	"TEST_mem_ne(NULL, 0, NULL, 0)"
.LC239:
	.string	"TEST_mem_eq(NULL, 0, \"\", 0)"
.LC240:
	.string	"TEST_mem_eq(\"\", 0, NULL, 0)"
.LC241:
	.string	"TEST_mem_ne(\"\", 0, \"\", 0)"
	.align 8
.LC242:
	.string	"TEST_mem_eq(\"xyz\", 3, NULL, 0)"
	.align 8
.LC243:
	.string	"TEST_mem_eq(\"xyz\", 3, buf, sizeof(buf))"
	.align 8
.LC244:
	.string	"TEST_mem_eq(\"xyz\", 4, buf, sizeof(buf))"
	.text
	.type	test_memory, @function
test_memory:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC185(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$285, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC232(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L76
	leaq	.LC185(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$2
	pushq	$0
	movl	$1, %r9d
	movl	$0, %r8d
	movl	$286, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC233(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L76
	leaq	.LC234(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$3
	leaq	.LC235(%rip), %rsi
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$287, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC236(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L76
	leaq	.LC208(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$3
	leaq	.LC206(%rip), %rsi
	pushq	%rsi
	movl	$7, %r9d
	movl	$0, %r8d
	movl	$288, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC237(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L76
	leaq	.LC185(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$289, %esi
	movq	%rax, %rdi
	call	test_mem_ne@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC238(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L76
	leaq	.LC212(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$0
	leaq	.LC211(%rip), %rsi
	pushq	%rsi
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$290, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC239(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L76
	leaq	.LC211(%rip), %rsi
	leaq	.LC185(%rip), %rcx
	leaq	.LC212(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$291, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC240(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L76
	leaq	.LC211(%rip), %rdi
	leaq	.LC212(%rip), %rcx
	leaq	.LC212(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$0
	leaq	.LC211(%rip), %rsi
	pushq	%rsi
	movl	$0, %r9d
	movq	%rdi, %r8
	movl	$292, %esi
	movq	%rax, %rdi
	call	test_mem_ne@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC241(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L76
	leaq	.LC235(%rip), %rsi
	leaq	.LC185(%rip), %rcx
	leaq	.LC234(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$0
	pushq	$0
	movl	$3, %r9d
	movq	%rsi, %r8
	movl	$293, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC242(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L76
	leaq	.LC235(%rip), %rdi
	leaq	.LC207(%rip), %rcx
	leaq	.LC234(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$4
	leaq	buf.0(%rip), %rsi
	pushq	%rsi
	movl	$3, %r9d
	movq	%rdi, %r8
	movl	$294, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC243(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L76
	leaq	.LC235(%rip), %rdi
	leaq	.LC207(%rip), %rcx
	leaq	.LC234(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$4
	leaq	buf.0(%rip), %rsi
	pushq	%rsi
	movl	$4, %r9d
	movq	%rdi, %r8
	movl	$295, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC244(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L76
	movl	$1, %eax
	jmp	.L75
.L76:
	nop
.L74:
	movl	$0, %eax
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	test_memory, .-test_memory
	.section	.rodata
	.align 8
.LC245:
	.string	"1234567890123456789012345678901234567890123456789012"
	.align 8
.LC246:
	.string	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
.LC247:
	.string	"q"
.LC248:
	.string	"p"
	.align 8
.LC249:
	.string	"TEST_mem_eq(p, strlen(p), q, strlen(q))"
	.text
	.type	test_memory_overflow, @function
test_memory_overflow:
.LFB481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	leaq	.LC245(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC246(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC247(%rip), %rcx
	leaq	.LC248(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rbx
	pushq	-32(%rbp)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$309, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC249(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	test_memory_overflow, .-test_memory_overflow
	.section	.rodata
.LC250:
	.string	"BN_dec2bn(&a, \"0\")"
	.align 8
.LC251:
	.string	"TEST_int_eq(BN_dec2bn(&a, \"0\"), 1)"
.LC252:
	.string	"a"
.LC253:
	.string	"TEST_BN_eq_word(a, 0)"
.LC254:
	.string	"30"
.LC255:
	.string	"TEST_BN_eq_word(a, 30)"
.LC256:
	.string	"TEST_BN_abs_eq_word(a, 0)"
.LC257:
	.string	"TEST_BN_eq_one(a)"
.LC258:
	.string	"TEST_BN_eq_zero(a)"
.LC259:
	.string	"TEST_BN_ne_zero(a)"
.LC260:
	.string	"TEST_BN_le_zero(a)"
.LC261:
	.string	"TEST_BN_lt_zero(a)"
.LC262:
	.string	"TEST_BN_ge_zero(a)"
.LC263:
	.string	"TEST_BN_gt_zero(a)"
.LC264:
	.string	"TEST_BN_even(a)"
.LC265:
	.string	"TEST_BN_odd(a)"
.LC266:
	.string	"c"
.LC267:
	.string	"b"
.LC268:
	.string	"TEST_BN_eq(b, c)"
.LC269:
	.string	"TEST_BN_eq(a, b)"
.LC270:
	.string	"TEST_BN_ne(NULL, c)"
.LC271:
	.string	"BN_dec2bn(&b, \"1\")"
	.align 8
.LC272:
	.string	"TEST_int_eq(BN_dec2bn(&b, \"1\"), 1)"
.LC273:
	.string	"TEST_BN_eq_word(b, 1)"
.LC274:
	.string	"TEST_BN_eq_one(b)"
.LC275:
	.string	"TEST_BN_abs_eq_word(b, 0)"
.LC276:
	.string	"TEST_BN_abs_eq_word(b, 1)"
.LC277:
	.string	"TEST_BN_eq_zero(b)"
.LC278:
	.string	"TEST_BN_ne_zero(b)"
.LC279:
	.string	"TEST_BN_le_zero(b)"
.LC280:
	.string	"TEST_BN_lt_zero(b)"
.LC281:
	.string	"TEST_BN_ge_zero(b)"
.LC282:
	.string	"TEST_BN_gt_zero(b)"
.LC283:
	.string	"TEST_BN_even(b)"
.LC284:
	.string	"TEST_BN_odd(b)"
.LC285:
	.string	"-334739439"
.LC286:
	.string	"10"
.LC287:
	.string	"BN_dec2bn(&c, \"-334739439\")"
	.align 8
.LC288:
	.string	"TEST_int_eq(BN_dec2bn(&c, \"-334739439\"), 10)"
.LC289:
	.string	"334739439"
.LC290:
	.string	"TEST_BN_eq_word(c, 334739439)"
	.align 8
.LC291:
	.string	"TEST_BN_abs_eq_word(c, 334739439)"
.LC292:
	.string	"TEST_BN_eq_zero(c)"
.LC293:
	.string	"TEST_BN_ne_zero(c)"
.LC294:
	.string	"TEST_BN_le_zero(c)"
.LC295:
	.string	"TEST_BN_lt_zero(c)"
.LC296:
	.string	"TEST_BN_ge_zero(c)"
.LC297:
	.string	"TEST_BN_gt_zero(c)"
.LC298:
	.string	"TEST_BN_even(c)"
.LC299:
	.string	"TEST_BN_odd(c)"
.LC300:
	.string	"TEST_BN_eq(a, a)"
.LC301:
	.string	"TEST_BN_ne(a, a)"
.LC302:
	.string	"TEST_BN_ne(a, b)"
.LC303:
	.string	"TEST_BN_lt(a, c)"
.LC304:
	.string	"TEST_BN_lt(c, b)"
.LC305:
	.string	"TEST_BN_lt(b, c)"
.LC306:
	.string	"TEST_BN_le(a, c)"
.LC307:
	.string	"TEST_BN_le(c, b)"
.LC308:
	.string	"TEST_BN_le(b, c)"
.LC309:
	.string	"TEST_BN_gt(a, c)"
.LC310:
	.string	"TEST_BN_gt(c, b)"
.LC311:
	.string	"TEST_BN_gt(b, c)"
.LC312:
	.string	"TEST_BN_ge(a, c)"
.LC313:
	.string	"TEST_BN_ge(c, b)"
.LC314:
	.string	"TEST_BN_ge(b, c)"
	.text
	.type	test_bignum, @function
test_bignum:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	leaq	.LC200(%rip), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC250(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$317, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, %edx
	leaq	.LC251(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rsi
	leaq	.LC200(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$318, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	movl	%eax, %edx
	leaq	.LC253(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rsi
	leaq	.LC254(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$30, %r9d
	movq	%rsi, %r8
	movl	$319, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	movl	%eax, %edx
	leaq	.LC255(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rsi
	leaq	.LC200(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$320, %esi
	movq	%rax, %rdi
	call	test_BN_abs_eq_word@PLT
	movl	%eax, %edx
	leaq	.LC256(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$321, %esi
	call	test_BN_eq_one@PLT
	movl	%eax, %edx
	leaq	.LC257(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$322, %esi
	call	test_BN_eq_zero@PLT
	movl	%eax, %edx
	leaq	.LC258(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$323, %esi
	call	test_BN_ne_zero@PLT
	movl	%eax, %edx
	leaq	.LC259(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$324, %esi
	call	test_BN_le_zero@PLT
	movl	%eax, %edx
	leaq	.LC260(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$325, %esi
	call	test_BN_lt_zero@PLT
	movl	%eax, %edx
	leaq	.LC261(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$326, %esi
	call	test_BN_ge_zero@PLT
	movl	%eax, %edx
	leaq	.LC262(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$327, %esi
	call	test_BN_gt_zero@PLT
	movl	%eax, %edx
	leaq	.LC263(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$328, %esi
	call	test_BN_even@PLT
	movl	%eax, %edx
	leaq	.LC264(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$329, %esi
	call	test_BN_odd@PLT
	movl	%eax, %edx
	leaq	.LC265(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC266(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$330, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	movl	%eax, %edx
	leaq	.LC268(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC267(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$331, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	movl	%eax, %edx
	leaq	.LC269(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rsi
	leaq	.LC266(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$332, %esi
	movq	%rax, %rdi
	call	test_BN_ne@PLT
	movl	%eax, %edx
	leaq	.LC270(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	leaq	.LC1(%rip), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	movl	%eax, %esi
	leaq	.LC1(%rip), %rcx
	leaq	.LC271(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$333, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, %edx
	leaq	.LC272(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rsi
	leaq	.LC1(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$334, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	movl	%eax, %edx
	leaq	.LC273(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rax
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$335, %esi
	call	test_BN_eq_one@PLT
	movl	%eax, %edx
	leaq	.LC274(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rsi
	leaq	.LC200(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$336, %esi
	movq	%rax, %rdi
	call	test_BN_abs_eq_word@PLT
	movl	%eax, %edx
	leaq	.LC275(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rsi
	leaq	.LC1(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$337, %esi
	movq	%rax, %rdi
	call	test_BN_abs_eq_word@PLT
	movl	%eax, %edx
	leaq	.LC276(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rax
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$338, %esi
	call	test_BN_eq_zero@PLT
	movl	%eax, %edx
	leaq	.LC277(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rax
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$339, %esi
	call	test_BN_ne_zero@PLT
	movl	%eax, %edx
	leaq	.LC278(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rax
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$340, %esi
	call	test_BN_le_zero@PLT
	movl	%eax, %edx
	leaq	.LC279(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rax
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$341, %esi
	call	test_BN_lt_zero@PLT
	movl	%eax, %edx
	leaq	.LC280(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rax
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$342, %esi
	call	test_BN_ge_zero@PLT
	movl	%eax, %edx
	leaq	.LC281(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rax
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$343, %esi
	call	test_BN_gt_zero@PLT
	movl	%eax, %edx
	leaq	.LC282(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rax
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$344, %esi
	call	test_BN_even@PLT
	movl	%eax, %edx
	leaq	.LC283(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rax
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$345, %esi
	call	test_BN_odd@PLT
	movl	%eax, %edx
	leaq	.LC284(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	leaq	.LC285(%rip), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_dec2bn@PLT
	movl	%eax, %esi
	leaq	.LC286(%rip), %rcx
	leaq	.LC287(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$10, %r9d
	movl	%esi, %r8d
	movl	$346, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	movl	%eax, %edx
	leaq	.LC288(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rsi
	leaq	.LC289(%rip), %rcx
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$334739439, %r9d
	movq	%rsi, %r8
	movl	$347, %esi
	movq	%rax, %rdi
	call	test_BN_eq_word@PLT
	movl	%eax, %edx
	leaq	.LC290(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rsi
	leaq	.LC289(%rip), %rcx
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$334739439, %r9d
	movq	%rsi, %r8
	movl	$348, %esi
	movq	%rax, %rdi
	call	test_BN_abs_eq_word@PLT
	movl	%eax, %edx
	leaq	.LC291(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rax
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$349, %esi
	call	test_BN_eq_zero@PLT
	movl	%eax, %edx
	leaq	.LC292(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rax
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$350, %esi
	call	test_BN_ne_zero@PLT
	movl	%eax, %edx
	leaq	.LC293(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rax
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$351, %esi
	call	test_BN_le_zero@PLT
	movl	%eax, %edx
	leaq	.LC294(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rax
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$352, %esi
	call	test_BN_lt_zero@PLT
	movl	%eax, %edx
	leaq	.LC295(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rax
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$353, %esi
	call	test_BN_ge_zero@PLT
	movl	%eax, %edx
	leaq	.LC296(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rax
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$354, %esi
	call	test_BN_gt_zero@PLT
	movl	%eax, %edx
	leaq	.LC297(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rax
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$355, %esi
	call	test_BN_even@PLT
	movl	%eax, %edx
	leaq	.LC298(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rax
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$356, %esi
	call	test_BN_odd@PLT
	movl	%eax, %edx
	leaq	.LC299(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC252(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$357, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	movl	%eax, %edx
	leaq	.LC300(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC252(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$358, %esi
	movq	%rax, %rdi
	call	test_BN_ne@PLT
	movl	%eax, %edx
	leaq	.LC301(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC267(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$359, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	movl	%eax, %edx
	leaq	.LC269(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC267(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$360, %esi
	movq	%rax, %rdi
	call	test_BN_ne@PLT
	movl	%eax, %edx
	leaq	.LC302(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC266(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$361, %esi
	movq	%rax, %rdi
	call	test_BN_lt@PLT
	movl	%eax, %edx
	leaq	.LC303(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC267(%rip), %rcx
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$362, %esi
	movq	%rax, %rdi
	call	test_BN_lt@PLT
	movl	%eax, %edx
	leaq	.LC304(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC266(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$363, %esi
	movq	%rax, %rdi
	call	test_BN_lt@PLT
	movl	%eax, %edx
	leaq	.LC305(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC266(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$364, %esi
	movq	%rax, %rdi
	call	test_BN_le@PLT
	movl	%eax, %edx
	leaq	.LC306(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC267(%rip), %rcx
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$365, %esi
	movq	%rax, %rdi
	call	test_BN_le@PLT
	movl	%eax, %edx
	leaq	.LC307(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC266(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$366, %esi
	movq	%rax, %rdi
	call	test_BN_le@PLT
	movl	%eax, %edx
	leaq	.LC308(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC266(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$367, %esi
	movq	%rax, %rdi
	call	test_BN_gt@PLT
	movl	%eax, %edx
	leaq	.LC309(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC267(%rip), %rcx
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$368, %esi
	movq	%rax, %rdi
	call	test_BN_gt@PLT
	movl	%eax, %edx
	leaq	.LC310(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC266(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$369, %esi
	movq	%rax, %rdi
	call	test_BN_gt@PLT
	movl	%eax, %edx
	leaq	.LC311(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	.LC266(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$370, %esi
	movq	%rax, %rdi
	call	test_BN_ge@PLT
	movl	%eax, %edx
	leaq	.LC312(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC267(%rip), %rcx
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$371, %esi
	movq	%rax, %rdi
	call	test_BN_ge@PLT
	movl	%eax, %edx
	leaq	.LC313(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC266(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$372, %esi
	movq	%rax, %rdi
	call	test_BN_ge@PLT
	movl	%eax, %edx
	leaq	.LC314(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	testl	%eax, %eax
	je	.L84
	movl	$1, -4(%rbp)
	jmp	.L82
.L84:
	nop
.L82:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	test_bignum, .-test_bignum
	.section	.rodata
	.align 8
.LC315:
	.string	"1234567890klmnopqrs01234567890EFGHIJKLM0123456789XYZ"
	.align 8
.LC316:
	.string	"1234567890123456789012345678901234567890123456789012abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY+12345678901234567890123ABC78901234567890123456789012"
	.align 8
.LC317:
	.string	"1234567890123456789012345678901234567890123456789012abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY-1234567890123456789012345678901234567890123456789012abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
.LC318:
	.string	"TEST_str_eq(p, q)"
.LC319:
	.string	"r"
.LC320:
	.string	"TEST_str_eq(q, r)"
.LC321:
	.string	"s"
.LC322:
	.string	"TEST_str_eq(r, s)"
	.align 8
.LC323:
	.string	"TEST_mem_eq(r, strlen(r), s, strlen(s))"
	.text
	.type	test_long_output, @function
test_long_output:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	leaq	.LC245(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC315(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC316(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC317(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC247(%rip), %rcx
	leaq	.LC248(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$395, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC318(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	movl	%eax, %ebx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC319(%rip), %rcx
	leaq	.LC247(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$396, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC320(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	andl	%eax, %ebx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC321(%rip), %rcx
	leaq	.LC319(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$397, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	movl	%eax, %edx
	leaq	.LC322(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	andl	%eax, %ebx
	movl	%ebx, %r12d
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rdi
	leaq	.LC321(%rip), %rcx
	leaq	.LC319(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rbx
	pushq	-48(%rbp)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$398, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	movl	%eax, %edx
	leaq	.LC323(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	andl	%r12d, %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	test_long_output, .-test_long_output
	.section	.rodata
.LC325:
	.string	"BN_hex2bn(&a, as)"
.LC326:
	.string	"BN_hex2bn(&b, bs)"
.LC327:
	.string	"BN_hex2bn(&c, cs)"
.LC328:
	.string	"BN_hex2bn(&d, ds)"
.LC329:
	.string	"TEST_BN_eq(b, a)"
.LC330:
	.string	"TEST_BN_eq(b, NULL)"
.LC331:
	.string	"TEST_BN_eq(NULL, a)"
.LC332:
	.string	"TEST_BN_ne(a, NULL)"
.LC333:
	.string	"d"
.LC334:
	.string	"TEST_BN_eq(c, d)"
	.align 8
.LC324:
	.ascii	"123456789012345678901234567890123456789012345678901212345678"
	.ascii	"90"
	.string	"1234567890123456789012345678901234567890121234567890123456789012345678901234567890123456789012123456789012345678901234567890123456789012345678901212345678901234567890123456789012345678901234567890121234567890123456789012345678901234567890123456789012FFFFFF"
	.text
	.type	test_long_bignum, @function
test_long_bignum:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$648, %rsp
	.cfi_offset 3, -24
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	leaq	-384(%rbp), %rax
	leaq	.LC324(%rip), %rdx
	movl	$39, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movl	(%rdx), %ecx
	movl	%ecx, (%rax)
	leaq	4(%rax), %rax
	leaq	4(%rdx), %rdx
	movzwl	(%rdx), %ecx
	movw	%cx, (%rax)
	leaq	2(%rax), %rax
	leaq	2(%rdx), %rdx
	movzbl	(%rdx), %ecx
	movb	%cl, (%rax)
	movabsq	$4050765991979987505, %rax
	movabsq	$3906085646303834169, %rdx
	movq	%rax, -496(%rbp)
	movq	%rdx, -488(%rbp)
	movabsq	$3761405300628338743, %rax
	movabsq	$3616724998069630517, %rdx
	movq	%rax, -480(%rbp)
	movq	%rdx, -472(%rbp)
	movabsq	$3474870397276861491, %rax
	movabsq	$4050765991979987505, %rdx
	movq	%rax, -464(%rbp)
	movq	%rdx, -456(%rbp)
	movabsq	$3761405300661366841, %rbx
	movabsq	$3616724998069630517, %rsi
	movq	%rbx, -448(%rbp)
	movq	%rsi, -440(%rbp)
	movq	%rax, -432(%rbp)
	movq	%rdx, -424(%rbp)
	movabsq	$3906085646303834169, %rax
	movabsq	$3761405300628338743, %rdx
	movq	%rax, -416(%rbp)
	movq	%rdx, -408(%rbp)
	movabsq	$3544395820347831604, %rax
	movabsq	$15539630690023731, %rdx
	movq	%rax, -401(%rbp)
	movq	%rdx, -393(%rbp)
	movabsq	$3978425819141910829, %rax
	movabsq	$3833745473465760056, %rdx
	movq	%rax, -576(%rbp)
	movq	%rdx, -568(%rbp)
	movabsq	$3689065127958034230, %rax
	movabsq	$3544395820347831604, %rdx
	movq	%rax, -560(%rbp)
	movq	%rdx, -552(%rbp)
	movabsq	$4123106164818064178, %rax
	movabsq	$3978425819141910832, %rdx
	movq	%rax, -544(%rbp)
	movq	%rdx, -536(%rbp)
	movabsq	$3833745473465760056, %rax
	movabsq	$4846507824378296118, %rdx
	movq	%rax, -528(%rbp)
	movq	%rdx, -520(%rbp)
	movw	$68, -512(%rbp)
	movabsq	$4050765991979987501, %rax
	movabsq	$3906085646303838521, %rdx
	movq	%rax, -656(%rbp)
	movq	%rdx, -648(%rbp)
	movabsq	$3761405300930328631, %rax
	movabsq	$3616745888790558261, %rdx
	movq	%rax, -640(%rbp)
	movq	%rdx, -632(%rbp)
	movabsq	$4916022278035420211, %rax
	movabsq	$4050765991979987505, %rdx
	movq	%rax, -624(%rbp)
	movq	%rdx, -616(%rbp)
	movabsq	$3906085646303839545, %rax
	movabsq	$4918848066137176119, %rdx
	movq	%rax, -608(%rbp)
	movq	%rdx, -600(%rbp)
	movb	$0, -592(%rbp)
	leaq	-384(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC325(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$424, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	leaq	-496(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC326(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$425, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	leaq	-576(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC327(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$426, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	leaq	-656(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC328(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$427, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L88
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC267(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$428, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	movl	%eax, %edx
	leaq	.LC269(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	movl	%eax, %ebx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	leaq	.LC252(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$429, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	movl	%eax, %edx
	leaq	.LC329(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	andl	%eax, %ebx
	movq	-40(%rbp), %rsi
	leaq	.LC185(%rip), %rcx
	leaq	.LC267(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$430, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	movl	%eax, %edx
	leaq	.LC330(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	andl	%eax, %ebx
	movq	-32(%rbp), %rsi
	leaq	.LC252(%rip), %rcx
	leaq	.LC185(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$431, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	movl	%eax, %edx
	leaq	.LC331(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	andl	%eax, %ebx
	movq	-32(%rbp), %rsi
	leaq	.LC185(%rip), %rcx
	leaq	.LC252(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$432, %esi
	movq	%rax, %rdi
	call	test_BN_ne@PLT
	movl	%eax, %edx
	leaq	.LC332(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	test_case
	andl	%eax, %ebx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	leaq	.LC333(%rip), %rcx
	leaq	.LC266(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$433, %esi
	movq	%rax, %rdi
	call	test_BN_eq@PLT
	movl	%eax, %edx
	leaq	.LC334(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	test_case
	andl	%ebx, %eax
	testl	%eax, %eax
	je	.L88
	movl	$1, %eax
	jmp	.L89
.L88:
	movl	$0, %eax
.L89:
	movl	%eax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	test_long_bignum, .-test_long_bignum
	.section	.rodata
.LC335:
	.string	"info"
.LC336:
	.string	"This is an %s message."
.LC337:
	.string	"error"
	.text
	.type	test_messages, @function
test_messages:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC335(%rip), %rcx
	leaq	.LC336(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$443, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	leaq	.LC337(%rip), %rcx
	leaq	.LC336(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$444, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	test_messages, .-test_messages
	.section	.rodata
.LC338:
	.string	"i++"
.LC339:
	.string	"i"
.LC340:
	.string	"++i"
.LC341:
	.string	"--i"
.LC342:
	.string	"i *= 2"
.LC343:
	.string	"12"
.LC344:
	.string	"-9000L"
.LC345:
	.string	"l--"
.LC346:
	.string	"++l"
.LC347:
	.string	"l /= 2"
.LC348:
	.string	"-4500L"
.LC349:
	.string	"--l"
.LC350:
	.string	"++c"
.LC351:
	.string	"c--"
.LC352:
	.string	"--c"
.LC353:
	.string	"'d'"
.LC354:
	.string	"'b'"
.LC355:
	.string	"c++"
.LC356:
	.string	"uc++"
.LC357:
	.string	"22"
.LC358:
	.string	"11"
.LC359:
	.string	"uc /= 2"
.LC360:
	.string	"501"
.LC361:
	.string	"ul ^= 1"
.LC362:
	.string	"ul ^= 3"
.LC363:
	.string	"502"
.LC364:
	.string	"1500"
.LC365:
	.string	"ul = ul * 3 - 6"
.LC366:
	.string	"1234"
.LC367:
	.string	"(--i, st++)"
.LC368:
	.string	"1235"
.LC369:
	.string	"st"
.LC370:
	.string	"p++"
.LC371:
	.string	"++p"
.LC372:
	.string	"buf + 2"
.LC373:
	.string	"p -= 2"
.LC374:
	.string	"buf + 1"
.LC375:
	.string	"p = NULL"
.LC376:
	.string	"123456"
.LC377:
	.string	"23456"
.LC378:
	.string	"\"23456\""
.LC379:
	.string	"p = &(\"123456\"[1])"
.LC380:
	.string	"3456"
.LC381:
	.string	"\"3456\""
.LC382:
	.string	"456"
.LC383:
	.string	"\"456\""
.LC384:
	.string	"--p"
.LC385:
	.string	"p--"
	.text
	.type	test_single_eval, @function
test_single_eval:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$4, -4(%rbp)
	movq	$-9000, -16(%rbp)
	movb	$100, -17(%rbp)
	movb	$22, -18(%rbp)
	movq	$500, -32(%rbp)
	movq	$1234, -40(%rbp)
	movl	$0, -52(%rbp)
	leaq	-52(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	leaq	.LC11(%rip), %rcx
	leaq	.LC338(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	$4, %r9d
	movl	%eax, %r8d
	movl	$459, %esi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L94
	movl	-4(%rbp), %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC339(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$460, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L94
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC340(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$461, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L94
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	leaq	.LC338(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %r9d
	movl	$5, %r8d
	movl	$462, %esi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L94
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %esi
	leaq	.LC15(%rip), %rcx
	leaq	.LC341(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$463, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L94
	sall	-4(%rbp)
	movl	-4(%rbp), %esi
	leaq	.LC342(%rip), %rcx
	leaq	.LC343(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%esi, %r9d
	movl	$12, %r8d
	movl	$464, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	leaq	.LC344(%rip), %rcx
	leaq	.LC345(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	$-9000, %r9
	movq	%rax, %r8
	movl	$466, %esi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L94
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC344(%rip), %rcx
	leaq	.LC346(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	$-9000, %r9
	movq	%rsi, %r8
	movl	$467, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC347(%rip), %rcx
	leaq	.LC344(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rsi, %r9
	movq	$-9000, %r8
	movl	$468, %esi
	movq	%rax, %rdi
	call	test_long_ne@PLT
	testl	%eax, %eax
	je	.L94
	subq	$1, -16(%rbp)
	movq	-16(%rbp), %rsi
	leaq	.LC348(%rip), %rcx
	leaq	.LC349(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	$-4500, %r9
	movq	%rsi, %r8
	movl	$469, %esi
	movq	%rax, %rdi
	call	test_long_lt@PLT
	testl	%eax, %eax
	je	.L94
	movzbl	-17(%rbp), %eax
	addl	$1, %eax
	movb	%al, -17(%rbp)
	movsbl	-17(%rbp), %esi
	leaq	.LC54(%rip), %rcx
	leaq	.LC350(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$101, %r9d
	movl	%esi, %r8d
	movl	$471, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L94
	movzbl	-17(%rbp), %eax
	movl	%eax, %edx
	subl	$1, %edx
	movb	%dl, -17(%rbp)
	movsbl	%al, %esi
	leaq	.LC351(%rip), %rcx
	leaq	.LC54(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%esi, %r9d
	movl	$101, %r8d
	movl	$472, %esi
	movq	%rax, %rdi
	call	test_char_eq@PLT
	testl	%eax, %eax
	je	.L94
	movzbl	-17(%rbp), %eax
	subl	$1, %eax
	movb	%al, -17(%rbp)
	movsbl	-17(%rbp), %esi
	leaq	.LC352(%rip), %rcx
	leaq	.LC353(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%esi, %r9d
	movl	$100, %r8d
	movl	$473, %esi
	movq	%rax, %rdi
	call	test_char_ne@PLT
	testl	%eax, %eax
	je	.L94
	movzbl	-17(%rbp), %eax
	subl	$1, %eax
	movb	%al, -17(%rbp)
	movsbl	-17(%rbp), %esi
	leaq	.LC352(%rip), %rcx
	leaq	.LC354(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%esi, %r9d
	movl	$98, %r8d
	movl	$474, %esi
	movq	%rax, %rdi
	call	test_char_le@PLT
	testl	%eax, %eax
	je	.L94
	movzbl	-17(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movb	%dl, -17(%rbp)
	movsbl	%al, %esi
	leaq	.LC52(%rip), %rcx
	leaq	.LC355(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$99, %r9d
	movl	%esi, %r8d
	movl	$475, %esi
	movq	%rax, %rdi
	call	test_char_lt@PLT
	testl	%eax, %eax
	je	.L94
	movzbl	-18(%rbp), %eax
	leal	1(%rax), %edx
	movb	%dl, -18(%rbp)
	movzbl	%al, %esi
	leaq	.LC356(%rip), %rcx
	leaq	.LC357(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%esi, %r9d
	movl	$22, %r8d
	movl	$477, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L94
	shrb	-18(%rbp)
	movzbl	-18(%rbp), %esi
	leaq	.LC358(%rip), %rcx
	leaq	.LC359(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$11, %r9d
	movl	%esi, %r8d
	movl	$478, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
	testl	%eax, %eax
	je	.L94
	xorq	$1, -32(%rbp)
	movq	-32(%rbp), %rsi
	leaq	.LC360(%rip), %rcx
	leaq	.LC361(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$501, %r9d
	movq	%rsi, %r8
	movl	$479, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L94
	xorq	$3, -32(%rbp)
	movq	-32(%rbp), %rsi
	leaq	.LC362(%rip), %rcx
	leaq	.LC363(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rsi, %r9
	movl	$502, %r8d
	movl	$480, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-32(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	leaq	.LC364(%rip), %rcx
	leaq	.LC365(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1500, %r9d
	movq	%rsi, %r8
	movl	$481, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L94
	subl	$1, -4(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	leaq	.LC366(%rip), %rcx
	leaq	.LC367(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	$1234, %r9d
	movq	%rax, %r8
	movl	$483, %esi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-40(%rbp), %rsi
	leaq	.LC368(%rip), %rcx
	leaq	.LC369(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1235, %r9d
	movq	%rsi, %r8
	movl	$484, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L94
	movl	-4(%rbp), %esi
	leaq	.LC339(%rip), %rcx
	leaq	.LC358(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%esi, %r9d
	movl	$11, %r8d
	movl	$485, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	leaq	-52(%rbp), %rsi
	leaq	.LC207(%rip), %rcx
	leaq	.LC370(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movq	%rax, %r8
	movl	$487, %esi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L94
	addq	$1, -48(%rbp)
	leaq	-52(%rbp), %rax
	addq	$2, %rax
	movq	-48(%rbp), %rsi
	leaq	.LC371(%rip), %rcx
	leaq	.LC372(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movq	%rax, %r8
	movl	$488, %esi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L94
	subq	$2, -48(%rbp)
	movq	-48(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	leaq	.LC373(%rip), %rcx
	leaq	.LC207(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$489, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L94
	addq	$1, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC371(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$490, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L94
	leaq	-52(%rbp), %rax
	addq	$1, %rax
	movq	-48(%rbp), %rsi
	leaq	.LC374(%rip), %rcx
	leaq	.LC248(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %r9
	movq	%rsi, %r8
	movl	$491, %esi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	$0, -48(%rbp)
	leaq	.LC375(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %ecx
	movl	$492, %esi
	movq	%rax, %rdi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L94
	leaq	1+.LC376(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC377(%rip), %rdi
	leaq	1+.LC376(%rip), %rsi
	leaq	.LC378(%rip), %rcx
	leaq	.LC379(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$494, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L94
	addq	$1, -48(%rbp)
	movq	-48(%rbp), %rsi
	leaq	.LC380(%rip), %rdi
	leaq	.LC371(%rip), %rcx
	leaq	.LC381(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$495, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L94
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	leaq	.LC382(%rip), %rsi
	leaq	.LC383(%rip), %rcx
	leaq	.LC370(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rsi, %r9
	movq	%rax, %r8
	movl	$496, %esi
	call	test_str_ne@PLT
	testl	%eax, %eax
	je	.L94
	subq	$1, -48(%rbp)
	movq	-48(%rbp), %rdi
	leaq	.LC381(%rip), %rcx
	leaq	.LC384(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$5
	leaq	.LC380(%rip), %rsi
	pushq	%rsi
	movl	$5, %r9d
	movq	%rdi, %r8
	movl	$498, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L94
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	leaq	.LC383(%rip), %rcx
	leaq	.LC370(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	pushq	$4
	leaq	.LC382(%rip), %rsi
	pushq	%rsi
	movl	$4, %r9d
	movq	%rax, %r8
	movl	$499, %esi
	call	test_mem_ne@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L94
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	leaq	.LC383(%rip), %rcx
	leaq	.LC385(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	pushq	$4
	leaq	.LC382(%rip), %rsi
	pushq	%rsi
	movl	$4, %r9d
	movq	%rax, %r8
	movl	$500, %esi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L94
	movl	$1, %eax
	jmp	.L96
.L94:
	movl	$0, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	test_single_eval, .-test_single_eval
	.section	.rodata
.LC386:
	.string	"test"
	.text
	.type	test_output, @function
test_output:
.LFB487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movabsq	$4050765991979987505, %rax
	movabsq	$3906085646303834169, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$3761405300628338743, %rax
	movabsq	$3616724998069630517, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movabsq	$3474870397276861491, %rax
	movabsq	$4050765991979987505, %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movabsq	$7233733596080582713, %rax
	movabsq	$7812454979559974501, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movabsq	$8391176362264587885, %rax
	movabsq	$4774231742120162933, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$5352889103065367619, %rax
	movabsq	$5931610485769981003, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movabsq	$6003950658608057676, %rax
	movabsq	$25430983861228884, %rdx
	movq	%rax, -23(%rbp)
	movq	%rdx, -15(%rbp)
	leaq	-112(%rbp), %rax
	leaq	.LC386(%rip), %rcx
	movl	$104, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_output_string@PLT
	leaq	-112(%rbp), %rax
	leaq	.LC386(%rip), %rcx
	movl	$105, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	test_output_memory@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	test_output, .-test_output
	.section	.rodata
.LC387:
	.string	"-12345678"
	.align 8
.LC388:
	.string	"12345678901234567890123456789012345678901234567890121234567890123456789012345678901234567890123456789013987657"
	.section	.data.rel.local,"aw"
	.align 32
	.type	bn_output_tests, @object
	.size	bn_output_tests, 32
bn_output_tests:
	.quad	0
	.quad	.LC200
	.quad	.LC387
	.quad	.LC388
	.section	.rodata
	.align 8
.LC389:
	.string	"BN_hex2bn(&b, bn_output_tests[n])"
	.text
	.type	test_bn_output, @function
test_bn_output:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	$0, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bn_output_tests(%rip), %rax
	movq	(%rdx,%rax), %rax
	testq	%rax, %rax
	je	.L100
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bn_output_tests(%rip), %rax
	movq	(%rdx,%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BN_hex2bn@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC389(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$527, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L100
	movl	$0, %eax
	jmp	.L102
.L100:
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	bn_output_tests(%rip), %rax
	movq	(%rcx,%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	test_output_bignum@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	$1, %eax
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	test_bn_output, .-test_bn_output
	.section	.rodata
.LC390:
	.string	"skip test"
	.text
	.type	test_skip_one, @function
test_skip_one:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC390(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$536, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	test_skip_one, .-test_skip_one
	.section	.rodata
.LC391:
	.string	"skip tests: %d"
	.text
	.type	test_skip_many, @function
test_skip_many:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	leaq	.LC391(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movl	%eax, %ecx
	movl	$541, %esi
	movl	$0, %eax
	call	test_skip@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	test_skip_many, .-test_skip_many
	.type	test_skip_null, @function
test_skip_null:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC2(%rip), %rax
	movl	$0, %edx
	movl	$550, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_skip@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	test_skip_null, .-test_skip_null
	.section	.rodata
.LC392:
	.string	"test_int"
.LC393:
	.string	"test_uint"
.LC394:
	.string	"test_char"
.LC395:
	.string	"test_uchar"
.LC396:
	.string	"test_long"
.LC397:
	.string	"test_ulong"
.LC398:
	.string	"test_size_t"
.LC399:
	.string	"test_time_t"
.LC400:
	.string	"test_pointer"
.LC401:
	.string	"test_bool"
.LC402:
	.string	"test_string"
.LC403:
	.string	"test_memory"
.LC404:
	.string	"test_memory_overflow"
.LC405:
	.string	"test_bignum"
.LC406:
	.string	"test_long_bignum"
.LC407:
	.string	"test_long_output"
.LC408:
	.string	"test_messages"
.LC409:
	.string	"test_single_eval"
.LC410:
	.string	"test_output"
.LC411:
	.string	"test_bn_output"
.LC412:
	.string	"test_skip_one"
.LC413:
	.string	"test_skip_null"
.LC414:
	.string	"test_skip_many"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_int(%rip), %rdx
	leaq	.LC392(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_uint(%rip), %rdx
	leaq	.LC393(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_char(%rip), %rdx
	leaq	.LC394(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_uchar(%rip), %rdx
	leaq	.LC395(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_long(%rip), %rdx
	leaq	.LC396(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_ulong(%rip), %rdx
	leaq	.LC397(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_size_t(%rip), %rdx
	leaq	.LC398(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_time_t(%rip), %rdx
	leaq	.LC399(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_pointer(%rip), %rdx
	leaq	.LC400(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bool(%rip), %rdx
	leaq	.LC401(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_string(%rip), %rdx
	leaq	.LC402(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_memory(%rip), %rdx
	leaq	.LC403(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_memory_overflow(%rip), %rdx
	leaq	.LC404(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bignum(%rip), %rdx
	leaq	.LC405(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_long_bignum(%rip), %rdx
	leaq	.LC406(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_long_output(%rip), %rdx
	leaq	.LC407(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_messages(%rip), %rdx
	leaq	.LC408(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_single_eval(%rip), %rdx
	leaq	.LC409(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_output(%rip), %rdx
	leaq	.LC410(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bn_output(%rip), %rsi
	leaq	.LC411(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_skip_one(%rip), %rdx
	leaq	.LC412(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_skip_null(%rip), %rdx
	leaq	.LC413(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_skip_many(%rip), %rsi
	leaq	.LC414(%rip), %rax
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	setup_tests, .-setup_tests
	.data
	.type	buf.1, @object
	.size	buf.1, 4
buf.1:
	.string	"abc"
	.type	buf.0, @object
	.size	buf.0, 4
buf.0:
	.string	"xyz"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
