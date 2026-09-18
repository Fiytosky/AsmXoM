	.file	"ts_lib.c"
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
	.string	"0x"
.LC1:
	.string	"../crypto/ts/ts_lib.c"
	.text
	.globl	TS_ASN1_INTEGER_print_bio
	.type	TS_ASN1_INTEGER_print_bio, @function
TS_ASN1_INTEGER_print_bio:
.LFB629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ASN1_INTEGER_to_BN@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L6
	movl	$-1, %eax
	jmp	.L7
.L6:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_bn2hex@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L8
	leaq	.LC0(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L9
	movl	$1, %eax
	jmp	.L10
.L9:
	movl	$0, %eax
.L10:
	movl	%eax, -4(%rbp)
	leaq	.LC1(%rip), %rcx
	movq	-24(%rbp), %rax
	movl	$31, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
.L8:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	BN_free@PLT
	movl	-4(%rbp), %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE629:
	.size	TS_ASN1_INTEGER_print_bio, .-TS_ASN1_INTEGER_print_bio
	.section	.rodata
.LC2:
	.string	"%s\n"
	.text
	.globl	TS_OBJ_print_bio
	.type	TS_OBJ_print_bio, @function
TS_OBJ_print_bio:
.LFB630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	-144(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$128, %esi
	movq	%rax, %rdi
	call	OBJ_obj2txt@PLT
	leaq	-128(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE630:
	.size	TS_OBJ_print_bio, .-TS_OBJ_print_bio
	.section	.rodata
.LC3:
	.string	"Extensions:\n"
.LC4:
	.string	" critical"
.LC5:
	.string	""
.LC6:
	.string	":%s\n"
.LC7:
	.string	"%4s"
.LC8:
	.string	"\n"
	.text
	.globl	TS_ext_print_bio
	.type	TS_ext_print_bio, @function
TS_ext_print_bio:
.LFB631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	.LC3(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	X509v3_get_ext_count@PLT
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L14
.L20:
	movl	-4(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	X509v3_get_ext@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_object@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	testl	%eax, %eax
	jns	.L15
	movl	$0, %eax
	jmp	.L16
.L15:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_critical@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L17
	leaq	.LC4(%rip), %rax
	jmp	.L18
.L17:
	leaq	.LC5(%rip), %rax
.L18:
	leaq	.LC6(%rip), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$4, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	X509V3_EXT_print@PLT
	testl	%eax, %eax
	jne	.L19
	leaq	.LC5(%rip), %rdx
	leaq	.LC7(%rip), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	X509_EXTENSION_get_data@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_print@PLT
.L19:
	leaq	.LC8(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	addl	$1, -4(%rbp)
.L14:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L20
	movl	$1, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE631:
	.size	TS_ext_print_bio, .-TS_ext_print_bio
	.section	.rodata
.LC9:
	.string	"UNKNOWN"
.LC10:
	.string	"Hash Algorithm: %s\n"
	.text
	.globl	TS_X509_ALGOR_print_bio
	.type	TS_X509_ALGOR_print_bio, @function
TS_X509_ALGOR_print_bio:
.LFB632:
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
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	OBJ_obj2nid@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L22
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	OBJ_nid2ln@PLT
	jmp	.L23
.L22:
	leaq	.LC9(%rip), %rax
.L23:
	leaq	.LC10(%rip), %rsi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE632:
	.size	TS_X509_ALGOR_print_bio, .-TS_X509_ALGOR_print_bio
	.section	.rodata
.LC11:
	.string	"Message data:\n"
	.text
	.globl	TS_MSG_IMPRINT_print_bio
	.type	TS_MSG_IMPRINT_print_bio, @function
TS_MSG_IMPRINT_print_bio:
.LFB633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	TS_X509_ALGOR_print_bio@PLT
	leaq	.LC11(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	movl	$4, %ecx
	movl	%ebx, %edx
	movq	%rax, %rdi
	call	BIO_dump_indent@PLT
	movl	$1, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE633:
	.size	TS_MSG_IMPRINT_print_bio, .-TS_MSG_IMPRINT_print_bio
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
