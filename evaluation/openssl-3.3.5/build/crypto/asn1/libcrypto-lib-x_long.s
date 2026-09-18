	.file	"x_long.c"
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
	.section	.data.rel.local,"aw"
	.align 32
	.type	long_pf, @object
	.size	long_pf, 64
long_pf:
	.quad	0
	.quad	0
	.quad	long_new
	.quad	long_free
	.quad	long_free
	.quad	long_c2i
	.quad	long_i2c
	.quad	long_print
	.text
	.globl	LONG_it
	.type	LONG_it, @function
LONG_it:
.LFB166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE166:
	.size	LONG_it, .-LONG_it
	.globl	ZLONG_it
	.type	ZLONG_it, @function
ZLONG_it:
.LFB167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE167:
	.size	ZLONG_it, .-ZLONG_it
	.type	long_new, @function
long_new:
.LFB168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE168:
	.size	long_new, .-long_new
	.type	long_free, @function
long_free:
.LFB169:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE169:
	.size	long_free, .-long_free
	.type	num_bits_ulong, @function
num_bits_ulong:
.LFB170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L13
.L14:
	cmpq	$0, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	addq	%rax, -16(%rbp)
	shrq	-24(%rbp)
	addq	$1, -8(%rbp)
.L13:
	cmpq	$63, -8(%rbp)
	jbe	.L14
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE170:
	.size	num_bits_ulong, .-num_bits_ulong
	.type	long_i2c, @function
long_i2c:
.LFB171:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L17
	movl	$-1, %eax
	jmp	.L27
.L17:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jns	.L19
	movq	$255, -16(%rbp)
	movq	-40(%rbp), %rax
	notq	%rax
	movq	%rax, -8(%rbp)
	jmp	.L20
.L19:
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.L20:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	num_bits_ulong
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L21
	movl	$1, -20(%rbp)
	jmp	.L22
.L21:
	movl	$0, -20(%rbp)
.L22:
	movl	-28(%rbp), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, -28(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L23
	cmpl	$0, -20(%rbp)
	je	.L24
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	-16(%rbp), %rdx
	movb	%dl, (%rax)
.L24:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L25
.L26:
	movq	-8(%rbp), %rax
	movl	%eax, %esi
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	xorl	%ecx, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	shrq	$8, -8(%rbp)
	subl	$1, -24(%rbp)
.L25:
	cmpl	$0, -24(%rbp)
	jns	.L26
.L23:
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE171:
	.size	long_i2c, .-long_i2c
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/x_long.c"
	.text
	.type	long_c2i, @function
long_c2i:
.LFB172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	$0, -16(%rbp)
	movq	$256, -24(%rbp)
	cmpl	$1, -52(%rbp)
	jle	.L29
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L30
	cmpl	$255, %eax
	jne	.L29
	addq	$1, -48(%rbp)
	subl	$1, -52(%rbp)
	movq	$255, -24(%rbp)
	jmp	.L29
.L30:
	addq	$1, -48(%rbp)
	subl	$1, -52(%rbp)
	movq	$0, -24(%rbp)
	nop
.L29:
	cmpl	$8, -52(%rbp)
	jle	.L31
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$155, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L31:
	cmpq	$256, -24(%rbp)
	jne	.L33
	cmpl	$0, -52(%rbp)
	je	.L34
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jns	.L34
	movq	$255, -24(%rbp)
	jmp	.L36
.L34:
	movq	$0, -24(%rbp)
	jmp	.L36
.L33:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorq	-24(%rbp), %rax
	andl	$128, %eax
	testq	%rax, %rax
	jne	.L36
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$166, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$221, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L36:
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L37
.L38:
	salq	$8, -16(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	xorq	-24(%rbp), %rax
	orq	%rax, -16(%rbp)
	addl	$1, -4(%rbp)
.L37:
	movl	-4(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L38
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jns	.L39
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$176, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L39:
	cmpq	$0, -24(%rbp)
	je	.L40
	movq	-32(%rbp), %rax
	notq	%rax
	movq	%rax, -32(%rbp)
.L40:
	movq	-72(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L41
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$182, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$128, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE172:
	.size	long_c2i, .-long_c2i
	.section	.rodata
.LC1:
	.string	"%ld\n"
	.text
	.type	long_print, @function
long_print:
.LFB173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE173:
	.size	long_print, .-long_print
	.section	.rodata
.LC2:
	.string	"LONG"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	0
	.zero	7
	.quad	2
	.quad	0
	.quad	0
	.quad	long_pf
	.quad	2147483647
	.quad	.LC2
	.section	.rodata
.LC3:
	.string	"ZLONG"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	0
	.zero	7
	.quad	2
	.quad	0
	.quad	0
	.quad	long_pf
	.quad	0
	.quad	.LC3
	.section	.rodata
	.align 8
	.type	__func__.0, @object
	.size	__func__.0, 9
__func__.0:
	.string	"long_c2i"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
