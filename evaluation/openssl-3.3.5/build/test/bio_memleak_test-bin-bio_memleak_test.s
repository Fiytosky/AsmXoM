	.file	"bio_memleak_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"bio"
.LC1:
	.string	"../test/bio_memleak_test.c"
.LC2:
	.string	"sizeof(str)"
	.align 8
.LC3:
	.string	"BIO_read(bio, buf, sizeof(buf))"
.LC4:
	.string	"str"
.LC5:
	.string	"buf"
	.text
	.type	test_bio_memleak, @function
test_bio_memleak:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	$0, -4(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$25, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L7
	movq	$10, -48(%rbp)
	leaq	str.1(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-16(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	leaq	-160(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$100, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC2(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$10, %r9d
	movl	%esi, %r8d
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L8
	leaq	-160(%rbp), %rdi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$10
	leaq	str.1(%rip), %rsi
	pushq	%rsi
	movl	$10, %r9d
	movq	%rdi, %r8
	movl	$34, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L9
	movl	$1, -4(%rbp)
	jmp	.L3
.L7:
	nop
	jmp	.L3
.L8:
	nop
	jmp	.L3
.L9:
	nop
.L3:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_bio_memleak, .-test_bio_memleak
	.section	.rodata
.LC6:
	.string	"Hello World\n"
.LC7:
	.string	"12"
	.align 8
.LC8:
	.string	"BIO_puts(bio, \"Hello World\\n\")"
.LC9:
	.string	"bufmem"
.LC10:
	.string	"0"
	.align 8
.LC11:
	.string	"BIO_set_close(bio, BIO_NOCLOSE)"
.LC12:
	.string	"\"Hello World\\n\""
.LC13:
	.string	"bufmem->data"
	.text
	.type	test_bio_get_mem, @function
test_bio_get_mem:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$50, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L18
	leaq	.LC6(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movl	%esi, %r8d
	movl	$52, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L19
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-24(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$55, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L20
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$57, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L21
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %r8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$12
	leaq	.LC6(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$61, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L22
	movl	$1, -4(%rbp)
	jmp	.L12
.L18:
	nop
	jmp	.L12
.L19:
	nop
	jmp	.L12
.L20:
	nop
	jmp	.L12
.L21:
	nop
	jmp	.L12
.L22:
	nop
.L12:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BUF_MEM_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_bio_get_mem, .-test_bio_get_mem
	.section	.rodata
.LC14:
	.string	"5"
.LC15:
	.string	"BIO_read(bio, data, 5)"
.LC16:
	.string	"\"Hello\""
.LC17:
	.string	"data"
.LC18:
	.string	"Hello"
.LC19:
	.string	"BIO_get_mem_ptr(bio, &bufmem)"
.LC20:
	.string	"test"
.LC21:
	.string	"BIO_write(bio, \"test\", 4)"
.LC22:
	.string	"7"
.LC23:
	.string	"BIO_read(bio, data, 16)"
.LC24:
	.string	"\" World\\n\""
.LC25:
	.string	" World\n"
.LC26:
	.string	"BIO_reset(bio)"
	.text
	.type	test_bio_new_mem_buf, @function
test_bio_new_mem_buf:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC6(%rip), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$79, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L36
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$81, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L37
	leaq	-48(%rbp), %rdi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$5
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movl	$5, %r9d
	movq	%rdi, %r8
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L38
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L39
	leaq	.LC20(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC21(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$87, %esi
	movq	%rax, %rdi
	call	test_int_lt@PLT
	testl	%eax, %eax
	je	.L40
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movl	%esi, %r8d
	movl	$89, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L41
	leaq	-48(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$7
	leaq	.LC25(%rip), %rsi
	pushq	%rsi
	movl	$7, %r9d
	movq	%rdi, %r8
	movl	$91, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L42
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$93, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L43
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movl	%esi, %r8d
	movl	$95, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L44
	leaq	-48(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$12
	leaq	.LC6(%rip), %rsi
	pushq	%rsi
	movl	$12, %r9d
	movq	%rdi, %r8
	movl	$97, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L45
	movl	$1, -4(%rbp)
	jmp	.L25
.L36:
	nop
	jmp	.L25
.L37:
	nop
	jmp	.L25
.L38:
	nop
	jmp	.L25
.L39:
	nop
	jmp	.L25
.L40:
	nop
	jmp	.L25
.L41:
	nop
	jmp	.L25
.L42:
	nop
	jmp	.L25
.L43:
	nop
	jmp	.L25
.L44:
	nop
	jmp	.L25
.L45:
	nop
.L25:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_bio_new_mem_buf, .-test_bio_new_mem_buf
	.section	.rodata
.LC27:
	.string	"bio2"
.LC28:
	.string	"BIO_read(bio2, data, 16)"
.LC29:
	.string	"BIO_reset(bio2)"
	.text
	.type	test_bio_rdonly_mem_buf, @function
test_bio_rdonly_mem_buf:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	leaq	.LC6(%rip), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	BIO_new_mem_buf@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$114, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L59
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC14(%rip), %rcx
	leaq	.LC15(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$5, %r9d
	movl	%esi, %r8d
	movl	$116, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L60
	leaq	-48(%rbp), %rdi
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$5
	leaq	.LC18(%rip), %rsi
	pushq	%rsi
	movl	$5, %r9d
	movq	%rdi, %r8
	movl	$118, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L61
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$115, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC19(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$120, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L62
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$9, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC27(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$125, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L63
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-16(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movl	%esi, %r8d
	movl	$130, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L64
	leaq	-48(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$7
	leaq	.LC25(%rip), %rsi
	pushq	%rsi
	movl	$7, %r9d
	movq	%rdi, %r8
	movl	$132, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L65
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC29(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$134, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L66
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC22(%rip), %rcx
	leaq	.LC28(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$7, %r9d
	movl	%esi, %r8d
	movl	$136, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L67
	leaq	-48(%rbp), %rdi
	leaq	.LC24(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$7
	leaq	.LC25(%rip), %rsi
	pushq	%rsi
	movl	$7, %r9d
	movq	%rdi, %r8
	movl	$138, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L68
	movl	$1, -4(%rbp)
	jmp	.L48
.L59:
	nop
	jmp	.L48
.L60:
	nop
	jmp	.L48
.L61:
	nop
	jmp	.L48
.L62:
	nop
	jmp	.L48
.L63:
	nop
	jmp	.L48
.L64:
	nop
	jmp	.L48
.L65:
	nop
	jmp	.L48
.L66:
	nop
	jmp	.L48
.L67:
	nop
	jmp	.L48
.L68:
	nop
.L48:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_bio_rdonly_mem_buf, .-test_bio_rdonly_mem_buf
	.section	.rodata
.LC30:
	.string	"Hi!\n"
.LC31:
	.string	"4"
.LC32:
	.string	"BIO_puts(bio, \"Hi!\\n\")"
.LC33:
	.string	"16"
.LC34:
	.string	"\"Hello World\\nHi!\\n\""
.LC35:
	.string	"Hello World\nHi!\n"
	.text
	.type	test_bio_rdwr_rdonly, @function
test_bio_rdwr_rdonly:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$155, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L80
	leaq	.LC6(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movl	%esi, %r8d
	movl	$157, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L81
	movq	-16(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movl	%esi, %r8d
	movl	$161, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L82
	leaq	-32(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$12
	leaq	.LC6(%rip), %rsi
	pushq	%rsi
	movl	$12, %r9d
	movq	%rdi, %r8
	movl	$163, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L83
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$165, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L84
	movq	-16(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	leaq	.LC30(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	%eax, %esi
	leaq	.LC31(%rip), %rcx
	leaq	.LC32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$4, %r9d
	movl	%esi, %r8d
	movl	$169, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L85
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC33(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$16, %r9d
	movl	%esi, %r8d
	movl	$171, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L86
	leaq	-32(%rbp), %rdi
	leaq	.LC34(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$16
	leaq	.LC35(%rip), %rsi
	pushq	%rsi
	movl	$16, %r9d
	movq	%rdi, %r8
	movl	$174, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L87
	movl	$1, -4(%rbp)
	jmp	.L71
.L80:
	nop
	jmp	.L71
.L81:
	nop
	jmp	.L71
.L82:
	nop
	jmp	.L71
.L83:
	nop
	jmp	.L71
.L84:
	nop
	jmp	.L71
.L85:
	nop
	jmp	.L71
.L86:
	nop
	jmp	.L71
.L87:
	nop
.L71:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_bio_rdwr_rdonly, .-test_bio_rdwr_rdonly
	.section	.rodata
.LC36:
	.string	"1"
	.text
	.type	test_bio_nonclear_rst, @function
test_bio_nonclear_rst:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$191, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L100
	leaq	.LC6(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movl	%esi, %r8d
	movl	$193, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L101
	movq	-16(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movl	%esi, %r8d
	movl	$198, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L102
	leaq	-32(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$12
	leaq	.LC6(%rip), %rsi
	pushq	%rsi
	movl	$12, %r9d
	movq	%rdi, %r8
	movl	$200, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L103
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$202, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L104
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$12, %r9d
	movl	%esi, %r8d
	movl	$205, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L105
	leaq	-32(%rbp), %rdi
	leaq	.LC12(%rip), %rcx
	leaq	.LC17(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	$12
	leaq	.LC6(%rip), %rsi
	pushq	%rsi
	movl	$12, %r9d
	movq	%rdi, %r8
	movl	$207, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	je	.L106
	movq	-16(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	BIO_clear_flags@PLT
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC10(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$211, %esi
	movq	%rax, %rdi
	call	test_int_gt@PLT
	testl	%eax, %eax
	je	.L107
	leaq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_read@PLT
	movl	%eax, %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC23(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$214, %esi
	movq	%rax, %rdi
	call	test_int_lt@PLT
	testl	%eax, %eax
	je	.L108
	movl	$1, -4(%rbp)
	jmp	.L90
.L100:
	nop
	jmp	.L90
.L101:
	nop
	jmp	.L90
.L102:
	nop
	jmp	.L90
.L103:
	nop
	jmp	.L90
.L104:
	nop
	jmp	.L90
.L105:
	nop
	jmp	.L90
.L106:
	nop
	jmp	.L90
.L107:
	nop
	jmp	.L90
.L108:
	nop
.L90:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_bio_nonclear_rst, .-test_bio_nonclear_rst
	.local	error_callback_fired
	.comm	error_callback_fired,4,4
	.type	BIO_error_callback, @function
BIO_error_callback:
.LFB474:
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
	movl	-12(%rbp), %eax
	andl	$130, %eax
	testl	%eax, %eax
	je	.L110
	movl	$1, error_callback_fired(%rip)
	movl	$0, 16(%rbp)
.L110:
	movl	16(%rbp), %eax
	cltq
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	BIO_error_callback, .-BIO_error_callback
	.section	.rodata
.LC37:
	.string	"bio = BIO_new(BIO_s_mem())"
.LC38:
	.string	"out = BIO_new(BIO_s_mem())"
.LC39:
	.string	"p7 = PKCS7_new()"
	.align 8
.LC40:
	.string	"PKCS7_set_type(p7, NID_pkcs7_data)"
	.align 8
.LC41:
	.string	"i2d_ASN1_bio_stream(out, (ASN1_VALUE*) p7, bio, SMIME_STREAM | SMIME_BINARY, ASN1_ITEM_rptr(PKCS7))"
.LC42:
	.string	"error_callback_fired"
	.text
	.type	test_bio_i2d_ASN1_mime, @function
test_bio_i2d_ASN1_mime:
.LFB475:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$245, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L121
	movq	$15, -64(%rbp)
	leaq	str.0(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$114, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	-32(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	BIO_set_flags@PLT
	leaq	BIO_error_callback(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_set_callback_ex@PLT
	call	BIO_s_mem@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$255, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L122
	call	PKCS7_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC39(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$257, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L123
	movq	-24(%rbp), %rax
	movl	$21, %esi
	movq	%rax, %rdi
	call	PKCS7_set_type@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC40(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$259, %esi
	call	test_true@PLT
	testl	%eax, %eax
	je	.L124
	movl	$0, error_callback_fired(%rip)
	call	PKCS7_it@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$4224, %ecx
	movq	%rax, %rdi
	call	i2d_ASN1_bio_stream@PLT
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leaq	.LC41(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movl	%eax, %ecx
	movl	$264, %esi
	call	test_false@PLT
	testl	%eax, %eax
	je	.L125
	movl	error_callback_fired(%rip), %esi
	leaq	.LC36(%rip), %rcx
	leaq	.LC42(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movl	$1, %r9d
	movl	%esi, %r8d
	movl	$269, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	je	.L126
	movl	$1, -4(%rbp)
	jmp	.L114
.L121:
	nop
	jmp	.L114
.L122:
	nop
	jmp	.L114
.L123:
	nop
	jmp	.L114
.L124:
	nop
	jmp	.L114
.L125:
	nop
	jmp	.L114
.L126:
	nop
.L114:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	PKCS7_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	test_bio_i2d_ASN1_mime, .-test_bio_i2d_ASN1_mime
	.section	.rodata
.LC43:
	.string	"test_bio_memleak"
.LC44:
	.string	"test_bio_get_mem"
.LC45:
	.string	"test_bio_new_mem_buf"
.LC46:
	.string	"test_bio_rdonly_mem_buf"
.LC47:
	.string	"test_bio_rdwr_rdonly"
.LC48:
	.string	"test_bio_nonclear_rst"
.LC49:
	.string	"test_bio_i2d_ASN1_mime"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_bio_memleak(%rip), %rdx
	leaq	.LC43(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bio_get_mem(%rip), %rdx
	leaq	.LC44(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bio_new_mem_buf(%rip), %rdx
	leaq	.LC45(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bio_rdonly_mem_buf(%rip), %rdx
	leaq	.LC46(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bio_rdwr_rdonly(%rip), %rdx
	leaq	.LC47(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bio_nonclear_rst(%rip), %rdx
	leaq	.LC48(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_bio_i2d_ASN1_mime(%rip), %rdx
	leaq	.LC49(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 8
	.type	str.1, @object
	.size	str.1, 10
str.1:
	.string	"BIO test\n"
	.align 8
	.type	str.0, @object
	.size	str.0, 15
str.0:
	.string	"BIO mime test\n"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
