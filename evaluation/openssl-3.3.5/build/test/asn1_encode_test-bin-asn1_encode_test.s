	.file	"asn1_encode_test.c"
	.text
	.local	t_zero
	.comm	t_zero,1,1
	.data
	.type	t_one, @object
	.size	t_one, 1
t_one:
	.ascii	"\001"
	.type	t_one_neg, @object
	.size	t_one_neg, 1
t_one_neg:
	.ascii	"\377"
	.type	t_minus_256, @object
	.size	t_minus_256, 2
t_minus_256:
	.string	"\377"
	.type	t_longundef, @object
	.size	t_longundef, 4
t_longundef:
	.base64	"f////w=="
	.align 8
	.type	t_9bytes_1, @object
	.size	t_9bytes_1, 9
t_9bytes_1:
	.base64	"Af//////////"
	.align 8
	.type	t_8bytes_1, @object
	.size	t_8bytes_1, 9
t_8bytes_1:
	.base64	"AIAAAAAAAAAA"
	.align 8
	.type	t_8bytes_2, @object
	.size	t_8bytes_2, 8
t_8bytes_2:
	.base64	"f/////////8="
	.align 8
	.type	t_8bytes_3_pad, @object
	.size	t_8bytes_3_pad, 9
t_8bytes_3_pad:
	.base64	"AH//////////"
	.align 8
	.type	t_8bytes_4_neg, @object
	.size	t_8bytes_4_neg, 8
t_8bytes_4_neg:
	.base64	"gAAAAAAAAAA="
	.align 8
	.type	t_8bytes_5_negpad, @object
	.size	t_8bytes_5_negpad, 9
t_8bytes_5_negpad:
	.base64	"/4AAAAAAAAAA"
	.type	t_5bytes_1, @object
	.size	t_5bytes_1, 5
t_5bytes_1:
	.base64	"Af////8="
	.type	t_4bytes_1, @object
	.size	t_4bytes_1, 5
t_4bytes_1:
	.base64	"AIAAAAA="
	.type	t_4bytes_2, @object
	.size	t_4bytes_2, 4
t_4bytes_2:
	.base64	"f////g=="
	.type	t_4bytes_3_pad, @object
	.size	t_4bytes_3_pad, 5
t_4bytes_3_pad:
	.base64	"AH////4="
	.type	t_4bytes_4_neg, @object
	.size	t_4bytes_4_neg, 4
t_4bytes_4_neg:
	.base64	"gAAAAA=="
	.type	t_4bytes_5_negpad, @object
	.size	t_4bytes_5_negpad, 5
t_4bytes_5_negpad:
	.base64	"/4AAAAA="
	.section	.data.rel.local,"aw"
	.align 32
	.type	test_custom_data, @object
	.size	test_custom_data, 1088
test_custom_data:
	.quad	t_zero
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_zero
	.quad	1
	.quad	t_longundef
	.quad	4
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_longundef
	.quad	4
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_one_neg
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_one_neg
	.quad	1
	.quad	t_minus_256
	.quad	2
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_minus_256
	.quad	2
	.quad	t_9bytes_1
	.quad	9
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_9bytes_1
	.quad	9
	.quad	t_8bytes_1
	.quad	9
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_8bytes_1
	.quad	9
	.quad	t_8bytes_2
	.quad	8
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_8bytes_2
	.quad	8
	.quad	t_8bytes_3_pad
	.quad	9
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_8bytes_3_pad
	.quad	9
	.quad	t_8bytes_4_neg
	.quad	8
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_8bytes_4_neg
	.quad	8
	.quad	t_8bytes_5_negpad
	.quad	9
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_8bytes_5_negpad
	.quad	9
	.quad	t_5bytes_1
	.quad	5
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_5bytes_1
	.quad	5
	.quad	t_4bytes_1
	.quad	5
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_4bytes_1
	.quad	5
	.quad	t_4bytes_2
	.quad	4
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_4bytes_2
	.quad	4
	.quad	t_4bytes_3_pad
	.quad	5
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_4bytes_3_pad
	.quad	5
	.quad	t_4bytes_4_neg
	.quad	4
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_4bytes_4_neg
	.quad	4
	.quad	t_4bytes_5_negpad
	.quad	5
	.quad	t_one
	.quad	1
	.quad	t_one
	.quad	1
	.quad	t_4bytes_5_negpad
	.quad	5
	.section	.rodata
.LC0:
	.string	"success"
.LC1:
	.string	"test_long"
.LC2:
	.string	"test_zlong"
	.section	.data.rel.ro,"aw"
	.align 32
	.type	ASN1_LONG_DATA_seq_tt, @object
	.size	ASN1_LONG_DATA_seq_tt, 120
ASN1_LONG_DATA_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_BOOLEAN_it
	.quad	0
	.quad	0
	.quad	8
	.quad	.LC1
	.quad	LONG_it
	.quad	145
	.quad	0
	.quad	16
	.quad	.LC2
	.quad	ZLONG_it
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
	leaq	local_it.5(%rip), %rax
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
	.data
	.align 32
	.type	long_expected_32bit, @object
	.size	long_expected_32bit, 816
