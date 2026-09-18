	.file	"sanitytest.c"
	.text
	.type	safe_sub_time, @function
safe_sub_time:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jnb	.L2
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L2:
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	safe_sub_time, .-safe_sub_time
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time2ticks, @function
ossl_time2ticks:
.LFB478:
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
.LFE478:
	.size	ossl_time2ticks, .-ossl_time2ticks
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	ossl_time_zero, .-ossl_time_zero
	.type	ossl_time_subtract, @function
ossl_time_subtract:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	safe_sub_time
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	je	.L11
	call	ossl_time_zero
	jmp	.L13
.L11:
	movq	-8(%rbp), %rax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	ossl_time_subtract, .-ossl_time_subtract
	.section	.rodata
.LC0:
	.string	"bytes"
.LC1:
	.string	"&p"
.LC2:
	.string	"../test/sanitytest.c"
	.text
	.type	test_sanity_null_zero, @function
test_sanity_null_zero:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	leaq	-16(%rbp), %rax
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-8(%rbp), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$8
	leaq	-16(%rbp), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$28, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	test_sanity_null_zero, .-test_sanity_null_zero
	.section	.rodata
.LC3:
	.string	"sizeof(int)"
.LC4:
	.string	"sizeof(enum smallchoices)"
.LC5:
	.string	"sizeof(enum medchoices)"
.LC6:
	.string	"sizeof(enum largechoices)"
	.text
	.type	test_sanity_enum_size, @function
