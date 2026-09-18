	.file	"app_libctx.c"
	.text
	.local	app_libctx
	.comm	app_libctx,8,8
	.local	app_propq
	.comm	app_propq,8,8
	.globl	app_set_propq
	.type	app_set_propq, @function
app_set_propq:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, app_propq(%rip)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	app_set_propq, .-app_set_propq
	.globl	app_get0_propq
	.type	app_get0_propq, @function
app_get0_propq:
.LFB632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	app_propq(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	app_get0_propq, .-app_get0_propq
	.globl	app_get0_libctx
	.type	app_get0_libctx, @function
app_get0_libctx:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	app_libctx(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	app_get0_libctx, .-app_get0_libctx
	.section	.rodata
.LC0:
	.string	"null"
	.align 8
.LC1:
	.string	"Failed to create null provider\n"
	.align 8
.LC2:
	.string	"Failed to create library context\n"
	.text
	.globl	app_create_libctx
	.type	app_create_libctx, @function
app_create_libctx:
.LFB634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	app_libctx(%rip), %rax
	testq	%rax, %rax
	jne	.L8
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	app_provider_load@PLT
	testl	%eax, %eax
	jne	.L9
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
	movl	$0, %eax
	jmp	.L10
.L9:
	call	OSSL_LIB_CTX_new@PLT
	movq	%rax, app_libctx(%rip)
.L8:
	movq	app_libctx(%rip), %rax
	testq	%rax, %rax
	jne	.L11
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	opt_printf_stderr@PLT
.L11:
	movq	app_libctx(%rip), %rax
.L10:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE634:
	.size	app_create_libctx, .-app_create_libctx
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