long_expected_32bit:
	.long	255
	.zero	4
	.quad	0
	.quad	1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	1
	.quad	2147483647
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	-1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-1
	.long	255
	.zero	4
	.quad	-256
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-256
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	2147483646
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483646
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	-2147483648
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-2147483648
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.align 32
	.type	long_encdec_data_32bit, @object
	.size	long_encdec_data_32bit, 288
long_encdec_data_32bit:
	.long	255
	.zero	4
	.quad	9223372036854775806
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	9223372036854775807
	.long	255
	.zero	4
	.quad	-9223372036854775808
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-9223372036854775808
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	-1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-1
	.long	255
	.zero	4
	.quad	0
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483647
	.long	0
	.zero	4
	.quad	2147483647
	.quad	1
	.long	0
	.zero	4
	.quad	1
	.quad	0
	.section	.rodata
.LC3:
	.string	"LONG"
	.section	.data.rel.local
	.align 32
	.type	long_test_package_32bit, @object
	.size	long_test_package_32bit, 96
long_test_package_32bit:
	.quad	ASN1_LONG_DATA_it
	.quad	.LC3
	.long	1
	.zero	4
	.quad	long_expected_32bit
	.quad	816
	.quad	24
	.quad	long_encdec_data_32bit
	.quad	288
	.quad	24
	.quad	i2d_ASN1_LONG_DATA
	.quad	d2i_ASN1_LONG_DATA
	.quad	ASN1_LONG_DATA_free
	.data
	.align 32
	.type	long_expected_64bit, @object
	.size	long_expected_64bit, 816
long_expected_64bit:
	.long	255
	.zero	4
	.quad	0
	.quad	1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	1
	.quad	2147483647
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	-1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-1
	.long	255
	.zero	4
	.quad	-256
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-256
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	9223372036854775807
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	9223372036854775807
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	-9223372036854775808
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-9223372036854775808
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	8589934591
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	8589934591
	.long	255
	.zero	4
	.quad	2147483648
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483648
	.long	255
	.zero	4
	.quad	2147483646
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483646
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	-2147483648
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-2147483648
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.align 32
	.type	long_encdec_data_64bit, @object
	.size	long_encdec_data_64bit, 288
long_encdec_data_64bit:
	.long	255
	.zero	4
	.quad	9223372036854775807
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	9223372036854775807
	.long	255
	.zero	4
	.quad	-9223372036854775808
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-9223372036854775808
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	-1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-1
	.long	255
	.zero	4
	.quad	0
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483647
	.long	0
	.zero	4
	.quad	2147483647
	.quad	1
	.long	0
	.zero	4
	.quad	1
	.quad	0
	.section	.data.rel.local
	.align 32
	.type	long_test_package_64bit, @object
	.size	long_test_package_64bit, 96
long_test_package_64bit:
	.quad	ASN1_LONG_DATA_it
	.quad	.LC3
	.long	0
	.zero	4
	.quad	long_expected_64bit
	.quad	816
	.quad	24
	.quad	long_encdec_data_64bit
	.quad	288
	.quad	24
	.quad	i2d_ASN1_LONG_DATA
	.quad	d2i_ASN1_LONG_DATA
	.quad	ASN1_LONG_DATA_free
	.section	.rodata
.LC4:
	.string	"test_int32"
.LC5:
	.string	"test_zint32"
	.section	.data.rel.ro
	.align 32
	.type	ASN1_INT32_DATA_seq_tt, @object
	.size	ASN1_INT32_DATA_seq_tt, 120
ASN1_INT32_DATA_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_BOOLEAN_it
	.quad	4096
	.quad	0
	.quad	4
	.quad	.LC4
	.quad	INT32_it
	.quad	4241
	.quad	0
	.quad	8
	.quad	.LC5
	.quad	ZINT32_it
	.text
	.type	ASN1_INT32_DATA_it, @function
ASN1_INT32_DATA_it:
.LFB479:
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
.LFE479:
	.size	ASN1_INT32_DATA_it, .-ASN1_INT32_DATA_it
	.type	d2i_ASN1_INT32_DATA, @function
d2i_ASN1_INT32_DATA:
.LFB480:
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
.LFE480:
	.size	d2i_ASN1_INT32_DATA, .-d2i_ASN1_INT32_DATA
	.type	i2d_ASN1_INT32_DATA, @function
i2d_ASN1_INT32_DATA:
.LFB481:
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
.LFE481:
	.size	i2d_ASN1_INT32_DATA, .-i2d_ASN1_INT32_DATA
	.type	ASN1_INT32_DATA_new, @function
ASN1_INT32_DATA_new:
.LFB482:
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
.LFE482:
	.size	ASN1_INT32_DATA_new, .-ASN1_INT32_DATA_new
	.type	ASN1_INT32_DATA_free, @function
ASN1_INT32_DATA_free:
.LFB483:
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
.LFE483:
	.size	ASN1_INT32_DATA_free, .-ASN1_INT32_DATA_free
	.data
	.align 32
	.type	int32_expected, @object
	.size	int32_expected, 408
