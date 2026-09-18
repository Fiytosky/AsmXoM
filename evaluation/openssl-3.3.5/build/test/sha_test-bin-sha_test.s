	.file	"sha_test.c"
	.text
	.section	.rodata
.LC0:
	.string	"sbuf"
.LC1:
	.string	"../test/sha_test.c"
.LC2:
	.string	"buf"
.LC3:
	.string	"out"
	.text
	.type	test_static_sha_common, @function
test_static_sha_common:
.LFB468:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, -16(%rbp)
	leaq	-96(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	-128(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$25, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L2
	leaq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC2(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$26, %esi
	movq	%rax, %rdi
	call	test_ptr_eq@PLT
	testl	%eax, %eax
	je	.L2
	movq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-112(%rbp)
	pushq	-120(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$27, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L3
.L2:
	movl	$0, %eax
	jmp	.L7
.L3:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	-128(%rbp), %r8
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movl	$30, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L5
	leaq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC2(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$31, %esi
	movq	%rax, %rdi
	call	test_ptr_ne@PLT
	testl	%eax, %eax
	je	.L5
	movq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	.LC3(%rip), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	.LC1(%rip), %rax
	pushq	-112(%rbp)
	pushq	-120(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_mem_eq@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jne	.L6
.L5:
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE468:
	.size	test_static_sha_common, .-test_static_sha_common
	.section	.rodata
.LC4:
	.string	"abc"
	.text
	.type	test_static_sha1, @function
test_static_sha1:
.LFB469:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	SHA1@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	output.4(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	test_static_sha_common
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE469:
	.size	test_static_sha1, .-test_static_sha1
	.type	test_static_sha224, @function
test_static_sha224:
.LFB470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	SHA224@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	output.3(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$28, %esi
	movq	%rax, %rdi
	call	test_static_sha_common
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE470:
	.size	test_static_sha224, .-test_static_sha224
	.type	test_static_sha256, @function
test_static_sha256:
.LFB471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	SHA256@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	output.2(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	test_static_sha_common
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE471:
	.size	test_static_sha256, .-test_static_sha256
	.type	test_static_sha384, @function
test_static_sha384:
.LFB472:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	SHA384@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	output.1(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	test_static_sha_common
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE472:
	.size	test_static_sha384, .-test_static_sha384
	.type	test_static_sha512, @function
test_static_sha512:
.LFB473:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	SHA512@GOTPCREL(%rip), %rax
	movq	%rax, %rcx
	leaq	output.0(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	test_static_sha_common
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE473:
	.size	test_static_sha512, .-test_static_sha512
	.section	.rodata
.LC5:
	.string	"test_static_sha1"
.LC6:
	.string	"test_static_sha224"
.LC7:
	.string	"test_static_sha256"
.LC8:
	.string	"test_static_sha384"
.LC9:
	.string	"test_static_sha512"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_static_sha1(%rip), %rdx
	leaq	.LC5(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_static_sha224(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_static_sha256(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_static_sha384(%rip), %rdx
	leaq	.LC8(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_static_sha512(%rip), %rdx
	leaq	.LC9(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	setup_tests, .-setup_tests
	.section	.rodata
	.align 16
	.type	output.4, @object
	.size	output.4, 20
output.4:
	.base64	"qZk+NkcGgWq6PiVxeFDCbJzQ2J0="
	.align 16
	.type	output.3, @object
	.size	output.3, 28
output.3:
	.base64	"Iwl9IjQF2CKGQqR3vaJVsyqtvOS9oLP342ydpw=="
	.align 32
	.type	output.2, @object
	.size	output.2, 32
output.2:
	.base64	"ungWv48Bz+pBQUDeXa4iI7ADYaOWF3qctBD/YfIAFa0="
	.align 32
	.type	output.1, @object
	.size	output.1, 48
output.1:
	.base64	"ywB1P0WjXou1oD1pmsZQBycsMqsO3tFjGotgWkP/W+2AhgcroefMI1i67KE0yCWn"
	.align 32
	.type	output.0, @object
	.size	output.0, 64
output.0:
	.base64	"3a81oZNherrMQXNJriBBMRLm+k6JqX6iCp7u5ktV05ohkpkqJ0/BqDa6PCOj/uu9RU1EI2Q86A4qmslPpUyknw=="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