test_sanity_enum_size:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	$4, %r8d
	movl	$49, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC3(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	$4, %r8d
	movl	$50, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L17
	leaq	.LC3(%rip), %rcx
	leaq	.LC6(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	$4, %r8d
	movl	$51, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L18
.L17:
	movl	$0, %eax
	jmp	.L19
.L18:
	movl	$1, %eax
.L19:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	test_sanity_enum_size, .-test_sanity_enum_size
	.section	.rodata
.LC7:
	.string	"0"
.LC8:
	.string	"~(-1)"
.LC9:
	.string	"0L"
.LC10:
	.string	"~(-1L)"
	.text
	.type	test_sanity_twos_complement, @function
test_sanity_twos_complement:
.LFB498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$59, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L21
	leaq	.LC9(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	jne	.L22
.L21:
	movl	$0, %eax
	jmp	.L23
.L22:
	movl	$1, %eax
.L23:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE498:
	.size	test_sanity_twos_complement, .-test_sanity_twos_complement
	.section	.rodata
.LC11:
	.string	"INT_MAX"
.LC12:
	.string	"-(INT_MIN + 1)"
.LC13:
	.string	"LONG_MAX"
.LC14:
	.string	"-(LONG_MIN + 1)"
	.text
	.type	test_sanity_sign, @function
test_sanity_sign:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC11(%rip), %rcx
	leaq	.LC12(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2147483647, %r9d
	movl	$2147483647, %r8d
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L25
	movabsq	$9223372036854775807, %rdi
	movabsq	$9223372036854775807, %rsi
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$69, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	jne	.L26
.L25:
	movl	$0, %eax
	jmp	.L27
.L26:
	movl	$1, %eax
.L27:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	test_sanity_sign, .-test_sanity_sign
	.section	.rodata
.LC15:
	.string	"INT_MIN"
	.align 8
.LC16:
	.string	"(int)((unsigned int)INT_MAX + 1)"
.LC17:
	.string	"LONG_MIN"
	.align 8
.LC18:
	.string	"(long)((unsigned long)LONG_MAX + 1)"
	.text
	.type	test_sanity_unsigned_conversion, @function
test_sanity_unsigned_conversion:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$-2147483648, %r9d
	movl	$-2147483648, %r8d
	movl	$77, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L29
	movabsq	$-9223372036854775808, %rdi
	movabsq	$-9223372036854775808, %rsi
	leaq	.LC17(%rip), %rcx
	leaq	.LC18(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$78, %esi
	movq	%rax, %rdi
	call	test_long_eq@PLT
	testl	%eax, %eax
	jne	.L30
.L29:
	movl	$0, %eax
	jmp	.L31
.L30:
	movl	$1, %eax
.L31:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	test_sanity_unsigned_conversion, .-test_sanity_unsigned_conversion
	.section	.rodata
.LC19:
	.string	"1"
.LC20:
	.string	"sizeof(int8_t)"
.LC21:
	.string	"sizeof(uint8_t)"
.LC22:
	.string	"2"
.LC23:
	.string	"sizeof(int16_t)"
.LC24:
	.string	"sizeof(uint16_t)"
.LC25:
	.string	"4"
.LC26:
	.string	"sizeof(int32_t)"
.LC27:
	.string	"sizeof(uint32_t)"
.LC28:
	.string	"8"
.LC29:
	.string	"sizeof(int64_t)"
.LC30:
	.string	"sizeof(uint64_t)"
.LC31:
	.string	"16"
.LC32:
	.string	"sizeof(int128_t)"
.LC33:
	.string	"sizeof(uint128_t)"
.LC34:
	.string	"sizeof(char)"
.LC35:
	.string	"sizeof(unsigned char)"
.LC36:
	.string	"sizeof(long long int)"
	.align 8
.LC37:
	.string	"sizeof(unsigned long long int)"
.LC38:
	.string	"sizeof(ossl_intmax_t)"
.LC39:
	.string	"sizeof(ossl_uintmax_t)"
.LC40:
	.string	"sizeof(size_t)"
	.text
	.type	test_sanity_range, @function
test_sanity_range:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC19(%rip), %rcx
	leaq	.LC20(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$86, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC19(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	$2, %r8d
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC22(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$2, %r9d
	movl	$2, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	$4, %r8d
	movl	$90, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC25(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$4, %r9d
	movl	$4, %r8d
	movl	$91, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC28(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8, %r9d
	movl	$8, %r8d
	movl	$92, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC28(%rip), %rcx
	leaq	.LC30(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8, %r9d
	movl	$8, %r8d
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movl	$16, %r8d
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC31(%rip), %rcx
	leaq	.LC33(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$16, %r9d
	movl	$16, %r8d
	movl	$96, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC19(%rip), %rcx
	leaq	.LC34(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$98, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	je	.L33
	leaq	.LC19(%rip), %rcx
	leaq	.LC35(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$99, %esi
	movq	%rax, %rdi
	call	test_size_t_eq@PLT
	testl	%eax, %eax
	jne	.L34
.L33:
	movl	$0, %eax
	jmp	.L35
.L34:
	leaq	.LC28(%rip), %rcx
	leaq	.LC36(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8, %r9d
	movl	$8, %r8d
	movl	$103, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	testl	%eax, %eax
	je	.L36
	leaq	.LC28(%rip), %rcx
	leaq	.LC37(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8, %r9d
	movl	$8, %r8d
	movl	$104, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	testl	%eax, %eax
	jne	.L37
.L36:
	movl	$0, %eax
	jmp	.L35
.L37:
	leaq	.LC28(%rip), %rcx
	leaq	.LC38(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8, %r9d
	movl	$8, %r8d
	movl	$112, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC28(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8, %r9d
	movl	$8, %r8d
	movl	$113, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	testl	%eax, %eax
	je	.L38
	leaq	.LC40(%rip), %rcx
	leaq	.LC39(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$8, %r9d
	movl	$8, %r8d
	movl	$114, %esi
	movq	%rax, %rdi
	call	test_size_t_ge@PLT
	testl	%eax, %eax
	jne	.L39
.L38:
	movl	$0, %eax
	jmp	.L35
.L39:
	movl	$1, %eax
.L35:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	test_sanity_range, .-test_sanity_range
	.section	.rodata
.LC41:
	.string	"cd"
.LC42:
	.string	"ab"
	.text
	.type	test_sanity_memcmp, @function
test_sanity_memcmp:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC41(%rip), %rcx
	leaq	.LC42(%rip), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_memcmp@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	test_sanity_memcmp, .-test_sanity_memcmp
	.section	.rodata
	.align 32
	.type	sleep_test_vectors, @object
	.size	sleep_test_vectors, 32
sleep_test_vectors:
	.quad	0
	.quad	1
	.quad	999
	.quad	1000
	.text
	.type	alrm_handler, @function
alrm_handler:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	alrm_handler, .-alrm_handler
	.section	.rodata
.LC43:
	.string	"test_sanity_sleep: sigaction"
	.align 8
.LC44:
	.string	"test_sanity_sleep: sigprocmask"
	.align 8
.LC45:
	.string	"test_sanity_sleep: arm setitimer"
	.align 8
.LC46:
	.string	"test_sanity_sleep: disarm setitimer"
.LC47:
	.string	"td->val"
.LC48:
	.string	"ms"
.LC49:
	.string	"td->val + 20000"
	.text
	.type	test_sanity_sleep, @function
test_sanity_sleep:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 3, -24
	movl	%edi, -324(%rbp)
	movl	-324(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	sleep_test_vectors(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	call	ossl_time_now@PLT
	movq	%rax, -40(%rbp)
	leaq	-192(%rbp), %rax
	movl	$152, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	alrm_handler(%rip), %rax
	movq	%rax, -192(%rbp)
	leaq	-192(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$14, %edi
	call	sigaction@PLT
	testl	%eax, %eax
	je	.L44
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	call	test_perror@PLT
	jmp	.L48
.L44:
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	sigemptyset@PLT
	leaq	-320(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	leaq	-320(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	sigprocmask@PLT
	testl	%eax, %eax
	je	.L46
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	call	test_perror@PLT
	jmp	.L48
.L46:
	leaq	it.1(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	setitimer@PLT
	testl	%eax, %eax
	je	.L48
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	call	test_perror@PLT
	nop
.L48:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OSSL_sleep@PLT
	leaq	it.0(%rip), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	setitimer@PLT
	testl	%eax, %eax
	je	.L49
	leaq	.LC46(%rip), %rax
	movq	%rax, %rdi
	call	test_perror@PLT
	nop
.L49:
	call	ossl_time_now@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ossl_time_subtract
	movq	%rax, %rdi
	call	ossl_time2ticks
	movabsq	$4835703278458516699, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$18, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC47(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$206, %esi
	movq	%rax, %rdi
	call	test_uint64_t_ge@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %ebx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	20000(%rax), %rdi
	movq	-32(%rbp), %rsi
	leaq	.LC49(%rip), %rcx
	leaq	.LC48(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$206, %esi
	movq	%rax, %rdi
	call	test_uint64_t_le@PLT
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	addl	%ebx, %eax
	testl	%eax, %eax
	je	.L50
	movl	$0, %eax
	jmp	.L52
.L50:
	movl	$1, %eax
.L52:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	test_sanity_sleep, .-test_sanity_sleep
	.section	.rodata
.LC50:
	.string	"test_sanity_null_zero"
.LC51:
	.string	"test_sanity_enum_size"
.LC52:
	.string	"test_sanity_twos_complement"
.LC53:
	.string	"test_sanity_sign"
	.align 8
.LC54:
	.string	"test_sanity_unsigned_conversion"
.LC55:
	.string	"test_sanity_range"
.LC56:
	.string	"test_sanity_memcmp"
.LC57:
	.string	"test_sanity_sleep"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_sanity_null_zero(%rip), %rdx
	leaq	.LC50(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sanity_enum_size(%rip), %rdx
	leaq	.LC51(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sanity_twos_complement(%rip), %rdx
	leaq	.LC52(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sanity_sign(%rip), %rdx
	leaq	.LC53(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sanity_unsigned_conversion(%rip), %rdx
	leaq	.LC54(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sanity_range(%rip), %rdx
	leaq	.LC55(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sanity_memcmp(%rip), %rdx
	leaq	.LC56(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_sanity_sleep(%rip), %rsi
	leaq	.LC57(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 32
	.type	it.1, @object
	.size	it.1, 32
it.1:
	.quad	0
	.quad	111111
	.zero	16
	.align 32
	.type	it.0, @object
	.size	it.0, 32
it.0:
	.zero	32
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