int32_expected:
	.long	255
	.long	0
	.long	1
	.long	255
	.long	1
	.long	0
	.long	255
	.long	2147483647
	.long	1
	.long	255
	.long	1
	.long	2147483647
	.long	255
	.long	1
	.long	1
	.long	255
	.long	1
	.long	1
	.long	255
	.long	-1
	.long	1
	.long	255
	.long	1
	.long	-1
	.long	255
	.long	-256
	.long	1
	.long	255
	.long	1
	.long	-256
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	255
	.long	2147483646
	.long	1
	.long	255
	.long	1
	.long	2147483646
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	255
	.long	-2147483648
	.long	1
	.long	255
	.long	1
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	int32_encdec_data, @object
	.size	int32_encdec_data, 120
int32_encdec_data:
	.long	255
	.long	2147483647
	.long	1
	.long	255
	.long	1
	.long	2147483647
	.long	255
	.long	-2147483648
	.long	1
	.long	255
	.long	1
	.long	-2147483648
	.long	255
	.long	1
	.long	1
	.long	255
	.long	1
	.long	1
	.long	255
	.long	-1
	.long	1
	.long	255
	.long	1
	.long	-1
	.long	255
	.long	0
	.long	1
	.long	255
	.long	1
	.long	2147483647
	.section	.rodata
.LC6:
	.string	"INT32"
	.section	.data.rel.local
	.align 32
	.type	int32_test_package, @object
	.size	int32_test_package, 96
int32_test_package:
	.quad	ASN1_INT32_DATA_it
	.quad	.LC6
	.long	0
	.zero	4
	.quad	int32_expected
	.quad	408
	.quad	12
	.quad	int32_encdec_data
	.quad	120
	.quad	12
	.quad	i2d_ASN1_INT32_DATA
	.quad	d2i_ASN1_INT32_DATA
	.quad	ASN1_INT32_DATA_free
	.section	.rodata
.LC7:
	.string	"test_uint32"
.LC8:
	.string	"test_zuint32"
	.section	.data.rel.ro
	.align 32
	.type	ASN1_UINT32_DATA_seq_tt, @object
	.size	ASN1_UINT32_DATA_seq_tt, 120
ASN1_UINT32_DATA_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_BOOLEAN_it
	.quad	4096
	.quad	0
	.quad	4
	.quad	.LC7
	.quad	UINT32_it
	.quad	4241
	.quad	0
	.quad	8
	.quad	.LC8
	.quad	ZUINT32_it
	.text
	.type	ASN1_UINT32_DATA_it, @function
ASN1_UINT32_DATA_it:
.LFB484:
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
.LFE484:
	.size	ASN1_UINT32_DATA_it, .-ASN1_UINT32_DATA_it
	.type	d2i_ASN1_UINT32_DATA, @function
d2i_ASN1_UINT32_DATA:
.LFB485:
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
.LFE485:
	.size	d2i_ASN1_UINT32_DATA, .-d2i_ASN1_UINT32_DATA
	.type	i2d_ASN1_UINT32_DATA, @function
i2d_ASN1_UINT32_DATA:
.LFB486:
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
.LFE486:
	.size	i2d_ASN1_UINT32_DATA, .-i2d_ASN1_UINT32_DATA
	.type	ASN1_UINT32_DATA_new, @function
ASN1_UINT32_DATA_new:
.LFB487:
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
.LFE487:
	.size	ASN1_UINT32_DATA_new, .-ASN1_UINT32_DATA_new
	.type	ASN1_UINT32_DATA_free, @function
ASN1_UINT32_DATA_free:
.LFB488:
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
.LFE488:
	.size	ASN1_UINT32_DATA_free, .-ASN1_UINT32_DATA_free
	.data
	.align 32
	.type	uint32_expected, @object
	.size	uint32_expected, 408
uint32_expected:
	.long	255
	.long	0
	.long	1
	.long	255
	.long	1
	.long	0
	.long	255
	.long	2147483647
	.long	1
	.long	255
	.long	1
	.long	2147483647
	.long	255
	.long	1
	.long	1
	.long	255
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	255
	.long	-2147483648
	.long	1
	.long	255
	.long	1
	.long	-2147483648
	.long	255
	.long	2147483646
	.long	1
	.long	255
	.long	1
	.long	2147483646
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	uint32_encdec_data, @object
	.size	uint32_encdec_data, 120
uint32_encdec_data:
	.long	255
	.long	-1
	.long	1
	.long	255
	.long	1
	.long	-1
	.long	255
	.long	0
	.long	1
	.long	255
	.long	1
	.long	0
	.long	255
	.long	1
	.long	1
	.long	255
	.long	1
	.long	1
	.long	255
	.long	-1
	.long	1
	.long	255
	.long	1
	.long	-1
	.long	255
	.long	0
	.long	1
	.long	255
	.long	1
	.long	2147483647
	.section	.rodata
.LC9:
	.string	"UINT32"
	.section	.data.rel.local
	.align 32
	.type	uint32_test_package, @object
	.size	uint32_test_package, 96
