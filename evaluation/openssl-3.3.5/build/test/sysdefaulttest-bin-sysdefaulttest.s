	.file	"sysdefaulttest.c"
	.text
	.local	ctx
	.comm	ctx,8,8
	.section	.rodata
.LC0:
	.string	"TLS1_2_VERSION"
	.align 8
.LC1:
	.string	"SSL_CTX_get_min_proto_version(ctx)"
.LC2:
	.string	"../test/sysdefaulttest.c"
	.align 8
.LC3:
	.string	"SSL_CTX_get_max_proto_version(ctx)"
	.align 8
.LC4:
	.string	"min/max version setting incorrect"
	.text
	.type	test_func, @function
test_func:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ctx(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$130, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$771, %r9d
	movl	%esi, %r8d
	movl	$23, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L2
	movq	ctx(%rip), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$131, %esi
	movq	%rax, %rdi
	call	SSL_CTX_ctrl@PLT
	movl	%eax, %esi
	leaq	.LC0(%rip), %rcx
	leaq	.LC3(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$771, %r9d
	movl	%esi, %r8d
	movl	$24, %esi
	movq	%rax, %rdi
	call	test_int_eq@PLT
	testl	%eax, %eax
	jne	.L2
	leaq	.LC4(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	test_info@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movl	$1, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	test_func, .-test_func
	.globl	global_init
	.type	global_init, @function
global_init:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %esi
	movl	$30272, %edi
	call	OPENSSL_init_ssl@PLT
	testl	%eax, %eax
	jne	.L5
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	global_init, .-global_init
	.section	.rodata
	.align 8
.LC5:
	.string	"ctx = SSL_CTX_new(TLS_method())"
.LC6:
	.string	"test_func"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	TLS_method@PLT
	movq	%rax, %rdi
	call	SSL_CTX_new@PLT
	movq	%rax, ctx(%rip)
	movq	ctx(%rip), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC2(%rip), %rdi
	movq	%rax, %rcx
	movl	$41, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	leaq	test_func(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	setup_tests, .-setup_tests
	.globl	cleanup_tests
	.type	cleanup_tests, @function
cleanup_tests:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ctx(%rip), %rax
	movq	%rax, %rdi
	call	SSL_CTX_free@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	cleanup_tests, .-cleanup_tests
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
