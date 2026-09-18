	.file	"ctype.c"
	.text
	.section	.rodata
	.align 32
	.type	ctype_char_map, @object
	.size	ctype_char_map, 256
ctype_char_map:
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	104
	.value	72
	.value	72
	.value	72
	.value	72
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	64
	.value	2344
	.value	896
	.value	896
	.value	896
	.value	896
	.value	896
	.value	896
	.value	2944
	.value	2944
	.value	2944
	.value	896
	.value	3968
	.value	2944
	.value	2944
	.value	2944
	.value	3968
	.value	3476
	.value	3476
	.value	3476
	.value	3476
	.value	3476
	.value	3476
	.value	3476
	.value	3476
	.value	3476
	.value	3476
	.value	2944
	.value	896
	.value	896
	.value	3968
	.value	896
	.value	2944
	.value	896
	.value	3474
	.value	3474
	.value	3474
	.value	3474
	.value	3474
	.value	3474
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	3458
	.value	896
	.value	896
	.value	896
	.value	896
	.value	896
	.value	896
	.value	3473
	.value	3473
	.value	3473
	.value	3473
	.value	3473
	.value	3473
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	3457
	.value	896
	.value	896
	.value	896
	.value	896
	.value	64
	.text
	.globl	ossl_ctype_check
	.type	ossl_ctype_check, @function
ossl_ctype_check:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$128, -4(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	js	.L2
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.L2
	movl	-8(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	ctype_char_map(%rip), %rax
	movzwl	(%rdx,%rax), %eax
	movzwl	%ax, %eax
	andl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L2
	movl	$1, %eax
	jmp	.L4
.L2:
	movl	$0, %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ossl_ctype_check, .-ossl_ctype_check
	.globl	ossl_isdigit
	.type	ossl_isdigit, @function
ossl_isdigit:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$47, -4(%rbp)
	jle	.L6
	cmpl	$57, -4(%rbp)
	jg	.L6
	movl	$1, %eax
	jmp	.L8
.L6:
	movl	$0, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ossl_isdigit, .-ossl_isdigit
	.globl	ossl_isupper
	.type	ossl_isupper, @function
ossl_isupper:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$64, -4(%rbp)
	jle	.L10
	cmpl	$90, -4(%rbp)
	jg	.L10
	movl	$1, %eax
	jmp	.L12
.L10:
	movl	$0, %eax
.L12:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ossl_isupper, .-ossl_isupper
	.globl	ossl_islower
	.type	ossl_islower, @function
ossl_islower:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	.L14
	cmpl	$122, -4(%rbp)
	jg	.L14
	movl	$1, %eax
	jmp	.L16
.L14:
	movl	$0, %eax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ossl_islower, .-ossl_islower
	.section	.rodata
	.align 4
	.type	case_change, @object
	.size	case_change, 4
case_change:
	.long	32
	.text
	.globl	ossl_tolower
	.type	ossl_tolower, @function
ossl_tolower:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$64, -4(%rbp)
	jle	.L18
	cmpl	$90, -4(%rbp)
	jg	.L18
	movl	$32, %eax
	xorl	-20(%rbp), %eax
	jmp	.L20
.L18:
	movl	-20(%rbp), %eax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ossl_tolower, .-ossl_tolower
	.globl	ossl_toupper
	.type	ossl_toupper, @function
ossl_toupper:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	.L22
	cmpl	$122, -4(%rbp)
	jg	.L22
	movl	$32, %eax
	xorl	-20(%rbp), %eax
	jmp	.L24
.L22:
	movl	-20(%rbp), %eax
.L24:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ossl_toupper, .-ossl_toupper
	.globl	ossl_ascii_isdigit
	.type	ossl_ascii_isdigit, @function
ossl_ascii_isdigit:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$47, -4(%rbp)
	jle	.L26
	cmpl	$57, -4(%rbp)
	jg	.L26
	movl	$1, %eax
	jmp	.L28
.L26:
	movl	$0, %eax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ossl_ascii_isdigit, .-ossl_ascii_isdigit
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