uint32_test_package:
	.quad	ASN1_UINT32_DATA_it
	.quad	.LC9
	.long	0
	.zero	4
	.quad	uint32_expected
	.quad	408
	.quad	12
	.quad	uint32_encdec_data
	.quad	120
	.quad	12
	.quad	i2d_ASN1_UINT32_DATA
	.quad	d2i_ASN1_UINT32_DATA
	.quad	ASN1_UINT32_DATA_free
	.section	.rodata
.LC10:
	.string	"test_int64"
.LC11:
	.string	"test_zint64"
	.section	.data.rel.ro
	.align 32
	.type	ASN1_INT64_DATA_seq_tt, @object
	.size	ASN1_INT64_DATA_seq_tt, 120
ASN1_INT64_DATA_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_BOOLEAN_it
	.quad	4096
	.quad	0
	.quad	8
	.quad	.LC10
	.quad	INT64_it
	.quad	4241
	.quad	0
	.quad	16
	.quad	.LC11
	.quad	ZINT64_it
	.text
	.type	ASN1_INT64_DATA_it, @function
ASN1_INT64_DATA_it:
.LFB489:
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
.LFE489:
	.size	ASN1_INT64_DATA_it, .-ASN1_INT64_DATA_it
	.type	d2i_ASN1_INT64_DATA, @function
d2i_ASN1_INT64_DATA:
.LFB490:
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
.LFE490:
	.size	d2i_ASN1_INT64_DATA, .-d2i_ASN1_INT64_DATA
	.type	i2d_ASN1_INT64_DATA, @function
i2d_ASN1_INT64_DATA:
.LFB491:
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
.LFE491:
	.size	i2d_ASN1_INT64_DATA, .-i2d_ASN1_INT64_DATA
	.type	ASN1_INT64_DATA_new, @function
ASN1_INT64_DATA_new:
.LFB492:
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
.LFE492:
	.size	ASN1_INT64_DATA_new, .-ASN1_INT64_DATA_new
	.type	ASN1_INT64_DATA_free, @function
ASN1_INT64_DATA_free:
.LFB493:
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
.LFE493:
	.size	ASN1_INT64_DATA_free, .-ASN1_INT64_DATA_free
	.data
	.align 32
	.type	int64_expected, @object
	.size	int64_expected, 816
int64_expected:
	.long	255
	.zero	4
	.quad	0
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	0
	.long	255
	.zero	4
	.quad	2147483647
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483647
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	-1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-1
	.long	255
	.zero	4
	.quad	-256
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-256
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	9223372036854775807
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	9223372036854775807
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	-9223372036854775808
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-9223372036854775808
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	8589934591
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	8589934591
	.long	255
	.zero	4
	.quad	2147483648
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483648
	.long	255
	.zero	4
	.quad	2147483646
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483646
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	-2147483648
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-2147483648
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.align 32
	.type	int64_encdec_data, @object
	.size	int64_encdec_data, 480
int64_encdec_data:
	.long	255
	.zero	4
	.quad	9223372036854775807
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	9223372036854775807
	.long	255
	.zero	4
	.quad	-9223372036854775808
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-9223372036854775808
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	-1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-1
	.long	255
	.zero	4
	.quad	0
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483647
	.long	255
	.zero	4
	.quad	2147483647
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483647
	.long	255
	.zero	4
	.quad	-2147483648
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-2147483648
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	-1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-1
	.long	255
	.zero	4
	.quad	0
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483647
	.section	.rodata
.LC12:
	.string	"INT64"
	.section	.data.rel.local
	.align 32
	.type	int64_test_package, @object
	.size	int64_test_package, 96
int64_test_package:
	.quad	ASN1_INT64_DATA_it
	.quad	.LC12
	.long	0
	.zero	4
	.quad	int64_expected
	.quad	816
	.quad	24
	.quad	int64_encdec_data
	.quad	480
	.quad	24
	.quad	i2d_ASN1_INT64_DATA
	.quad	d2i_ASN1_INT64_DATA
	.quad	ASN1_INT64_DATA_free
	.section	.rodata
.LC13:
	.string	"test_uint64"
.LC14:
	.string	"test_zuint64"
	.section	.data.rel.ro
	.align 32
	.type	ASN1_UINT64_DATA_seq_tt, @object
	.size	ASN1_UINT64_DATA_seq_tt, 120
ASN1_UINT64_DATA_seq_tt:
	.quad	0
	.quad	0
	.quad	0
	.quad	.LC0
	.quad	ASN1_BOOLEAN_it
	.quad	4096
	.quad	0
	.quad	8
	.quad	.LC13
	.quad	UINT64_it
	.quad	4241
	.quad	0
	.quad	16
	.quad	.LC14
	.quad	ZUINT64_it
	.text
	.type	ASN1_UINT64_DATA_it, @function
ASN1_UINT64_DATA_it:
.LFB494:
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
.LFE494:
	.size	ASN1_UINT64_DATA_it, .-ASN1_UINT64_DATA_it
	.type	d2i_ASN1_UINT64_DATA, @function
