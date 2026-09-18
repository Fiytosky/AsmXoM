	.file	"rc2test.c"
	.text
	.data
	.align 32
	.type	RC2key, @object
	.size	RC2key, 64
RC2key:
	.zero	16
	.zero	15
	.ascii	"\001"
	.zero	16
	.base64	"AAECAwQFBgcICQoLDA0ODw=="
	.align 32
	.type	RC2plain, @object
	.size	RC2plain, 32
RC2plain:
	.base64	"AAAAAAAAAAA="
	.base64	"AAAAAAAAAAA="
	.base64	"//////////8="
	.base64	"AAAAAAAAAAA="
	.align 32
	.type	RC2cipher, @object
	.size	RC2cipher, 32
RC2cipher:
	.base64	"HBmKg43wKLc="
	.base64	"IYKceKn5wHQ="
	.base64	"E9s1F9Mhhp4="
	.base64	"UNwBYr11fzE="
	.section	.rodata
.LC0:
	.string	"buf"
.LC1:
	.string	"&RC2cipher[n][0]"
.LC2:
	.string	"../test/rc2test.c"
.LC3:
	.string	"buf2"
.LC4:
	.string	"&RC2plain[n][0]"
	.text
	.type	test_rc2, @function
test_rc2:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movl	%edi, -292(%rbp)
	movl	$1, -4(%rbp)
	movl	-292(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	RC2key(%rip), %rax
	addq	%rax, %rdx
	leaq	-272(%rbp), %rax
	movl	$0, %ecx
	movl	$16, %esi
	movq	%rax, %rdi
	call	RC2_set_key@PLT
	movl	-292(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	RC2plain(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-272(%rbp), %rdx
	leaq	-280(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rsi
	call	RC2_ecb_encrypt@PLT
	movl	-292(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	RC2cipher(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$8
	leaq	-280(%rbp), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$56, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L2
	movl	$0, -4(%rbp)
.L2:
	leaq	-272(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	leaq	-280(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	RC2_ecb_encrypt@PLT
	movl	-292(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	RC2plain(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	.LC3(%rip), %rcx
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	pushq	$8
	leaq	-288(%rbp), %rsi
	pushq	%rsi
	movl	$8, %r9d
	movq	%rdi, %r8
	movl	$60, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L3
	movl	$0, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_rc2, .-test_rc2
	.section	.rodata
.LC5:
	.string	"test_rc2"
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
	leaq	test_rc2(%rip), %rsi
	leaq	.LC5(%rip), %rax
	movl	$1, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	add_all_tests@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	setup_tests, .-setup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
