	.file	"asn1_parse.c"
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
	.string	"cons: "
.LC1:
	.string	"prim: "
.LC2:
	.string	"%5ld:d=%-2d hl=%ld l=%4ld %s"
.LC3:
	.string	"%5ld:d=%-2d hl=%ld l=inf  %s"
.LC4:
	.string	"priv [ %d ] "
.LC5:
	.string	"cont [ %d ]"
.LC6:
	.string	"appl [ %d ]"
.LC7:
	.string	"<ASN1 %d>"
.LC8:
	.string	"%-18s"
	.text
	.type	asn1_print_info, @function
asn1_print_info:
.LFB160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	movl	%ecx, -200(%rbp)
	movq	%r8, -208(%rbp)
	movl	%r9d, -212(%rbp)
	movl	$0, -12(%rbp)
	movq	$-1, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	$0, -40(%rbp)
	movl	24(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L6
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L7
.L6:
	leaq	.LC1(%rip), %rax
	movq	%rax, -8(%rbp)
.L7:
	cmpl	$33, 24(%rbp)
	je	.L8
	movl	-200(%rbp), %eax
	movslq	%eax, %rdi
	movl	-196(%rbp), %ecx
	movq	-192(%rbp), %rdx
	leaq	.LC2(%rip), %rsi
	leaq	-176(%rbp), %rax
	pushq	-8(%rbp)
	pushq	-208(%rbp)
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jg	.L9
	jmp	.L10
.L8:
	movl	-200(%rbp), %eax
	movslq	%eax, %rdi
	movl	-196(%rbp), %ecx
	movq	-192(%rbp), %rdx
	leaq	.LC3(%rip), %rsi
	leaq	-176(%rbp), %rax
	subq	$8, %rsp
	pushq	-8(%rbp)
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	addq	$16, %rsp
	testl	%eax, %eax
	jle	.L24
.L9:
	cmpq	$0, -184(%rbp)
	je	.L11
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$79, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jg	.L12
	call	BIO_f_prefix@PLT
	movq	%rax, %rdi
	call	BIO_new@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L25
	movq	-184(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_push@PLT
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L25
	movl	$1, -12(%rbp)
.L12:
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$81, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	movq	%rax, -24(%rbp)
	leaq	-176(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$79, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L26
	movl	32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
	testq	%rax, %rax
	jle	.L26
.L11:
	leaq	-176(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	16(%rbp), %eax
	andl	$192, %eax
	cmpl	$192, %eax
	jne	.L16
	movl	-212(%rbp), %edx
	leaq	.LC4(%rip), %rsi
	leaq	-176(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L17
.L16:
	movl	16(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L18
	movl	-212(%rbp), %edx
	leaq	.LC5(%rip), %rsi
	leaq	-176(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L17
.L18:
	movl	16(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L19
	movl	-212(%rbp), %edx
	leaq	.LC6(%rip), %rsi
	leaq	-176(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L17
.L19:
	cmpl	$30, -212(%rbp)
	jle	.L20
	movl	-212(%rbp), %edx
	leaq	.LC7(%rip), %rsi
	leaq	-176(%rbp), %rax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	$128, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_snprintf@PLT
	jmp	.L17
.L20:
	movl	-212(%rbp), %eax
	movl	%eax, %edi
	call	ASN1_tag2str@PLT
	movq	%rax, -8(%rbp)
.L17:
	movq	-8(%rbp), %rdx
	leaq	.LC8(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	jmp	.L10
.L24:
	nop
	jmp	.L10
.L25:
	nop
	jmp	.L10
.L26:
	nop
.L10:
	cmpq	$0, -24(%rbp)
	js	.L21
	movq	-24(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$0, %ecx
	movl	$80, %esi
	movq	%rax, %rdi
	call	BIO_ctrl@PLT
.L21:
	cmpl	$0, -12(%rbp)
	je	.L22
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_pop@PLT
.L22:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	BIO_free@PLT
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE160:
	.size	asn1_print_info, .-asn1_print_info
	.globl	ASN1_parse
	.type	ASN1_parse, @function
ASN1_parse:
.LFB161:
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
	leaq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	%ecx, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	asn1_parse2
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE161:
	.size	ASN1_parse, .-ASN1_parse
	.globl	ASN1_parse_dump
	.type	ASN1_parse_dump, @function
ASN1_parse_dump:
.LFB162:
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
	movl	%r8d, -32(%rbp)
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	subq	$8, %rsp
	movl	-32(%rbp), %ecx
	pushq	%rcx
	movl	%edi, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	asn1_parse2
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE162:
	.size	ASN1_parse_dump, .-ASN1_parse_dump
	.section	.rodata
.LC9:
	.string	"BAD RECURSION DEPTH\n"
.LC10:
	.string	"Error in encoding\n"
.LC11:
	.string	"\n"
.LC12:
	.string	"length is greater than %ld\n"
.LC13:
	.string	":"
.LC14:
	.string	":BAD OBJECT"
.LC15:
	.string	":BAD BOOLEAN"
.LC16:
	.string	":%u"
.LC17:
	.string	"[HEX DUMP]:"
.LC18:
	.string	"%02X"
.LC19:
	.string	"-"
.LC20:
	.string	"00"
.LC21:
	.string	":BAD INTEGER"
.LC22:
	.string	":BAD ENUMERATED"
.LC23:
	.string	":["
.LC24:
	.string	"]"
	.text
	.type	asn1_parse2, @function
asn1_parse2:
.LFB163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movl	%ecx, -204(%rbp)
	movl	%r8d, -208(%rbp)
	movl	%r9d, -212(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	cmpl	$128, -208(%rbp)
	jle	.L32
	leaq	.LC9(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	movl	$0, %eax
	jmp	.L118
.L32:
	movl	$6, -72(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	jmp	.L34
.L117:
	movq	-136(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-200(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	leaq	-156(%rbp), %rdx
	leaq	-152(%rbp), %rsi
	leaq	-136(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ASN1_get_object@PLT
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L35
	leaq	.LC10(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	jmp	.L36
.L35:
	movq	-136(%rbp), %rax
	subq	-88(%rbp), %rax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	cltq
	subq	%rax, -200(%rbp)
	cmpl	$0, -212(%rbp)
	je	.L37
	movl	-208(%rbp), %esi
	jmp	.L38
.L37:
	movl	$0, %esi
.L38:
	movl	-160(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movq	-152(%rbp), %r10
	movl	-204(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	leaq	(%rdx,%rcx), %rdi
	movl	-96(%rbp), %ecx
	movl	-208(%rbp), %edx
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	pushq	%rsi
	movl	-92(%rbp), %esi
	pushq	%rsi
	pushq	%r8
	movq	%r10, %r8
	movq	%rdi, %rsi
	movq	%rax, %rdi
	call	asn1_print_info
	addq	$32, %rsp
	testl	%eax, %eax
	je	.L119
	movl	-92(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L40
	movq	-136(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	leaq	.LC11(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L120
	movq	-152(%rbp), %rax
	cmpq	%rax, -200(%rbp)
	jge	.L42
	movq	-200(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L36
.L42:
	cmpl	$33, -92(%rbp)
	jne	.L43
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	jne	.L43
.L48:
	movl	-208(%rbp), %eax
	leal	1(%rax), %r8d
	movq	-136(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movl	-204(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %r10d
	movq	-136(%rbp), %rax
	movq	-80(%rbp), %rdx
	subq	%rax, %rdx
	movl	-212(%rbp), %edi
	leaq	-136(%rbp), %rsi
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	movl	16(%rbp), %ecx
	pushq	%rcx
	movl	%edi, %r9d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	call	asn1_parse2
	addq	$16, %rsp
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	je	.L121
	cmpl	$2, -124(%rbp)
	je	.L45
	movq	-136(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L48
.L45:
	movq	-136(%rbp), %rax
	subq	-112(%rbp), %rax
	movq	%rax, -152(%rbp)
	nop
	jmp	.L53
.L43:
	movq	-152(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L50
.L52:
	movq	-136(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	-208(%rbp), %eax
	leal	1(%rax), %r8d
	movq	-136(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movl	-204(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %r10d
	movl	-212(%rbp), %edi
	movq	-48(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	movq	-184(%rbp), %rax
	subq	$8, %rsp
	movl	16(%rbp), %ecx
	pushq	%rcx
	movl	%edi, %r9d
	movl	%r10d, %ecx
	movq	%rax, %rdi
	call	asn1_parse2
	addq	$16, %rsp
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	je	.L122
	movq	-136(%rbp), %rax
	subq	-112(%rbp), %rax
	subq	%rax, -48(%rbp)
.L50:
	movq	-136(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jb	.L52
	jmp	.L53
.L40:
	movl	-160(%rbp), %eax
	testl	%eax, %eax
	je	.L54
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	leaq	.LC11(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L53
	jmp	.L36
.L54:
	movl	$0, -8(%rbp)
	movl	-156(%rbp), %eax
	cmpl	$19, %eax
	je	.L55
	movl	-156(%rbp), %eax
	cmpl	$20, %eax
	je	.L55
	movl	-156(%rbp), %eax
	cmpl	$22, %eax
	je	.L55
	movl	-156(%rbp), %eax
	cmpl	$26, %eax
	je	.L55
	movl	-156(%rbp), %eax
	cmpl	$18, %eax
	je	.L55
	movl	-156(%rbp), %eax
	cmpl	$12, %eax
	je	.L55
	movl	-156(%rbp), %eax
	cmpl	$23, %eax
	je	.L55
	movl	-156(%rbp), %eax
	cmpl	$24, %eax
	jne	.L56
.L55:
	leaq	.LC13(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L123
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	jle	.L124
	movq	-152(%rbp), %rax
	movl	%eax, %edx
	movq	-136(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	movq	-152(%rbp), %rdx
	cmpl	%edx, %eax
	je	.L124
	jmp	.L36
.L56:
	movl	-156(%rbp), %eax
	cmpl	$6, %eax
	jne	.L60
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	leaq	-144(%rbp), %rcx
	leaq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_ASN1_OBJECT@PLT
	testq	%rax, %rax
	je	.L61
	leaq	.LC13(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L125
	movq	-168(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	i2a_ASN1_OBJECT@PLT
	jmp	.L59
.L61:
	leaq	.LC14(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L126
	movl	$1, -36(%rbp)
	jmp	.L59
.L60:
	movl	-156(%rbp), %eax
	cmpl	$1, %eax
	jne	.L64
	movq	-152(%rbp), %rax
	cmpq	$1, %rax
	je	.L65
	leaq	.LC15(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L127
	movl	$1, -36(%rbp)
.L65:
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	jle	.L59
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC16(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	jmp	.L59
.L64:
	movl	-156(%rbp), %eax
	cmpl	$30, %eax
	je	.L59
	movl	-156(%rbp), %eax
	cmpl	$4, %eax
	jne	.L67
	movl	$1, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_OCTET_STRING@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L68
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.L68
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L69
.L74:
	movq	-144(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$31, %al
	ja	.L70
	movq	-144(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L70
	movq	-144(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	je	.L70
	movq	-144(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L71
.L70:
	movq	-144(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	jbe	.L72
.L71:
	movl	$0, -56(%rbp)
	jmp	.L73
.L72:
	addl	$1, -52(%rbp)
.L69:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L74
.L73:
	cmpl	$0, -56(%rbp)
	je	.L75
	leaq	.LC13(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L128
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-144(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L68
	jmp	.L36
.L75:
	cmpl	$0, 16(%rbp)
	jne	.L77
	leaq	.LC17(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$11, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L129
	movl	$0, -52(%rbp)
	jmp	.L79
.L81:
	movq	-144(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC18(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L130
	addl	$1, -52(%rbp)
.L79:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L81
	jmp	.L68
.L77:
	cmpl	$0, -8(%rbp)
	jne	.L82
	leaq	.LC11(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L131
.L82:
	cmpl	$-1, 16(%rbp)
	je	.L83
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, 16(%rbp)
	jle	.L84
.L83:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L85
.L84:
	movl	16(%rbp), %eax
.L85:
	movq	-144(%rbp), %rsi
	movl	-72(%rbp), %edx
	movq	-184(%rbp), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	BIO_dump_indent@PLT
	testl	%eax, %eax
	jle	.L132
	movl	$1, -8(%rbp)
.L68:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	$0, -16(%rbp)
	jmp	.L59
.L67:
	movl	-156(%rbp), %eax
	cmpl	$2, %eax
	jne	.L87
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_INTEGER@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L88
	leaq	.LC13(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L133
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$258, %eax
	jne	.L90
	leaq	.LC19(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L134
.L90:
	movl	$0, -60(%rbp)
	jmp	.L91
.L93:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC18(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L135
	addl	$1, -60(%rbp)
.L91:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L93
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L94
	leaq	.LC20(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L94
	jmp	.L36
.L88:
	leaq	.LC21(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L136
	movl	$1, -36(%rbp)
.L94:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	$0, -24(%rbp)
	jmp	.L59
.L87:
	movl	-156(%rbp), %eax
	cmpl	$10, %eax
	jne	.L96
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	addq	%rax, %rdx
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_ENUMERATED@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L97
	leaq	.LC13(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L137
	movq	-32(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$266, %eax
	jne	.L99
	leaq	.LC19(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L138
.L99:
	movl	$0, -64(%rbp)
	jmp	.L100
.L102:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-64(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC18(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L139
	addl	$1, -64(%rbp)
.L100:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -64(%rbp)
	jl	.L102
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L103
	leaq	.LC20(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jg	.L103
	jmp	.L36
.L97:
	leaq	.LC22(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L140
	movl	$1, -36(%rbp)
.L103:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_free@PLT
	movq	$0, -32(%rbp)
	jmp	.L59
.L96:
	movq	-152(%rbp), %rax
	testq	%rax, %rax
	jle	.L59
	cmpl	$0, 16(%rbp)
	je	.L59
	cmpl	$0, -8(%rbp)
	jne	.L105
	leaq	.LC11(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L141
.L105:
	cmpl	$-1, 16(%rbp)
	je	.L106
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	cmpq	%rax, %rdx
	jle	.L107
.L106:
	movq	-152(%rbp), %rax
	jmp	.L108
.L107:
	movl	16(%rbp), %eax
.L108:
	movq	-136(%rbp), %rsi
	movl	-72(%rbp), %edx
	movq	-184(%rbp), %rdi
	movl	%edx, %ecx
	movl	%eax, %edx
	call	BIO_dump_indent@PLT
	testl	%eax, %eax
	jle	.L142
	movl	$1, -8(%rbp)
	jmp	.L59
.L124:
	nop
.L59:
	cmpl	$0, -36(%rbp)
	je	.L110
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	leaq	.LC23(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L143
	movl	$0, -68(%rbp)
	jmp	.L112
.L114:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	.LC18(%rip), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	BIO_printf@PLT
	testl	%eax, %eax
	jle	.L144
	addl	$1, -68(%rbp)
.L112:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L114
	leaq	.LC24(%rip), %rdx
	movq	-184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	BIO_puts@PLT
	testl	%eax, %eax
	jle	.L145
	movl	$0, -36(%rbp)
.L110:
	cmpl	$0, -8(%rbp)
	jne	.L116
	leaq	.LC11(%rip), %rcx
	movq	-184(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	BIO_write@PLT
	testl	%eax, %eax
	jle	.L146
.L116:
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movl	-156(%rbp), %eax
	testl	%eax, %eax
	jne	.L53
	movl	-160(%rbp), %eax
	testl	%eax, %eax
	jne	.L53
	movl	$2, -4(%rbp)
	jmp	.L36
.L53:
	movq	-152(%rbp), %rax
	subq	%rax, -200(%rbp)
.L34:
	cmpq	$0, -200(%rbp)
	jg	.L117
	movl	$1, -4(%rbp)
	jmp	.L36
.L119:
	nop
	jmp	.L36
.L120:
	nop
	jmp	.L36
.L121:
	nop
	jmp	.L36
.L122:
	nop
	jmp	.L36
.L123:
	nop
	jmp	.L36
.L125:
	nop
	jmp	.L36
.L126:
	nop
	jmp	.L36
.L127:
	nop
	jmp	.L36
.L128:
	nop
	jmp	.L36
.L129:
	nop
	jmp	.L36
.L130:
	nop
	jmp	.L36
.L131:
	nop
	jmp	.L36
.L132:
	nop
	jmp	.L36
.L133:
	nop
	jmp	.L36
.L134:
	nop
	jmp	.L36
.L135:
	nop
	jmp	.L36
.L136:
	nop
	jmp	.L36
.L137:
	nop
	jmp	.L36
.L138:
	nop
	jmp	.L36
.L139:
	nop
	jmp	.L36
.L140:
	nop
	jmp	.L36
.L141:
	nop
	jmp	.L36
.L142:
	nop
	jmp	.L36
.L143:
	nop
	jmp	.L36
.L144:
	nop
	jmp	.L36
.L145:
	nop
	jmp	.L36
.L146:
	nop
.L36:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INTEGER_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_ENUMERATED_free@PLT
	movq	-136(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE163:
	.size	asn1_parse2, .-asn1_parse2
	.section	.rodata
.LC25:
	.string	"(unknown)"
	.text
	.globl	ASN1_tag2str
	.type	ASN1_tag2str, @function
ASN1_tag2str:
.LFB164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$258, -4(%rbp)
	je	.L148
	cmpl	$266, -4(%rbp)
	jne	.L149
.L148:
	andl	$-257, -4(%rbp)
.L149:
	cmpl	$0, -4(%rbp)
	js	.L150
	cmpl	$30, -4(%rbp)
	jle	.L151
.L150:
	leaq	.LC25(%rip), %rax
	jmp	.L152
.L151:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	tag2str.0(%rip), %rax
	movq	(%rdx,%rax), %rax
.L152:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE164:
	.size	ASN1_tag2str, .-ASN1_tag2str
	.section	.rodata
.LC26:
	.string	"EOC"
.LC27:
	.string	"BOOLEAN"
.LC28:
	.string	"INTEGER"
.LC29:
	.string	"BIT STRING"
.LC30:
	.string	"OCTET STRING"
.LC31:
	.string	"NULL"
.LC32:
	.string	"OBJECT"
.LC33:
	.string	"OBJECT DESCRIPTOR"
.LC34:
	.string	"EXTERNAL"
.LC35:
	.string	"REAL"
.LC36:
	.string	"ENUMERATED"
.LC37:
	.string	"<ASN1 11>"
.LC38:
	.string	"UTF8STRING"
.LC39:
	.string	"<ASN1 13>"
.LC40:
	.string	"<ASN1 14>"
.LC41:
	.string	"<ASN1 15>"
.LC42:
	.string	"SEQUENCE"
.LC43:
	.string	"SET"
.LC44:
	.string	"NUMERICSTRING"
.LC45:
	.string	"PRINTABLESTRING"
.LC46:
	.string	"T61STRING"
.LC47:
	.string	"VIDEOTEXSTRING"
.LC48:
	.string	"IA5STRING"
.LC49:
	.string	"UTCTIME"
.LC50:
	.string	"GENERALIZEDTIME"
.LC51:
	.string	"GRAPHICSTRING"
.LC52:
	.string	"VISIBLESTRING"
.LC53:
	.string	"GENERALSTRING"
.LC54:
	.string	"UNIVERSALSTRING"
.LC55:
	.string	"<ASN1 29>"
.LC56:
	.string	"BMPSTRING"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	tag2str.0, @object
	.size	tag2str.0, 248
tag2str.0:
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	.LC51
	.quad	.LC52
	.quad	.LC53
	.quad	.LC54
	.quad	.LC55
	.quad	.LC56
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