d2i_ASN1_UINT64_DATA:
.LFB495:
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
.LFE495:
	.size	d2i_ASN1_UINT64_DATA, .-d2i_ASN1_UINT64_DATA
	.type	i2d_ASN1_UINT64_DATA, @function
i2d_ASN1_UINT64_DATA:
.LFB496:
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
.LFE496:
	.size	i2d_ASN1_UINT64_DATA, .-i2d_ASN1_UINT64_DATA
	.type	ASN1_UINT64_DATA_new, @function
ASN1_UINT64_DATA_new:
.LFB497:
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
.LFE497:
	.size	ASN1_UINT64_DATA_new, .-ASN1_UINT64_DATA_new
	.type	ASN1_UINT64_DATA_free, @function
ASN1_UINT64_DATA_free:
.LFB498:
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
.LFE498:
	.size	ASN1_UINT64_DATA_free, .-ASN1_UINT64_DATA_free
	.data
	.align 32
	.type	uint64_expected, @object
	.size	uint64_expected, 816
uint64_expected:
	.long	255
	.zero	4
	.quad	0
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	0
	.long	255
	.zero	4
	.quad	2147483647
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483647
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	-9223372036854775808
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-9223372036854775808
	.long	255
	.zero	4
	.quad	9223372036854775807
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	9223372036854775807
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	255
	.zero	4
	.quad	8589934591
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	8589934591
	.long	255
	.zero	4
	.quad	2147483648
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483648
	.long	255
	.zero	4
	.quad	2147483646
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483646
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.long	0
	.zero	4
	.quad	0
	.quad	0
	.align 32
	.type	uint64_encdec_data, @object
	.size	uint64_encdec_data, 240
uint64_encdec_data:
	.long	255
	.zero	4
	.quad	-1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-1
	.long	255
	.zero	4
	.quad	0
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	0
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	1
	.long	255
	.zero	4
	.quad	-1
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	-1
	.long	255
	.zero	4
	.quad	0
	.quad	1
	.long	255
	.zero	4
	.quad	1
	.quad	2147483647
	.section	.rodata
.LC15:
	.string	"UINT64"
	.section	.data.rel.local
	.align 32
	.type	uint64_test_package, @object
	.size	uint64_test_package, 96
uint64_test_package:
	.quad	ASN1_UINT64_DATA_it
	.quad	.LC15
	.long	0
	.zero	4
	.quad	uint64_expected
	.quad	816
	.quad	24
	.quad	uint64_encdec_data
	.quad	240
	.quad	24
	.quad	i2d_ASN1_UINT64_DATA
	.quad	d2i_ASN1_UINT64_DATA
	.quad	ASN1_UINT64_DATA_free
	.text
	.type	do_decode, @function
do_decode:
.LFB499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	*%rcx
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L47
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L48
	movl	$1, -4(%rbp)
	call	ERR_clear_error@PLT
	jmp	.L49
.L48:
	movl	$-1, -4(%rbp)
	jmp	.L49
.L47:
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L50
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	jne	.L50
	movl	$1, -4(%rbp)
	jmp	.L49
.L50:
	movl	$0, -4(%rbp)
.L49:
	movq	-72(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE499:
	.size	do_decode, .-do_decode
	.section	.rodata
.LC16:
	.string	"../test/asn1_encode_test.c"
	.text
	.type	do_encode, @function
do_encode:
.LFB500:
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
	movq	%rcx, -48(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rcx
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jns	.L53
	movl	$-1, %eax
	jmp	.L60
.L53:
	movl	-8(%rbp), %eax
	cltq
	cmpq	%rax, -40(%rbp)
	jne	.L55
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L56
.L55:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L57
	movl	$1, -4(%rbp)
	call	ERR_clear_error@PLT
	jmp	.L59
.L57:
	movl	$0, -4(%rbp)
	jmp	.L59
.L56:
	movl	$1, -4(%rbp)
.L59:
	movq	-16(%rbp), %rax
	leaq	.LC16(%rip), %rcx
	movl	$544, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE500:
	.size	do_encode, .-do_encode
	.type	do_enc_dec, @function
do_enc_dec:
.LFB501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rcx
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L62
	movl	$-1, %eax
	jmp	.L64
.L62:
	movq	-48(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_decode
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	leaq	.LC16(%rip), %rcx
	movl	$562, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-4(%rbp), %eax
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE501:
	.size	do_enc_dec, .-do_enc_dec
	.section	.rodata
	.align 8
.LC17:
	.string	"assertion failed: len < 0x8000"
	.text
	.type	der_encode_length, @function
der_encode_length:
.LFB502:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$32767, -24(%rbp)
	jbe	.L66
	leaq	.LC16(%rip), %rcx
	leaq	.LC17(%rip), %rax
	movl	$570, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L66:
	cmpq	$255, -24(%rbp)
	jbe	.L67
	movq	$3, -8(%rbp)
	jmp	.L68
.L67:
	cmpq	$127, -24(%rbp)
	jbe	.L69
	movq	$2, -8(%rbp)
	jmp	.L68
.L69:
	movq	$1, -8(%rbp)
.L68:
	cmpq	$0, -32(%rbp)
	je	.L70
	cmpq	$1, -8(%rbp)
	jne	.L71
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
	jmp	.L70
.L71:
	movq	-8(%rbp), %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rdx)
	leal	-1(%rsi), %edx
	movb	%dl, (%rax)
	cmpq	$2, -8(%rbp)
	jne	.L72
	movq	-24(%rbp), %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rdx)
	orl	$-128, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	jmp	.L70
.L72:
	movq	-24(%rbp), %rax
	shrq	$8, %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rdx)
	orl	$-128, %esi
	movl	%esi, %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-24(%rbp), %rdx
	movb	%dl, (%rax)
