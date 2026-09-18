	.file	"errtest.c"
	.text
	.type	ERR_GET_REASON, @function
ERR_GET_REASON:
.LFB60:
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
.LFE60:
	.size	ERR_GET_REASON, .-ERR_GET_REASON
	.section	.rodata
.LC0:
	.string	"../test/errtest.c"
.LC1:
	.string	":error:%08lX:%s:%s:%s:%s:%d"
.LC2:
	.string	"syserr"
.LC3:
	.string	"reasoncode"
.LC4:
	.string	"system library"
.LC5:
	.string	"bio = BIO_new(BIO_s_mem())"
.LC6:
	.string	"0"
	.align 8
.LC7:
	.string	"len = BIO_get_mem_data(bio, &out)"
.LC8:
	.string	"IS_HEX(*p)"
.LC9:
	.string	"*p != 0"
.LC10:
	.string	"p"
.LC11:
	.string	"expected"
	.text
	.type	test_print_error_format, @function
test_print_error_format:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$648, %rsp
	.cfi_offset 3, -24
	leaq	__func__.6(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -56(%rbp)
	movl	$37, -60(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -648(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movl	$1, -76(%rbp)
	call	ERR_set_mark@PLT
	call	ERR_new@PLT
	leaq	__func__.6(%rip), %rdx
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	-76(%rbp), %eax
	movl	$0, %edx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_peek_error@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	cltq
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	%eax, %edi
	movl	-76(%rbp), %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%esi, %r9d
	movl	%edi, %r8d
	movl	$72, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L5
	call	ERR_pop_to_mark@PLT
	jmp	.L6
.L5:
	leaq	.LC4(%rip), %rax
	movq	%rax, -104(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %r8
	movq	-104(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rdx
	leaq	-640(%rbp), %rax
	subq	$8, %rsp
	movl	-60(%rbp), %esi
	pushq	%rsi
	pushq	-56(%rbp)
	pushq	-112(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$512, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$32, %rsp
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$93, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_print_errors@PLT
	leaq	-648(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L21
	movq	-648(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L9
.L16:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L10
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	.L11
.L10:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L12
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	jg	.L12
.L11:
	movl	$1, %ecx
	jmp	.L13
.L12:
	movl	$0, %ecx
.L13:
	leaq	.LC8(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$102, %esi
	movq	%rax, %rdi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L22
	addq	$1, -24(%rbp)
.L9:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	je	.L15
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L16
.L15:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
	leaq	.LC9(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$105, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L23
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rbx
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	-640(%rbp), %rdi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC0(%rip), %rax
	pushq	%rbx
	pushq	-24(%rbp)
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$106, %esi
	movq	%rax, %rdi
	call	test_strn_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L23
	movl	$1, -28(%rbp)
	jmp	.L6
.L20:
	nop
	jmp	.L6
.L21:
	nop
	jmp	.L6
.L22:
	nop
	jmp	.L6
.L23:
	nop
.L6:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_print_error_format, .-test_print_error_format
	.section	.rodata
.LC12:
	.string	"EINVAL"
.LC13:
	.string	"errno"
	.text
	.type	preserves_system_error, @function
preserves_system_error:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__errno_location@PLT
	movl	$22, (%rax)
	call	ERR_get_error@PLT
	call	__errno_location@PLT
	movl	(%rax), %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$22, %r9d
	movl	%esi, %r8d
	movl	$126, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	preserves_system_error, .-preserves_system_error
	.section	.rodata
.LC14:
	.string	"hello "
.LC15:
	.string	"world"
.LC16:
	.string	"hello world"
.LC17:
	.string	"\"hello world\""
.LC18:
	.string	"data"
	.text
	.type	vdata_appends, @function
vdata_appends:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ERR_new@PLT
	leaq	__func__.5(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$135, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_add_error_data@PLT
	leaq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ERR_peek_error_data@PLT
	movq	-8(%rbp), %rsi
	leaq	.LC16(%rip), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$139, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	vdata_appends, .-vdata_appends
	.section	.rodata
.LC19:
	.string	"calling exit()"
	.align 8
.LC20:
	.string	"e = ERR_get_error_all(&f, &l, NULL, &data, NULL)"
.LC21:
	.string	"ERR_R_INTERNAL_ERROR"
.LC22:
	.string	"ERR_GET_REASON(e)"
.LC23:
	.string	"line"
.LC24:
	.string	"l"
.LC25:
	.string	"file"
.LC26:
	.string	"f"
.LC27:
	.string	"\"calling exit()\""
	.text
	.type	raised_error, @function
raised_error:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$159, -12(%rbp)
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$159, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdx
	movl	$786691, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ERR_get_error_all@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ERR_GET_REASON
	movl	%eax, %esi
	leaq	.LC21(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$786691, %r9d
	movl	%esi, %r8d
	movl	$162, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movl	-44(%rbp), %esi
	movl	-12(%rbp), %edi
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$164, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$165, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	-40(%rbp), %rsi
	leaq	.LC19(%rip), %rdi
	leaq	.LC27(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$167, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	jne	.L30
.L29:
	movl	$0, %eax
	jmp	.L32
.L30:
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	raised_error, .-raised_error
	.section	.rodata
.LC28:
	.string	"mallocfail"
.LC29:
	.string	"ERR_set_mark()"
.LC30:
	.string	"ERR_pop_to_mark()"
.LC31:
	.string	"ERR_peek_last_error()"
.LC32:
	.string	"ERR_clear_last_mark()"
.LC33:
	.string	"shouldnot"
.LC34:
	.string	"ERR_get_error()"
	.text
	.type	test_marks, @function
test_marks:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$177, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_peek_last_error@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$179, %esi
	movq	%rax, %rdi
	call	test_ulong_gt@PLT
	testl	%eax, %eax
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	call	ERR_set_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$183, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	call	ERR_pop_to_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$184, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$185, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L36
	call	ERR_set_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$186, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	call	ERR_clear_last_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$187, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L36
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$188, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	jne	.L37
.L36:
	movl	$0, %eax
	jmp	.L35
.L37:
	call	ERR_set_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$192, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L38
	movl	$0, %eax
	jmp	.L35
.L38:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$194, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$195, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	je	.L39
	call	ERR_pop_to_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$196, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L39
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$197, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	jne	.L40
.L39:
	movl	$0, %eax
	jmp	.L35
.L40:
	call	ERR_set_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$201, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L41
	call	ERR_set_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$202, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L42
.L41:
	movl	$0, %eax
	jmp	.L35
.L42:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$204, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$205, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	je	.L43
	call	ERR_pop_to_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$206, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	call	ERR_pop_to_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$207, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L43
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$208, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	jne	.L44
.L43:
	movl	$0, %eax
	jmp	.L35
.L44:
	call	ERR_set_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$211, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L45
	movl	$0, %eax
	jmp	.L35
.L45:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$213, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_peek_last_error@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	.LC33(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$215, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	je	.L46
	call	ERR_set_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$216, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L47
.L46:
	movl	$0, %eax
	jmp	.L35
.L47:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$218, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$219, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	je	.L48
	call	ERR_pop_to_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$220, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$221, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L48
	call	ERR_pop_to_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$222, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L48
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$223, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	jne	.L49
.L48:
	movl	$0, %eax
	jmp	.L35
.L49:
	call	ERR_set_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$227, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L35
.L50:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$229, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_clear_last_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$230, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L51
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$231, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	jne	.L52
.L51:
	movl	$0, %eax
	jmp	.L35
.L52:
	call	ERR_pop_to_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$238, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L53
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$239, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	jne	.L54
.L53:
	movl	$0, %eax
	jmp	.L35
.L54:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$243, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_clear_last_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$244, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L55
	call	ERR_get_error@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC34(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$246, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L55
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movl	$0, %r8d
	movl	$247, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	jne	.L56
.L55:
	movl	$0, %eax
	jmp	.L35
.L56:
	call	ERR_set_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$260, %esi
	call	test_false@PLT
	testl	%eax, %eax
	jne	.L57
	movl	$0, %eax
	jmp	.L35
.L57:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$263, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_set_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$264, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L58
	movl	$0, %eax
	jmp	.L35
.L58:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$266, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$267, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_pop_to_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC30(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$270, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L59
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-8(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$271, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	jne	.L60
.L59:
	movl	$0, %eax
	jmp	.L35
.L60:
	call	ERR_set_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$274, %esi
	call	test_true@PLT
	testl	%eax, %eax
	jne	.L61
	movl	$0, %eax
	jmp	.L35
.L61:
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$276, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_new@PLT
	leaq	__func__.3(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$277, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786689, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_clear_last_mark@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC32(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movl	%eax, %ecx
	movl	$280, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L62
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$281, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	jne	.L63
.L62:
	movl	$0, %eax
	jmp	.L35
.L63:
	call	ERR_clear_error@PLT
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_marks, .-test_marks
	.section	.rodata
.LC35:
	.string	"hello %s"
	.align 8
.LC36:
	.string	"ERR_TXT_STRING | ERR_TXT_MALLOCED"
.LC37:
	.string	"flags"
.LC38:
	.string	""
.LC39:
	.string	"\"\""
.LC40:
	.string	"ERR_TXT_MALLOCED"
.LC41:
	.string	"cruel"
.LC42:
	.string	"goodbye %s world"
.LC43:
	.string	"goodbye cruel world"
.LC44:
	.string	"\"goodbye cruel world\""
	.text
	.type	test_clear_error, @function
test_clear_error:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$-1, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$297, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC15(%rip), %rdx
	leaq	.LC35(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_peek_error_data@PLT
	movq	-16(%rbp), %rsi
	leaq	.LC16(%rip), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$299, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L75
	movl	-8(%rbp), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$300, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L75
	call	ERR_clear_error@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$305, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_peek_error_data@PLT
	movq	-16(%rbp), %rsi
	leaq	.LC38(%rip), %rdi
	leaq	.LC39(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$307, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L76
	movl	-8(%rbp), %esi
	leaq	.LC40(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$308, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L76
	call	ERR_clear_error@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$313, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	.LC41(%rip), %rdx
	leaq	.LC42(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_peek_error_data@PLT
	movq	-16(%rbp), %rsi
	leaq	.LC43(%rip), %rdi
	leaq	.LC44(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$315, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L77
	movl	-8(%rbp), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$316, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L77
	call	ERR_clear_error@PLT
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$324, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_peek_error_data@PLT
	movq	-16(%rbp), %rsi
	leaq	.LC38(%rip), %rdi
	leaq	.LC39(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$326, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L78
	movl	-8(%rbp), %esi
	leaq	.LC40(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$327, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L78
	call	ERR_clear_error@PLT
	movl	$1, -4(%rbp)
	jmp	.L67
.L75:
	nop
	jmp	.L67
.L76:
	nop
	jmp	.L67
.L77:
	nop
	jmp	.L67
.L78:
	nop
.L67:
	call	ERR_clear_error@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_clear_error, .-test_clear_error
	.section	.rodata
.LC45:
	.string	"es = OSSL_ERR_STATE_new()"
.LC46:
	.string	"1"
.LC47:
	.string	"interr"
.LC48:
	.string	"testdata"
	.align 8
.LC49:
	.string	"ERR_get_error_all(NULL, NULL, NULL, &data, &flags)"
	.text
	.type	test_save_restore, @function
test_save_restore:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	$0, -4(%rbp)
	movl	$-1, -36(%rbp)
	movq	$0, -48(%rbp)
	call	OSSL_ERR_STATE_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC45(%rip), %rdx
	leaq	.LC0(%rip), %rdi
	movq	%rax, %rcx
	movl	$350, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L103
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$353, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$786688, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_peek_last_error@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$355, %esi
	movq	%rax, %rdi
	call	test_ulong_gt@PLT
	testl	%eax, %eax
	je	.L104
	cmpl	$1, -52(%rbp)
	jne	.L83
	call	ERR_set_mark@PLT
	movl	%eax, %esi
	leaq	.LC46(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$358, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L105
.L83:
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$361, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	leaq	testdata.0(%rip), %rax
	movq	%rax, %rdx
	movl	$786691, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ERR_peek_last_error@PLT
	movq	%rax, -32(%rbp)
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC31(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rsi, %r9
	movq	%rdi, %r8
	movl	$363, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	je	.L106
	cmpl	$0, -52(%rbp)
	jne	.L85
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_save@PLT
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$369, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	jne	.L86
	jmp	.L81
.L85:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_save_to_mark@PLT
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$374, %esi
	movq	%rax, %rdi
	call	test_ulong_ne@PLT
	testl	%eax, %eax
	je	.L107
.L86:
	movl	$0, -8(%rbp)
	jmp	.L87
.L101:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_restore@PLT
	call	ERR_peek_last_error@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC47(%rip), %rcx
	leaq	.LC31(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$381, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L108
	leaq	-36(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ERR_peek_last_error_data@PLT
	movq	-48(%rbp), %rsi
	leaq	testdata.0(%rip), %rdi
	leaq	.LC48(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$384, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L109
	movl	-36(%rbp), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$385, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L109
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_restore@PLT
	cmpl	$0, -52(%rbp)
	je	.L91
	cmpl	$0, -8(%rbp)
	jne	.L92
.L91:
	leaq	-36(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	ERR_get_error_all@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC28(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$393, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L110
	movl	-36(%rbp), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$395, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L110
.L92:
	leaq	-36(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	ERR_get_error_all@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC47(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$399, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L111
	movq	-48(%rbp), %rsi
	leaq	testdata.0(%rip), %rdi
	leaq	.LC48(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$401, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L111
	movl	-36(%rbp), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$402, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L111
	cmpl	$0, -52(%rbp)
	jne	.L96
	leaq	-36(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	ERR_get_error_all@PLT
	movq	%rax, %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC28(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$406, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L112
	movl	-36(%rbp), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$408, %esi
	movq	%rax, %rdi
	call	test_int_ne@PLT
	testl	%eax, %eax
	je	.L112
.L96:
	leaq	-36(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	ERR_get_error_all@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC47(%rip), %rcx
	leaq	.LC49(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$412, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L113
	movq	-48(%rbp), %rsi
	leaq	testdata.0(%rip), %rdi
	leaq	.LC48(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$414, %esi
	movq	%rax, %rdi
	call	test_str_eq@PLT
	testl	%eax, %eax
	je	.L113
	movl	-36(%rbp), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$415, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L113
	call	ERR_get_error@PLT
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$418, %esi
	movq	%rax, %rdi
	call	test_ulong_eq@PLT
	testl	%eax, %eax
	je	.L114
	addl	$1, -8(%rbp)
.L87:
	cmpl	$1, -8(%rbp)
	jle	.L101
	movl	$1, -4(%rbp)
	jmp	.L81
.L103:
	nop
	jmp	.L81
.L104:
	nop
	jmp	.L81
.L105:
	nop
	jmp	.L81
.L106:
	nop
	jmp	.L81
.L107:
	nop
	jmp	.L81
.L108:
	nop
	jmp	.L81
.L109:
	nop
	jmp	.L81
.L110:
	nop
	jmp	.L81
.L111:
	nop
	jmp	.L81
.L112:
	nop
	jmp	.L81
.L113:
	nop
	jmp	.L81
.L114:
	nop
.L81:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	OSSL_ERR_STATE_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	test_save_restore, .-test_save_restore
	.section	.rodata
.LC50:
	.string	"preserves_system_error"
.LC51:
	.string	"vdata_appends"
.LC52:
	.string	"raised_error"
.LC53:
	.string	"test_print_error_format"
.LC54:
	.string	"test_marks"
.LC55:
	.string	"test_save_restore"
.LC56:
	.string	"test_clear_error"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	preserves_system_error(%rip), %rdx
	leaq	.LC50(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	vdata_appends(%rip), %rdx
	leaq	.LC51(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	raised_error(%rip), %rdx
	leaq	.LC52(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_print_error_format(%rip), %rdx
	leaq	.LC53(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_marks(%rip), %rdx
	leaq	.LC54(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_save_restore(%rip), %rsi
	leaq	.LC55(%rip), %rax
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	leaq	test_clear_error(%rip), %rdx
	leaq	.LC56(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	__func__.6, @object
	.size	__func__.6, 24
__func__.6:
	.string	"test_print_error_format"
	.align 8
	.type	__func__.5, @object
	.size	__func__.5, 14
__func__.5:
	.string	"vdata_appends"
	.align 8
	.type	__func__.4, @object
	.size	__func__.4, 13
__func__.4:
	.string	"raised_error"
	.align 8
	.type	__func__.3, @object
	.size	__func__.3, 11
__func__.3:
	.string	"test_marks"
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 17
__func__.2:
	.string	"test_clear_error"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 18
__func__.1:
	.string	"test_save_restore"
	.align 8
	.type	testdata.0, @object
	.size	testdata.0, 10
testdata.0:
	.string	"test data"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
