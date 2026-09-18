	.file	"rc4test.c"
	.text
	.data
	.align 32
	.type	keys, @object
	.size	keys, 180
keys:
	.base64	"CAEjRWeJq83vAA=="
	.zero	20
	.base64	"CAEjRWeJq83vAA=="
	.zero	20
	.string	"\b"
	.base64	"AAAAAAAAAAA="
	.zero	20
	.base64	"BO8BI0UA"
	.zero	24
	.base64	"CAEjRWeJq83vAA=="
	.zero	20
	.base64	"BO8BI0UA"
	.zero	24
	.type	data_len, @object
	.size	data_len, 6
data_len:
	.base64	"CAgIFBwK"
	.align 32
	.type	data, @object
	.size	data, 180
data:
	.base64	"ASNFZ4mrze//AA=="
	.zero	20
	.base64	"AAAAAAAAAAD/AA=="
	.zero	20
	.base64	"AAAAAAAAAAD/AA=="
	.zero	20
	.zero	20
	.string	"\377"
	.zero	8
	.base64	"EjRWeJq83vASNFZ4mrze8BI0VniavN7wEjRWeP8A"
	.base64	"AAAAAAAAAAAAAP8A"
	.zero	18
	.align 32
	.type	output, @object
	.size	output, 180
output:
	.base64	"dbeHgJngxZYAAA=="
	.zero	20
	.base64	"dJTC5xBLCHkAAA=="
	.zero	20
	.base64	"3hiJQaM3XToAAA=="
	.zero	20
	.base64	"1qFBp+w8ON+9YVoRYuHHuja2eFgAAA=="
	.zero	8
	.base64	"ZqCUn4r31okff4MrqDPADIkuvjAUPOKHQAEezwAA"
	.base64	"1qFBp+w8ON+9YQAA"
	.zero	18
	.section	.rodata
.LC0:
	.string	"output[i]"
.LC1:
	.string	"obuf"
.LC2:
	.string	"../test/rc4test.c"
	.text
	.type	test_rc4_encrypt, @function