.L70:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE502:
	.size	der_encode_length, .-der_encode_length
	.section	.rodata
	.align 8
.LC18:
	.string	"assertion failed: seqbytes == (size_t)(p - *encoding)"
	.text
	.type	make_custom_der, @function
make_custom_der:
.LFB503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movw	$257, -43(%rbp)
	movb	$-1, -41(%rbp)
	movq	$0, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	der_encode_length
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L75
.L78:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L86
	subq	$1, -24(%rbp)
.L75:
	cmpq	$0, -24(%rbp)
	jne	.L78
	jmp	.L77
.L86:
	nop
.L77:
	cmpl	$0, -84(%rbp)
	jne	.L79
	cmpq	$0, -24(%rbp)
	je	.L80
.L79:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	der_encode_length
	movq	-72(%rbp), %rdx
	movq	24(%rdx), %rdx
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	der_encode_length
	movq	-16(%rbp), %rdx
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.L80:
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$3, %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	der_encode_length
	movq	-32(%rbp), %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, -40(%rbp)
	leaq	.LC16(%rip), %rcx
	movq	-40(%rbp), %rax
	movl	$634, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L81
	movl	$0, %eax
	jmp	.L85
.L81:
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movb	$48, (%rax)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	3(%rax), %rdx
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	der_encode_length
	movq	-56(%rbp), %rax
	movzwl	-43(%rbp), %edx
	movw	%dx, (%rax)
	movzbl	-41(%rbp), %edx
	movb	%dl, 2(%rax)
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movb	$2, (%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der_encode_length
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L83
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movb	$-96, (%rax)
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der_encode_length
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movb	$2, (%rax)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	der_encode_length
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
.L83:
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L84
	leaq	.LC16(%rip), %rcx
	leaq	.LC18(%rip), %rax
	movl	$663, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L84:
	movq	-40(%rbp), %rax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE503:
	.size	make_custom_der, .-make_custom_der
	.type	do_decode_custom, @function
do_decode_custom:
.LFB504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	make_custom_der
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L88
	movl	$-1, %eax
	jmp	.L90
.L88:
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	do_decode
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC16(%rip), %rcx
	movl	$686, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE504:
	.size	do_decode_custom, .-do_decode_custom
	.type	do_encode_custom, @function
do_encode_custom:
.LFB505:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	$0, -24(%rbp)
	leaq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	make_custom_der
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L92
	movl	$-1, %eax
	jmp	.L94
.L92:
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	do_encode
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC16(%rip), %rcx
	movl	$704, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-12(%rbp), %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE505:
	.size	do_encode_custom, .-do_encode_custom
	.section	.rodata
	.align 8
.LC19:
	.string	"assertion failed: package->encode_expectations_elem_size <= DATA_BUF_SIZE"
	.text
	.type	do_print_item, @function
do_print_item:
.LFB506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	call	*%rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$256, %rax
	jbe	.L96
	leaq	.LC16(%rip), %rcx
	leaq	.LC19(%rip), %rax
	movl	$716, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L96:
	leaq	.LC16(%rip), %rax
	movl	$717, %edx
	movq	%rax, %rsi
	movl	$256, %edi
	call	CRYPTO_malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L97
	movl	$0, %eax
	jmp	.L98
.L97:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	RAND_bytes@PLT
	movq	bio_err@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ASN1_item_print@PLT
	movl	%eax, -20(%rbp)
	leaq	.LC16(%rip), %rcx
	movq	-16(%rbp), %rax
	movl	$723, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	CRYPTO_free@PLT
	movl	-20(%rbp), %eax
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE506:
	.size	do_print_item, .-do_print_item
	.section	.rodata
	.align 8
.LC20:
	.string	"assertion failed: nelems == sizeof(test_custom_data) / sizeof(test_custom_data[0])"
	.align 8
.LC21:
	.string	"Failed custom encode round trip %u of %s"
	.align 8
.LC22:
	.string	"Custom encode round trip %u of %s mismatch"
	.align 8
.LC23:
	.string	"do_encode_custom() return unknown value"
	.align 8
.LC24:
	.string	"Failed custom decode round trip %u of %s"
	.align 8
.LC25:
	.string	"Custom decode round trip %u of %s mismatch"
	.align 8
.LC26:
	.string	"do_decode_custom() return unknown value"
	.align 8
.LC27:
	.string	"Failed encode/decode round trip %u of %s"
	.align 8
.LC28:
	.string	"Encode/decode round trip %u of %s mismatch"
	.align 8
.LC29:
	.string	"do_enc_dec() return unknown value"
.LC30:
	.string	"Printing of %s failed"
	.text
	.type	test_intern, @function
test_intern:
.LFB507:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L100
	movl	$1, %eax
	jmp	.L101
.L100:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	40(%rdx), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rax, -16(%rbp)
	cmpq	$34, -16(%rbp)
	je	.L102
	leaq	.LC16(%rip), %rcx
	leaq	.LC20(%rip), %rax
	movl	$741, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L102:
	movl	$0, -4(%rbp)
	jmp	.L103
.L116:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	imulq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	-4(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	leaq	test_custom_data(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_encode_custom
	cmpl	$1, %eax
	je	.L126
	cmpl	$1, %eax
	jg	.L105
	cmpl	$-1, %eax
	je	.L106
	testl	%eax, %eax
	je	.L107
	jmp	.L105
.L106:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L127
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	leaq	.LC21(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$751, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	addl	$1, -8(%rbp)
	jmp	.L127
.L107:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	leaq	.LC22(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$758, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	addl	$1, -8(%rbp)
	jmp	.L109
.L105:
	leaq	.LC16(%rip), %rcx
	leaq	.LC23(%rip), %rax
	movl	$767, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L126:
	nop
	jmp	.L109
.L127:
	nop
.L109:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movl	-4(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rcx
	leaq	test_custom_data(%rip), %rax
	leaq	(%rcx,%rax), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	call	do_decode_custom
	cmpl	$1, %eax
	je	.L128
	cmpl	$1, %eax
	jg	.L111
	cmpl	$-1, %eax
	je	.L112
	testl	%eax, %eax
	je	.L113
	jmp	.L111
.L112:
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L129
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	leaq	.LC24(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$774, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	addl	$1, -8(%rbp)
	jmp	.L129
.L113:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	leaq	.LC25(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$781, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	addl	$1, -8(%rbp)
	jmp	.L115
.L111:
	leaq	.LC16(%rip), %rcx
	leaq	.LC26(%rip), %rax
	movl	$790, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L128:
	nop
	jmp	.L115
.L129:
	nop
.L115:
	addl	$1, -4(%rbp)
.L103:
	movl	-4(%rbp), %eax
	cmpq	-16(%rbp), %rax
	jb	.L116
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	64(%rdx), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L117
.L124:
	movl	-4(%rbp), %edx
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	imulq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	do_enc_dec
	cmpl	$1, %eax
	je	.L130
	cmpl	$1, %eax
	jg	.L119
	cmpl	$-1, %eax
	je	.L120
	testl	%eax, %eax
	je	.L121
	jmp	.L119
.L120:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L131
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	leaq	.LC27(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$804, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	addl	$1, -8(%rbp)
	jmp	.L131
.L121:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-4(%rbp), %eax
	leaq	.LC28(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$811, %esi
	movl	$0, %eax
	call	test_error@PLT
	addl	$1, -8(%rbp)
	jmp	.L123
.L119:
	leaq	.LC16(%rip), %rcx
	leaq	.LC29(%rip), %rax
	movl	$819, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	OPENSSL_die@PLT
.L130:
	nop
	jmp	.L123
.L131:
	nop
.L123:
	addl	$1, -4(%rbp)
.L117:
	movl	-4(%rbp), %eax
	cmpq	-16(%rbp), %rax
	jb	.L124
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	do_print_item
	testl	%eax, %eax
	jne	.L125
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC30(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$824, %esi
	movl	$0, %eax
	call	test_error@PLT
	call	test_openssl_errors@PLT
	addl	$1, -8(%rbp)
.L125:
	cmpl	$0, -8(%rbp)
	sete	%al
	movzbl	%al, %eax
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE507:
	.size	test_intern, .-test_intern
	.type	test_long_32bit, @function
test_long_32bit:
.LFB508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	long_test_package_32bit(%rip), %rax
	movq	%rax, %rdi
	call	test_intern
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE508:
	.size	test_long_32bit, .-test_long_32bit
	.type	test_long_64bit, @function
test_long_64bit:
.LFB509:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	long_test_package_64bit(%rip), %rax
	movq	%rax, %rdi
	call	test_intern
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE509:
	.size	test_long_64bit, .-test_long_64bit
	.type	test_int32, @function
test_int32:
.LFB510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	int32_test_package(%rip), %rax
	movq	%rax, %rdi
	call	test_intern
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE510:
	.size	test_int32, .-test_int32
	.type	test_uint32, @function
test_uint32:
.LFB511:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	uint32_test_package(%rip), %rax
	movq	%rax, %rdi
	call	test_intern
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE511:
	.size	test_uint32, .-test_uint32
	.type	test_int64, @function
test_int64:
.LFB512:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	int64_test_package(%rip), %rax
	movq	%rax, %rdi
	call	test_intern
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE512:
	.size	test_int64, .-test_int64
	.type	test_uint64, @function
test_uint64:
.LFB513:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	uint64_test_package(%rip), %rax
	movq	%rax, %rdi
	call	test_intern
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE513:
	.size	test_uint64, .-test_uint64
	.section	.rodata
.LC31:
	.string	"invalidDirString"
	.section	.data.rel.ro
	.align 32
	.type	INVALIDTEMPLATE_seq_tt, @object
	.size	INVALIDTEMPLATE_seq_tt, 40
INVALIDTEMPLATE_seq_tt:
	.quad	136
	.quad	12
	.quad	0
	.quad	.LC31
	.quad	DIRECTORYSTRING_it
	.text
	.type	INVALIDTEMPLATE_it, @function
INVALIDTEMPLATE_it:
.LFB514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	local_it.0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE514:
	.size	INVALIDTEMPLATE_it, .-INVALIDTEMPLATE_it
	.type	d2i_INVALIDTEMPLATE, @function
d2i_INVALIDTEMPLATE:
.LFB515:
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
.LFE515:
	.size	d2i_INVALIDTEMPLATE, .-d2i_INVALIDTEMPLATE
	.type	i2d_INVALIDTEMPLATE, @function
i2d_INVALIDTEMPLATE:
.LFB516:
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
.LFE516:
	.size	i2d_INVALIDTEMPLATE, .-i2d_INVALIDTEMPLATE
	.type	INVALIDTEMPLATE_new, @function
INVALIDTEMPLATE_new:
.LFB517:
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
.LFE517:
	.size	INVALIDTEMPLATE_new, .-INVALIDTEMPLATE_new
	.type	INVALIDTEMPLATE_free, @function
INVALIDTEMPLATE_free:
.LFB518:
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
.LFE518:
	.size	INVALIDTEMPLATE_free, .-INVALIDTEMPLATE_free
	.section	.rodata
.LC32:
	.string	"temp"
	.text
	.type	test_invalid_template, @function
test_invalid_template:
.LFB519:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	INVALIDTEMPLATE_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	.LC32(%rip), %rdx
	leaq	.LC16(%rip), %rdi
	movq	%rax, %rcx
	movl	$884, %esi
	call	test_ptr@PLT
	testl	%eax, %eax
	jne	.L154
	movl	$0, %eax
	jmp	.L155
.L154:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	i2d_INVALIDTEMPLATE
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	INVALIDTEMPLATE_free
	movl	-12(%rbp), %eax
	shrl	$31, %eax
	movzbl	%al, %eax
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE519:
	.size	test_invalid_template, .-test_invalid_template
	.section	.rodata
.LC33:
	.string	"test_long_32bit"
.LC34:
	.string	"test_long_64bit"
.LC35:
	.string	"test_invalid_template"
	.text
	.globl	setup_tests
	.type	setup_tests, @function
setup_tests:
.LFB520:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	test_long_32bit(%rip), %rdx
	leaq	.LC33(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_long_64bit(%rip), %rdx
	leaq	.LC34(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_int32(%rip), %rdx
	leaq	.LC4(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_uint32(%rip), %rdx
	leaq	.LC7(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_int64(%rip), %rdx
	leaq	.LC10(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_uint64(%rip), %rdx
	leaq	.LC13(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	leaq	test_invalid_template(%rip), %rdx
	leaq	.LC35(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_test@PLT
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE520:
	.size	setup_tests, .-setup_tests
	.section	.rodata
.LC36:
	.string	"ASN1_LONG_DATA"
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	local_it.5, @object
	.size	local_it.5, 56
local_it.5:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASN1_LONG_DATA_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC36
	.section	.rodata
.LC37:
	.string	"ASN1_INT32_DATA"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.4, @object
	.size	local_it.4, 56
local_it.4:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASN1_INT32_DATA_seq_tt
	.quad	3
	.quad	0
	.quad	12
	.quad	.LC37
	.section	.rodata
.LC38:
	.string	"ASN1_UINT32_DATA"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.3, @object
	.size	local_it.3, 56
local_it.3:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASN1_UINT32_DATA_seq_tt
	.quad	3
	.quad	0
	.quad	12
	.quad	.LC38
	.section	.rodata
.LC39:
	.string	"ASN1_INT64_DATA"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.2, @object
	.size	local_it.2, 56
local_it.2:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASN1_INT64_DATA_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC39
	.section	.rodata
.LC40:
	.string	"ASN1_UINT64_DATA"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.1, @object
	.size	local_it.1, 56
local_it.1:
	.byte	1
	.zero	7
	.quad	16
	.quad	ASN1_UINT64_DATA_seq_tt
	.quad	3
	.quad	0
	.quad	24
	.quad	.LC40
	.section	.rodata
.LC41:
	.string	"INVALIDTEMPLATE"
	.section	.data.rel.ro.local
	.align 32
	.type	local_it.0, @object
	.size	local_it.0, 56
local_it.0:
	.byte	1
	.zero	7
	.quad	16
	.quad	INVALIDTEMPLATE_seq_tt
	.quad	1
	.quad	0
	.quad	8
	.quad	.LC41
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
