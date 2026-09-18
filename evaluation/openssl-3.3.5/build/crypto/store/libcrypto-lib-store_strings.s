	.file	"store_strings.c"
	.text
	.section	.rodata
.LC0:
	.string	"Name"
.LC1:
	.string	"Parameters"
.LC2:
	.string	"Public key"
.LC3:
	.string	"Pkey"
.LC4:
	.string	"Certificate"
.LC5:
	.string	"CRL"
	.section	.data.rel.local,"aw"
	.align 32
	.type	type_strings, @object
	.size	type_strings, 48
type_strings:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.text
	.globl	OSSL_STORE_INFO_type_string
	.type	OSSL_STORE_INFO_type_string, @function
OSSL_STORE_INFO_type_string:
.LFB449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$6, -4(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L2
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L3
.L2:
	movl	$0, %eax
	jmp	.L4
.L3:
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	type_strings(%rip), %rax
	movq	(%rdx,%rax), %rax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE449:
	.size	OSSL_STORE_INFO_type_string, .-OSSL_STORE_INFO_type_string
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