test_rc4_encrypt:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1568, %rsp
	movl	%edi, -1556(%rbp)
	movl	-1556(%rbp), %eax
	cltq
	imulq	$30, %rax, %rax
	leaq	1(%rax), %rdx
	leaq	keys(%rip), %rax
	addq	%rax, %rdx
	movl	-1556(%rbp), %eax
	cltq
	imulq	$30, %rax, %rax
	leaq	keys(%rip), %rcx
	movzbl	(%rax,%rcx), %eax
	movzbl	%al, %ecx
	leaq	-1552(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	RC4_set_key@PLT
	leaq	-512(%rbp), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-1556(%rbp), %eax
	cltq
	imulq	$30, %rax, %rax
	leaq	data(%rip), %rdx
	leaq	(%rax,%rdx), %rdi
	movl	-1556(%rbp), %eax
	cltq
	leaq	data_len(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %esi
	leaq	-512(%rbp), %rdx
	leaq	-1552(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	RC4@PLT
	movl	-1556(%rbp), %eax
	cltq
	leaq	data_len(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movl	-1556(%rbp), %eax
	cltq
	imulq	$30, %rax, %rax
	leaq	output(%rip), %rdx
	leaq	(%rax,%rdx), %rdi
	movl	-1556(%rbp), %eax
	cltq
	leaq	data_len(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movzbl	%al, %eax
	addl	$1, %eax
	movslq	%eax, %r9
	leaq	-512(%rbp), %r8
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	pushq	%rdi
	movl	$72, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_rc4_encrypt, .-test_rc4_encrypt
	.section	.rodata
.LC3:
	.string	"output[3]"
.LC4:
	.string	"0"
.LC5:
	.string	"obuf[i]"
	.text
	.type	test_rc4_end_processing, @function
test_rc4_end_processing:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1568, %rsp
	movl	%edi, -1556(%rbp)
	movzbl	90+keys(%rip), %eax
	movzbl	%al, %ecx
	leaq	91+keys(%rip), %rdx
	leaq	-1552(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	RC4_set_key@PLT
	leaq	-512(%rbp), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-1556(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-512(%rbp), %rdx
	leaq	90+data(%rip), %rdi
	leaq	-1552(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	RC4@PLT
	movl	-1556(%rbp), %eax
	movslq	%eax, %rsi
	movl	-1556(%rbp), %eax
	movslq	%eax, %r8
	leaq	-512(%rbp), %rdi
	leaq	.LC3(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	90+output(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$83, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L4
	movl	$0, %eax
	jmp	.L6
.L4:
	movl	-1556(%rbp), %eax
	cltq
	movzbl	-512(%rbp,%rax), %eax
	movzbl	%al, %esi
	leaq	.LC4(%rip), %rcx
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$0, %r9d
	movl	%esi, %r8d
	movl	$85, %esi
	movq	%rax, %rdi
	call	test_uchar_eq@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_rc4_end_processing, .-test_rc4_end_processing
	.type	test_rc4_multi_call, @function
test_rc4_multi_call:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1568, %rsp
	movl	%edi, -1556(%rbp)
	movzbl	90+keys(%rip), %eax
	movzbl	%al, %ecx
	leaq	91+keys(%rip), %rdx
	leaq	-1552(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	RC4_set_key@PLT
	leaq	-512(%rbp), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-1556(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-512(%rbp), %rdx
	leaq	90+data(%rip), %rdi
	leaq	-1552(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	RC4@PLT
	leaq	-512(%rbp), %rdx
	movl	-1556(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movl	-1556(%rbp), %eax
	cltq
	leaq	90(%rax), %rdx
	leaq	data(%rip), %rax
	addq	%rax, %rdx
	movzbl	3+data_len(%rip), %eax
	movzbl	%al, %eax
	subl	-1556(%rbp), %eax
	movslq	%eax, %rsi
	leaq	-1552(%rbp), %rax
	movq	%rax, %rdi
	call	RC4@PLT
	movzbl	3+data_len(%rip), %eax
	movzbl	%al, %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movzbl	3+data_len(%rip), %eax
	movzbl	%al, %eax
	addl	$1, %eax
	movslq	%eax, %r8
	leaq	-512(%rbp), %rdi
	leaq	.LC3(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	%rsi
	leaq	90+output(%rip), %rsi
	pushq	%rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movl	$97, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_rc4_multi_call, .-test_rc4_multi_call
	.section	.rodata
.LC6:
	.string	"expected"
.LC7:
	.string	"md"
	.text
	.type	test_rc_bulk, @function
test_rc_bulk:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1696, %rsp
	movzbl	keys(%rip), %eax
	movzbl	%al, %ecx
	leaq	91+keys(%rip), %rdx
	leaq	-1040(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	RC4_set_key@PLT
	leaq	-1568(%rbp), %rax
	movl	$513, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-1664(%rbp), %rax
	movq	%rax, %rdi
	call	SHA1_Init@PLT
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	leaq	-1568(%rbp), %rcx
	leaq	-1568(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movl	$513, %esi
	movq	%rax, %rdi
	call	RC4@PLT
	leaq	-1568(%rbp), %rcx
	leaq	-1664(%rbp), %rax
	movl	$513, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	SHA1_Update@PLT
	addl	$1, -4(%rbp)
.L10:
	cmpl	$2570, -4(%rbp)
	jle	.L11
	leaq	-1664(%rbp), %rdx
	leaq	-1696(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SHA1_Final@PLT
	leaq	-1696(%rbp), %rdi
	leaq	.LC6(%rip), %rcx
	leaq	.LC7(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$20
	leaq	expected.0(%rip), %rsi
	pushq	%rsi
	movl	$20, %r9d
	movq	%rdi, %r8
	movl	$121, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_rc_bulk, .-test_rc_bulk
	.section	.rodata
.LC8:
	.string	"test_rc4_encrypt"
.LC9:
	.string	"test_rc4_end_processing"
.LC10:
	.string	"test_rc4_multi_call"
.LC11:
	.string	"test_rc_bulk"
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
	leaq	test_rc4_encrypt(%rip), %rsi
	leaq	.LC8(%rip), %rax
	movl	$1, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movzbl	3+data_len(%rip), %eax
	movzbl	%al, %eax
	leaq	test_rc4_end_processing(%rip), %rsi
	leaq	.LC9(%rip), %rdi
	movl	$1, %ecx
	movl	%eax, %edx
	call	add_all_tests@PLT
	movzbl	3+data_len(%rip), %eax
	movzbl	%al, %eax
	leaq	test_rc4_multi_call(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movl	$1, %ecx
	movl	%eax, %edx
	call	add_all_tests@PLT
	leaq	test_rc_bulk(%rip), %rdx
	leaq	.LC11(%rip), %rax
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
	.data
	.align 16
	.type	expected.0, @object
	.size	expected.0, 20
expected.0:
	.base64	"pHvMAD3QveGsXxIeRbz7GqHyf8U="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
