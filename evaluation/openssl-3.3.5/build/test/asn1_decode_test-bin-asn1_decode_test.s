	.file	"asn1_decode_test.c"
	.text
	.data
	.type	t_invalid_zero, @object
	.size	t_invalid_zero, 4
t_invalid_zero:
	.base64	"MAICAA=="
	.section	.rodata
.LC0:
	.string	"test_long"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ASN1_LONG_DATA_seq_tt, @object
	.size	ASN1_LONG_DATA_seq_tt, 40
ASN1_LONG_DATA_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	LONG_it
	.text
	.type	ASN1_LONG_DATA_it, @function
ASN1_LONG_DATA_it:
.LFB474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.7(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE474:
	.size	ASN1_LONG_DATA_it, .-ASN1_LONG_DATA_it
	.type	d2i_ASN1_LONG_DATA, @function
d2i_ASN1_LONG_DATA:
.LFB475:
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
	call	ASN1_LONG_DATA_it
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE475:
	.size	d2i_ASN1_LONG_DATA, .-d2i_ASN1_LONG_DATA
	.type	i2d_ASN1_LONG_DATA, @function
i2d_ASN1_LONG_DATA:
.LFB476:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_LONG_DATA_it
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE476:
	.size	i2d_ASN1_LONG_DATA, .-i2d_ASN1_LONG_DATA
	.type	ASN1_LONG_DATA_new, @function
ASN1_LONG_DATA_new:
.LFB477:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASN1_LONG_DATA_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE477:
	.size	ASN1_LONG_DATA_new, .-ASN1_LONG_DATA_new
	.type	ASN1_LONG_DATA_free, @function
ASN1_LONG_DATA_free:
.LFB478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_LONG_DATA_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE478:
	.size	ASN1_LONG_DATA_free, .-ASN1_LONG_DATA_free
	.type	test_long, @function
test_long:
.LFB479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	t_invalid_zero(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_LONG_DATA
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L13
.L11:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_LONG_DATA_free
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE479:
	.size	test_long, .-test_long
	.section	.rodata
.LC1:
	.string	"test_int32"
	.section	.data.rel.ro
	.align 32
	.type	ASN1_INT32_DATA_seq_tt, @object
	.size	ASN1_INT32_DATA_seq_tt, 40
ASN1_INT32_DATA_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC1
	.quad	INT32_it
	.text
	.type	ASN1_INT32_DATA_it, @function
ASN1_INT32_DATA_it:
.LFB480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.6(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE480:
	.size	ASN1_INT32_DATA_it, .-ASN1_INT32_DATA_it
	.type	d2i_ASN1_INT32_DATA, @function
d2i_ASN1_INT32_DATA:
.LFB481:
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
	call	ASN1_INT32_DATA_it
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE481:
	.size	d2i_ASN1_INT32_DATA, .-d2i_ASN1_INT32_DATA
	.type	i2d_ASN1_INT32_DATA, @function
i2d_ASN1_INT32_DATA:
.LFB482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_INT32_DATA_it
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE482:
	.size	i2d_ASN1_INT32_DATA, .-i2d_ASN1_INT32_DATA
	.type	ASN1_INT32_DATA_new, @function
ASN1_INT32_DATA_new:
.LFB483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASN1_INT32_DATA_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE483:
	.size	ASN1_INT32_DATA_new, .-ASN1_INT32_DATA_new
	.type	ASN1_INT32_DATA_free, @function
ASN1_INT32_DATA_free:
.LFB484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_INT32_DATA_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE484:
	.size	ASN1_INT32_DATA_free, .-ASN1_INT32_DATA_free
	.type	test_int32, @function
test_int32:
.LFB485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	t_invalid_zero(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_INT32_DATA
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L24
	movl	$0, %eax
	jmp	.L26
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INT32_DATA_free
	movl	$1, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE485:
	.size	test_int32, .-test_int32
	.section	.rodata
.LC2:
	.string	"test_uint32"
	.section	.data.rel.ro
	.align 32
	.type	ASN1_UINT32_DATA_seq_tt, @object
	.size	ASN1_UINT32_DATA_seq_tt, 40
ASN1_UINT32_DATA_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC2
	.quad	UINT32_it
	.text
	.type	ASN1_UINT32_DATA_it, @function
ASN1_UINT32_DATA_it:
.LFB486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.5(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE486:
	.size	ASN1_UINT32_DATA_it, .-ASN1_UINT32_DATA_it
	.type	d2i_ASN1_UINT32_DATA, @function
d2i_ASN1_UINT32_DATA:
.LFB487:
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
	call	ASN1_UINT32_DATA_it
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE487:
	.size	d2i_ASN1_UINT32_DATA, .-d2i_ASN1_UINT32_DATA
	.type	i2d_ASN1_UINT32_DATA, @function
i2d_ASN1_UINT32_DATA:
.LFB488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_UINT32_DATA_it
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE488:
	.size	i2d_ASN1_UINT32_DATA, .-i2d_ASN1_UINT32_DATA
	.type	ASN1_UINT32_DATA_new, @function
ASN1_UINT32_DATA_new:
.LFB489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASN1_UINT32_DATA_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE489:
	.size	ASN1_UINT32_DATA_new, .-ASN1_UINT32_DATA_new
	.type	ASN1_UINT32_DATA_free, @function
ASN1_UINT32_DATA_free:
.LFB490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_UINT32_DATA_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE490:
	.size	ASN1_UINT32_DATA_free, .-ASN1_UINT32_DATA_free
	.type	test_uint32, @function
test_uint32:
.LFB491:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	t_invalid_zero(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_UINT32_DATA
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L39
.L37:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UINT32_DATA_free
	movl	$1, %eax
.L39:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE491:
	.size	test_uint32, .-test_uint32
	.section	.rodata
.LC3:
	.string	"test_int64"
	.section	.data.rel.ro
	.align 32
	.type	ASN1_INT64_DATA_seq_tt, @object
	.size	ASN1_INT64_DATA_seq_tt, 40
ASN1_INT64_DATA_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC3
	.quad	INT64_it
	.text
	.type	ASN1_INT64_DATA_it, @function
ASN1_INT64_DATA_it:
.LFB492:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.4(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE492:
	.size	ASN1_INT64_DATA_it, .-ASN1_INT64_DATA_it
	.type	d2i_ASN1_INT64_DATA, @function
d2i_ASN1_INT64_DATA:
.LFB493:
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
	call	ASN1_INT64_DATA_it
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE493:
	.size	d2i_ASN1_INT64_DATA, .-d2i_ASN1_INT64_DATA
	.type	i2d_ASN1_INT64_DATA, @function
i2d_ASN1_INT64_DATA:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_INT64_DATA_it
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	i2d_ASN1_INT64_DATA, .-i2d_ASN1_INT64_DATA
	.type	ASN1_INT64_DATA_new, @function
ASN1_INT64_DATA_new:
.LFB495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASN1_INT64_DATA_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE495:
	.size	ASN1_INT64_DATA_new, .-ASN1_INT64_DATA_new
	.type	ASN1_INT64_DATA_free, @function
ASN1_INT64_DATA_free:
.LFB496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_INT64_DATA_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE496:
	.size	ASN1_INT64_DATA_free, .-ASN1_INT64_DATA_free
	.type	test_int64, @function
test_int64:
.LFB497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	t_invalid_zero(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_INT64_DATA
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L50
	movl	$0, %eax
	jmp	.L52
.L50:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_INT64_DATA_free
	movl	$1, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE497:
	.size	test_int64, .-test_int64
	.section	.rodata
.LC4:
	.string	"test_uint64"
	.section	.data.rel.ro
	.align 32
	.type	ASN1_UINT64_DATA_seq_tt, @object
	.size	ASN1_UINT64_DATA_seq_tt, 40
ASN1_UINT64_DATA_seq_tt:
	.quad	4096
	.quad	0
	.quad	0
	.quad	.LC4
	.quad	UINT64_it
	.text
	.type	ASN1_UINT64_DATA_it, @function
ASN1_UINT64_DATA_it:
.LFB498:
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
.LFE498:
	.size	ASN1_UINT64_DATA_it, .-ASN1_UINT64_DATA_it
	.type	d2i_ASN1_UINT64_DATA, @function
d2i_ASN1_UINT64_DATA:
.LFB499:
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
	call	ASN1_UINT64_DATA_it
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	d2i_ASN1_UINT64_DATA, .-d2i_ASN1_UINT64_DATA
	.type	i2d_ASN1_UINT64_DATA, @function
i2d_ASN1_UINT64_DATA:
.LFB500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	ASN1_UINT64_DATA_it
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	i2d_ASN1_UINT64_DATA, .-i2d_ASN1_UINT64_DATA
	.type	ASN1_UINT64_DATA_new, @function
ASN1_UINT64_DATA_new:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ASN1_UINT64_DATA_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	ASN1_UINT64_DATA_new, .-ASN1_UINT64_DATA_new
	.type	ASN1_UINT64_DATA_free, @function
ASN1_UINT64_DATA_free:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ASN1_UINT64_DATA_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	ASN1_UINT64_DATA_free, .-ASN1_UINT64_DATA_free
	.type	test_uint64, @function
test_uint64:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	t_invalid_zero(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_UINT64_DATA
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L63
	movl	$0, %eax
	jmp	.L65
.L63:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UINT64_DATA_free
	movl	$1, %eax
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	test_uint64, .-test_uint64
	.section	.rodata
.LC5:
	.string	"gentime"
.LC6:
	.string	"../test/asn1_decode_test.c"
	.text
	.type	test_gentime, @function
test_gentime:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movabsq	$4048791251950046488, %rax
	movq	%rax, -31(%rbp)
	movabsq	$6498747263051444536, %rax
	movq	%rax, -24(%rbp)
	movl	$1, -4(%rbp)
	leaq	-31(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$15, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_GENERALIZEDTIME@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$182, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L67
	movl	$0, -4(%rbp)
.L67:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_GENERALIZEDTIME_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	test_gentime, .-test_gentime
	.section	.rodata
.LC7:
	.string	"utctime"
	.text
	.type	test_utctime, @function
test_utctime:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movabsq	$3472615268796074775, %rax
	movq	%rax, -29(%rbp)
	movabsq	$6498747275952533813, %rax
	movq	%rax, -24(%rbp)
	movl	$1, -4(%rbp)
	leaq	-29(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$13, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_ASN1_UTCTIME@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC7(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$206, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	jne	.L70
	movl	$0, -4(%rbp)
.L70:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_UTCTIME_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	test_utctime, .-test_utctime
	.section	.rodata
.LC8:
	.string	"invalidDirString"
	.section	.data.rel.ro
	.align 32
	.type	INVALIDTEMPLATE_seq_tt, @object
	.size	INVALIDTEMPLATE_seq_tt, 40
INVALIDTEMPLATE_seq_tt:
	.quad	136
	.quad	12
	.quad	0
	.quad	.LC8
	.quad	DIRECTORYSTRING_it
	.text
	.type	INVALIDTEMPLATE_it, @function
INVALIDTEMPLATE_it:
.LFB506:
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
.LFE506:
	.size	INVALIDTEMPLATE_it, .-INVALIDTEMPLATE_it
	.type	d2i_INVALIDTEMPLATE, @function
d2i_INVALIDTEMPLATE:
.LFB507:
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
	call	INVALIDTEMPLATE_it
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_item_d2i@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	d2i_INVALIDTEMPLATE, .-d2i_INVALIDTEMPLATE
	.type	i2d_INVALIDTEMPLATE, @function
i2d_INVALIDTEMPLATE:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	INVALIDTEMPLATE_it
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_i2d@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	i2d_INVALIDTEMPLATE, .-i2d_INVALIDTEMPLATE
	.type	INVALIDTEMPLATE_new, @function
INVALIDTEMPLATE_new:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	INVALIDTEMPLATE_it
	movq	%rax, %rdi
	call	ASN1_item_new@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	INVALIDTEMPLATE_new, .-INVALIDTEMPLATE_new
	.type	INVALIDTEMPLATE_free, @function
INVALIDTEMPLATE_free:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	INVALIDTEMPLATE_it
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ASN1_item_free@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	INVALIDTEMPLATE_free, .-INVALIDTEMPLATE_free
	.data
	.type	t_invalid_template, @object
	.size	t_invalid_template, 5
t_invalid_template:
	.base64	"MAMMAUE="
	.section	.rodata
.LC9:
	.string	"tmp"
	.text
	.type	test_invalid_template, @function
test_invalid_template:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	t_invalid_template(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movl	$5, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	d2i_INVALIDTEMPLATE
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC9(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$243, %esi
	call	test_ptr_null@PLT
	testl	%eax, %eax
	je	.L82
	movl	$1, %eax
	jmp	.L84
.L82:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	INVALIDTEMPLATE_free
	movl	$0, %eax
.L84:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	test_invalid_template, .-test_invalid_template
	.section	.rodata
.LC10:
	.string	"countryName"
.LC11:
	.string	"C"
	.align 8
.LC12:
	.string	"obj = ASN1_OBJECT_create(NID_undef, cn_der, sizeof(cn_der), \"C\", \"countryName\")"
	.align 8
.LC13:
	.string	"d2i_ASN1_OBJECT(&obj, &p, sizeof(oid_der))"
	.text
	.type	test_reuse_asn1_object, @function
test_reuse_asn1_object:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	leaq	oid_der.1(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC10(%rip), %rcx
	leaq	.LC11(%rip), %rdx
	leaq	cn_der.0(%rip), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$5, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	ASN1_OBJECT_create@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	leaq	.LC6(%rip), %rdi
	movq	%rax, %rcx
	movl	$262, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L90
	leaq	-24(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	d2i_ASN1_OBJECT@PLT
	movq	%rax, %rcx
	leaq	.LC13(%rip), %rdx
	leaq	.LC6(%rip), %rax
	movl	$266, %esi
	movq	%rax, %rdi
	call	test_ptr@PLT
	testl	%eax, %eax
	je	.L91
	movl	$1, -4(%rbp)
	jmp	.L87
.L90:
	nop
	jmp	.L87
.L91:
	nop
.L87:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ASN1_OBJECT_free@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	test_reuse_asn1_object, .-test_reuse_asn1_object
	.section	.rodata
.LC14:
	.string	"test_gentime"
.LC15:
	.string	"test_utctime"
.LC16:
	.string	"test_invalid_template"
.LC17:
	.string	"test_reuse_asn1_object"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_long(%rip), %rdx
	leaq	.LC0(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_int32(%rip), %rdx
	leaq	.LC1(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_uint32(%rip), %rdx
	leaq	.LC2(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_int64(%rip), %rdx
	leaq	.LC3(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_uint64(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_gentime(%rip), %rdx
	leaq	.LC14(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_utctime(%rip), %rdx
	leaq	.LC15(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_invalid_template(%rip), %rdx
	leaq	.LC16(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_reuse_asn1_object(%rip), %rdx
	leaq	.LC17(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC18:
	.string	"ASN1_LONG_DATA"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.7, @object
	.size	local_it.7, 56
local_it.7:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASN1_LONG_DATA_seq_tt
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC18
	.section	.rodata
.LC19:
	.string	"ASN1_INT32_DATA"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.6, @object
	.size	local_it.6, 56
local_it.6:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASN1_INT32_DATA_seq_tt
	.quad	1
	.quad	0
	.quad	4
	.quad	.LC19
	.section	.rodata
.LC20:
	.string	"ASN1_UINT32_DATA"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASN1_UINT32_DATA_seq_tt
	.quad	1
	.quad	0
	.quad	4
	.quad	.LC20
	.section	.rodata
.LC21:
	.string	"ASN1_INT64_DATA"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASN1_INT64_DATA_seq_tt
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC21
	.section	.rodata
.LC22:
	.string	"ASN1_UINT64_DATA"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASN1_UINT64_DATA_seq_tt
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC22
	.section	.rodata
.LC23:
	.string	"INVALIDTEMPLATE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	INVALIDTEMPLATE_seq_tt
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC23
	.data
	.align 8
	.type	oid_der.1, @object
	.size	oid_der.1, 8
oid_der.1:
	.base64	"BgYqAwQFBgc="
	.type	cn_der.0, @object
	.size	cn_der.0, 5
cn_der.0:
	.base64	"BgNVBAY="
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
