	.file	"time.c"
	.text
	.type	ossl_ticks2time, @function
ossl_ticks2time:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	ossl_ticks2time, .-ossl_ticks2time
	.type	ossl_time_zero, @function
ossl_time_zero:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	ossl_ticks2time
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	ossl_time_zero, .-ossl_time_zero
	.section	.rodata
.LC0:
	.string	"../crypto/time.c"
.LC1:
	.string	"calling gettimeofday()"
	.text
	.globl	ossl_time_now
	.type	ossl_time_now, @function
ossl_time_now:
.LFB102:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday@PLT
	testl	%eax, %eax
	jns	.L6
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$38, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	call	__errno_location@PLT
	movl	(%rax), %eax
	leaq	.LC1(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	call	ossl_time_zero
	jmp	.L12
.L6:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jg	.L8
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jle	.L9
	movq	-24(%rbp), %rax
	imulq	$1000, %rax, %rax
	jmp	.L10
.L9:
	movl	$0, %eax
.L10:
	movq	%rax, -8(%rbp)
	jmp	.L11
.L8:
	movq	-32(%rbp), %rax
	imulq	$1000000, %rax, %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	imulq	$1000, %rax, %rax
	movq	%rax, -8(%rbp)
.L11:
	movq	-8(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	ossl_time_now, .-ossl_time_now
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 14
__func__.0:
	.string	"ossl_time_now"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
