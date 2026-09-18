	.file	"evp_utils.c"
	.text
	.section	.rodata
.LC0:
	.string	"../crypto/evp/evp_utils.c"
	.text
	.type	geterr, @function
geterr:
.LFB438:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ERR_new@PLT
	leaq	__func__.1(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$65, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$197, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	geterr, .-geterr
	.type	seterr, @function
seterr:
.LFB439:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$70, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$198, %esi
	movl	$6, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	seterr, .-seterr
	.globl	evp_do_ciph_getparams
	.type	evp_do_ciph_getparams, @function
evp_do_ciph_getparams:
.LFB440:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movl	$-1, %eax
	jmp	.L5
.L6:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	jne	.L7
	call	geterr
	movl	$0, %eax
	jmp	.L5
.L7:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE440:
	.size	evp_do_ciph_getparams, .-evp_do_ciph_getparams
	.globl	evp_do_ciph_ctx_getparams
	.type	evp_do_ciph_ctx_getparams, @function
evp_do_ciph_ctx_getparams:
.LFB441:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L11
	movl	$-1, %eax
	jmp	.L10
.L11:
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	call	geterr
	movl	$0, %eax
	jmp	.L10
.L12:
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	evp_do_ciph_ctx_getparams, .-evp_do_ciph_ctx_getparams
	.globl	evp_do_ciph_ctx_setparams
	.type	evp_do_ciph_ctx_setparams, @function
evp_do_ciph_ctx_setparams:
.LFB442:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movl	$-1, %eax
	jmp	.L15
.L16:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	call	seterr
	movl	$0, %eax
	jmp	.L15
.L17:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	evp_do_ciph_ctx_setparams, .-evp_do_ciph_ctx_setparams
	.globl	evp_do_md_getparams
	.type	evp_do_md_getparams, @function
evp_do_md_getparams:
.LFB443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	movl	$-1, %eax
	jmp	.L20
.L21:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L22
	call	geterr
	movl	$0, %eax
	jmp	.L20
.L22:
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE443:
	.size	evp_do_md_getparams, .-evp_do_md_getparams
	.globl	evp_do_md_ctx_getparams
	.type	evp_do_md_ctx_getparams, @function
evp_do_md_ctx_getparams:
.LFB444:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	movl	$-1, %eax
	jmp	.L25
.L26:
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L27
	call	geterr
	movl	$0, %eax
	jmp	.L25
.L27:
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE444:
	.size	evp_do_md_ctx_getparams, .-evp_do_md_ctx_getparams
	.globl	evp_do_md_ctx_setparams
	.type	evp_do_md_ctx_setparams, @function
evp_do_md_ctx_setparams:
.LFB445:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L31
	movl	$-1, %eax
	jmp	.L30
.L31:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	call	seterr
	movl	$0, %eax
	jmp	.L30
.L32:
	movq	-8(%rbp), %rax
	movq	200(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE445:
	.size	evp_do_md_ctx_setparams, .-evp_do_md_ctx_setparams
	.section	.rodata
	.type	__func__.1, @object
	.size	__func__.1, 7
__func__.1:
	.string	"geterr"
	.type	__func__.0, @object
	.size	__func__.0, 7
__func__.0:
	.string	"seterr"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
