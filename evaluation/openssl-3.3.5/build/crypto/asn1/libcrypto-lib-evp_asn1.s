	.file	"evp_asn1.c"
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
	.globl	ASN1_TYPE_set_octetstring
	.type	ASN1_TYPE_set_octetstring, @function
ASN1_TYPE_set_octetstring:
.LFB433:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	call	ASN1_OCTET_STRING_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_set@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
	jmp	.L7
.L8:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE433:
	.size	ASN1_TYPE_set_octetstring, .-ASN1_TYPE_set_octetstring
	.section	.rodata
.LC0:
	.string	"../crypto/asn1/evp_asn1.c"
	.text
	.globl	ASN1_TYPE_get_octetstring
	.type	ASN1_TYPE_get_octetstring, @function
ASN1_TYPE_get_octetstring:
.LFB434:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	jne	.L10
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L11
.L10:
	call	ERR_new@PLT
	leaq	__func__.4(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
	movl	$-1, %eax
	jmp	.L12
.L11:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.L13
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L14
.L13:
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.L14:
	cmpl	$0, -4(%rbp)
	jle	.L15
	cmpq	$0, -48(%rbp)
	je	.L15
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L15:
	movl	-20(%rbp), %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE434:
	.size	ASN1_TYPE_get_octetstring, .-ASN1_TYPE_get_octetstring
	.type	asn1_type_init_oct, @function
asn1_type_init_oct:
.LFB435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$4, 4(%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE435:
	.size	asn1_type_init_oct, .-asn1_type_init_oct
	.type	asn1_type_get_int_oct, @function
asn1_type_get_int_oct:
.LFB436:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_length@PLT
	movl	%eax, -24(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L18
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L18:
	movl	-48(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L19
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L20
.L19:
	movl	-48(%rbp), %eax
	movl	%eax, -20(%rbp)
.L20:
	cmpq	$0, -64(%rbp)
	je	.L21
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_get0_data@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L21:
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE436:
	.size	asn1_type_get_int_oct, .-asn1_type_get_int_oct
	.section	.rodata
.LC1:
	.string	"num"
.LC2:
	.string	"oct"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	asn1_int_oct_seq_tt, @object
	.size	asn1_int_oct_seq_tt, 80
asn1_int_oct_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	INT32_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC2
	.quad	ASN1_OCTET_STRING_it
	.text
	.type	asn1_int_oct_it, @function
asn1_int_oct_it:
.LFB437:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.3(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE437:
	.size	asn1_int_oct_it, .-asn1_int_oct_it
	.globl	ASN1_TYPE_set_int_octetstring
	.type	ASN1_TYPE_set_int_octetstring, @function
ASN1_TYPE_set_int_octetstring:
.LFB438:
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
	movl	%ecx, -76(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, -16(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-76(%rbp), %edx
	movq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_type_init_oct
	call	asn1_int_oct_it
	movq	%rax, %rcx
	leaq	-56(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_TYPE_pack_sequence@PLT
	testq	%rax, %rax
	je	.L26
	movl	$1, %eax
	jmp	.L28
.L26:
	movl	$0, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE438:
	.size	ASN1_TYPE_set_int_octetstring, .-ASN1_TYPE_set_int_octetstring
	.globl	ASN1_TYPE_get_int_octetstring
	.type	ASN1_TYPE_get_int_octetstring, @function
ASN1_TYPE_get_int_octetstring:
.LFB439:
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
	movl	%ecx, -44(%rbp)
	movq	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	jne	.L36
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L36
	call	asn1_int_oct_it
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L37
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %edi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	asn1_type_get_int_oct
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L34
	jmp	.L32
.L36:
	nop
	jmp	.L32
.L37:
	nop
.L32:
	call	ERR_new@PLT
	leaq	__func__.2(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L34:
	call	asn1_int_oct_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE439:
	.size	ASN1_TYPE_get_int_octetstring, .-ASN1_TYPE_get_int_octetstring
	.section	.data.rel.ro
	.align 32
	.type	asn1_oct_int_seq_tt, @object
	.size	asn1_oct_int_seq_tt, 80
asn1_oct_int_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	ASN1_OCTET_STRING_it
	.quad	4096
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	INT32_it
	.text
	.type	asn1_oct_int_it, @function
asn1_oct_int_it:
.LFB440:
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
.LFE440:
	.size	asn1_oct_int_it, .-asn1_oct_int_it
	.globl	ossl_asn1_type_set_octetstring_int
	.type	ossl_asn1_type_set_octetstring_int, @function
ossl_asn1_type_set_octetstring_int:
.LFB441:
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
	movl	%ecx, -76(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, -8(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-76(%rbp), %edx
	movq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	asn1_type_init_oct
	call	asn1_oct_int_it
	movq	%rax, %rcx
	leaq	-56(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ASN1_TYPE_pack_sequence@PLT
	testq	%rax, %rax
	je	.L41
	movl	$1, %eax
	jmp	.L43
.L41:
	movl	$0, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE441:
	.size	ossl_asn1_type_set_octetstring_int, .-ossl_asn1_type_set_octetstring_int
	.globl	ossl_asn1_type_get_octetstring_int
	.type	ossl_asn1_type_get_octetstring_int, @function
ossl_asn1_type_get_octetstring_int:
.LFB442:
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
	movl	%ecx, -44(%rbp)
	movq	$0, -8(%rbp)
	movl	$-1, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	jne	.L51
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L51
	call	asn1_oct_int_it
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ASN1_TYPE_unpack_sequence@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	asn1_type_get_int_oct
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L49
	jmp	.L47
.L51:
	nop
	jmp	.L47
.L52:
	nop
.L47:
	call	ERR_new@PLT
	leaq	__func__.0(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movl	$183, %esi
	movq	%rax, %rdi
	call	ERR_set_debug@PLT
	movl	$0, %edx
	movl	$109, %esi
	movl	$13, %edi
	movl	$0, %eax
	call	ERR_set_error@PLT
.L49:
	call	asn1_oct_int_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE442:
	.size	ossl_asn1_type_get_octetstring_int, .-ossl_asn1_type_get_octetstring_int
	.section	.rodata
	.align 16
	.type	__func__.4, @object
	.size	__func__.4, 26
__func__.4:
	.string	"ASN1_TYPE_get_octetstring"
.LC3:
	.string	"asn1_int_oct"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	asn1_int_oct_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC3
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 30
__func__.2:
	.string	"ASN1_TYPE_get_int_octetstring"
.LC4:
	.string	"asn1_oct_int"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	asn1_oct_int_seq_tt
	.quad	2
	.quad	0
	.quad	16
	.quad	.LC4
	.section	.rodata
	.align 32
	.type	__func__.0, @object
	.size	__func__.0, 35
__func__.0:
	.string	"ossl_asn1_type_get_octetstring_int"
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
