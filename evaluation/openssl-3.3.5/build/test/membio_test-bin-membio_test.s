	.file	"membio_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"bio"
.LC1:
	.string	"../test/membio_test.c"
.LC2:
	.string	"rbio"
.LC3:
	.string	"0"
	.align 8
.LC4:
	.string	"BIO_set_mem_eof_return(rbio, 0)"
	.align 8
.LC5:
	.string	"BIO_set_mem_eof_return(bio, 0)"
.LC6:
	.string	"sizeof(msg1)"
	.align 8
.LC7:
	.string	"BIO_write(bio, msg1, sizeof(msg1))"
.LC8:
	.string	"sizeof(msg2)"
	.align 8
.LC9:
	.string	"BIO_write(bio, msg2, sizeof(msg2))"
.LC10:
	.string	"sizeof(msg3)"
	.align 8
.LC11:
	.string	"BIO_write(bio, msg3, sizeof(msg3))"
.LC12:
	.string	"sizeof(msg4)"
	.align 8
.LC13:
	.string	"BIO_write(bio, msg4, sizeof(msg4))"
	.align 8
.LC14:
	.string	"BIO_read(bio, buf, sizeof(buf))"
.LC15:
	.string	"msg1"
.LC16:
	.string	"buf"
.LC17:
	.string	"msg2"
.LC18:
	.string	"msg3"
.LC19:
	.string	"msg4"
.LC20:
	.string	"2"
.LC21:
	.string	"BIO_read(bio, buf, 2)"
.LC22:
	.string	"BIO_write(bio, NULL, 0)"
.LC23:
	.string	"BIO_eof(bio)"
.LC24:
	.string	"BIO_should_retry(bio)"
.LC25:
	.string	"1"
	.align 8
.LC26:
	.string	"BIO_dgram_set_mtu(bio, 123456)"
.LC27:
	.string	"123456"
.LC28:
	.string	"BIO_dgram_get_mtu(bio)"
	.text
	.type	test_dgram, @function
test_dgram:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	call	BIO_s_dgram_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movabsq	$3906087853950710321, %rax
	movq	%rax, -33(%rbp)
	movb	$0, -25(%rbp)
	movabsq	$7523094288207667809, %rax
	movabsq	$31365138664352361, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$1145258561, -71(%rbp)
	movl	$4605252, -68(%rbp)
	movl	$1128547654, -78(%rbp)
	movl	$4276803, -75(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$24, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L31
	leaq	-33(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$28, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L32
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L33
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$36, %esi
	movq	%rax, %rdi
	call	test_int_le@PLT
	testl	%eax, %eax
	je	.L34
	leaq	-33(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$9, %r9d
	movl	%esi, %r8d
	movl	$40, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L35
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$42, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L36
	leaq	-71(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movl	%esi, %r8d
	movl	$44, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L37
	leaq	-78(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movl	%esi, %r8d
	movl	$46, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L38
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$9, %r9d
	movl	%esi, %r8d
	movl	$50, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-160(%rbp), %rdi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$9
	leaq	-33(%rbp), %rsi
	pushq	%rsi
	movl	$9, %r9d
	movq	%rdi, %r8
	movl	$51, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L39
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$52, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-160(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$16
	leaq	-64(%rbp), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$53, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L39
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movl	%esi, %r8d
	movl	$54, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-160(%rbp), %rdi
	leaq	.LC18(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$7
	leaq	-71(%rbp), %rsi
	pushq	%rsi
	movl	$7, %r9d
	movq	%rdi, %r8
	movl	$55, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L39
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC12(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movl	%esi, %r8d
	movl	$56, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L39
	leaq	-160(%rbp), %rdi
	leaq	.LC19(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$7
	leaq	-78(%rbp), %rsi
	pushq	%rsi
	movl	$7, %r9d
	movq	%rdi, %r8
	movl	$57, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L39
	leaq	-33(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$9, %r9d
	movl	%esi, %r8d
	movl	$61, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L40
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$63, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L41
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$9, %r9d
	movl	%esi, %r8d
	movl	$65, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L42
	leaq	-160(%rbp), %rdi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$9
	leaq	-33(%rbp), %rsi
	pushq	%rsi
	movl	$9, %r9d
	movq	%rdi, %r8
	movl	$66, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L42
	leaq	-71(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movl	%esi, %r8d
	movl	$68, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L43
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$70, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-160(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$16
	leaq	-64(%rbp), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$71, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L44
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movl	%esi, %r8d
	movl	$72, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-160(%rbp), %rdi
	leaq	.LC18(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$7
	leaq	-71(%rbp), %rsi
	pushq	%rsi
	movl	$7, %r9d
	movq	%rdi, %r8
	movl	$73, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L44
	leaq	-33(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$9, %r9d
	movl	%esi, %r8d
	movl	$80, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L45
	leaq	-64(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$82, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L46
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC20(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$2, %r9d
	movl	%esi, %r8d
	movl	$84, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L47
	leaq	-160(%rbp), %rdi
	leaq	.LC15(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$2
	leaq	-33(%rbp), %rsi
	pushq	%rsi
	movl	$2, %r9d
	movq	%rdi, %r8
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L47
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L48
	leaq	-160(%rbp), %rdi
	leaq	.LC17(%rip), %rcx
	leaq	.LC16(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$16
	leaq	-64(%rbp), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$88, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L48
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC22(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$96, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L49
	leaq	-160(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$97, %esi
	movq	%rax, %rdi
	call	test_int_lt@PLT
	testl	%eax, %eax
	je	.L49
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$98, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L49
	movq	-24(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	BIO_test_flags@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$99, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L49
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$123456, %edx
	movl	$42, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$102, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L50
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$41, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC27(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$123456, %r9d
	movl	%esi, %r8d
	movl	$103, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L50
	movl	$1, -12(%rbp)
	jmp	.L3
.L31:
	nop
	jmp	.L3
.L32:
	nop
	jmp	.L3
.L33:
	nop
	jmp	.L3
.L34:
	nop
	jmp	.L3
.L35:
	nop
	jmp	.L3
.L36:
	nop
	jmp	.L3
.L37:
	nop
	jmp	.L3
.L38:
	nop
	jmp	.L3
.L39:
	nop
	jmp	.L3
.L40:
	nop
	jmp	.L3
.L41:
	nop
	jmp	.L3
.L42:
	nop
	jmp	.L3
.L43:
	nop
	jmp	.L3
.L44:
	nop
	jmp	.L3
.L45:
	nop
	jmp	.L3
.L46:
	nop
	jmp	.L3
.L47:
	nop
	jmp	.L3
.L48:
	nop
	jmp	.L3
.L49:
	nop
	jmp	.L3
.L50:
	nop
.L3:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_dgram, .-test_dgram
	.section	.rodata
.LC29:
	.string	"Error parsing test options\n"
.LC30:
	.string	"test_dgram"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	test_skip_common_options@PLT
	testl	%eax, %eax
	jne	.L52
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$117, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_error@PLT
	movl	$0, %eax
	jmp	.L53
.L52:
	leaq	test_dgram(%rip), %rdx
	leaq	.LC30(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L53:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
