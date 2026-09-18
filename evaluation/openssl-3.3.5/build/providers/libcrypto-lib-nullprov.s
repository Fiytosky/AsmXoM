	.file	"nullprov.c"
	.text
	.section	.rodata
.LC0:
	.string	"name"
.LC1:
	.string	"version"
.LC2:
	.string	"buildinfo"
.LC3:
	.string	"status"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	null_param_types, @object
	.size	null_param_types, 200
null_param_types:
	.quad	.LC0
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC1
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC2
	.long	6
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	.LC3
	.long	1
	.zero	4
	.quad	0
	.quad	0
	.quad	-1
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	null_gettable_params, @function
null_gettable_params:
.LFB272:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	null_param_types(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE272:
	.size	null_gettable_params, .-null_gettable_params
	.section	.rodata
.LC4:
	.string	"OpenSSL Null Provider"
.LC5:
	.string	"3.3.5"
	.text
	.type	null_get_params, @function
null_get_params:
.LFB273:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	.LC0(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L4
	leaq	.LC4(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	leaq	.LC1(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L6
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
	jmp	.L5
.L6:
	leaq	.LC2(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L7
	leaq	.LC5(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_utf8_ptr@PLT
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L5
.L7:
	leaq	.LC3(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OSSL_PARAM_locate@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	call	ossl_prov_is_running@PLT
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	OSSL_PARAM_set_int@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$0, %eax
	jmp	.L5
.L8:
	movl	$1, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE273:
	.size	null_get_params, .-null_get_params
	.type	null_query, @function
null_query:
.LFB274:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE274:
	.size	null_query, .-null_query
	.section	.data.rel.ro.local
	.align 32
	.type	null_dispatch_table, @object
	.size	null_dispatch_table, 64
null_dispatch_table:
	.long	1025
	.zero	4
	.quad	null_gettable_params
	.long	1026
	.zero	4
	.quad	null_get_params
	.long	1027
	.zero	4
	.quad	null_query
	.long	0
	.zero	4
	.quad	0
	.text
	.globl	ossl_null_provider_init
	.type	ossl_null_provider_init, @function
ossl_null_provider_init:
.LFB275:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	null_dispatch_table(%rip), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE275:
	.size	ossl_null_provider_init, .-ossl_null_provider_init
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
