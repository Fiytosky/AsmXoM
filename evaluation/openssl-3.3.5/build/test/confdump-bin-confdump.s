	.file	"confdump.c"
	.text
	.type	ossl_check_const_OPENSSL_CSTRING_sk_type, @function
ossl_check_const_OPENSSL_CSTRING_sk_type:
.LFB13:
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
.LFE13:
	.size	ossl_check_const_OPENSSL_CSTRING_sk_type, .-ossl_check_const_OPENSSL_CSTRING_sk_type
	.type	ossl_check_OPENSSL_CSTRING_sk_type, @function
ossl_check_OPENSSL_CSTRING_sk_type:
.LFB14:
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
.LFE14:
	.size	ossl_check_OPENSSL_CSTRING_sk_type, .-ossl_check_OPENSSL_CSTRING_sk_type
	.type	ossl_check_const_CONF_VALUE_sk_type, @function
ossl_check_const_CONF_VALUE_sk_type:
.LFB59:
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
.LFE59:
	.size	ossl_check_const_CONF_VALUE_sk_type, .-ossl_check_const_CONF_VALUE_sk_type
	.section	.rodata
.LC0:
	.string	"[ %s ]\n"
.LC1:
	.string	"%s = %s\n"
	.text
	.type	dump_section, @function
dump_section:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	NCONF_get_section@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_CONF_VALUE_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -4(%rbp)
	jl	.L9
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	dump_section, .-dump_section
	.globl	main
	.type	main, @function
main:
.LFB92:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	call	NCONF_default@PLT
	movq	%rax, %rdi
	call	NCONF_new@PLT
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L11
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	NCONF_load@PLT
	testl	%eax, %eax
	je	.L11
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_get_section_names@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L12
.L13:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	OPENSSL_sk_value@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	dump_section
	addl	$1, -8(%rbp)
.L12:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_const_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_num@PLT
	cmpl	%eax, -8(%rbp)
	jl	.L13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ossl_check_OPENSSL_CSTRING_sk_type
	movq	%rax, %rdi
	call	OPENSSL_sk_free@PLT
	movl	$0, -4(%rbp)
	jmp	.L14
.L11:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ERR_print_errors_fp@PLT
.L14:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	NCONF_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
