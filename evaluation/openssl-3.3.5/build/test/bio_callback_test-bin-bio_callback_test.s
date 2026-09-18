	.file	"bio_callback_test.c"
	.text
	.local	my_param_count
	.comm	my_param_count,4,4
	.local	my_param_b
	.comm	my_param_b,40,32
	.local	my_param_oper
	.comm	my_param_oper,20,16
	.local	my_param_argp
	.comm	my_param_argp,40,32
	.local	my_param_argi
	.comm	my_param_argi,20,16
	.local	my_param_argl
	.comm	my_param_argl,40,32
	.local	my_param_ret
	.comm	my_param_ret,40,32
	.local	my_param_len
	.comm	my_param_len,40,32
	.local	my_param_processed
	.comm	my_param_processed,40,32
	.type	my_bio_cb_ex, @function
my_bio_cb_ex:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -16(%rbp)
	movq	%r9, -40(%rbp)
	movl	my_param_count(%rip), %eax
	cmpl	$4, %eax
	jle	.L2
	movq	$-1, %rax
	jmp	.L3
.L2:
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	my_param_b(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	my_param_oper(%rip), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	my_param_argp(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	my_param_argi(%rip), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	my_param_argl(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	my_param_count(%rip), %edx
	movl	16(%rbp), %eax
	cltq
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	my_param_ret(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	my_param_len(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	cmpq	$0, 24(%rbp)
	je	.L4
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L5
.L4:
	movl	$0, %eax
.L5:
	movl	my_param_count(%rip), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	my_param_processed(%rip), %rdx
	movq	%rax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, my_param_count(%rip)
	movl	16(%rbp), %eax
	cltq
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	my_bio_cb_ex, .-my_bio_cb_ex
	.section	.rodata
.LC0:
	.string	"test1len"
.LC1:
	.string	"i"
.LC2:
	.string	"../test/bio_callback_test.c"
.LC3:
	.string	"2"
.LC4:
	.string	"my_param_count"
.LC5:
	.string	"bio"
.LC6:
	.string	"my_param_b[0]"
.LC7:
	.string	"BIO_CB_WRITE"
.LC8:
	.string	"my_param_oper[0]"
.LC9:
	.string	"test1"
.LC10:
	.string	"my_param_argp[0]"
.LC11:
	.string	"my_param_len[0]"
.LC12:
	.string	"0L"
.LC13:
	.string	"my_param_argl[0]"
.LC14:
	.string	"1"
.LC15:
	.string	"(int)my_param_ret[0]"
.LC16:
	.string	"my_param_b[1]"
.LC17:
	.string	"BIO_CB_WRITE | BIO_CB_RETURN"
.LC18:
	.string	"my_param_oper[1]"
.LC19:
	.string	"my_param_argp[1]"
.LC20:
	.string	"my_param_len[1]"
.LC21:
	.string	"my_param_argl[1]"
.LC22:
	.string	"my_param_processed[1]"
.LC23:
	.string	"(int)my_param_ret[1]"
.LC24:
	.string	"buf"
.LC25:
	.string	"BIO_CB_READ"
.LC26:
	.string	"sizeof(buf)"
.LC27:
	.string	"BIO_CB_READ | BIO_CB_RETURN"
.LC28:
	.string	"-1"
.LC29:
	.string	"0"
.LC30:
	.string	"BIO_CB_CTRL"
.LC31:
	.string	"NULL"
.LC32:
	.string	"BIO_C_SET_BUF_MEM_EOF_RETURN"
.LC33:
	.string	"my_param_argi[0]"
.LC34:
	.string	"BIO_CB_CTRL | BIO_CB_RETURN"
.LC35:
	.string	"my_param_argi[1]"
.LC36:
	.string	"5"
.LC37:
	.string	"BIO_CB_PUTS"
.LC38:
	.string	"test2"
.LC39:
	.string	"BIO_CB_PUTS | BIO_CB_RETURN"
.LC40:
	.string	"test2len"
.LC41:
	.string	"BIO_CB_FREE"
	.text
	.type	test_bio_callback_ex, @function
test_bio_callback_ex:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	$1953719668, -41(%rbp)
	movb	$0, -37(%rbp)
	movq	$4, -16(%rbp)
	movl	$1819043176, -47(%rbp)
	movw	$111, -43(%rbp)
	movq	$5, -24(%rbp)
	movl	$0, my_param_count(%rip)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L25
	leaq	my_bio_cb_ex(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	leaq	-41(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	%eax, %edi
	movl	-36(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$64, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	movl	my_param_count(%rip), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$66, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L26
	movl	my_param_oper(%rip), %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$67, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	my_param_argp(%rip), %rsi
	leaq	-41(%rbp), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	my_param_len(%rip), %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$70, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$71, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	8+my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$72, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L26
	movl	4+my_param_oper(%rip), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$131, %r9d
	movl	%esi, %r8d
	movl	$73, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	8+my_param_argp(%rip), %rsi
	leaq	-41(%rbp), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$74, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	8+my_param_len(%rip), %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$75, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	8+my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$76, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	8+my_param_processed(%rip), %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L26
	movq	8+my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$78, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L26
	movl	$0, my_param_count(%rip)
	leaq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %r8
	leaq	-64(%rbp), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	-16(%rbp)
	leaq	-41(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L27
	movl	my_param_count(%rip), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$84, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L27
	movl	my_param_oper(%rip), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$86, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	my_param_len(%rip), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$90, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	8+my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$91, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L27
	movl	4+my_param_oper(%rip), %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$130, %r9d
	movl	%esi, %r8d
	movl	$92, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	8+my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	8+my_param_len(%rip), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$94, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	8+my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	8+my_param_processed(%rip), %rsi
	movq	-16(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$96, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L27
	movq	8+my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$97, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L27
	movl	$0, my_param_count(%rip)
	leaq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$103, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L28
	movl	my_param_count(%rip), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$104, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$105, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L28
	movl	my_param_oper(%rip), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$106, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$107, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	my_param_len(%rip), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$108, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$109, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$110, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	8+my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$111, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L28
	movl	4+my_param_oper(%rip), %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$130, %r9d
	movl	%esi, %r8d
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	8+my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	8+my_param_len(%rip), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	8+my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$115, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	8+my_param_processed(%rip), %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$116, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L28
	movq	8+my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$117, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L28
	movl	$0, my_param_count(%rip)
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$123, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movl	my_param_count(%rip), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$124, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$125, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L29
	movl	my_param_oper(%rip), %esi
	leaq	.LC30(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$6, %r9d
	movl	%esi, %r8d
	movl	$126, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	my_param_argp(%rip), %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$127, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L29
	movl	my_param_argi(%rip), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$130, %r9d
	movl	%esi, %r8d
	movl	$128, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$129, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$130, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	8+my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$131, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L29
	movl	4+my_param_oper(%rip), %esi
	leaq	.LC34(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$134, %r9d
	movl	%esi, %r8d
	movl	$132, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	8+my_param_argp(%rip), %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$133, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L29
	movl	4+my_param_argi(%rip), %esi
	leaq	.LC32(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$130, %r9d
	movl	%esi, %r8d
	movl	$134, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	8+my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$135, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L29
	movq	8+my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$136, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movl	$0, my_param_count(%rip)
	leaq	-64(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$140, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L30
	movl	my_param_count(%rip), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$141, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$142, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L30
	movl	my_param_oper(%rip), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$143, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$144, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	my_param_len(%rip), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$145, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$146, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$147, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	8+my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$148, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L30
	movl	4+my_param_oper(%rip), %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$130, %r9d
	movl	%esi, %r8d
	movl	$149, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	8+my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$150, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	8+my_param_len(%rip), %rsi
	leaq	.LC26(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movq	%rsi, %r8
	movl	$151, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	8+my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$152, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	8+my_param_processed(%rip), %rsi
	leaq	.LC29(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$153, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L30
	movq	8+my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$154, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L30
	movl	$0, my_param_count(%rip)
	leaq	-47(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$159, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movl	my_param_count(%rip), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$160, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L31
	movl	my_param_oper(%rip), %esi
	leaq	.LC37(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$162, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	my_param_argp(%rip), %rsi
	leaq	-47(%rbp), %rdi
	leaq	.LC38(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$163, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L31
	movl	my_param_argi(%rip), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$164, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$165, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$166, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	8+my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$167, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L31
	movl	4+my_param_oper(%rip), %esi
	leaq	.LC39(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$132, %r9d
	movl	%esi, %r8d
	movl	$168, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	8+my_param_argp(%rip), %rsi
	leaq	-47(%rbp), %rdi
	leaq	.LC38(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$169, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L31
	movl	4+my_param_argi(%rip), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$170, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	8+my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$171, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	8+my_param_processed(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC40(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$172, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L31
	movq	8+my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$173, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L31
	movl	$0, my_param_count(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$178, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movl	my_param_count(%rip), %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$179, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movq	my_param_b(%rip), %rsi
	movq	-32(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$180, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L32
	movl	my_param_oper(%rip), %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$181, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movq	my_param_argp(%rip), %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$182, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L32
	movl	my_param_argi(%rip), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$183, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$184, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L32
	movq	my_param_ret(%rip), %rax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$185, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L32
	movl	$1, -4(%rbp)
	jmp	.L23
.L25:
	nop
	jmp	.L8
.L26:
	nop
	jmp	.L8
.L27:
	nop
	jmp	.L8
.L28:
	nop
	jmp	.L8
.L29:
	nop
	jmp	.L8
.L30:
	nop
	jmp	.L8
.L31:
	nop
.L8:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L23
.L32:
	nop
.L23:
	leaq	my_param_b(%rip), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	my_param_argp(%rip), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_bio_callback_ex, .-test_bio_callback_ex
	.type	my_bio_callback, @function
my_bio_callback:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	my_param_count(%rip), %eax
	cmpl	$4, %eax
	jle	.L34
	movq	$-1, %rax
	jmp	.L35
.L34:
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	my_param_b(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	my_param_oper(%rip), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	my_param_argp(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	my_param_argi(%rip), %rdx
	movl	-16(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	my_param_argl(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	my_param_ret(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rcx,%rdx)
	movl	my_param_count(%rip), %eax
	addl	$1, %eax
	movl	%eax, my_param_count(%rip)
	movq	-40(%rbp), %rax
.L35:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	my_bio_callback, .-my_bio_callback
	.section	.rodata
.LC42:
	.string	"1L"
.LC43:
	.string	"my_param_ret[0]"
.LC44:
	.string	"(long)test1len"
.LC45:
	.string	"my_param_ret[1]"
.LC46:
	.string	"-1L"
.LC47:
	.string	"(long)test2len"
	.text
	.type	test_bio_callback, @function
test_bio_callback:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	$1953719668, -33(%rbp)
	movb	$0, -29(%rbp)
	movl	$4, -8(%rbp)
	movl	$1819043176, -39(%rbp)
	movw	$111, -35(%rbp)
	movl	$5, -12(%rbp)
	movl	$0, my_param_count(%rip)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L53
	leaq	my_bio_callback(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback@PLT
	movl	-8(%rbp), %edx
	leaq	-33(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %edi
	movl	-28(%rbp), %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$236, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L54
	movl	my_param_count(%rip), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$237, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L54
	movq	my_param_b(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$238, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L54
	movl	my_param_oper(%rip), %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$3, %r9d
	movl	%esi, %r8d
	movl	$239, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L54
	movq	my_param_argp(%rip), %rsi
	leaq	-33(%rbp), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$240, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L54
	movl	my_param_argi(%rip), %esi
	movl	-8(%rbp), %edi
	leaq	.LC0(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$241, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L54
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$242, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L54
	movq	my_param_ret(%rip), %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$243, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L54
	movq	8+my_param_b(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$244, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L54
	movl	4+my_param_oper(%rip), %esi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$131, %r9d
	movl	%esi, %r8d
	movl	$245, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L54
	movq	8+my_param_argp(%rip), %rsi
	leaq	-33(%rbp), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$246, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L54
	movl	4+my_param_argi(%rip), %esi
	movl	-8(%rbp), %edi
	leaq	.LC0(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$247, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L54
	movq	8+my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$248, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L54
	movl	-8(%rbp), %eax
	movslq	%eax, %rdi
	movq	8+my_param_ret(%rip), %rsi
	leaq	.LC44(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$249, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L54
	movl	$0, my_param_count(%rip)
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-28(%rbp), %eax
	movslq	%eax, %r8
	leaq	-64(%rbp), %rdi
	leaq	.LC9(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	-33(%rbp), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$254, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L55
	movl	my_param_count(%rip), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$255, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L55
	movq	my_param_b(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$256, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L55
	movl	my_param_oper(%rip), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$257, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L55
	movq	my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$258, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L55
	movl	my_param_argi(%rip), %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$259, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L55
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$260, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L55
	movq	my_param_ret(%rip), %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$261, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L55
	movq	8+my_param_b(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$262, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L55
	movl	4+my_param_oper(%rip), %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$130, %r9d
	movl	%esi, %r8d
	movl	$263, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L55
	movq	8+my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$264, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L55
	movl	4+my_param_argi(%rip), %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$265, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L55
	movq	8+my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$266, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L55
	movl	-8(%rbp), %eax
	movslq	%eax, %rdi
	movq	8+my_param_ret(%rip), %rsi
	leaq	.LC44(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$267, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L55
	movl	$0, my_param_count(%rip)
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %esi
	leaq	.LC28(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-1, %r9d
	movl	%esi, %r8d
	movl	$273, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L56
	movl	my_param_count(%rip), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$274, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L56
	movq	my_param_b(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$275, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L56
	movl	my_param_oper(%rip), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$276, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L56
	movq	my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$277, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L56
	movl	my_param_argi(%rip), %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$278, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L56
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$279, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L56
	movq	my_param_ret(%rip), %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$280, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L56
	movq	8+my_param_b(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$281, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L56
	movl	4+my_param_oper(%rip), %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$130, %r9d
	movl	%esi, %r8d
	movl	$282, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L56
	movq	8+my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$283, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L56
	movl	4+my_param_argi(%rip), %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$284, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L56
	movq	8+my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$285, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L56
	movq	8+my_param_ret(%rip), %rsi
	leaq	.LC46(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	$-1, %r9
	movq	%rsi, %r8
	movl	$286, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L56
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	$0, my_param_count(%rip)
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$293, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L57
	movl	my_param_count(%rip), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$294, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	my_param_b(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$295, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L57
	movl	my_param_oper(%rip), %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$296, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$297, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L57
	movl	my_param_argi(%rip), %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$298, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$299, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	my_param_ret(%rip), %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$300, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	8+my_param_b(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$301, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L57
	movl	4+my_param_oper(%rip), %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$130, %r9d
	movl	%esi, %r8d
	movl	$302, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	8+my_param_argp(%rip), %rsi
	leaq	-64(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$303, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L57
	movl	4+my_param_argi(%rip), %esi
	leaq	.LC26(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$304, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	8+my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$305, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L57
	movq	8+my_param_ret(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$306, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L57
	movl	$0, my_param_count(%rip)
	leaq	-39(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$311, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L58
	movl	my_param_count(%rip), %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$312, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L58
	movq	my_param_b(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$313, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L58
	movl	my_param_oper(%rip), %esi
	leaq	.LC37(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$314, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L58
	movq	my_param_argp(%rip), %rsi
	leaq	-39(%rbp), %rdi
	leaq	.LC38(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$315, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L58
	movl	my_param_argi(%rip), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$316, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L58
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$317, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L58
	movq	my_param_ret(%rip), %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$318, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L58
	movq	8+my_param_b(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$319, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L58
	movl	4+my_param_oper(%rip), %esi
	leaq	.LC39(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$132, %r9d
	movl	%esi, %r8d
	movl	$320, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L58
	movq	8+my_param_argp(%rip), %rsi
	leaq	-39(%rbp), %rdi
	leaq	.LC38(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$321, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L58
	movl	4+my_param_argi(%rip), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$322, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L58
	movq	8+my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$323, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L58
	movl	-12(%rbp), %eax
	movslq	%eax, %rdi
	movq	8+my_param_ret(%rip), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC45(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$324, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L58
	movl	$0, my_param_count(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$329, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L59
	movl	my_param_count(%rip), %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$330, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L59
	movq	my_param_b(%rip), %rsi
	movq	-24(%rbp), %rdi
	leaq	.LC5(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$331, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L59
	movl	my_param_oper(%rip), %esi
	leaq	.LC41(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$332, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L59
	movq	my_param_argp(%rip), %rsi
	leaq	.LC31(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$333, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L59
	movl	my_param_argi(%rip), %esi
	leaq	.LC29(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$334, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L59
	movq	my_param_argl(%rip), %rsi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movq	%rsi, %r8
	movl	$335, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L59
	movq	my_param_ret(%rip), %rsi
	leaq	.LC42(%rip), %rcx
	leaq	.LC43(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movq	%rsi, %r8
	movl	$336, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	je	.L59
	movl	$1, -4(%rbp)
	jmp	.L51
.L53:
	nop
	jmp	.L38
.L54:
	nop
	jmp	.L38
.L55:
	nop
	jmp	.L38
.L56:
	nop
	jmp	.L38
.L57:
	nop
	jmp	.L38
.L58:
	nop
.L38:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	jmp	.L51
.L59:
	nop
.L51:
	leaq	my_param_b(%rip), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	my_param_argp(%rip), %rax
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_bio_callback, .-test_bio_callback
	.section	.rodata
.LC48:
	.string	"test_bio_callback_ex"
.LC49:
	.string	"test_bio_callback"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_bio_callback_ex(%rip), %rdx
	leaq	.LC48(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bio_callback(%rip), %rdx
	leaq	.LC49(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
