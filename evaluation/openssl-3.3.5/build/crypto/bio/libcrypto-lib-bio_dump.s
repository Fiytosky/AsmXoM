	.file	"bio_dump.c"
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
	.globl	BIO_dump_cb
	.type	BIO_dump_cb, @function
BIO_dump_cb:
.LFB165:
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
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	BIO_dump_indent_cb@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE165:
	.size	BIO_dump_cb, .-BIO_dump_cb
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"%*s%04x - "
.LC2:
	.string	"%02x%c"
	.text
	.globl	BIO_dump_indent_cb
	.type	BIO_dump_indent_cb, @function
BIO_dump_indent_cb:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movl	%ecx, -364(%rbp)
	movl	%r8d, -368(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	cmpl	$0, -368(%rbp)
	jns	.L8
	movl	$0, -368(%rbp)
	jmp	.L9
.L8:
	cmpl	$64, -368(%rbp)
	jle	.L9
	movl	$64, -368(%rbp)
.L9:
	movl	-368(%rbp), %eax
	movl	$6, %edx
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	movl	-368(%rbp), %edx
	subl	%eax, %edx
	leal	3(%rdx), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	negl	%eax
	addl	$16, %eax
	movl	%eax, -36(%rbp)
	movl	-364(%rbp), %eax
	cltd
	idivl	-36(%rbp)
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	imull	-36(%rbp), %eax
	cmpl	%eax, -364(%rbp)
	jle	.L10
	addl	$1, -16(%rbp)
.L10:
	movl	$0, -8(%rbp)
	jmp	.L11
.L31:
	movl	-8(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC0(%rip), %rdi
	movl	-368(%rbp), %edx
	leaq	.LC1(%rip), %rsi
	leaq	-336(%rbp), %rax
	movl	%ecx, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$289, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L12
	movl	$-1, %eax
	jmp	.L32
.L12:
	movl	$0, -12(%rbp)
	jmp	.L14
.L20:
	movl	-20(%rbp), %eax
	cltq
	subq	$286, %rax
	cmpq	$3, %rax
	jbe	.L15
	movl	-8(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -364(%rbp)
	jg	.L16
	movl	-20(%rbp), %eax
	cltq
	leaq	-336(%rbp), %rdx
	addq	%rdx, %rax
	movl	$2105376, (%rax)
	jmp	.L17
.L16:
	movl	-8(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -37(%rbp)
	cmpl	$7, -12(%rbp)
	jne	.L18
	movl	$45, %esi
	jmp	.L19
.L18:
	movl	$32, %esi
.L19:
	movzbl	-37(%rbp), %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-336(%rbp), %rcx
	leaq	(%rcx,%rdx), %rdi
	leaq	.LC2(%rip), %rdx
	movl	%esi, %r8d
	movl	%eax, %ecx
	movl	$4, %esi
	movl	$0, %eax
	call	BIO_snprintf@PLT
.L17:
	addl	$3, -20(%rbp)
.L15:
	addl	$1, -12(%rbp)
.L14:
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L20
	movl	-20(%rbp), %eax
	cltq
	subq	$287, %rax
	cmpq	$2, %rax
	jbe	.L21
	movl	-20(%rbp), %eax
	cltq
	leaq	-336(%rbp), %rdx
	addq	%rdx, %rax
	movw	$8224, (%rax)
	movb	$0, 2(%rax)
	addl	$2, -20(%rbp)
.L21:
	movl	$0, -12(%rbp)
	jmp	.L22
.L28:
	movl	-8(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -364(%rbp)
	jle	.L33
	movl	-20(%rbp), %eax
	cltq
	subq	$288, %rax
	cmpq	$1, %rax
	jbe	.L25
	movl	-8(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -37(%rbp)
	cmpb	$31, -37(%rbp)
	jbe	.L26
	cmpb	$126, -37(%rbp)
	ja	.L26
	movzbl	-37(%rbp), %edx
	jmp	.L27
.L26:
	movl	$46, %edx
.L27:
	movl	-20(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%ecx, -20(%rbp)
	cltq
	movb	%dl, -336(%rbp,%rax)
	movl	-20(%rbp), %eax
	cltq
	movb	$0, -336(%rbp,%rax)
.L25:
	addl	$1, -12(%rbp)
.L22:
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L28
	jmp	.L24
.L33:
	nop
.L24:
	movl	-20(%rbp), %eax
	cltq
	subq	$288, %rax
	cmpq	$1, %rax
	jbe	.L29
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cltq
	movb	$10, -336(%rbp,%rax)
	movl	-20(%rbp), %eax
	cltq
	movb	$0, -336(%rbp,%rax)
.L29:
	movl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-352(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	-344(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jns	.L30
	movl	-44(%rbp), %eax
	jmp	.L32
.L30:
	movl	-44(%rbp), %eax
	addl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L11:
	movl	-8(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L31
	movl	-4(%rbp), %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	BIO_dump_indent_cb, .-BIO_dump_indent_cb
	.type	write_fp, @function
write_fp:
.LFB167:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fwrite@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	write_fp, .-write_fp
	.globl	BIO_dump_fp
	.type	BIO_dump_fp, @function
BIO_dump_fp:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	write_fp(%rip), %rdi
	movq	%rax, %rsi
	call	BIO_dump_cb@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	BIO_dump_fp, .-BIO_dump_fp
	.globl	BIO_dump_indent_fp
	.type	BIO_dump_indent_fp, @function
BIO_dump_indent_fp:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	write_fp(%rip), %rdi
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	BIO_dump_indent_cb@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	BIO_dump_indent_fp, .-BIO_dump_indent_fp
	.type	write_bio, @function
write_bio:
.LFB170:
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
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	write_bio, .-write_bio
	.globl	BIO_dump
	.type	BIO_dump, @function
BIO_dump:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	write_bio(%rip), %rdi
	movq	%rax, %rsi
	call	BIO_dump_cb@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	BIO_dump, .-BIO_dump
	.globl	BIO_dump_indent
	.type	BIO_dump_indent, @function
BIO_dump_indent:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	write_bio(%rip), %rdi
	movl	%esi, %r8d
	movq	%rax, %rsi
	call	BIO_dump_indent_cb@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	BIO_dump_indent, .-BIO_dump_indent
	.section	.rodata
.LC3:
	.string	"%*s"
.LC4:
	.string	"%02X:"
.LC5:
	.string	"\n"
.LC6:
	.string	"%02X"
	.text
	.globl	BIO_hex_string
	.type	BIO_hex_string, @function
BIO_hex_string:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, -4(%rbp)
	jmp	.L49
.L52:
	cmpl	$0, -4(%rbp)
	je	.L50
	cmpl	$0, -8(%rbp)
	jne	.L50
	leaq	.LC0(%rip), %rcx
	movl	-28(%rbp), %edx
	leaq	.LC3(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L50:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC4(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L51
	movl	$0, -8(%rbp)
	leaq	.LC5(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L51:
	addl	$1, -4(%rbp)
.L49:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jl	.L52
	cmpl	$0, -4(%rbp)
	je	.L53
	cmpl	$0, -8(%rbp)
	jne	.L53
	leaq	.LC0(%rip), %rcx
	movl	-28(%rbp), %edx
	leaq	.LC3(%rip), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
.L53:
	movl	-44(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC6(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	BIO_hex_string, .-BIO_hex_string
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
