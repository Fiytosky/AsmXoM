	.file	"bio_cb.c"
	.text
	.type	lh_MEM_hfn_thunk, @function
lh_MEM_hfn_thunk:
.LFB144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	call	*%rdx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.size	lh_MEM_hfn_thunk, .-lh_MEM_hfn_thunk
	.type	lh_MEM_cfn_thunk, @function
lh_MEM_cfn_thunk:
.LFB145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.size	lh_MEM_cfn_thunk, .-lh_MEM_cfn_thunk
	.section	.rodata
.LC0:
	.string	"BIO[%p]: "
.LC1:
	.string	"Free - %s\n"
.LC2:
	.string	"read(%d,%zu) - %s fd=%d\n"
.LC3:
	.string	"read(%d,%zu) - %s\n"
.LC4:
	.string	"write(%d,%zu) - %s fd=%d\n"
.LC5:
	.string	"write(%d,%zu) - %s\n"
.LC6:
	.string	"puts() - %s\n"
.LC7:
	.string	"gets(%zu) - %s\n"
.LC8:
	.string	"ctrl(%d) - %s\n"
.LC9:
	.string	"recvmmsg(%zu) - %s"
.LC10:
	.string	"sendmmsg(%zu) - %s"
	.align 8
.LC11:
	.string	"read return %d processed: %zu\n"
	.align 8
.LC12:
	.string	"write return %d processed: %zu\n"
	.align 8
.LC13:
	.string	"gets return %d processed: %zu\n"
	.align 8
.LC14:
	.string	"puts return %d processed: %zu\n"
.LC15:
	.string	"ctrl return %d\n"
.LC16:
	.string	"recvmmsg processed: %zu\n"
.LC17:
	.string	"sendmmsg processed: %zu\n"
	.align 8
.LC18:
	.string	"bio callback - unknown type (%d)\n"
	.text
	.globl	BIO_debug_callback_ex
	.type	BIO_debug_callback_ex, @function
BIO_debug_callback_ex:
.LFB165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$352, %rsp
	movq	%rdi, -312(%rbp)
	movl	%esi, -316(%rbp)
	movq	%rdx, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movl	%r8d, -320(%rbp)
	movq	%r9, -344(%rbp)
	movq	$0, -16(%rbp)
	movl	16(%rbp), %eax
	cltq
	movq	%rax, -24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L6
	movq	24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L6:
	movq	-312(%rbp), %rdx
	leaq	.LC0(%rip), %rsi
	leaq	-304(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L7
	movl	$0, -4(%rbp)
.L7:
	movl	-4(%rbp), %eax
	cltq
	leaq	-304(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	movl	$256, %edx
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	cmpl	$136, -316(%rbp)
	je	.L8
	cmpl	$136, -316(%rbp)
	jg	.L9
	cmpl	$135, -316(%rbp)
	je	.L10
	cmpl	$135, -316(%rbp)
	jg	.L9
	cmpl	$134, -316(%rbp)
	je	.L11
	cmpl	$134, -316(%rbp)
	jg	.L9
	cmpl	$133, -316(%rbp)
	je	.L12
	cmpl	$133, -316(%rbp)
	jg	.L9
	cmpl	$132, -316(%rbp)
	je	.L13
	cmpl	$132, -316(%rbp)
	jg	.L9
	cmpl	$131, -316(%rbp)
	je	.L14
	cmpl	$131, -316(%rbp)
	jg	.L9
	cmpl	$130, -316(%rbp)
	je	.L15
	cmpl	$130, -316(%rbp)
	jg	.L9
	cmpl	$8, -316(%rbp)
	je	.L16
	cmpl	$8, -316(%rbp)
	jg	.L9
	cmpl	$7, -316(%rbp)
	je	.L17
	cmpl	$7, -316(%rbp)
	jg	.L9
	cmpl	$6, -316(%rbp)
	je	.L18
	cmpl	$6, -316(%rbp)
	jg	.L9
	cmpl	$5, -316(%rbp)
	je	.L19
	cmpl	$5, -316(%rbp)
	jg	.L9
	cmpl	$4, -316(%rbp)
	je	.L20
	cmpl	$4, -316(%rbp)
	jg	.L9
	cmpl	$3, -316(%rbp)
	je	.L21
	cmpl	$3, -316(%rbp)
	jg	.L9
	cmpl	$1, -316(%rbp)
	je	.L22
	cmpl	$2, -316(%rbp)
	je	.L23
	jmp	.L9
.L22:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC1(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L23:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L25
	movq	-312(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r9
	movq	-312(%rbp), %rax
	movl	56(%rax), %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-336(%rbp), %r8
	leaq	.LC2(%rip), %rdi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	jmp	.L24
.L25:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r8
	movq	-312(%rbp), %rax
	movl	56(%rax), %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-336(%rbp), %rcx
	leaq	.LC3(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L21:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L27
	movq	-312(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r9
	movq	-312(%rbp), %rax
	movl	56(%rax), %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-336(%rbp), %r8
	leaq	.LC4(%rip), %rdi
	movq	-32(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	jmp	.L24
.L27:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r8
	movq	-312(%rbp), %rax
	movl	56(%rax), %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-336(%rbp), %rcx
	leaq	.LC5(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L20:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC6(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L19:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-336(%rbp), %rdx
	leaq	.LC7(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L18:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-320(%rbp), %edx
	leaq	.LC8(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L17:
	movq	-328(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC9(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L16:
	movq	-328(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	leaq	.LC10(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L15:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rcx
	movl	16(%rbp), %edx
	leaq	.LC11(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L14:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rcx
	movl	16(%rbp), %edx
	leaq	.LC12(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L12:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rcx
	movl	16(%rbp), %edx
	leaq	.LC13(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L13:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rcx
	movl	16(%rbp), %edx
	leaq	.LC14(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L11:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	16(%rbp), %edx
	leaq	.LC15(%rip), %rdi
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L24
.L10:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-336(%rbp), %rdx
	leaq	.LC16(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-336(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L24
.L8:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	-336(%rbp), %rdx
	leaq	.LC17(%rip), %rdi
	movq	-32(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movq	-336(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L24
.L9:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-316(%rbp), %edx
	leaq	.LC18(%rip), %rdi
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	nop
.L24:
	movq	-312(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L29
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	leaq	-304(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	jmp	.L30
.L29:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fputs@PLT
.L30:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_debug_callback_ex, .-BIO_debug_callback_ex
	.globl	BIO_debug_callback
	.type	BIO_debug_callback, @function
BIO_debug_callback:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -56(%rbp)
	jle	.L33
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.L33:
	cmpq	$0, -56(%rbp)
	jg	.L34
	movq	-56(%rbp), %rax
	movl	%eax, %r10d
	jmp	.L35
.L34:
	movl	$1, %r10d
.L35:
	movl	-32(%rbp), %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %r9
	movl	-32(%rbp), %r8d
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	leaq	-8(%rbp), %rdi
	pushq	%rdi
	pushq	%r10
	movq	%rax, %rdi
	call	BIO_debug_callback_ex@PLT
	addq	$16, %rsp
	movq	-56(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BIO_debug_callback, .-BIO_debug_callback
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
