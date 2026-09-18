	.file	"a_type.c"
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
	.globl	ASN1_TYPE_get
	.type	ASN1_TYPE_get, @function
ASN1_TYPE_get:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L6
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.L6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L7
.L6:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L8
.L7:
	movl	$0, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	ASN1_TYPE_get, .-ASN1_TYPE_get
	.globl	ASN1_TYPE_set
	.type	ASN1_TYPE_set, @function
ASN1_TYPE_set:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L10
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.L10
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L10
	leaq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ossl_asn1_primitive_free@PLT
.L10:
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	cmpl	$1, -28(%rbp)
	jne	.L11
	cmpq	$0, -40(%rbp)
	je	.L12
	movl	$255, %edx
	jmp	.L13
.L12:
	movl	$0, %edx
.L13:
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L15
.L11:
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L15:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	ASN1_TYPE_set, .-ASN1_TYPE_set
	.globl	ASN1_TYPE_set1
	.type	ASN1_TYPE_set1, @function
ASN1_TYPE_set1:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L17
	cmpl	$1, -44(%rbp)
	jne	.L18
.L17:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
	jmp	.L19
.L18:
	cmpl	$6, -44(%rbp)
	jne	.L20
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	OBJ_dup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L21
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-16(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
	jmp	.L19
.L20:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_STRING_dup@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L23
	movl	$0, %eax
	jmp	.L22
.L23:
	movq	-8(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
.L19:
	movl	$1, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	ASN1_TYPE_set1, .-ASN1_TYPE_set1
	.globl	ASN1_TYPE_cmp
	.type	ASN1_TYPE_cmp, @function
ASN1_TYPE_cmp:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -4(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L25
	cmpq	$0, -32(%rbp)
	je	.L25
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L26
.L25:
	movl	$-1, %eax
	jmp	.L27
.L26:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$6, %eax
	je	.L28
	cmpl	$6, %eax
	jg	.L29
	cmpl	$1, %eax
	je	.L30
	cmpl	$5, %eax
	je	.L31
	jmp	.L29
.L28:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	OBJ_cmp@PLT
	movl	%eax, -4(%rbp)
	jmp	.L32
.L30:
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, -4(%rbp)
	jmp	.L32
.L31:
	movl	$0, -4(%rbp)
	jmp	.L32
.L29:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_STRING_cmp@PLT
	movl	%eax, -4(%rbp)
	nop
.L32:
	movl	-4(%rbp), %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	ASN1_TYPE_cmp, .-ASN1_TYPE_cmp
	.globl	ASN1_TYPE_pack_sequence
	.type	ASN1_TYPE_pack_sequence, @function
ASN1_TYPE_pack_sequence:
.LFB512:
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
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_pack@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	cmpq	$0, -40(%rbp)
	je	.L36
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L37
.L36:
	call	ASN1_TYPE_new@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L38
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OCTET_STRING_free@PLT
	movl	$0, %eax
	jmp	.L35
.L38:
	cmpq	$0, -40(%rbp)
	je	.L37
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L37:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	ASN1_TYPE_set@PLT
	movq	-8(%rbp), %rax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	ASN1_TYPE_pack_sequence, .-ASN1_TYPE_pack_sequence
	.globl	ASN1_TYPE_unpack_sequence
	.type	ASN1_TYPE_unpack_sequence, @function
ASN1_TYPE_unpack_sequence:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L40
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$16, %eax
	jne	.L40
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L41
.L40:
	movl	$0, %eax
	jmp	.L42
.L41:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_unpack@PLT
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	ASN1_TYPE_unpack_sequence, .-ASN1_TYPE_unpack_sequence
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
